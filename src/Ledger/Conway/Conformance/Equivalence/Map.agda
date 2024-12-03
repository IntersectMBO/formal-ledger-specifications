{-# OPTIONS --allow-unsolved-metas #-}

module Ledger.Conway.Conformance.Equivalence.Map where

open import Ledger.Prelude
open import Axiom.Set.Properties th
-- import Relation.Binary.Reasoning.Setoid as SetoidReasoning
-- open module SetReasoning {A} = SetoidReasoning (≡ᵉ-Setoid {A})
open import Relation.Binary.Bundles
open module SetSetoid {A} = Setoid (≡ᵉ-Setoid {A}) using () renaming (refl to ≈-refl; trans to infixr 1 _⟨≈⟩_)

module _ {A B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : CommutativeMonoid _ _ B ⦄ where

  opaque
    -- unfolding List-Model List-Modelᵈ to-sp

    ∪⁺-cong-l : (m m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → m ∪⁺ m₁ ≡ᵐ m ∪⁺ m₂
    ∪⁺-cong-l m m₁ m₂ = {!!}

    ∪⁺-cong-r : (m m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → m₁ ∪⁺ m ≡ᵐ m₂ ∪⁺ m
    ∪⁺-cong-r m m₁ m₂ = {!!}

    ∪⁺-id-r : (m : A ⇀ B) → m ∪⁺ ∅ ≡ᵐ m
    ∪⁺-id-r m = {!!}

    restrict-cong : (m₁ m₂ : A ⇀ B) (ks : ℙ A) → m₁ ≡ᵐ m₂ → (m₁ ∣ ks ᶜ) ≡ᵐ (m₂ ∣ ks ᶜ)
    restrict-cong m₁ m₂ ks eq = {!!}

  module _ {P : A × B → Type} ⦃ _ : P ⁇¹ ⦄ where

    opaque
      -- unfolding List-Model List-Modelᵈ to-sp

      filterᵐ-∪⁺-distr : (m₁ m₂ : A ⇀ B) → filterᵐ P (m₁ ∪⁺ m₂) ≡ᵐ filterᵐ P m₁ ∪⁺ filterᵐ P m₂
      filterᵐ-∪⁺-distr m₁ m₂ = {!!}

      filterᵐ-singleton-true : ∀ {k v} → P (k , v) → filterᵐ P ❴ k , v ❵ ≡ᵐ ❴ k , v ❵
      filterᵐ-singleton-true p = {!!}

      filterᵐ-singleton-false : ∀ {k v} → ¬ P (k , v) → filterᵐ P ❴ k , v ❵ ≡ᵐ ∅
      filterᵐ-singleton-false p = {!!}

      filterᵐ-restrict : ∀ m {ks} → filterᵐ P (m ∣ ks ᶜ) ≡ᵐ filterᵐ P m ∣ ks ᶜ
      filterᵐ-restrict m = {!!}

      restrict-singleton-filterᵐ-false : ∀ m {k} → (∀ {v} → ¬ P (k , v)) → filterᵐ P m ∣ ❴ k ❵ ᶜ ≡ᵐ filterᵐ P m
      restrict-singleton-filterᵐ-false m ¬p = {!!}

      filterᵐ-∈ : ∀ m {k v} → P (k , v) → (k , v) ∈ m → (k , v) ∈ filterᵐ P m
      filterᵐ-∈ m p i = {!!}

    opaque
      lem-add-included : ∀ {m k v} → P (k , v) → filterᵐ P (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P m ∪⁺ ❴ k , v ❵
      lem-add-included p =  filterᵐ-∪⁺-distr _ _
                        ⟨≈⟩ ∪⁺-cong-l _ _ _ (filterᵐ-singleton-true p)

      lem-add-excluded : ∀ {m k v} → ¬ P (k , v) → filterᵐ P (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P m
      lem-add-excluded p =  filterᵐ-∪⁺-distr _ _
                        ⟨≈⟩ ∪⁺-cong-l _ _ ∅ (filterᵐ-singleton-false p)
                        ⟨≈⟩ ∪⁺-id-r _

      lem-del-excluded : ∀ m {k} → (∀ {v} → ¬ P (k , v)) → filterᵐ P (m ∣ ❴ k ❵ ᶜ) ≡ᵐ filterᵐ P m
      lem-del-excluded m ¬p = filterᵐ-restrict m ⟨≈⟩ restrict-singleton-filterᵐ-false m ¬p
