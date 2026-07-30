---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Reorder.lagda.md
---

# <span class="AgdaDatatype">LEDGERS</span>: Reordering Determinism {#sec:ledgers-reorder}

This module proves a *restricted commutativity* property for the
`LEDGERS`{.AgdaOperator} transition system: if two transaction lists `l₁` and
`l₂` are reorderings (permutations) of one another, every pair of transactions
in them is **independent** (`Indep`{.AgdaRecord}), no transaction touches
governance (`NoGov`{.AgdaFunction}), and both lists take the initial state to
*some* final state, then the two final states are extensionally equal (`_≈ˡ_`).

The theorem is in **net-effect form** (Vinogradova & Sorokin, LSFA'24,
Thm 5.2.1): both executions are taken as *given* (so all validity information
is available on both sides), and the final states are compared **field by
field**.  There is **no assumption on the phase-2 `isValid` tags** — every
per-transaction update is keyed on the tag (`LEDGER-I` steps consume collateral
and touch nothing else), and each field of `LState`{.AgdaRecord} is shown to be
a function of the *set* of transactions rather than their order:

1.  **`utxo`** — extracted to a closed form `(u₀ ∪ ⋃added) ∖ ⋃removed` (a valid
    transaction removes its inputs and adds its outputs; an invalid one removes
    its collateral), order-independent given replay protection.

2.  **`fees`, `donations`** — per-transaction sums, permutation-invariant by
    commutativity of `_+_`.  An invalid transaction's fee delta is the balance
    of its collateral — which the `UTXO` rule requires to exist, so it is
    pinned by the global valuation `u₀ ∪ˡ outsAll l` and order-free.

3.  **`deposits`** — a fold of single-key map updates (identity for invalid
    transactions); certificates from `Indep` transactions touch disjoint
    deposit keys (`disjDeposits`), so the updates commute (`MapCommutativity`)
    and the fold is permutation-invariant via the generic
    `foldl-↭`{.AgdaFunction} engine.

4.  **`govSt`** — with proposals excluded (votes allowed), per-transaction
    governance is an `addVote` fold behind the orphan-vote filter; registered
    votes pass the filter, `dom dreps` is constant, and `disjVotes` makes the
    folds commute — **proven** (`LEDGERS-govSt≈`{.AgdaFunction}).

5.  **certificate state** — the one remaining field obligation
    (`LEDGERS-cert≈`{.AgdaFunction}), currently postulated: a pure per-pair
    swap is *false* for the certificate maps (see the `Indep` discussion), so
    it needs a validity-aware net-effect argument.

<!--
```agda
{-# OPTIONS --with-K #-}
-- NOTE: this module is intentionally *not* `--safe`: the remaining
-- obligations are isolated as `postulate`s, which `--safe` forbids.
-- The final theorem `LEDGERS-reorder` rests on exactly four of them:
-- `replay-outs-disjoint`, `replay-outs-fresh`, `Ins#Outs-exec` (replay
-- protection, LSFA'24 Cor 5.1.2), and `LEDGERS-cert≈` (the one open field
-- obligation).
-- The other postulates (`collectP2Scripts-eval-cong`, `Value-≈⇒≡`,
-- `refScriptsSize-reorder`, `lookupScriptHash-reorder`,
-- `hashScriptIntegrity-reorder`) support only the proven-but-not-yet-consumed
-- `UTXOW`-congruence stack, kept as the UTxO component of a future full
-- `LEDGER` congruence.  Everything else is fully proven.

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.Reorder
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Conway.Specification.Utxo txs abs
  using ( outs; UTxOState; ⟦_,_,_,_⟧ᵘ; UTxOEnv; cbalance; balance; updateCertDeposits; updateProposalDeposits
        ; updateDeposits; certDeposit; certRefund; ValidCertDeposits
        ; minfee; collateralCheck; consumed; produced; refScriptsSize; depositsChange; isAdaOnly
        ; _⊢_⇀⦇_,UTXOS⦈_; Scripts-Yes; Scripts-No
        ; _⊢_⇀⦇_,UTXO⦈_; UTXO-inductive; UTXO-inductive⋯
        ; delegate; regpool; regdrep; reg; dereg; deregdrep; ccreghot; retirepool )
  renaming ([] to ⟨⟩ᵛ)
open import Ledger.Conway.Specification.Script.Validation txs abs
  using (collectP2ScriptsWithContext; evalP2Scripts; credsNeeded; credentialToP2Script; txOutToP2Script
        ; txOutToDataHash; rdptr)
open import Ledger.Conway.Specification.Utxow txs abs
  using ( TxOutSpendable-PlutusV1; TxOutSpendable-PlutusV2; languages; allowedLanguages; hashScriptIntegrity
        ; HasInlineDatum; Dec-HasInlineDatum; UsesV3Features; Dec-UsesV3Features
        ; _⊢_⇀⦇_,UTXOW⦈_; UTXOW-inductive; UTXOW⇒UTXO )
import Data.Maybe.Relation.Unary.All as Maybe
open import Ledger.Conway.Specification.Fees using (scriptsCost)
open import Ledger.Conway.Specification.Utxo.Properties.Base txs abs using (balance-cong-coin; balance-cong)
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Interface.ComputationalRelation
open import abstract-set-theory.Axiom.Set.Map.Extra using (∪⁺-cong-l; ∪⁺-cong-r; restrict-cong)
open import Ledger.Conway.Specification.Ledger.Properties.MapCommutativity
  using (LocalOp; local-comm; ∪⁺-sing-local; ∪ˡ-sing-local; resᶜ-sing-local)
open import Ledger.Conway.Specification.Ledger.Properties.GeneralLemmas
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.Nat.Properties using (+-isCommutativeSemigroup; +-assoc; +-comm; +-identityʳ)

instance
  Coin-Semigroup = +-isCommutativeSemigroup

import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (All-resp-↭)

private variable
  Γ : LEnv
  s s′ s″ s₁ s₂ : LState
  t t₁ t₂ tx : Tx
  l l₁ l₂ : List Tx
```
-->

## Determinism of <span class="AgdaDatatype">LEDGERS</span>

```agda
LEDGERS-deterministic :
  Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s₂ → s₁ ≡ s₂
LEDGERS-deterministic = computational⇒rightUnique Computational-LEDGERS
```

## Independence, no-governance, and replay protection

The reordering theorem rests on **three separate** hypotheses, deliberately kept
apart (cf. the assumption structure of Vinogradova & Sorokin, *Properties of
UTxO Ledgers…*, LSFA'24, §5.2):

1.  **`Indep`** — the *only* per-pair condition needed, containing exactly the
    operations that genuinely fail to commute even when both orders are valid:
    the *overwriting* certificate map-updates whose written value varies per
    transaction (`delegate` → `insertIfJust`, `regpool` → first-wins `∪ˡ`,
    `retirepool` → last-wins `∪ˡ`, `ccreghot` → last-wins `∪ˡ`), captured by
    disjoint `cwitness`{.AgdaFunction} targets (`disjCertCreds`); plus the
    deposit-map updates, whose keys `cwitness` does *not* capture exactly
    (`reg c 0` has `cwitness ≡ nothing` yet still writes `CredentialDeposit c`),
    captured by disjoint `certDepositKey` targets (`disjDeposits`).
2.  **`NoGov`** (a *global* `All`, not part of `Indep`) — no proposals,
    and no DRep (de)registration.  DRep certs change `dom dreps`, which feeds
    `rmOrphanDRepVotes`{.AgdaFunction} (re-filtering *all* pre-existing votes
    each step) and the `POST-CERT` `activeVDelegs` restriction; *disjoint* DRep
    targets do not save this — only a constant `dom dreps` does.
3.  **both executions succeed** (already the `LEDGERS` premises of the theorem;
    the individual transactions may be phase-2 *invalid* — `LEDGER-I` steps are
    covered, their collateral pinned by validity and replay protection) —
    this is what lets the old UTxO-independence fields (`distinctTxId`,
    `disjInputs`, `noCrossSpend`, and even `disjWdrls`) be *dropped*: a
    withdrawal forces `rewards[c] → 0` and its validity premise pins
    `rewards[c] = amount`, so two same-credential withdrawals cannot both
    validate in both orders; and within a block rewards only move toward `0`, so
    the "force to 0" never races a "set to nonzero".

```agda
private
  ins        : Tx → ℙ TxIn;             ins   t = t .Tx.body .TxBody.txIns
  collIns    : Tx → ℙ TxIn;             collIns t = t .Tx.body .TxBody.collateralInputs
  certs      : Tx → List DCert;         certs t = t .Tx.body .TxBody.txCerts
  proposals  : Tx → List GovProposal;   proposals t = t .Tx.body .TxBody.txGovProposals
  votes      : Tx → List GovVote;       votes t = t .Tx.body .TxBody.txGovVotes

  certCreds : Tx → ℙ Credential
  certCreds t = fromList (mapMaybe cwitness (certs t))

  -- The deposit-map key each certificate touches (add via `∪⁺`/`∪ˡ`, remove via
  -- `∖`).  Unlike `cwitness`, this is total on `reg` (a zero-deposit `reg c 0`
  -- still writes `CredentialDeposit c`), which is exactly what deposit
  -- commutativity requires — see `disjDeposits` below.
  certDepositKey : DCert → Maybe DepositPurpose
  certDepositKey (delegate c _ _ _) = just (CredentialDeposit c)
  certDepositKey (reg c _)          = just (CredentialDeposit c)
  certDepositKey (regpool kh _)     = just (PoolDeposit kh)
  certDepositKey (regdrep c _ _)    = just (DRepDeposit c)
  certDepositKey (dereg c _)        = just (CredentialDeposit c)
  certDepositKey (deregdrep c _)    = just (DRepDeposit c)
  certDepositKey (retirepool _ _)   = nothing
  certDepositKey (ccreghot _ _)     = nothing

  depositCreds : Tx → ℙ DepositPurpose
  depositCreds t = fromList (mapMaybe certDepositKey (certs t))

  -- The (action , voter) pairs a transaction votes on: the write-targets of
  -- its `addVote` updates.
  voteTargets : Tx → ℙ (GovActionID × GovVoter)
  voteTargets t = fromList (map (λ v → (v .GovVote.gid , v .GovVote.voter)) (votes t))

  isDRepCert : DCert → Type
  isDRepCert (regdrep _ _ _)  = ⊤
  isDRepCert (deregdrep _ _)  = ⊤
  isDRepCert _                = ⊥

NoProp : Tx → Type
NoProp t = proposals t ≡ []

NoDRepCert : Tx → Type
NoDRepCert t = Allᴸ.All (λ c → ¬ isDRepCert c) (certs t)

-- (2) global no-governance condition, applied to every transaction in the list.
-- Governance *votes* are now permitted; only proposals and DRep
-- (de)registration are excluded.
NoGov : Tx → Type
NoGov t = NoProp t × NoDRepCert t

-- (1) minimal independence: disjoint overwriting-certificate targets, and
-- disjoint deposit-map keys.  `disjDeposits` is *exactly* the condition on the
-- certificates that guarantees `deposits` commutativity: it forbids the only
-- non-commuting deposit interaction — one transaction adding `CredentialDeposit c`
-- (`reg`/`delegate`) while another removes it (`dereg`), which `disjCertCreds`
-- alone misses because `reg c 0` has `cwitness ≡ nothing`.  (Same-key *additions*,
-- `reg`/`delegate`, would in fact commute since `_∪⁺_` is commutative, so this is
-- slightly stronger than strictly necessary, but it is the clean, local condition.)
-- Note that no collateral-related condition is needed: the `UTXO` rule
-- requires `collateralInputs ⊆ dom utxo`, so any overlap between one
-- transaction's collateral and the keys another one consumes or creates makes
-- one of the two orders fail its premises — excluded by the theorem's
-- both-executions-given hypotheses.  The collected collateral of a
-- phase-2-invalid transaction is then pinned by the global valuation
-- `u₀ ∪ˡ outsAll l` (see the fees section).
record Indep (t₁ t₂ : Tx) : Type where
  field
    disjCertCreds : disjoint (certCreds    t₁) (certCreds    t₂)
    disjDeposits  : disjoint (depositCreds t₁) (depositCreds t₂)
    disjVotes     : disjoint (voteTargets t₁) (voteTargets t₂)

Indep-sym : ∀ {t₁ t₂} → Indep t₁ t₂ → Indep t₂ t₁
Indep-sym i = record
  { disjCertCreds = Properties.disjoint-sym (i .disjCertCreds)
  ; disjDeposits  = Properties.disjoint-sym (i .disjDeposits)
  ; disjVotes     = Properties.disjoint-sym (i .disjVotes) }
  where open Indep
```

## Replay protection and `LEDGER` congruence (sound obligations)

State equality is the extensional `_≈ˡ_` of
[`StateEquiv`](Ledger.Conway.Specification.Ledger.Properties.StateEquiv.md)
(propositional `_≡_` is too strong — the `List`-backed model makes reordered
states `_≡ᵉ_`-equal but not `_≡_`).

**Replay protection** is the one genuinely-assumed *ledger* fact.  Following
Vinogradova & Sorokin (LSFA'24, Thm 5.1.1 / Cor 5.1.2), along any valid
`LEDGERS`{.AgdaOperator} execution from a well-founded initial `UTxO`, the
transaction-created output sets are pairwise disjoint and disjoint from the
initial state, and the spent-input sets are pairwise disjoint — a consequence of
injectivity of the transaction hash together with well-foundedness of `UTxO₀`.
This is exactly what makes the per-transaction "remove inputs, add outputs" net
effect collapse to the order-independent `u₀ ∪ ⋃outs ∖ ⋃ins`.

Of Cor 5.1.2's three consequences (outputs pairwise disjoint, outputs fresh
w.r.t. the initial state, inputs pairwise disjoint) the net-effect proof needs
the first two — freshness pins the global valuation `u₀ ∪ˡ outsAll l` that
determines an invalid transaction's collected collateral — plus the combined
removed-vs-later-added disjointness `Ins#Outs-exec`{.AgdaFunction} stated where
it is used; we assume exactly those and nothing more:

```agda
postulate
  -- Replay protection (LSFA'24 Cor 5.1.2): created outputs are pairwise disjoint …
  replay-outs-disjoint :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → AllPairs (λ t t′ → disjoint (dom (outs (t .Tx.body) ˢ)) (dom (outs (t′ .Tx.body) ˢ))) l
  -- … and disjoint from the initial UTxO.
  replay-outs-fresh :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → Allᴸ.All (λ t → disjoint (dom (LState.utxoSt s .UTxOState.utxo ˢ)) (dom (outs (t .Tx.body) ˢ))) l
```

### Decomposition of a `LEDGER-V` step

A `LEDGER-V`{.AgdaInductiveConstructor} step decomposes into independent updates
of the three components of `LState`{.AgdaRecord}, so per-field reorder-invariance
reduces to showing each component's update commutes:

1.  **UTxO** (`UTXOW`/`UTXO`): with `distinctTxId` and `disjInputs`, the updates
    `(utxo ∣ txIns ᶜ) ∪ˡ outs txb` on the two transactions touch disjoint keys
    and hence commute; the value-preservation and witness premises are preserved
    because they are local to each transaction.
2.  **CertState** (`CERTS`): with `disjCertCreds` and `disjWdrls`, the
    `DELEG`/`POOL`/`GOVCERT` updates and the `PRE-CERT`/`POST-CERT` housekeeping
    commute.
3.  **GovState** (`GOVS` + `rmOrphanDRepVotes`): handled by gov-freeness below.

The gov-free component is genuinely dischargeable now: a gov-free transaction
presents the empty signal to `GOVS`{.AgdaDatatype}, since
`txgov`{.AgdaFunction} concatenates (the maps of) `txGovProposals`{.AgdaField}
and `txGovVotes`{.AgdaField}.

```agda
NoProp⇒txgov≡votes : (t : Tx) → NoProp t → txgov (t .Tx.body) ≡ map inj₁ (votes t)
NoProp⇒txgov≡votes t gp rewrite gp = refl
```

With the empty signal, `GOVS`{.AgdaDatatype} leaves its state at
`rmOrphanDRepVotes certState' govSt`; together with `noDRepCert` keeping
`dom (dreps certState')` constant across the two transactions, the two orders
apply the *same* `rmOrphanDRepVotes` filter, so the `GovState`{.AgdaFunction}
component agrees.  Item 1 is fully discharged below (the `utxo` net form and
the `deposits` fold); items 2 and 3 are the `LEDGERS-cert≈`/`LEDGERS-govSt≈`
obligations, for which the disjoint-key map-commutation lemmas below are the
ingredients.

### UTxO building blocks (item 1)

The UTxO commutation reduces to a handful of disjoint-key map facts.  The first:
every key produced by `outs`{.AgdaFunction} carries that transaction's
`txId`{.AgdaField}, so transactions with distinct ids produce outputs on
disjoint key-sets.

The single leaf fact: every `outs`{.AgdaFunction} key carries the transaction's
`txId`{.AgdaField}.  Since `outs txb = mapKeys (txId ,_) txOuts` and
`mapKeys f = mapˡ f = map (map₁ f)`, a key in its domain is `(txId , i)` for some
index `i`:

```agda
opaque
  unfolding outs

  outs-domᵀ : ∀ {txb} {a : TxIn} → a ∈ dom (outs txb) → proj₁ a ≡ txb .TxBody.txId
  outs-domᵀ {txb} {a} h
    with Equivalence.from ∈-map (proj₂ (Equivalence.from dom∈ h))
  ... | _ , eq , _ = cong (proj₁ ∘ proj₁) eq
```

Output-domain disjointness for distinct ids is then *proven* from it:

```agda
outs-disjoint : ∀ {t₁ t₂}
  → t₁ .Tx.body .TxBody.txId ≢ t₂ .Tx.body .TxBody.txId
  → disjoint (dom (outs (t₁ .Tx.body))) (dom (outs (t₂ .Tx.body)))
outs-disjoint ne ha hb = ne (trans (sym (outs-domᵀ ha)) (outs-domᵀ hb))
```

The remaining bricks are general finite-map lemmas, staged in
[GeneralLemmas](Ledger.Conway.Specification.Ledger.Properties.GeneralLemmas.md):
`∪ˡ-sym-disjoint` (left-biased union of disjoint-domain maps is symmetric),
`res-comp-disjoint` (restricting away keys disjoint from the domain is a no-op,
e.g. `outs t₁ ∣ ins t₂ ᶜ ≡ outs t₁` from replay protection), `resᶜ-comm` (two
complementary restrictions commute) and `res-merge` (nested restrictions merge
into a union-restriction).

### Assembling the UTxO field commutation

This follows the canonical-form argument of Vinogradova & Sorokin, *Properties
of UTxO Ledgers and Programs Implemented on Them* (LSFA'24), Theorem 5.2.1: the
final UTxO is `u∪ \ r` with `u∪` the initial state plus *all* outputs and `r`
*all* consumed inputs — both order-independent.  That paper proves the general
(independence-free) result for the pure-UTxO ledger; here we work inside the
richer Conway `LState`, where the analogous `utxo`-field swap needs only the
disjointness facts above (the governance/certificate components are what force
the extra `Indep` conditions and are handled separately).  (The final theorem
does not consume this pairwise form — it goes through the closed form
`utxoᶠ-net`{.AgdaFunction}/`netU-↭`{.AgdaFunction} below — but it is the local
heart of the same argument and is retained as such.)

A single transaction's update, written with `_∪ˡ_`, becomes a plain disjoint
union once we know its outputs are fresh w.r.t. the state it extends (the
`txId`-freshness guaranteed by the `UTXO` rule / well-foundedness, cf. Thm 5.1.1):

```agda
private
  applyU : Tx → UTxO → UTxO
  applyU t x = (x ∣ ins t ᶜ) ∪ˡ outs (t .Tx.body)

applyU-∪ : ∀ {x : UTxO} {t}
  → disjoint (dom (x ˢ)) (dom (outs (t .Tx.body) ˢ))
  → (applyU t x) ˢ ≡ᵉ ((x ∣ ins t ᶜ) ˢ) ∪ (outs (t .Tx.body) ˢ)
applyU-∪ fr = disjoint-∪ˡ-∪ (λ a b → fr (res-comp-domᵐ a) b)
```

Each order then reduces to a canonical form `((u ∣ rᵦ ᶜ) ∣ rₐ ᶜ ∪ outsₐ) ∪ outsᵦ`,
and the two canonical forms agree by `res-comm`{.AgdaFunction} (swap the
input-restrictions) and the commutative-monoid laws of `_∪_` on the outputs:

```agda
module _ {u : UTxO} {t₁ t₂ : Tx}
  (od   : disjoint (dom (outs (t₁ .Tx.body) ˢ)) (dom (outs (t₂ .Tx.body) ˢ)))
  (nc12 : disjoint (dom (outs (t₁ .Tx.body) ˢ)) (ins t₂))
  (nc21 : disjoint (dom (outs (t₂ .Tx.body) ˢ)) (ins t₁))
  (fr1  : disjoint (dom (u ˢ)) (dom (outs (t₁ .Tx.body) ˢ)))
  (fr2  : disjoint (dom (u ˢ)) (dom (outs (t₂ .Tx.body) ˢ)))
  where
  open SetSetoid renaming (trans to infixr 1 _⊚_; sym to ≡ᵉ-sym; refl to ≡ᵉ-refl)

  private
    canon : ∀ {ta tb}
      → disjoint (dom (u ˢ)) (dom (outs (ta .Tx.body) ˢ))
      → disjoint (dom (u ˢ)) (dom (outs (tb .Tx.body) ˢ))
      → disjoint (dom (outs (ta .Tx.body) ˢ)) (dom (outs (tb .Tx.body) ˢ))
      → disjoint (dom (outs (ta .Tx.body) ˢ)) (ins tb)
      → (applyU tb (applyU ta u)) ˢ
        ≡ᵉ ((((u ∣ ins tb ᶜ) ∣ ins ta ᶜ) ˢ) ∪ (outs (ta .Tx.body) ˢ)) ∪ (outs (tb .Tx.body) ˢ)
    canon {ta} {tb} frA frB odAB ncA =
      applyU-∪ {x = applyU ta u} {t = tb} frOut ⊚ Properties.∪-cong inner ≡ᵉ-refl
      where
        Xeq = applyU-∪ {x = u} {ta} frA
        frOut : disjoint (dom ((applyU ta u) ˢ)) (dom (outs (tb .Tx.body) ˢ))
        frOut a∈ b∈ with Equivalence.from ∈-∪ (dom∪ .proj₁ (dom-cong Xeq .proj₁ a∈))
        ... | inj₁ a∈res = frB (res-comp-domᵐ a∈res) b∈
        ... | inj₂ a∈oa  = odAB a∈oa b∈
        inner : ((applyU ta u ∣ ins tb ᶜ) ˢ)
              ≡ᵉ (((u ∣ ins tb ᶜ) ∣ ins ta ᶜ) ˢ) ∪ (outs (ta .Tx.body) ˢ)
        inner = Properties.filter-cong Xeq
              ⊚ Properties.filter-hom-∪
              ⊚ Properties.∪-cong (resᶜ-comm {m = u} {X = ins ta} {Y = ins tb})
                                  (res-comp-disjoint {m = outs (ta .Tx.body)} {X = ins tb} ncA)

  utxo-comm : (applyU t₂ (applyU t₁ u)) ˢ ≡ᵉ (applyU t₁ (applyU t₂ u)) ˢ
  utxo-comm =
      canon {t₁} {t₂} fr1 fr2 od nc12
    ⊚ Properties.∪-cong (Properties.∪-cong (resᶜ-comm {m = u} {X = ins t₂} {Y = ins t₁}) ≡ᵉ-refl) ≡ᵉ-refl
    ⊚ Properties.∪-assoc _ _ _
    ⊚ Properties.∪-cong ≡ᵉ-refl Properties.∪-sym
    ⊚ ≡ᵉ-sym (Properties.∪-assoc _ _ _)
    ⊚ ≡ᵉ-sym (canon {t₂} {t₁} fr2 fr1 (Properties.disjoint-sym od) nc21)
```

## CertState building block: `insert` commutes on distinct keys

The `CertState`{.AgdaRecord} commutation (the `DELEG`/`POOL`/`GOVCERT` updates)
rests on the map operation `insertIfJust`{.AgdaFunction} commuting when the two
certificates target distinct credentials.  The `insert`-commutation bricks
(`insert-comm`, `insert-del-comm`, `∪ˡ-rsingleton-comm`, `rsingleton-del-comm`,
built from the membership characterization `∈-insert⁻/⁺` of
`insert m c v = ❴ (c , v) ❵ᵐ ∪ˡ m`) are in `GeneralLemmas`; here we only wrap
them for Conway's `insertIfJust`:

```agda
module _ {A B : Type} ⦃ _ : DecEq A ⦄ where
  open SetSetoid using () renaming (refl to ≡ᵉ-refl)

  -- `insertIfJust` is Conway-specific (`Certs`), so its commutation wrappers
  -- stay here, over the general `insert` lemmas from `GeneralLemmas`.
  insertIfJust-comm : ∀ {m : A ⇀ B} {c₁ c₂} {mv₁ mv₂ : Maybe B} → c₁ ≢ c₂
    → (insertIfJust c₂ mv₂ (insertIfJust c₁ mv₁ m)) ˢ ≡ᵉ (insertIfJust c₁ mv₁ (insertIfJust c₂ mv₂ m)) ˢ
  insertIfJust-comm {mv₁ = nothing} {nothing} _ = ≡ᵉ-refl
  insertIfJust-comm {mv₁ = nothing} {just _}  _ = ≡ᵉ-refl
  insertIfJust-comm {mv₁ = just _}  {nothing} _ = ≡ᵉ-refl
  insertIfJust-comm {m} {c₁} {c₂} {just v₁} {just v₂} c₁≢c₂ =
    insert-comm {m = m} {c₁ = c₁} {c₂ = c₂} {v₁ = v₁} {v₂ = v₂} c₁≢c₂

  -- Insert and a distinct-key removal commute; covers delegate-vs-deregister.
  insertIfJust-del-comm : ∀ {m : A ⇀ B} {c c'} {mv : Maybe B} → c ≢ c'
    → (insertIfJust c mv (m ∣ ❴ c' ❵ ᶜ)) ˢ ≡ᵉ ((insertIfJust c mv m) ∣ ❴ c' ❵ ᶜ) ˢ
  insertIfJust-del-comm {mv = nothing}  _    = ≡ᵉ-refl
  insertIfJust-del-comm {m} {c} {c'} {just v} c≢c' =
    insert-del-comm {m = m} {c = c} {c' = c'} {v = v} c≢c'
```

## CertState assembly: `DState` updates commute

Toward the `LEDGERS-cert≈`{.AgdaFunction} obligation: the per-certificate state
update commutes for distinct credentials.  Here is the
`DState`{.AgdaRecord} (`DELEG`{.AgdaDatatype}) component — a direct assembly of
the cert bricks, one per sub-map.  `_≈ᵈ_` is component-wise `_≡ᵉ_`:

```agda
record _≈ᵈ_ (d₁ d₂ : DState) : Type where
  field
    vd≈ : DState.voteDelegs  d₁ ˢ ≡ᵉ DState.voteDelegs  d₂ ˢ
    sd≈ : DState.stakeDelegs d₁ ˢ ≡ᵉ DState.stakeDelegs d₂ ˢ
    rw≈ : DState.rewards     d₁ ˢ ≡ᵉ DState.rewards     d₂ ˢ

delegOp : DCert → DState → DState
delegOp (delegate c mvd mkh _) d =
  ⟦ insertIfJust c mvd (DState.voteDelegs d)
  , insertIfJust c mkh (DState.stakeDelegs d)
  , DState.rewards d ∪ˡ ❴ c , 0 ❵ᵐ ⟧ᵈ
delegOp (reg c _)   d =
  ⟦ DState.voteDelegs d , DState.stakeDelegs d , DState.rewards d ∪ˡ ❴ c , 0 ❵ᵐ ⟧ᵈ
delegOp (dereg c _) d =
  ⟦ DState.voteDelegs d ∣ ❴ c ❵ ᶜ , DState.stakeDelegs d ∣ ❴ c ❵ ᶜ , DState.rewards d ∣ ❴ c ❵ ᶜ ⟧ᵈ
delegOp _ d = d
```

Two `delegate`s on distinct credentials commute — `insertIfJust-comm` on each
delegation map, `∪ˡ-rsingleton-comm` on rewards:

```agda
delegate-comm : ∀ {c₁ c₂ mvd₁ mvd₂ mkh₁ mkh₂ x₁ x₂} {d : DState} → c₁ ≢ c₂
  → delegOp (delegate c₂ mvd₂ mkh₂ x₂) (delegOp (delegate c₁ mvd₁ mkh₁ x₁) d)
    ≈ᵈ delegOp (delegate c₁ mvd₁ mkh₁ x₁) (delegOp (delegate c₂ mvd₂ mkh₂ x₂) d)
delegate-comm {c₁} {c₂} {mvd₁} {mvd₂} {mkh₁} {mkh₂} {d = d} c₁≢c₂ = record
  { vd≈ = insertIfJust-comm {m = DState.voteDelegs d} {c₁ = c₁} {c₂ = c₂} {mv₁ = mvd₁} {mv₂ = mvd₂} c₁≢c₂
  ; sd≈ = insertIfJust-comm {m = DState.stakeDelegs d} {c₁ = c₁} {c₂ = c₂} {mv₁ = mkh₁} {mv₂ = mkh₂} c₁≢c₂
  ; rw≈ = ∪ˡ-rsingleton-comm {m = DState.rewards d} {a = c₁} {b = c₂} {x = 0} {y = 0} c₁≢c₂ }
```

Two registrations (`reg`) commute — they touch only `rewards`:

```agda
reg-comm : ∀ {c₁ c₂ x₁ x₂} {d : DState} → c₁ ≢ c₂
  → delegOp (reg c₂ x₂) (delegOp (reg c₁ x₁) d) ≈ᵈ delegOp (reg c₁ x₁) (delegOp (reg c₂ x₂) d)
reg-comm {c₁} {c₂} {d = d} c₁≢c₂ = record
  { vd≈ = SetSetoid.refl ; sd≈ = SetSetoid.refl
  ; rw≈ = ∪ˡ-rsingleton-comm {m = DState.rewards d} {a = c₁} {b = c₂} {x = 0} {y = 0} c₁≢c₂ }
```

Two deregistrations (`dereg`) commute on every sub-map — and don't even need the
credentials distinct, since key-removals always commute (`resᶜ-comm`):

```agda
dereg-comm : ∀ {c₁ c₂ x₁ x₂} {d : DState}
  → delegOp (dereg c₂ x₂) (delegOp (dereg c₁ x₁) d) ≈ᵈ delegOp (dereg c₁ x₁) (delegOp (dereg c₂ x₂) d)
dereg-comm {c₁} {c₂} {d = d} = record
  { vd≈ = resᶜ-comm {m = DState.voteDelegs  d} {X = ❴ c₁ ❵} {Y = ❴ c₂ ❵}
  ; sd≈ = resᶜ-comm {m = DState.stakeDelegs d} {X = ❴ c₁ ❵} {Y = ❴ c₂ ❵}
  ; rw≈ = resᶜ-comm {m = DState.rewards     d} {X = ❴ c₁ ❵} {Y = ❴ c₂ ❵} }
```

A `delegate` and a `dereg` on distinct credentials commute — the mixed case,
using `insertIfJust-del-comm` on the delegation maps and `rsingleton-del-comm`
on rewards (so *every* cert brick is now exercised in the cert assembly):

```agda
delegate-dereg-comm : ∀ {c₁ c₂ mvd₁ mkh₁ x₁ x₂} {d : DState} → c₁ ≢ c₂
  → delegOp (dereg c₂ x₂) (delegOp (delegate c₁ mvd₁ mkh₁ x₁) d)
    ≈ᵈ delegOp (delegate c₁ mvd₁ mkh₁ x₁) (delegOp (dereg c₂ x₂) d)
delegate-dereg-comm {c₁} {c₂} {mvd₁} {mkh₁} {d = d} c₁≢c₂ = record
  { vd≈ = SetSetoid.sym (insertIfJust-del-comm {m = DState.voteDelegs  d} {c = c₁} {c' = c₂} {mv = mvd₁} c₁≢c₂)
  ; sd≈ = SetSetoid.sym (insertIfJust-del-comm {m = DState.stakeDelegs d} {c = c₁} {c' = c₂} {mv = mkh₁} c₁≢c₂)
  ; rw≈ = rsingleton-del-comm {m = DState.rewards d} {a = c₁} {b = c₂} {x = 0} c₁≢c₂ }
```

(The remaining `DELEG` orderings follow by `≈ᵈ`-symmetry / the same bricks, and
the `PState`/`GState` halves are analogous, with cross-substate pairs commuting
trivially since each cert touches only one of `DState`/`PState`/`GState`.)

## Congruence stack: `UTXOW` respects `_≈ᵘ_`

A full `LEDGER` congruence (the rule respects `_≈ˡ_`) would decompose into a
UTxO component and a certificate/governance component; the latter is exactly
the open `LEDGERS-cert≈`/`LEDGERS-govSt≈` territory, while the former is
**proven** here: working bottom-up, each `UTXOW`/`UTXO`/`UTXOS` state-update
operation and premise respects `_≡ᵉ_`.  (The final theorem does not consume
this stack — the `utxo` field goes through the net form instead — but it is
the natural companion result and the launch point for the remaining
obligations.)  We begin with the `UTXOS` output operations.

The UTxO-field update `(utxo ∣ txIns ᶜ) ∪ˡ outs` respects `_≡ᵉ_` in `utxo`
(`utxoUpd-cong` in `GeneralLemmas`).

The `deposits` field updates via `updateCertDeposits` — a fold over the
certificates doing `_∪⁺_` (reg/delegate/regdrep), `_∪ˡ_` (regpool), or
`_∣_ᶜ` (dereg/deregdrep).  Its congruence in the initial deposits is an
induction reusing `Map.Extra`'s `∪⁺-cong-r`/`restrict-cong` and `∪ˡ-cong`:

```agda
updateCertDeposits-cong : ∀ pp certs {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
  → (updateCertDeposits pp certs d₁) ˢ ≡ᵉ (updateCertDeposits pp certs d₂) ˢ
updateCertDeposits-cong pp []                          eq = eq
updateCertDeposits-cong pp (delegate c vd kh v ∷ certs) eq = updateCertDeposits-cong pp certs (∪⁺-cong-r eq)
updateCertDeposits-cong pp (reg c v ∷ certs)            eq = updateCertDeposits-cong pp certs (∪⁺-cong-r eq)
updateCertDeposits-cong pp (regdrep c v a ∷ certs)      eq = updateCertDeposits-cong pp certs (∪⁺-cong-r eq)
updateCertDeposits-cong pp (regpool kh p ∷ certs)   {d₁} {d₂} eq =
  updateCertDeposits-cong pp certs
    (∪ˡ-cong {m = d₁} {m' = certDeposit (regpool kh p) pp}
             {m'' = d₂} {m''' = certDeposit (regpool kh p) pp} eq (id , id))
updateCertDeposits-cong pp (dereg c v ∷ certs)     {d₁} {d₂} eq = updateCertDeposits-cong pp certs (restrict-cong d₁ d₂ eq)
updateCertDeposits-cong pp (deregdrep c v ∷ certs) {d₁} {d₂} eq = updateCertDeposits-cong pp certs (restrict-cong d₁ d₂ eq)
updateCertDeposits-cong pp (retirepool kh e ∷ certs)   eq = updateCertDeposits-cong pp certs eq
updateCertDeposits-cong pp (ccreghot c mc ∷ certs)     eq = updateCertDeposits-cong pp certs eq
```

The proposal-deposit fold `updateProposalDeposits` only does `_∪⁺_` with
key/value singletons, so its congruence in the initial deposits is a one-line
induction using `∪⁺-cong-l` (the varying argument is the *left* operand):

```agda
updateProposalDeposits-cong : ∀ {ps txid gaDep} {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
  → (updateProposalDeposits ps txid gaDep d₁) ˢ ≡ᵉ (updateProposalDeposits ps txid gaDep d₂) ˢ
updateProposalDeposits-cong {ps = []}     eq = eq
updateProposalDeposits-cong {ps = _ ∷ ps} eq = ∪⁺-cong-r (updateProposalDeposits-cong {ps = ps} eq)
```

`updateDeposits` is the composition of the two folds, so its congruence is just
their composition:

```agda
updateDeposits-cong : ∀ pp txb {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
  → (updateDeposits pp txb d₁) ˢ ≡ᵉ (updateDeposits pp txb d₂) ˢ
updateDeposits-cong pp txb eq =
  updateCertDeposits-cong pp (TxBody.txCerts txb)
    (updateProposalDeposits-cong
      {ps = TxBody.txGovProposals txb} {txid = TxBody.txId txb}
      {gaDep = PParams.govActionDeposit pp} eq)
```

The `UTXOS` *premise* `ValidCertDeposits` respects `≡ᵉ` of the deposits: by
induction on the validity derivation, transporting each `∈ deps` side-condition
via `proj₁ eq` and threading the same `∪⁺`/restriction congruences:

```agda
ValidCertDeposits-cong : ∀ {pp certs} {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
  → ValidCertDeposits pp d₁ certs → ValidCertDeposits pp d₂ certs
ValidCertDeposits-cong eq ⟨⟩ᵛ               = ⟨⟩ᵛ
ValidCertDeposits-cong eq (delegate v)      = delegate   (ValidCertDeposits-cong (∪⁺-cong-r eq) v)
ValidCertDeposits-cong eq (regpool  v)      = regpool    (ValidCertDeposits-cong (∪⁺-cong-r eq) v)
ValidCertDeposits-cong eq (regdrep  v)      = regdrep    (ValidCertDeposits-cong (∪⁺-cong-r eq) v)
ValidCertDeposits-cong eq (reg      v)      = reg        (ValidCertDeposits-cong (∪⁺-cong-r eq) v)
ValidCertDeposits-cong {d₁ = d₁} {d₂} eq (dereg mem md v) =
  dereg (proj₁ eq mem) md (ValidCertDeposits-cong (restrict-cong d₁ d₂ eq) v)
ValidCertDeposits-cong {d₁ = d₁} {d₂} eq (deregdrep mem v) =
  deregdrep (proj₁ eq mem) (ValidCertDeposits-cong (restrict-cong d₁ d₂ eq) v)
ValidCertDeposits-cong eq (ccreghot   v)    = ccreghot   (ValidCertDeposits-cong eq v)
ValidCertDeposits-cong eq (retirepool v)    = retirepool (ValidCertDeposits-cong eq v)
```

### `UTXOS` congruence and the one irreducible assumption

Extensional equivalence of `UTxOState`{.AgdaRecord}s: `_≡ᵉ_` on the two map
fields, `_≡_` on the two scalar (`Coin`) fields.

```agda
record _≈ᵘ_ (u u′ : UTxOState) : Type where
  field
    utxoᵉ      : UTxOState.utxo      u ˢ ≡ᵉ UTxOState.utxo      u′ ˢ
    feesᵉ      : UTxOState.fees      u   ≡  UTxOState.fees      u′
    depositsᵉ  : UTxOState.deposits  u ˢ ≡ᵉ UTxOState.deposits  u′ ˢ
    donationsᵉ : UTxOState.donations u   ≡  UTxOState.donations u′
open _≈ᵘ_
```

Every `UTXOS` premise and output field respects `_≈ᵘ_` *except one*.  The output
`utxo` is `utxoUpd-cong`/`filter-cong`; the `deposits` field is
`updateDeposits-cong`; `fees`/`donations` are propositional (with the collateral
branch using `balance-cong-coin`, since `cbalance` is bag-invariant); and the
`ValidCertDeposits` premise is `ValidCertDeposits-cong`.  The sole obstruction is
the script premise `evalP2Scripts (collectP2ScriptsWithContext pp tx utxo) ≡
isValid`: the collected scripts' `valContext` embeds `txInfo`'s
`realizedInputs = utxo ∣ txIns`, which is serialised to `Data` and handed to the
abstract `validP2Script`.  Nothing in the spec forces that serialisation to be
canonical, so a reordered `utxo` *could* — as far as the abstract model knows —
change a script's verdict.  This is the **one irreducible assumption** on which
the whole reordering theorem rests: Plutus validation cannot observe the ordering
of its realized-input set.  We isolate exactly that, and nothing more:

```agda
postulate
  collectP2Scripts-eval-cong : ∀ {pp tx} {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ
    → evalP2Scripts (collectP2ScriptsWithContext pp tx u)
    ≡ evalP2Scripts (collectP2ScriptsWithContext pp tx u′)
```

With that single assumption, `UTXOS` is well-defined on the `_≈ᵘ_` quotient — for
both the script-valid and the collateral branch:

```agda
UTXOS-cong : ∀ {Γ : UTxOEnv} {u u′ u″ : UTxOState} {tx}
  → Γ ⊢ u ⇀⦇ tx ,UTXOS⦈ u′ → u ≈ᵘ u″
  → ∃[ u‴ ] (Γ ⊢ u″ ⇀⦇ tx ,UTXOS⦈ u‴ × u′ ≈ᵘ u‴)
UTXOS-cong {Γ} {u = uin} {u″ = u″} {tx = tx} (Scripts-Yes (vcd , evp , isv)) e
  = ⟦ (UTxOState.utxo u″ ∣ TxBody.txIns (Tx.body tx) ᶜ) ∪ˡ outs (Tx.body tx)
    , UTxOState.fees u″ + TxBody.txFee (Tx.body tx)
    , updateDeposits (UTxOEnv.pparams Γ) (Tx.body tx) (UTxOState.deposits u″)
    , UTxOState.donations u″ + TxBody.txDonation (Tx.body tx) ⟧ᵘ ,
    Scripts-Yes ( ValidCertDeposits-cong (e .depositsᵉ) vcd
                , trans (sym (collectP2Scripts-eval-cong (e .utxoᵉ))) evp
                , isv ) ,
    record { utxoᵉ      = ∪ˡ-cong
                            {m   = UTxOState.utxo uin ∣ TxBody.txIns (Tx.body tx) ᶜ} {m'   = outs (Tx.body tx)}
                            {m'' = UTxOState.utxo u″  ∣ TxBody.txIns (Tx.body tx) ᶜ} {m''' = outs (Tx.body tx)}
                            (Properties.filter-cong (e .utxoᵉ)) SetSetoid.refl
           ; feesᵉ      = cong (_+ TxBody.txFee (Tx.body tx)) (e .feesᵉ)
           ; depositsᵉ  = updateDeposits-cong (UTxOEnv.pparams Γ) (Tx.body tx) (e .depositsᵉ)
           ; donationsᵉ = cong (_+ TxBody.txDonation (Tx.body tx)) (e .donationsᵉ) }
UTXOS-cong (Scripts-No (evp , isv)) e
  = _ ,
    Scripts-No (trans (sym (collectP2Scripts-eval-cong (e .utxoᵉ))) evp , isv) ,
    record { utxoᵉ      = Properties.filter-cong (e .utxoᵉ)
           ; feesᵉ      = cong₂ _+_ (e .feesᵉ) (balance-cong-coin (Properties.filter-cong (e .utxoᵉ)))
           ; depositsᵉ  = e .depositsᵉ
           ; donationsᵉ = e .donationsᵉ }
```

### `Value` congruence and the value-preservation premise

The `UTXO` rule carries a value-preservation premise `consumed ≡ produced` stated
with **propositional** `_≡_` on `Value`{.AgdaDatatype}.  But `Value`{.AgdaDatatype}
is an *abstract* commutative monoid (concretely `Coin × Vec Quantity n`), so the
only equality the interface provides is the monoid setoid `_≈_`, and reordering a
`UTxO` preserves `balance`{.AgdaFunction} only up to `_≈_`
(`balance-cong : ∣ u ∣ ≡ᵉ ∣ u′ ∣ → balance u ≈ balance u′`).  This is the *same*
soundness gap as for `LState`{.AgdaRecord} (propositional `≡` is too strong on a
finite-map-backed type), now at the value level.  The honest bridge is a single
assumption — the token algebra's setoid equality is propositional — which holds in
every concrete `TokenAlgebra`{.AgdaRecord} (both `Coin` and `Vec` use `_≡_`) but is
not derivable from the abstract interface:

```agda
postulate
  Value-≈⇒≡ : ∀ {a b : Value} → a ≈ b → a ≡ b
```

With it, `balance`{.AgdaFunction} is propositionally order-invariant, which is all
the value-preservation and collateral premises need:

```agda
balance-reorder : ∀ {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ → balance u ≡ balance u′
balance-reorder eq = Value-≈⇒≡ (balance-cong eq)
```

The deposit total is a `Coin`{.AgdaFunction} (a `ℕ`) summation, so it *is*
propositionally order-invariant — `≡ᵉ-getCoin`{.AgdaFunction} from the prelude
gives `getCoin`{.AgdaFunction} congruence directly, and hence
`depositsChange`{.AgdaFunction} congruence:

```agda
depositsChange-cong : ∀ pp txb {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
  → depositsChange pp txb d₁ ≡ depositsChange pp txb d₂
depositsChange-cong pp txb {d₁} {d₂} eq =
  cong₂ _-_
    (≡ᵉ-getCoin (updateDeposits pp txb d₁) (updateDeposits pp txb d₂) (updateDeposits-cong pp txb eq))
    (≡ᵉ-getCoin d₁ d₂ eq)
```

`consumed`{.AgdaFunction} and `produced`{.AgdaFunction} are then propositionally
invariant under `_≈ᵘ_`: the only `Value`-summation term in either is a
`balance`{.AgdaFunction} (`balance-reorder`{.AgdaFunction}), and the only
deposit-dependent term is `depositsChange`{.AgdaFunction}
(`depositsChange-cong`{.AgdaFunction}); the rest is fixed by the transaction.

```agda
consumed-cong : ∀ pp txb {u u″ : UTxOState} → u ≈ᵘ u″
  → consumed pp u txb ≡ consumed pp u″ txb
consumed-cong pp txb {u} {u″} e =
  cong₂ _+_
    (cong₂ _+_
      (cong₂ _+_
        (balance-reorder {u = UTxOState.utxo u ∣ TxBody.txIns txb}
                         {UTxOState.utxo u″ ∣ TxBody.txIns txb}
                         (resᵐ-cong {m = UTxOState.utxo u} {m' = UTxOState.utxo u″}
                                    {X = TxBody.txIns txb} {Y = TxBody.txIns txb}
                                    (e .utxoᵉ) SetSetoid.refl))
        refl)
      (cong inject (cong negPart (depositsChange-cong pp txb (e .depositsᵉ)))))
    refl

produced-cong : ∀ pp txb {u u″ : UTxOState} → u ≈ᵘ u″
  → produced pp u txb ≡ produced pp u″ txb
produced-cong pp txb e =
  cong₂ _+_
    (cong₂ _+_ refl
      (cong inject (cong posPart (depositsChange-cong pp txb (e .depositsᵉ)))))
    refl

consumed≡produced-reorder : ∀ pp txb {u u″ : UTxOState} → u ≈ᵘ u″
  → consumed pp u txb ≡ produced pp u txb
  → consumed pp u″ txb ≡ produced pp u″ txb
consumed≡produced-reorder pp txb e P =
  trans (sym (consumed-cong pp txb e)) (trans P (produced-cong pp txb e))
```

### The reference-scripts size: the third (and last) flatten-to-scalar point

`refScriptsSize`{.AgdaFunction} sums `scriptSize`{.AgdaFunction} over
`setToList (refScripts tx utxo)` — it *flattens* a `UTxO`-derived set into a `ℕ`.
This is structurally the same kind of operation as Plutus script collection: a
`setToList`{.AgdaFunction} extraction whose result a numeric fold consumes.  It is
order-blind in the concrete model (the enumerated set is duplicate-free, so two
`≡ᵉ` `UTxO`s give permuted lists with equal sums), but, like the script context,
that fact is not derivable from the abstract set interface.  We isolate it as the
third and final assumption — alongside `collectP2Scripts-eval-cong`{.AgdaFunction}
(script validation) and `Value-≈⇒≡`{.AgdaFunction} (value summation):

```agda
postulate
  refScriptsSize-reorder : ∀ {tx} {u u′ : UTxO} → u ˢ ≡ᵉ u′ ˢ
    → refScriptsSize u tx ≡ refScriptsSize u′ tx
```

`minfee`{.AgdaFunction} depends on the `UTxO` *only* through
`refScriptsSize`{.AgdaFunction}, so it inherits order-invariance:

```agda
opaque
  unfolding minfee

  minfee-cong : ∀ {pp tx} {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ
    → minfee pp u tx ≡ minfee pp u″ tx
  minfee-cong {pp} {tx} {u} {u″} eq =
    cong (λ z → _ + scriptsCost pp z) (refScriptsSize-reorder {tx = tx} {u = u} {u′ = u″} eq)
```

### `collateralCheck` is order-invariant (no new assumptions)

The collateral premise consumes the `UTxO` through `range`{.AgdaFunction} (which is
`map proj₂`, hence respects `_≡ᵉ_` via `map-≡ᵉ`{.AgdaFunction}) and through
`balance`{.AgdaFunction} (`balance-reorder`{.AgdaFunction}); both are order-blind,
so the whole conjunction transports.

```agda
collateralCheck-cong : ∀ pp tx {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ
  → collateralCheck pp tx u → collateralCheck pp tx u″
collateralCheck-cong pp tx {u} {u″} eq (allVK , adaOnly , geq , ne) =
  let ci  = TxBody.collateralInputs (Tx.body tx)
      rEq = Properties.map-≡ᵉ (resᵐ-cong {m = u} {m' = u″} {X = ci} {Y = ci} eq SetSetoid.refl)
      bEq = balance-reorder {u = u ∣ ci} {u″ ∣ ci}
              (resᵐ-cong {m = u} {m' = u″} {X = ci} {Y = ci} eq SetSetoid.refl)
  in  (λ a∈″ → allVK (rEq .proj₂ a∈″))
    , subst isAdaOnly bEq adaOnly
    , subst (λ v → coin v * 100 ≥ TxBody.txFee (Tx.body tx) * PParams.collateralPercentage pp) bEq geq
    , ne
```

### `UTXO` congruence

The `UTXO`{.AgdaDatatype} rule is `UTXOS`{.AgdaDatatype} guarded by side
conditions on the input `UTxO`.  Each side condition that mentions the `UTxO` is
order-invariant — the `dom`{.AgdaFunction} containment by
`dom-cong`{.AgdaFunction}, value preservation by
`consumed≡produced-reorder`{.AgdaFunction}, `minfee`{.AgdaFunction}/`refScriptsSize`{.AgdaFunction}
by the assumption above, collateral by `collateralCheck-cong`{.AgdaFunction} — and
the state update is `UTXOS-cong`{.AgdaFunction}.  Every other premise is local to
the transaction, so `UTXO`{.AgdaDatatype} respects `_≈ᵘ_`:

```agda
UTXO-cong : ∀ {Γ : UTxOEnv} {u u′ u″ : UTxOState} {tx}
  → Γ ⊢ u ⇀⦇ tx ,UTXO⦈ u′ → u ≈ᵘ u″
  → ∃[ u‴ ] (Γ ⊢ u″ ⇀⦇ tx ,UTXO⦈ u‴ × u′ ≈ᵘ u‴)
UTXO-cong {Γ} {u = u} {u″ = u″} {tx = tx}
  (UTXO-inductive (p₁ , p₂ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , utxos)) e
  with UTXOS-cong utxos e
... | u‴ , utxos′ , out≈ =
  u‴ ,
  UTXO-inductive
    ( p₁
    , (λ {x} x∈ → dom-cong (e .utxoᵉ) .proj₁ (p₂ x∈))
    , p₄
    , subst (_≤ TxBody.txFee (Tx.body tx))
            (minfee-cong {u = UTxOState.utxo u} {u″ = UTxOState.utxo u″} (e .utxoᵉ)) p₅
    , (λ ne → collateralCheck-cong (UTxOEnv.pparams Γ) tx
                {u = UTxOState.utxo u} {u″ = UTxOState.utxo u″} (e .utxoᵉ) (p₆ ne))
    , consumed≡produced-reorder (UTxOEnv.pparams Γ) (Tx.body tx) e p₇
    , p₈ , p₉ , p₁₀
    , subst (_≤ PParams.maxRefScriptSizePerTx (UTxOEnv.pparams Γ))
            (refScriptsSize-reorder {u = UTxOState.utxo u} {u′ = UTxOState.utxo u″} (e .utxoᵉ)) p₁₁
    , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈
    , utxos′ ) ,
  out≈
```

## `UTXOW` congruence

`UTXOW`{.AgdaDatatype} wraps `UTXO`{.AgdaDatatype} with twelve witnessing
side-conditions.  Almost all of them compare *sets* built from the `UTxO` via
membership-only operations (`mapˢ`, `mapPartial`{.AgdaFunction},
`range`{.AgdaFunction}, `_∣_`, `_∪_`, `_∩_`, `filterˢ`{.AgdaFunction},
`dom`{.AgdaFunction}, `_-_`) with `_⊆_` or `_≡ᵉ_`, both of which are preserved
under reordering — *provided* those operations respect `_≡ᵉ_`.  The two generic
congruences not already in the library (`mapPartial-cong`{.AgdaFunction} and
`＼-cong`{.AgdaFunction}) are in `GeneralLemmas`; the rest are library lemmas (`∪-cong`{.AgdaFunction}, `∩-cong`{.AgdaFunction},
`filter-cong`{.AgdaFunction}, `Properties.map-≡ᵉ`{.AgdaFunction}, `dom-cong`{.AgdaFunction},
`resᵐ-cong`{.AgdaFunction}).

The script sets read from the `UTxO` are all membership-based, hence
order-invariant:

```agda
refScripts-cong : ∀ tx {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → refScripts tx u ≡ᵉ refScripts tx u″
refScripts-cong tx {u} {u″} eq =
  mapPartial-cong {f = proj₂ ∘ proj₂ ∘ proj₂} (Properties.map-≡ᵉ
    (resᵐ-cong {m = u} {m' = u″}
      {X = TxBody.txIns (Tx.body tx) ∪ TxBody.refInputs (Tx.body tx)}
      {Y = TxBody.txIns (Tx.body tx) ∪ TxBody.refInputs (Tx.body tx)}
      eq SetSetoid.refl))

txscripts-cong : ∀ tx {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → txscripts tx u ≡ᵉ txscripts tx u″
txscripts-cong tx {u} {u″} eq =
  Properties.∪-cong (SetSetoid.refl {x = TxWitnesses.scripts (Tx.wits tx)})
    (refScripts-cong tx {u = u} {u″ = u″} eq)
```

`credsNeeded`{.AgdaFunction} is a six-way union whose *only* `UTxO`-dependent
member is the first (`mapˢ … (utxo ∣ (txIns ∪ collateralInputs))`); the other five
are transaction-local.  So its congruence is `∪-cong`{.AgdaFunction} with
`map-≡ᵉ`{.AgdaFunction} on that one member and reflexivity on the rest:

```agda
credsNeeded-cong : ∀ txb {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → credsNeeded u txb ≡ᵉ credsNeeded u″ txb
credsNeeded-cong txb {u} {u″} eq =
  Properties.∪-cong
    (Properties.map-≡ᵉ
      (resᵐ-cong {m = u} {m' = u″}
        {X = TxBody.txIns txb ∪ TxBody.collateralInputs txb}
        {Y = TxBody.txIns txb ∪ TxBody.collateralInputs txb}
        eq SetSetoid.refl))
    (Properties.∪-cong SetSetoid.refl
      (Properties.∪-cong SetSetoid.refl
        (Properties.∪-cong SetSetoid.refl
          (Properties.∪-cong SetSetoid.refl
            SetSetoid.refl))))
```

### The script lookup: the fifth flatten-to-scalar point

`lookupScriptHash sh tx utxo` builds a finite map `setToMap (mapˢ ⟨ hash , id ⟩
(txscripts tx utxo))` and looks `sh` up in it.  `setToMap` is `fromListᵐ ∘ setToList`,
so it flattens the script set through `setToList`{.AgdaFunction}; when two distinct
scripts collide on a hash, which one survives depends on the list order.  Its
result is therefore order-blind in the concrete model (hashes don't collide) but
not derivable abstractly — the fifth and final assumption of the same family:

```agda
postulate
  lookupScriptHash-reorder : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx sh
    → lookupScriptHash sh tx u ≡ lookupScriptHash sh tx u″
```

`credentialToP2Script`{.AgdaFunction} and `txOutToP2Script`{.AgdaFunction} read the
`UTxO` only through `lookupScriptHash`{.AgdaFunction}:

```agda
credentialToP2Script-reorder : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx c
  → credentialToP2Script u tx c ≡ credentialToP2Script u″ tx c
credentialToP2Script-reorder {u} {u″} eq tx c with isScriptObj c
... | nothing = refl
... | just sh = cong (_>>= toP2Script) (lookupScriptHash-reorder {u = u} {u″ = u″} eq tx sh)

txOutToP2Script-reorder : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx txout
  → txOutToP2Script u tx txout ≡ txOutToP2Script u″ tx txout
txOutToP2Script-reorder {u} {u″} eq tx txout =
  credentialToP2Script-reorder {u = u} {u″ = u″} eq tx (payCred (proj₁ txout))
```

`TxOutSpendable-PlutusV1`{.AgdaFunction}/`-PlutusV2`{.AgdaFunction} read the `UTxO`
only through `txOutToP2Script`{.AgdaFunction}, so they transport by `subst`:

```agda
TxOutSpendable-PlutusV1-cong : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx txOut
  → TxOutSpendable-PlutusV1 u tx txOut → TxOutSpendable-PlutusV1 u″ tx txOut
TxOutSpendable-PlutusV1-cong {u} {u″} eq tx txOut =
  subst (Maybe.All _) (txOutToP2Script-reorder {u = u} {u″ = u″} eq tx txOut)

TxOutSpendable-PlutusV2-cong : ∀ {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ → ∀ tx txOut
  → TxOutSpendable-PlutusV2 u tx txOut → TxOutSpendable-PlutusV2 u″ tx txOut
TxOutSpendable-PlutusV2-cong {u} {u″} eq tx txOut =
  subst (Maybe.All _) (txOutToP2Script-reorder {u = u} {u″ = u″} eq tx txOut)
```

`languages`{.AgdaFunction} filters `txscripts`{.AgdaFunction} by membership of the
hash in the needed-hash set `shs`; *both* the script set and `shs` move when the
`UTxO` is reordered, so we need a filter congruence varying both:

```agda
filterˢ-hash∈-cong : ∀ {S S′ : ℙ Script} {shs shs′ : ℙ ScriptHash}
  → S ≡ᵉ S′ → shs ≡ᵉ shs′
  → filterˢ (λ s → hash s ∈ shs) S ≡ᵉ filterˢ (λ s → hash s ∈ shs′) S′
filterˢ-hash∈-cong (S⊆ , ⊆S) (shs⊆ , ⊆shs) =
  (λ x∈ → let (hs∈ , s∈) = Equivalence.from ∈-filter x∈ in Equivalence.to ∈-filter (shs⊆ hs∈ , S⊆ s∈)) ,
  (λ x∈ → let (hs∈ , s∈) = Equivalence.from ∈-filter x∈ in Equivalence.to ∈-filter (⊆shs hs∈ , ⊆S s∈))

languages-cong : ∀ tx {u u″ : UTxO} {shs shs′ : ℙ ScriptHash} → u ˢ ≡ᵉ u″ ˢ → shs ≡ᵉ shs′
  → languages tx u shs ≡ᵉ languages tx u″ shs′
languages-cong tx {u} {u″} eq shseq =
  mapPartial-cong-fg {f = getLanguage} {g = getLanguage} (λ _ → refl)
    (filterˢ-hash∈-cong (txscripts-cong tx {u = u} {u″ = u″} eq) shseq)
```

### `allowedLanguages` is order-invariant (no new assumptions)

`allowedLanguages`{.AgdaFunction} reads the `UTxO` only through the set
`os = range (outs txb) ∪ range (utxo ∣ (txIns ∪ refInputs))`.  It is a union of
three per-version branches, each gated by a decidable conjunction whose conjuncts
either are transaction-local (`UsesV3Features`, disjointness of inputs) or touch
the `UTxO` only via *existentials* over `os` (bootstrap addresses, inline
datums).  Since `os` respects `_≡ᵉ_` and each existential is a membership
predicate, the guards decide identically and the (fixed) branch values agree — so
`allowedLanguages` is propositionally order-invariant.  The generic
`if-cong₂`{.AgdaFunction} lets a decidable `if` transport when the two conditions
are logically equivalent:

```agda
allowedLanguages-cong : ∀ tx {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ
  → allowedLanguages tx u ≡ allowedLanguages tx u″
allowedLanguages-cong tx {u} {u″} eq =
  cong₂ _∪_
    (if-cong₂ {c = ¬bsU × disj} {c′ = ¬bsU″ × disj}
       (λ (nb , d) → nb ∘ g₁ , d) (λ (nb , d) → nb ∘ f₁ , d) refl refl)
    (cong₂ _∪_
      (if-cong₂ {c = ¬bsU × ¬v3} {c′ = ¬bsU″ × ¬v3}
         (λ (nb , nv3) → nb ∘ g₁ , nv3) (λ (nb , nv3) → nb ∘ f₁ , nv3) refl refl)
      (if-cong₂ {c = ¬bsU × ¬v3 × ¬v2U} {c′ = ¬bsU″ × ¬v3 × ¬v2U″}
         (λ (nb , nv3 , nv2) → nb ∘ g₁ , nv3 , nv2 ∘ g₃)
         (λ (nb , nv3 , nv2) → nb ∘ f₁ , nv3 , nv2 ∘ f₃) refl refl))
  where
    ins∪ref = TxBody.txIns (Tx.body tx) ∪ TxBody.refInputs (Tx.body tx)
    disj    = TxBody.txIns (Tx.body tx) ∩ TxBody.refInputs (Tx.body tx) ≡ ∅
    ¬v3     = ¬ UsesV3Features (Tx.body tx)
    osU  = range (outs (Tx.body tx)) ∪ range (u  ∣ ins∪ref)
    osU″ = range (outs (Tx.body tx)) ∪ range (u″ ∣ ins∪ref)
    ¬bsU  = ¬ (∃[ o ∈ osU  ] IsBootstrapAddr (proj₁ o))
    ¬bsU″ = ¬ (∃[ o ∈ osU″ ] IsBootstrapAddr (proj₁ o))
    ¬v2U  = ¬ (∃[ o ∈ osU  ] HasInlineDatum o)
    ¬v2U″ = ¬ (∃[ o ∈ osU″ ] HasInlineDatum o)
    oseq : osU ≡ᵉ osU″
    oseq = Properties.∪-cong (SetSetoid.refl {x = range (outs (Tx.body tx))})
             (Properties.map-≡ᵉ
               (resᵐ-cong {m = u} {m' = u″} {X = ins∪ref} {Y = ins∪ref} eq SetSetoid.refl))
    f₁ : (∃[ o ∈ osU ] IsBootstrapAddr (proj₁ o)) → (∃[ o ∈ osU″ ] IsBootstrapAddr (proj₁ o))
    f₁ (o , o∈ , p) = o , oseq .proj₁ o∈ , p
    g₁ : (∃[ o ∈ osU″ ] IsBootstrapAddr (proj₁ o)) → (∃[ o ∈ osU ] IsBootstrapAddr (proj₁ o))
    g₁ (o , o∈ , p) = o , oseq .proj₂ o∈ , p
    f₃ : (∃[ o ∈ osU ] HasInlineDatum o) → (∃[ o ∈ osU″ ] HasInlineDatum o)
    f₃ (o , o∈ , p) = o , oseq .proj₁ o∈ , p
    g₃ : (∃[ o ∈ osU″ ] HasInlineDatum o) → (∃[ o ∈ osU ] HasInlineDatum o)
    g₃ (o , o∈ , p) = o , oseq .proj₂ o∈ , p
```

### The script-integrity hash: the fourth flatten-to-scalar point

The value-preservation-style premise p12 compares `scriptIntegrityHash` with
`hashScriptIntegrity pp (languages …) txrdmrs txdats` under propositional `_≡_`,
and `hashScriptIntegrity`{.AgdaFunction} *hashes a set* of language views
(Utxow §integrity).  As with `collectP2Scripts`{.AgdaFunction}, hashing a set
serialises it, so order-invariance is a concrete-model fact, not derivable here:

```agda
postulate
  hashScriptIntegrity-reorder : ∀ {pp} {langs langs′ : ℙ Language} {rdrms} {dats}
    → langs ≡ᵉ langs′
    → hashScriptIntegrity pp langs rdrms dats ≡ hashScriptIntegrity pp langs′ rdrms dats
```

### Assembling `UTXOW` congruence

`UTXOW`{.AgdaDatatype} wraps `UTXO`{.AgdaDatatype} with twelve witnessing
premises.  Each `UTxO`-dependent premise is transported by the congruence brick
for the set it reads; the twelfth uses `hashScriptIntegrity-reorder`{.AgdaFunction}
and the eighth uses `allowedLanguages-cong`{.AgdaFunction}.  The `UTXO` step is
`UTXO-cong`{.AgdaFunction}; `p₁`/`p₁₁` are transaction-local.

```agda
UTXOW-cong : ∀ {Γ : UTxOEnv} {u u′ u″ : UTxOState} {tx}
  → Γ ⊢ u ⇀⦇ tx ,UTXOW⦈ u′ → u ≈ᵘ u″
  → ∃[ u‴ ] (Γ ⊢ u″ ⇀⦇ tx ,UTXOW⦈ u‴ × u′ ≈ᵘ u‴)
UTXOW-cong {Γ} {u = u} {u″ = u″} {tx = tx}
  (UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , utxos)) e
  with UTXO-cong utxos e
... | u‴ , utxos′ , out≈ =
  u‴ ,
  UTXOW-inductive
    ( p₁
    , (λ {sc} sc∈″ h∈″ →
         p₂ (mapPartial-cong {f = toP1Script} (txscripts-cong tx {u = uu} {u″ = uu″} eq) .proj₂ sc∈″)
            (mapPartial-cong {f = isScriptObj ∘ proj₂} (credsNeeded-cong txb {u = uu} {u″ = uu″} eq) .proj₂ h∈″))
    , (λ a∈″ → p₃ (Properties.∪-cong (mapPartial-cong {f = isKeyHashObj ∘ proj₂} (credsNeeded-cong txb {u = uu} {u″ = uu″} eq))
                                     SetSetoid.refl .proj₂ a∈″))
    , SetSetoid.trans
        (SetSetoid.sym (＼-cong (mapPartial-cong {f = isScriptObj ∘ proj₂} (credsNeeded-cong txb {u = uu} {u″ = uu″} eq))
                               (Properties.map-≡ᵉ {f = hash} (refScripts-cong tx {u = uu} {u″ = uu″} eq))))
        p₄
    , (λ a∈″ → p₅ (idh≈ .proj₂ a∈″))
    , (λ a∈ → Properties.∪-cong idh≈
                (Properties.∪-cong SetSetoid.refl ridh≈) .proj₁ (p₆ a∈))
    , SetSetoid.trans p₇
        (mapPartial-cong-fg
          (λ x → cong (λ z → if z then rdptr txb (proj₁ x) else nothing)
                      (credentialToP2Script-reorder {u = uu} {u″ = uu″} eq tx (proj₂ x)))
          (credsNeeded-cong txb {u = uu} {u″ = uu″} eq))
    , (λ {x} x∈″ → let (xc , xa) = Equivalence.from ∈-∩ (p₈ (lang≈ .proj₂ x∈″))
                   in Equivalence.to ∈-∩ (xc , subst (x ∈_) (allowedLanguages-cong tx {u = uu} {u″ = uu″} eq) xa))
    , (λ {t} t∈″ → TxOutSpendable-PlutusV1-cong {u = uu} {u″ = uu″} eq tx t (p₉  (rng≈ .proj₂ t∈″)))
    , (λ {t} t∈″ → TxOutSpendable-PlutusV2-cong {u = uu} {u″ = uu″} eq tx t (p₁₀ (rng≈ .proj₂ t∈″)))
    , p₁₁
    , trans p₁₂ (hashScriptIntegrity-reorder lang≈)
    , utxos′ ) ,
  out≈
  where
    uu  = UTxOState.utxo u
    uu″ = UTxOState.utxo u″
    txb = Tx.body tx
    eq  = e .utxoᵉ
    insS  = TxBody.txIns txb
    rinsS = TxBody.refInputs txb
    idh≈ = mapPartial-cong-fg
             (λ txout → cong (λ z → if z then txOutToDataHash txout else nothing)
                             (txOutToP2Script-reorder {u = uu} {u″ = uu″} eq tx txout))
             (Properties.map-≡ᵉ (resᵐ-cong {m = uu} {m' = uu″} {X = insS} {Y = insS} eq SetSetoid.refl))
    ridh≈ : mapPartial txOutToDataHash (range (uu ∣ rinsS)) ≡ᵉ mapPartial txOutToDataHash (range (uu″ ∣ rinsS))
    ridh≈ = mapPartial-cong {f = txOutToDataHash}
              (Properties.map-≡ᵉ {f = proj₂} (resᵐ-cong {m = uu} {m' = uu″} {X = rinsS} {Y = rinsS} eq SetSetoid.refl))
    lang≈ : languages tx uu  (mapPartial (isScriptObj ∘ proj₂) (credsNeeded uu  txb)) ≡ᵉ
            languages tx uu″ (mapPartial (isScriptObj ∘ proj₂) (credsNeeded uu″ txb))
    lang≈ = languages-cong tx {u = uu} {u″ = uu″} eq
              (mapPartial-cong {f = isScriptObj ∘ proj₂} (credsNeeded-cong txb {u = uu} {u″ = uu″} eq))
    rng≈  : range (uu ∣ insS) ≡ᵉ range (uu″ ∣ insS)
    rng≈  = Properties.map-≡ᵉ {f = proj₂} (resᵐ-cong {m = uu} {m' = uu″} {X = insS} {Y = insS} eq SetSetoid.refl)
```

## Permutation scaffolding

`AllPairs Indep` is preserved by permutations (since `Indep` is symmetric):

```agda
↭-AllPairs : l₁ ↭ l₂ → AllPairs Indep l₁ → AllPairs Indep l₂
↭-AllPairs = AllPairs-resp-↭ Indep-sym
```

## Per-step UTxO extraction (mixed validity)

A `LEDGER` step updates the `utxo` field by a per-transaction operation *keyed
on the phase-2 validity tag*: a valid transaction applies
`(_ ∣ txIns ᶜ) ∪ˡ outs` (the `Scripts-Yes` `UTXOS` output), while an invalid
one merely consumes its collateral, `_∣ collateralInputs ᶜ` (the `Scripts-No`
output, reached through `LEDGER-I`).  We package the removed key-set, the added
map, and the whole update, all keyed on `isValid`:

```agda
private
  removedᵀ : Tx → ℙ TxIn
  removedᵀ t = if t .Tx.isValid then ins t else collIns t

  addedᵀ : Tx → UTxO
  addedᵀ t = if t .Tx.isValid then outs (t .Tx.body) else ∅ᵐ

  applyUᵐ : Tx → UTxO → UTxO
  applyUᵐ t u = if t .Tx.isValid then (u ∣ ins t ᶜ) ∪ˡ outs (t .Tx.body)
                                 else u ∣ collIns t ᶜ

LEDGER⇒utxoΔ :
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → LState.utxoSt s′ .UTxOState.utxo ≡ applyUᵐ tx (LState.utxoSt s .UTxOState.utxo)
LEDGER⇒utxoΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _))
  rewrite v = refl
LEDGER⇒utxoΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _))
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER⇒utxoΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , isv)))))
  = ⊥-elim (case trans (sym i) isv of λ ())
LEDGER⇒utxoΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No _))))
  rewrite i = refl
```

## Net accumulators are permutation-invariant

The order-independence of every "accumulate over the transaction list" field
rests on a single fact: a `_∪_`-fold of per-transaction sets is invariant under
permutation (`_∪_` is commutative and associative).  This is the reusable core
behind the `utxo` net form `u₀ ∪ ⋃outs ∖ ⋃ins` and the disjoint-key certificate
accumulators.

(`⋃map`/`⋃map-↭` — the per-transaction `_∪_`-fold and its permutation-invariance
— are in `GeneralLemmas`, as are the `_∪ˡ_` bricks `res-∪ˡ-out`, `∪ˡ-∅ʳ` and
`∪ˡ-assoc` used below.)

### The UTxO closed form (paper Thm 5.2.1, mixed validity)

The fold of per-transaction updates equals the order-independent net
`(u ∪ ⋃added) ∖ ⋃removed`, given `Ins#Outs` (each tx's removed keys — inputs if
valid, collateral if invalid — are disjoint from the added maps of itself and
all later txs):

```agda
private
  outsAll : List Tx → UTxO
  outsAll []       = ∅ᵐ
  outsAll (t ∷ ts) = addedᵀ t ∪ˡ outsAll ts

  utxoᶠ : UTxO → List Tx → UTxO
  utxoᶠ u []       = u
  utxoᶠ u (t ∷ ts) = utxoᶠ (applyUᵐ t u) ts

  netU : UTxO → List Tx → UTxO
  netU u l = (u ∪ˡ outsAll l) ∣ ⋃map removedᵀ l ᶜ

  Ins#Outs : List Tx → Type
  Ins#Outs []       = ⊤
  Ins#Outs (t ∷ ts) = disjoint (removedᵀ t) (dom ((addedᵀ t ∪ˡ outsAll ts) ˢ)) × Ins#Outs ts

utxoᶠ-net : ∀ {u} l → Ins#Outs l → (utxoᶠ u l) ˢ ≡ᵉ (netU u l) ˢ
utxoᶠ-net {u} []       _          = SetSetoid.sym (SetSetoid.trans res-∅ᶜ (∪ˡ-∅ʳ {m = u}))
utxoᶠ-net {u} (t ∷ ts) (hd , rest) with t .Tx.isValid | hd
... | true | hdv =
  SetSetoid.trans (utxoᶠ-net {(u ∣ ins t ᶜ) ∪ˡ outs (t .Tx.body)} ts rest)
    (SetSetoid.trans (Properties.filter-cong (∪ˡ-assoc {a = u ∣ ins t ᶜ} {b = outs (t .Tx.body)} {c = outsAll ts}))
      (SetSetoid.trans (Properties.filter-cong (res-∪ˡ-out {u = u} {M = outs (t .Tx.body) ∪ˡ outsAll ts} {X = ins t} hdv))
        (res-merge {m = u ∪ˡ (outs (t .Tx.body) ∪ˡ outsAll ts)} {X = ins t} {Y = ⋃map removedᵀ ts})))
... | false | hdi =
  SetSetoid.trans (utxoᶠ-net {u ∣ collIns t ᶜ} ts rest)
    (SetSetoid.trans (Properties.filter-cong (res-∪ˡ-out {u = u} {M = outsAll ts} {X = collIns t} hd′))
      (SetSetoid.trans (res-merge {m = u ∪ˡ outsAll ts} {X = collIns t} {Y = ⋃map removedᵀ ts})
        (Properties.filter-cong
          (∪ˡ-cong {m = u} {m' = outsAll ts} {m'' = u} {m''' = ∅ᵐ ∪ˡ outsAll ts}
            SetSetoid.refl (SetSetoid.sym (∪ˡ-∅ˡ {m = outsAll ts}))))))
  where
  hd′ : disjoint (collIns t) (dom ((outsAll ts) ˢ))
  hd′ k∈C k∈O =
    hdi k∈C (dom-∪ˡ {m = ∅ᵐ} {m' = outsAll ts} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈O)))
```

The trace collects the fold: iterating `LEDGER⇒utxoΔ` over an execution — with
no assumption on the validity tags — yields `utxo s′ = utxoᶠ (utxo s) l`.

```agda
LEDGERS⇒utxoᶠ : ∀ {l}
  → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.utxo ≡ utxoᶠ (LState.utxoSt s .UTxOState.utxo) l
LEDGERS⇒utxoᶠ {l = []}     (BS-base Id-nop)  = refl
LEDGERS⇒utxoᶠ {l = t ∷ ts} (BS-ind st rest) =
  trans (LEDGERS⇒utxoᶠ rest) (cong (λ x → utxoᶠ x ts) (LEDGER⇒utxoΔ st))
```

### The net UTxO is permutation-invariant

`netU` reads the list only through `outsAll` (a `∪ˡ`-fold of the added maps) and
`⋃map removedᵀ` (a `∪`-fold).  The latter is `⋃map-↭`; the former needs
pairwise-disjoint added maps (`DisjAdded`) so the left-biased union commutes.
`DisjAdded` follows from `replay-outs-disjoint` since each `addedᵀ t` is either
`outs (t .Tx.body)` or `∅ᵐ`:

```agda
DisjOuts : List Tx → Type
DisjOuts = AllPairs (λ t t′ → disjoint (dom (outs (t .Tx.body) ˢ)) (dom (outs (t′ .Tx.body) ˢ)))

private
  DisjAdded : List Tx → Type
  DisjAdded = AllPairs (λ t t′ → disjoint (dom (addedᵀ t ˢ)) (dom (addedᵀ t′ ˢ)))

  addedᵀ-dom⊆ : ∀ (t : Tx) {k : TxIn} → k ∈ dom (addedᵀ t ˢ) → k ∈ dom (outs (t .Tx.body) ˢ)
  addedᵀ-dom⊆ t with t .Tx.isValid
  ... | true  = id
  ... | false = λ k∈ → ⊥-elim (Properties.∉-∅ (proj₂ (Equivalence.from dom∈ k∈)))

  DisjOuts⇒Added : ∀ {l} → DisjOuts l → DisjAdded l
  DisjOuts⇒Added []       = []
  DisjOuts⇒Added {l = t ∷ ts} (a ∷ ap) =
    Allᴸ.map (λ {t′} d {k} k∈ k∈′ → d (addedᵀ-dom⊆ t k∈) (addedᵀ-dom⊆ t′ k∈′)) a
      ∷ DisjOuts⇒Added ap

↭-DisjAdded : l₁ ↭ l₂ → DisjAdded l₁ → DisjAdded l₂
↭-DisjAdded = AllPairs-resp-↭ Properties.disjoint-sym

outsAll-↭ : l₁ ↭ l₂ → DisjAdded l₁ → (outsAll l₁) ˢ ≡ᵉ (outsAll l₂) ˢ
outsAll-↭ ↭-rfl        _                  = SetSetoid.refl
outsAll-↭ {l₁ = _ ∷ xs} {l₂ = _ ∷ ys} (prep x p) (_ ∷ ap) =
  ∪ˡ-cong {m = addedᵀ x} {m' = outsAll xs} {m'' = addedᵀ x} {m''' = outsAll ys}
    SetSetoid.refl (outsAll-↭ p ap)
outsAll-↭ {l₁ = _ ∷ _ ∷ xs} {l₂ = _ ∷ _ ∷ ys} (swap x y p) ((axy ∷ _) ∷ (_ ∷ ap)) =
  SetSetoid.trans (SetSetoid.sym (∪ˡ-assoc {a = addedᵀ x} {b = addedᵀ y} {c = outsAll xs}))
    (SetSetoid.trans
      (∪ˡ-cong {m = addedᵀ x ∪ˡ addedᵀ y} {m' = outsAll xs}
               {m'' = addedᵀ y ∪ˡ addedᵀ x} {m''' = outsAll xs}
        (∪ˡ-sym-disjoint {m = addedᵀ x} {m′ = addedᵀ y} axy) SetSetoid.refl)
      (SetSetoid.trans (∪ˡ-assoc {a = addedᵀ y} {b = addedᵀ x} {c = outsAll xs})
        (∪ˡ-cong {m = addedᵀ y} {m' = addedᵀ x ∪ˡ outsAll xs}
                 {m'' = addedᵀ y} {m''' = addedᵀ x ∪ˡ outsAll ys} SetSetoid.refl
          (∪ˡ-cong {m = addedᵀ x} {m' = outsAll xs}
                   {m'' = addedᵀ x} {m''' = outsAll ys} SetSetoid.refl (outsAll-↭ p ap)))))
outsAll-↭ (↭-trans p q) ap                =
  SetSetoid.trans (outsAll-↭ p ap) (outsAll-↭ q (↭-DisjAdded p ap))

netU-↭ : ∀ {u} → l₁ ↭ l₂ → DisjAdded l₁ → (netU u l₁) ˢ ≡ᵉ (netU u l₂) ˢ
netU-↭ {l₁ = l₁} {l₂ = l₂} {u = u} p disj =
  SetSetoid.trans
    (Properties.filter-cong
      (∪ˡ-cong {m = u} {m' = outsAll l₁} {m'' = u} {m''' = outsAll l₂}
        SetSetoid.refl (outsAll-↭ p disj)))
    (resᶜ-set-cong {m = u ∪ˡ outsAll l₂} (⋃map-↭ {f = removedᵀ} p))
```

### The `utxo` field is reorder-invariant

`Ins#Outs` is the remaining replay-protection consequence: each transaction's
*removed* keys (inputs if phase-2 valid, collateral inputs if invalid) are
disjoint from its own and all later transactions' *added* maps.  For inputs
this is Cor 5.1.2 (inputs pre-exist while outputs are freshly `txId`-keyed);
for collateral inputs the justification is the same, since the `UTXO` rule
requires them to exist at fire time (`collateralInputs ⊆ dom utxo`).  `DisjAdded` is derived
from `replay-outs-disjoint` above.  Chaining extraction, the closed form, and
`netU-↭` gives the `utxo` component of `_≈ˡ_` — with **no** assumption on the
phase-2 validity tags:

```agda
postulate
  Ins#Outs-exec : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Ins#Outs l

LEDGERS-utxo≈ : l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → (LState.utxoSt s₁ .UTxOState.utxo) ˢ ≡ᵉ (LState.utxoSt s₂ .UTxOState.utxo) ˢ
LEDGERS-utxo≈ {s = s} p st₁ st₂ =
  let u = LState.utxoSt s .UTxOState.utxo in
  SetSetoid.trans (SetSetoid.reflexive (cong (λ m → m ˢ) (LEDGERS⇒utxoᶠ st₁)))
    (SetSetoid.trans (utxoᶠ-net {u = u} _ (Ins#Outs-exec st₁))
      (SetSetoid.trans (netU-↭ {u = u} p (DisjOuts⇒Added (replay-outs-disjoint st₁)))
        (SetSetoid.trans (SetSetoid.sym (utxoᶠ-net {u = u} _ (Ins#Outs-exec st₂)))
          (SetSetoid.reflexive (cong (λ m → m ˢ) (sym (LEDGERS⇒utxoᶠ st₂)))))))
```

### The scalar fields `fees` and `donations` are reorder-invariant

Each sums a per-transaction quantity; the sum is permutation-invariant by
commutativity of `_+_`.  The machinery (`Σg`/`scalarᶠ`/`Σg-↭` in `GeneralLemmas`)
is generic in the summed function `g`.

```agda
-- `Σg`, `scalarᶠ`, `scalarᶠ≡` and `Σg-↭` are in `GeneralLemmas`.

private
  -- Per-transaction deltas, keyed on the phase-2 validity tag.  A valid
  -- transaction pays its `txFee` and donates `txDonation`; an invalid one
  -- forfeits the collateral it can reach in the reference UTxO `u` (the
  -- `UTXO` rule does not require the collateral keys to exist — `_∣_`
  -- silently intersects) and donates nothing.
  feeᵀ : Tx → UTxO → Coin
  feeᵀ t u = if t .Tx.isValid then TxBody.txFee (t .Tx.body) else cbalance (u ∣ collIns t)

  dong : Tx → ℕ
  dong t = if t .Tx.isValid then TxBody.txDonation (t .Tx.body) else 0

LEDGER⇒feeΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → LState.utxoSt s′ .UTxOState.fees
    ≡ LState.utxoSt s .UTxOState.fees + feeᵀ tx (LState.utxoSt s .UTxOState.utxo)
LEDGER⇒feeΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _))
  rewrite v = refl
LEDGER⇒feeΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _))
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER⇒feeΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , isv)))))
  = ⊥-elim (case trans (sym i) isv of λ ())
LEDGER⇒feeΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No _))))
  rewrite i = refl

LEDGER⇒donΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → LState.utxoSt s′ .UTxOState.donations ≡ LState.utxoSt s .UTxOState.donations + dong tx
LEDGER⇒donΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _))
  rewrite v = refl
LEDGER⇒donΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _))
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER⇒donΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , isv)))))
  = ⊥-elim (case trans (sym i) isv of λ ())
LEDGER⇒donΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No _))))
  rewrite i = sym (+-identityʳ _)
```

The fee delta of an invalid transaction reads the *current* UTxO through
`_∣ collIns t`.  With the `collateralInputs ⊆ dom utxo` premise of the `UTXO`
rule, that restriction is *determined* by any left-unique extension of the
current UTxO — in particular by the global valuation `u₀ ∪ˡ outsAll l`
(everything a key can ever hold along the execution, well-defined by replay
protection).  So the delta is order-free, with **no** per-pair condition:

```agda
private
  -- an entry of a member's added map embeds into the `outsAll` fold
  ∈-outsAll : ∀ {l : List Tx} {t k w} → t ∈ˡ l → DisjAdded l
    → (k , w) ∈ addedᵀ t ˢ → (k , w) ∈ outsAll l ˢ
  ∈-outsAll {l = t′ ∷ ts} {t} (here refl) _ kw∈ =
    ∈-∪ˡ⁺ {m = addedᵀ t} {m' = outsAll ts} (inj₁ kw∈)
  ∈-outsAll {l = t′ ∷ ts} {t} {k} {w} (there t∈) (a ∷ ap) kw∈ =
    ∈-∪ˡ⁺ {m = addedᵀ t′} {m' = outsAll ts}
      (inj₂ ( (λ k∈d′ → Allᴸ.lookup a t∈ k∈d′ (Equivalence.to dom∈ (w , kw∈)))
            , ∈-outsAll t∈ ap kw∈))

  -- the added maps of the list members sit inside the valuation
  addedᵀ⊆V : ∀ {u₀ : UTxO} {l : List Tx} {t} → t ∈ˡ l → DisjAdded l
    → Allᴸ.All (λ t′ → disjoint (dom (u₀ ˢ)) (dom (outs (t′ .Tx.body) ˢ))) l
    → addedᵀ t ˢ ⊆ (u₀ ∪ˡ outsAll l) ˢ
  addedᵀ⊆V {u₀} {l} {t} t∈ disj fr {(k , w)} kw∈ =
    ∈-∪ˡ⁺ {m = u₀} {m' = outsAll l}
      (inj₂ ( (λ k∈u₀ → Allᴸ.lookup fr t∈ k∈u₀ (addedᵀ-dom⊆ t (Equivalence.to dom∈ (w , kw∈))))
            , ∈-outsAll t∈ disj kw∈))

  -- a step stays inside any extension containing the state and the added map
  applyU-⊆ : ∀ {u W : UTxO} {t} → u ˢ ⊆ W ˢ → addedᵀ t ˢ ⊆ W ˢ
    → (applyUᵐ t u) ˢ ⊆ W ˢ
  applyU-⊆ {u} {W} {t} u⊆ a⊆ with t .Tx.isValid | a⊆
  ... | true | a⊆′ = λ kw∈ →
    case ∈-∪ˡ⁻ {m = u ∣ ins t ᶜ} {m' = outs (t .Tx.body)} kw∈ of λ where
      (inj₁ kw∈r)       → u⊆ (proj₂ (Equivalence.from ∈-filter kw∈r))
      (inj₂ (_ , kw∈o)) → a⊆′ kw∈o
  ... | false | _ = λ kw∈ → u⊆ (proj₂ (Equivalence.from ∈-filter kw∈))

LEDGER⇒collat⊆ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → collIns tx ⊆ dom (LState.utxoSt s .UTxOState.utxo ˢ)
LEDGER⇒collat⊆
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ p₂ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) , _ , _))
  k∈C = p₂ (Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-∪ (inj₂ k∈C))))
LEDGER⇒collat⊆
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ p₂ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _)))
  k∈C = p₂ (Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-∪ (inj₂ k∈C))))

private
  feeᵀ-det : ∀ {u W : UTxO} (t : Tx) → collIns t ⊆ dom (u ˢ) → u ˢ ⊆ W ˢ
    → feeᵀ t u ≡ feeᵀ t W
  feeᵀ-det {u} {W} t c⊆ u⊆ with t .Tx.isValid
  ... | true  = refl
  ... | false =
    balance-cong-coin {utxo = u ∣ collIns t} {utxo' = W ∣ collIns t}
      (res-⊆-unique {m = u} {W = W} {X = collIns t} c⊆ u⊆)

LEDGERS⇒feesᶠ : ∀ {l} {W : UTxO}
  → (LState.utxoSt s .UTxOState.utxo) ˢ ⊆ W ˢ
  → Allᴸ.All (λ t → addedᵀ t ˢ ⊆ W ˢ) l
  → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.fees
    ≡ scalarᶠ (λ t → feeᵀ t W) (LState.utxoSt s .UTxOState.fees) l
LEDGERS⇒feesᶠ {l = []}     _  _            (BS-base Id-nop) = refl
LEDGERS⇒feesᶠ {s = s} {l = t ∷ ts} {W = W} u⊆ (a⊆ Allᴸ.∷ as) (BS-ind st rest) =
  trans
    (LEDGERS⇒feesᶠ {W = W}
      (λ {x} x∈ → applyU-⊆ {u = LState.utxoSt s .UTxOState.utxo} {W = W} {t = t} u⊆ a⊆
        (subst (λ m → x ∈ m ˢ) (LEDGER⇒utxoΔ st) x∈))
      as rest)
    (cong (λ a → scalarᶠ (λ t′ → feeᵀ t′ W) a ts)
      (trans (LEDGER⇒feeΔ st)
        (cong (LState.utxoSt s .UTxOState.fees +_)
          (feeᵀ-det {u = LState.utxoSt s .UTxOState.utxo} {W = W} t
            (LEDGER⇒collat⊆ st) u⊆))))

LEDGERS-fees≈ : l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → LState.utxoSt s₁ .UTxOState.fees ≡ LState.utxoSt s₂ .UTxOState.fees
LEDGERS-fees≈ {l₁ = l₁} {l₂ = l₂} {s = s} p st₁ st₂ =
  let f₀ = LState.utxoSt s .UTxOState.fees
      u₀ = LState.utxoSt s .UTxOState.utxo
      W  = u₀ ∪ˡ outsAll l₁
      u₀⊆W : u₀ ˢ ⊆ W ˢ
      u₀⊆W = λ x∈ → ∈-∪ˡ⁺ {m = u₀} {m' = outsAll l₁} (inj₁ x∈)
      all₁ : Allᴸ.All (λ t → addedᵀ t ˢ ⊆ W ˢ) l₁
      all₁ = Allᴸ.tabulate
        (λ {t} t∈ → addedᵀ⊆V {u₀ = u₀} {l = l₁} {t = t} t∈
           (DisjOuts⇒Added (replay-outs-disjoint st₁)) (replay-outs-fresh st₁))
  in
  trans (LEDGERS⇒feesᶠ {W = W} u₀⊆W all₁ st₁)
    (trans (scalarᶠ≡ f₀ l₁)
      (trans (cong (f₀ +_) (Σg-↭ {g = λ t → feeᵀ t W} p))
        (trans (sym (scalarᶠ≡ f₀ l₂))
          (sym (LEDGERS⇒feesᶠ {W = W} u₀⊆W (All-resp-↭ p all₁) st₂)))))

LEDGERS⇒donᶠ : ∀ {l} → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.donations ≡ scalarᶠ dong (LState.utxoSt s .UTxOState.donations) l
LEDGERS⇒donᶠ {l = []}     (BS-base Id-nop) = refl
LEDGERS⇒donᶠ {l = t ∷ ts} (BS-ind st rest) =
  trans (LEDGERS⇒donᶠ rest) (cong (λ a → scalarᶠ dong a ts) (LEDGER⇒donΔ st))

LEDGERS-don≈ : l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → LState.utxoSt s₁ .UTxOState.donations ≡ LState.utxoSt s₂ .UTxOState.donations
LEDGERS-don≈ {l₁ = l₁} {l₂ = l₂} {s = s} p st₁ st₂ =
  let d₀ = LState.utxoSt s .UTxOState.donations in
  trans (LEDGERS⇒donᶠ st₁)
    (trans (scalarᶠ≡ d₀ l₁)
      (trans (cong (d₀ +_) (Σg-↭ {g = dong} p))
        (trans (sym (scalarᶠ≡ d₀ l₂)) (sym (LEDGERS⇒donᶠ st₂)))))
```

### Generic: a locally-commuting `foldl` is permutation-invariant

Every remaining field (`deposits` and the certificate maps) updates by a
per-transaction operation that pairwise-commutes when the two transactions are
`Indep`.  The reusable engine (`foldl-↭` in `GeneralLemmas`, Mazurkiewicz-style)
is instantiated with `R = Indep`: given commutation on `Indep` pairs and
congruence in the accumulator, a left fold is invariant under any permutation
whose elements are `AllPairs Indep`.

### Extensional equivalence of certificate states

`_≈ᶜ_` is component-wise `_≡ᵉ_` over the eight finite-map fields of `CertState`; it
is the `≈ᴹ` the generic engine will use for the certificate-state fold.

```agda
record _≈ᶜ_ (cs cs′ : CertState) : Type where
  field
    vd≈  : DState.voteDelegs  (CertState.dState cs) ˢ ≡ᵉ DState.voteDelegs  (CertState.dState cs′) ˢ
    sd≈  : DState.stakeDelegs (CertState.dState cs) ˢ ≡ᵉ DState.stakeDelegs (CertState.dState cs′) ˢ
    rw≈  : DState.rewards     (CertState.dState cs) ˢ ≡ᵉ DState.rewards     (CertState.dState cs′) ˢ
    pl≈  : PState.pools    (CertState.pState cs) ˢ ≡ᵉ PState.pools    (CertState.pState cs′) ˢ
    fp≈  : PState.fPools   (CertState.pState cs) ˢ ≡ᵉ PState.fPools   (CertState.pState cs′) ˢ
    rt≈  : PState.retiring (CertState.pState cs) ˢ ≡ᵉ PState.retiring (CertState.pState cs′) ˢ
    dr≈  : GState.dreps     (CertState.gState cs) ˢ ≡ᵉ GState.dreps     (CertState.gState cs′) ˢ
    cck≈ : GState.ccHotKeys (CertState.gState cs) ˢ ≡ᵉ GState.ccHotKeys (CertState.gState cs′) ˢ

≈ᶜ-refl : ∀ {cs} → cs ≈ᶜ cs
≈ᶜ-refl = record { vd≈ = rf ; sd≈ = rf ; rw≈ = rf ; pl≈ = rf
                 ; fp≈ = rf ; rt≈ = rf ; dr≈ = rf ; cck≈ = rf }
  where rf = SetSetoid.refl

≈ᶜ-sym : ∀ {cs cs′} → cs ≈ᶜ cs′ → cs′ ≈ᶜ cs
≈ᶜ-sym e = record { vd≈ = sy (e .vd≈) ; sd≈ = sy (e .sd≈) ; rw≈ = sy (e .rw≈) ; pl≈ = sy (e .pl≈)
                  ; fp≈ = sy (e .fp≈) ; rt≈ = sy (e .rt≈) ; dr≈ = sy (e .dr≈) ; cck≈ = sy (e .cck≈) }
  where open _≈ᶜ_ ; sy = SetSetoid.sym

≈ᶜ-trans : ∀ {cs cs′ cs″} → cs ≈ᶜ cs′ → cs′ ≈ᶜ cs″ → cs ≈ᶜ cs″
≈ᶜ-trans e f = record { vd≈ = tr (e .vd≈) (f .vd≈) ; sd≈ = tr (e .sd≈) (f .sd≈)
                      ; rw≈ = tr (e .rw≈) (f .rw≈) ; pl≈ = tr (e .pl≈) (f .pl≈)
                      ; fp≈ = tr (e .fp≈) (f .fp≈) ; rt≈ = tr (e .rt≈) (f .rt≈)
                      ; dr≈ = tr (e .dr≈) (f .dr≈) ; cck≈ = tr (e .cck≈) (f .cck≈) }
  where open _≈ᶜ_ ; tr = SetSetoid.trans
```

### The certificate-processing pipeline as functions

`CERTS` is `PRE-CERT` then a `CERT` fold then `POST-CERT`.  We give each stage as a
pure function (`preCert` bakes in `NoGov`: `vs ≡ []` so `dReps` is untouched by the
refresh), so the certificate-state update is `certOp`.  The `CERT` fold dispatches by
certificate kind to the `DState`/`PState`/`GState` component, reusing `delegOp`.

```agda
private
  poolOp : PState → DCert → PState
  poolOp ps (regpool kh pp')   = record ps
    { pools    = PState.pools ps ∪ˡ ❴ kh , pp' ❵
    ; fPools   = if isPoolRegistered (PState.pools ps) kh
                   then ❴ kh , pp' ❵ ∪ˡ PState.fPools ps else PState.fPools ps
    ; retiring = PState.retiring ps ∣ ❴ kh ❵ ᶜ }
  poolOp ps (retirepool kh ep) = record ps { retiring = ❴ kh , ep ❵ ∪ˡ PState.retiring ps }
  poolOp ps _ = ps

  govcertOp : Epoch → PParams → GState → DCert → GState
  govcertOp e pp gs (regdrep c d an) = record gs { dreps = ❴ c , e + pp .PParams.drepActivity ❵ ∪ˡ GState.dreps gs }
  govcertOp e pp gs (deregdrep c d)  = record gs { dreps = GState.dreps gs ∣ ❴ c ❵ ᶜ }
  govcertOp e pp gs (ccreghot c mc)  = record gs { ccHotKeys = ❴ c , mc ❵ ∪ˡ GState.ccHotKeys gs }
  govcertOp e pp gs _ = gs

  certStep : Epoch → PParams → CertState → DCert → CertState
  certStep e pp cs c@(delegate _ _ _ _) = record cs { dState = delegOp c (CertState.dState cs) }
  certStep e pp cs c@(reg _ _)          = record cs { dState = delegOp c (CertState.dState cs) }
  certStep e pp cs c@(dereg _ _)        = record cs { dState = delegOp c (CertState.dState cs) }
  certStep e pp cs c@(regpool _ _)      = record cs { pState = poolOp (CertState.pState cs) c }
  certStep e pp cs c@(retirepool _ _)   = record cs { pState = poolOp (CertState.pState cs) c }
  certStep e pp cs c@(regdrep _ _ _)    = record cs { gState = govcertOp e pp (CertState.gState cs) c }
  certStep e pp cs c@(deregdrep _ _)    = record cs { gState = govcertOp e pp (CertState.gState cs) c }
  certStep e pp cs c@(ccreghot _ _)     = record cs { gState = govcertOp e pp (CertState.gState cs) c }

  preCert : Withdrawals → CertState → CertState
  preCert wdrls cs = record cs
    { dState = record (CertState.dState cs)
        { rewards = constMap (mapˢ RewardAddress.stake (dom wdrls)) 0 ∪ˡ DState.rewards (CertState.dState cs) } }

  postCert : CertState → CertState
  postCert cs = record cs
    { dState = record (CertState.dState cs)
        { voteDelegs = DState.voteDelegs (CertState.dState cs)
            ∣^ (mapˢ vDelegCredential (dom (GState.dreps (CertState.gState cs)))
                ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])) } }

  certOp : Epoch → PParams → CertState → Tx → CertState
  certOp e pp cs t =
    postCert (foldl (certStep e pp)
                    (preCert (t .Tx.body .TxBody.txWithdrawals) cs)
                    (t .Tx.body .TxBody.txCerts))
```

`preCert` respects `_≈ᶜ_` (only `rewards` moves, via `∪ˡ-cong`); `postCert` respects it (only
`voteDelegs` moves, via `cores-cong` on the value-restriction, its target set moving with `dreps`):

```agda
preCert-cong : ∀ {wdrls cs cs′} → cs ≈ᶜ cs′ → preCert wdrls cs ≈ᶜ preCert wdrls cs′
preCert-cong {wdrls} {cs} {cs′} e = record
  { vd≈ = e .vd≈ ; sd≈ = e .sd≈
  ; rw≈ = ∪ˡ-cong {m   = constMap (mapˢ RewardAddress.stake (dom wdrls)) 0}
                  {m'  = DState.rewards (CertState.dState cs)}
                  {m'' = constMap (mapˢ RewardAddress.stake (dom wdrls)) 0}
                  {m''' = DState.rewards (CertState.dState cs′)}
                  SetSetoid.refl (e .rw≈)
  ; pl≈ = e .pl≈ ; fp≈ = e .fp≈ ; rt≈ = e .rt≈ ; dr≈ = e .dr≈ ; cck≈ = e .cck≈ }
  where open _≈ᶜ_

postCert-cong : ∀ {cs cs′} → cs ≈ᶜ cs′ → postCert cs ≈ᶜ postCert cs′
postCert-cong {cs} {cs′} e = record
  { vd≈ = coresᵐ-cong
            {m  = DState.voteDelegs (CertState.dState cs)}
            {m' = DState.voteDelegs (CertState.dState cs′)}
            {X  = mapˢ vDelegCredential (dom (GState.dreps (CertState.gState cs)))  ∪ actC}
            {Y  = mapˢ vDelegCredential (dom (GState.dreps (CertState.gState cs′))) ∪ actC}
            (e .vd≈)
            (Properties.∪-cong (Properties.map-≡ᵉ (dom-cong (e .dr≈))) SetSetoid.refl)
  ; sd≈ = e .sd≈ ; rw≈ = e .rw≈ ; pl≈ = e .pl≈ ; fp≈ = e .fp≈ ; rt≈ = e .rt≈
  ; dr≈ = e .dr≈ ; cck≈ = e .cck≈ }
  where open _≈ᶜ_
        actC = fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])
```

`lookupᵐ?-cong` (in `GeneralLemmas`) gives the `≡ᵉ`-respecting lookup that
`poolOp`'s `fPool'` branch needs.

`insert`/`insertIfJust` respect `_≡ᵉ_` (via the membership characterisation `∈-insert⁻/⁺`):

```agda
insertIfJust-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m m′ : A ⇀ B} (c : A) (mv : Maybe B)
  → m ˢ ≡ᵉ m′ ˢ → (insertIfJust c mv m) ˢ ≡ᵉ (insertIfJust c mv m′) ˢ
insertIfJust-cong c nothing  eq = eq
insertIfJust-cong {m = m} {m′} c (just v) eq = insert-cong {m = m} {m′} c v eq
```

The three per-component certificate-update functions respect `_≈ᶜ_` component-wise.
The only subtlety is `poolOp`'s `fPool'`, whose `if isPoolRegistered …` guard agrees
across `_≡ᵉ_`-equal `pools` by `lookupᵐ?-cong`:

```agda
private
  isPoolRegistered-cong : ∀ {p p′ : Pools} (kh : KeyHash)
    → p ˢ ≡ᵉ p′ ˢ → isPoolRegistered p kh ≡ isPoolRegistered p′ kh
  isPoolRegistered-cong {p} {p′} kh pc = lookupᵐ?-cong p p′ kh pc

  fPool'-cong : ∀ (kh : KeyHash) (pp' : StakePoolParams) {p p′ : Pools} {fp fp′ : Pools}
    → p ˢ ≡ᵉ p′ ˢ → fp ˢ ≡ᵉ fp′ ˢ
    → (if isPoolRegistered p kh then ❴ kh , pp' ❵ ∪ˡ fp else fp) ˢ
      ≡ᵉ (if isPoolRegistered p′ kh then ❴ kh , pp' ❵ ∪ˡ fp′ else fp′) ˢ
  fPool'-cong kh pp' {p} {p′} {fp} {fp′} pc fc =
    SetSetoid.trans (go (isPoolRegistered p kh))
      (SetSetoid.reflexive
        (cong (λ (z : Maybe StakePoolParams) → (if z then ❴ kh , pp' ❵ ∪ˡ fp′ else fp′) ˢ)
              (isPoolRegistered-cong {p} {p′} kh pc)))
    where
      go : ∀ (b : Maybe StakePoolParams)
         → (if b then ❴ kh , pp' ❵ ∪ˡ fp else fp) ˢ ≡ᵉ (if b then ❴ kh , pp' ❵ ∪ˡ fp′ else fp′) ˢ
      go (just _) = ∪ˡ-cong {m = ❴ kh , pp' ❵} {m' = fp} {m'' = ❴ kh , pp' ❵} {m''' = fp′} SetSetoid.refl fc
      go nothing  = fc

delegOp-cong : ∀ c {d d′ : DState} → d ≈ᵈ d′ → delegOp c d ≈ᵈ delegOp c d′
delegOp-cong (delegate c mvd mkh v) {d} {d′} e = record
  { vd≈ = insertIfJust-cong {m = DState.voteDelegs d}  {DState.voteDelegs d′}  c mvd (e .vd≈)
  ; sd≈ = insertIfJust-cong {m = DState.stakeDelegs d} {DState.stakeDelegs d′} c mkh (e .sd≈)
  ; rw≈ = ∪ˡ-cong {m = DState.rewards d} {m' = ❴ c , 0 ❵} {m'' = DState.rewards d′} {m''' = ❴ c , 0 ❵}
                  (e .rw≈) SetSetoid.refl }
  where open _≈ᵈ_
delegOp-cong (reg c v) {d} {d′} e = record
  { vd≈ = e .vd≈ ; sd≈ = e .sd≈
  ; rw≈ = ∪ˡ-cong {m = DState.rewards d} {m' = ❴ c , 0 ❵} {m'' = DState.rewards d′} {m''' = ❴ c , 0 ❵}
                  (e .rw≈) SetSetoid.refl }
  where open _≈ᵈ_
delegOp-cong (dereg c v) {d} {d′} e = record
  { vd≈ = Properties.filter-cong (e .vd≈) ; sd≈ = Properties.filter-cong (e .sd≈)
  ; rw≈ = Properties.filter-cong (e .rw≈) }
  where open _≈ᵈ_
delegOp-cong (regpool _ _)    e = e
delegOp-cong (retirepool _ _) e = e
delegOp-cong (regdrep _ _ _)  e = e
delegOp-cong (deregdrep _ _)  e = e
delegOp-cong (ccreghot _ _)   e = e

≈ᶜ⇒≈ᵈ : ∀ {cs cs′} → cs ≈ᶜ cs′ → CertState.dState cs ≈ᵈ CertState.dState cs′
≈ᶜ⇒≈ᵈ e = record { vd≈ = e .vd≈ ; sd≈ = e .sd≈ ; rw≈ = e .rw≈ } where open _≈ᶜ_

certStep-cong : ∀ (e : Epoch) (pp : PParams) (c : DCert) {cs cs′ : CertState}
  → cs ≈ᶜ cs′ → certStep e pp cs c ≈ᶜ certStep e pp cs′ c
certStep-cong e pp c@(delegate _ _ _ _) ecs = record
  { vd≈ = _≈ᵈ_.vd≈ dc ; sd≈ = _≈ᵈ_.sd≈ dc ; rw≈ = _≈ᵈ_.rw≈ dc
  ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈ ; dr≈ = ecs .dr≈ ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_ ; dc = delegOp-cong c (≈ᶜ⇒≈ᵈ ecs)
certStep-cong e pp c@(reg _ _) ecs = record
  { vd≈ = _≈ᵈ_.vd≈ dc ; sd≈ = _≈ᵈ_.sd≈ dc ; rw≈ = _≈ᵈ_.rw≈ dc
  ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈ ; dr≈ = ecs .dr≈ ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_ ; dc = delegOp-cong c (≈ᶜ⇒≈ᵈ ecs)
certStep-cong e pp c@(dereg _ _) ecs = record
  { vd≈ = _≈ᵈ_.vd≈ dc ; sd≈ = _≈ᵈ_.sd≈ dc ; rw≈ = _≈ᵈ_.rw≈ dc
  ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈ ; dr≈ = ecs .dr≈ ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_ ; dc = delegOp-cong c (≈ᶜ⇒≈ᵈ ecs)
certStep-cong e pp (regpool kh pp') {cs} {cs′} ecs = record
  { vd≈ = ecs .vd≈ ; sd≈ = ecs .sd≈ ; rw≈ = ecs .rw≈
  ; pl≈ = ∪ˡ-cong {m = PState.pools (CertState.pState cs)} {m' = ❴ kh , pp' ❵}
                  {m'' = PState.pools (CertState.pState cs′)} {m''' = ❴ kh , pp' ❵} (ecs .pl≈) SetSetoid.refl
  ; fp≈ = fPool'-cong kh pp' (ecs .pl≈) (ecs .fp≈)
  ; rt≈ = Properties.filter-cong (ecs .rt≈)
  ; dr≈ = ecs .dr≈ ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_
certStep-cong e pp (retirepool kh ep) {cs} {cs′} ecs = record
  { vd≈ = ecs .vd≈ ; sd≈ = ecs .sd≈ ; rw≈ = ecs .rw≈ ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈
  ; rt≈ = ∪ˡ-cong {m = ❴ kh , ep ❵} {m' = PState.retiring (CertState.pState cs)}
                  {m'' = ❴ kh , ep ❵} {m''' = PState.retiring (CertState.pState cs′)} SetSetoid.refl (ecs .rt≈)
  ; dr≈ = ecs .dr≈ ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_
certStep-cong e pp (regdrep c d an) {cs} {cs′} ecs = record
  { vd≈ = ecs .vd≈ ; sd≈ = ecs .sd≈ ; rw≈ = ecs .rw≈ ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈
  ; dr≈ = ∪ˡ-cong {m = ❴ c , e + pp .PParams.drepActivity ❵} {m' = GState.dreps (CertState.gState cs)}
                  {m'' = ❴ c , e + pp .PParams.drepActivity ❵} {m''' = GState.dreps (CertState.gState cs′)}
                  SetSetoid.refl (ecs .dr≈)
  ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_
certStep-cong e pp (deregdrep c d) ecs = record
  { vd≈ = ecs .vd≈ ; sd≈ = ecs .sd≈ ; rw≈ = ecs .rw≈ ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈
  ; dr≈ = Properties.filter-cong (ecs .dr≈) ; cck≈ = ecs .cck≈ }
  where open _≈ᶜ_
certStep-cong e pp (ccreghot c mc) {cs} {cs′} ecs = record
  { vd≈ = ecs .vd≈ ; sd≈ = ecs .sd≈ ; rw≈ = ecs .rw≈ ; pl≈ = ecs .pl≈ ; fp≈ = ecs .fp≈ ; rt≈ = ecs .rt≈
  ; dr≈ = ecs .dr≈
  ; cck≈ = ∪ˡ-cong {m = ❴ c , mc ❵} {m' = GState.ccHotKeys (CertState.gState cs)}
                   {m'' = ❴ c , mc ❵} {m''' = GState.ccHotKeys (CertState.gState cs′)} SetSetoid.refl (ecs .cck≈) }
  where open _≈ᶜ_
```

`certOp` respects `_≈ᶜ_` — `postCert-cong` after a `certStep`-fold congruence after `preCert-cong`:

```agda
foldl-certStep-cong : ∀ (e : Epoch) (pp : PParams) (cts : List DCert) {cs cs′ : CertState}
  → cs ≈ᶜ cs′ → foldl (certStep e pp) cs cts ≈ᶜ foldl (certStep e pp) cs′ cts
foldl-certStep-cong e pp []        ecs = ecs
foldl-certStep-cong e pp (c ∷ cts) ecs = foldl-certStep-cong e pp cts (certStep-cong e pp c ecs)

certOp-cong : ∀ (e : Epoch) (pp : PParams) (t : Tx) {cs cs′ : CertState}
  → cs ≈ᶜ cs′ → certOp e pp cs t ≈ᶜ certOp e pp cs′ t
certOp-cong e pp t ecs =
  postCert-cong (foldl-certStep-cong e pp (t .Tx.body .TxBody.txCerts)
                  (preCert-cong {wdrls = t .Tx.body .TxBody.txWithdrawals} ecs))
```

### The `deposits` component is reorder-invariant

`updateCertDeposits`{.AgdaFunction} is a left fold of single-certificate updates,
each of which touches exactly **one** deposit key (its `certDepositKey`): an
aggregating insert `_∪⁺ ❴ k , v ❵` (`reg`/`delegate`/`regdrep`), a first-wins
insert `_∪ˡ ❴ k , v ❵` (`regpool`), a deletion `_∣ ❴ k ❵ ᶜ`
(`dereg`/`deregdrep`), or the identity (`retirepool`/`ccreghot`).  All three
operation shapes are *local at their key* in the sense of
`Axiom.Set.Map.Commutativity`, so any two certificates whose deposit keys differ
commute (`local-comm`), regardless of which shapes they are.  `disjDeposits`
provides exactly this key-distinctness across two `Indep` transactions, and the
commutation lifts through the fold list-by-list.  Under `NoGov` the
proposal-deposit fold is the identity, so the whole per-transaction
`updateDeposits`{.AgdaFunction} commutes, and the generic
`foldl-↭`{.AgdaFunction} engine discharges the field.

```agda
private
  -- The single-certificate deposits update (the body of `updateCertDeposits`).
  depositStep : PParams → DCert → Deposits → Deposits
  depositStep pp c@(delegate _ _ _ _) d = d ∪⁺ certDeposit c pp
  depositStep pp c@(reg _ _)          d = d ∪⁺ certDeposit c pp
  depositStep pp c@(regdrep _ _ _)    d = d ∪⁺ certDeposit c pp
  depositStep pp c@(regpool _ _)      d = d ∪ˡ certDeposit c pp
  depositStep pp c@(dereg _ _)        d = d ∣ certRefund c ᶜ
  depositStep pp c@(deregdrep _ _)    d = d ∣ certRefund c ᶜ
  depositStep pp (retirepool _ _)     d = d
  depositStep pp (ccreghot _ _)       d = d

  UCD-step≡ : ∀ pp c cs d
    → updateCertDeposits pp (c ∷ cs) d ≡ updateCertDeposits pp cs (depositStep pp c d)
  UCD-step≡ pp (delegate _ _ _ _) cs d = refl
  UCD-step≡ pp (reg _ _)          cs d = refl
  UCD-step≡ pp (regdrep _ _ _)    cs d = refl
  UCD-step≡ pp (regpool _ _)      cs d = refl
  UCD-step≡ pp (dereg _ _)        cs d = refl
  UCD-step≡ pp (deregdrep _ _)    cs d = refl
  UCD-step≡ pp (retirepool _ _)   cs d = refl
  UCD-step≡ pp (ccreghot _ _)     cs d = refl

  -- Certificates without a deposit key do not touch the deposits at all.
  depositStep-id : ∀ pp c → certDepositKey c ≡ nothing → ∀ d → depositStep pp c d ≡ d
  depositStep-id pp (retirepool _ _) _ d = refl
  depositStep-id pp (ccreghot _ _)   _ d = refl

  -- Certificates with a deposit key perform an operation local at that key.
  stepLocal : ∀ pp c {k} → certDepositKey c ≡ just k → LocalOp (depositStep pp c) k
  stepLocal pp (delegate c _ _ v) refl = ∪⁺-sing-local {k = CredentialDeposit c} {v = v}
  stepLocal pp (reg c _)          refl = ∪⁺-sing-local {k = CredentialDeposit c} {v = PParams.keyDeposit pp}
  stepLocal pp (regdrep c v _)    refl = ∪⁺-sing-local {k = DRepDeposit c} {v = v}
  stepLocal pp (regpool kh _)     refl = ∪ˡ-sing-local {k = PoolDeposit kh} {v = PParams.poolDeposit pp}
  stepLocal pp (dereg c _)        refl = resᶜ-sing-local {k = CredentialDeposit c}
  stepLocal pp (deregdrep c _)    refl = resᶜ-sing-local {k = DRepDeposit c}

  -- Two certificates with distinct (or absent) deposit keys commute.
  depositStep-comm : ∀ pp c₁ c₂ d
    → (∀ {k₁ k₂} → certDepositKey c₁ ≡ just k₁ → certDepositKey c₂ ≡ just k₂ → k₁ ≢ k₂)
    → (depositStep pp c₂ (depositStep pp c₁ d)) ˢ ≡ᵉ (depositStep pp c₁ (depositStep pp c₂ d)) ˢ
  depositStep-comm pp c₁ c₂ d kd with certDepositKey c₁ in eq₁ | certDepositKey c₂ in eq₂
  ... | nothing | _ = SetSetoid.reflexive (cong _ˢ
        (trans (cong (depositStep pp c₂) (depositStep-id pp c₁ eq₁ d))
               (sym (depositStep-id pp c₁ eq₁ (depositStep pp c₂ d)))))
  ... | just _ | nothing = SetSetoid.reflexive (cong _ˢ
        (trans (depositStep-id pp c₂ eq₂ (depositStep pp c₁ d))
               (cong (depositStep pp c₁) (sym (depositStep-id pp c₂ eq₂ d)))))
  ... | just k₁ | just k₂ =
    local-comm (stepLocal pp c₁ eq₁) (stepLocal pp c₂ eq₂) (kd refl refl) d

  -- Deposit keys of a certificate list, and membership plumbing.
  cdKeys : List DCert → List DepositPurpose
  cdKeys = mapMaybe certDepositKey

  ∈-cdKeys-∷ : ∀ c cs {k} → k ∈ˡ cdKeys cs → k ∈ˡ cdKeys (c ∷ cs)
  ∈-cdKeys-∷ c cs k∈ with certDepositKey c
  ... | just _  = there k∈
  ... | nothing = k∈

  key-here : ∀ c cs {k} → certDepositKey c ≡ just k → k ∈ˡ cdKeys (c ∷ cs)
  key-here c cs eq rewrite eq = here refl

  -- A single certificate commutes past a whole list of key-disjoint certificates.
  UCD-push : ∀ pp c cs d
    → (∀ {k k′} → certDepositKey c ≡ just k → k′ ∈ˡ cdKeys cs → k ≢ k′)
    → (updateCertDeposits pp cs (depositStep pp c d)) ˢ
      ≡ᵉ (depositStep pp c (updateCertDeposits pp cs d)) ˢ
  UCD-push pp c [] d H = SetSetoid.refl
  UCD-push pp c (c′ ∷ cs) d H
    rewrite UCD-step≡ pp c′ cs (depositStep pp c d) | UCD-step≡ pp c′ cs d =
    SetSetoid.trans
      (updateCertDeposits-cong pp cs (depositStep-comm pp c c′ d headH))
      (UCD-push pp c cs (depositStep pp c′ d) tailH)
    where
    headH : ∀ {k₁ k₂} → certDepositKey c ≡ just k₁ → certDepositKey c′ ≡ just k₂ → k₁ ≢ k₂
    headH eqc eqc′ = H eqc (key-here c′ cs eqc′)
    tailH : ∀ {k k′} → certDepositKey c ≡ just k → k′ ∈ˡ cdKeys cs → k ≢ k′
    tailH eqc k′∈ = H eqc (∈-cdKeys-∷ c′ cs k′∈)

  -- Whole cert-list folds with disjoint key sets commute.
  UCD-comm : ∀ pp cs₁ cs₂ d
    → (∀ {k} → k ∈ˡ cdKeys cs₁ → k ∈ˡ cdKeys cs₂ → ⊥)
    → (updateCertDeposits pp cs₂ (updateCertDeposits pp cs₁ d)) ˢ
      ≡ᵉ (updateCertDeposits pp cs₁ (updateCertDeposits pp cs₂ d)) ˢ
  UCD-comm pp [] cs₂ d disj = SetSetoid.refl
  UCD-comm pp (c ∷ cs₁) cs₂ d disj
    rewrite UCD-step≡ pp c cs₁ d | UCD-step≡ pp c cs₁ (updateCertDeposits pp cs₂ d) =
    SetSetoid.trans
      (UCD-comm pp cs₁ cs₂ (depositStep pp c d) tailDisj)
      (updateCertDeposits-cong pp cs₁ (UCD-push pp c cs₂ d headH))
    where
    headH : ∀ {k k′} → certDepositKey c ≡ just k → k′ ∈ˡ cdKeys cs₂ → k ≢ k′
    headH eqc k′∈ refl = disj (key-here c cs₁ eqc) k′∈
    tailDisj : ∀ {k} → k ∈ˡ cdKeys cs₁ → k ∈ˡ cdKeys cs₂ → ⊥
    tailDisj k∈₁ k∈₂ = disj (∈-cdKeys-∷ c cs₁ k∈₁) k∈₂

  -- Per-transaction deposits updates commute for `Indep` gov-free transactions:
  -- under `NoGov` the proposal-deposit fold is the identity, and `disjDeposits`
  -- makes the two certificate folds key-disjoint.
  updateDeposits-comm : ∀ pp {x y : Tx} (d : Deposits) → Indep x y → NoGov x → NoGov y
    → (updateDeposits pp (y .Tx.body) (updateDeposits pp (x .Tx.body) d)) ˢ
      ≡ᵉ (updateDeposits pp (x .Tx.body) (updateDeposits pp (y .Tx.body) d)) ˢ
  updateDeposits-comm pp {x} {y} d i (px , _) (py , _)
    rewrite px | py = UCD-comm pp (certs x) (certs y) d disj
    where
    disj : ∀ {k} → k ∈ˡ cdKeys (certs x) → k ∈ˡ cdKeys (certs y) → ⊥
    disj k∈₁ k∈₂ =
      i .Indep.disjDeposits (Equivalence.to ∈-fromList k∈₁) (Equivalence.to ∈-fromList k∈₂)

  -- Validity-keyed per-transaction deposits update: `LEDGER-I` leaves the
  -- deposits untouched.
  depOp : PParams → Deposits → Tx → Deposits
  depOp pp d t = if t .Tx.isValid then updateDeposits pp (t .Tx.body) d else d

  depOp-congˡ : ∀ pp t {d₁ d₂ : Deposits} → d₁ ˢ ≡ᵉ d₂ ˢ
    → (depOp pp d₁ t) ˢ ≡ᵉ (depOp pp d₂ t) ˢ
  depOp-congˡ pp t eq with t .Tx.isValid
  ... | true  = updateDeposits-cong pp (t .Tx.body) eq
  ... | false = eq

  depOp-comm : ∀ pp {m : Deposits} {x y : Tx} → Indep x y → NoGov x → NoGov y
    → (depOp pp (depOp pp m x) y) ˢ ≡ᵉ (depOp pp (depOp pp m y) x) ˢ
  depOp-comm pp {m} {x} {y} i nx ny with x .Tx.isValid | y .Tx.isValid
  ... | true  | true  = updateDeposits-comm pp m i nx ny
  ... | true  | false = SetSetoid.refl
  ... | false | true  = SetSetoid.refl
  ... | false | false = SetSetoid.refl

LEDGER⇒depΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′
  → LState.utxoSt s′ .UTxOState.deposits
    ≡ depOp (LEnv.pparams Γ) (LState.utxoSt s .UTxOState.deposits) tx
LEDGER⇒depΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _))
  rewrite v = refl
LEDGER⇒depΔ
  (LEDGER-V (v , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _))
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER⇒depΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes (_ , _ , isv)))))
  = ⊥-elim (case trans (sym i) isv of λ ())
LEDGER⇒depΔ
  (LEDGER-I⋯ i (UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No _))))
  rewrite i = refl

LEDGERS⇒depᶠ : ∀ {l} → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.deposits
    ≡ foldl (depOp (LEnv.pparams Γ)) (LState.utxoSt s .UTxOState.deposits) l
LEDGERS⇒depᶠ {l = []}     (BS-base Id-nop) = refl
LEDGERS⇒depᶠ {Γ = Γ} {l = t ∷ ts} (BS-ind st rest) =
  trans (LEDGERS⇒depᶠ rest)
        (cong (λ d → foldl (depOp (LEnv.pparams Γ)) d ts) (LEDGER⇒depΔ st))

LEDGERS-deposits≈ :
    Allᴸ.All NoGov l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → UTxOState.deposits (LState.utxoSt s₁) ˢ ≡ᵉ UTxOState.deposits (LState.utxoSt s₂) ˢ
LEDGERS-deposits≈ {l₁ = l₁} {l₂ = l₂} {Γ = Γ} {s = s} ng ap p st₁ st₂
  rewrite LEDGERS⇒depᶠ st₁ | LEDGERS⇒depᶠ st₂ =
  foldl-↭ (λ d₁ d₂ → d₁ ˢ ≡ᵉ d₂ ˢ) SetSetoid.refl SetSetoid.trans Indep Indep-sym NoGov
          (depOp (LEnv.pparams Γ))
          (λ t eq → depOp-congˡ (LEnv.pparams Γ) t eq)
          (λ i nx ny → depOp-comm (LEnv.pparams Γ) i nx ny)
          (LState.utxoSt s .UTxOState.deposits) ng ap p
```

## Governance votes: `addVote` machinery (toward `LEDGERS-govSt≈`)

With proposals excluded but votes allowed, a transaction's governance effect is
a fold of `addVote`{.AgdaFunction} updates over `txGovVotes` (after the
per-step `rmOrphanDRepVotes` filter).  `addVote` is a spine-preserving list
map that inserts into one role map of one action's `GovVotes`, so two votes
with distinct *(action, voter)* targets commute up to `_≈ᵍ_` — same list
spine, vote maps up to `_≡ᵉ_` (`insert-comm` at distinct keys), everything
else untouched.

```agda
open import Ledger.Conway.Specification.Gov govStructure
  using (addVote; GovState; GovEnv; isRegistered; HasCertState-GovEnv; _⊢_⇀⦇_,GOV⦈_; GOV-Vote; GOV-Propose; _⊢_⇀⦇_,GOVS⦈_)
open import Ledger.Conway.Specification.Gov.Actions govStructure using () renaming (Vote to GVote)
open import Data.List.Relation.Binary.Pointwise using ([]; _∷_)
open import Data.Product.Properties using (×-≡,≡→≡)

private
  addVoteOf : GovState → GovVote → GovState
  addVoteOf g v = addVote g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)

private
  -- A transparent mirror of `addVote`'s per-entry update (the library
  -- function is `opaque`); `addVote≡Alt` below bridges the two once, so all
  -- the real work happens on small, freely-reducing terms.
  updVote : GovVoter → GVote → GovActionState → GovActionState
  updVote ⟦ CC , c ⟧ᵍᵛ x ast =
    record ast { votes = record (GovActionState.votes ast)
      { gvCC = insert (GovVotes.gvCC (GovActionState.votes ast)) c x } }
  updVote ⟦ DRep , c ⟧ᵍᵛ x ast =
    record ast { votes = record (GovActionState.votes ast)
      { gvDRep = insert (GovVotes.gvDRep (GovActionState.votes ast)) c x } }
  updVote ⟦ SPO , k ⟧ᵍᵛ x ast =
    record ast { votes = record (GovActionState.votes ast)
      { gvSPO = insert (GovVotes.gvSPO (GovActionState.votes ast)) k x } }

  addVoteAlt : GovState → GovActionID → GovVoter → GVote → GovState
  addVoteAlt g aid vt x =
    map (λ e → (proj₁ e , (if (proj₁ e ≡ aid) then updVote vt x (proj₂ e) else proj₂ e))) g

opaque
  unfolding addVote

  addVote≡Alt : ∀ g aid vt x → addVote g aid vt x ≡ addVoteAlt g aid vt x
  addVote≡Alt []              aid vt x = refl
  addVote≡Alt ((gid , ast) ∷ g) aid ⟦ CC , c ⟧ᵍᵛ x =
    cong₂ _∷_ refl (addVote≡Alt g aid ⟦ CC , c ⟧ᵍᵛ x)
  addVote≡Alt ((gid , ast) ∷ g) aid ⟦ DRep , c ⟧ᵍᵛ x =
    cong₂ _∷_ refl (addVote≡Alt g aid ⟦ DRep , c ⟧ᵍᵛ x)
  addVote≡Alt ((gid , ast) ∷ g) aid ⟦ SPO , k ⟧ᵍᵛ x =
    cong₂ _∷_ refl (addVote≡Alt g aid ⟦ SPO , k ⟧ᵍᵛ x)

private
  -- Distinct voters commute on a single action state.
  updVote-comm : ∀ (vt₁ vt₂ : GovVoter) x₁ x₂ ast → ¬ vt₁ ≡ vt₂
    → updVote vt₂ x₂ (updVote vt₁ x₁ ast) ≈ᵃ updVote vt₁ x₁ (updVote vt₂ x₂ ast)
  updVote-comm ⟦ CC , c₁ ⟧ᵍᵛ ⟦ CC , c₂ ⟧ᵍᵛ x₁ x₂ ast vt≢ = record
    { votes≈ = record
        { cc≈ = insert-comm {m = GovVotes.gvCC (GovActionState.votes ast)}
                  {c₁ = c₁} {c₂ = c₂} {v₁ = x₁} {v₂ = x₂}
                  (λ c≡ → vt≢ (cong ⟦ CC ,_⟧ᵍᵛ c≡))
        ; dr≈ = SetSetoid.refl ; spo≈ = SetSetoid.refl }
    ; rest≡ = refl }
  updVote-comm ⟦ CC , c₁ ⟧ᵍᵛ   ⟦ DRep , c₂ ⟧ᵍᵛ x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ CC , c₁ ⟧ᵍᵛ   ⟦ SPO , k₂ ⟧ᵍᵛ  x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ DRep , c₁ ⟧ᵍᵛ ⟦ CC , c₂ ⟧ᵍᵛ   x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ DRep , c₁ ⟧ᵍᵛ ⟦ DRep , c₂ ⟧ᵍᵛ x₁ x₂ ast vt≢ = record
    { votes≈ = record
        { cc≈ = SetSetoid.refl
        ; dr≈ = insert-comm {m = GovVotes.gvDRep (GovActionState.votes ast)}
                  {c₁ = c₁} {c₂ = c₂} {v₁ = x₁} {v₂ = x₂}
                  (λ c≡ → vt≢ (cong ⟦ DRep ,_⟧ᵍᵛ c≡))
        ; spo≈ = SetSetoid.refl }
    ; rest≡ = refl }
  updVote-comm ⟦ DRep , c₁ ⟧ᵍᵛ ⟦ SPO , k₂ ⟧ᵍᵛ  x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ SPO , k₁ ⟧ᵍᵛ  ⟦ CC , c₂ ⟧ᵍᵛ   x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ SPO , k₁ ⟧ᵍᵛ  ⟦ DRep , c₂ ⟧ᵍᵛ x₁ x₂ ast _ = ≈ᵃ-refl
  updVote-comm ⟦ SPO , k₁ ⟧ᵍᵛ  ⟦ SPO , k₂ ⟧ᵍᵛ  x₁ x₂ ast vt≢ = record
    { votes≈ = record
        { cc≈ = SetSetoid.refl ; dr≈ = SetSetoid.refl
        ; spo≈ = insert-comm {m = GovVotes.gvSPO (GovActionState.votes ast)}
                   {c₁ = k₁} {c₂ = k₂} {v₁ = x₁} {v₂ = x₂}
                   (λ c≡ → vt≢ (cong ⟦ SPO ,_⟧ᵍᵛ c≡)) }
    ; rest≡ = refl }

  -- `updVote` respects `_≈ᵃ_`.
  updVote-cong : ∀ (vt : GovVoter) x {ast ast′} → ast ≈ᵃ ast′
    → updVote vt x ast ≈ᵃ updVote vt x ast′
  updVote-cong ⟦ CC , c ⟧ᵍᵛ x {ast} {ast′} a≈ = record
    { votes≈ = record
        { cc≈ = insert-cong {m = GovVotes.gvCC (GovActionState.votes ast)}
                  {m′ = GovVotes.gvCC (GovActionState.votes ast′)}
                  c x (_≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈))
        ; dr≈ = _≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈) ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
    ; rest≡ = _≈ᵃ_.rest≡ a≈ }
  updVote-cong ⟦ DRep , c ⟧ᵍᵛ x {ast} {ast′} a≈ = record
    { votes≈ = record
        { cc≈ = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈)
        ; dr≈ = insert-cong {m = GovVotes.gvDRep (GovActionState.votes ast)}
                  {m′ = GovVotes.gvDRep (GovActionState.votes ast′)}
                  c x (_≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈))
        ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
    ; rest≡ = _≈ᵃ_.rest≡ a≈ }
  updVote-cong ⟦ SPO , k ⟧ᵍᵛ x {ast} {ast′} a≈ = record
    { votes≈ = record
        { cc≈ = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈) ; dr≈ = _≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈)
        ; spo≈ = insert-cong {m = GovVotes.gvSPO (GovActionState.votes ast)}
                   {m′ = GovVotes.gvSPO (GovActionState.votes ast′)}
                   k x (_≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈)) }
    ; rest≡ = _≈ᵃ_.rest≡ a≈ }

  addVoteAlt-comm : ∀ g aid₁ vt₁ x₁ aid₂ vt₂ x₂
    → ¬ (aid₁ , vt₁) ≡ (aid₂ , vt₂)
    → addVoteAlt (addVoteAlt g aid₁ vt₁ x₁) aid₂ vt₂ x₂
      ≈ᵍ addVoteAlt (addVoteAlt g aid₂ vt₂ x₂) aid₁ vt₁ x₁
  addVoteAlt-comm [] aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne = []
  addVoteAlt-comm ((gid , ast) ∷ g) aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
    with ¿ gid ≡ aid₁ ¿ | ¿ gid ≡ aid₂ ¿
  ... | no _     | no _     = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
  ... | yes refl | no _     = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
  ... | no _     | yes refl = (refl , ≈ᵃ-refl) ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne
  ... | yes refl | yes eq₂  =
    (refl , updVote-comm vt₁ vt₂ x₁ x₂ ast (λ vt≡ → ne (×-≡,≡→≡ (eq₂ , vt≡))))
      ∷ addVoteAlt-comm g aid₁ vt₁ x₁ aid₂ vt₂ x₂ ne

  addVoteAlt-cong : ∀ {g g′} aid vt x → g ≈ᵍ g′
    → addVoteAlt g aid vt x ≈ᵍ addVoteAlt g′ aid vt x
  addVoteAlt-cong aid vt x [] = []
  addVoteAlt-cong {g = (gid , ast) ∷ g} {g′ = (gid′ , ast′) ∷ g′} aid vt x ((refl , a≈) ∷ rest)
    with ¿ gid ≡ aid ¿
  ... | no _     = (refl , a≈) ∷ addVoteAlt-cong aid vt x rest
  ... | yes refl = (refl , updVote-cong vt x a≈) ∷ addVoteAlt-cong aid vt x rest

-- Two votes with distinct (action , voter) targets commute, and `addVote`
-- respects `_≈ᵍ_` — transferred from the transparent mirror via `addVote≡Alt`.
addVote-comm : ∀ g (v₁ v₂ : GovVote)
  → ¬ (GovVote.gid v₁ , GovVote.voter v₁) ≡ (GovVote.gid v₂ , GovVote.voter v₂)
  → addVoteOf (addVoteOf g v₁) v₂ ≈ᵍ addVoteOf (addVoteOf g v₂) v₁
addVote-comm g v₁ v₂ ne =
  ≈ᵍ-trans (≡⟹≈ᵍ (trans (addVote≡Alt (addVoteOf g v₁) a₂ w₂ x₂)
                          (cong (λ h → addVoteAlt h a₂ w₂ x₂) (addVote≡Alt g a₁ w₁ x₁))))
    (≈ᵍ-trans (addVoteAlt-comm g a₁ w₁ x₁ a₂ w₂ x₂ ne)
      (≡⟹≈ᵍ (sym (trans (addVote≡Alt (addVoteOf g v₂) a₁ w₁ x₁)
                          (cong (λ h → addVoteAlt h a₁ w₁ x₁) (addVote≡Alt g a₂ w₂ x₂))))))
  where
  a₁ = GovVote.gid v₁ ; w₁ = GovVote.voter v₁ ; x₁ = GovVote.vote v₁
  a₂ = GovVote.gid v₂ ; w₂ = GovVote.voter v₂ ; x₂ = GovVote.vote v₂

addVote-cong : ∀ {g g′} (v : GovVote) → g ≈ᵍ g′ → addVoteOf g v ≈ᵍ addVoteOf g′ v
addVote-cong {g} {g′} v e =
  ≈ᵍ-trans (≡⟹≈ᵍ (addVote≡Alt g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))
    (≈ᵍ-trans (addVoteAlt-cong (GovVote.gid v) (GovVote.voter v) (GovVote.vote v) e)
      (≡⟹≈ᵍ (sym (addVote≡Alt g′ (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))))
```

### `rmOrphanDRepVotes` interchange

The per-step orphan-vote filter reads the certificate state only through
`dom (DRepsOf cs)`, keeps the `govSt` spine, and commutes with *registered*
`addVote`s — the facts that let every step's filter be normalized to the
initial certificate state.

```agda
private
  regOK : CertState → GovVoter → Type
  regOK cs ⟦ CC , _ ⟧ᵍᵛ   = ⊤
  regOK cs ⟦ DRep , c ⟧ᵍᵛ = c ∈ dom (DRepsOf cs)
  regOK cs ⟦ SPO , _ ⟧ᵍᵛ  = ⊤

  -- transparent name for the DRep-vote filter (definitionally equal to the
  -- one inside `rmOrphanDRepVotes` by δ/η)
  fkD : CertState → (Credential ⇀ GVote) → (Credential ⇀ GVote)
  fkD cs m = filterKeys (_∈ dom (DRepsOf cs)) m

rmO-cong : ∀ cs {g g′} → g ≈ᵍ g′
  → rmOrphanDRepVotes cs g ≈ᵍ rmOrphanDRepVotes cs g′
rmO-cong cs [] = []
rmO-cong cs {g = (gid , ast) ∷ g} {g′ = (gid′ , ast′) ∷ g′} ((refl , a≈) ∷ rest) =
  ( refl
  , record { votes≈ = record
      { cc≈  = _≈ᵛ_.cc≈ (_≈ᵃ_.votes≈ a≈)
      ; dr≈  = Properties.filter-cong (_≈ᵛ_.dr≈ (_≈ᵃ_.votes≈ a≈))
      ; spo≈ = _≈ᵛ_.spo≈ (_≈ᵃ_.votes≈ a≈) }
    ; rest≡ = _≈ᵃ_.rest≡ a≈ } )
  ∷ rmO-cong cs rest

rmO-cong-dom : ∀ {cs cs′} g → dom (DRepsOf cs) ≡ᵉ dom (DRepsOf cs′)
  → rmOrphanDRepVotes cs g ≈ᵍ rmOrphanDRepVotes cs′ g
rmO-cong-dom [] d≡ = []
rmO-cong-dom {cs} {cs′} ((gid , ast) ∷ g) d≡ =
  ( refl
  , record { votes≈ = record
      { cc≈ = SetSetoid.refl
      ; dr≈ = (λ h → let (pa , ab∈) = Equivalence.from ∈-filter h
                     in Equivalence.to ∈-filter (d≡ .proj₁ pa , ab∈))
            , (λ h → let (pa , ab∈) = Equivalence.from ∈-filter h
                     in Equivalence.to ∈-filter (d≡ .proj₂ pa , ab∈))
      ; spo≈ = SetSetoid.refl }
    ; rest≡ = refl } )
  ∷ rmO-cong-dom {cs = cs} {cs′ = cs′} g d≡

rmO-idem : ∀ cs g
  → rmOrphanDRepVotes cs (rmOrphanDRepVotes cs g) ≈ᵍ rmOrphanDRepVotes cs g
rmO-idem cs [] = []
rmO-idem cs ((gid , ast) ∷ g) =
  ( refl
  , record { votes≈ = record
      { cc≈ = SetSetoid.refl
      ; dr≈ = (λ h → proj₂ (Equivalence.from ∈-filter h))
            , (λ h → Equivalence.to ∈-filter (proj₁ (Equivalence.from ∈-filter h) , h))
      ; spo≈ = SetSetoid.refl }
    ; rest≡ = refl } )
  ∷ rmO-idem cs g

private
  rmO-addVoteAlt : ∀ cs g aid (vt : GovVoter) x → regOK cs vt
    → rmOrphanDRepVotes cs (addVoteAlt g aid vt x)
      ≈ᵍ addVoteAlt (rmOrphanDRepVotes cs g) aid vt x
  rmO-addVoteAlt cs [] aid vt x rk = []
  rmO-addVoteAlt cs ((gid , ast) ∷ g) aid vt x rk
    with ¿ gid ≡ aid ¿
  ... | no _ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid vt x rk
  ... | yes refl with vt | rk
  ...   | ⟦ CC , c ⟧ᵍᵛ   | rk′ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid ⟦ CC , c ⟧ᵍᵛ x rk′
  ...   | ⟦ SPO , k ⟧ᵍᵛ  | rk′ = (refl , ≈ᵃ-refl) ∷ rmO-addVoteAlt cs g aid ⟦ SPO , k ⟧ᵍᵛ x rk′
  ...   | ⟦ DRep , c ⟧ᵍᵛ | c∈D =
    ( refl
    , record { votes≈ = record
        { cc≈ = SetSetoid.refl
        ; dr≈ =
            ( (λ h → let (pa , ab∈ins) = Equivalence.from ∈-filter h
                     in case ∈-insert⁻ {m = GovVotes.gvDRep (GovActionState.votes ast)}
                               {c = c} {v = x} ab∈ins of λ where
                          (inj₁ eq) →
                            ∈-insert⁺ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))}
                              {c = c} {v = x} (inj₁ eq)
                          (inj₂ (a≢c , ab∈m)) →
                            ∈-insert⁺ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))}
                              {c = c} {v = x}
                              (inj₂ (a≢c , Equivalence.to ∈-filter (pa , ab∈m))))
            , (λ h → case ∈-insert⁻ {m = fkD cs (GovVotes.gvDRep (GovActionState.votes ast))}
                            {c = c} {v = x} h of λ where
                       (inj₁ refl) →
                         Equivalence.to ∈-filter
                           (c∈D , ∈-insert⁺ {m = GovVotes.gvDRep (GovActionState.votes ast)}
                                    {c = c} {v = x} (inj₁ refl))
                       (inj₂ (a≢c , ab∈fk)) →
                         let (pa , ab∈m) = Equivalence.from ∈-filter ab∈fk
                         in Equivalence.to ∈-filter
                              (pa , ∈-insert⁺ {m = GovVotes.gvDRep (GovActionState.votes ast)}
                                      {c = c} {v = x} (inj₂ (a≢c , ab∈m))) ) )
        ; spo≈ = SetSetoid.refl }
      ; rest≡ = refl } )
    ∷ rmO-addVoteAlt cs g aid ⟦ DRep , c ⟧ᵍᵛ x c∈D

-- The public interchange, on the real `addVote`.
rmO-addVote : ∀ cs g (v : GovVote) → regOK cs (GovVote.voter v)
  → rmOrphanDRepVotes cs (addVoteOf g v) ≈ᵍ addVoteOf (rmOrphanDRepVotes cs g) v
rmO-addVote cs g v rk =
  ≈ᵍ-trans
    (≡⟹≈ᵍ (cong (rmOrphanDRepVotes cs)
      (addVote≡Alt g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v))))
    (≈ᵍ-trans (rmO-addVoteAlt cs g (GovVote.gid v) (GovVote.voter v) (GovVote.vote v) rk)
      (≡⟹≈ᵍ (sym (addVote≡Alt (rmOrphanDRepVotes cs g)
                    (GovVote.gid v) (GovVote.voter v) (GovVote.vote v)))))
```


### Per-step governance extraction

A phase-2-valid, proposal-free `LEDGER` step runs `GOVS` on the signal
`map inj₁ txGovVotes` from `rmOrphanDRepVotes certState′ govSt`; inverting the
`GOV-Vote` steps yields the literal `addVote` fold together with the
registration premises of every vote.  An invalid step leaves `govSt`
untouched.

```agda
private opaque
  unfolding isRegistered

  regOK-of : ∀ {Γᵍ : GovEnv} (vt : GovVoter) → isRegistered Γᵍ vt
    → regOK (CertStateOf Γᵍ) vt
  regOK-of ⟦ CC , c ⟧ᵍᵛ   _ = tt
  regOK-of ⟦ DRep , c ⟧ᵍᵛ r = r
  regOK-of ⟦ SPO , k ⟧ᵍᵛ  _ = tt

private
  GOVS-votes⇒foldl : ∀ {Γᵍ : GovEnv} {n} {g g′ : GovState} (vs : List GovVote)
    → _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = _⊢_⇀⦇_,GOV⦈_}
        (Γᵍ , n) g (map inj₁ vs) g′
    → (g′ ≡ foldl addVoteOf g vs)
      × Allᴸ.All (λ v → regOK (CertStateOf Γᵍ) (GovVote.voter v)) vs
  GOVS-votes⇒foldl [] (BS-base Id-nop) = refl , Allᴸ.[]
  GOVS-votes⇒foldl (v ∷ vs) (BS-ind (GOV-Vote (p∈ , cv , isReg , ¬ex)) rest) =
    let (eq , alls) = GOVS-votes⇒foldl vs rest
    in eq , (regOK-of (GovVote.voter v) isReg Allᴸ.∷ alls)

LEDGER⇒govΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → NoProp tx
  → ( ( LState.govSt s′
        ≡ foldl addVoteOf (rmOrphanDRepVotes (LState.certState s′) (LState.govSt s)) (votes tx)
      × Allᴸ.All (λ v → regOK (LState.certState s′) (GovVote.voter v)) (votes tx)
      × Tx.isValid tx ≡ true )
    ⊎ (LState.govSt s′ ≡ LState.govSt s × Tx.isValid tx ≡ false) )
LEDGER⇒govΔ {Γ = Γ} {s = s} {tx = tx} (LEDGER-V (v , _ , _ , govs)) np =
  let (eq , alls) = GOVS-votes⇒foldl (votes tx)
        (subst (λ sig → _ ⊢ _ ⇀⦇ sig ,GOVS⦈ _) (NoProp⇒txgov≡votes tx np) govs)
  in inj₁ (eq , alls , v)
LEDGER⇒govΔ (LEDGER-I⋯ i _) np = inj₂ (refl , i)
```


### `dom dreps` is constant along `NoGov` steps

The orphan-vote filter reads only `dom (DRepsOf cs)`, and under `NoDRepCert`
nothing in the certificate pipeline changes that domain: the `PRE-CERT`
vote-refresh is `mapValueRestricted` (dom-preserving), `DELEG`/`POOL` steps
never touch the `GState`, DRep (de)registration is excluded, `ccreghot` only
touches the hot keys, and `POST-CERT` only touches the `DState`.

```agda
private
  mVR-dom : ∀ (m : Credential ⇀ Epoch) (X : ℙ Credential) (f : Epoch → Epoch)
    → dom (mapValueRestricted f m X ˢ) ≡ᵉ dom (m ˢ)
  mVR-dom m X f = ⊆₁ , ⊆₂
    where
      ⊆₁ : dom (mapValueRestricted f m X ˢ) ⊆ dom (m ˢ)
      ⊆₁ k∈ with Equivalence.from dom∈ k∈
      ... | (b , kb∈) with ∈-∪ˡ⁻ {m = mapValues f (m ∣ X)} {m' = m} kb∈
      ...   | inj₂ (_ , kb∈m) = Equivalence.to dom∈ (b , kb∈m)
      ...   | inj₁ kb∈mv with Equivalence.from dom∈
                (mapValues-dom {m = m ∣ X} {f = f} .proj₂ (Equivalence.to dom∈ (b , kb∈mv)))
      ...     | (b′ , kb′∈res) =
                Equivalence.to dom∈ (b′ , proj₂ (Equivalence.from ∈-filter kb′∈res))
      ⊆₂ : dom (m ˢ) ⊆ dom (mapValueRestricted f m X ˢ)
      ⊆₂ {k} k∈ with ¿ k ∈ X ¿
      ... | yes kX with Equivalence.from dom∈ k∈
      ...   | (b , kb∈m) with Equivalence.from dom∈
                (mapValues-dom {m = m ∣ X} {f = f} .proj₁
                  (Equivalence.to dom∈ (b , Equivalence.to ∈-filter (kX , kb∈m))))
      ...     | (c , kc∈mv) =
                Equivalence.to dom∈
                  (c , ∈-∪ˡ⁺ {m = mapValues f (m ∣ X)} {m' = m} (inj₁ kc∈mv))
      ⊆₂ {k} k∈ | no k∉X with Equivalence.from dom∈ k∈
      ...   | (b , kb∈m) =
              Equivalence.to dom∈
                (b , ∈-∪ˡ⁺ {m = mapValues f (m ∣ X)} {m' = m}
                  (inj₂ ( (λ k∈mv → k∉X (proj₁ (Equivalence.from ∈-filter
                            (proj₂ (Equivalence.from dom∈
                              (mapValues-dom {m = m ∣ X} {f = f} .proj₂ k∈mv))))))
                        , kb∈m)))

  PRE-dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {u : ⊤}
    → Γᶜ ⊢ cs ⇀⦇ u ,PRE-CERT⦈ cs′
    → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
  PRE-dreps-dom {Γᶜ = Γᶜ} {cs = cs} (CERT-pre _) =
    mVR-dom (DRepsOf cs)
            (mapPartial (isGovVoterDRep ∘ GovVote.voter) (fromList (CertEnv.votes Γᶜ)))
            (const (CertEnv.epoch Γᶜ + CertEnv.pp Γᶜ .PParams.drepActivity))

  GOVCERT-dreps-dom : ∀ {Γᶜ : CertEnv} {gs gs′ : GState} {c : DCert} → ¬ isDRepCert c
    → Γᶜ ⊢ gs ⇀⦇ c ,GOVCERT⦈ gs′
    → dom (GState.dreps gs′) ≡ᵉ dom (GState.dreps gs)
  GOVCERT-dreps-dom ¬d (GOVCERT-regdrep _)   = ⊥-elim (¬d tt)
  GOVCERT-dreps-dom ¬d (GOVCERT-deregdrep _) = ⊥-elim (¬d tt)
  GOVCERT-dreps-dom ¬d (GOVCERT-ccreghot _)  = SetSetoid.refl

  CERT-dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {c : DCert} → ¬ isDRepCert c
    → Γᶜ ⊢ cs ⇀⦇ c ,CERT⦈ cs′
    → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
  CERT-dreps-dom ¬d (CERT-deleg _) = SetSetoid.refl
  CERT-dreps-dom ¬d (CERT-pool _)  = SetSetoid.refl
  CERT-dreps-dom ¬d (CERT-vdel gc) = GOVCERT-dreps-dom ¬d gc

  CERTS-run-dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {cts : List DCert}
    → Allᴸ.All (λ c → ¬ isDRepCert c) cts
    → RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γᶜ cs cts cs′
    → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
  CERTS-run-dreps-dom Allᴸ.[]        (run-[] CERT-post) = SetSetoid.refl
  CERTS-run-dreps-dom (¬d Allᴸ.∷ nds) (run-∷ st rest)   =
    SetSetoid.trans (CERTS-run-dreps-dom nds rest) (CERT-dreps-dom ¬d st)

CERTS⇒dreps-dom : ∀ {Γᶜ : CertEnv} {cs cs′ : CertState} {cts : List DCert}
  → Allᴸ.All (λ c → ¬ isDRepCert c) cts
  → Γᶜ ⊢ cs ⇀⦇ cts ,CERTS⦈ cs′
  → dom (DRepsOf cs′) ≡ᵉ dom (DRepsOf cs)
CERTS⇒dreps-dom nds (run (pre , rtc)) =
  SetSetoid.trans (CERTS-run-dreps-dom nds rtc) (PRE-dreps-dom pre)

LEDGER⇒dreps-dom : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → NoDRepCert tx
  → dom (DRepsOf (LState.certState s′)) ≡ᵉ dom (DRepsOf (LState.certState s))
LEDGER⇒dreps-dom (LEDGER-V (_ , _ , cst , _)) nd = CERTS⇒dreps-dom nd cst
LEDGER⇒dreps-dom (LEDGER-I⋯ _ _) _ = SetSetoid.refl
```


### The `govSt` component is reorder-invariant (votes only)

Everything is in place: per transaction, the governance update is
`addVote`-folding over `rmOrphanDRepVotes` (identity if phase-2 invalid); the
filter normalizes to the *initial* certificate state by `dom dreps` constancy;
registered `addVote`s pass through the filter; and vote blocks with disjoint
*(action, voter)* targets commute.  The generic `foldl-↭` engine then
discharges the field — turning the former `LEDGERS-govSt≈` postulate into a
theorem for the votes-only fragment.

```agda
private
  -- targets of the votes of a transaction, as a list
  vtgt : GovVote → GovActionID × GovVoter
  vtgt v = (GovVote.gid v , GovVote.voter v)

  map-∈ˡ : ∀ {A B : Type} {f : A → B} {v : A} {vs : List A}
    → v ∈ˡ vs → f v ∈ˡ map f vs
  map-∈ˡ (here refl) = here refl
  map-∈ˡ (there v∈)  = there (map-∈ˡ v∈)

  -- registration facts transport along equal DRep domains
  regOK-transport : ∀ {cs cs′ : CertState} (vt : GovVoter)
    → dom (DRepsOf cs) ≡ᵉ dom (DRepsOf cs′) → regOK cs vt → regOK cs′ vt
  regOK-transport ⟦ CC , _ ⟧ᵍᵛ   _  _ = tt
  regOK-transport ⟦ DRep , c ⟧ᵍᵛ d≡ r = d≡ .proj₁ r
  regOK-transport ⟦ SPO , _ ⟧ᵍᵛ  _  _ = tt

  -- ≈ᵍ-congruence of the vote fold
  addVotes-cong : ∀ {g g′ : GovState} (vs : List GovVote) → g ≈ᵍ g′
    → foldl addVoteOf g vs ≈ᵍ foldl addVoteOf g′ vs
  addVotes-cong []       e = e
  addVotes-cong (v ∷ vs) e = addVotes-cong vs (addVote-cong v e)

  -- the orphan filter passes through a fold of registered votes
  rmO-addVotes : ∀ cs {g : GovState} (vs : List GovVote)
    → Allᴸ.All (λ v → regOK cs (GovVote.voter v)) vs
    → rmOrphanDRepVotes cs (foldl addVoteOf g vs)
      ≈ᵍ foldl addVoteOf (rmOrphanDRepVotes cs g) vs
  rmO-addVotes cs []       _              = ≈ᵍ-refl
  rmO-addVotes cs {g} (v ∷ vs) (rk Allᴸ.∷ rks) =
    ≈ᵍ-trans (rmO-addVotes cs vs rks)
      (addVotes-cong vs (rmO-addVote cs g v rk))

  -- one vote pushes past a target-disjoint vote list
  votePush : ∀ {g : GovState} (v : GovVote) (vs : List GovVote)
    → (∀ {v′} → v′ ∈ˡ vs → ¬ vtgt v ≡ vtgt v′)
    → foldl addVoteOf (addVoteOf g v) vs
      ≈ᵍ addVoteOf (foldl addVoteOf g vs) v
  votePush v []        H = ≈ᵍ-refl
  votePush {g} v (v′ ∷ vs) H =
    ≈ᵍ-trans (addVotes-cong vs (addVote-comm g v v′ (H (here refl))))
      (votePush {g = addVoteOf g v′} v vs (λ v″∈ → H (there v″∈)))

  -- two vote blocks with pairwise-distinct targets commute
  votesBlock-comm : ∀ {g : GovState} (vx vy : List GovVote)
    → (∀ {v₁ v₂} → v₁ ∈ˡ vx → v₂ ∈ˡ vy → ¬ vtgt v₁ ≡ vtgt v₂)
    → foldl addVoteOf (foldl addVoteOf g vx) vy
      ≈ᵍ foldl addVoteOf (foldl addVoteOf g vy) vx
  votesBlock-comm []        vy H = ≈ᵍ-refl
  votesBlock-comm {g} (v ∷ vx) vy H =
    ≈ᵍ-trans (votesBlock-comm {g = addVoteOf g v} vx vy (λ v₁∈ v₂∈ → H (there v₁∈) v₂∈))
      (addVotes-cong vx (votePush v vy (λ v′∈ → H (here refl) v′∈)))

  -- the reference per-transaction governance operation
  govOp : CertState → GovState → Tx → GovState
  govOp cs₀ g t =
    if t .Tx.isValid
      then foldl addVoteOf (rmOrphanDRepVotes cs₀ g) (votes t)
      else g

  -- registration facts of a transaction's votes (vacuous if phase-2 invalid)
  Pgov : CertState → Tx → Type
  Pgov cs₀ t = Tx.isValid t ≡ true
    → Allᴸ.All (λ v → regOK cs₀ (GovVote.voter v)) (votes t)

  govOp-cong : ∀ cs₀ {g g′ : GovState} (t : Tx) → g ≈ᵍ g′
    → govOp cs₀ g t ≈ᵍ govOp cs₀ g′ t
  govOp-cong cs₀ t e with t .Tx.isValid
  ... | true  = addVotes-cong (votes t) (rmO-cong cs₀ e)
  ... | false = e

  govFold-cong : ∀ cs₀ {g g′ : GovState} (l : List Tx) → g ≈ᵍ g′
    → foldl (govOp cs₀) g l ≈ᵍ foldl (govOp cs₀) g′ l
  govFold-cong cs₀ []       e = e
  govFold-cong cs₀ (t ∷ ts) e = govFold-cong cs₀ ts (govOp-cong cs₀ t e)

  govOp-comm : ∀ cs₀ {g : GovState} {x y : Tx} → Indep x y → Pgov cs₀ x → Pgov cs₀ y
    → govOp cs₀ (govOp cs₀ g x) y ≈ᵍ govOp cs₀ (govOp cs₀ g y) x
  govOp-comm cs₀ {g} {x} {y} i px py
    with x .Tx.isValid | y .Tx.isValid | px | py
  ... | true  | false | _   | _   = ≈ᵍ-refl
  ... | false | true  | _   | _   = ≈ᵍ-refl
  ... | false | false | _   | _   = ≈ᵍ-refl
  ... | true  | true  | px′ | py′ =
    ≈ᵍ-trans
      (addVotes-cong (votes y)
        (≈ᵍ-trans (rmO-addVotes cs₀ (votes x) (px′ refl))
          (addVotes-cong (votes x) (rmO-idem cs₀ g))))
      (≈ᵍ-trans (votesBlock-comm (votes x) (votes y) disjT)
        (≈ᵍ-sym
          (addVotes-cong (votes x)
            (≈ᵍ-trans (rmO-addVotes cs₀ (votes y) (py′ refl))
              (addVotes-cong (votes y) (rmO-idem cs₀ g))))))
    where
    disjT : ∀ {v₁ v₂} → v₁ ∈ˡ votes x → v₂ ∈ˡ votes y → ¬ vtgt v₁ ≡ vtgt v₂
    disjT v₁∈ v₂∈ tgt≡ =
      i .Indep.disjVotes
        (Equivalence.to ∈-fromList (map-∈ˡ v₁∈))
        (subst (λ p → p ∈ voteTargets y) (sym tgt≡)
          (Equivalence.to ∈-fromList (map-∈ˡ v₂∈)))

  -- trace-level extraction, relative to the initial certificate state
  LEDGERS⇒govᶠ : ∀ {l : List Tx} {cs₀ : CertState}
    → dom (DRepsOf (LState.certState s)) ≡ᵉ dom (DRepsOf cs₀)
    → Allᴸ.All NoGov l
    → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → (LState.govSt s′ ≈ᵍ foldl (govOp cs₀) (LState.govSt s) l)
      × Allᴸ.All (Pgov cs₀) l
  LEDGERS⇒govᶠ {l = []}     _  _              (BS-base Id-nop) = ≈ᵍ-refl , Allᴸ.[]
  LEDGERS⇒govᶠ {s = s} {l = t ∷ ts} {cs₀ = cs₀} d₀ ((np , nd) Allᴸ.∷ ngs) (BS-ind {s' = s₁} st rest) =
    let d₁ = SetSetoid.trans (LEDGER⇒dreps-dom st nd) d₀
        (ihEq , ihAll) = LEDGERS⇒govᶠ d₁ ngs rest
    in case LEDGER⇒govΔ st np of λ where
      (inj₁ (eq , alls , v)) →
          ≈ᵍ-trans ihEq
            (govFold-cong cs₀ ts
              (≈ᵍ-trans (≡⟹≈ᵍ eq)
                (≈ᵍ-trans (addVotes-cong (votes t) (rmO-cong-dom {cs = LState.certState s₁} {cs′ = cs₀} (LState.govSt s) d₁))
                  (≡⟹≈ᵍ (sym (cong (λ b → if b then foldl addVoteOf (rmOrphanDRepVotes cs₀ (LState.govSt s)) (votes t) else LState.govSt s) v))))))
        , ((λ _ → Allᴸ.map (λ {v′} rk → regOK-transport (GovVote.voter v′) d₁ rk) alls) Allᴸ.∷ ihAll)
      (inj₂ (eq , iv)) →
          ≈ᵍ-trans ihEq
            (govFold-cong cs₀ ts
              (≈ᵍ-trans (≡⟹≈ᵍ eq)
                (≡⟹≈ᵍ (sym (cong (λ b → if b then foldl addVoteOf (rmOrphanDRepVotes cs₀ (LState.govSt s)) (votes t) else LState.govSt s) iv)))))
        , ((λ v → ⊥-elim (case trans (sym iv) v of λ ())) Allᴸ.∷ ihAll)

LEDGERS-govSt≈ :
    Allᴸ.All NoGov l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → LState.govSt s₁ ≈ᵍ LState.govSt s₂
LEDGERS-govSt≈ {l₁ = l₁} {l₂ = l₂} {s = s} ng ap p st₁ st₂ =
  let cs₀ = LState.certState s
      (e₁ , all₁) = LEDGERS⇒govᶠ {cs₀ = cs₀} SetSetoid.refl ng st₁
      (e₂ , _)    = LEDGERS⇒govᶠ {cs₀ = cs₀} SetSetoid.refl (All-resp-↭ p ng) st₂
  in ≈ᵍ-trans e₁
       (≈ᵍ-trans
         (foldl-↭ _≈ᵍ_ ≈ᵍ-refl ≈ᵍ-trans Indep Indep-sym (Pgov cs₀)
           (govOp cs₀)
           (λ t e → govOp-cong cs₀ t e)
           (λ i px py → govOp-comm cs₀ i px py)
           (LState.govSt s) all₁ ap p)
         (≈ᵍ-sym e₂))
```


## The reordering theorem (net-effect form)

Unlike the earlier swap-based reachability argument (which reconstructed a valid
`l₂`-execution from the `l₁`-one and so needed disjoint inputs/outputs to keep
each swap *valid*), the theorem now takes **both executions as given** and
compares their results **field by field** — Vinogradova & Sorokin (LSFA'24),
Thm 5.2.1.  Under the hypotheses (`AllPairs Indep`, `All NoGov`, and both
`LEDGERS` premises — with **no** assumption on the phase-2 `isValid` tags) each
`LState` field is a function of the *set* of transactions, not their order.  The `utxo`, `fees` and `donations`
components are **proven** above (`LEDGERS-utxo≈`{.AgdaFunction} — the paper's §5.2
closed form — and the scalar `LEDGERS-fees≈`{.AgdaFunction}/`LEDGERS-don≈`{.AgdaFunction}).

The `deposits` component is also **proven** above
(`LEDGERS-deposits≈`{.AgdaFunction} — key-disjoint single-key map operations
commute via the locality framework of `MapCommutativity`, and
`disjDeposits` supplies the key-disjointness).

The `govSt` component is now also **proven** (`LEDGERS-govSt≈`{.AgdaFunction}
above): with proposals excluded, per-transaction governance is an `addVote`
fold behind the orphan-vote filter, and `disjVotes` makes the folds commute.

The certificate-state component is isolated as the following field obligation —
the same net-effect invariance, specialised to the `CERTS` maps.  It is *not*
dischargeable by a pure per-pair commutation the way `deposits` was: a pure
`certOp` swap is falsified by `reg`-then-`dereg`-style counterexamples that
both-sequence validity excludes (see the discussion at `Indep` above), so it
needs a validity-aware net-effect argument — deferred research-scale work.

**Trust base.** `LEDGERS-reorder`{.AgdaFunction} below depends on exactly four
postulates: `replay-outs-disjoint`, `replay-outs-fresh` and `Ins#Outs-exec`
(replay protection, LSFA'24 Cor 5.1.2) and the single remaining field
obligation `LEDGERS-cert≈`.  No other assumption in this module feeds into it.
In particular *no* per-pair collateral condition is needed (the
`collateralInputs ⊆ dom utxo` premise of the `UTXO` rule plus replay
protection pin every invalid transaction's collected collateral), and
`LEDGERS-govSt≈` is **proven** above for the votes-only governance fragment.

```agda
postulate
  LEDGERS-cert≈ :
      Allᴸ.All NoGov l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
    → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → LState.certState s₁ ≈ᶜ LState.certState s₂

LEDGERS-reorder :
    Allᴸ.All NoGov l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-reorder ng ap p st₁ st₂ = record
  { utxo≈      = LEDGERS-utxo≈ p st₁ st₂
  ; fees≈      = LEDGERS-fees≈ p st₁ st₂
  ; deposits≈  = LEDGERS-deposits≈ ng ap p st₁ st₂
  ; donations≈ = LEDGERS-don≈ p st₁ st₂
  ; govSt≈     = LEDGERS-govSt≈ ng ap p st₁ st₂
  ; vDelegs≈ = cert .vd≈ ; sDelegs≈ = cert .sd≈ ; rewards≈ = cert .rw≈
  ; pools≈   = cert .pl≈ ; fPools≈  = cert .fp≈ ; retiring≈ = cert .rt≈
  ; dreps≈   = cert .dr≈ ; ccKeys≈  = cert .cck≈ }
  where open _≈ᶜ_
        cert = LEDGERS-cert≈ ng ap p st₁ st₂
```
