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

record Marshall (A : Set) : Set₁ where
  constructor mkMarshall
  field
    ⦃ iHsType      ⦄ : HasHsType A
    ⦃ iConvertible ⦄ : Convertible A (HsType A)

private
  doAutoMarshalling : Name → Term → TC ⊤
  doAutoMarshalling d hole = do
    checkType hole (quote Marshall ∙⟦ d ∙ ⟧)
    iHsTy ← newMeta (quote HasHsType ∙⟦ d ∙ ⟧)
    hsTy  ← doAutoHsType [] d iHsTy
    iConv ← newMeta (quote Convertible ∙⟦ d ∙ ∣ hsTy ⟧)
    patlam ← doPatternLambda iConv
    unify iConv patlam
    unify hole (con (quote mkMarshall) (iArg iHsTy ∷ iArg iConv ∷ []))

macro
  autoMarshall : Name → Term → TC ⊤
  autoMarshall = doAutoMarshalling

data Dummy : Set where
  baseCase : Dummy
  stepCase : ℕ → Dummy

instance
  iConvertible-ℕ = Convertible-Refl

instance
  iMarshall-Dummy = autoMarshall Dummy
  -- iHsType = autoHsType Dummy
  -- iConv   = autoConvert Dummy
