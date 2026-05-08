---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs/Properties/PoVLemmas.lagda.md
---

## Theorem: The <span class="AgdaDatatype">CERT</span> rule preserves value {#thm:CERT-PoV}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.PoVLemmas (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Specification.Certs gs
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Prelude

open import Axiom.Set.Properties th

open import Algebra using (CommutativeMonoid)
open import Data.Maybe.Properties
open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid; +-identityʳ; +-identityˡ)
import Relation.Binary as Eq using (IsEquivalence)
open import Relation.Nullary.Decidable
open import Tactic.ReduceDec

open Computational ⦃...⦄

open import stdlib-meta.Tactic.GenError using (genErrors)

open CertState

private variable
  dCert : DCert
  l : List DCert
  A A' B : Type
instance
  _ = +-0-monoid

open ≡-Reasoning
```
-->


*Informally*.

Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertStates`{.AgdaRecord} such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `dcert`{.AgdaBound} `,CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound} for
some `dcert`{.AgdaBound} : `DCert`{.AgdaDatatype}. Then,
`getCoin`{.AgdaField} `s`{.AgdaBound} $≡$ `getCoin`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
CERT-pov : {Γ : CertEnv} {s s'  : CertState}
  → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s' → getCoin s ≡ getCoin s'
```

*Proof*.  (Click the "Show more Agda" button to reveal the proof.)

<!--
```agda
CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
CERT-pov (CERT-deleg (DELEG-reg {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
CERT-pov {s = ⟦ _ , stᵖ , stᵍ ⟧ᶜˢ}{⟦ _ , stᵖ' , stᵍ' ⟧ᶜˢ}
  (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = begin
  getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ , stᵖ , stᵍ ⟧
    ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
        ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
  getCoin rwds-∪ˡ-decomp
    ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ  ⟩
  getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )
    ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
  getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ , stᵖ' , stᵍ' ⟧
    ∎
  where
  module ≡ᵉ = Eq.IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
  rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵ )

  rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
  rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)

  disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
  disj {a} a∈res a∈dom  = res-comp-dom a∈res (dom-single→single a∈dom)

  rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )ˢ
  rwds-∪ˡ≡sing-∪ˡ = ≡ᵉ.trans rwds-∪ˡ-∪
                            ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton'{m = rwds} x))
                                       (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )
CERT-pov (CERT-pool x) = refl
CERT-pov (CERT-vdel x) = refl

injOn : (wdls : Withdrawals)
        → ∀[ a ∈ dom (wdls ˢ) ] NetworkIdOf a ≡ NetworkId
        → InjectiveOn (dom (wdls ˢ)) RewardAddress.stake
injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
  cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

module Certs-Pov-lemmas
  -- TODO: prove the following assumption, used in roof of `CERTBASE-pov`.
  ( ≡ᵉ-getCoinˢ :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                   → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
  where
```
-->

**Lemma (`PRE-CERT`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `Γ`{.AgdaBound} : `CertEnv`{.AgdaRecord} be a certificate environment, and let
`s`{.AgdaBound}, `s'`{.AgdaBound} : `CertState`{.AgdaRecord} be certificate states such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} \_ `,PRE-CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound}.
Then, the value of `s`{.AgdaBound} is equal to the value of `s'`{.AgdaBound} plus the
value of the withdrawals in `Γ`{.AgdaBound}.  In other terms,

`getCoin`{.AgdaField} `s`{.AgdaBound} $≡$ `getCoin`{.AgdaField} `s'`{.AgdaBound} + `getCoin`{.AgdaField} (`Γ`{.AgdaBound} .`wdrls`{.AgdaField} ).

*Formally*.

```agda
    PRE-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → ∀[ a ∈ dom (CertEnv.wdrls Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s ⇀⦇ _ ,PRE-CERT⦈ s'
      → getCoin s ≡ getCoin s' + getCoin (CertEnv.wdrls Γ)
```

*Proof*.  (Click the "Show more Agda" button to reveal the proof.)

<!--
```agda

    PRE-CERT-pov  {Γ   = Γ}
                  {s   = cs}
                  {s'  = cs'}
                  validNetId
                  (CERT-pre {pp}{vs}{e}{dreps}{wdrls} (_ , wdrlsCC⊆rwds)) =
      let
        open DState (dState cs )
        open DState (dState cs') renaming (rewards to rewards')
        module ≡ᵉ       = Eq.IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
        wdrlsCC         = mapˢ (map₁ RewardAddress.stake) (wdrls ˢ)
        zeroMap         = constMap (mapˢ RewardAddress.stake (dom wdrls)) 0
        rwds-∪ˡ-decomp  = (rewards ∣ dom wdrlsCC ᶜ) ∪ˡ (rewards ∣ dom wdrlsCC)
      in
        begin
          getCoin rewards
            ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rewards
                ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                           (≡ᵉ.trans ∪-sym (res-ex-∪ (_∈? dom wdrlsCC))) ) ⟩
          getCoin rwds-∪ˡ-decomp
            ≡⟨ indexedSumᵛ'-∪ (rewards ∣ dom wdrlsCC ᶜ) (rewards ∣ dom wdrlsCC)
                              (disjoint-sym res-ex-disjoint) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin (rewards ∣ dom wdrlsCC )
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_)
               ( getCoin-cong (rewards ∣ dom wdrlsCC) wdrlsCC (res-subset{m = rewards} wdrlsCC⊆rwds) ) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrlsCC
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_) (≡ᵉ-getCoinˢ (wdrls ˢ) (injOn wdrls validNetId)) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrls
            ≡˘⟨ cong (_+ getCoin wdrls)
                ( begin
                  getCoin (zeroMap ∪ˡ rewards)
                    ≡⟨ ≡ᵉ-getCoin (zeroMap ∪ˡ rewards) (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                                  (res-decomp zeroMap rewards) ⟩
                  getCoin (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                    ≡⟨ indexedSumᵛ'-∪ zeroMap (rewards ∣ dom zeroMap ᶜ)
                                      (disjoint-sym res-comp-dom) ⟩
                  getCoin zeroMap + getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ cong (λ u → u + getCoin (rewards ∣ dom zeroMap ᶜ)) sumConstZero ⟩
                  0 + getCoin (rewards ∣ (dom zeroMap) ᶜ)
                    ≡⟨ +-identityˡ (getCoin (rewards ∣ dom zeroMap ᶜ)) ⟩
                  getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ ≡ᵉ-getCoin (rewards ∣ dom zeroMap ᶜ) (rewards ∣ dom wdrlsCC ᶜ)
                       ( res-comp-cong
                         ( ⊆-Transitive (proj₁ constMap-dom) (proj₂ dom-mapˡ≡map-dom)
                         , ⊆-Transitive (proj₁ dom-mapˡ≡map-dom) (proj₂ constMap-dom) ) ) ⟩
                  getCoin (rewards ∣ dom wdrlsCC ᶜ)
                    ∎ ) ⟩
          getCoin (zeroMap ∪ˡ rewards) + getCoin wdrls
            ∎
```
-->

**Lemma (`POST-CERT`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `Γ`{.AgdaBound} : `CertEnv`{.AgdaRecord} be a certificate environment, and let
`s`{.AgdaBound}, `s'`{.AgdaBound} : `CertState`{.AgdaRecord} be certificate states such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} \_ `,POST-CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound}.
Then, the value of `s`{.AgdaBound} is equal to the value of `s'`{.AgdaBound}.
In other terms,

`getCoin`{.AgdaField} `s`{.AgdaBound} $≡$ `getCoin`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
    POST-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → Γ ⊢ s ⇀⦇ _ ,POST-CERT⦈ s'
      → getCoin s ≡ getCoin s'
```

*Proof*.

```agda
    POST-CERT-pov CERT-post = refl
```

**Lemma (iteration of `CERT`{.AgdaOperator} rule preserves value).**

*Informally*. Let `l`{.AgdaBound} be a list of `DCerts`{.AgdaDatatype}, and let
`s₁`{.AgdaBound}, `sₙ`{.AgdaBound} be `CertStates`{.AgdaRecord} such that, starting
with `s₁`{.AgdaBound} and successively applying the `CERT`{.AgdaOperator} rule to with
`DCerts`{.AgdaDatatype} from the list `l`{.AgdaBound}, we obtain `sₙ`{.AgdaBound}.
Then, the value of `s₁`{.AgdaBound} is equal to the value of `sₙ`{.AgdaBound}.

*Formally*.

```agda
    sts-pov : {Γ : CertEnv} {s₁ sₙ : CertState} {sigs : List DCert}
      → RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γ s₁ sigs sₙ
      → getCoin s₁ ≡ getCoin sₙ
```

*Proof*.

```agda
    sts-pov (run-[] x) = POST-CERT-pov x
    sts-pov (run-∷ x xs) = trans (CERT-pov x) (sts-pov xs)
```
