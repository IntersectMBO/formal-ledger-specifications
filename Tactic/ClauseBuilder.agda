module Tactic.ClauseBuilder where

open import Agda.Builtin.Reflection using (withReconstructed)
open import Reflection.AST.Argument using (unArg; map-Args)
open import Reflection.AST.Abstraction using (unAbs)
open import Data.Bool
open import Data.List
import Data.List.NonEmpty as NE
open import Data.Nat.Properties using (≤-totalOrder; ≤-decTotalOrder)
open import Data.List.Extrema (≤-totalOrder)
open import Data.Nat
open import Data.Product hiding (_<*>_)
open import Data.String using (String; _<+>_)
open import Function
open import Reflection hiding (name; _>>=_; _>>_; return; map-Args)
open import Data.Maybe using (from-just)
open import Category.Monad.State

-- Note: using sort from Data.List.Sort directly doesn't work for
-- metaprogramming, since it's `abstract` for whatever reason
open import Data.List.Sort using (SortingAlgorithm)
open import Data.List.Sort.MergeSort using (mergeSort)
open SortingAlgorithm ≤-decTotalOrder (mergeSort ≤-decTotalOrder) public

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
open import Prelude.DecEq

open import PreludeExt
open import Tactic.Helpers
open import Level

private
  variable a b : Level
           A : Set a

ReaderT : (R : Set) (M : Set↑) → Set↑
ReaderT R M A = R → M A

Monad-ReaderT : (R : Set) (M : Set↑) ⦃ _ : Monad M ⦄ → Monad (ReaderT R M)
Monad-ReaderT R M = rawMonadToMonad
  (λ a → const (return a))
  (λ x f r → x r >>= (λ x' → f x' r))

WriterT : (W : Set) ⦃ _ : Monoid W ⦄ (M : Set↑) → Set↑
WriterT W M A = M (W × A)

put : {W : Set} ⦃ _ : Monoid W ⦄ {M : Set↑} ⦃ _ : Monad M ⦄ → W → WriterT W M ⊤
put w = return (w , tt)

Functor-WriterT : (W : Set) ⦃ _ : Monoid W ⦄ (M : Set↑) ⦃ _ : Functor M ⦄ → Functor (WriterT W M)
Functor-WriterT W M ._<$>_ f x = (map₂ f) <$> x

Applicative-WriterT : (W : Set) ⦃ _ : Monoid W ⦄ (M : Set↑) ⦃ _ : Applicative M ⦄ → Applicative (WriterT W M)
Applicative-WriterT W M .super = Functor-WriterT W M
Applicative-WriterT W M .pure a = pure (ε , a)
Applicative-WriterT W M ._<*>_ f x = fmap (λ where (w , f') (w' , a) → (w ◇ w' , f' a)) f <*> x

Monad-WriterT : (W : Set) ⦃ _ : Monoid W ⦄ (M : Set↑) ⦃ _ : Monad M ⦄ → Monad (WriterT W M)
Monad-WriterT W M .super = Applicative-WriterT W M
Monad-WriterT W M .return a = return (ε , a)
Monad-WriterT W M ._>>=_ x f = do
  (w  , a) ← x
  (w' , b) ← f a
  return (w ◇ w' , b)

Monad-Id : Monad Id
Monad-Id = rawMonadToMonad id _|>_

Semigroup-Product : (A : Set a) (B : Set b) ⦃ _ : Semigroup A ⦄ ⦃ _ : Semigroup B ⦄ → Semigroup (A × B)
Semigroup-Product A B ._◇_ (a₁ , b₁) (a₂ , b₂) = (a₁ ◇ a₂ , b₁ ◇ b₂)

Monoid-Product : (A : Set a) (B : Set b) ⦃ _ : Monoid A ⦄ ⦃ _ : Monoid B ⦄ → Monoid (A × B)
Monoid-Product A B .Monoid.smₐ = Semigroup-Product A B
Monoid-Product A B .ε = (ε , ε)

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
    normalisedIndexList = sort $ deduplicate Nat._≟_ $ appearingIndices p

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

ctxSinglePatterns : TC (List SinglePattern)
ctxSinglePatterns = do
  ctx ← getContext
  return (singlePatternFromPattern <$> zipWithIndex (λ where k (arg i _) → arg i (` k)) ctx)

-- {-# TERMINATING #-}
-- singlePatternFromTelescope : List (String × Arg Type) → Arg Pattern → SinglePattern
-- singlePatternFromTelescope tel (arg i p) =
--   takeIndices normalisedIndexList tel , arg i (mapFreeVarsᵖ (findIndexDefault normalisedIndexList 0) 0 p)
--   where
--     appearingIndices : Pattern → List ℕ
--     appearingIndices (Pattern.con c ps) = appearingIndices ∘ unArg =<< ps
--     appearingIndices (Pattern.dot t) = [] -- TODO: this is probably wrong
--     appearingIndices (` x) = [ x ]
--     appearingIndices (Pattern.lit l) = []
--     appearingIndices (Pattern.proj f) = []
--     appearingIndices (Pattern.absurd x) = []

--     normalisedIndexList : List ℕ
--     normalisedIndexList = sort ≤-decTotalOrder $ deduplicate Nat._≟_ $ appearingIndices p

--     lookupMaybe : List A → ℕ → Maybe A
--     lookupMaybe [] n = nothing
--     lookupMaybe (x ∷ l) Nat.zero = just x
--     lookupMaybe (x ∷ l) (Nat.suc n) = lookupMaybe l n

--     takeIndices : List ℕ → List A → List A
--     takeIndices [] l = []
--     takeIndices (x ∷ i) l = lookupMaybe l x ?∷ takeIndices i l

--     findIndexDefault : ⦃ _ : DecEq A ⦄ → List A → ℕ → A → ℕ
--     findIndexDefault l d a with filter (λ where (i , x) → x Prelude.DecEq.≟ a) (zipWithIndex _,_ l)
--     ... | []          = d
--     ... | (i , _) ∷ _ = i

-- {-# TERMINATING #-}
-- findMaxDB : Pattern → Maybe ℕ
-- findMaxDB = helper nothing
--   where
--     _⊔'_ : Maybe ℕ → Maybe ℕ → Maybe ℕ
--     just a ⊔' just b = just (a Nat.⊔ b)
--     just a ⊔' nothing = just a
--     nothing ⊔' b = b

--     helper : Maybe ℕ → Pattern → Maybe ℕ
--     helper k (con c ps) = foldr (λ p acc → helper k p ⊔' acc) k (unArg <$> ps)
--     helper k (dot t) = k
--     helper k (` x) = k ⊔' (just x)
--     helper k (lit l) = k
--     helper k (proj f) = k
--     helper k (absurd x) = k

-- singleConstrPattern : Arg Name → List (Arg Pattern) → SinglePattern
-- singleConstrPattern (arg i n) args = {!L.mapMaybe (findMaxDB ∘ unArg) args!} , arg i (Pattern.con n args)

-- TODO: add the ability to match initial hidden arguments
-- TODO: add dot patterns
constrToPattern : Name → Type → TC SinglePattern
constrToPattern n ty = do
  (introTel , _) ← viewTy <$> (runAndReset $ withNormalisation true $ inferType (n ◆))
  let patternTel = zipWith (λ where (abs _ (arg i _)) k → arg i (` k)) introTel $ downFrom $ length introTel
  return (((λ where (abs s (arg i t)) → (s , arg i unknown)) <$> introTel) , (vArg $ Pattern.con n patternTel))

-- all possible patterns for an inductive type
constructorPatterns : Arg Type → TC (List SinglePattern)
constructorPatterns (arg i ty) = do
  constrs ← getConstrsForType ty
  return $ constrs <&> λ where
    (n , t) → let argInfo = proj₁ $ viewTy t
      in (((λ where (abs n' t') → n' , t') <$> argInfo)
         , arg i (Pattern.con n (zipWithIndex (λ where k (abs _ (arg i _)) → arg i (` (length argInfo ∸ Nat.suc k))) argInfo)))

-- all possible patterns for an inductive type
constructorPatterns' : Arg Type → TC (List SinglePattern)
constructorPatterns' (arg i ty) = do
  constrs ← getConstrsForType ty
  traverseM (λ where (n , _) → constrToPattern n ty) constrs

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

record ContextMonad (M : Set↑) ⦃ _ : Monad M ⦄ : Setω where
  field
    introPatternM : SinglePattern → M A → M A

  extendContextM : Arg Type → M A → M A
  extendContextM l x = introPatternM (typedVarSinglePattern "" l) x

open ContextMonad ⦃...⦄

-- No context
ContextMonad-Id : ContextMonad Id ⦃ Monad-Id ⦄
ContextMonad-Id .introPatternM _ a = a

-- Goal and TC computation
TB : Set↑
TB = ReaderT Type TC

ask : TB Type
ask = return

runTB : Type → TB A → TC A
runTB t x = x t

runTBwithHole : Hole → TB A → TC A
runTBwithHole hole x = do
  goalTy ← inferType hole
  runTB goalTy x
  
runTBinHole : Hole → TB Term → TC ⊤
runTBinHole hole x = do
  res ← runTBwithHole hole x
  unify hole res

lift-TB : TC A → TB A
lift-TB x = const x

goalHole : TB Hole
goalHole = newMeta

instance
  Functor-TB : Functor TB
  Functor-TB ._<$>_ f x t = f <$> x t

  Monad-TB : Monad TB
  Monad-TB = Monad-ReaderT _ _ 

refineWithSingle : (Term → Term) → TB Term → TB Term
refineWithSingle ref x goalTy = do
  m ← newMeta unknown
  res ← checkType (ref m) goalTy
  newGoalTy ← inferType m
  x' ← x newGoalTy
  unify m x'
  return $ ref x'

caseMatch : Term → TB ClauseExpr → TB Term
caseMatch t expr = lift-TB (print ("Match" <+> show t)) >> (refineWithSingle (quote case_of_ ∙⟦ t ∣_⟧) $
  (λ expr' → pat-lam (clauseExprToClauses expr') []) <$> expr)
  where open Debug ("Test" , 100)

withGoalHole : Tactic → TB Hole
withGoalHole tac = do
  hole ← goalHole
  lift-TB (tac hole)
  return hole

currentTyConstrPatterns : TB (List SinglePattern)
currentTyConstrPatterns = do
  (ty ∷ _ , _) ← viewTy′ <$> ask
    where _ → lift-TB $ error "Goal type is not a forall!"
  lift-TB $ constructorPatterns' ty

-- {-# TERMINATING #-}
-- patternToTerm : List Term → Pattern → Term
-- patternToTerm t (Pattern.con c ps) = con c ((λ where (arg v p) → arg v (patternToTerm t p)) <$> ps)
-- patternToTerm t (Pattern.dot t') = t'
-- patternToTerm t (` x) with head $ drop x t
-- ... | just t' = t'
-- ... | nothing = unknown
-- patternToTerm t (Pattern.lit l) = lit l
-- patternToTerm t (Pattern.proj f) = unknown
-- patternToTerm t (Pattern.absurd x) = unknown

stripMetaLambdas : Term → Term
stripMetaLambdas = helper 0
  where
    helper : ℕ → Term → Term
    helper k (lam _ (abs _ t)) = helper (k + 1) t
    helper k (meta x as) = meta x $ map-Args (mapVars (_∸ k)) $ take (length as ∸ k) as
    helper _ _ = unknown

-- if the goal is of type (a : A) → B, return the type of the branch of pattern p and new context
specializeType : SinglePattern → Type → TC (Type × List (Arg Type))
specializeType p@(t , arg i _) goalTy = noConstraints $ runAndReset do
  cls@((Clause.clause tel _ _) ∷ _) ← return $ clauseExprToClauses $ MatchExpr $
      (p , inj₂ (just unknown)) ∷
      [ varSinglePattern (arg i "_") , inj₂ (just unknown) ]
    where _ → error "BUG"
  (pat-lam ((Clause.clause tel' _ (meta x ap)) ∷ _) []) ← checkType (pat-lam cls []) goalTy
    where t → error ("BUG in specializeType:" <+> show t <+> "\nWith pattern:" <+> show cls <+> "\nWith type:" <+> show goalTy <+> "\nSinglePattern:" <+> show p)
  let varsToUnbind = length tel' ∸ length tel
  let newCtx = take (length tel) $ proj₂ <$> tel'
  let m = meta x (map-Args (mapVars (_∸ varsToUnbind)) $ take (length ap ∸ varsToUnbind) ap)
  goalTy' ← extendContext' newCtx $ inferType m
  return (goalTy' , newCtx)
  where open Debug ("Test" , 100)

instance
  ContextMonad-TB : ContextMonad TB
  ContextMonad-TB .introPatternM pat x goalTy = do
    (newGoalTy , newContext) ← specializeType pat goalTy
    extendContext' newContext (x newGoalTy)
    where open Debug ("Test" , 100)
    
module ClauseExprM {M : Set↑} ⦃ _ : Monad M ⦄ ⦃ _ : ContextMonad M ⦄ where

  -- Construct a ClauseExpr in M and extend the context appropriately
  matchExprM : List (SinglePattern × M (ClauseExpr ⊎ Maybe Term)) → M ClauseExpr
  matchExprM = fmap MatchExpr ∘ traverseM (λ where (a , b) → (a ,_) <$> introPatternM a b)

  singleMatchExpr : SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  singleMatchExpr p x = matchExprM [ p , x ]

  singleTelescopeMatchExpr : NE.List⁺ SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  singleTelescopeMatchExpr (p ∷ ps) x = helper p ps x
    where
      helper : SinglePattern → List SinglePattern → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
      helper p [] x = singleMatchExpr p x
      helper p (p' ∷ ps) x = singleMatchExpr p $ inj₁ <$> helper p' ps x

  introExpr : Arg String → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  introExpr n x = singleMatchExpr (varSinglePattern n) x

  introsExpr : NE.List⁺ (Arg String) → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
  introsExpr (p ∷ ps) x = helper p ps x
    where
      helper : Arg String → List (Arg String) → M (ClauseExpr ⊎ Maybe Term) → M ClauseExpr
      helper n [] x = introExpr n x
      helper n (n' ∷ ns) x = introExpr n $ inj₁ <$> helper n ns x

  contMatch : M ClauseExpr → M (ClauseExpr ⊎ Maybe Term)
  contMatch expr = inj₁ <$> expr

  finishMatch : M Term → M (ClauseExpr ⊎ Maybe Term)
  finishMatch t = inj₂ ∘ just <$> t

clauseTelescope : Clause → List (String × Arg Type)
clauseTelescope (Clause.clause tel _ _) = tel
clauseTelescope (Clause.absurd-clause tel _) = tel

instanciatePattern : SinglePattern → List (Arg Type)
instanciatePattern p = proj₂ <$> (clauseTelescope $ from-just $ head $ clauseExprToClauses $ singleMatchExpr p $ finishMatch unknown)
  where open ClauseExprM ⦃ Monad-Id ⦄ ⦃ ContextMonad-Id ⦄

instanciatePatterns : List SinglePattern → Term → List Clause
instanciatePatterns [] t = [ Clause.clause [] [] t ]
instanciatePatterns (x ∷ ps) t = clauseExprToClauses (singleTelescopeMatchExpr (x NE.∷ ps) (finishMatch t))
  where open ClauseExprM ⦃ Monad-Id ⦄ ⦃ ContextMonad-Id ⦄

bindCtxMatchExpr : TB ClauseExpr → TB ClauseExpr
bindCtxMatchExpr x = do
  e ← lift-TB $ ctxSinglePatterns
  case NE.fromList e of λ where
    (just e') → singleTelescopeMatchExpr e' $ contMatch x
    nothing → x
  where open ClauseExprM {TB}

ctxBindingClause : Term → TC Clause
ctxBindingClause t = do
  pats ← ctxSinglePatterns
  (c ∷ _) ← return $ instanciatePatterns (reverse pats) t
    where _ → error "Bug in ctxBindingClause"
  return c

CBId : Set↑
CBId = WriterT ClauseInfo id

instance
  ClauseBuilder-CBId : ClauseBuilder CBId
  ClauseBuilder-CBId .Base = id
  ClauseBuilder-CBId .liftBase = [] ,_
  ClauseBuilder-CBId .addPattern tel p (i , t) = ([ tel , p ] ◇ i , t)
  ClauseBuilder-CBId .toClause (i , t) = clauseInfoToClause i t

  Monad-CBId : Monad CBId
  Monad-CBId = Monad-WriterT ClauseInfo id ⦃ Monad-Id ⦄

CBTC : Set↑
CBTC = WriterT ClauseInfo TC

instance
  ClauseBuilder-CBTC : ClauseBuilder CBTC
  ClauseBuilder-CBTC .Base = TC
  ClauseBuilder-CBTC .liftBase = fmap ([] ,_)
  ClauseBuilder-CBTC .addPattern tel p x = put [ tel , p ] >> extendContext' (proj₂ <$> tel) x
  ClauseBuilder-CBTC .toClause x = (λ where (i , t) → clauseInfoToClause i t) <$> x

  Monad-CBTC : Monad CBTC
  Monad-CBTC = Monad-WriterT ClauseInfo TC
