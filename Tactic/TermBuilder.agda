module Tactic.TermBuilder where

open import Agda.Builtin.Reflection using (withReconstructed)
open import Reflection.Argument using (unArg)
open import Reflection.Abstraction using (unAbs)
open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product hiding (_<*>_)
open import Data.String using (String; _<+>_)
open import Function
open import Reflection hiding (name; _>>=_; _>>_; return)
open import Data.Maybe using (from-just)
open import Category.Monad.State

open import Prelude.Foldable
open import Prelude.Functor
open import Prelude.Generics
open import Prelude.Lists
open import Prelude.Monad
open import Prelude.Show
open import Prelude.Traversable
open import Prelude.Monoid
open import Prelude.Init
open import Prelude.Applicative

open import Tactic.Helpers
open import Tactic.ClauseBuilder
open import Level

private
  variable a b : Level
           A : Set a

record TermBuilder (M : Set → Set) : Set₁ where
  field
    Base : Set → Set
    liftBase : Base A → M A
    getContext : M ?
    goalType : M Type
    refine : (Vec n A → Term) → Vec n (M A) → M ⊤

open TermBuilder {{...}} public
