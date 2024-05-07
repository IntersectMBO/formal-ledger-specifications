
module Foreign.HaskellTypes where

open import Level using (Level)
open import Data.Nat.Base using (ℕ)
open import Data.List.Base using (List)
open import Data.Maybe.Base using (Maybe)

private variable
  l : Level
  A B : Set l

record HasHsType (A : Set l) : Set₁ where
  field
    HsType : Set

HsType : (A : Set l) → ⦃ HasHsType A ⦄ → Set
HsType _ ⦃ i ⦄ = i .HasHsType.HsType

instance
  -- Could make a macro for these kind of congruence instances.

  iHasHsTypeℕ : HasHsType ℕ
  iHasHsTypeℕ .HasHsType.HsType = ℕ

  iHasHsTypeList : ⦃ HasHsType A ⦄ → HasHsType (List A)
  iHasHsTypeList {A = A} .HasHsType.HsType = List (HsType A)

  iHasHsTypeMaybe : ⦃ HasHsType A ⦄ → HasHsType (Maybe A)
  iHasHsTypeMaybe {A = A} .HasHsType.HsType = Maybe (HsType A)

  iHasHsTypeFun : ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A → B)
  iHasHsTypeFun {A = A} {B = B} .HasHsType.HsType = HsType A → HsType B
