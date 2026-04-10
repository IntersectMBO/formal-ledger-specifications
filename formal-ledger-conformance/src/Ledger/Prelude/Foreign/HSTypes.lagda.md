---
source_branch: master
source_path: src/Ledger/Prelude/Foreign/HSTypes.lagda.md
---
```agda
module Ledger.Prelude.Foreign.HSTypes where

open import Data.Rational
open import Foreign.Convertible 
open import Foreign.Convertible.Deriving
open import Foreign.Haskell
open import Foreign.HaskellTypes public
open import Foreign.HaskellTypes.Deriving
open import stdlib.Foreign.Haskell.Empty

open import Ledger.Prelude
open import Ledger.Prelude.Numeric.UnitInterval
open import Ledger.Prelude.Foreign.Util
open import Ledger.Prelude.Numeric.PositiveNat

{-# FOREIGN GHC
  {-# LANGUAGE DeriveGeneric #-}
  {-# LANGUAGE DeriveFunctor #-}
#-}

{-# FOREIGN GHC
  import GHC.Generics (Generic)
  import Prelude hiding (Rational)
  import GHC.Real (Ratio(..))
#-}

-- * Haskell types

instance
  iConvTop    = Convertible-Refl {⊤}
  iConvNat    = Convertible-Refl {ℕ}
  iConvString = Convertible-Refl {String}
  iConvBool   = Convertible-Refl {Bool}

  HsTy-⊥ = MkHsType ⊥ Empty
  Conv-⊥ = autoConvert ⊥

  HsTy-⊤ = MkHsType ⊤ ⊤

-- * Rational

data Rational : Type where
  _,_ : ℤ → ℕ → Rational
{-# COMPILE GHC Rational = data Rational ((:%)) #-}

-- We'll generate code with qualified references to Rational in this
-- module, so make sure to define it.
{-# FOREIGN GHC type Rational = Ratio Integer #-}

instance
  HsTy-Rational = MkHsType ℚ Rational
  Conv-Rational : HsConvertible ℚ
  Conv-Rational = λ where
    .to (mkℚ n d _)       → n , suc d
    .from (n , zero)    → 0ℚ -- TODO is there a safer way to do this?
    .from (n , (suc d)) → n Data.Rational./ suc d

-- * Maps and Sets

record HSMap K V : Type where
  constructor MkHSMap
  field assocList : List (Pair K V)

record HSSet A : Type where
  constructor MkHSSet
  field elems : List A

{-# FOREIGN GHC
  newtype HSMap k v = MkHSMap [(k, v)]
    deriving (Generic, Show, Eq, Ord)
  newtype HSSet a = MkHSSet [a]
    deriving (Generic, Show, Eq, Ord)
#-}
{-# COMPILE GHC HSMap = data HSMap (MkHSMap) #-}
{-# COMPILE GHC HSSet = data HSSet (MkHSSet) #-}

instance
  HsTy-HSSet : ∀ {A} → ⦃ HasHsType A ⦄ → HasHsType (ℙ A)
  HsTy-HSSet {A} = MkHsType _ (HSSet (HsType A))

  Conv-HSSet : ∀ {A} ⦃ _ : HasHsType A ⦄
             → ⦃ HsConvertible A ⦄
             → HsConvertible (ℙ A)
  Conv-HSSet = λ where
    .to → MkHSSet ∘ to ∘ setToList
    .from → fromList ∘ from ∘ HSSet.elems

  HsTy-Map : ∀ {A B} → ⦃ HasHsType A ⦄ → ⦃ HasHsType B ⦄ → HasHsType (A ⇀ B)
  HsTy-Map {A} {B} = MkHsType _ (HSMap (HsType A) (HsType B))

  Conv-HSMap : ∀ {A B} ⦃ _ : HasHsType A ⦄ ⦃ _ : HasHsType B ⦄
    → ⦃ DecEq A ⦄
    → ⦃ HsConvertible A ⦄
    → ⦃ HsConvertible B ⦄
    → HsConvertible (A ⇀ B)
  Conv-HSMap = λ where
    .to → MkHSMap ∘ to
    .from → from ∘ HSMap.assocList

-- * ComputationResult

data HSComputationResult E A : Type where
  Success : A → HSComputationResult E A
  Failure : E → HSComputationResult E A

{-# FOREIGN GHC
  data ComputationResult e a = Success a | Failure e
    deriving (Functor, Eq, Show, Generic)

  instance Applicative (ComputationResult e) where
    pure = Success
    (Success f) <*> x = f <$> x
    (Failure e) <*> _ = Failure e

  instance Monad (ComputationResult e) where
    return = pure
    (Success a) >>= m = m a
    (Failure e) >>= _ = Failure e
#-}
{-# COMPILE GHC HSComputationResult = data ComputationResult (Success | Failure) #-}

instance
  HsTy-ComputationResult : ∀ {l} {Err} {A : Type l}
                           → ⦃ HasHsType Err ⦄ → ⦃ HasHsType A ⦄
                           → HasHsType (ComputationResult Err A)
  HsTy-ComputationResult {Err = Err} {A} = MkHsType _ (HSComputationResult (HsType Err) (HsType A))

  Conv-ComputationResult : ConvertibleType HSComputationResult ComputationResult
  Conv-ComputationResult = autoConvertible

  Conv-HSComputationResult : ConvertibleType ComputationResult HSComputationResult
  Conv-HSComputationResult = autoConvertible
-- * Numeric types

instance
  HsTy-UnitInterval : HasHsType UnitInterval
  HsTy-UnitInterval .HasHsType.HsType = Rational
    -- I would like to use ℚ here, but Rational converts better.

  Conv-UnitInterval : Convertible UnitInterval Rational
  Conv-UnitInterval .to x = to (fromUnitInterval x)
  Conv-UnitInterval .from x =
    case toUnitInterval (from x) of λ where
      (just x) → x
      nothing → error "Formal Spec: rational outside of unit interval"

instance
  HsTy-PosNat : HasHsType PosNat
  HsTy-PosNat .HasHsType.HsType = ℕ

  Conv-PosNat : Convertible PosNat ℕ
  Conv-PosNat .to x = to (fromPosNat x)
  Conv-PosNat .from x =
    case toPosNat (from x) of λ where
      (just x) → x
      nothing → error "Formal Spec: natural number is zero (not nonZero)"

unquoteDecl = do
  hsTypeAlias Coin
```
