<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.PoV (gs : _) (open GovStructure gs) where
```
-->

<!--
```agda

open import Ledger.Conway.Specification.Certs gs
open import Ledger.Conway.Specification.Certs.Properties.PoVLemmas gs
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

module Certs-PoV  ( indexedSumᵛ'-∪' :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                              → disjoint (dom m) (dom m')
                              → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
    -- TODO: prove some or all of the following assumptions, used in roof of `CERTBASE-pov`.
    ( sumConstZero'    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
    ( res-decomp'      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
    ( getCoin-cong'    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                         → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
    ( ≡ᵉ-getCoinˢ'     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                         → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
    where
    open Certs-Pov-lemmas indexedSumᵛ'-∪' sumConstZero' res-decomp' getCoin-cong' ≡ᵉ-getCoinˢ'
```
-->


<a id="thm:CERTS-PoV"></a>
**Theorem (The `CERTS`{.AgdaOperator} rule preserves value).**

*Informally*.

Let `l`{.AgdaBound} be a list of `DCerts`{.AgdaDatatype}, and let `s₁`{.AgdaBound},
`sₙ`{.AgdaBound} be `CertStates`{.AgdaRecord} such that
`s₁`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `l`{.AgdaBound} `,CERTS⦈`{.AgdaDatatype} `sₙ`{.AgdaBound}.
Then, the value of `s₁`{.AgdaBound} is equal to the value of `sₙ`{.AgdaBound} plus
the value of the withdrawals in `Γ`{.AgdaBound}.

*Formally*.

```agda
    CERTS-pov : {Γ : CertEnv} {s₁ sₙ  : CertState}
      → ∀[ a ∈ dom (WithdrawalsOf Γ) ] NetworkIdOf a ≡ NetworkId
      → Γ ⊢ s₁ ⇀⦇ l ,CERTS⦈ sₙ
      → getCoin s₁ ≡ getCoin sₙ + getCoin (WithdrawalsOf Γ)
```

*Proof*.

```agda
    CERTS-pov {Γ = Γ} validNetId (run (pre-cert , certs)) =
      trans  (PRE-CERT-pov validNetId pre-cert)
             (cong (_+ getCoin (WithdrawalsOf Γ)) (sts-pov certs))
```
