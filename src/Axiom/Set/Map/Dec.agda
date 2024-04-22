{-# OPTIONS --safe --no-import-sorts #-}
open import Axiom.Set using (Theoryᵈ; Theory)

module Axiom.Set.Map.Dec (thᵈ : Theoryᵈ) where

open import Prelude hiding (map; Monoid)

open import Agda.Primitive renaming (Set to Type)
open import Algebra using (Monoid)
import Data.Sum as Sum
open import Data.These hiding (map)
open import Class.DecEq using (DecEq)

open Theoryᵈ thᵈ using (_∈?_; th; incl-set'; incl-set; incl-set-proj₁⊇)
open Theory th
open import Axiom.Set.Rel th using (dom; dom∈)
open import Axiom.Set.Map th
open import Data.Product.Properties using (×-≡,≡→≡; ×-≡,≡←≡)

open Equivalence

private variable A B C D : Type

module Lookupᵐᵈ (sp-∈ : spec-∈ A) where
  open Lookupᵐ sp-∈

  unionThese : ⦃ DecEq A ⦄ → (m : Map A B) (m' : Map A C) (x : A)
    → x ∈ dom (m ˢ) ∪ dom (m' ˢ) → These B C
  unionThese m m' x dp with x ∈? dom (m ˢ) | x ∈? dom (m' ˢ)
  ... | yes mr | yes mr' = these (lookupᵐ m x) (lookupᵐ m' x)
  ... | yes mr | no  mr' = this  (lookupᵐ m x)
  ... | no  mr | yes mr' = that  (lookupᵐ m' x)
  ... | no  mr | no  mr' = Sum.[ flip contradiction mr , flip contradiction mr' ]
                               (from ∈-∪ dp)

  unionWith : ⦃ DecEq A ⦄ → (These B C → D) → Map A B → Map A C → Map A D
  unionWith f m@(r , p) m'@(r' , p') = m'' , helper
     where
       d = dom r ∪ dom r'
       m'' = map (λ (x , p) → x , f (unionThese m m' x p)) (incl-set d)

       helper : left-unique m''
       helper q q'
         with _ , refl , t  ← from ∈-map q
         with _ , refl , t' ← from ∈-map q'
         with from (∈-mapPartial {f = incl-set' _}) t
            | from (∈-mapPartial {f = incl-set' _}) t'
       ... | z , _ | z' , _
         with z ∈? d in eq | z' ∈? d in eq'
       helper _ _ | _ , _ , refl | _ , _ , refl | yes _ | yes _
         with refl ← trans (sym eq) eq' = refl

  module _ ⦃ M : Monoid 0ℓ 0ℓ ⦄ ⦃ _ : DecEq A ⦄ where
    infixr 6 _∪⁺_
    open Monoid M renaming (Carrier to V)

    _∪⁺_ : Map A V → Map A V → Map A V
    _∪⁺_ = unionWith (fold id id _∙_)

    aggregate₊ : FinSet (A × V) → Map A V
    aggregate₊ (_ , l , _) = foldl (λ m x → m ∪⁺ ❴ x ❵ᵐ) ∅ᵐ l

    module _ {m m' : Map A V} where

      dom-∪⁺⊆∪ : dom ((m ∪⁺ m') ˢ) ⊆ dom (m ˢ) ∪ dom (m' ˢ)
      dom-∪⁺⊆∪ p = subst (_∈ dom (m ˢ) ∪ dom (m' ˢ))
                         (Prelude.sym $ proj₁ (×-≡,≡←≡ $ proj₁ (proj₂ $ ∈-dom-∪⁺ p)))
                         (proj₂ $ proj₁ (∈-dom-∪⁺ p))
        where
        f : Σ A (λ a → a ∈ dom (m ˢ) ∪ dom (m' ˢ)) → A × V
        f (a , a∈) = a , (fold id id _∙_)(unionThese m m' a a∈)

        ∈-dom-∪⁺ : {a : A} (p : a ∈ dom ((m ∪⁺ m') ˢ))
                   → ∃[ c ] (a , proj₁ (to dom∈ p)) ≡ f c
                            × c ∈ incl-set (dom (m ˢ) ∪ dom (m' ˢ))
        ∈-dom-∪⁺ p = from ∈-map $ proj₂ $ to dom∈ p


      dom-∪⊆∪⁺ : dom (m ˢ) ∪ dom (m' ˢ) ⊆ dom ((m ∪⁺ m') ˢ)
      dom-∪⊆∪⁺ {a} a∈ = from dom∈ (proj₂ (f (proj₁ c')) , to ∈-map ν)
        where
        f : Σ A (λ a → a ∈ dom (m ˢ) ∪ dom (m' ˢ)) → A × V
        f (a , a∈) = a , (fold id id _∙_)(unionThese m m' a a∈)

        c' : ∃[ c ] ((a ≡ proj₁ c) × (c ∈ incl-set (dom (m ˢ) ∪ dom (m' ˢ))))
        c' = from ∈-map (incl-set-proj₁⊇ a∈)

        ν : ∃[ c ] (a , _) ≡ f c × c ∈ (incl-set (dom (m ˢ) ∪ dom (m' ˢ)))
        ν = (proj₁ c') , (×-≡,≡→≡ (proj₁ (proj₂ c') , Prelude.refl) , (proj₂ (proj₂ c')))

      dom-∪⁺⇔∪ : ∀ {a} → a ∈ dom ((m ∪⁺ m')ˢ) ⇔ a ∈ dom (m ˢ) ∪ dom (m' ˢ)
      dom-∪⁺⇔∪ {a} = mk⇔ dom-∪⁺⊆∪ dom-∪⊆∪⁺

      dom∪⁺ : dom ((m ∪⁺ m')ˢ) ≡ᵉ dom (m ˢ) ∪ dom (m' ˢ)
      dom∪⁺ = to dom-∪⁺⇔∪ , from dom-∪⁺⇔∪
