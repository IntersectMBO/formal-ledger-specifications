--------------------------------------------------------------------------------
-- tryConstrs: Try to refine the goal with constructors recursively,
-- applying some other tactic at the leaves
--------------------------------------------------------------------------------

module Tactic.Constrs where

open import Agda.Builtin.Reflection using (withReconstructed)
import Reflection.AST.Argument
open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product
open import Data.String using (String; _<+>_)
open import Function
open import Reflection using (Name; Type; Term; Arg; arg; unknown; con)
open import Data.Maybe using (from-just)
open import Data.Unit

open import Prelude.Foldable
open import Prelude.Generics using (argTys)
open import Prelude.Lists
open import Prelude.Show
open import Prelude.Traversable

open import Tactic.Defaults
open import Tactic.Helpers

open import Interface.Monad
open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadTC hiding (Monad-TC)
open import Interface.MonadReader
open import Reflection.TCI

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

instance
  _ = Monad-TC
  _ = MonadTC-TCI
  _ = MonadReader-TC
  _ = MonadError-TC

applyConstrToUnknowns : Name → Type → Term
applyConstrToUnknowns n ty = con n (Data.List.map toUnknown $ argTys ty)
  where
    toUnknown : Arg Type → Arg Type
    toUnknown (arg i _) = arg i unknown

tryConstrsWith' : ℕ → ITactic → ITactic
tryConstrsWith' zero        tac =
  inDebugPath "tryConstrs" $ catch tac (λ _ → error "Maximum depth reached!")
tryConstrsWith' (suc depth) tac =
  inDebugPath "tryConstrs" $ catch tac λ _ → do
  goal ← reader TCEnv.goal
  goalTy ← inferType goal
  debugLog ("Find constructor for type " ∷ᵈ goalTy ∷ᵈ [])
  constrs ← getConstrsForTerm goal
  try (Data.List.map (λ constr → do
      debugLog ("Try constructor " ∷ᵈ proj₁ constr ∷ᵈ " of type: " ∷ᵈ proj₂ constr ∷ᵈ [])
      let t = uncurry applyConstrToUnknowns constr
      t' ← local (λ env → record env { reconstruction = true }) $ checkType t goalTy
      unify goal t'
      debugLog ("Success!" ∷ᵈ [])
      traverseList (λ t → runWithHole t (tryConstrsWith' depth tac)) (findMetas t')
      return tt)
    constrs)
    (logAndError "No constructors were able to solve the goal!")

macro
  tryConstrsWith = λ n tac → initTac $ tryConstrsWith' n tac

  tryConstrs : ℕ → Tactic
  tryConstrs n = initTac $ tryConstrsWith' n (error "Leaf reached!")

private
  module Test where

    open import Relation.Binary.PropositionalEquality
    open import Data.Sum
    open import Tactic.Assumption

    startDebug : ⊤
    startDebug = byTC (debugLog ("\n\n\n\nTesting 'tryConstrs'\n" ∷ᵈ []))

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
