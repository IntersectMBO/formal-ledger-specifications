{-# OPTIONS --safe #-}
module stdlib.Data.Maybe where

open import Data.Empty using (⊥-elim)
open import Data.Maybe using (Maybe; just; nothing; Is-just; Is-nothing)
open import Data.Maybe.Relation.Unary.Any using (just)
open import Data.Maybe.Relation.Unary.All using (just; nothing)
open import Data.Product using (_,_)
open import Data.Unit using (tt)
open import Function using (_↔_; mk↔; Inverseˡ)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (¬_)

¬Is-just↔Is-nothing : {A : Set}
                      → (m : Maybe A)
                      → (¬ (Is-just m)) ↔ (Is-nothing m)
¬Is-just↔Is-nothing m = mk↔ {to = to m} {from = from m} (to∘from≡id m , λ _ → refl)
  where
    from : ∀ m → Is-nothing m → ¬ Is-just m
    from m nothing ()

    to : ∀ m → ¬ Is-just m → Is-nothing m
    to (just _) p = ⊥-elim (p (just tt))
    to nothing x = nothing

    to∘from≡id : ∀ m → Inverseˡ _≡_ _≡_ (to m) (from m)
    to∘from≡id (just x) {just ()} refl
    to∘from≡id nothing {nothing} refl = refl
