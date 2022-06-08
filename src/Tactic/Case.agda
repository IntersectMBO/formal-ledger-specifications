{-# OPTIONS -v case:101 #-}
{-# OPTIONS -v assumption:101 #-}
module Tactic.Case where

open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product
open import Data.String using (String; _<+>_)
open import Function
open import Data.Maybe using (from-just)
open import Data.Unit
open import Relation.Nullary.Decidable

open import Tactic.Helpers

open import PreludeImports

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

matchArg : Name → List Term → TC (List (Arg Term))
matchArg n args = do
  (tel , _) ← viewTy <$> getType n
  debugLog ("Telescope:" ∷ᵈ {!tel!})
  return (zipWith (λ where (abs _ (arg i _)) → arg i) tel args)

getTypeArgs : Term → TC (List (Arg Term))
getTypeArgs t = do
  (def _ args) ← local (λ env → record env { normalisation = true }) $ inferType t
    where _ → logAndError1 $ "The type of" <+> {!show t!} <+> "does not reduce to a definition!"
  return args  

-- -- return the most general pattern for the constructor (i.e. with no nested patterns)
-- constrToPattern : Name → TC Pattern
-- constrToPattern n = do
--   (introTel , _) ← viewTy <$> inferType (n ◆)
--   let patternTel = zipWith (λ where (abs _ (arg i _)) k → arg i (` k)) introTel $ downFrom $ length introTel
--   return $ Pattern.con n patternTel

-- genMatchingClause : Name → Type → TC (List (String × Arg Type) × List (Arg Pattern))
-- genMatchingClause n ty = do
--   (introTel , _) ← viewTy <$> (runAndReset $ inferType (n ◆))
--   let patternTel = zipWith (λ where (abs _ (arg i _)) k → arg i (` k)) introTel $ downFrom $ length introTel
--   types ← runAndReset $ do
--     (con _ holes) ← checkType (con n $ fmap (λ where (abs _ (arg i _)) → arg i unknown) introTel) ty
--       where _ → error "BUG: Type-checking con should still be a con!"
--     mapM (λ where (arg i x) → inferType x) (filter ((true Data.Bool.≟_) ∘ isMeta ∘ unArg) holes)
--   let introTel' = zipWith (λ where type (abs s (arg i _)) → (s , arg i type))
--                           (zipWithIndex (λ i → mapVars (_+ i)) types) introTel
--   return (introTel' , [ vArg $ Pattern.con n patternTel ])
--   where
--     open Debug ("case" , 100)

-- genMatchingClauses : Type → TC Term → TC (List Clause)
-- genMatchingClauses ty x = do
--   constrs ← getConstrsForType ty
--   forM constrs (λ where (c , _) → do
--     (context , args) ← genMatchingClause c ty
--     withPattern context args x)

-- -- apply tac to all holes
-- case : ∀ {a} {A : Set a} → A → Tactic → Tactic
-- case a tac goal = do
--   print "***** case *****"
--   t ← quoteTC a
--   ty ← inferType t
--   print $ "Match on term" <+> show t <+> "of type" <+> show ty
--   printCurrentContext
--   goalTy ← inferType goal
--   constrs ← getConstrsForTerm t
--   clauses ← forM constrs (λ where (c , _) → do
--     print $ "Constructor:" <+> show c
--     (context , args) ← genMatchingClause c ty
--     print $ "New context" <+> show context <+> "\nFor pattern" <+> show args
--     withPattern context args $ withHole (mapVars (_+ length context) goalTy) tac)
--   unify goal (quote case_of_ ∙⟦ t ∣ pat-lam clauses [] ⟧) -- why do I need to use case_of_ here???
--   where open Debug ("case" , 100)

-- private
--   module Test (A B : Set) where
--     open import Tactic.Assumption
--     open import Data.Sum using (_⊎_)

--     record TestType : Set where
--       constructor mkTestType
--       field
--         a : A
--         b : B

--     test₁ : A × B → A
--     test₁ x = by (case x assumption')

--     test₂ : A × B → B
--     test₂ x = by (case x assumption')

--     test₃ : A ⊎ A → A
--     test₃ x = by (case x assumption')

--     test₄ : TestType → A
--     test₄ x = by (case x assumption')

--     test₅ : TestType → B
--     test₅ x = by (case x assumption')
