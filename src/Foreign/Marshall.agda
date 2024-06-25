-- {-# OPTIONS -v tc.unquote.def:10 -v tc.unquote.decl:10 -v tactic.hs-types:10 #-}

module Foreign.Marshall where

open import Level using (Level; 0ℓ)
open import Data.Nat.Base using (ℕ)
open import Data.Unit using (⊤)
open import Data.List using (List; []; _∷_)
open import Data.Maybe using (Maybe; just; nothing)
open import Function.Base

open import Reflection hiding (_>>=_; _>>_)
open import Reflection.Syntax

open import Class.Monad

open import Foreign.Convertible
open import Foreign.HaskellTypes
import Foreign.Convertible.Deriving
import Foreign.HaskellTypes.Deriving

open Foreign.Convertible.Deriving
open Foreign.HaskellTypes.Deriving
open Foreign.Convertible.Deriving public using (autoConvertible; ConvertibleType)
open Foreign.HaskellTypes.Deriving public using (autoHsType; autoHsType')

data Dummy : Set where
  baseCase : Dummy
  stepCase : Maybe ℕ → Dummy

record DummyR : Set where
  field
    x : ℕ
    y : Maybe ℕ

instance
  iConvertible-ℕ = Convertible-Refl {ℕ}

instance
  iHsType  = autoHsType Dummy
  iConv    = autoConvert Dummy
  iHsTypeR = autoHsType DummyR
  iConvR   = autoConvert DummyR

dummy : HsType Dummy
dummy = to (stepCase (just 2))

dummy₁ : HsType Dummy
dummy₁ = hsCon Dummy 1 (just 2)

project : HsType DummyR → Maybe ℕ
project r = hsProj DummyR 1 r

test = hsProj DummyR 1 (hsCon DummyR 0 1 (just 2))
