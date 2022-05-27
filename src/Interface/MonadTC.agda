{-# OPTIONS --safe --without-K #-}

open import Category.Monad

open import Data.Bool
open import Data.List hiding (_++_)
open import Data.Maybe using (Maybe; just; nothing)
open import Data.Nat
open import Data.Product hiding (map)
open import Data.String
open import Data.Unit

open import Level
open import Function

open import Agda.Builtin.Reflection using (ErrorPart)
open import Reflection.AST
open import Reflection.AST.Abstraction using (unAbs)
import Reflection as R
import Reflection.TCM.Syntax as RS
import Agda.Builtin.Reflection as R'

open import Interface.MonadReader
open import Interface.MonadError
open import Interface.Monad

module Interface.MonadTC where

private
  variable
    a f : Level
    A : Set a

data ReductionOptions : Set where
  onlyReduce : List Name → ReductionOptions
  dontReduce : List Name → ReductionOptions

applyReductionOptions : ReductionOptions → R.TC A → R.TC A
applyReductionOptions (onlyReduce r) = R'.onlyReduceDefs r
applyReductionOptions (dontReduce r) = R'.dontReduceDefs r

reduceAll : ReductionOptions
reduceAll = dontReduce []

data DebugSelection : Set where
  FullPath : DebugSelection
  Last     : DebugSelection
  All      : DebugSelection
  Custom   : (List String → String) → DebugSelection

-- If All is selected, this pragma shows all debug info
-- {-# OPTIONS -v allTactics:100 #-}

record DebugOptions : Set where
  field
    path      : List String
    selection : DebugSelection
    level     : ℕ

defaultDebugOptions : DebugOptions
defaultDebugOptions = record { path = []; selection = FullPath; level = 100 }

specializeDebugOptions : DebugOptions → DebugOptions → DebugOptions
specializeDebugOptions record { path = path₁ } opts@record { path = path₂ } =
  record opts { path = path₁ Data.List.++ path₂ }

debugOptionsPath : DebugOptions → String
debugOptionsPath record { path = path ; selection = FullPath } = Data.String.intersperse "/" path
debugOptionsPath record { path = path ; selection = Last } with last path
... | just x  = x
... | nothing = ""
debugOptionsPath record { path = path ; selection = All } = "allTactics"
debugOptionsPath record { path = path ; selection = Custom f } = f path

debugPrintPrefix : DebugOptions → ErrorPart
debugPrintPrefix record { path = path } = R.strErr (Data.String.replicate (Data.List.length path) '⎸')

record TCEnv : Set where
  field
    normalisation  : Bool
    reconstruction : Bool
    noConstraints  : Bool
    reduction      : ReductionOptions
    globalContext  : List $ Arg Type
    localContext   : List $ Abs $ Arg Type
    goal           : Term
    debug          : DebugOptions

initTCEnvWithGoal : Term → R.TC TCEnv
initTCEnvWithGoal goal = R.getContext RS.<&> λ ctx → record
  { normalisation  = false
  ; reconstruction = false
  ; noConstraints  = false
  ; reduction      = reduceAll
  ; globalContext  = ctx
  ; localContext   = []
  ; goal           = goal
  ; debug          = defaultDebugOptions
  }

initTCEnv : R.TC TCEnv
initTCEnv = initTCEnvWithGoal unknown

record MonadTC (M : ∀ {f} → Set f → Set f) ⦃ m : Monad M ⦄ ⦃ me : MonadError String M ⦄ : Setω₁ where
  field
    unify            : Term → Term → M ⊤
    typeError        : ∀ {A : Set f} → List ErrorPart → M A
    inferType        : Term → M Type
    checkType        : Term → Type → M Term
    normalise        : Term → M Term
    reduce           : Term → M Term
    quoteTC          : A → M Term
    unquoteTC        : Term → M A
    quoteωTC         : ∀ {A : Setω} → A → M Term
    freshName        : String → M Name
    declareDef       : Arg Name → Type → M ⊤
    declarePostulate : Arg Name → Type → M ⊤
    defineFun        : Name → List Clause → M ⊤
    getType          : Name → M Type
    getDefinition    : Name → M Definition
    blockOnMeta      : Meta → M A
    commitTC         : M ⊤
    isMacro          : Name → M Bool
    debugPrint       : String → ℕ → List ErrorPart → M ⊤
    runSpeculative   : M (A × Bool) → M A

  open Monad m
  open MonadError me

  runAndReset : M A → M A
  runAndReset x = runSpeculative ((_, false) <$> x)

  -- dry-run and return true iff no error occured
  -- does not change any state
  isSuccessful : M A → M Bool
  isSuccessful x = runAndReset (catch (x >> return true) (λ _ → return false))

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

  -- apply the unique constructor of the record to the arguments
  mkRecord : Name → List (Arg Term) → M Term
  mkRecord n args = do
    (record-type c _) ← getDefinition n
      where _ → error "Not a record!"
    return $ con c args

  declareAndDefineFun : Arg Name → Type → List Clause → M ⊤
  declareAndDefineFun (arg i n) ty cls = declareDef (arg i n) ty >> defineFun n cls

module _ {M : ∀ {f} → Set f → Set f}
  ⦃ m : Monad M ⦄ ⦃ me : MonadError String M ⦄ ⦃ mtc : MonadTC M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ where

  open Monad m
  open MonadError me
  open MonadTC mtc
  open MonadReader mre

  debugLog : List ErrorPart → M ⊤
  debugLog es = do
    record { debug = debug } ← ask
    debugPrint (debugOptionsPath debug) (debug .DebugOptions.level) (debugPrintPrefix debug ∷ es)

  withDebugOptions : DebugOptions → M A → M A
  withDebugOptions opts x = local (λ where
    env@record { debug = opts' } → record env { debug = specializeDebugOptions opts' opts }) x

  withAppendDebugPath : String → M A → M A
  withAppendDebugPath path x = local (λ where
    env@record { debug = opts } → record env { debug = record opts { path = opts .DebugOptions.path ∷ʳ path } }) x

  noConstraints : M A → M A
  noConstraints = local λ e → record e { noConstraints = true }

  hasType : Term → Type → M Bool
  hasType t ty = isSuccessful (noConstraints $ checkType t ty)

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

  extendContext : Arg Type → M A → M A
  extendContext ty = local λ where e@record { localContext = Γ } → record e { localContext = abs "" ty ∷ Γ }

  getContext : M $ List $ Arg Type
  getContext = reader λ where
    e@record { localContext = Γ ; globalContext = Γ' } → map unAbs Γ Data.List.++ Γ'

  getLocalContext : M $ List $ Arg Type
  getLocalContext = reader λ where e@record { localContext = Γ } → map unAbs Γ

  inContext : List $ Arg Type → M A → M A
  inContext ctx = local λ e → record e { localContext = map (abs "") ctx }

  -- extend context by multiple variables
  extendContext' : List (Arg Type) → M A → M A
  extendContext' [] x = x
  extendContext' (c ∷ cs) x = extendContext c (extendContext' cs x)

  dropContext : ℕ → M A → M A
  dropContext n x = do
    ctx ← getContext
    inContext (drop n ctx) x

Monad-TC : Monad R.TC
Monad-TC = record { R }

MonadTC-TC : MonadTC R.TC ⦃ Monad-TC ⦄ ⦃ MonadError-TC ⦄
MonadTC-TC = record { R; R' using (quoteωTC; withReconstructed; onlyReduceDefs; dontReduceDefs) }
