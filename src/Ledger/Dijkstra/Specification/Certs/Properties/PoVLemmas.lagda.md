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
