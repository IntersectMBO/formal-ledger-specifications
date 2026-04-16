---
source_branch: master
source_path: src/Ledger/Prelude.lagda.md
---

```agda
{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public
  hiding (∃⁇)
open import Prelude.Init public
  using (∃⁇)

open import Ledger.Prelude.Base public
import Data.List

open import Class.HasAdd public
open import stdlib-classes.Class.HasCast public
open import Class.HasOrder public
open import Class.ToBool public
open import Interface.ComputationalRelation public
open import Interface.TypeClasses.Hashable public
open import Interface.TypeClasses.HasSubset public
open import Interface.TypeClasses.HasSubtract public
open import Interface.TypeClasses.HasSubtract.Instances public
open import Ledger.Prelude.Instances public
open import Ledger.Prelude.HasCoin public
open import Tactic.Defaults public
open import Tactic.Derive.DecEq public
open import Tactic.Inline public
open import MyDebugOptions public
open import Prelude.STS.GenPremises public
open import Data.List.Membership.Propositional.Properties using (∈-deduplicate⁻)
open import Relation.Binary using (IsEquivalence)

open import abstract-set-theory.FiniteSetTheory public
  renaming (_⊆_ to _⊆ˢ_)
open import abstract-set-theory.Axiom.Set.Map.Extra th public

open import Axiom.Set.Properties th

import Data.Integer as ℤ
open import Data.Integer using (0ℤ) public
import Data.Rational as ℚ
open import Data.Rational using (ℚ)

open import Data.Nat.Properties using (+-identityʳ)


dec-de-morgan : ∀{P Q : Type} → ⦃ P ⁇ ⦄ → ¬ (P × Q) → ¬ P ⊎ ¬ Q
dec-de-morgan ⦃ ⁇ no ¬p ⦄ ¬pq = inj₁ ¬p
dec-de-morgan ⦃ ⁇ yes p ⦄ ¬pq = inj₂ λ q → ¬pq (p , q)

setToMap : ∀ {A B : Type} → ⦃ DecEq A ⦄ → ℙ (A × B) → A ⇀ B
setToMap = fromListᵐ ∘ setToList

-- division of natural numbers with completion by 0.
opaque
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = ℚ.0ℚ
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y

-- Division of rational numbers with completion by 0.
_÷₀_ : ℚ → ℚ → ℚ
_÷₀_ x y = case y ≟ ℚ.0ℚ of λ where
  (yes _) → ℚ.0ℚ
  (no y≢0) → let instance nonZero-y = ℚ.≢-nonZero y≢0 in x ℚ.÷ y

⟦_⟧ : ∀ {A B : Type} ⦃ f : HasCast A B ⦄ → A → B
⟦_⟧ ⦃ f = f ⦄ = f.cast
  where module f = HasCast f

∣_∣ : ∀ {A B : Type} ⦃ f : HasCast A B ⦄ → A → B
∣_∣ ⦃ f = f ⦄ = f.cast
  where module f = HasCast f

infix 5 ⟦_⟧
infix 6 ∣_∣

module Filter where
  filter : ∀ {a} {p} {A : Type a} → (P : Pred A p) → ⦃ P ⁇¹ ⦄ → List A → List A
  filter P = Data.List.filter ¿ P ¿¹

lookupHash : ∀ {T H : Type} ⦃ _ : DecEq H ⦄ ⦃ _ : Hashable T H ⦄ → H → ℙ T → Maybe T
lookupHash h s =
  if h ∈ mapˢ proj₁ (m ˢ) then just (lookupᵐ m h) else nothing
  where m = setToMap (mapˢ < hash , id > s)

Is-∅ : {A : Type} → ℙ A → Type
Is-∅ X = Is-[] (setToList X)

concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
concatMapˡ f as = proj₁ $ unions (fromList (map f as))

indexedSumL-proj₂-zero : ∀ {A : Type} (l : List (A × Coin))
    → (∀ {x} → x ∈ˡ l → proj₂ x ≡ 0)
    → indexedSumL {M = Coin} proj₂ l ≡ 0
indexedSumL-proj₂-zero [] _ = refl
indexedSumL-proj₂-zero ((a , v) ∷ xs) all-zero =
    trans (cong (_+ indexedSumL proj₂ xs) (all-zero (Prelude.Init.here refl)))
          (indexedSumL-proj₂-zero xs (all-zero ∘ Prelude.Init.there))

module _ {A : Type} ⦃ _ : DecEq A ⦄ where

  getCoin-singleton : {(a , c) : A × Coin} → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
  getCoin-singleton = indexedSum-singleton' {M = Coin} (finiteness _)

  ≡ᵉ-getCoin : (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
  ≡ᵉ-getCoin s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'

  getCoin-cong : (s : A ⇀ Coin) (s' : ℙ (A × Coin))
    → s ˢ ≡ᵉ s' → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s'
  getCoin-cong s s' eq = indexedSum-cong {f = proj₂} {x = (s ˢ) ᶠˢ} {y = s' ᶠˢ} eq

  indexedSumᵛ'-∪ : (m m' : A ⇀ Coin) → disjoint (dom m) (dom m')
    → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m'
  indexedSumᵛ'-∪ m m' disj =
    trans (indexedSumᵐ-∪ˡ-∪ˡᶠ m m')
          (indexedSumᵐ-∪ {X = m ᶠᵐ} {m' ᶠᵐ} {f = proj₂} disj)


  res-decomp : (m m' : A ⇀ Coin) → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ
  res-decomp m m' = ∪-cong (≡ᵉ.refl {x = m ˢ}) (≡ᵉ.sym (filterᵐ-idem {m = m'}))
    where module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {A × Coin})

  ∪ˡsingleton∈dom : (m : A ⇀ Coin) {(a , c) : A × Coin}
    → a ∈ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton∈dom m {(a , c)} a∈dom = ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ {m = m} a∈dom)

  ∪ˡsingleton∉dom : (m : A ⇀ Coin) {(a , c) : A × Coin}
    → a ∉ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
  ∪ˡsingleton∉dom m {(a , c)} a∉dom =
    trans (indexedSumᵛ'-∪ m ❴ a , c ❵ᵐ ( λ x y → a∉dom (subst (_∈ dom m) (from ∈-dom-singleton-pair y) x) ))
          (cong (getCoin m +_) getCoin-singleton)
    where open Equivalence

  ∪ˡsingleton0≡ : (m : A ⇀ Coin) {a : A} → getCoin (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton∈dom m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton∉dom m a∉dom) (+-identityʳ (getCoin m))

opaque
  unfolding List-Model finiteness

  sumConstZero : {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0
  sumConstZero {A} {X} = indexedSumL-proj₂-zero (deduplicate _≟_ l) all-zero-dedup
    where
    open Equivalence

    fin : finite (mapˢ (_, 0) X)
    fin = finiteness (mapˢ (_, 0) X)

    l : List (A × Coin)
    l   = fin .proj₁

    h : ∀ {a} → a ∈ (mapˢ (_, 0) X) ⇔ a ∈ˡ l
    h   = fin .proj₂

    all-zero : ∀ {x} → x ∈ˡ l → proj₂ x ≡ 0
    all-zero x∈l with from ∈-map (from h x∈l)
    ... | (a , refl , _) = refl

    all-zero-dedup : ∀ {x} → x ∈ˡ deduplicate _≟_ l → proj₂ x ≡ 0
    all-zero-dedup x∈dedup = all-zero (∈-deduplicate⁻ (DecEq._≟_ DecEq-×′) l x∈dedup)

opaque
  unfolding setToList List-Model

  setToList-∈ : ∀ {A : Type} {a : A} {X : ℙ A} → a ∈ˡ setToList X → a ∈ X
  setToList-∈ = id
```
