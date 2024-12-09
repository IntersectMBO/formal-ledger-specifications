{-# OPTIONS --allow-unsolved-metas #-}

module Ledger.Conway.Conformance.Equivalence.Map where

open import Ledger.Prelude
open import Axiom.Set.Properties th
open import Axiom.Set.Map.Dec

import Algebra.Definitions as AlgDefs
-- Cancellative _•_ = (LeftCancellative _•_) × (RightCancellative _•_)

open import Data.List.Relation.Unary.Any using (Any)
open import Data.These using (These; this; that; these; fold)
open import Data.Product using (swap)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Relation.Binary using (IsEquivalence; _Preserves_⟶_)
open import Relation.Binary.Bundles
open module SetSetoid {A} = Setoid (≡ᵉ-Setoid {A}) using () renaming (refl to ≈-refl; trans to infixr 1 _⟨≈⟩_)
open import Data.Product.Properties using (×-≡,≡←≡; ×-≡,≡→≡)

open Any

module _  {A B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ ⦃ _ : CommutativeMonoid _ _ B ⦄ where
  opaque
    -- unfolding List-Model List-Modelᵈ to-sp

    open Equivalence

    ------------------------------------------------------------------------------------------------
    -- We should probably write helper functions to make ∪⁺ easier to reason about.
    --
    F[_,_] : (m₁ m₂ : A ⇀ B) → Σ A (λ x → x ∈ dom (m₁ ˢ) ∪ dom (m₂ ˢ)) → A × B
    F[ m₁ , m₂ ] = λ (x , x∈) → x , (fold id id _◇_) (unionThese m₁ m₂ x x∈)

    _⊕_ : (m₁ m₂ : A ⇀ B) → ℙ (A × B)
    m₁ ⊕ m₂ = mapˢ F[ m₁ , m₂ ] (incl-set (dom (m₁ ˢ) ∪ dom (m₂ ˢ)))

    ∪⁺-def : {m₁ m₂ : A ⇀ B} {x : A × B} → x ∈ (m₁ ∪⁺ m₂) ˢ ⇔ x ∈ m₁ ⊕ m₂
    ∪⁺-def = mk⇔ id id
    ------------------------------------------------------------------------------------------------

    resᶜ-dom∉⁻ : ∀ m {ks}{a : A}{b : B} → (a , b) ∈ (m ∣ ks ᶜ) ˢ → ((a , b) ∈ m ˢ × a ∉ ks)
    resᶜ-dom∉⁻ m x = (ex-⊆ x) , proj₁ (∈-resᶜ-dom⁻ (∈-dom x))

    resᶜ-dom∉⁺ : ∀ m {ks}{a : A}{b : B} → ((a , b) ∈ m ˢ × a ∉ ks) → (a , b) ∈ (m ∣ ks ᶜ) ˢ
    resᶜ-dom∉⁺ m = to ∈-filter ∘ swap

    cong-⊆⇒congᵐ : {f : (A ⇀ B) → (A ⇀ B)} → f Preserves _⊆_ ⟶ _⊆_ → f Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    cong-⊆⇒congᵐ h m≡ᵐm' = h (proj₁ m≡ᵐm') , h (proj₂ m≡ᵐm')

    deconstruct-∪⁺ : {m m₁ m₂ : A ⇀ B} {a : A}
      → (a∈₁ : a ∈ dom (m ˢ) ∪ dom (m₁ ˢ))
      → (a∈₂ : a ∈ dom (m ˢ) ∪ dom (m₂ ˢ))
      → m₁ ≡ᵐ m₂
      → (fold id id _◇_) (unionThese m m₁ a a∈₁) ≡ (fold id id _◇_) (unionThese m m₂ a a∈₂)

    deconstruct-∪⁺ {m} {m₁} {m₂} {a} a∈₁ a∈₂ m₁≡m₂ with a ∈? dom (m ˢ) | a ∈? dom (m₁ ˢ) | a ∈? dom (m₂ ˢ)

    ... | yes a∈m | yes a∈m₁ | yes a∈m₂ = cong (λ (u : B) → (lookupᵐ m a) ◇ u) (proj₂ m₂
                                          (proj₁ m₁≡m₂ (proj₂ $ from dom∈ a∈m₁))  -- : (a , lookupᵐ m₁ a) ∈ (m₂ ˢ)
                                          (proj₂ (from dom∈ a∈m₂)))               -- : (a , lookupᵐ m₂ a) ∈ (m₂ ˢ)

    ... | no  a∉m | yes a∈m₁ | yes a∈m₂ = proj₂ m₂ (proj₁ m₁≡m₂ (proj₂ (from dom∈ a∈m₁)))
                                                   (proj₂ (from dom∈ a∈m₂))
    ... | yes a∈m | no  a∉m₁ | no a∉m₂ = refl
    ... | _ | yes a∈m₁ | no a∉m₂ = ⊥-elim (a∉m₂ (dom⊆ (proj₁ m₁≡m₂) a∈m₁))
    ... | _ | no  a∉m₁ | yes a∈m₂ = ⊥-elim (a∉m₁ (dom⊆ (proj₂ m₁≡m₂) a∈m₂))
    ... | no  a∉m | no  a∉m₁ | no a∉m₂ with from ∈-∪ a∈₁
    ... | inj₁ a∈m = ⊥-elim (a∉m a∈m)
    ... | inj₂ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)


    ∪⁺-cong-l' : {m : A ⇀ B} → (λ m' → m ∪⁺ m') Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-l' {m} {m₁} {m₂} m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) .proj₁ {(a , b)} ab∈ with from ∈-map ab∈
    ... | (.a , a∈) , refl , s = to (∈-map {f = F[ m , m₂ ]}) ((a , a∈') , ≡F , ∈inclset)
      where
      a∈-∪dom₁ : a ∈ dom (m ˢ) ∪ dom (m₁ ˢ)
      a∈-∪dom₁ = dom∪⁺⊆∪dom (to dom∈ (b , ab∈))

      dom₁⊆dom₂ : dom (m₁ ˢ) ⊆ dom (m₂ ˢ)
      dom₁⊆dom₂ = dom⊆ m₁⊆m₂

      a∈' : a ∈ dom (m ˢ) ∪ dom (m₂ ˢ)
      a∈' = ∪-cong-⊆ id dom₁⊆dom₂ a∈-∪dom₁

      ≡F : (a , b) ≡ F[ m , m₂ ] (a , a∈')
      ≡F = ×-≡,≡→≡ (refl , deconstruct-∪⁺ a∈ a∈' m₁≡m₂)  -- deconstruct-∪⁺ a∈ a∈' m₁≡m₂ : b ≡ (fold id id _◇_) (unionThese m m₂ a a∈')
                                                         --                       i.e., : b≡b'
      ∈inclset : (a , a∈') ∈ (incl-set (dom (m ˢ) ∪ dom (m₂ ˢ)))
      ∈inclset = to (∈-mapPartial {f = incl-set' (dom (m ˢ) ∪ dom (m₂ ˢ))}) (a , (a∈' , {!!}))

    ∪⁺-cong-l' {m} {m₁} {m₂} m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) .proj₂ = {!!}

    ∪⁺-cong-l : (m m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → m ∪⁺ m₁ ≡ᵐ m ∪⁺ m₂
    ∪⁺-cong-l m m₁ m₂ = ∪⁺-cong-l'

    ∪⁺-cong-r' : {m : A ⇀ B} → (λ m' → m' ∪⁺ m) Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-r' {m} = {!!}

    ∪⁺-cong-r : (m m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → m₁ ∪⁺ m ≡ᵐ m₂ ∪⁺ m
    ∪⁺-cong-r m m₁ m₂ = ∪⁺-cong-r'

    ∪⁺-id-r : (m : A ⇀ B) → m ∪⁺ ∅ ≡ᵐ m
    ∪⁺-id-r m = {!!}

    restrict-cong : (m₁ m₂ : A ⇀ B) (ks : ℙ A) → m₁ ≡ᵐ m₂ → (m₁ ∣ ks ᶜ) ≡ᵐ (m₂ ∣ ks ᶜ)
    restrict-cong m₁ m₂ ks (m₁⊆m₂ , _) .proj₁ ab∈ with resᶜ-dom∉⁻ m₁ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₂ (m₁⊆m₂ ab∈ , a∉)
    restrict-cong m₁ m₂ ks (m₁⊆m₂ , m₂⊆m₁) .proj₂ ab∈ with resᶜ-dom∉⁻ m₂ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₁ (m₂⊆m₁ ab∈ , a∉)

  module _ {P : A × B → Type} ⦃ _ : P ⁇¹ ⦄ where

    opaque
      -- unfolding List-Model List-Modelᵈ to-sp

      open Equivalence

      -- filterᵐ-∪⁺-distr : (m₁ m₂ : A ⇀ B) → filterᵐ P (m₁ ∪⁺ m₂) ≡ᵐ filterᵐ P m₁ ∪⁺ filterᵐ P m₂
      -- filterᵐ-∪⁺-distr m₁ m₂ = {!!}
      --
      -- `filterᵐ-∪⁺-distr` is false!
      -- Counter-example:
      -- Suppose `m₁ˢ = m₂ˢ = {(0, 1)}`, `P (0, 1)`, and `¬ P (0, 2)`.
      -- Then `m₁ ∪⁺ m₂ ≡ {(0, 2)}` so (lhs) `filterᵐ P (m₁ ∪⁺ m₂)` is empty,
      -- but `(filterᵐ P m₁)ˢ ≡ (filterᵐ P m₂)ˢ = {(0, 1)}` so (rhs) `filterᵐ P m₁ ∪⁺ filterᵐ P m₂` contains {(0, 2)}.



      filterᵐ-singleton-true : ∀ {k v} → P (k , v) → filterᵐ P ❴ k , v ❵ ≡ᵐ ❴ k , v ❵
      filterᵐ-singleton-true p .proj₁ = proj₂ ∘ (from ∈-filter)
      filterᵐ-singleton-true {k}{v} p .proj₂ {a} x = to ∈-filter (subst P (sym (from ∈-singleton x)) p , x)

      filterᵐ-singleton-false : ∀ {k v} → ¬ P (k , v) → filterᵐ P ❴ k , v ❵ ≡ᵐ ∅
      filterᵐ-singleton-false ¬p .proj₁ x =
        ⊥-elim $ ¬p $ subst P (from ∈-singleton $ proj₂ (from ∈-filter x)) (proj₁ $ from ∈-filter x)
      filterᵐ-singleton-false _ .proj₂ = ⊥-elim ∘ ∉-∅

      filterᵐ-restrict : ∀ m {ks} → filterᵐ P (m ∣ ks ᶜ) ≡ᵐ filterᵐ P m ∣ ks ᶜ

      -- I'm sure there's a slicker way to prove this; the proof here is straight-forward.
      filterᵐ-restrict m {ks} .proj₁ {(a , b)} h = Goal
        where
        ξ : P (a , b) × (a , b) ∈ (m ∣ ks ᶜ)ˢ
        ξ = from ∈-filter h

        ξ' : (a , b) ∈ m ˢ × a ∉ ks
        ξ' = resᶜ-dom∉⁻ m {ks}{a}{b} (proj₂ ξ)

        Goal : (a , b) ∈ (filterᵐ P m ∣ ks ᶜ) ˢ
        Goal = resᶜ-dom∉⁺ (filterᵐ P m) ((to ∈-filter ((proj₁ ξ) , (proj₁ ξ'))) , (proj₂ ξ'))

      filterᵐ-restrict m {ks} .proj₂ {(a , b)} h = Goal
        where
        ξ : (a , b) ∈ ((filterᵐ P m) ˢ) × a ∉ ks
        ξ = resᶜ-dom∉⁻ (filterᵐ P m) {ks}{a}{b} h

        ξ' : P (a , b) × (a , b) ∈ m ˢ
        ξ' = from ∈-filter (proj₁ ξ)

        Goal : (a , b) ∈ (filterᵐ P (m ∣ ks ᶜ))ˢ
        Goal = to ∈-filter ((proj₁ ξ') , (resᶜ-dom∉⁺ m ((proj₂ ξ') , (proj₂ ξ))))


      open SetoidReasoning (≡ᵉ-Setoid{Σ A (λ x → B)})
      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Σ A (λ x → B)})

      ∈-filter-res- : {m : A ⇀ B} {x : A × B} {k : A} → x ∈ (filterᵐ P m ∣ ❴ k ❵ˢ) ˢ → P x × ∃[ b ] x ≡ (k , b)
      ∈-filter-res- {m} x∈ = (proj₁ (from ∈-filter (res-⊆ x∈))) , (res-singleton''{m = filterᵐ P m} x∈)

      restrict-singleton-filterᵐ-false : ∀ m {k} → (∀ {v} → ¬ P (k , v)) → filterᵐ P m ∣ ❴ k ❵ ᶜ ≡ᵐ filterᵐ P m
      restrict-singleton-filterᵐ-false m {k} ¬p = ≡ᵉ.sym (begin
        (filterᵐ P m)ˢ
          ≈⟨ ≡ᵉ.sym (res-ex-∪ Dec-∈-singleton) ⟩
        ((filterᵐ P m ∣ ❴ k ❵ˢ) ˢ) ∪ ((filterᵐ P m ∣ ❴ k ❵ˢ ᶜ) ˢ)
          ≈⟨ ∪-cong ¬P→res-∅ ≡ᵉ.refl ⟩
        (∅ ˢ) ∪ ((filterᵐ P m ∣ ❴ k ❵ˢ ᶜ) ˢ)
          ≈⟨ ∪-identityˡ _ ⟩
        (filterᵐ P m ∣ ❴ k ❵ˢ ᶜ) ˢ
          ∎)
          where
          ¬P→res-∅ :  (filterᵐ P m ∣ ❴ k ❵)ˢ ≡ᵉ (∅ᵐ ˢ)
          ¬P→res-∅ .proj₁ {a} x with ∈-filter-res- {m} x
          ... | px , b , refl = ⊥-elim (¬p {b} px)
          ¬P→res-∅ .proj₂ = ⊥-elim ∘ ∉-∅

      filterᵐ-∈ : ∀ m {k v} → P (k , v) → (k , v) ∈ m → (k , v) ∈ filterᵐ P m
      filterᵐ-∈ m = curry $ to ∈-filter

    opaque
      lem-add-included : ∀ {m k v} → P (k , v) → filterᵐ P (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P m ∪⁺ ❴ k , v ❵
      lem-add-included p = {!!}
      -- filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l _ _ _ (filterᵐ-singleton-true p)
      -- (`filterᵐ-∪⁺-distr` is false)

      lem-add-excluded : ∀ {m k v} → ¬ P (k , v) → filterᵐ P (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P m
      lem-add-excluded p =  {!!}
      -- filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l _ _ ∅ (filterᵐ-singleton-false p) ⟨≈⟩ ∪⁺-id-r _
      -- (`filterᵐ-∪⁺-distr` is false)

      lem-del-excluded : ∀ m {k} → (∀ {v} → ¬ P (k , v)) → filterᵐ P (m ∣ ❴ k ❵ ᶜ) ≡ᵐ filterᵐ P m
      lem-del-excluded m ¬p = filterᵐ-restrict m ⟨≈⟩ restrict-singleton-filterᵐ-false m ¬p
