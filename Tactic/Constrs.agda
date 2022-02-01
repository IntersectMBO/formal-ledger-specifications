{-# OPTIONS -v tryConstrs:101 #-}
{-# OPTIONS -v assumption:101 #-}
module Tactic.Constrs where

open import Agda.Builtin.Reflection using (withReconstructed)
import Reflection.AST.Argument
open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product
open import Data.String using (String; _<+>_)
open import Function
open import Reflection hiding (name; _>>=_; _>>_; return)
open import Data.Maybe using (from-just)
open import Data.Unit

open import Prelude.Foldable
open import Prelude.Functor
open import Prelude.Generics
open import Prelude.Lists
open import Prelude.Monad
open import Prelude.Show
open import Prelude.Traversable

open import Tactic.Helpers

applyConstrToUnknowns : Name → Type → Term
applyConstrToUnknowns n ty = con n (toUnknown <$> argTys ty)
  where
    toUnknown : Arg Type → Arg Type
    toUnknown (arg i _) = arg i unknown

tryConstrsWith' : ℕ → Tactic → Tactic
tryConstrsWith' zero        tac goal = catchTC (tac goal) (error "Maximum depth reached!")
tryConstrsWith' (suc depth) tac goal = catchTC (tac goal) $ do
  goalTy ← inferType goal
  print ("Find constructor for type" <+> show goalTy)
  constrs ← getConstrsForTerm goal
  try (fmap {{Functor-List}} (λ constr → do
      print ("Try constructor" <+> show (proj₁ constr) <+> "of type:" <+> show (proj₂ constr))
      let t = uncurry applyConstrToUnknowns constr
      t' ← withReconstructed $ checkType t goalTy
      unify goal t'
      return⊤ (traverseM (tryConstrsWith' depth tac) (findMetas t')))
    constrs)
    (error "Could not solve goal!")
  where open Debug ("tryConstrs" , 100)

macro
  tryConstrsWith = tryConstrsWith'

  tryConstrs : ℕ → Tactic
  tryConstrs n = tryConstrsWith' n (λ _ → error "Leaf reached")

private
  module Test where

    open import Relation.Binary.PropositionalEquality
    open import Data.Sum
    open import Tactic.Assumption

    test₁ : (3 ≡ 3) × (1 + 1 ≡ 2)
    test₁ = tryConstrs 2

    test₂ : ℕ
    test₂ = tryConstrs 2

    _ : test₂ ≡ 0
    _ = refl

    test₃ : (1 ≡ 2) ⊎ (1 ≡ 1)
    test₃ = tryConstrs 2

    test₄ : ∀ {a} {A : Set a} {x y : A} → x ≡ y → (1 ≡ 2) ⊎ (x ≡ y)
    test₄ h = tryConstrsWith 2 assumption'
