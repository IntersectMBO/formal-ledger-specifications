module Tactic.ClauseBuilder where

open import Prelude hiding ([_,_])

import Data.List.NonEmpty as NE
import Data.Nat
open import Data.List using (zipWith)
open import Data.Nat.Properties using (≤-totalOrder; ≤-decTotalOrder)
open import Data.Product using (map₁)

-- Note: using sort from Data.List.Sort directly doesn't work for
-- metaprogramming, since it's `abstract` for whatever reason
open import Data.List.Sort using (SortingAlgorithm)
open import Data.List.Sort.MergeSort using (mergeSort)
open SortingAlgorithm ≤-decTotalOrder (mergeSort ≤-decTotalOrder) public

open import PreludeImports

open import Tactic.Helpers

open import Interface.Monad
open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadTC hiding (Monad-TC)
open import Interface.MonadReader

open import Reflection.TCI
open import Reflection.Syntax
open import Reflection.AST.Argument using (unArg; map-Args)

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

instance
  _ = Monad-TC
  _ = MonadTC-TCI
  _ = MonadReader-TC
  _ = MonadError-TC

  Monad-List : Monad List
  Monad-List .return = _∷ []
  Monad-List ._>>=_  = flip concatMap

private
  variable a b : Level
           A : Set a

record ClauseBuilder (M : Set → Set) : Set₁ where
  field
    Base : Set → Set
    liftBase : Base A → M A
    addPattern : List (String × Arg Type) → Arg Pattern → M A → M A
    toClause : M (Maybe Term) → Base Clause

open ClauseBuilder {{...}} public

SinglePattern : Set
SinglePattern = List (String × Arg Type) × Arg Pattern

typedVarSinglePattern : String → Arg Type → SinglePattern
typedVarSinglePattern n t@(arg i _) = ([ n , t ] , arg i (` 0))

varSinglePattern : Arg String → SinglePattern
varSinglePattern (arg i n) = ([ n , arg i unknown ] , arg i (` 0))

multiSinglePattern : List String → Arg Pattern → SinglePattern
multiSinglePattern s p = ((_, vArg unknown) <$> s) , p

findIndexDefault : List ℕ → ℕ → ℕ → ℕ
findIndexDefault l d a with filter (λ where (i , x) → x Data.Nat.≟ a) (zipWithIndex _,_ l)
... | []          = d
... | (i , _) ∷ _ = i

singlePatternFromPattern : Arg Pattern → SinglePattern
singlePatternFromPattern (arg i p) =
  replicate (length (appearingIndices p)) ("" , vArg unknown) , arg i (replacePatternIndex p)
  where
    appearingIndices : Pattern → List ℕ
    appearingIndicesHelper : List (Arg Pattern) → List ℕ

    appearingIndices (Pattern.con c ps) = appearingIndicesHelper ps
    appearingIndices (Pattern.dot t) = [] -- TODO: this is probably wrong
    appearingIndices (` x) = [ x ]
    appearingIndices (Pattern.lit l) = []
    appearingIndices (Pattern.proj f) = []
    appearingIndices (Pattern.absurd x) = []

    appearingIndicesHelper [] = []
    appearingIndicesHelper (arg _ p ∷ ps) = appearingIndices p ++ appearingIndicesHelper ps

    normalisedIndexList : List ℕ
    normalisedIndexList = sort $ deduplicate Data.Nat._≟_ $ appearingIndices p

    replacePatternIndex : Pattern → Pattern
    replacePatternIndexHelper : List (Arg Pattern) → List (Arg Pattern)

    replacePatternIndex (Pattern.con c ps) = Pattern.con c (replacePatternIndexHelper ps)
    replacePatternIndex (Pattern.dot t) = Pattern.dot t
    replacePatternIndex (` x) = ` findIndexDefault normalisedIndexList 0 x
    replacePatternIndex (Pattern.lit l) = Pattern.lit l
    replacePatternIndex (Pattern.proj f) = Pattern.proj f
    replacePatternIndex (Pattern.absurd x) = Pattern.absurd x

    replacePatternIndexHelper [] = []
    replacePatternIndexHelper (arg i p ∷ ps) = (arg i (replacePatternIndex p)) ∷ (replacePatternIndexHelper ps)

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  ctxSinglePatterns : M (List SinglePattern)
  ctxSinglePatterns = do
    ctx ← getContext
    return (singlePatternFromPattern <$> zipWithIndex (λ where k (arg i _) → arg i (` k)) ctx)

  -- TODO: add the ability to match initial hidden arguments
  -- TODO: add dot patterns
  constrToPattern : Name → Type → M SinglePattern
  constrToPattern n ty = do
    (introTel , _) ← viewTy <$> (runAndReset $ local (λ env → record env { normalisation = true }) $ inferType (n ◆))
    let patternTel = zipWith (λ where (abs _ (arg i _)) k → arg i (` k)) introTel $ downFrom $ length introTel
    return (((λ where (abs s (arg i t)) → (s , arg i unknown)) <$> introTel) , (vArg $ Pattern.con n patternTel))

  -- all possible patterns for an inductive type
  constructorPatterns : Arg Type → M (List SinglePattern)
  constructorPatterns (arg i ty) = do
    constrs ← getConstrsForType ty
    return $ constrs <&> λ where
      (n , t) → let argInfo = proj₁ $ viewTy t
        in (((λ where (abs n' t') → n' , t') <$> argInfo)
           , arg i (Pattern.con n (zipWithIndex (λ where k (abs _ (arg i _)) → arg i (` (length argInfo ∸ ℕ.suc k))) argInfo)))

  -- all possible patterns for an inductive type
  constructorPatterns' : Arg Type → M (List SinglePattern)
  constructorPatterns' (arg i ty) = do
    constrs ← getConstrsForType ty
    traverseList (λ where (n , _) → constrToPattern n ty) constrs

ClauseInfo : Set
ClauseInfo = List SinglePattern

data ClauseExpr : Set where
  MatchExpr : List (SinglePattern × (ClauseExpr ⊎ Maybe Term)) → ClauseExpr

clauseExprToClauseInfo : ClauseExpr → List (ClauseInfo × Maybe Term)
clauseExprToClauseInfo (MatchExpr []) = []
clauseExprToClauseInfo (MatchExpr ((p , inj₁ e) ∷ xs)) =
  (map₁ (p ∷_) <$> clauseExprToClauseInfo e) ++ clauseExprToClauseInfo (MatchExpr xs)
clauseExprToClauseInfo (MatchExpr ((p , inj₂ t) ∷ xs)) = ([ p ] , t) ∷ clauseExprToClauseInfo (MatchExpr xs)

clauseInfoToClauseArgs : ClauseInfo → List (String × Arg Type) × List (Arg Pattern)
clauseInfoToClauseArgs i =
  case helper 0 i of λ where (tel , ps , _) → (tel , ps)
  where
    helper : ℕ → ClauseInfo → List (String × Arg Type) × List (Arg Pattern) × ℕ
    helper k [] = ([] , [] , k)
    helper k ((tel' , arg h p) ∷ i) with helper k i
    ... | (tel , ps , k') = (tel' ++ tel , arg h (mapVariables (_+ k') p) ∷ ps , length tel' + k')

clauseInfoToClause : ClauseInfo → Maybe Term → Clause
clauseInfoToClause i t with clauseInfoToClauseArgs i | t
... | tel , ps | just x  = Clause.clause tel ps x
... | tel , ps | nothing = Clause.absurd-clause tel ps

clauseExprToClauses : ClauseExpr → List Clause
clauseExprToClauses e = (λ { (i , t) → clauseInfoToClause i t }) <$> clauseExprToClauseInfo e

nonBindingClause : Term → Clause
nonBindingClause = Clause.clause [] []

clauseExprToPatLam : ClauseExpr → Term
clauseExprToPatLam e = pat-lam (clauseExprToClauses e) []

record ContextMonad (M : ∀ {a} → Set a → Set a) ⦃ _ : Monad M ⦄ : Setω where
  field
    introPatternM : SinglePattern → M A → M A

  extendContextM : Arg Type → M A → M A
  extendContextM l x = introPatternM (typedVarSinglePattern "" l) x

open ContextMonad ⦃...⦄

Monad-Id : Monad id
Monad-Id .return = id
Monad-Id ._>>=_  = flip _$_

-- No context
ContextMonad-Id : ContextMonad id ⦃ Monad-Id ⦄
ContextMonad-Id .introPatternM _ a = a

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  refineWithSingle : (Term → Term) → M Term → M Term
  refineWithSingle ref x = do
    goalTy ← goalTy
    m ← newMeta unknown
    res ← checkType (ref m) goalTy
    x' ← runWithHole m x
    unify m x'
    return $ ref x'

  caseMatch : Term → M ClauseExpr → M Term
  caseMatch t expr = debugLog ("Match" ∷ᵈ t ∷ᵈ []) >> (refineWithSingle (quote case_of_ ∙⟦ t ∣_⟧) $
    (λ expr' → pat-lam (clauseExprToClauses expr') []) <$> expr)

  currentTyConstrPatterns : M (List SinglePattern)
  currentTyConstrPatterns = do
    (ty ∷ _ , _) ← viewTy′ <$> goalTy
      where _ → error1 "Goal type is not a forall!"
    constructorPatterns' ty

stripMetaLambdas : Term → Term
stripMetaLambdas = helper 0
  where
    helper : ℕ → Term → Term
    helper k (lam _ (abs _ t)) = helper (k + 1) t
    helper k (meta x as) = meta x $ map-Args (mapVars (_∸ k)) $ take (length as ∸ k) as
    helper _ _ = unknown

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  -- if the goal is of type (a : A) → B, return the type of the branch of pattern p and new context
  specializeType : SinglePattern → Type → M (Type × List (Arg Type))
  specializeType p@(t , arg i _) goalTy = inDebugPath "specializeType" $ noConstraints $ runAndReset do
    debugLog ("Goal type to specialize: " ∷ᵈ goalTy ∷ᵈ [])
    cls@((Clause.clause tel _ _) ∷ _) ← return $ clauseExprToClauses $ MatchExpr $
        (p , inj₂ (just unknown)) ∷
        [ varSinglePattern (arg i "_") , inj₂ (just unknown) ]
      where _ → error1 "BUG"
    (pat-lam (cl@(Clause.clause tel' _ (meta x ap)) ∷ _) []) ← checkType (pat-lam cls []) goalTy
      where t → debugLog ("BUG in specializeType:" ∷ᵈ t ∷ᵈ "\nWith pattern:" -- ∷ᵈ {!cls!}
                  ∷ᵈ "\nWith type:" ∷ᵈ goalTy ∷ᵈ "\nSinglePattern:" -- ∷ᵈ {!p!}
                  ∷ᵈ []) >> error1 "BUG"
    let varsToUnbind = length tel' ∸ length tel
    let newCtx = take (length tel) $ proj₂ <$> tel'
    let m = meta x (map-Args (mapVars (_∸ varsToUnbind)) $ take (length ap ∸ varsToUnbind) ap)
    goalTy' ← extendContext' newCtx $ inferType m
    return (goalTy' , newCtx)

  ContextMonad-MonadTC : ContextMonad M
  ContextMonad-MonadTC .introPatternM pat x = do
    goalTy ← goalTy
    (newGoalTy , newContext) ← specializeType pat goalTy
    extendContext' newContext (runWithGoalTy newGoalTy x)

module ClauseExprM {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ _ : ContextMonad M ⦄ where

  -- Construct a ClauseExpr in M and extend the context appropriately
  matchExprM : List (SinglePattern × M (ClauseExpr ⊎ Maybe Term)) → M ClauseExpr
  matchExprM = _<$>_ MatchExpr ∘ traverseList (λ where (a , b) → (a ,_) <$> introPatternM a b)

  singleMatchExpr : SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  singleMatchExpr p x = matchExprM [ p , x ]

  singleTelescopeMatchExpr : NE.List⁺ SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  singleTelescopeMatchExpr (p NE.∷ ps) x = helper p ps x
    where
      helper : SinglePattern → List SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
      helper p [] x = singleMatchExpr p x
      helper p (p' ∷ ps) x = singleMatchExpr p $ inj₁ <$> helper p' ps x

  introExpr : Arg String → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  introExpr n x = singleMatchExpr (varSinglePattern n) x

  introsExpr : NE.List⁺ (Arg String) → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  introsExpr (p NE.∷ ps) x = helper p ps x
    where
      helper : Arg String → List (Arg String) → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
      helper n [] x = introExpr n x
      helper n (n' ∷ ns) x = introExpr n $ inj₁ <$> helper n ns x

  contMatch : M ClauseExpr → M (ClauseExpr ⊎ Maybe Term)
  contMatch expr = inj₁ <$> expr

  finishMatch : M Term → M (ClauseExpr ⊎ Maybe Term)
  finishMatch t = (inj₂ ∘ just) <$> t

  bindCtxMatchExpr : ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄
                   → M ClauseExpr → M ClauseExpr
  bindCtxMatchExpr x = do
    e ← ctxSinglePatterns
    case NE.fromList e of λ where
      (just e') → singleTelescopeMatchExpr e' $ contMatch x
      nothing → x

clauseTelescope : Clause → List (String × Arg Type)
clauseTelescope (Clause.clause tel _ _) = tel
clauseTelescope (Clause.absurd-clause tel _) = tel

module _ where
  open ClauseExprM ⦃ Monad-Id ⦄ ⦃ ContextMonad-Id ⦄

  instanciatePattern : SinglePattern → List (Arg Type)
  instanciatePattern p = proj₂ <$>
    (clauseTelescope $ from-just $ head $ clauseExprToClauses $ singleMatchExpr p $ finishMatch unknown)

  instanciatePatterns : List SinglePattern → Term → List Clause
  instanciatePatterns [] t = [ Clause.clause [] [] t ]
  instanciatePatterns (x ∷ ps) t =
    clauseExprToClauses $ singleTelescopeMatchExpr (x NE.∷ ps) (finishMatch t)

ctxBindingClause : Term → TC Clause
ctxBindingClause t = do
  pats ← ctxSinglePatterns
  (c ∷ _) ← return $ instanciatePatterns (reverse pats) t
    where _ → error1 "Bug in ctxBindingClause"
  return c
