{-# OPTIONS --safe --without-K #-}

module Reflection.Debug where

open import Prelude hiding (⊤; _∧_; _∨_; filter)

import Data.Bool
import Data.String
open import Data.List hiding (_++_; filter)

open import Relation.Nullary.Decidable using (⌊_⌋)

open import Reflection

private
  variable
    a : Level
    A : Set a

record IsErrorPart (A : Set) : Set where
  field
    toErrorPart : A → ErrorPart

open IsErrorPart ⦃...⦄ public

instance
  IsErrorPart-String : IsErrorPart String
  IsErrorPart-String .toErrorPart = ErrorPart.strErr

  IsErrorPart-Term : IsErrorPart Term
  IsErrorPart-Term .toErrorPart = ErrorPart.termErr

  IsErrorPart-Name : IsErrorPart Name
  IsErrorPart-Name .toErrorPart = ErrorPart.nameErr

infixr 5 _∷ᵈ_
_∷ᵈ_ : A → ⦃ _ : IsErrorPart A ⦄ → List ErrorPart → List ErrorPart
e ∷ᵈ es = toErrorPart e ∷ es

data DebugSelection : Set where
  FullPath : DebugSelection
  Last     : DebugSelection
  All      : DebugSelection
  Custom   : (List String → String) → DebugSelection

-- If All is selected, this pragma shows all debug info
-- {-# OPTIONS -v allTactics:100 #-}

Filter : Set
Filter = List String → Bool

module Filter where
  open import Algebra.Lattice
  open import Data.Bool.Properties
  import BooleanAlgebra

  Filter-Alg : BooleanAlgebra _ _
  Filter-Alg = BooleanAlgebra.hom (List String) ∨-∧-booleanAlgebra

  open Algebra.Lattice.BooleanAlgebra Filter-Alg public

  private
    _≣_ : String → String → Bool
    s ≣ s' = ⌊ s Data.String.≟ s' ⌋

  contains : String → Filter
  contains s l = foldl (λ acc s' → acc Data.Bool.∨ s ≣ s') false l

  noneOf : List String → Filter
  noneOf [] = ⊤
  noneOf (x ∷ l) = ¬ contains x ∧ noneOf l

  endsWith : String → Filter
  endsWith s l with last l
  ... | just x  = s ≣ x
  ... | nothing = false

  beginsWith : String → Filter
  beginsWith s l with Data.List.head l
  ... | just x  = s ≣ x
  ... | nothing = false

record DebugOptions : Set where
  field
    path      : List String
    selection : DebugSelection
    filter    : Filter
    level     : ℕ

defaultDebugOptions : DebugOptions
defaultDebugOptions = record { path = []; selection = FullPath; filter = Filter.⊤; level = 100 }

specializeDebugOptions : DebugOptions → DebugOptions → DebugOptions
specializeDebugOptions record { path = path₁ } opts@record { path = path₂ } =
  record opts { path = path₁ Data.List.++ path₂ }

debugOptionsPath : DebugOptions → String
debugOptionsPath record { path = path ; selection = FullPath } = Data.String.intersperse "/" path
debugOptionsPath record { path = path ; selection = Last } with last path
... | just x  = x
... | nothing = ""
debugOptionsPath record { path = path ; selection = All } = "allTactics"
debugOptionsPath record { path = path ; selection = Custom f } = f path

debugPrintPrefix : DebugOptions → ErrorPart
debugPrintPrefix record { path = path } = strErr (Data.String.replicate (Data.List.length path) '⎸')
