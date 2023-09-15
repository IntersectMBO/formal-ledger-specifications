{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Data.Product using (_×_; _,_; proj₁; proj₂)
open import Data.Sum using (_⊎_; inj₁; inj₂; [_,_])
open import Function using (mk⇔; case_of_; _⇔_)
open import Level using (_⊔_; suc)
open import Relation.Binary using (Rel)
open import Relation.Binary.Definitions using (Decidable; Irreflexive; Antisymmetric)
open import Relation.Binary.Structures using (IsPreorder; IsPartialOrder; IsStrictTotalOrder)
open import Relation.Nullary using (Dec; yes; no)

record HasPreorder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
  infix 4 _≤_ _<_
  field
    _≤_ _<_    : Rel A ℓ₂
    isPreorder : IsPreorder _≈_ _≤_
    irrefl     : Irreflexive _≈_ _<_
    ≤⇔<∨≡      : ∀ {a b} → a ≤ b ⇔ (a < b ⊎ a ≈ b)


record HasPartialOrder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
  open HasPreorder
  field
    hasPreorder  : HasPreorder {ℓ₂ = ℓ₂} A _≈_
    antisym      : Antisymmetric _≈_ (_≤_ hasPreorder)

open HasPartialOrder ⦃...⦄ public

module _ {a ℓ} (A : Set a) (_≈_ : Rel A ℓ) (_≤_ : Rel A ℓ) (_≈?_ : ∀ a b → (Dec (a ≈ b))) where

  open import Relation.Binary.Construct.NonStrictToStrict _≈_ _≤_

  module _ (isPreorder : IsPreorder _≈_ _≤_) where

    hasPreorderFromNonStrict : HasPreorder A _≈_
    hasPreorderFromNonStrict = record
      { _≤_         = _≤_
      ; _<_         = _<_
      ; isPreorder  = isPreorder
      ; irrefl      = <-irrefl
      ; ≤⇔<∨≡       = leqDef
      }
      where
      open IsPreorder
      leqDef : ∀ {x y} → (x ≤ y) ⇔ (x < y ⊎ x ≈ y)
      leqDef {x}{y} with x ≈? y
      ... | yes x≈y = mk⇔ (λ _ → inj₂ x≈y) λ _ → reflexive isPreorder x≈y
      ... | no x<y = mk⇔ (λ x≤y → inj₁ (x≤y , x<y)) λ U → [ proj₁ , reflexive isPreorder ] U

    module _ (isAntisym : Antisymmetric _≈_ _≤_) where

      hasPartialOrderFromNonStrict : HasPartialOrder A _≈_
      hasPartialOrderFromNonStrict = record
        { hasPreorder = hasPreorderFromNonStrict
        ; antisym = isAntisym
        }


-- record HasPreorder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
--   infix 4 _≤_
--   field
--     _≤_ : Rel A ℓ₂
--     isPreorder : IsPreorder {A = A} _≈_ _≤_

-- -- open HasPreorder ⦃ ... ⦄ public -- (removed; otherwise can't resolve _≤_ for ℕ in GovernanceActions)

-- open HasPartialOrder ⦃ ... ⦄ public

-- record HasStrictTotalOrder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ)  : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
--   infix 4 _<_
--   field
--     _<_ : Rel A ℓ₂
--     isStrictTotalOrder : IsStrictTotalOrder {A = A} _≈_ _<_

-- open HasStrictTotalOrder ⦃ ... ⦄ public

-- record HasDecPartialOrder {a ℓ ℓ₂} (A : Set a) (_≈_ : Rel A ℓ) : Set (a ⊔ ℓ ⊔ suc ℓ₂) where
--   infix 4 _≤?_
--   field
--     _≤_   : Rel A ℓ₂
--     _≤?_  : Decidable _≤_

-- open HasDecPartialOrder ⦃ ... ⦄ public
