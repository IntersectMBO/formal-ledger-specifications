{-# OPTIONS -v allTactics:100 #-}
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- genError: returns the type of the most recently bound variable as a string
-- genErrors: match on a negated conjunction and return the string of that type
--------------------------------------------------------------------------------

module stdlib-meta.Tactic.GenError where

open import Meta.Prelude
open import Meta.Init

open import Class.Decidable
open import Class.Functor
open import Class.Monad
open import Class.MonadError.Instances
open import Class.MonadReader.Instances
open import Class.MonadTC.Instances
open import Class.Show
open import Relation.Nullary using (¬_)
open import Relation.Nullary.Decidable.Core using (_because_)

open import Reflection.AST.DeBruijn using (weaken)
open import Reflection.Tactic
open import Reflection.Utils
open import Reflection.Utils.TCI
import Reflection as R
import Agda.Builtin.Reflection as R
open import Tactic.ClauseBuilder

private
  decideOne : (P : Set) → ⦃ P ⁇ ⦄ → Dec P
  decideOne P = dec

  vArgsOf : List (Arg Term) → List Term
  vArgsOf [] = []
  vArgsOf (vArg x ∷ xs) = x ∷ vArgsOf xs
  vArgsOf (_      ∷ xs) = vArgsOf xs

instance
  _ = MonadTC-TCI
  _ = Functor-M
  _ = ContextMonad-MonadTC

genError' : ITactic
genError' = inDebugPath "genError" do
  t ← inferType (♯ 0)
  s ← liftTC (R.formatErrorParts [ R.termErr t ])
  unifyWithGoal (lit (Literal.string s))

module _ ⦃ _ : TCOptions ⦄ where
  macro
    genError = initTac genError'

-- ¬ (P × Q × ...) → P × Q × ...  (pure, syntactic)
unwrapNeg : Term → Maybe Term
unwrapNeg (def (quote ¬_) as) with vArgsOf as
... | Q ∷ [] = just Q
... | _      = nothing
unwrapNeg (pi (arg _ Q) (abs _ (def (quote ⊥) []))) = just Q
unwrapNeg _ = nothing

truePat falsePat : SinglePattern
truePat  = ([ ("" , vArg unknown) ] , vArg ((quote _because_) ◇⟦ (quote true  ◇) ∣ (` 0) ⟧))
falsePat = ([ ("" , vArg unknown) ] , vArg ((quote _because_) ◇⟦ (quote false ◇) ∣ (` 0) ⟧))

buildLevel : ℕ → ℕ → Term → Term → ITactic
buildLevel (suc fuel) depth gTy X@(def (quote _×_) as) with vArgsOf as
... | A ∷ B ∷ [] = do
  s ← liftTC (R.formatErrorParts (R.strErr "¬ " ∷ R.termErr (weaken depth A) ∷ []))
  m1 ← newMeta unknown
  m2 ← extendContext ("" , vArg m1) $ newMeta (weaken (suc depth) gTy)
  unifyWithGoal =<< caseMatch (quote decideOne ∙⟦ weaken depth A ⟧) (return $ MatchExpr
      ( (truePat  , inj₂ (just m2))
      ∷ (falsePat , inj₂ (just (lit (Literal.string s))))
      ∷ []))
  extendContext ("" , vArg m1) $ runWithHole m2 (buildLevel fuel (suc depth) gTy B)
... | _ = do
  s ← liftTC (R.formatErrorParts (R.strErr "¬ " ∷ R.termErr (weaken depth X) ∷ []))
  unifyWithGoal (lit (Literal.string s))
buildLevel _ depth gTy X = do
  s ← liftTC (R.formatErrorParts (R.strErr "¬ " ∷ R.termErr (weaken depth X) ∷ []))
  unifyWithGoal (lit (Literal.string s))

genErrors' : Term → ITactic
genErrors' t = inDebugPath "genErrors" do
  ty ← inferType t
  just q ← return (unwrapNeg ty)
    where nothing → error1 "genErrors: argument is not of the form ¬ (P × Q × ...)"
  gTy ← goalTy
  buildLevel 100 0 gTy q

module _ ⦃ _ : TCOptions ⦄ where
  macro
    genErrors = initTac ∘ genErrors'

private
  open import Tactic.Defaults
  instance
    defaultDebugOptionsI : DebugOptions
    defaultDebugOptionsI = record defaultDebugOptions
      { selection = All
      ; filter = Filter.⊥ }

  module Test where
    test₁ : {A B : Set} → A → B → String
    test₁ a b = genError

    test₂ : {A : Set} → (a : A) → a ≡ a → String
    test₂ _ eq = genError

    -- N = 1: no split at all -- straight to the direct-leaf equation
    test₄ : {A : Set} → ¬ A → String
    test₄ x = genErrors x

    _ : test₄ {A = ⊥} (λ x → x) ≡ "¬ A"
    _ = refl

    test₃ : {A B C : Set} → ⦃ A ⁇ ⦄ → ⦃ B ⁇ ⦄ → ¬ (A × B × C) → String
    test₃ x = genErrors x

    _ : test₃ {A = ⊤} {⊥} {⊤} (λ where (_ , () , _)) ≡ "¬ B"
    _ = refl

    -- N = 2: exactly one decision split, both branches direct leaves
    test₅ : {A B : Set} → ⦃ A ⁇ ⦄ → ¬ (A × B) → String
    test₅ x = genErrors x

    _ : test₅ {A = ⊤} {⊥} (λ p → proj₂ p) ≡ "¬ B"
    _ = refl

    _ : test₅ {A = ⊥} {⊤} (λ p → proj₁ p) ≡ "¬ A"
    _ = refl
