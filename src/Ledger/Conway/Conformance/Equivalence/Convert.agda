
module Ledger.Conway.Conformance.Equivalence.Convert where

open import Data.Unit.Base using (⊤)

infixr 1 _⊢_⭆ⁱ_ _⊢_⭆_ _⭆_
record _⊢_⭆ⁱ_ (I L : Set) (C : I → L → Set) : Set where
  field
    convⁱ : (i : I) (l : L) → C i l

open _⊢_⭆ⁱ_ public

_⊢conv_ : ∀ {I L C} → ⦃ I ⊢ L ⭆ⁱ C ⦄ → ∀ i l → C i l
_⊢conv_ ⦃ c ⦄ = c .convⁱ

_⊢_⭆_ : (I L C : Set) → Set
I ⊢ L ⭆ C = I ⊢ L ⭆ⁱ λ _ _ → C

_⭆_ : (L C : Set) → Set
L ⭆ C = ⊤ ⊢ L ⭆ C

conv : ∀ {L C} → ⦃ L ⭆ C ⦄ → L → C
conv l = _ ⊢conv l
