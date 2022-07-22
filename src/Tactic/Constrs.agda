{-# OPTIONS --safe --without-K #-}
--------------------------------------------------------------------------------
-- tryConstrs: Try to refine the goal with constructors recursively,
-- applying some other tactic at the leaves
--------------------------------------------------------------------------------

module Tactic.Constrs where

open import Prelude
open import Meta

import Data.List

open import PreludeImports

open import Tactic.Helpers

open import Interface.Monad.Instance
open import Interface.MonadError.Instance
open import Interface.MonadReader.Instance
open import Interface.MonadTC.Instance

applyConstrToUnknowns : Name → Type → Term
applyConstrToUnknowns n ty = con n (Data.List.map toUnknown $ argTys ty)
  where
    toUnknown : Arg Type → Arg Type
    toUnknown (arg i _) = arg i unknown

tryConstrsWith' : ℕ → ITactic → ITactic
tryConstrsWith' zero        tac =
  inDebugPath "tryConstrs" $ catch tac (λ _ → error1 "Maximum depth reached!")
tryConstrsWith' (suc depth) tac =
  inDebugPath "tryConstrs" $ catch tac λ _ → do
  inj₁ goal ← reader TCEnv.goal
    where _ → error1 "Goal is not a hole!"
  goalTy ← inferType goal
  debugLog ("Find constructor for type " ∷ᵈ goalTy ∷ᵈ [])
  constrs ← getConstrsForTerm goal
  try (Data.List.map (λ constr → do
      debugLog ("Try constructor " ∷ᵈ proj₁ constr ∷ᵈ " of type: " ∷ᵈ proj₂ constr ∷ᵈ [])
      let t = uncurry applyConstrToUnknowns constr
      t' ← local (λ env → record env { reconstruction = true }) $ checkType t goalTy
      unify goal t'
      debugLog1 "Success!"
      traverseList (λ t → runWithHole t (tryConstrsWith' depth tac)) (findMetas t')
      return tt)
    constrs)
    (logAndError1 "No constructors were able to solve the goal!")

module _ ⦃ _ : DebugOptions ⦄ where
  macro
    tryConstrsWith = λ n tac → initTac $ tryConstrsWith' n tac

    tryConstrs : ℕ → Tactic
    tryConstrs n = initTac $ tryConstrsWith' n (error1 "Leaf reached!")

private
  module Test where
    open import Tactic.Assumption
    open import Tactic.Defaults

    open import Data.Sum
    open import Relation.Binary.PropositionalEquality

    startDebug : ⊤
    startDebug = byTC (debugLog1 "\n\n\n\nTesting 'tryConstrs'\n")

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
