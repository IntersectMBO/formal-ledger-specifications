---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Reorder.lagda.md
---

# <span class="AgdaDatatype">LEDGERS</span>: Reordering Determinism {#sec:ledgers-reorder}

This module proves a *restricted commutativity* property for the
`LEDGERS`{.AgdaOperator} transition system: if two transaction lists `l₁` and
`l₂` are reorderings (permutations) of one another, every pair of transactions
in them is **independent** (`Indep`{.AgdaRecord}), and both lists take the
initial state to *some* final state, then the two final states are equal.

The argument has two ingredients:

1.  **Determinism.** `LEDGERS`{.AgdaOperator} is `Computational`{.AgdaRecord}, so a
    *fixed* list of transactions determines the final state uniquely
    (`computational⇒rightUnique`{.AgdaFunction}).

2.  **Reachability invariance.** Under pairwise independence, permuting the list
    does not change the set of reachable final states.  By induction on the
    permutation this funnels into a single **adjacent-swap** lemma
    (`LEDGER-swap`{.AgdaFunction}): two independent neighbouring transactions can
    trade places.

Combining the two yields the theorem
`LEDGERS-reorder`{.AgdaFunction}.

<!--
```agda
{-# OPTIONS --with-K #-}
-- NOTE: this module is intentionally *not* `--safe`: the remaining proof
-- obligations (`Indep`, `Indep-sym`, `LEDGER-swap`) are isolated as
-- `postulate`s, which `--safe` forbids.  Everything else is fully proven.

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
        ; updateDeposits; certDeposit; ValidCertDeposits
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
    `retirepool` → last-wins `∪ˡ`, `ccreghot` → last-wins `∪ˡ`).  All of their
    targets are captured by `cwitness`{.AgdaFunction}, so a single
    disjoint-`certCreds` condition suffices.
2.  **`NoGov`** (a *global* `All`, not part of `Indep`) — no proposals, no votes,
    and no DRep (de)registration.  DRep certs change `dom dreps`, which feeds
    `rmOrphanDRepVotes`{.AgdaFunction} (re-filtering *all* pre-existing votes
    each step) and the `POST-CERT` `activeVDelegs` restriction; *disjoint* DRep
    targets do not save this — only a constant `dom dreps` does.
3.  **both executions valid** (already the `LEDGERS` premises of the theorem) —
    this is what lets the old UTxO-independence fields (`distinctTxId`,
    `disjInputs`, `noCrossSpend`, and even `disjWdrls`) be *dropped*: a
    withdrawal forces `rewards[c] → 0` and its validity premise pins
    `rewards[c] = amount`, so two same-credential withdrawals cannot both
    validate in both orders; and within a block rewards only move toward `0`, so
    the "force to 0" never races a "set to nonzero".

```agda
private
  ins        : Tx → ℙ TxIn;             ins   t = t .Tx.body .TxBody.txIns
  certs      : Tx → List DCert;         certs t = t .Tx.body .TxBody.txCerts
  proposals  : Tx → List GovProposal;   proposals t = t .Tx.body .TxBody.txGovProposals
  votes      : Tx → List GovVote;       votes t = t .Tx.body .TxBody.txGovVotes

  certCreds : Tx → ℙ Credential
  certCreds t = fromList (mapMaybe cwitness (certs t))

  isDRepCert : DCert → Type
  isDRepCert (regdrep _ _ _)  = ⊤
  isDRepCert (deregdrep _ _)  = ⊤
  isDRepCert _                = ⊥

GovFree : Tx → Type
GovFree t = (proposals t ≡ []) × (votes t ≡ [])

NoDRepCert : Tx → Type
NoDRepCert t = Allᴸ.All (λ c → ¬ isDRepCert c) (certs t)

-- (2) global no-governance condition, applied to every transaction in the list.
NoGov : Tx → Type
NoGov t = GovFree t × NoDRepCert t

-- (1) minimal independence: disjoint overwriting-certificate targets.
record Indep (t₁ t₂ : Tx) : Type where
  field
    disjCertCreds : disjoint (certCreds t₁) (certCreds t₂)

Indep-sym : ∀ {t₁ t₂} → Indep t₁ t₂ → Indep t₂ t₁
Indep-sym i = record { disjCertCreds = Properties.disjoint-sym (i .disjCertCreds) }
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

```agda
postulate
  -- Replay protection (LSFA'24 Cor 5.1.2): created outputs are pairwise disjoint …
  replay-outs-disjoint :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → AllPairs (λ t t′ → disjoint (dom (outs (t .Tx.body) ˢ)) (dom (outs (t′ .Tx.body) ˢ))) l
  -- … and disjoint from the initial UTxO …
  replay-outs-fresh :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → Allᴸ.All (λ t → disjoint (dom (LState.utxoSt s .UTxOState.utxo ˢ)) (dom (outs (t .Tx.body) ˢ))) l
  -- … and the spent inputs are pairwise disjoint.
  replay-ins-disjoint :
      Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → AllPairs (λ t t′ → disjoint (ins t) (ins t′)) l

  -- `LEDGER` is well-defined on the `_≈ˡ_` quotient (true for *any* transaction;
  -- its UTxO component is discharged by `UTXOW-cong`{.AgdaFunction} below).
  LEDGER-cong :
      Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″
    → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)
```

### Decomposition of `LEDGER-swap`

A `LEDGER-V`{.AgdaInductiveConstructor} step decomposes into independent updates
of the three components of `LState`{.AgdaRecord}, so `LEDGER-swap` reduces to
showing each commutes:

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
GovFree⇒txgov≡[] : (t : Tx) → GovFree t → txgov (t .Tx.body) ≡ []
GovFree⇒txgov≡[] t (gp , gv)
  rewrite gp | gv = refl
```

With the empty signal, `GOVS`{.AgdaDatatype} leaves its state at
`rmOrphanDRepVotes certState' govSt`; together with `noDRepCert` keeping
`dom (dreps certState')` constant across the two transactions, the two orders
apply the *same* `rmOrphanDRepVotes` filter, so the `GovState`{.AgdaFunction}
component agrees.  Discharging items 1 and 2 (the disjoint-key map-commutation
lemmas) completes `LEDGER-swap`.

### UTxO building blocks (item 1)

The UTxO commutation reduces to a handful of disjoint-key map facts.  The first
concrete obligation: every key produced by `outs`{.AgdaFunction} carries that
transaction's `txId`{.AgdaField}, so transactions with distinct ids produce
outputs on disjoint key-sets.  (The proof goes via
`dom-mapˡ≡map-dom`{.AgdaFunction} + injectivity of `(txId ,_)`; it is stated here
as a typed obligation.)

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

The second brick — the commutativity core: left-biased union of two maps with
disjoint domains is symmetric (it coincides with the symmetric plain union):

```agda
∪ˡ-sym-disjoint : {m m′ : UTxO}
  → disjoint (dom (m ˢ)) (dom (m′ ˢ))
  → (m ∪ˡ m′) ˢ ≡ᵉ (m′ ∪ˡ m) ˢ
∪ˡ-sym-disjoint disj =
  SetSetoid.trans (disjoint-∪ˡ-∪ disj)
    (SetSetoid.trans Properties.∪-sym
      (SetSetoid.sym (disjoint-∪ˡ-∪ (Properties.disjoint-sym disj))))
```

The third brick — restricting away a key-set disjoint from a map's domain is a
no-op (gives e.g. `outs t₁ ∣ ins t₂ ᶜ ≡ outs t₁` from `noCrossSpend`).  It
mirrors the library's `res-∅ᶜ`{.AgdaFunction}, replacing `∉-∅`{.AgdaFunction}
with the disjointness witness:

```agda
res-comp-disjoint : {m : UTxO} {X : ℙ TxIn}
  → disjoint (dom (m ˢ)) X
  → (m ∣ X ᶜ) ˢ ≡ᵉ m ˢ
res-comp-disjoint disj =
  ex-⊆ , λ ab∈m →
    Equivalence.to ∈-filter ((λ a∈X → disj (Equivalence.to dom∈ (-, ab∈m)) a∈X) , ab∈m)
```

The fourth brick — two complementary restrictions commute (used to swap the
input-restrictions `(u ∣ ins t₁ ᶜ) ∣ ins t₂ ᶜ`).  Since `_∣_ᶜ` is a
`filter`{.AgdaFunction} on the key, this is just commutativity of conjoined
predicates, proven element-wise:

```agda
res-comm : {m : UTxO} {X Y : ℙ TxIn}
  → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ≡ᵉ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
res-comm {m} {X} {Y} = sw {m} {X} {Y} , sw {m} {Y} {X}
  where
    sw : ∀ {m : UTxO} {X Y} → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ⊆ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
    sw h =
      let (a∉Y , h₁) = Equivalence.from ∈-filter h
          (a∉X , hm) = Equivalence.from ∈-filter h₁
      in  Equivalence.to ∈-filter (a∉X , Equivalence.to ∈-filter (a∉Y , hm))

-- Brick (b): two nested key-restrictions merge into one union-restriction.
res-merge : {m : UTxO} {X Y : ℙ TxIn}
  → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ≡ᵉ (m ∣ (X ∪ Y) ᶜ) ˢ
res-merge {m} {X} {Y} = ⊆₁ , ⊆₂
  where
    ⊆₁ : ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ⊆ (m ∣ (X ∪ Y) ᶜ) ˢ
    ⊆₁ h = let (a∉Y , h₁) = Equivalence.from ∈-filter h
               (a∉X , hm) = Equivalence.from ∈-filter h₁
           in  Equivalence.to ∈-filter
                 ((λ a∈∪ → [ a∉X , a∉Y ]′ (Equivalence.from ∈-∪ a∈∪)) , hm)
    ⊆₂ : (m ∣ (X ∪ Y) ᶜ) ˢ ⊆ ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ
    ⊆₂ h = let (a∉∪ , hm) = Equivalence.from ∈-filter h
           in  Equivalence.to ∈-filter
                 ( (λ a∈Y → a∉∪ (Equivalence.to ∈-∪ (inj₂ a∈Y)))
                 , Equivalence.to ∈-filter
                     ((λ a∈X → a∉∪ (Equivalence.to ∈-∪ (inj₁ a∈X))) , hm) )

```

### Assembling the UTxO field commutation

This follows the canonical-form argument of Vinogradova & Sorokin, *Properties
of UTxO Ledgers and Programs Implemented on Them* (LSFA'24), Theorem 5.2.1: the
final UTxO is `u∪ \ r` with `u∪` the initial state plus *all* outputs and `r`
*all* consumed inputs — both order-independent.  That paper proves the general
(independence-free) result for the pure-UTxO ledger; here we work inside the
richer Conway `LState`, where the analogous `utxo`-field swap needs only the
disjointness facts above (the governance/certificate components are what force
the extra `Indep` conditions and are handled separately).

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
              ⊚ Properties.∪-cong (res-comm {u} {ins ta} {ins tb})
                                  (res-comp-disjoint {outs (ta .Tx.body)} {ins tb} ncA)

  utxo-comm : (applyU t₂ (applyU t₁ u)) ˢ ≡ᵉ (applyU t₁ (applyU t₂ u)) ˢ
  utxo-comm =
      canon {t₁} {t₂} fr1 fr2 od nc12
    ⊚ Properties.∪-cong (Properties.∪-cong (res-comm {u} {ins t₂} {ins t₁}) ≡ᵉ-refl) ≡ᵉ-refl
    ⊚ Properties.∪-assoc _ _ _
    ⊚ Properties.∪-cong ≡ᵉ-refl Properties.∪-sym
    ⊚ ≡ᵉ-sym (Properties.∪-assoc _ _ _)
    ⊚ ≡ᵉ-sym (canon {t₂} {t₁} fr2 fr1 (Properties.disjoint-sym od) nc21)
```

## CertState building block: `insert` commutes on distinct keys

The `CertState`{.AgdaRecord} commutation (the `DELEG`/`POOL`/`GOVCERT` updates)
rests on the map operation `insertIfJust`{.AgdaFunction} commuting when the two
certificates target distinct credentials.  Unlike the UTxO algebra, the library
provides no `insert`-commutation, so we build it from a membership
characterization of `insert m c v = ❴ (c , v) ❵ᵐ ∪ˡ m`:

```agda
module _ {A B : Type} ⦃ _ : DecEq A ⦄ where
  open SetSetoid using () renaming (refl to ≡ᵉ-refl)

  ∈-insert⁻ : ∀ {m : A ⇀ B} {c v} {ab : A × B}
    → ab ∈ (insert m c v) ˢ
    → (ab ≡ (c , v)) ⊎ (proj₁ ab ≢ c × ab ∈ m ˢ)
  ∈-insert⁻ h with Equivalence.from ∈-∪ h
  ... | inj₁ h₁ = inj₁ (Equivalence.from ∈-singleton h₁)
  ... | inj₂ h₂ =
    let (k∉ , hm) = Equivalence.from ∈-filter h₂
    in  inj₂ ((λ k≡c → k∉ (Equivalence.to ∈-dom-singleton-pair k≡c)) , hm)

  ∈-insert⁺ : ∀ {m : A ⇀ B} {c v} {ab : A × B}
    → (ab ≡ (c , v)) ⊎ (proj₁ ab ≢ c × ab ∈ m ˢ)
    → ab ∈ (insert m c v) ˢ
  ∈-insert⁺ (inj₁ eq) = Equivalence.to ∈-∪ (inj₁ (Equivalence.to ∈-singleton eq))
  ∈-insert⁺ (inj₂ (k≢c , hm)) =
    Equivalence.to ∈-∪
      (inj₂ (Equivalence.to ∈-filter
        ((λ k∈ → k≢c (Equivalence.from ∈-dom-singleton-pair k∈)) , hm)))

  private
    -- `insert` is opaque to unification, so the implicits of `∈-insert⁻/⁺`
    -- are passed explicitly throughout.
    ins⊆ : ∀ {m : A ⇀ B} {c₁ c₂ v₁ v₂} → c₁ ≢ c₂
         → (insert (insert m c₁ v₁) c₂ v₂) ˢ ⊆ (insert (insert m c₂ v₂) c₁ v₁) ˢ
    ins⊆ {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ h
      with ∈-insert⁻ {m = insert m c₁ v₁} {c₂} {v₂} h
    ... | inj₁ refl =
          ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁}
            (inj₂ (c₁≢c₂ ∘ sym , ∈-insert⁺ {m = m} {c₂} {v₂} (inj₁ refl)))
    ... | inj₂ (k≢c₂ , h') with ∈-insert⁻ {m = m} {c₁} {v₁} h'
    ...   | inj₁ refl =
            ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁} (inj₁ refl)
    ...   | inj₂ (k≢c₁ , hm) =
            ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁}
              (inj₂ (k≢c₁ , ∈-insert⁺ {m = m} {c₂} {v₂} (inj₂ (k≢c₂ , hm))))

  insert-comm : ∀ {m : A ⇀ B} {c₁ c₂ v₁ v₂} → c₁ ≢ c₂
    → (insert (insert m c₁ v₁) c₂ v₂) ˢ ≡ᵉ (insert (insert m c₂ v₂) c₁ v₁) ˢ
  insert-comm {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ =
    ins⊆ {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ , ins⊆ {m} {c₂} {c₁} {v₂} {v₁} (c₁≢c₂ ∘ sym)

  insertIfJust-comm : ∀ {m : A ⇀ B} {c₁ c₂} {mv₁ mv₂ : Maybe B} → c₁ ≢ c₂
    → (insertIfJust c₂ mv₂ (insertIfJust c₁ mv₁ m)) ˢ
      ≡ᵉ (insertIfJust c₁ mv₁ (insertIfJust c₂ mv₂ m)) ˢ
  insertIfJust-comm {mv₁ = nothing} {nothing}  _     = ≡ᵉ-refl
  insertIfJust-comm {mv₁ = nothing} {just _}   _     = ≡ᵉ-refl
  insertIfJust-comm {mv₁ = just _}  {nothing}  _     = ≡ᵉ-refl
  insertIfJust-comm {m} {c₁} {c₂} {just v₁} {just v₂} c₁≢c₂ =
    insert-comm {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂

  -- Two key-removals commute (generic counterpart of `res-comm`); covers
  -- deregister-vs-deregister.
  resᶜ-comm : ∀ {m : A ⇀ B} {X Y : ℙ A}
    → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ≡ᵉ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
  resᶜ-comm {m} {X} {Y} = sw {m} {X} {Y} , sw {m} {Y} {X}
    where
      sw : ∀ {m : A ⇀ B} {X Y} → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ⊆ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
      sw h =
        let (a∉Y , h₁) = Equivalence.from ∈-filter h
            (a∉X , hm) = Equivalence.from ∈-filter h₁
        in  Equivalence.to ∈-filter (a∉X , Equivalence.to ∈-filter (a∉Y , hm))

  private
    insert-del-comm : ∀ {m : A ⇀ B} {c c' v} → c ≢ c'
      → (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ ≡ᵉ ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ
    insert-del-comm {m} {c} {c'} {v} c≢c' = ⊆₁ , ⊆₂
      where
        ⊆₁ : (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ ⊆ ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ
        ⊆₁ h with ∈-insert⁻ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v} h
        ... | inj₁ refl =
              Equivalence.to ∈-filter
                ((λ c∈ → c≢c' (Equivalence.from ∈-singleton c∈))
                , ∈-insert⁺ {m = m} {c} {v} (inj₁ refl))
        ... | inj₂ (a≢c , h') =
              let (a∉c' , hm) = Equivalence.from ∈-filter h'
              in  Equivalence.to ∈-filter
                    (a∉c' , ∈-insert⁺ {m = m} {c} {v} (inj₂ (a≢c , hm)))
        ⊆₂ : ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ ⊆ (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ
        ⊆₂ h =
          let (a∉c' , h') = Equivalence.from ∈-filter h
          in  case ∈-insert⁻ {m = m} {c} {v} h' of λ where
                (inj₁ refl)        → ∈-insert⁺ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v} (inj₁ refl)
                (inj₂ (a≢c , hm))  →
                  ∈-insert⁺ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v}
                    (inj₂ (a≢c , Equivalence.to ∈-filter (a∉c' , hm)))

  -- Insert and a distinct-key removal commute; covers delegate-vs-deregister.
  insertIfJust-del-comm : ∀ {m : A ⇀ B} {c c'} {mv : Maybe B} → c ≢ c'
    → (insertIfJust c mv (m ∣ ❴ c' ❵ ᶜ)) ˢ ≡ᵉ ((insertIfJust c mv m) ∣ ❴ c' ❵ ᶜ) ˢ
  insertIfJust-del-comm {mv = nothing}  _    = ≡ᵉ-refl
  insertIfJust-del-comm {m} {c} {c'} {just v} c≢c' = insert-del-comm {m} {c} {c'} {v} c≢c'

  -- General membership for left-biased union (generalises `∈-insert`); the engine
  -- for the right-singleton unions used by `reg`/`regpool` (`m ∪ˡ ❴ k , v ❵ᵐ`).
  ∈-∪ˡ⁻ : ∀ {m m' : A ⇀ B} {ab : A × B}
    → ab ∈ (m ∪ˡ m') ˢ
    → ab ∈ m ˢ ⊎ (proj₁ ab ∉ dom (m ˢ) × ab ∈ m' ˢ)
  ∈-∪ˡ⁻ h with Equivalence.from ∈-∪ h
  ... | inj₁ h₁ = inj₁ h₁
  ... | inj₂ h₂ = inj₂ (Equivalence.from ∈-filter h₂)

  ∈-∪ˡ⁺ : ∀ {m m' : A ⇀ B} {ab : A × B}
    → ab ∈ m ˢ ⊎ (proj₁ ab ∉ dom (m ˢ) × ab ∈ m' ˢ)
    → ab ∈ (m ∪ˡ m') ˢ
  ∈-∪ˡ⁺ (inj₁ h) = Equivalence.to ∈-∪ (inj₁ h)
  ∈-∪ˡ⁺ (inj₂ p) = Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-filter p))

  dom-∪ˡ : ∀ {m m' : A ⇀ B} → dom ((m ∪ˡ m') ˢ) ≡ᵉ dom (m ˢ) ∪ dom (m' ˢ)
  dom-∪ˡ {m} {m'} = ⊆₁ , ⊆₂
    where
      ⊆₁ : dom ((m ∪ˡ m') ˢ) ⊆ dom (m ˢ) ∪ dom (m' ˢ)
      ⊆₁ k∈ = let (q , kq∈) = Equivalence.from dom∈ k∈
              in case ∈-∪ˡ⁻ {m} {m'} kq∈ of λ where
                   (inj₁ kq∈m)        → Equivalence.to ∈-∪ (inj₁ (Equivalence.to dom∈ (q , kq∈m)))
                   (inj₂ (_ , kq∈m')) → Equivalence.to ∈-∪ (inj₂ (Equivalence.to dom∈ (q , kq∈m')))
      ⊆₂ : dom (m ˢ) ∪ dom (m' ˢ) ⊆ dom ((m ∪ˡ m') ˢ)
      ⊆₂ {k} k∈ = case Equivalence.from ∈-∪ k∈ of λ where
        (inj₁ k∈m)  →
          let (q , kq∈) = Equivalence.from dom∈ k∈m
          in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₁ kq∈))
        (inj₂ k∈m') → case ¿ k ∈ dom (m ˢ) ¿ of λ where
          (yes k∈m) →
            let (q , kq∈) = Equivalence.from dom∈ k∈m
            in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₁ kq∈))
          (no k∉m) →
            let (q , kq∈) = Equivalence.from dom∈ k∈m'
            in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₂ (k∉m , kq∈)))

  private
    ∉dom-sing⁺ : ∀ {k k' : A} {v : B} → k ≢ k' → k ∉ dom (❴ k' , v ❵ᵐ ˢ)
    ∉dom-sing⁺ k≢k' k∈ = k≢k' (Equivalence.from ∈-dom-singleton-pair k∈)

    ∉dom-∪ˡ⁻ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom ((m ∪ˡ m') ˢ)
             → k ∉ dom (m ˢ) × k ∉ dom (m' ˢ)
    ∉dom-∪ˡ⁻ {m} {m'} k∉ =
        (λ k∈m  → k∉ (dom-∪ˡ {m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₁ k∈m))))
      , (λ k∈m' → k∉ (dom-∪ˡ {m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈m'))))

    ∉dom-∪ˡ⁺ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom (m ˢ) × k ∉ dom (m' ˢ)
             → k ∉ dom ((m ∪ˡ m') ˢ)
    ∉dom-∪ˡ⁺ {m} {m'} (k∉m , k∉m') k∈ =
      case Equivalence.from ∈-∪ (dom-∪ˡ {m} {m'} .proj₁ k∈) of λ where
        (inj₁ x) → k∉m x
        (inj₂ x) → k∉m' x

    rs⊆ : ∀ {m : A ⇀ B} {a b x y} → a ≢ b
        → ((m ∪ˡ ❴ a , x ❵ᵐ) ∪ˡ ❴ b , y ❵ᵐ) ˢ ⊆ ((m ∪ˡ ❴ b , y ❵ᵐ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
    rs⊆ {m} {a} {b} {x} {y} a≢b h
      with ∈-∪ˡ⁻ {m ∪ˡ ❴ a , x ❵ᵐ} {❴ b , y ❵ᵐ} h
    ... | inj₂ (p∉ , pq∈by) with Equivalence.from ∈-singleton pq∈by
    ...   | refl =
            let (b∉m , _) = ∉dom-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} p∉
            in  ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
                  (inj₁ (∈-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (inj₂ (b∉m , Equivalence.to ∈-singleton refl))))
    rs⊆ {m} {a} {b} {x} {y} a≢b h | inj₁ h₁
      with ∈-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} h₁
    ...   | inj₁ pq∈m =
            ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
              (inj₁ (∈-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (inj₁ pq∈m)))
    ...   | inj₂ (p∉m , pq∈ax) with Equivalence.from ∈-singleton pq∈ax
    ...     | refl =
              ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
                (inj₂ ( ∉dom-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (p∉m , ∉dom-sing⁺ a≢b)
                      , Equivalence.to ∈-singleton refl))

  -- Right-singleton unions on distinct keys commute; covers `reg` (rewards) and
  -- `regpool` (pools), which use `m ∪ˡ ❴ k , v ❵ᵐ` (left-biased toward `m`).
  ∪ˡ-rsingleton-comm : ∀ {m : A ⇀ B} {a b x y} → a ≢ b
    → ((m ∪ˡ ❴ a , x ❵ᵐ) ∪ˡ ❴ b , y ❵ᵐ) ˢ ≡ᵉ ((m ∪ˡ ❴ b , y ❵ᵐ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
  ∪ˡ-rsingleton-comm {m} {a} {b} {x} {y} a≢b =
    rs⊆ {m} {a} {b} {x} {y} a≢b , rs⊆ {m} {b} {a} {y} {x} (a≢b ∘ sym)

  -- Right-singleton union vs distinct-key removal; covers `reg`/`delegate`
  -- (rewards `_∪ˡ ❴ c , 0 ❵`) vs `dereg` (rewards `_∣ ❴ c ❵ ᶜ`).
  rsingleton-del-comm : ∀ {m : A ⇀ B} {a b x} → a ≢ b
    → ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ ≡ᵉ ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
  rsingleton-del-comm {m} {a} {b} {x} a≢b = ⊆₁ , ⊆₂
    where
      ⊆₁ : ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ ⊆ ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
      ⊆₁ h = let (p∉b , h') = Equivalence.from ∈-filter h
             in case ∈-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} h' of λ where
                  (inj₁ pq∈m) →
                    ∈-∪ˡ⁺ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ}
                      (inj₁ (Equivalence.to ∈-filter (p∉b , pq∈m)))
                  (inj₂ (p∉m , pq∈ax)) →
                    ∈-∪ˡ⁺ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ}
                      (inj₂ ((λ p∈ → p∉m (res-comp-domᵐ p∈)) , pq∈ax))
      ⊆₂ : ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ ⊆ ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ
      ⊆₂ h with ∈-∪ˡ⁻ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ} h
      ... | inj₁ pq∈res =
            let (p∉b , pq∈m) = Equivalence.from ∈-filter pq∈res
            in  Equivalence.to ∈-filter (p∉b , ∈-∪ˡ⁺ {m} {❴ a , x ❵ᵐ} (inj₁ pq∈m))
      ... | inj₂ (p∉resdom , pq∈ax) with Equivalence.from ∈-singleton pq∈ax
      ...   | refl =
              Equivalence.to ∈-filter
                ( (λ a∈b → a≢b (Equivalence.from ∈-singleton a∈b))
                , ∈-∪ˡ⁺ {m} {❴ a , x ❵ᵐ}
                    (inj₂ ( (λ a∈dm → p∉resdom
                              (∈-resᶜ-dom⁺ ( (λ a∈b → a≢b (Equivalence.from ∈-singleton a∈b))
                                           , Equivalence.from dom∈ a∈dm)))
                          , Equivalence.to ∈-singleton refl)))
```

## CertState assembly: `DState` updates commute

The `CertState`{.AgdaRecord} half of `LEDGER-swap`{.AgdaFunction} reduces to: the
per-certificate state update commutes for distinct credentials.  Here is the
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
  { vd≈ = insertIfJust-comm  {m = DState.voteDelegs d}  {c₁} {c₂} {mvd₁} {mvd₂} c₁≢c₂
  ; sd≈ = insertIfJust-comm  {m = DState.stakeDelegs d} {c₁} {c₂} {mkh₁} {mkh₂} c₁≢c₂
  ; rw≈ = ∪ˡ-rsingleton-comm {m = DState.rewards d}     {c₁} {c₂} {0} {0}       c₁≢c₂ }
```

Two registrations (`reg`) commute — they touch only `rewards`:

```agda
reg-comm : ∀ {c₁ c₂ x₁ x₂} {d : DState} → c₁ ≢ c₂
  → delegOp (reg c₂ x₂) (delegOp (reg c₁ x₁) d) ≈ᵈ delegOp (reg c₁ x₁) (delegOp (reg c₂ x₂) d)
reg-comm {c₁} {c₂} {d = d} c₁≢c₂ = record
  { vd≈ = SetSetoid.refl ; sd≈ = SetSetoid.refl
  ; rw≈ = ∪ˡ-rsingleton-comm {m = DState.rewards d} {c₁} {c₂} {0} {0} c₁≢c₂ }
```

Two deregistrations (`dereg`) commute on every sub-map — and don't even need the
credentials distinct, since key-removals always commute (`resᶜ-comm`):

```agda
dereg-comm : ∀ {c₁ c₂ x₁ x₂} {d : DState}
  → delegOp (dereg c₂ x₂) (delegOp (dereg c₁ x₁) d) ≈ᵈ delegOp (dereg c₁ x₁) (delegOp (dereg c₂ x₂) d)
dereg-comm {c₁} {c₂} {d = d} = record
  { vd≈ = resᶜ-comm {m = DState.voteDelegs  d} {❴ c₁ ❵} {❴ c₂ ❵}
  ; sd≈ = resᶜ-comm {m = DState.stakeDelegs d} {❴ c₁ ❵} {❴ c₂ ❵}
  ; rw≈ = resᶜ-comm {m = DState.rewards     d} {❴ c₁ ❵} {❴ c₂ ❵} }
```

A `delegate` and a `dereg` on distinct credentials commute — the mixed case,
using `insertIfJust-del-comm` on the delegation maps and `rsingleton-del-comm`
on rewards (so *every* cert brick is now exercised in the cert assembly):

```agda
delegate-dereg-comm : ∀ {c₁ c₂ mvd₁ mkh₁ x₁ x₂} {d : DState} → c₁ ≢ c₂
  → delegOp (dereg c₂ x₂) (delegOp (delegate c₁ mvd₁ mkh₁ x₁) d)
    ≈ᵈ delegOp (delegate c₁ mvd₁ mkh₁ x₁) (delegOp (dereg c₂ x₂) d)
delegate-dereg-comm {c₁} {c₂} {mvd₁} {mkh₁} {d = d} c₁≢c₂ = record
  { vd≈ = SetSetoid.sym (insertIfJust-del-comm {m = DState.voteDelegs  d} {c₁} {c₂} {mvd₁} c₁≢c₂)
  ; sd≈ = SetSetoid.sym (insertIfJust-del-comm {m = DState.stakeDelegs d} {c₁} {c₂} {mkh₁} c₁≢c₂)
  ; rw≈ = rsingleton-del-comm {m = DState.rewards d} {c₁} {c₂} {0} c₁≢c₂ }
```

(The remaining `DELEG` orderings follow by `≈ᵈ`-symmetry / the same bricks, and
the `PState`/`GState` halves are analogous, with cross-substate pairs commuting
trivially since each cert touches only one of `DState`/`PState`/`GState`.)

## Congruence stack (toward `LEDGER-cong`)

`LEDGER-cong`{.AgdaFunction} says the rule respects `_≈ˡ_`.  Working bottom-up,
each state-update operation and premise must respect `_≡ᵉ_`.  We begin with the
`UTXOS` output operations.

The UTxO-field update `(utxo ∣ txIns ᶜ) ∪ˡ outs` respects `_≡ᵉ_` in `utxo`
(library `∪ˡ-cong` + `filter-cong`, since `_∣_ᶜ` is a `filter`):

```agda
utxoUpd-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {u u″ : A ⇀ B} {X : ℙ A} {o : A ⇀ B}
  → u ˢ ≡ᵉ u″ ˢ
  → ((u ∣ X ᶜ) ∪ˡ o) ˢ ≡ᵉ ((u″ ∣ X ᶜ) ∪ˡ o) ˢ
utxoUpd-cong {u = u} {u″} {X} {o} eq =
  ∪ˡ-cong {m = u ∣ X ᶜ} {m' = o} {m'' = u″ ∣ X ᶜ} {m''' = o}
    (Properties.filter-cong eq) SetSetoid.refl
```

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
  (UTXO-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , utxos)) e
  with UTXOS-cong utxos e
... | u‴ , utxos′ , out≈ =
  u‴ ,
  UTXO-inductive
    ( p₁
    , (λ {x} x∈ → dom-cong (e .utxoᵉ) .proj₁ (p₂ x∈))
    , p₃ , p₄
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
under reordering — *provided* those operations respect `_≡ᵉ_`.  We first fill the
two missing generic congruences (`mapPartial`{.AgdaFunction} and set difference);
the rest are already in the library (`∪-cong`{.AgdaFunction}, `∩-cong`{.AgdaFunction},
`filter-cong`{.AgdaFunction}, `Properties.map-≡ᵉ`{.AgdaFunction}, `dom-cong`{.AgdaFunction},
`resᵐ-cong`{.AgdaFunction}).

```agda
module _ {A B : Type} where

  mapPartial-cong-fg : ∀ {f g : A → Maybe B} {X Y : ℙ A}
    → (∀ x → f x ≡ g x) → X ≡ᵉ Y → mapPartial f X ≡ᵉ mapPartial g Y
  mapPartial-cong-fg {f} {g} {X} {Y} f≗g (X⊆Y , Y⊆X) =
    (λ y∈ → let (x , x∈ , eq) = Equivalence.from (∈-mapPartial {X = X} {f = f}) y∈
            in Equivalence.to (∈-mapPartial {X = Y} {f = g}) (x , X⊆Y x∈ , trans (sym (f≗g x)) eq)) ,
    (λ y∈ → let (x , x∈ , eq) = Equivalence.from (∈-mapPartial {X = Y} {f = g}) y∈
            in Equivalence.to (∈-mapPartial {X = X} {f = f}) (x , Y⊆X x∈ , trans (f≗g x) eq))

  mapPartial-cong : ∀ {f : A → Maybe B} {X Y : ℙ A}
    → X ≡ᵉ Y → mapPartial f X ≡ᵉ mapPartial f Y
  mapPartial-cong {f} = mapPartial-cong-fg {f = f} {g = f} (λ _ → refl)

module _ {A : Type} ⦃ _ : DecEq A ⦄ where

  ＼-cong : ∀ {X X′ Y Y′ : ℙ A} → X ≡ᵉ X′ → Y ≡ᵉ Y′ → (X - Y) ≡ᵉ (X′ - Y′)
  ＼-cong (X⊆ , ⊆X) (Y⊆ , ⊆Y) =
    (λ a∈ → let (a∉Y , a∈X) = Equivalence.from ∈-filter a∈
            in Equivalence.to ∈-filter ((λ a∈Y′ → a∉Y (⊆Y a∈Y′)) , X⊆ a∈X)) ,
    (λ a∈ → let (a∉Y′ , a∈X′) = Equivalence.from ∈-filter a∈
            in Equivalence.to ∈-filter ((λ a∈Y → a∉Y′ (Y⊆ a∈Y)) , ⊆X a∈X′))
```

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
`os = range (outs txb) ∪ range (utxo ∣ (txIns ∪ refInputs))`, on which it takes
four fixed branches gated by decidable *existentials* over `os`.  Since `os`
respects `_≡ᵉ_` and each existential is a membership predicate, the guards decide
identically and the (fixed) branch values agree — so `allowedLanguages` is
propositionally order-invariant.  The generic `if-cong₂`{.AgdaFunction} lets a
decidable `if` transport when the two conditions are logically equivalent:

```agda
if-cong₂ : ∀ {A : Type} {c c′ : Type} ⦃ _ : c ⁇ ⦄ ⦃ _ : c′ ⁇ ⦄ {x x′ y y′ : A}
  → (c → c′) → (c′ → c) → x ≡ x′ → y ≡ y′
  → (if c then x else y) ≡ (if c′ then x′ else y′)
if-cong₂ {c = c} {c′} f g xe ye with ¿ c ¿ | ¿ c′ ¿
... | yes _ | yes _ = xe
... | no  _ | no  _ = ye
... | yes p | no ¬q = ⊥-elim (¬q (f p))
... | no ¬p | yes q = ⊥-elim (¬p (g q))

allowedLanguages-cong : ∀ tx {u u″ : UTxO} → u ˢ ≡ᵉ u″ ˢ
  → allowedLanguages tx u ≡ allowedLanguages tx u″
allowedLanguages-cong tx {u} {u″} eq =
  if-cong₂ {c = ∃[ o ∈ osU ] IsBootstrapAddr (proj₁ o)} {c′ = ∃[ o ∈ osU″ ] IsBootstrapAddr (proj₁ o)}
    f₁ g₁ refl
    (if-cong₂ {c = UsesV3Features (Tx.body tx)} {c′ = UsesV3Features (Tx.body tx)} id id refl
      (if-cong₂ {c = ∃[ o ∈ osU ] HasInlineDatum o} {c′ = ∃[ o ∈ osU″ ] HasInlineDatum o}
        f₃ g₃ refl refl))
  where
    ins∪ref = TxBody.txIns (Tx.body tx) ∪ TxBody.refInputs (Tx.body tx)
    osU  = range (outs (Tx.body tx)) ∪ range (u  ∣ ins∪ref)
    osU″ = range (outs (Tx.body tx)) ∪ range (u″ ∣ ins∪ref)
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
↭-AllPairs ↭-rfl          ap              = ap
↭-AllPairs (prep x p)     (a ∷ ap)        = All-resp-↭ p a ∷ ↭-AllPairs p ap
↭-AllPairs (swap x y p)   ((axy ∷ ax) ∷ (ay ∷ ap)) =
  (Indep-sym axy ∷ All-resp-↭ p ay) ∷ (All-resp-↭ p ax ∷ ↭-AllPairs p ap)
↭-AllPairs (↭-trans p q)  ap              = ↭-AllPairs q (↭-AllPairs p ap)
```

`LEDGER`-congruence lifts to whole traces by induction on the trace:

```agda
LEDGERS-cong :
    Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → s ≈ˡ s″
  → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s‴ × s′ ≈ˡ s‴)
LEDGERS-cong (BS-base Id-nop) s≈ = -, BS-base Id-nop , s≈
LEDGERS-cong (BS-ind st rest) s≈ =
  let (_ , st′   , m≈) = LEDGER-cong st s≈
      (_ , rest′ , r≈) = LEDGERS-cong rest m≈
  in  -, BS-ind st′ rest′ , r≈
```

Reachability invariance, up to `_≈ˡ_`: a permutation of the signal list reaches
an extensionally-equal state.

## Per-step UTxO extraction

For a phase-2-valid transaction the `LEDGER` step updates the `utxo` field by
exactly `applyUˢ tx = (_ ∣ txIns ᶜ) ∪ˡ outs`, read off the `Scripts-Yes` `UTXOS`
output (drilling `LEDGER-V → UTXOW⇒UTXO → UTXO-inductive → UTXOS`):

```agda
private
  applyUˢ : Tx → UTxO → UTxO
  applyUˢ t x = (x ∣ ins t ᶜ) ∪ˡ outs (t .Tx.body)

LEDGER-V⇒applyU :
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → Tx.isValid tx ≡ true
  → LState.utxoSt s′ .UTxOState.utxo ≡ applyUˢ tx (LState.utxoSt s .UTxOState.utxo)
LEDGER-V⇒applyU
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _)) _ = refl
LEDGER-V⇒applyU
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _)) v
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER-V⇒applyU (LEDGER-I⋯ i _) v = ⊥-elim (case trans (sym v) i of λ ())
```

## Net accumulators are permutation-invariant

The order-independence of every "accumulate over the transaction list" field
rests on a single fact: a `_∪_`-fold of per-transaction sets is invariant under
permutation (`_∪_` is commutative and associative).  This is the reusable core
behind the `utxo` net form `u₀ ∪ ⋃outs ∖ ⋃ins` and the disjoint-key certificate
accumulators.

```agda
⋃map : ∀ {A : Type} ⦃ _ : DecEq A ⦄ → (Tx → ℙ A) → List Tx → ℙ A
⋃map f []       = ∅
⋃map f (t ∷ ts) = f t ∪ ⋃map f ts

⋃map-↭ : ∀ {A : Type} ⦃ _ : DecEq A ⦄ {f : Tx → ℙ A} {l₁ l₂ : List Tx}
  → l₁ ↭ l₂ → ⋃map f l₁ ≡ᵉ ⋃map f l₂
⋃map-↭ ↭-rfl              = SetSetoid.refl
⋃map-↭ {f = f} (prep x p) = Properties.∪-cong SetSetoid.refl (⋃map-↭ {f = f} p)
⋃map-↭ {f = f} (swap x y p) =
  SetSetoid.trans (SetSetoid.sym (Properties.∪-assoc _ _ _))
    (SetSetoid.trans (Properties.∪-cong Properties.∪-sym SetSetoid.refl)
      (SetSetoid.trans (Properties.∪-assoc _ _ _)
        (Properties.∪-cong SetSetoid.refl
          (Properties.∪-cong SetSetoid.refl (⋃map-↭ {f = f} p)))))
⋃map-↭ (↭-trans p q)     = SetSetoid.trans (⋃map-↭ p) (⋃map-↭ q)
```

Brick (a): a key-restriction pushes across a left-union when the removed keys
(`X = ins t`) are disjoint from the added map's domain (later outputs):

```agda
res-∪ˡ-out : {u M : UTxO} {X : ℙ TxIn}
  → disjoint X (dom (M ˢ))
  → ((u ∣ X ᶜ) ∪ˡ M) ˢ ≡ᵉ ((u ∪ˡ M) ∣ X ᶜ) ˢ
res-∪ˡ-out {u} {M} {X} disj = ⊆₁ , ⊆₂
  where
    ⊆₁ : ((u ∣ X ᶜ) ∪ˡ M) ˢ ⊆ ((u ∪ˡ M) ∣ X ᶜ) ˢ
    ⊆₁ h with ∈-∪ˡ⁻ {m = u ∣ X ᶜ} {M} h
    ... | inj₁ p∈uX =
            let (a∉X , p∈u) = Equivalence.from ∈-filter p∈uX
            in  Equivalence.to ∈-filter (a∉X , ∈-∪ˡ⁺ {m = u} {M} (inj₁ p∈u))
    ... | inj₂ (a∉domuX , p∈M) =
            let a∉X    = λ a∈X → disj a∈X (Equivalence.to dom∈ (-, p∈M))
                a∉domu = λ a∈domu → a∉domuX (∈-resᶜ-dom⁺ (a∉X , Equivalence.from dom∈ a∈domu))
            in  Equivalence.to ∈-filter (a∉X , ∈-∪ˡ⁺ {m = u} {M} (inj₂ (a∉domu , p∈M)))
    ⊆₂ : ((u ∪ˡ M) ∣ X ᶜ) ˢ ⊆ ((u ∣ X ᶜ) ∪ˡ M) ˢ
    ⊆₂ h = let (a∉X , p∈uM) = Equivalence.from ∈-filter h
           in  case ∈-∪ˡ⁻ {m = u} {M} p∈uM of λ where
                 (inj₁ p∈u)            →
                   ∈-∪ˡ⁺ {m = u ∣ X ᶜ} {M} (inj₁ (Equivalence.to ∈-filter (a∉X , p∈u)))
                 (inj₂ (a∉domu , p∈M)) →
                   ∈-∪ˡ⁺ {m = u ∣ X ᶜ} {M}
                     (inj₂ ((λ a∈domuX → a∉domu (res-comp-domᵐ a∈domuX)) , p∈M))
```

`_∪ˡ_` is leftmost-wins, hence unconditionally associative and right-unital:

```agda
∪ˡ-∅ʳ : {m : UTxO} → (m ∪ˡ ∅ᵐ) ˢ ≡ᵉ m ˢ
∪ˡ-∅ʳ {m} = ⊆₁ , λ p∈m → ∈-∪ˡ⁺ {m = m} {∅ᵐ} (inj₁ p∈m)
  where
    ⊆₁ : (m ∪ˡ ∅ᵐ) ˢ ⊆ m ˢ
    ⊆₁ h with ∈-∪ˡ⁻ {m = m} {∅ᵐ} h
    ... | inj₁ p∈m       = p∈m
    ... | inj₂ (_ , p∈∅) = ⊥-elim (Properties.∉-∅ p∈∅)

∪ˡ-assoc : {a b c : UTxO} → ((a ∪ˡ b) ∪ˡ c) ˢ ≡ᵉ (a ∪ˡ (b ∪ˡ c)) ˢ
∪ˡ-assoc {a} {b} {c} = ⊆₁ , ⊆₂
  where
    ∉domˡ : ∀ {m m' : UTxO} {k} → k ∉ dom ((m ∪ˡ m') ˢ) → k ∉ dom (m ˢ)
    ∉domˡ {m} {m'} k∉ k∈ = k∉ (dom-∪ˡ {m = m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₁ k∈)))
    ∉domʳ : ∀ {m m' : UTxO} {k} → k ∉ dom ((m ∪ˡ m') ˢ) → k ∉ dom (m' ˢ)
    ∉domʳ {m} {m'} k∉ k∈ = k∉ (dom-∪ˡ {m = m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈)))
    ⊆₁ : ((a ∪ˡ b) ∪ˡ c) ˢ ⊆ (a ∪ˡ (b ∪ˡ c)) ˢ
    ⊆₁ h with ∈-∪ˡ⁻ {m = a ∪ˡ b} {c} h
    ... | inj₁ p∈ab with ∈-∪ˡ⁻ {m = a} {b} p∈ab
    ...   | inj₁ p∈a           = ∈-∪ˡ⁺ {m = a} {b ∪ˡ c} (inj₁ p∈a)
    ...   | inj₂ (p∉a , p∈b)   = ∈-∪ˡ⁺ {m = a} {b ∪ˡ c} (inj₂ (p∉a , ∈-∪ˡ⁺ {m = b} {c} (inj₁ p∈b)))
    ⊆₁ h | inj₂ (p∉ab , p∈c)  =
            ∈-∪ˡ⁺ {m = a} {b ∪ˡ c}
              (inj₂ (∉domˡ {a} {b} p∉ab , ∈-∪ˡ⁺ {m = b} {c} (inj₂ (∉domʳ {a} {b} p∉ab , p∈c))))
    ⊆₂ : (a ∪ˡ (b ∪ˡ c)) ˢ ⊆ ((a ∪ˡ b) ∪ˡ c) ˢ
    ⊆₂ h with ∈-∪ˡ⁻ {m = a} {b ∪ˡ c} h
    ... | inj₁ p∈a           = ∈-∪ˡ⁺ {m = a ∪ˡ b} {c} (inj₁ (∈-∪ˡ⁺ {m = a} {b} (inj₁ p∈a)))
    ... | inj₂ (p∉a , p∈bc) with ∈-∪ˡ⁻ {m = b} {c} p∈bc
    ...   | inj₁ p∈b         = ∈-∪ˡ⁺ {m = a ∪ˡ b} {c} (inj₁ (∈-∪ˡ⁺ {m = a} {b} (inj₂ (p∉a , p∈b))))
    ...   | inj₂ (p∉b , p∈c) =
              ∈-∪ˡ⁺ {m = a ∪ˡ b} {c}
                (inj₂ ((λ p∈domab → [ p∉a , p∉b ]′ (Equivalence.from ∈-∪ (dom-∪ˡ {m = a} {b} .proj₁ p∈domab))) , p∈c))
```

### The UTxO closed form (paper Thm 5.2.1)

The fold of per-transaction updates equals the order-independent net
`(u ∪ ⋃outs) ∖ ⋃ins`, given `Ins#Outs` (each tx's inputs are disjoint from the
outputs of itself and all later txs — a replay-protection consequence):

```agda
private
  outsAll : List Tx → UTxO
  outsAll []       = ∅ᵐ
  outsAll (t ∷ ts) = outs (t .Tx.body) ∪ˡ outsAll ts

  utxoᶠ : UTxO → List Tx → UTxO
  utxoᶠ u []       = u
  utxoᶠ u (t ∷ ts) = utxoᶠ (applyUˢ t u) ts

  netU : UTxO → List Tx → UTxO
  netU u l = (u ∪ˡ outsAll l) ∣ ⋃map ins l ᶜ

  Ins#Outs : List Tx → Type
  Ins#Outs []       = ⊤
  Ins#Outs (t ∷ ts) = disjoint (ins t) (dom ((outs (t .Tx.body) ∪ˡ outsAll ts) ˢ)) × Ins#Outs ts

utxoᶠ-net : ∀ {u} l → Ins#Outs l → (utxoᶠ u l) ˢ ≡ᵉ (netU u l) ˢ
utxoᶠ-net {u} []       _          = SetSetoid.sym (SetSetoid.trans res-∅ᶜ (∪ˡ-∅ʳ {m = u}))
utxoᶠ-net {u} (t ∷ ts) (hd , rest) =
  SetSetoid.trans (utxoᶠ-net {applyUˢ t u} ts rest)
    (SetSetoid.trans (Properties.filter-cong (∪ˡ-assoc {u ∣ ins t ᶜ} {outs (t .Tx.body)} {outsAll ts}))
      (SetSetoid.trans (Properties.filter-cong (res-∪ˡ-out {u} {outs (t .Tx.body) ∪ˡ outsAll ts} {ins t} hd))
        (res-merge {u ∪ˡ (outs (t .Tx.body) ∪ˡ outsAll ts)} {ins t} {⋃map ins ts})))
```

The trace collects the fold: iterating `LEDGER-V⇒applyU` over a valid execution of an
all-phase-2-valid list yields `utxo s′ = utxoᶠ (utxo s) l`.

```agda
LEDGERS⇒utxoᶠ : ∀ {l} → Allᴸ.All (λ t → Tx.isValid t ≡ true) l
  → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.utxo ≡ utxoᶠ (LState.utxoSt s .UTxOState.utxo) l
LEDGERS⇒utxoᶠ Allᴸ.[]        (BS-base Id-nop) = refl
LEDGERS⇒utxoᶠ {l = t ∷ ts} (v Allᴸ.∷ vs) (BS-ind st rest) =
  trans (LEDGERS⇒utxoᶠ vs rest) (cong (λ x → utxoᶠ x ts) (LEDGER-V⇒applyU st v))
```

### The net UTxO is permutation-invariant

`netU` reads the list only through `outsAll` (a `∪ˡ`-fold) and `⋃map ins` (a `∪`-fold).
The latter is `⋃map-↭`; the former needs pairwise-disjoint outputs (`DisjOuts`, i.e.
`replay-outs-disjoint`) so the left-biased union commutes:

```agda
DisjOuts : List Tx → Type
DisjOuts = AllPairs (λ t t′ → disjoint (dom (outs (t .Tx.body) ˢ)) (dom (outs (t′ .Tx.body) ˢ)))

↭-DisjOuts : l₁ ↭ l₂ → DisjOuts l₁ → DisjOuts l₂
↭-DisjOuts ↭-rfl          ap              = ap
↭-DisjOuts (prep x p)     (a ∷ ap)        = All-resp-↭ p a ∷ ↭-DisjOuts p ap
↭-DisjOuts (swap x y p)   ((axy ∷ ax) ∷ (ay ∷ ap)) =
  (Properties.disjoint-sym axy ∷ All-resp-↭ p ay) ∷ (All-resp-↭ p ax ∷ ↭-DisjOuts p ap)
↭-DisjOuts (↭-trans p q)  ap              = ↭-DisjOuts q (↭-DisjOuts p ap)

outsAll-↭ : l₁ ↭ l₂ → DisjOuts l₁ → (outsAll l₁) ˢ ≡ᵉ (outsAll l₂) ˢ
outsAll-↭ ↭-rfl        _                  = SetSetoid.refl
outsAll-↭ {l₁ = _ ∷ xs} {l₂ = _ ∷ ys} (prep x p) (_ ∷ ap) =
  ∪ˡ-cong {m = outs (x .Tx.body)} {m' = outsAll xs} {m'' = outs (x .Tx.body)} {m''' = outsAll ys}
    SetSetoid.refl (outsAll-↭ p ap)
outsAll-↭ {l₁ = _ ∷ _ ∷ xs} {l₂ = _ ∷ _ ∷ ys} (swap x y p) ((axy ∷ _) ∷ (_ ∷ ap)) =
  SetSetoid.trans (SetSetoid.sym (∪ˡ-assoc {outs (x .Tx.body)} {outs (y .Tx.body)} {outsAll xs}))
    (SetSetoid.trans
      (∪ˡ-cong {m = outs (x .Tx.body) ∪ˡ outs (y .Tx.body)} {m' = outsAll xs}
               {m'' = outs (y .Tx.body) ∪ˡ outs (x .Tx.body)} {m''' = outsAll xs}
        (∪ˡ-sym-disjoint {m = outs (x .Tx.body)} {m′ = outs (y .Tx.body)} axy) SetSetoid.refl)
      (SetSetoid.trans (∪ˡ-assoc {outs (y .Tx.body)} {outs (x .Tx.body)} {outsAll xs})
        (∪ˡ-cong {m = outs (y .Tx.body)} {m' = outs (x .Tx.body) ∪ˡ outsAll xs}
                 {m'' = outs (y .Tx.body)} {m''' = outs (x .Tx.body) ∪ˡ outsAll ys} SetSetoid.refl
          (∪ˡ-cong {m = outs (x .Tx.body)} {m' = outsAll xs}
                   {m'' = outs (x .Tx.body)} {m''' = outsAll ys} SetSetoid.refl (outsAll-↭ p ap)))))
outsAll-↭ (↭-trans p q) ap                =
  SetSetoid.trans (outsAll-↭ p ap) (outsAll-↭ q (↭-DisjOuts p ap))

resᶜ-set-cong : {m : UTxO} {X Y : ℙ TxIn} → X ≡ᵉ Y → (m ∣ X ᶜ) ˢ ≡ᵉ (m ∣ Y ᶜ) ˢ
resᶜ-set-cong {m} {X} {Y} X≡Y = ⊆₁ , ⊆₂
  where
    ⊆₁ : (m ∣ X ᶜ) ˢ ⊆ (m ∣ Y ᶜ) ˢ
    ⊆₁ h = let (a∉X , hm) = Equivalence.from ∈-filter h
           in  Equivalence.to ∈-filter ((λ a∈Y → a∉X (X≡Y .proj₂ a∈Y)) , hm)
    ⊆₂ : (m ∣ Y ᶜ) ˢ ⊆ (m ∣ X ᶜ) ˢ
    ⊆₂ h = let (a∉Y , hm) = Equivalence.from ∈-filter h
           in  Equivalence.to ∈-filter ((λ a∈X → a∉Y (X≡Y .proj₁ a∈X)) , hm)

netU-↭ : ∀ {u} → l₁ ↭ l₂ → DisjOuts l₁ → (netU u l₁) ˢ ≡ᵉ (netU u l₂) ˢ
netU-↭ {l₁ = l₁} {l₂ = l₂} {u = u} p disj =
  SetSetoid.trans
    (Properties.filter-cong
      (∪ˡ-cong {m = u} {m' = outsAll l₁} {m'' = u} {m''' = outsAll l₂}
        SetSetoid.refl (outsAll-↭ p disj)))
    (resᶜ-set-cong {m = u ∪ˡ outsAll l₂} (⋃map-↭ {f = ins} p))
```

### The `utxo` field is reorder-invariant

`Ins#Outs` is the remaining replay-protection consequence (each transaction's inputs
are disjoint from its own and all later transactions' outputs — inputs pre-exist while
outputs are freshly `txId`-keyed; Cor 5.1.2 / well-foundedness).  `DisjOuts` is exactly
`replay-outs-disjoint`.  Chaining extraction, the closed form, and `netU-↭` gives the
`utxo` component of `_≈ˡ_` for two valid reorderings of an all-phase-2-valid list:

```agda
postulate
  Ins#Outs-exec : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Ins#Outs l

LEDGERS-utxo≈ : Allᴸ.All (λ t → Tx.isValid t ≡ true) l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → (LState.utxoSt s₁ .UTxOState.utxo) ˢ ≡ᵉ (LState.utxoSt s₂ .UTxOState.utxo) ˢ
LEDGERS-utxo≈ {s = s} v₁ p st₁ st₂ =
  let u = LState.utxoSt s .UTxOState.utxo in
  SetSetoid.trans (SetSetoid.reflexive (cong (λ m → m ˢ) (LEDGERS⇒utxoᶠ v₁ st₁)))
    (SetSetoid.trans (utxoᶠ-net {u = u} _ (Ins#Outs-exec st₁))
      (SetSetoid.trans (netU-↭ {u = u} p (replay-outs-disjoint st₁))
        (SetSetoid.trans (SetSetoid.sym (utxoᶠ-net {u = u} _ (Ins#Outs-exec st₂)))
          (SetSetoid.reflexive (cong (λ m → m ˢ) (sym (LEDGERS⇒utxoᶠ (All-resp-↭ p v₁) st₂)))))))
```

### The scalar fields `fees` and `donations` are reorder-invariant

Each sums a per-transaction quantity; the sum is permutation-invariant by
commutativity of `_+_`.  The machinery is generic in the summed function `g`.

```agda
private
  Σg : (Tx → ℕ) → List Tx → ℕ
  Σg g []       = 0
  Σg g (t ∷ ts) = g t + Σg g ts

  scalarᶠ : (Tx → ℕ) → ℕ → List Tx → ℕ
  scalarᶠ g a []       = a
  scalarᶠ g a (t ∷ ts) = scalarᶠ g (a + g t) ts

  scalarᶠ≡ : ∀ {g} a l → scalarᶠ g a l ≡ a + Σg g l
  scalarᶠ≡     a []       = sym (+-identityʳ a)
  scalarᶠ≡ {g} a (t ∷ ts) = trans (scalarᶠ≡ (a + g t) ts) (+-assoc a (g t) (Σg g ts))

Σg-↭ : ∀ {g} {l₁ l₂} → l₁ ↭ l₂ → Σg g l₁ ≡ Σg g l₂
Σg-↭ ↭-rfl                              = refl
Σg-↭ {g} (prep x p)                     = cong (g x +_) (Σg-↭ {g} p)
Σg-↭ {g} {l₁ = _ ∷ _ ∷ xs} (swap x y p) =
  trans (sym (+-assoc (g x) (g y) (Σg g xs)))
    (trans (cong (_+ Σg g xs) (+-comm (g x) (g y)))
      (trans (+-assoc (g y) (g x) (Σg g xs))
        (cong (λ z → g y + (g x + z)) (Σg-↭ {g} p))))
Σg-↭ (↭-trans p q)                      = trans (Σg-↭ p) (Σg-↭ q)

private
  feeg dong : Tx → ℕ
  feeg t = TxBody.txFee      (t .Tx.body)
  dong t = TxBody.txDonation (t .Tx.body)

LEDGER-V⇒feeΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → Tx.isValid tx ≡ true
  → LState.utxoSt s′ .UTxOState.fees ≡ LState.utxoSt s .UTxOState.fees + feeg tx
LEDGER-V⇒feeΔ
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _)) _ = refl
LEDGER-V⇒feeΔ
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _)) v
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER-V⇒feeΔ (LEDGER-I⋯ i _) v = ⊥-elim (case trans (sym v) i of λ ())

LEDGER-V⇒donΔ : Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → Tx.isValid tx ≡ true
  → LState.utxoSt s′ .UTxOState.donations ≡ LState.utxoSt s .UTxOState.donations + dong tx
LEDGER-V⇒donΔ
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-Yes _)) , _ , _)) _ = refl
LEDGER-V⇒donΔ
  (LEDGER-V (_ , UTXOW⇒UTXO (UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ (Scripts-No (_ , ¬v))) , _ , _)) v
  = ⊥-elim (case trans (sym v) ¬v of λ ())
LEDGER-V⇒donΔ (LEDGER-I⋯ i _) v = ⊥-elim (case trans (sym v) i of λ ())

LEDGERS⇒feesᶠ : ∀ {l} → Allᴸ.All (λ t → Tx.isValid t ≡ true) l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.fees ≡ scalarᶠ feeg (LState.utxoSt s .UTxOState.fees) l
LEDGERS⇒feesᶠ Allᴸ.[]        (BS-base Id-nop) = refl
LEDGERS⇒feesᶠ {l = t ∷ ts} (v Allᴸ.∷ vs) (BS-ind st rest) =
  trans (LEDGERS⇒feesᶠ vs rest) (cong (λ a → scalarᶠ feeg a ts) (LEDGER-V⇒feeΔ st v))

LEDGERS⇒donᶠ : ∀ {l} → Allᴸ.All (λ t → Tx.isValid t ≡ true) l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → LState.utxoSt s′ .UTxOState.donations ≡ scalarᶠ dong (LState.utxoSt s .UTxOState.donations) l
LEDGERS⇒donᶠ Allᴸ.[]        (BS-base Id-nop) = refl
LEDGERS⇒donᶠ {l = t ∷ ts} (v Allᴸ.∷ vs) (BS-ind st rest) =
  trans (LEDGERS⇒donᶠ vs rest) (cong (λ a → scalarᶠ dong a ts) (LEDGER-V⇒donΔ st v))

LEDGERS-fees≈ : Allᴸ.All (λ t → Tx.isValid t ≡ true) l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → LState.utxoSt s₁ .UTxOState.fees ≡ LState.utxoSt s₂ .UTxOState.fees
LEDGERS-fees≈ {l₁ = l₁} {l₂ = l₂} {s = s} v₁ p st₁ st₂ =
  let f₀ = LState.utxoSt s .UTxOState.fees in
  trans (LEDGERS⇒feesᶠ v₁ st₁)
    (trans (scalarᶠ≡ f₀ l₁)
      (trans (cong (f₀ +_) (Σg-↭ {feeg} p))
        (trans (sym (scalarᶠ≡ f₀ l₂)) (sym (LEDGERS⇒feesᶠ (All-resp-↭ p v₁) st₂)))))

LEDGERS-don≈ : Allᴸ.All (λ t → Tx.isValid t ≡ true) l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → LState.utxoSt s₁ .UTxOState.donations ≡ LState.utxoSt s₂ .UTxOState.donations
LEDGERS-don≈ {l₁ = l₁} {l₂ = l₂} {s = s} v₁ p st₁ st₂ =
  let d₀ = LState.utxoSt s .UTxOState.donations in
  trans (LEDGERS⇒donᶠ v₁ st₁)
    (trans (scalarᶠ≡ d₀ l₁)
      (trans (cong (d₀ +_) (Σg-↭ {dong} p))
        (trans (sym (scalarᶠ≡ d₀ l₂)) (sym (LEDGERS⇒donᶠ (All-resp-↭ p v₁) st₂)))))
```

### Generic: a locally-commuting `foldl` is permutation-invariant

Every remaining field (`deposits` and the certificate maps) updates by a per-transaction
operation that pairwise-commutes when the two transactions are `Indep`.  This is the
reusable engine (Mazurkiewicz-style): given commutation on `Indep` pairs and congruence
in the accumulator, a left fold is invariant under any permutation whose elements are
`AllPairs Indep`.

```agda
module _ {M : Type} (_≈ᴹ_ : M → M → Type)
  (≈ᴹ-refl  : ∀ {m} → m ≈ᴹ m)
  (≈ᴹ-trans : ∀ {a b c} → a ≈ᴹ b → b ≈ᴹ c → a ≈ᴹ c)
  (op       : M → Tx → M)
  (op-congˡ : ∀ {a b} t → a ≈ᴹ b → op a t ≈ᴹ op b t)
  (op-comm  : ∀ {m x y} → Indep x y → op (op m x) y ≈ᴹ op (op m y) x)
  where
  private
    foldl-seed : ∀ {a b} l → a ≈ᴹ b → foldl op a l ≈ᴹ foldl op b l
    foldl-seed []       a≈b = a≈b
    foldl-seed (t ∷ ts) a≈b = foldl-seed ts (op-congˡ t a≈b)

  foldl-↭ : ∀ m {l₁ l₂} → AllPairs Indep l₁ → l₁ ↭ l₂ → foldl op m l₁ ≈ᴹ foldl op m l₂
  foldl-↭ m _                        ↭-rfl        = ≈ᴹ-refl
  foldl-↭ m (_ ∷ ap)                 (prep x p)   = foldl-↭ (op m x) ap p
  foldl-↭ m {l₁ = _ ∷ _ ∷ xs} ((ixy ∷ _) ∷ (_ ∷ ap)) (swap x y p) =
    ≈ᴹ-trans (foldl-seed xs (op-comm ixy)) (foldl-↭ (op (op m y) x) ap p)
  foldl-↭ m ap                       (↭-trans p q) =
    ≈ᴹ-trans (foldl-↭ m ap p) (foldl-↭ m (↭-AllPairs p ap) q)
```

## The reordering theorem (net-effect form)

Unlike the earlier swap-based reachability argument (which reconstructed a valid
`l₂`-execution from the `l₁`-one and so needed disjoint inputs/outputs to keep
each swap *valid*), the theorem now takes **both executions as given** and
compares their results directly, field by field — Vinogradova & Sorokin
(LSFA'24), Thm 5.2.1.  Under the three hypotheses (`AllPairs Indep`,
`All NoGov`, and both `LEDGERS` premises) each `LState` field is a function of
the *set* of transactions, not their order:

*   `utxo` collapses to the order-independent `u₀ ∪ ⋃outs ∖ ⋃ins`; the
    `replay-*` postulates make the removes and adds non-interfering.
*   the certificate maps touch pairwise-disjoint keys (`Indep`), so their per-tx
    updates commute (the cert map-algebra `delegate-comm`/`reg-comm`/… above);
    `deposits`/`fees`/`donations` accumulate commutatively.
*   `govSt` is inert under `NoGov` (empty `GOVS` signal, and constant `dom dreps`
    keeps `rmOrphanDRepVotes` and `activeVDelegs` fixed every step).

The remaining obligation is this net-effect invariance itself, isolated as a
single postulate consuming the replay-protection facts above; the field-wise
commutation lemmas already proven in this module are its ingredients.

```agda
postulate
  LEDGERS-net-↭ :
      AllPairs Indep l₁ → Allᴸ.All NoGov l₁ → l₁ ↭ l₂
    → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
    → s₁ ≈ˡ s₂

LEDGERS-reorder :
    AllPairs Indep l₁ → Allᴸ.All NoGov l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-reorder = LEDGERS-net-↭
```
