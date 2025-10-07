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
open import Relation.Binary using (IsEquivalence)
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

getCoin-singleton : ⦃ _ : DecEq A ⦄ {(a , c) : A × Coin} → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
getCoin-singleton = indexedSum-singleton' {M = Coin} (finiteness _)

∪ˡsingleton∈dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                → a ∈ dom m → CoinOf (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ CoinOf m
∪ˡsingleton∈dom m {(a , c)} a∈dom = ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ {m = m} a∈dom)

module _  ( indexedSumᵛ'-∪ :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                              → disjoint (dom m) (dom m')
                              → CoinOf (m ∪ˡ m') ≡ CoinOf m + CoinOf m' )
  where
  open ≡-Reasoning
  open Equivalence

  ∪ˡsingleton∉dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                   → a ∉ dom m → CoinOf (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ CoinOf m + c
  ∪ˡsingleton∉dom m {(a , c)} a∉dom = begin
    CoinOf (m ∪ˡ ❴ a , c ❵ᵐ)
      ≡⟨ indexedSumᵛ'-∪ m ❴ a , c ❵ᵐ
         ( λ x y → a∉dom (subst (_∈ dom m) (from ∈-dom-singleton-pair y) x) ) ⟩
    CoinOf m + CoinOf ❴ a , c ❵ᵐ
      ≡⟨ cong (CoinOf m +_) getCoin-singleton ⟩
    CoinOf m + c
      ∎

  ∪ˡsingleton0≡ : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {a : A} → CoinOf (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ CoinOf m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton∈dom m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton∉dom m a∉dom) (+-identityʳ (CoinOf m))
```
-->


**Lemma (The `CERT`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `s`{.AgdaBound}, `s'`{.AgdaBound} be `CertState`{.AgdaRecord}s such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `dcert`{.AgdaBound} `,CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound} for
some `dcert`{.AgdaBound} : `DCert`{.AgdaDatatype}. Then,
`CoinOf`{.AgdaField} `s`{.AgdaBound} $≡$ `CoinOf`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
  CERT-pov : {Γ : CertEnv} {s s'  : CertState}
    → Γ ⊢ s ⇀⦇ dCert ,CERT⦈ s'
    → CoinOf s ≡ CoinOf s'
```

*Proof*.

```agda
  CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov (CERT-deleg (DELEG-reg {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov {s = ⟦ _ , stᵖ , stᵍ ⟧ᶜˢ}{⟦ _ , stᵖ' , stᵍ' ⟧ᶜˢ}
    (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = begin
    CoinOf ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ , stᵖ , stᵍ ⟧
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
          ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    CoinOf rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ  ⟩
    CoinOf ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    CoinOf ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ , stᵖ' , stᵍ' ⟧
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
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
          → InjectiveOn (dom (wdls ˢ)) RwdAddr.stake
  injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
    cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

  module Certs-Pov-lemmas
    -- TODO: prove some or all of the following assumptions, used in roof of `CERTBASE-pov`.
    ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → CoinOf (constMap X 0) ≡ 0 )
    ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
    ( CoinOf-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                         → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
    ( ≡ᵉ-CoinOfˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                         → InjectiveOn (dom s) f → CoinOf (mapˢ (map₁ f) s) ≡ CoinOf s )
    where
```


**Lemma (`PRE-CERT`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `Γ`{.AgdaBound} : `CertEnv`{.AgdaRecord} be a certificate environment, and let
`s`{.AgdaBound}, `s'`{.AgdaBound} : `CertState`{.AgdaRecord} be certificate states such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} \_ `,PRE-CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound}.
Then, the value of `s`{.AgdaBound} is equal to the value of `s'`{.AgdaBound} plus the
value of the withdrawals in `Γ`{.AgdaBound}.  In other terms,

`CoinOf`{.AgdaField} `s`{.AgdaBound} $≡$ `CoinOf`{.AgdaField} `s'`{.AgdaBound} + `CoinOf`{.AgdaField} (`Γ`{.AgdaBound} .`wdrls`{.AgdaField} ).

*Formally*.

```agda
    PRE-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → ∀[ a ∈ dom (CertEnv.wdrls Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s ⇀⦇ _ ,PRE-CERT⦈ s'
      → CoinOf s ≡ CoinOf s' + CoinOf (CertEnv.wdrls Γ)
```

*Proof*.

```agda

    PRE-CERT-pov  {Γ   = Γ}
                  {s   = cs}
                  {s'  = cs'}
                  validNetId
                  (CERT-pre {pp}{vs}{e}{dreps}{wdrls} (_ , wdrlsCC⊆rwds)) =
      let
        open DState (dState cs )
        open DState (dState cs') renaming (rewards to rewards')
        module ≡ᵉ       = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
        wdrlsCC         = mapˢ (map₁ RwdAddr.stake) (wdrls ˢ)
        zeroMap         = constMap (mapˢ RwdAddr.stake (dom wdrls)) 0
        rwds-∪ˡ-decomp  = (rewards ∣ dom wdrlsCC ᶜ) ∪ˡ (rewards ∣ dom wdrlsCC)
      in
        begin
          CoinOf rewards
            ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rewards
                ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                           (≡ᵉ.trans ∪-sym (res-ex-∪ (_∈? dom wdrlsCC))) ) ⟩
          CoinOf rwds-∪ˡ-decomp
            ≡⟨ indexedSumᵛ'-∪ (rewards ∣ dom wdrlsCC ᶜ) (rewards ∣ dom wdrlsCC)
                              (disjoint-sym res-ex-disjoint) ⟩
          CoinOf (rewards ∣ dom wdrlsCC ᶜ) + CoinOf (rewards ∣ dom wdrlsCC )
            ≡⟨ cong (CoinOf (rewards ∣ dom wdrlsCC ᶜ) +_)
               ( CoinOf-cong (rewards ∣ dom wdrlsCC) wdrlsCC (res-subset{m = rewards} wdrlsCC⊆rwds) ) ⟩
          CoinOf (rewards ∣ dom wdrlsCC ᶜ) + CoinOf wdrlsCC
            ≡⟨ cong (CoinOf (rewards ∣ dom wdrlsCC ᶜ) +_) (≡ᵉ-CoinOfˢ (wdrls ˢ) (injOn wdrls validNetId)) ⟩
          CoinOf (rewards ∣ dom wdrlsCC ᶜ) + CoinOf wdrls
            ≡˘⟨ cong (_+ CoinOf wdrls)
                ( begin
                  CoinOf (zeroMap ∪ˡ rewards)
                    ≡⟨ ≡ᵉ-getCoin (zeroMap ∪ˡ rewards) (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                                  (res-decomp zeroMap rewards) ⟩
                  CoinOf (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                    ≡⟨ indexedSumᵛ'-∪ zeroMap (rewards ∣ dom zeroMap ᶜ)
                                      (disjoint-sym res-comp-dom) ⟩
                  CoinOf zeroMap + CoinOf (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ cong (λ u → u + CoinOf (rewards ∣ dom zeroMap ᶜ)) sumConstZero ⟩
                  0 + CoinOf (rewards ∣ (dom zeroMap) ᶜ)
                    ≡⟨ +-identityˡ (CoinOf (rewards ∣ dom zeroMap ᶜ)) ⟩
                  CoinOf (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ ≡ᵉ-getCoin (rewards ∣ dom zeroMap ᶜ) (rewards ∣ dom wdrlsCC ᶜ)
                       ( res-comp-cong
                         ( ⊆-Transitive (proj₁ constMap-dom) (proj₂ dom-mapˡ≡map-dom)
                         , ⊆-Transitive (proj₁ dom-mapˡ≡map-dom) (proj₂ constMap-dom) ) ) ⟩
                  CoinOf (rewards ∣ dom wdrlsCC ᶜ)
                    ∎ ) ⟩
          CoinOf (zeroMap ∪ˡ rewards) + CoinOf wdrls
            ∎
```


**Lemma (`POST-CERT`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `Γ`{.AgdaBound} : `CertEnv`{.AgdaRecord} be a certificate environment, and let
`s`{.AgdaBound}, `s'`{.AgdaBound} : `CertState`{.AgdaRecord} be certificate states such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} \_ `,POST-CERT⦈`{.AgdaDatatype} `s'`{.AgdaBound}.
Then, the value of `s`{.AgdaBound} is equal to the value of `s'`{.AgdaBound}.
In other terms,

`CoinOf`{.AgdaField} `s`{.AgdaBound} $≡$ `CoinOf`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
    POST-CERT-pov : {Γ : CertEnv} {s s' : CertState}
      → Γ ⊢ s ⇀⦇ _ ,POST-CERT⦈ s'
      → CoinOf s ≡ CoinOf s'
```

*Proof*.

```agda
    POST-CERT-pov CERT-post = refl
```

**Lemma (iteration of `CERT`{.AgdaOperator} rule preserves value).**

*Informally*. Let `l`{.AgdaBound} be a list of `DCert`{.AgdaDatatype}s, and let
`s₁`{.AgdaBound}, `sₙ`{.AgdaBound} be `CertState`{.AgdaRecord}s such that, starting
with `s₁`{.AgdaBound} and successively applying the `CERT`{.AgdaOperator} rule to with
`DCert`{.AgdaDatatype}s from the list `l`{.AgdaBound}, we obtain `sₙ`{.AgdaBound}.
Then, the value of `s₁`{.AgdaBound} is equal to the value of `sₙ`{.AgdaBound}.

*Formally*.

```agda
    sts-pov : {Γ : CertEnv} {s₁ sₙ : CertState} {sigs : List DCert}
      → RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γ s₁ sigs sₙ
      → CoinOf s₁ ≡ CoinOf sₙ
```

*Proof*.

```agda
    sts-pov (run-[] x) = POST-CERT-pov x
    sts-pov (run-∷ x xs) = trans (CERT-pov x) (sts-pov xs)
```
