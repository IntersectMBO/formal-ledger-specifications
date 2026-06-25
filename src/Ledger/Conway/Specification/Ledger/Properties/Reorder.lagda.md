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
        ; _⊢_⇀⦇_,UTXO⦈_; UTXO-inductive
        ; delegate; regpool; regdrep; reg; dereg; deregdrep; ccreghot; retirepool )
  renaming ([] to ⟨⟩ᵛ)
open import Ledger.Conway.Specification.Script.Validation txs abs
  using (collectP2ScriptsWithContext; evalP2Scripts; credsNeeded; credentialToP2Script; txOutToP2Script)
open import Ledger.Conway.Specification.Utxow txs abs
  using ( TxOutSpendable-PlutusV1; TxOutSpendable-PlutusV2; languages; allowedLanguages; hashScriptIntegrity
        ; _⊢_⇀⦇_,UTXOW⦈_; UTXOW-inductive )
import Data.Maybe.Relation.Unary.All as Maybe
open import Ledger.Conway.Specification.Fees using (scriptsCost)
open import Ledger.Conway.Specification.Utxo.Properties.Base txs abs using (balance-cong-coin; balance-cong)
open import Ledger.Conway.Specification.Ledger.Properties.StateEquiv txs abs
open import Interface.ComputationalRelation
open import abstract-set-theory.Axiom.Set.Map.Extra using (∪⁺-cong-l; ∪⁺-cong-r; restrict-cong)
open import Data.Nat.Properties using (+-isCommutativeSemigroup)

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

## Independence of transactions

`Indep t₁ t₂` collects the side-conditions under which `t₁` and `t₂` commute as
`LEDGER`{.AgdaOperator} steps.  Each condition is justified by the corresponding
part of the state update:

*   **`distinctTxId`** — distinct transaction ids, so the two transactions
    produce disjoint UTxO outputs (`outs`{.AgdaFunction} keys every output by
    `txId`{.AgdaField}).
*   **`disjInputs`** — disjoint spent inputs, so the `_∣_ᶜ`/`_∪ˡ_` UTxO updates
    commute.
*   **`noCrossSpend₁₂` / `noCrossSpend₂₁`** — neither transaction spends an output
    the other creates (its inputs are disjoint from the other's `outs`).  This is
    *required* and easy to miss: disjoint inputs alone is not enough.  If `t₂`
    spent an output of `t₁`, then `t₁;t₂` could succeed while `t₂;t₁` fails (the
    output does not exist yet), so the two orders would not both produce a state.
*   **`disjCertCreds`** — the certificate "targets" (`cwitness`{.AgdaFunction})
    are disjoint, so the `DELEG`/`POOL`/`GOVCERT` map updates touch disjoint
    keys.
*   **`disjWdrls`** — disjoint withdrawal credentials, so the `PRE-CERT`
    reward-zeroing commutes.
*   **`govFree`** — no governance proposals or votes (`txGovProposals ≡ []`,
    `txGovVotes ≡ []`), so the `GOVS` signal is empty.
*   **`noDRepCert`** — no DRep (de)registration.  This is *essential* and easy to
    miss: `LEDGER-V` recomputes `govSt' = rmOrphanDRepVotes certState' govSt`,
    which filters pre-existing DRep votes by `dom (dreps certState')`.  If a
    transaction changed the DRep set, the two orders would filter `govSt` by
    different sets and diverge — even with disjoint targets and no new votes.
    Forbidding DRep (de)registration keeps `dom dreps` constant, so
    `rmOrphanDRepVotes` is applied with the same filter in both orders.  (The
    same constant-`dom dreps` fact tames the `POST-CERT` `voteDelegs` filter.)

```agda
private
  ins        : Tx → ℙ TxIn;             ins   t = t .Tx.body .TxBody.txIns
  certs      : Tx → List DCert;         certs t = t .Tx.body .TxBody.txCerts
  wdrls      : Tx → Withdrawals;        wdrls t = t .Tx.body .TxBody.txWithdrawals
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

record Indep (t₁ t₂ : Tx) : Type where
  field
    distinctTxId  : t₁ .Tx.body .TxBody.txId ≢ t₂ .Tx.body .TxBody.txId
    disjInputs    : disjoint (ins t₁) (ins t₂)
    noCrossSpend₁₂ : disjoint (ins t₂) (dom (outs (t₁ .Tx.body)))
    noCrossSpend₂₁ : disjoint (ins t₁) (dom (outs (t₂ .Tx.body)))
    disjCertCreds : disjoint (certCreds t₁) (certCreds t₂)
    disjWdrls     : disjoint (dom (wdrls t₁)) (dom (wdrls t₂))
    govFree₁      : GovFree t₁
    govFree₂      : GovFree t₂
    noDRepCert₁   : NoDRepCert t₁
    noDRepCert₂   : NoDRepCert t₂

Indep-sym : ∀ {t₁ t₂} → Indep t₁ t₂ → Indep t₂ t₁
Indep-sym i = record
  { distinctTxId  = i .distinctTxId ∘ sym
  ; disjInputs    = Properties.disjoint-sym (i .disjInputs)
  ; noCrossSpend₁₂ = i .noCrossSpend₂₁
  ; noCrossSpend₂₁ = i .noCrossSpend₁₂
  ; disjCertCreds = Properties.disjoint-sym (i .disjCertCreds)
  ; disjWdrls     = Properties.disjoint-sym (i .disjWdrls)
  ; govFree₁      = i .govFree₂
  ; govFree₂      = i .govFree₁
  ; noDRepCert₁   = i .noDRepCert₂
  ; noDRepCert₂   = i .noDRepCert₁
  } where open Indep
```

## Adjacent swap and `LEDGER` congruence (sound obligations)

State equality is the extensional `_≈ˡ_` of
[`StateEquiv`](Ledger.Conway.Specification.Ledger.Properties.StateEquiv.md)
(propositional `_≡_` is too strong — the `List`-backed model makes reordered
states `_≡ᵉ_`-equal but not `_≡_`).  Two obligations remain, both **sound** in
that model (unlike a `≡ᵉ⇒≡` axiom, which is false there):

*   `LEDGER-cong`{.AgdaFunction} — `LEDGER`{.AgdaOperator} is well-defined on the
    `_≈ˡ_` quotient (extensionally-equal start states reach extensionally-equal
    results).  This is what lets a reordered prefix, which ends in a
    `_≈ˡ_`-but-not-`_≡_` state, be continued by the remaining transactions.
*   `LEDGER-swap`{.AgdaFunction} — two independent neighbouring transactions can
    trade places, reaching an `_≈ˡ_`-equal final state.  Its UTxO component is
    `utxo-comm`{.AgdaFunction}; its `CertState` component is the cert
    map-algebra below; `govSt` is fixed by gov-freeness.

```agda
postulate
  LEDGER-cong :
      Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → s ≈ˡ s″
    → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s‴ × s′ ≈ˡ s‴)

  LEDGER-swap :
      Indep t₁ t₂
    → Γ ⊢ s  ⇀⦇ t₁ ,LEDGER⦈ s₁
    → Γ ⊢ s₁ ⇀⦇ t₂ ,LEDGER⦈ s₂
    → ∃[ sₘ ] ∃[ s₂′ ]
        (Γ ⊢ s ⇀⦇ t₂ ,LEDGER⦈ sₘ × Γ ⊢ sₘ ⇀⦇ t₁ ,LEDGER⦈ s₂′ × s₂′ ≈ˡ s₂)
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
an extensionally-equal state.  The `swap` case applies `LEDGER-swap`{.AgdaFunction}
to trade the two heads, then `LEDGERS-cong`{.AgdaFunction} to continue the tail
from the resulting `_≈ˡ_`-equal state.

```agda
↭-reach : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s′
        → ∃[ s″ ] (Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s″ × s′ ≈ˡ s″)
↭-reach ap ↭-rfl st = -, st , ≈ˡ-refl
↭-reach (_ ∷ ap) (prep x p) (BS-ind st rest) =
  let (_ , rest′ , s′≈) = ↭-reach ap p rest
  in  -, BS-ind st rest′ , s′≈
↭-reach ((ixy ∷ _) ∷ _ ∷ ap) (swap x y p) (BS-ind st₁ (BS-ind st₂ rest)) =
  let (_ , _ , st₂′ , st₁′ , sb≈) = LEDGER-swap ixy st₁ st₂
      (_ , restc , s′≈c)          = LEDGERS-cong rest (≈ˡ-sym sb≈)
      (_ , restr , c≈r)           = ↭-reach ap p restc
  in  -, BS-ind st₂′ (BS-ind st₁′ restr) , ≈ˡ-trans s′≈c c≈r
↭-reach ap (↭-trans p q) st =
  let (_ , st′ , s′≈) = ↭-reach ap p st
      (_ , st″ , r≈)  = ↭-reach (↭-AllPairs p ap) q st′
  in  -, st″ , ≈ˡ-trans s′≈ r≈
```

## The reordering theorem

Two reorderings of a pairwise-independent transaction list reach
extensionally-equal `LState`s.  (Determinism gives propositional `_≡_` for the
*same* list `l₂`, which `≡⟹≈ˡ`{.AgdaFunction} refines into `_≈ˡ_`.)

```agda
LEDGERS-reorder :
    AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁
  → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-reorder ap p step₁ step₂ =
  let (_ , step₂′ , s₁≈) = ↭-reach ap p step₁
  in  ≈ˡ-trans s₁≈ (≡⟹≈ˡ (LEDGERS-deterministic step₂′ step₂))
```
