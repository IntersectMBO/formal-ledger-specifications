open import Prelude renaming (Nat to ℕ) hiding (abs)
open import Builtin.Reflection
open import Tactic.Deriving
open import Tactic.Deriving.Eq
open import Tactic.Reflection

open import Data.Char.Unsafe using (_≟_)
open import Relation.Nullary.Negation using (¬?)
open import Data.List using (takeWhile)

open import MonadHelpers
open import ListFunctions


module Deriving.Show where

stripNamespace : Name -> String
stripNamespace n = helper $ show n
  where
    helper : String -> String
    helper s = packString $ reverse $ takeWhile (λ x -> ¬? (x ≟ '.')) $ reverse $ unpackString s

typeArgs : Type -> TC (List (Arg Type))
typeArgs t = do
  t' <- normalise t
  helper t'
  where
    helper : Type -> TC (List (Arg Type))
    helper (var x args) = return args
    helper (con c args) = return args
    helper (def f args) = return args
    helper (lam v t) = return [] -- I think
    helper (pat-lam cs args) = return [] -- I think
    helper (pi a (abs s x)) = do
      x' <- helper x
      return (a ∷ x')
    helper (agda-sort s) = return []
    helper (lit l) = return []
    helper (meta x x₁) = return x₁ -- I think
    helper unknown = return []

conArgs : Name -> String -> TC (List (Arg Pattern))
conArgs n extra = do
  t <- getType n
  args <- typeArgs t
  return $ helper args
  where
    helper : List (Arg Type) -> List (Arg Pattern)
    helper l = zipWith (λ { (arg i x) n → arg i (var n)}) l $ map (λ x -> stripNamespace n <> "_" <> extra <> "_" <> show x) $ from 0 for length l

extendContextCon : ∀ {A : Set} -> Name -> TC A -> TC A
extendContextCon n comp = do
  t <- getType n
  args <- typeArgs t
  inContext (reverse args) comp

parentTypes : Name -> TC (List (Arg Type))
parentTypes n = do
  d <- getDefinition n
  -- mapTC nub $ helper d
  helper d
  where
    helper : Definition -> TC (List (Arg Type))
    helper (function cs) = typeError [ strErr "Not yet implemented!" ]
    helper (data-type pars cs) = do
      res <- sequence $ map (λ n -> getType n >>= typeArgs) cs
      return $ concat res
    helper (record-type c fs) = typeError [ strErr "Not yet implemented!" ]
    helper (data-cons d) = typeError [ strErr "Not yet implemented!" ]
    helper axiom = return []
    helper prim-fun = return []

defineShow : Name -> Name -> TC ⊤
defineShow n d = do
  d <- getDefinition d
  clauses <- helper d
  typeErrorS $ show clauses
  defineFun n clauses
  where
    foldShowArgs : List (Arg Pattern) -> TC Term
    foldShowArgs [] = quoteTC {A = String} ""
    foldShowArgs (vArg (var s) ∷ l) = do
      tail <- foldShowArgs l >>= unquoteTC {A = String}
      v <- unquoteTC (def₁ (quote show) $ var₀ (length l))
      res <- quoteTC (" " <> v <> tail)
      return $ res
    {-# CATCHALL #-}
    foldShowArgs (vArg _ ∷ l) = typeErrorS "Cannot derive show with such constructors! Is this a bug?"
    foldShowArgs (arg (arg-info visible irrelevant) x ∷ l) = foldShowArgs l
    foldShowArgs (arg (arg-info hidden r) x ∷ l) = foldShowArgs l
    foldShowArgs (arg (arg-info instance′ r) x ∷ l) = foldShowArgs l

    helper : Definition -> TC (List Clause)
    helper (function cs) = typeErrorS "Cannot derive a Show instance for functions!"
    helper (data-type pars cs) = do
      sequence $ map helper' cs
      where
        helper' : Name -> TC Clause
        helper' conName = extendContextCon conName $ do
          args <- conArgs conName ""
          argRes <- foldShowArgs args >>= unquoteTC
          res <- quoteTC (stripNamespace conName <> argRes) >>= normalise
          return $ clause [ vArg (con conName args) ] res
    helper (record-type c fs) = typeErrorS "Not yet implemented!"
    helper (data-cons d) = typeErrorS "I don't understand this case!"
    helper axiom = typeErrorS "Cannot derive a Show instance for axioms!"
    helper prim-fun = typeErrorS "Cannot derive a Show instance for primitives!"

solveShow : Name -> Name -> TC ⊤
solveShow n new = do
  parents <- fmap fst $ instanceTelescope n (quote Show)
  declareDef (vArg new) $ telPi (parents ++ [ vArg $ def₀ n ]) (def₀ (quote String))
  defineShow new n
  where

    addInstanceArgs : Name -> Name -> Type -> TC Type
    addInstanceArgs n class t =
      caseM instanceTelescope n class of λ
      { (tel , vs) -> pure $ telPi tel $ t
      }

data Tester : Set where
  some : Tester
  things : ℕ -> ℕ -> Tester

unquoteDecl Tester-showInstance = solveShow (quote Tester) Tester-showInstance
instance
  ShowTester : Show Tester
  ShowTester = simpleShowInstance Tester-showInstance

unquoteDecl visibilityShowInstance = solveShow (quote Visibility) visibilityShowInstance
instance
  ShowVisibility : Show Visibility
  ShowVisibility = simpleShowInstance visibilityShowInstance

unquoteDecl relevanceShowInstance = solveShow (quote Relevance) relevanceShowInstance
instance
  ShowRelevance : Show Relevance
  ShowRelevance = simpleShowInstance relevanceShowInstance

unquoteDecl argInfoShowInstance = solveShow (quote ArgInfo) argInfoShowInstance
instance
  ShowArgInfo : Show ArgInfo
  ShowArgInfo = simpleShowInstance argInfoShowInstance

unquoteDecl argShowInstance = solveShow (quote Arg) argShowInstance
instance
  ShowArg : {A : Set} -> {{s : Show A}} -> Show (Arg A)
  ShowArg {{s}} = simpleShowInstance λ { (arg i x) → "arg (" <> show i <> ") " <> show x}

showArg' : {A : Set} -> (A -> String) -> Arg A -> String
showArg' show' (arg i x) = "arg (" <> show i <> ") " <> show' x

showList' : ∀ {p} {A : Set p} -> (A -> String) -> List A -> String
showList' s l = "[" <> mconcat (punctuate ", " (map s l)) <> "]"

instance
  {-# TERMINATING #-} -- I'm confused why this is needed (even if I only make helper recursive, without depending on ShowPattern)
  ShowPattern : Show Pattern
  ShowPattern = simpleShowInstance helper
    module ShowPattern where
      helper : Pattern -> String
      helper (con c ps) = "con " <> show c <> " " <> show ps
      helper dot = " . "
      helper (var s) = "var " <> s
      helper (lit l) = "lit " <> show l
      helper (proj f) = "proj " <> show f
      helper absurd = " () "

showAbs' : ∀ {A} -> (A -> String) -> Abs A -> String
showAbs' show' (abs s x) = "abs " <> s <> " (" <> show' x <> ")"

instance
  ShowAbs : ∀ {A} {{_ : Show A}} -> Show (Abs A)
  ShowAbs = simpleShowInstance λ { (abs s x) → "abs " <> s <> " " <> show x}

module ShowTerm where
  showTerm : Term -> String
  showClause : Clause -> String

  {-# TERMINATING #-}
  showTerm = λ { (var x args) → "var " <> show x <> " " <> show (length args) ; (con c args) → "con" ; (def f args) → "def " <> show f <> " " <> (showList' (showArg' showTerm) args) ; (lam v t) → "lam" ; (pat-lam cs args) → "pat-lam " <> mconcat (punctuate "; " $ map showClause cs) ; (pi a b) → "pi " <> showArg' showTerm a <> " " <> showAbs' showTerm b ; (agda-sort s) -> "sort" ; (lit l) → "lit " <> show l ; (meta x x₁) → "meta " <> show x ; unknown → "unknown"}

  showClause = λ { (clause ps t) → (show ps) <> " " <> showTerm t ; (absurd-clause ps) → "()"}

instance
  ShowClause : Show Clause
  ShowClause = simpleShowInstance ShowTerm.showClause

instance
  ShowTerm : Show Term
  ShowTerm = simpleShowInstance ShowTerm.showTerm

-- instance
--   ShowProd : ∀ {a b} {A : Set a} {B : Set b} {{_ : Show A}} {{_ : Show B}} -> Show (A × B)
--   ShowProd {{h}} {{h'}} = 

macro
  -- print and abord in the TC monad
  printError : TC String -> Term -> TC ⊤
  printError s t = do
    s' <- s
    typeErrorS s'

printTypeError : ℕ
printTypeError = {!printError (fmap show $ instanceType (quote Arg) (quote Show))!}

unquoteDecl VisEq = deriveEq VisEq (quote Visibility)


