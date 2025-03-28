module Ledger.Conway.Foreign.HSLedger.BaseTypes where

open import Data.Rational

open import Ledger.Types.Numeric.UnitInterval
open import Ledger.Conway.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.HSLedger.Core public
import Ledger.Conway.Foreign.HSTypes as F

instance
  iConvTop    = Convertible-Refl {⊤}
  iConvNat    = Convertible-Refl {ℕ}
  iConvString = Convertible-Refl {String}
  iConvBool   = Convertible-Refl {Bool}

instance

  -- * Unit and empty

  HsTy-⊥ = MkHsType ⊥ F.Empty
  Conv-⊥ = autoConvert ⊥

  HsTy-⊤ = MkHsType ⊤ ⊤

  -- * Rational numbers

  HsTy-Rational = MkHsType ℚ F.Rational
  Conv-Rational : HsConvertible ℚ
  Conv-Rational = λ where
    .to (mkℚ n d _)       → n F., suc d
    .from (n F., zero)    → 0ℚ -- TODO is there a safer way to do this?
    .from (n F., (suc d)) → n Data.Rational./ suc d

  -- * Maps and Sets

  HsTy-HSSet : ∀ {A} → ⦃ HasHsType A ⦄ → HasHsType (ℙ A)
  HsTy-HSSet {A} = MkHsType _ (F.HSSet (HsType A))

  Conv-HSSet : ∀ {A} ⦃ _ : HasHsType A ⦄
             → ⦃ HsConvertible A ⦄
             → HsConvertible (ℙ A)
  Conv-HSSet = λ where
    .to → F.MkHSSet ∘ to ∘ setToList
    .from → fromListˢ ∘ from ∘ F.HSSet.elems

  HsTy-Map : ∀ {A B} → ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A ⇀ B)
  HsTy-Map {A} {B} = MkHsType _ (F.HSMap (HsType A) (HsType B))

  Conv-HSMap : ∀ {A B} ⦃ _ : HasHsType A ⦄ ⦃ _ : HasHsType B ⦄
    → ⦃ DecEq A ⦄
    → ⦃ HsConvertible A ⦄
    → ⦃ HsConvertible B ⦄
    → HsConvertible (A ⇀ B)
  Conv-HSMap = λ where
    .to → F.MkHSMap ∘ to
    .from → from ∘ F.HSMap.assocList

  -- * ComputationResult

  HsTy-ComputationResult : ∀ {l} {Err} {A : Type l}
                           → ⦃ HasHsType Err ⦄ → ⦃ HasHsType A ⦄
                           → HasHsType (ComputationResult Err A)
  HsTy-ComputationResult {Err = Err} {A} = MkHsType _ (F.ComputationResult (HsType Err) (HsType A))

  Conv-ComputationResult : ConvertibleType ComputationResult F.ComputationResult
  Conv-ComputationResult = autoConvertible

open import Ledger.Conway.Foreign.HSLedger.ExternalStructures dummyExternalFunctions
  renaming
    ( HSTransactionStructure to DummyTransactionStructure
    ; HSAbstractFunctions to DummyAbstractFunctions
    )
  public
open import Ledger.Conway.Conformance.Certs.Properties govStructure

unquoteDecl = do
  hsTypeAlias Coin
  hsTypeAlias ExUnits
  hsTypeAlias Epoch
  hsTypeAlias ScriptHash

-- UnitInterval: Haskell type corresponding to 'UnitInterval'
record HsUnitInterval : Type where
  field getHsUnitInterval : F.Rational
    -- I would like to use ℚ here, but F.Rational converts better.
open HsUnitInterval

{-# FOREIGN GHC
  data HsUnitInterval = MkUnitInterval
    { getHsUnitInterval :: Rational
    }
    deriving (Eq, Show)
#-}
{-# COMPILE GHC HsUnitInterval = data HsUnitInterval (MkUnitInterval) #-}

instance
  HsTy-UnitInterval : HasHsType UnitInterval
  HsTy-UnitInterval .HasHsType.HsType = HsUnitInterval

  Conv-UnitInterval : Convertible UnitInterval HsUnitInterval
  Conv-UnitInterval .to x = record { getHsUnitInterval = to (fromUnitInterval x) }
  Conv-UnitInterval .from x =
    case toUnitInterval (from (getHsUnitInterval x)) of λ where
      (just x) → x
      nothing → error "Formal Spec: rational outside of unit interval"
