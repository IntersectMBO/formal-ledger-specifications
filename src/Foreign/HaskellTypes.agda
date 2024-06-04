
module Foreign.HaskellTypes where

open import Level using (Level)
open import Data.Nat.Base using (ℕ)
open import Data.List.Base using (List)
open import Data.Maybe.Base using (Maybe)
open import Data.Sum.Base using (_⊎_)
open import Data.Unit using (⊤)

private variable
  l : Level
  A B : Set l

record HasHsType (A : Set l) : Set₁ where
  field
    HsType : Set

HsType : (A : Set l) → ⦃ HasHsType A ⦄ → Set
HsType _ ⦃ i ⦄ = i .HasHsType.HsType

MkHsType : (A : Set l) (Hs : Set) → HasHsType A
MkHsType A Hs .HasHsType.HsType = Hs

instance

  iHsTy-ℕ = MkHsType ℕ ℕ
  iHsTy-⊤ = MkHsType ⊤ ⊤

  -- Could make a macro for these kind of congruence instances.
  iHsTy-List : ⦃ HasHsType A ⦄ → HasHsType (List A)
  iHsTy-List {A = A} .HasHsType.HsType = List (HsType A)

  iHsTy-Maybe : ⦃ HasHsType A ⦄ → HasHsType (Maybe A)
  iHsTy-Maybe {A = A} .HasHsType.HsType = Maybe (HsType A)

  iHsTy-Fun : ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A → B)
  iHsTy-Fun {A = A} {B = B} .HasHsType.HsType = HsType A → HsType B

  iHsTy-Sum : ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A ⊎ B)
  iHsTy-Sum {A = A} {B = B} .HasHsType.HsType = HsType A ⊎ HsType B
