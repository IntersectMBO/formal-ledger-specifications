------------------------------------------------------------------------
-- The Agda standard library
--
-- Relatedness for bundles
------------------------------------------------------------------------

{-# OPTIONS --without-K --safe #-}

module Function.Related.Bundles where

import Function.Related as R
open import Function.Equality using (_⟶_)
open import Function.Bundles
open import Function.Base
open import Function.Equality using (_⟨$⟩_)
import Function.Equivalence as Eq
import Function.Injection   as Inj
import Function.Inverse     as Inv
import Function.LeftInverse as LeftInv
import Function.Surjection  as Surj
import Relation.Binary.PropositionalEquality as P using (_≡_; cong; subst₂)

open import Data.Product

infix 4 _∼[_]_

_∼[_]_ : ∀ {ℓ₁ ℓ₂} → Set ℓ₁ → R.Kind → Set ℓ₂ → Set _
A ∼[ R.implication         ] B = A → B
A ∼[ R.reverse-implication ] B = B → A
A ∼[ R.equivalence         ] B = A ⇔ B
A ∼[ R.injection           ] B = A ↣ B
A ∼[ R.reverse-injection   ] B = B ↣ A
A ∼[ R.left-inverse        ] B = A ↪ B
A ∼[ R.surjection          ] B = A ↠ B
A ∼[ R.bijection           ] B = A ⤖ B

toRelated : ∀ {ℓ₁ ℓ₂} → {A : Set ℓ₁} {B : Set ℓ₂} {K : R.Kind} → A ∼[ K ] B → A R.∼[ K ] B
toRelated {_} {_} {A} {B} {R.implication} rel = rel
toRelated {_} {_} {A} {B} {R.reverse-implication} rel = R.lam rel
toRelated {_} {_} {A} {B} {R.equivalence} rel = Eq.equivalence (Equivalence.f rel) (Equivalence.g rel)
toRelated {_} {_} {A} {B} {R.injection} rel = Inj.injection (Injection.f rel) (Injection.injective rel)
toRelated {_} {_} {A} {B} {R.reverse-injection} rel = R.lam (Inj.injection (Injection.f rel) (Injection.injective rel))
toRelated {_} {_} {A} {B} {R.left-inverse} rel =
  LeftInv.leftInverse (RightInverse.f rel) (RightInverse.g rel) (RightInverse.inverseʳ rel)
toRelated {_} {_} {A} {B} {R.surjection} rel with Surjection.surjective rel
... | surj = Surj.surjection (Surjection.f rel) (proj₁ ∘ surj) (proj₂ ∘ surj)
toRelated {_} {_} {A} {B} {R.bijection} rel with Bijection.bijective rel
... | (inj , surj) = Inv.inverse (Bijection.f rel) (proj₁ ∘ surj) (inj ∘ proj₂ ∘ surj ∘ (Bijection.f rel)) (proj₂ ∘ surj)

fromRelated : ∀ {ℓ₁ ℓ₂} → {A : Set ℓ₁} {B : Set ℓ₂} {K : R.Kind} → A R.∼[ K ] B → A ∼[ K ] B
fromRelated {_} {_} {A} {B} {R.implication} rel = rel
fromRelated {_} {_} {A} {B} {R.reverse-implication} rel = R.app-← rel
fromRelated {_} {_} {A} {B} {R.equivalence} record { to = to ; from = from } = mk⇔ (to ⟨$⟩_) (from ⟨$⟩_)
fromRelated {_} {_} {A} {B} {R.injection} rel = mk↣ (Inj.Injection.injective rel)
fromRelated {_} {_} {A} {B} {R.reverse-injection} (R.lam app-↢) = fromRelated app-↢
fromRelated {_} {_} {A} {B} {R.left-inverse} record { to = to ; from = from ; left-inverse-of = left-inverse-of } =
  mk↪ {f = to ⟨$⟩_} {g = from ⟨$⟩_} left-inverse-of
fromRelated {_} {_} {A} {B} {R.surjection} record { to = to ; surjective = surjective } with surjective
... | record { from = from ; right-inverse-of = right-inverse-of } = mk↠ {f = to ⟨$⟩_} < from ⟨$⟩_ , right-inverse-of >
fromRelated {_} {_} {A} {B} {R.bijection} record { to = to ; from = from ; inverse-of = inverse-of } with inverse-of
... | record { left-inverse-of = left-inverse-of ; right-inverse-of = right-inverse-of } = mk⤖
  ((λ {x y} h → P.subst₂ P._≡_ (left-inverse-of x) (left-inverse-of y) (P.cong (from ⟨$⟩_) h)) ,
  < from ⟨$⟩_ , right-inverse-of >)
