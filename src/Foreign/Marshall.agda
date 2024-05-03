{-# OPTIONS -v tc.unquote.def:10 -v tc.unquote.decl:10 -v tactic.hs-types:10 #-}

module Foreign.Marshall where

open import Level using (Level; 0ℓ)
open import Data.Nat.Base using (ℕ)
open import Data.Unit using (⊤)
open import Data.List using (List; []; _∷_)
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

private
  `Set = agda-sort (Sort.set (quote 0ℓ ∙))
  doAutoMarshalling : Name → Term → TC ⊤
  doAutoMarshalling d hole = do
    hsTyMeta ← newMeta `Set
    checkType hole (quote Convertible ∙⟦ d ∙ ∣ hsTyMeta ⟧)
    hsTy ← solveHsType (d ∙)
    unify hsTyMeta hsTy
    patlam ← doPatternLambda hole
    unify hole patlam

macro
  autoMarshall : Name → Term → TC ⊤
  autoMarshall = doAutoMarshalling

data Dummy : Set where
  baseCase : Dummy
  stepCase : ℕ → Dummy

instance
  iConvertible-ℕ = Convertible-Refl

instance
  iHsType-Dummy      = autoHsType Dummy
  iMarshalling-Dummy = autoMarshall Dummy
