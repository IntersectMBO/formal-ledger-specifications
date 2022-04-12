{-# OPTIONS --safe #-}

open import Category.Monad

open import Data.Bool
open import Data.List
open import Data.Maybe using (Maybe; just; nothing)
open import Data.Nat
open import Data.Product
open import Data.String
open import Data.Unit

open import Level
open import Function

open import Agda.Builtin.Reflection using (ErrorPart)
open import Reflection.AST
import Reflection as R
import Agda.Builtin.Reflection as R'

open import Interface.MonadError

module Interface.MonadTC where

private
  variable
    a b c e i f : Level
    A : Set a
    B : Set b
    C : Set c
    E : Set e
    I : Set i

record Monad (M : ∀ {a} → Set a → Set a) : Setω where
  infixl 1 _>>=_ _>>_ _>=>_
  infixr 1 _=<<_ _<=<_

  field
    return : A → M A
    _>>=_  : M A → (A → M B) → M B

  _>>_ : M A → M B → M B
  m₁ >> m₂ = m₁ >>= λ _ → m₂

  _=<<_ : (A → M B) → M A → M B
  f =<< c = c >>= f

  _>=>_ : (A → M B) → (B → M C) → (A → M C)
  f >=> g = _=<<_ g ∘ f

  _<=<_ : (B → M C) → (A → M B) → (A → M C)
  g <=< f = f >=> g

  join : M (M A) → M A
  join m = m >>= id

  _<$>_ : (A → B) → M A → M B
  _<$>_ f x = return ∘ f =<< x

record ReductionOptions : Set where
  field
    onlyReduce : Maybe $ List Name
    dontReduce : Maybe $ List Name

  applyOnlyReduce : R.TC A → R.TC A
  applyOnlyReduce x = case onlyReduce of λ where
    (just r) → R'.onlyReduceDefs r x
    nothing → x

  applyDontReduce : R.TC A → R.TC A
  applyDontReduce x = case dontReduce of λ where
    (just r) → R'.dontReduceDefs r x
    nothing → x

  applyReductionOptions : R.TC A → R.TC A
  applyReductionOptions x = applyOnlyReduce $ applyDontReduce x

open ReductionOptions using (applyReductionOptions)

noOptions : ReductionOptions
noOptions = record { onlyReduce = nothing ; dontReduce = nothing }

record TCOptions : Set where
  field
    normalisation : Bool
    reconstruction : Bool
    reduction : ReductionOptions

record MonadTC (M : ∀ {f} → Set f → Set f) (m : Monad M) (me : MonadError String M) : Setω₁ where
  field
    unify             : Term → Term → M ⊤
    typeError         : ∀ {A : Set f} → List ErrorPart → M A
    inferType         : Term → M Type
    checkType         : Term → Type → M Term
    normalise         : Term → M Term
    reduce            : Term → M Term
    quoteTC           : A → M Term
    unquoteTC         : Term → M A
    quoteωTC          : ∀ {A : Setω} → A → M Term
    getContext        : M (List (Arg Type))
    extendContext     : Arg Type → M A → M A
    inContext         : List (Arg Type) → M A → M A
    freshName         : String → M Name
    declareDef        : Arg Name → Type → M ⊤
    declarePostulate  : Arg Name → Type → M ⊤
    defineFun         : Name → List Clause → M ⊤
    getType           : Name → M Type
    getDefinition     : Name → M Definition
    blockOnMeta       : Meta → M A
    commitTC          : M ⊤
    isMacro           : Name → M Bool
    withNormalisation : Bool → M A → M A
    withReconstructed : M A → M A
    debugPrint        : String → ℕ → List ErrorPart → M ⊤
    onlyReduceDefs    : List Name → M A → M A
    dontReduceDefs    : List Name → M A → M A
    noConstraints     : M A → M A
    runSpeculative    : M (A × Bool) → M A

  open Monad m
  open MonadError me

  runAndReset : M A → M A
  runAndReset x = runSpeculative ((_, false) <$> x)

  -- dry-run and return true iff no error occured
  -- does not change any state
  isSuccessful : M A → M Bool
  isSuccessful x = runAndReset (catch (x >> return true) (λ _ → return false))

  hasType : Term → Type → M Bool
  hasType t ty = isSuccessful (noConstraints $ checkType t ty)

  -- TODO: return true on function, axiom and prim-fun constructors?
  isDef : Name → M Bool
  isDef n = do
    data-cons _ ← getDefinition n
      where _ → return true
    return false

  isCon : Name → M Bool
  isCon n = do
    data-cons _ ← getDefinition n
      where _ → return false
    return true

  termFromName : Name → M Term
  termFromName n = do
    isD ← isDef n
    isC ← isCon n
    case (isD , isC) of λ where
      (true , _)      → return $ def n []
      (false , true)  → return $ con n []
      (false , false) → error (R'.primShowQName n <+> "is neither a definition nor a constructor!")

  hasType' : Name → Type → M Bool
  hasType' n ty = isSuccessful $ noConstraints $ do
    t ← termFromName n
    t' ← checkType t ty
    if isAppliedToUnknownsAndMetas t'
      then return tt
      else error "This makes the function return false"
    where
      isUnknownsAndMetas : List (Arg Term) → Bool
      isUnknownsAndMetas [] = true
      isUnknownsAndMetas (arg i (meta x x₁) ∷ l) = isUnknownsAndMetas l
      isUnknownsAndMetas (arg i unknown ∷ l) = isUnknownsAndMetas l
      isUnknownsAndMetas (arg i _ ∷ l) = false

      isAppliedToUnknownsAndMetas : Term → Bool
      isAppliedToUnknownsAndMetas (var x args)      = isUnknownsAndMetas args
      isAppliedToUnknownsAndMetas (con c args)      = isUnknownsAndMetas args
      isAppliedToUnknownsAndMetas (def f args)      = isUnknownsAndMetas args
      isAppliedToUnknownsAndMetas (pat-lam cs args) = isUnknownsAndMetas args
      isAppliedToUnknownsAndMetas (meta x args)     = isUnknownsAndMetas args
      isAppliedToUnknownsAndMetas _                 = true

  -- extend context by multiple variables
  extendContext' : List (Arg Type) → M A → M A
  extendContext' [] x = x
  extendContext' (c ∷ cs) x = extendContext c (extendContext' cs x)

  dropContext : ℕ → M A → M A
  dropContext n x = do
    ctx ← getContext
    inContext (drop n ctx) x

  -- apply the unique constructor of the record to the arguments
  mkRecord : Name → List (Arg Term) → M Term
  mkRecord n args = do
    (record-type c _) ← getDefinition n
      where _ → error "Not a record!"
    return $ con c args

  declareAndDefineFun : Arg Name → Type → List Clause → M ⊤
  declareAndDefineFun (arg i n) ty cls = declareDef (arg i n) ty >> defineFun n cls

Monad-TC : Monad R.TC
Monad-TC = record { R }

MonadTC-TC : MonadTC R.TC Monad-TC MonadError-TC
MonadTC-TC = record { R; R' using (quoteωTC; withReconstructed; onlyReduceDefs; dontReduceDefs) }
