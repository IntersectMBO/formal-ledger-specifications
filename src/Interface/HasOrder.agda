{-# OPTIONS --safe #-}

module Interface.HasOrder where

open import Prelude
open Equivalence using (from; to)
open import Relation.Binary
  using ( Rel; IsPreorder; IsPartialOrder; IsStrictPartialOrder; IsStrictTotalOrder
        ; IsEquivalence; Irreflexive; Antisymmetric; Asymmetric; Decidable; Transitive
        )

private variable a : Level

module _ (A : Set a) where
  module _ (_≈_ : Rel A a) where
    -- ** interfaces
    record HasPreorder : Set (sucˡ a) where
      infix 4 _≤_ _<_
      field
        _≤_ _<_       : Rel A a
        ≤-isPreorder  : IsPreorder _≈_ _≤_
        <-irrefl      : Irreflexive _≈_ _<_
        ≤⇔<∨≈         : ∀ {x y} → x ≤ y ⇔ (x < y ⊎ x ≈ y)

      open IsPreorder ≤-isPreorder public
        using ()
        renaming (isEquivalence to ≈-isEquivalence; refl to ≤-refl; trans to ≤-trans)

      _≤?_ : ⦃ ∀ {x y : A} → Dec (x ≤ y) ⦄ → Decidable _≤_
      _ ≤? _ = it

      _<?_ : ⦃ _ : ∀ {x y : A} → Dec (x < y) ⦄ → Decidable _<_
      _ <? _ = it

      <⇒≤∧≉ : ∀{x y} → x < y → x ≤ y × ¬ (x ≈ y)
      <⇒≤∧≉ x<y = ≤⇔<∨≈ .from (inj₁ x<y) , λ x≈y → <-irrefl x≈y x<y

      ≤∧≉⇒< : ∀{x y} → x ≤ y × ¬ (x ≈ y) → x < y
      ≤∧≉⇒< (x≤y , ¬x≈y) = case ≤⇔<∨≈ .to x≤y of λ where
        (inj₁ x<y) → x<y
        (inj₂ x≈y) → ⊥-elim (¬x≈y x≈y)

      ≤-antisym⇒<-asym : Antisymmetric _≈_ _≤_ → Asymmetric _<_
      ≤-antisym⇒<-asym antisym x<y y<x =
        <⇒≤∧≉ x<y .proj₂ $ antisym (<⇒≤∧≉ x<y .proj₁) (<⇒≤∧≉ y<x .proj₁)
    open HasPreorder ⦃...⦄

    record HasDecPreorder : Set (sucˡ a) where
      field ⦃ hasPreorder ⦄ : HasPreorder
            ⦃ dec-≤ ⦄ : ∀ {x y} → Dec (x ≤ y)
            ⦃ dec-< ⦄ : ∀ {x y} → Dec (x < y)

    record HasPartialOrder : Set (sucˡ a) where
      field
        ⦃ hasPreorder ⦄ : HasPreorder
        ≤-antisym       : Antisymmetric _≈_ _≤_

      ≤-isPartialOrder : IsPartialOrder _≈_ _≤_
      ≤-isPartialOrder = record { isPreorder = ≤-isPreorder ; antisym = ≤-antisym }

      <-asymmetric : Asymmetric _<_
      <-asymmetric = ≤-antisym⇒<-asym ≤-antisym

      open IsEquivalence ≈-isEquivalence renaming (sym to ≈-sym)

      <-trans : Transitive _<_
      <-trans i<j j<k =
        let
          j≤k = <⇒≤∧≉ j<k .proj₁
          i≤j = <⇒≤∧≉ i<j .proj₁
          i≤k = ≤-trans i≤j j≤k
          i≉k = <⇒≤∧≉ j<k .proj₂
              ∘ λ i≈k → ≤-antisym j≤k $ ≤-trans (≤⇔<∨≈ .from $ inj₂ (≈-sym i≈k)) i≤j
        in
          ≤∧≉⇒< (i≤k , i≉k)

      <⇒¬>⊎≈ : ∀{x y} → x < y → ¬ (y < x ⊎ y ≈ x)
      <⇒¬>⊎≈ x<y (inj₁ y<x) = <-asymmetric x<y y<x
      <⇒¬>⊎≈ x<y (inj₂ x≈y) = <-irrefl (≈-sym x≈y) x<y

    record HasDecPartialOrder : Set (sucˡ a) where
      field ⦃ hasPartialOrder ⦄ : HasPartialOrder
            ⦃ dec-≤ ⦄ : ∀ {x y} → Dec (x ≤ y)
            ⦃ dec-< ⦄ : ∀ {x y} → Dec (x < y)

  -- ** shorthand interfaces instansiated to propositional equality
  HasPreorder≡        = HasPreorder        _≡_
  HasDecPreorder≡     = HasDecPreorder     _≡_
  HasPartialOrder≡    = HasPartialOrder    _≡_
  HasDecPartialOrder≡ = HasDecPartialOrder _≡_

open HasPreorder ⦃...⦄ public
open HasPartialOrder ⦃...⦄ public hiding (hasPreorder)

-- ** deriving _<_ from _≤_, and vice versa
module _ {A : Set a} {_≈_ : Rel A a} where
  module _ {_≤_ : Rel A a} where
    import Relation.Binary.Construct.NonStrictToStrict _≈_ _≤_ as SNS
            --     (≤-isPreorder : IsPreorder _≈_ _≤_)
            -- (_≈?_ : ∀ a b → Dec (a ≈ b))

    -- hasPreorderFromNonStrict : HasPreorder
    -- hasPreorderFromNonStrict = record
    --   { _≤_           = _≤_
    --   ; _<_           = SNS._<_
    --   ; ≤-isPreorder  = ≤-isPreorder
    --   ; <-irrefl      = SNS.<-irrefl
    --   ; ≤⇔<∨≈         = λ {a b} → mk⇔
    --     (λ a≤b → case (a ≈? b) of λ where (yes p) → inj₂ p ; (no ¬p) → inj₁ (a≤b , ¬p))
    --     λ where (inj₁ a<b) → proj₁ a<b ; (inj₂ a≈b) → IsPreorder.reflexive ≤-isPreorder a≈b
    --   }

  module _ {_<_ : Rel A a} where
    import Relation.Binary.Construct.StrictToNonStrict _≈_ _<_ as SNS

    module _ (spo : IsStrictPartialOrder _≈_ _<_) where

      SPO⇒HasPreorder : HasPreorder A _≈_
      SPO⇒HasPreorder = record
        { _≤_ = SNS._≤_
        ; _<_ = _<_
        ; ≤-isPreorder = SNS.isPreorder₂ spo
        ; <-irrefl     = spo .IsStrictPartialOrder.irrefl
        ; ≤⇔<∨≈        = mk⇔ id id
        }

      instance _ = SPO⇒HasPreorder

      SPO⇒HasPartialOrder : HasPartialOrder A _≈_
      SPO⇒HasPartialOrder = record
        { ≤-antisym = SNS.isPartialOrder spo .IsPartialOrder.antisym
        }

    module _ (sto : IsStrictTotalOrder _≈_ _<_) where
      private spo = IsStrictTotalOrder.isStrictPartialOrder sto

      STO⇒HasPreorder     = SPO⇒HasPreorder spo
      STO⇒HasPartialOrder = SPO⇒HasPartialOrder spo
