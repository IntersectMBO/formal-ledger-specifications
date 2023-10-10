{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Prelude hiding (_⊔_; suc; isEquivalence; sym)
open import Level using (_⊔_; suc)
open import Relation.Binary
open import Relation.Binary.Structures using (IsDecTotalOrder)
module _ {a} (A : Set a) where

  module _ (_≈_ : Rel A a) where

    record HasPreorder : Set (suc a) where
      infix 4 _≤_ _<_
      field
        _≤_ _<_       : Rel A a
        ≤-isPreorder  : IsPreorder _≈_ _≤_
        <-irrefl      : Irreflexive _≈_ _<_
        ≤⇔<∨≈         : ∀ {x y} → x ≤ y ⇔ (x < y ⊎ x ≈ y)

      ≈-isEquivalence : IsEquivalence _≈_
      ≈-isEquivalence = IsPreorder.isEquivalence ≤-isPreorder

    record HasPartialOrder : Set (suc a) where
      field
        hasPreorder  : HasPreorder
        ≤-antisym    : Antisymmetric _≈_ (HasPreorder._≤_ hasPreorder)

      open HasPreorder hasPreorder
      open Equivalence
      open IsEquivalence ≈-isEquivalence

      <⇒≤∧≉ : ∀{x y} → x < y → x ≤ y × ¬ (x ≈ y)
      <⇒≤∧≉ x<y = from ≤⇔<∨≈ (inj₁ x<y) , λ x≈y → <-irrefl x≈y x<y

      ≤∧≉⇒< : ∀{x y} → x ≤ y × ¬ (x ≈ y) → x < y
      ≤∧≉⇒< {x}{y} (x≤y , ¬x≈y) with to ≤⇔<∨≈ x≤y
      ... | inj₁ x<y = x<y
      ... | inj₂ x≈y = ⊥-elim (¬x≈y x≈y)

      ≤-antisym⇒<-asym : Antisymmetric _≈_ _≤_ → Asymmetric _<_
      ≤-antisym⇒<-asym antisym x<y y<x =
        proj₂ (<⇒≤∧≉ x<y) $ antisym (proj₁ $ <⇒≤∧≉ x<y) (proj₁ $ <⇒≤∧≉ y<x)

      <-asymmetric : Asymmetric _<_
      <-asymmetric = ≤-antisym⇒<-asym ≤-antisym

      <⇒¬>⊎≈ : ∀{x y} → x < y → ¬ (y < x ⊎ y ≈ x)
      <⇒¬>⊎≈ x<y (inj₁ y<x) = <-asymmetric x<y y<x
      <⇒¬>⊎≈ x<y (inj₂ x≈y) = <-irrefl (sym x≈y) x<y

      ≤-isPartialOrder : IsPartialOrder _≈_ _≤_
      ≤-isPartialOrder = record { isPreorder = ≤-isPreorder ; antisym = ≤-antisym }

      ≤-trans : Transitive _≤_
      ≤-trans = IsPreorder.trans ≤-isPreorder
      <-trans : Transitive _<_
      <-trans i<j j<k = let
        j≤k = proj₁ $ <⇒≤∧≉ j<k; i≤j = proj₁ $ <⇒≤∧≉ i<j
        i≈k⇒j≈k = λ i≈k → ≤-antisym j≤k $ ≤-trans (from ≤⇔<∨≈ $ inj₂ (sym i≈k)) i≤j
        in ≤∧≉⇒< (≤-trans i≤j j≤k , (proj₂ $ <⇒≤∧≉ j<k) ∘ i≈k⇒j≈k)

    record HasDecPartialOrder : Set (suc a) where
      infix 4 _<?_ _≤?_
      field hasPartialOrder : HasPartialOrder

      open HasPartialOrder hasPartialOrder
      open HasPreorder hasPreorder
      field
        _<?_ : Decidable _<_
        _≤?_ : Decidable _≤_

    record HasDecTotalOrder : Set (suc a) where
      field _≤_ : Rel A a
            isDecTotalOrder : IsDecTotalOrder _≈_ _≤_

    module _  (_<_ : Rel A a) where

      module _ (isEquiv   : IsEquivalence _≈_)
               (<-irrefl  : Irreflexive _≈_ _<_)
               (<-trans   : Transitive _<_)
               (<-resp-≈  : _<_ Respects₂ _≈_)
               where

        import Relation.Binary.Construct.StrictToNonStrict _≈_ _<_ as SNS

        hasPreorderFromStrictPreorder : HasPreorder
        hasPreorderFromStrictPreorder = record
          { _≤_ = SNS._≤_
          ; _<_ = _<_
          ; ≤-isPreorder = ≤-preorder
          ; <-irrefl = <-irrefl
          ; ≤⇔<∨≈ = mk⇔ id id
          }
          where
          ≤-preorder : IsPreorder _≈_ SNS._≤_
          ≤-preorder = record
            { isEquivalence = isEquiv
            ; reflexive = SNS.reflexive
            ; trans = SNS.trans isEquiv <-resp-≈ <-trans }

        hasPartialOrderFromStrictPreorder : HasPartialOrder
        hasPartialOrderFromStrictPreorder = record
          { hasPreorder = hasPreorderFromStrictPreorder ; ≤-antisym = SNS.antisym isEquiv <-trans <-irrefl }

      module _ (<-isStrictPartialOrder : IsStrictPartialOrder _≈_ _<_) where

        import Relation.Binary.Construct.StrictToNonStrict _≈_ _<_ as SNS

        hasPreorderFromStrictPartialOrder : HasPreorder
        hasPreorderFromStrictPartialOrder = record
          { _≤_           = SNS._≤_
          ; _<_           = _<_
          ; ≤-isPreorder  = SNS.isPreorder₂ <-isStrictPartialOrder
          ; <-irrefl      = irrefl <-isStrictPartialOrder
          ; ≤⇔<∨≈         = mk⇔ id id
          }
          where open IsStrictPartialOrder

      module _ (<-isStrictTotalOrder : IsStrictTotalOrder _≈_ _<_)
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
        hasPreorderFromStrictTotalOrder = record
          { _≤_           = _≤_
          ; _<_           = _<_
          ; ≤-isPreorder  = <-STO⇒≤-isPreorder
          ; <-irrefl      = IsStrictTotalOrder.irrefl <-isStrictTotalOrder
          ; ≤⇔<∨≈         = mk⇔ id id
          }

        <-STO⇒≤-antisym : Antisymmetric _≈_ _≤_
        <-STO⇒≤-antisym = antisym  (isEquivalence <-STO⇒<-isStrictPartialOrder)
                                   (transEq <-STO⇒<-isStrictPartialOrder)
                                   (<-irrefl hasPreorderFromStrictTotalOrder)
          where
          open IsStrictPartialOrder renaming (trans to transEq)
          open HasPreorder using (<-irrefl)

        hasPartialOrderFromStrictTotalOrder : HasPartialOrder
        hasPartialOrderFromStrictTotalOrder = record
          { hasPreorder = hasPreorderFromStrictTotalOrder
          ; ≤-antisym = <-STO⇒≤-antisym }

        <-STO⇒≤-isDecidable : IsDecTotalOrder _≈_ _≤_
        <-STO⇒≤-isDecidable = isDecTotalOrder <-isStrictTotalOrder

        hasDecPartialOrderFromStrictTotalOrder : HasDecPartialOrder
        hasDecPartialOrderFromStrictTotalOrder = record
          { hasPartialOrder = hasPartialOrderFromStrictTotalOrder
          ; _<?_ = IsStrictTotalOrder._<?_ <-isStrictTotalOrder
          ; _≤?_ = IsDecTotalOrder._≤?_ <-STO⇒≤-isDecidable }

    module _  (_≤_ : Rel A a)
              (≤-isPreorder : IsPreorder _≈_ _≤_)
              (_≈?_ : ∀ a b → Dec (a ≈ b))
      where
      import Relation.Binary.Construct.NonStrictToStrict _≈_ _≤_ as SNS

      hasPreorderFromNonStrict : HasPreorder
      hasPreorderFromNonStrict = record
        { _≤_           = _≤_
        ; _<_           = SNS._<_
        ; ≤-isPreorder  = ≤-isPreorder
        ; <-irrefl      = SNS.<-irrefl
        ; ≤⇔<∨≈         = λ {a b} → mk⇔
          (λ a≤b → case (a ≈? b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (a≤b , ¬p))
          λ where (inj₁ a<b) → proj₁ a<b ; (inj₂ a≈b) → IsPreorder.reflexive ≤-isPreorder a≈b
        }

  HasPreorder≡ = HasPreorder _≡_
  HasPartialOrder≡ = HasPartialOrder _≡_
  HasDecPartialOrder≡ = HasDecPartialOrder _≡_
open HasPreorder ⦃...⦄ public
open HasPartialOrder ⦃...⦄ public
open HasDecPartialOrder ⦃...⦄ public
