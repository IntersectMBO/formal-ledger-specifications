{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Prelude hiding (_⊔_; suc; isPartialOrder; isEquivalence; trans)
open import Level using (_⊔_; suc)
open import Relation.Binary using (Rel)
open import Relation.Binary.Definitions using (Decidable; Antisymmetric; Irreflexive; Asymmetric)
open import Relation.Binary.Structures using (IsPreorder; IsPartialOrder; IsStrictPartialOrder; IsEquivalence)
open import Relation.Binary.Structures using (IsDecTotalOrder ; IsStrictTotalOrder; IsTotalOrder)

module _ {α ℓ} (A : Set α) (_≈_ : Rel A ℓ) where

  record HasPreorder : Set (α ⊔ suc ℓ) where
    infix 4 _≤_ _<_
    field
      _≤_ _<_       : Rel A ℓ
      ≤-isPreorder  : IsPreorder _≈_ _≤_
      <-irrefl      : Irreflexive _≈_ _<_
      ≤⇔<∨≈         : ∀ {a b} → a ≤ b ⇔ (a < b ⊎ a ≈ b)

  record HasPartialOrder : Set (α ⊔ suc ℓ) where
    field
      hasPreorder  : HasPreorder
      ≤-antisym    : Antisymmetric _≈_ (HasPreorder._≤_ hasPreorder)

    open HasPreorder hasPreorder

    <⇒≤∧≠ : ∀{x y} → x < y → x ≤ y × ¬ (x ≈ y)
    <⇒≤∧≠ {x}{y} x<y = (Equivalence.from ≤⇔<∨≈ (inj₁ x<y)) , λ x≈y → <-irrefl x≈y x<y

    ≤-antisym⇒<-asym : Antisymmetric _≈_ _≤_ → Asymmetric _<_
    ≤-antisym⇒<-asym antisym x<y y<x = proj₂ (<⇒≤∧≠ x<y) (antisym (proj₁ (<⇒≤∧≠ x<y)) (proj₁ (<⇒≤∧≠ y<x)))

    <-asymmetric : Asymmetric _<_
    <-asymmetric = ≤-antisym⇒<-asym ≤-antisym

    <⇒¬>⊎≈ : ∀{x y} → x < y → ¬ (y < x ⊎ y ≈ x)
    <⇒¬>⊎≈ x<y (inj₁ y<x) = <-asymmetric x<y y<x
    <⇒¬>⊎≈ x<y (inj₂ x≈y) = <-irrefl ((IsEquivalence.sym (IsPreorder.isEquivalence ≤-isPreorder)) x≈y) x<y -- x<y

    ≤-isPartialOrder : IsPartialOrder _≈_ _≤_
    ≤-isPartialOrder = record { isPreorder = ≤-isPreorder ; antisym = ≤-antisym }

  record HasDecPartialOrder : Set (α ⊔ suc ℓ) where
    infix 4 _≤?_
    field
      hasPartialOrder : HasPartialOrder
    open HasPartialOrder hasPartialOrder
    open HasPreorder hasPreorder
    field
      _≤?_ : Decidable _≤_

-- conversions
  -- strict to nonstrict
  module _  (_<_ : Rel A ℓ) where                                      -- If we start with
    module _ (<-isStrictPartialOrder : IsStrictPartialOrder _≈_ _<_)   -- a strict partial order...
      where
      import Relation.Binary.Construct.StrictToNonStrict _≈_ _<_ as SNS

      hasPreorderFromStrict : HasPreorder                               -- ...we have a preorder, including
      hasPreorderFromStrict = record                                    -- a nonstrict ordering _≤_ and
        { _≤_           = SNS._≤_                                           -- a (trivial) proof of ≤⇔<∨≈.
        ; _<_           = _<_
        ; ≤-isPreorder  = SNS.isPreorder₂ <-isStrictPartialOrder            -- Note we don't need decidability of
        ; <-irrefl      = irrefl <-isStrictPartialOrder                 -- _≈_ to go from strict to non-strict.
        ; ≤⇔<∨≈         = mk⇔ id id
        }
        where
        open IsStrictPartialOrder
        


    module _ (<-isStrictTotalOrder : IsStrictTotalOrder _≈_ _<_)   -- a strict partial order...
      where
      open import Relation.Binary.Construct.StrictToNonStrict _≈_ _<_


      <-STO⇒≤-isTotalOrder : IsTotalOrder _≈_ _≤_
      <-STO⇒≤-isTotalOrder = isTotalOrder <-isStrictTotalOrder

      <-STO⇒≤-isPartialOrder : IsPartialOrder _≈_ _≤_
      <-STO⇒≤-isPartialOrder = IsTotalOrder.isPartialOrder <-STO⇒≤-isTotalOrder

      <-STO⇒≤-isPreorder : IsPreorder _≈_ _≤_
      <-STO⇒≤-isPreorder = IsPartialOrder.isPreorder (IsTotalOrder.isPartialOrder <-STO⇒≤-isTotalOrder)

      <-STO⇒<-isStrictPartialOrder : IsStrictPartialOrder _≈_ _<_
      <-STO⇒<-isStrictPartialOrder = IsStrictTotalOrder.isStrictPartialOrder <-isStrictTotalOrder

      hasPreorderFromStrictTotalOrder : HasPreorder
      hasPreorderFromStrictTotalOrder = record                                    -- including a nonstrict ordering _≤_
        { _≤_           = _≤_                                           -- and a (trivial) proof of ≤⇔<∨≈.
        ; _<_           = _<_
        ; ≤-isPreorder  = <-STO⇒≤-isPreorder
        ; <-irrefl      = IsStrictTotalOrder.irrefl <-isStrictTotalOrder                 -- _≈_ to go from strict to non-strict.
        ; ≤⇔<∨≈         = mk⇔ id id
        }


      <-STO⇒≤-antisym : Antisymmetric _≈_ _≤_                                  -- Note that the non-strict ordering
      <-STO⇒≤-antisym = antisym  (isEquivalence <-STO⇒<-isStrictPartialOrder)  -- is necessarily antisymmetric,
                                 (transEq <-STO⇒<-isStrictPartialOrder)        -- hence a partial ordering.
                                 (<-irrefl hasPreorderFromStrictTotalOrder)
        where
        open IsStrictPartialOrder renaming (trans to transEq)
        open HasPreorder using (<-irrefl)

      hasPartialOrderFromStrictTotalOrder : HasPartialOrder
      hasPartialOrderFromStrictTotalOrder = record
        { hasPreorder = hasPreorderFromStrictTotalOrder
        ; ≤-antisym = <-STO⇒≤-antisym }

      <-STO⇒≤-isDecidable : IsDecTotalOrder _≈_ _≤_
      <-STO⇒≤-isDecidable = isDecTotalOrder <-isStrictTotalOrder  --

      hasDecPartialOrderFromStrictTotalOrder : HasDecPartialOrder
      hasDecPartialOrderFromStrictTotalOrder = record
        { hasPartialOrder = hasPartialOrderFromStrictTotalOrder
        ; _≤?_ = IsDecTotalOrder._≤?_ <-STO⇒≤-isDecidable }

  -- nonstrict to strict
  module _  (_≤_ : Rel A ℓ)                        -- If we start with
            (≤-isPreorder : IsPreorder _≈_ _≤_)    -- a non-strict preorder and
            (_≈?_ : ∀ a b → Dec (a ≈ b))           -- a decidable equality...
    where
    import Relation.Binary.Construct.NonStrictToStrict _≈_ _≤_ as SNS

    hasPreorderFromNonStrict : HasPreorder
    hasPreorderFromNonStrict = record              -- including a strict ordering _<_
      { _≤_           = _≤_                        -- and a proof of ≤⇔<∨≈.
      ; _<_           = SNS._<_
      ; ≤-isPreorder  = ≤-isPreorder
      ; <-irrefl      = SNS.<-irrefl
      ; ≤⇔<∨≈         = λ {a b} → mk⇔
        (λ a≤b → case (a ≈? b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (a≤b , ¬p))
        λ where (inj₁ a<b) → proj₁ a<b ; (inj₂ a≈b) → IsPreorder.reflexive ≤-isPreorder a≈b
      }


open HasPreorder ⦃...⦄ public
open HasPartialOrder ⦃...⦄ public
open HasDecPartialOrder ⦃...⦄ public
