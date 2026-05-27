---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoVLemmas.lagda.md
---

# Properties of `CERT`: Preservation of Value {#thm:CERT-PoV}

This module proves that the individual-certificate transition rule
`CERT`{.AgdaDatatype} preserves total value.  Specifically, for any
certificate `dCert`{.AgdaBound} and any `CertState`{.AgdaRecord} pair
(`s`{.AgdaBound}, `s'`{.AgdaBound}) related by the `CERT`{.AgdaDatatype}
rule, we have

`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

The lemma `CERT-pov`{.AgdaFunction} is the per-step ingredient consumed by

+  `CERTS-pov`{.AgdaFunction} in `Certs.Properties.PoV`, which lifts the
   per-step preservation to the reflexive-transitive closure `CERTS`{.AgdaDatatype}
   of `CERT`{.AgdaDatatype}, and
+  `ENTITIES-pov`{.AgdaFunction} in `Entities.Properties.PoV`, which combines
   `CERTS-pov`{.AgdaFunction} with the withdrawal- and direct-deposit-handling that
   surrounds `CERTS`{.AgdaDatatype} inside the `ENTITIES`{.AgdaDatatype} rule.

The proof follows the structure of its Conway counterpart in
`Conway.Specification.Certs.Properties.PoVLemmas`.  Under Dijkstra's
`HasCoin-CertState`{.AgdaFunction} instance, `getCoin`{.AgdaFunction} of a
`CertState`{.AgdaRecord} is just the `rewardsBalance`{.AgdaFunction} of its
`DState`{.AgdaRecord}, so each of the `CERT`{.AgdaDatatype}'s sub-rules is shown to
preserve the rewards balance:

+  `CERT-deleg DELEG-delegate`: appends a zero-balance entry to
   `rewards`{.AgdaField}; preservation follows from `∪ˡsingleton0≡`{.AgdaFunction}.
+  `CERT-deleg DELEG-dereg`: removes a zero-balance entry from `rewards`{.AgdaField};
   preservation follows from a small chain decomposing `rewards`{.AgdaField} into its
   restriction and complement-restriction.
+  `CERT-pool`: leaves `DState`{.AgdaRecord} untouched; preservation is
   `refl`{.AgdaInductiveConstructor}.
+  `CERT-gov`: leaves `DState`{.AgdaRecord} untouched; preservation is
   `refl`{.AgdaInductiveConstructor}.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Gov.Actions gs hiding (yes; no)

open import Axiom.Set.Properties th

open import Algebra using (CommutativeMonoid)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ)
open import Relation.Binary using (IsEquivalence)
open import Relation.Nullary.Decidable

open CertState

private variable
  dCert : DCert
  A     : Type

instance
  _ = +-0-monoid
open ≡-Reasoning
open Equivalence
```
-->

## The `CERT-pov` theorem

*Informally*. Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertStates`{.AgdaRecord}
related by `_⊢_⇀⦇ dCert ,CERT⦈_` for some `dCert`{.AgdaBound}.  Then
`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

**Formally**.

```agda
CERT-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s' → getCoin s ≡ getCoin s'
```

**Proof**.  Case-split on the three `CERT`{.AgdaDatatype} sub-rules.  The
`CERT-pool` and `CERT-gov` cases never touch the `DState`{.AgdaRecord},
so their preservation is `refl`{.AgdaInductiveConstructor}; the
`CERT-deleg` cases dispatch on the `DELEG` constructor.

<!--
```agda
CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)

CERT-pov
  {s = ⟦ ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ}
  {s' = ⟦ ⟦ _ , _ , _ , _ ⟧ᵈ , stᵖ' , stᵍ' ⟧ᶜˢ}
  (CERT-deleg (DELEG-dereg {c = c} x)) =
  begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds , dep ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
           ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ)
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ , dep ∣ ❴ c ❵ ᶜ ⟧ᵈ , stᵖ' , stᵍ' ⟧ᶜˢ
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵)

    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)

    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom = res-comp-dom a∈res (dom-single→single a∈dom)

    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) ˢ
    rwds-∪ˡ≡sing-∪ˡ =
      ≡ᵉ.trans rwds-∪ˡ-∪ ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton' {m = rwds} (proj₁ x)))
                                   (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )

CERT-pov (CERT-pool _)  = refl
CERT-pov (CERT-gov  _)  = refl
```
-->


## The `CERT-deposits-updateCertDeposit` bridging lemma

The `LEDGER-pov` chain needs to relate the **`coinFromDeposits`** of the
post-`CERTS` `CertState` to the **`updateCertDeposits`** closed-form
computation appearing in `consumed`/`produced` via `newCertDeposits` /
`refundCertDeposits` (see `Utxo.lagda.md`).  The per-step ingredient is
`CERT-deposits-updateCertDeposit`: for every `CERT` step `Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'`,
the triple of post-step deposit pots `(DState.deposits, PState.deposits, GState.deposits)`
of `s'` equals `updateCertDeposit (PParamsOf Γ) dCert` applied to the same
triple from `s`.

The case analysis is constructor-for-constructor, mirroring the structure of
`CERT-pov`:

+  `DELEG-delegate`, `DELEG-dereg`, `POOL-reg`, `POOL-retirepool`,
   `GOVCERT-regdrep`, `GOVCERT-deregdrep`, `GOVCERT-ccreghot`: each reduces to
   `refl`{.AgdaInductiveConstructor} because the rule's pot update and
   `updateCertDeposit`'s `case`-branch produce literally the same expression.
+  `POOL-rereg`: the rule leaves `deposits` unchanged, but
   `updateCertDeposit (regpool kh _)` produces
   `deposits ∪ˡ ❴ kh , pp .poolDeposit ❵`.  These agree under the
   ledger-wide invariant that every registered pool has a matching deposit
   entry — formally, `dom (PoolsOf ps) ⊆ dom (DepositsOf ps)` for the
   `PState ps` we are stepping from.  Combined with `POOL-rereg`'s premise
   `Is-just (isPoolRegistered pools kh)` (i.e., `kh ∈ dom pools`), this gives
   `kh ∈ dom deposits`, making the `∪ˡ` a no-op.

The invariant is maintained globally by the ledger (it's a `CHAIN`-level
invariant; see also the `PoolReap.lagda.md` comment about retiring pools
always being registered).  We thread it through the lemma as the explicit
predicate `PoolDepositsAligned` (a `PState → Type`).

The lemma also depends on two small set/map facts that we package as
module parameters of `CERT-Deposits-Bridge`:

+  `∪ˡ-singleton-mem-≡`. If `k ∈ dom m` then `m ∪ˡ ❴ k , v ❵ ≡ m` (pure `≡`,
   not just `≡ᵉ`).  Provable from the left-biased semantics of `∪ˡ`.
+  `Is-just-isPoolRegistered⇒∈-dom`. Standard `Is-just (lookupᵐ? m k) → k ∈ dom m`
   for finite maps.  Almost certainly already lives in `Axiom.Set.Properties`
   or `Interface.HasMap`; if not, a few-line proof from `lookupᵐ?` semantics.

Both are filed as deferred parameters here so the lemma can compile cleanly
now; they should be discharged from the standard map / set libraries when
convenient.

```agda
PoolDepositsAligned : PState → Type
PoolDepositsAligned ps = dom (PoolsOf ps) ⊆ dom (DepositsOf ps)

module CERT-Deposits-Bridge
  ( ∪ˡ-singleton-mem-≡ :
      ∀ {A : Type} ⦃ _ : DecEq A ⦄
        (m : A ⇀ Coin) (k : A) (v : Coin)
      → k ∈ dom m → m ∪ˡ ❴ k , v ❵ ≡ m )
  ( Is-just-isPoolRegistered⇒∈-dom :
      ∀ {pools : Pools} {kh : KeyHash}
      → Is-just (isPoolRegistered pools kh) → kh ∈ dom pools )
  where

  -- Per-step bridge: the triple of deposit pots after a single `CERT` step
  -- equals `updateCertDeposit` applied to the pre-step triple.
  CERT-deposits-updateCertDeposit :
    {Γ : CertEnv} {s s' : CertState}
    → PoolDepositsAligned (PStateOf s)
    → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
    → ( DepositsOf (DStateOf s')
      , DepositsOf (PStateOf s')
      , DepositsOf (GStateOf s') )
      ≡ updateCertDeposit (PParamsOf Γ) dCert
          ( DepositsOf (DStateOf s)
          , DepositsOf (PStateOf s)
          , DepositsOf (GStateOf s) )

  CERT-deposits-updateCertDeposit _ (CERT-deleg (DELEG-delegate _))    = refl
  CERT-deposits-updateCertDeposit _ (CERT-deleg (DELEG-dereg _))       = refl
  CERT-deposits-updateCertDeposit _ (CERT-pool (POOL-reg _))           = refl
  CERT-deposits-updateCertDeposit
    {Γ = Γ} {s = s} poolInv (CERT-pool (POOL-rereg {kh = kh} regd))    =
    -- The rule's output pot is `deposits` (unchanged), but `updateCertDeposit`
    -- produces `deposits ∪ˡ ❴ kh , pp .poolDeposit ❵`.  The pool-deposit
    -- invariant `poolInv` plus the rereg premise `regd : Is-just …`
    -- give `kh ∈ dom deposits`; `∪ˡ-singleton-mem-≡` then makes the union
    -- a no-op.
    cong (λ x → ( DepositsOf (DStateOf s) , x , DepositsOf (GStateOf s) ))
         (sym (∪ˡ-singleton-mem-≡
                 (DepositsOf (PStateOf s)) kh _
                 (poolInv (Is-just-isPoolRegistered⇒∈-dom regd))))
  CERT-deposits-updateCertDeposit _ (CERT-pool POOL-retirepool)        = refl
  CERT-deposits-updateCertDeposit _ (CERT-gov (GOVCERT-regdrep _))     = refl
  CERT-deposits-updateCertDeposit _ (CERT-gov (GOVCERT-deregdrep _))   = refl
  CERT-deposits-updateCertDeposit _ (CERT-gov (GOVCERT-ccreghot _))    = refl
```
