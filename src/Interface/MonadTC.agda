{-# OPTIONS --safe --without-K #-}

module Interface.MonadTC where

open import Prelude

open import Data.List using (map)

import Agda.Builtin.Reflection as R'
import Reflection as R
import Reflection.TCM.Syntax as RS
open R using (ErrorPart)
open import Reflection.AST
open import Reflection.AST.Abstraction using (unAbs)

open import Reflection.Debug

open import Interface.MonadReader
open import Interface.MonadError
open import Interface.Monad

private
  variable
    a f : Level
    A B : Set f

data ReductionOptions : Set where
  onlyReduce : List Name → ReductionOptions
  dontReduce : List Name → ReductionOptions

reduceAll : ReductionOptions
reduceAll = dontReduce []

record TCEnv : Set where
  field
    normalisation  : Bool
    reconstruction : Bool
    noConstraints  : Bool
    reduction      : ReductionOptions
    globalContext  : List $ Arg Type
    localContext   : List $ Abs $ Arg Type
    goal           : Term ⊎ Type
    debug          : DebugOptions

initTCEnvWithGoal : Term → R.TC TCEnv
initTCEnvWithGoal goal = R.getContext RS.<&> λ ctx → record
  { normalisation  = false
  ; reconstruction = false
  ; noConstraints  = false
  ; reduction      = reduceAll
  ; globalContext  = ctx
  ; localContext   = []
  ; goal           = inj₁ goal
  ; debug          = defaultDebugOptions
  }

initTCEnv : R.TC TCEnv
initTCEnv = initTCEnvWithGoal unknown

record MonadTC (M : ∀ {f} → Set f → Set f) ⦃ m : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ : Setω₁ where
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

  nameConstr : Name → List (Arg Term) → M Term
  nameConstr n args = do
    isD ← isDef n
    isC ← isCon n
    case (isD , isC) of λ where
      (true , _)      → return $ def n args
      (false , true)  → return $ con n args
      (false , false) → error ((R'.primShowQName n <+> "is neither a definition nor a constructor!") ∷ᵈ [])

  termFromName : Name → M Term
  termFromName n = nameConstr n []

  -- apply the unique constructor of the record to the arguments
  mkRecord : Name → List (Arg Term) → M Term
  mkRecord n args = do
    (record-type c _) ← getDefinition n
      where _ → error ("Not a record!" ∷ᵈ [])
    return $ con c args

  -- this allows mutual recursion
  declareAndDefineFuns : List (Arg Name × Type × List Clause) → M ⊤
  declareAndDefineFuns ds = do
    traverseList (λ where (n , t , _) → declareDef n t) ds
    traverseList ((λ where (arg _ n , _ , cs) → defineFun n cs)) ds
    return _

  declareAndDefineFun : Arg Name → Type → List Clause → M ⊤
  declareAndDefineFun n ty cls = declareAndDefineFuns [ (n , ty , cls) ]

  newMeta : Term → M Term
  newMeta = checkType unknown

module _ {M : ∀ {f} → Set f → Set f}
  ⦃ m : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mtc : MonadTC M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ where

  open Monad m
  open MonadError me
  open MonadTC mtc
  open MonadReader mre

  record IsMErrorPart (A : Set a) : Setω where
    field toMErrorPart : A → M (List ErrorPart)

  open IsMErrorPart ⦃...⦄ public

  data MErrorPartWrap : Set where
    wrap : M (List ErrorPart) → MErrorPartWrap

  IsMErrorPart-IsErrorPart : ⦃ _ : IsErrorPart A ⦄ → IsMErrorPart A
  IsMErrorPart-IsErrorPart .toMErrorPart a = return [ toErrorPart a ]

  instance
    IsMErrorPart-String : IsMErrorPart String
    IsMErrorPart-String = IsMErrorPart-IsErrorPart

    IsMErrorPart-Term : IsMErrorPart Term
    IsMErrorPart-Term = IsMErrorPart-IsErrorPart

    IsMErrorPart-Name : IsMErrorPart Name
    IsMErrorPart-Name = IsMErrorPart-IsErrorPart

    IsMErrorPart-MErrorPartWrap : IsMErrorPart MErrorPartWrap
    IsMErrorPart-MErrorPartWrap .toMErrorPart (wrap a) = a

  []ᵐ : M (List ErrorPart)
  []ᵐ = return []

  infixr 5 _∷ᵈᵐ_
  _∷ᵈᵐ_ : A → ⦃ _ : IsMErrorPart A ⦄ → M (List ErrorPart) → M (List ErrorPart)
  e ∷ᵈᵐ es = do e ← toMErrorPart e; es ← es; return (e ++ es)

  _ᵛ : A → MErrorPartWrap
  a ᵛ = wrap do a ← quoteTC a; return (a ∷ᵈ [])

  _ᵛⁿ : A → MErrorPartWrap
  a ᵛⁿ = wrap do a ← local (λ env → record env { normalisation = true }) $ quoteTC a; return (a ∷ᵈ [])

  _ᵗ : Term → MErrorPartWrap
  t ᵗ = wrap do T ← inferType t; return (t ∷ᵈ " : " ∷ᵈ T ∷ᵈ [])

  debugLog : List ErrorPart → M ⊤
  debugLog es = do
    record { debug = debug } ← ask
    if debug .DebugOptions.filter (debug .DebugOptions.path)
      then debugPrint (debugOptionsPath debug) (debug .DebugOptions.level)
             (debugPrintPrefix debug ∷ es)
      else return tt

  debugLogᵐ : M (List ErrorPart) → M ⊤
  debugLogᵐ x = do x ← x; debugLog x

  debugLog1ᵐ : A → ⦃ _ : IsMErrorPart A ⦄ → M ⊤
  debugLog1ᵐ a = debugLogᵐ (a ∷ᵈᵐ []ᵐ)

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
      else error ("This makes the function return false" ∷ᵈ [])
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

  logAndError : List ErrorPart → M A
  logAndError e = debugLog e >> error e

  error1 : ⦃ IsErrorPart A ⦄ → A → M B
  error1 a = error (a ∷ᵈ [])

  debugLog1 : ⦃ IsErrorPart A ⦄ → A → M ⊤
  debugLog1 a = debugLog (a ∷ᵈ [])

  logAndError1 : ⦃ IsErrorPart A ⦄ → A → M B
  logAndError1 a = debugLog1 a >> error1 a

  markDontFail : String → M A → M A
  markDontFail s x = catch x λ e → logAndError (s ∷ᵈ " should never fail! This is a bug!\nError:\n" ∷ᵈ e)

  goalTy : M Type
  goalTy = do
    inj₁ t ← reader TCEnv.goal
      where inj₂ T → return T
    inferType t

  -- take the first result if it's a just, otherwise reset the state and
  -- run the second computation
  runSpeculativeMaybe : M (Maybe A) → M A → M A
  runSpeculativeMaybe x y = do
    nothing ← runSpeculative (< id , is-just > <$> x)
      where just a → return a
    y

  try : List (M ⊤) → M ⊤ → M ⊤
  try [] e = e
  try (x ∷ cs) e = MonadError.catch me x (λ _ → try cs e)

  getConstrs : Name → M (List (Name × Type))
  getConstrs n = do
    d ← getDefinition n
    cs ← case d of λ where
      (record-type c fs)  → return [ c ]
      (data-type pars cs) → return cs
      _                   → error1 "Not a data or record definition!"
    traverseList (λ n → (n ,_) <$> (normalise =<< getType n)) (List Name ∋ cs)

  getConstrsForType : Term → M (List (Name × Type))
  getConstrsForType ty = do
    (def n _) ← normalise ty
      where _ → error (ty ∷ᵈ "does not reduce to a definition!" ∷ᵈ [])
    getConstrs n

  getConstrsForTerm : Term → M (List (Name × Type))
  getConstrsForTerm t = getConstrsForType =<< inferType t

  -- run a TC computation to arrive at the term under the binder for the pattern
  withPattern : List (String × Arg Type) → List (Arg Pattern) → M Term → M Clause
  withPattern tel ps t = Clause.clause tel ps <$> extendContext' (map proj₂ tel) t

  unifyWithGoal : Term → M ⊤
  unifyWithGoal t = do
    inj₁ t' ← reader TCEnv.goal
      where _ → error1 "unifyWithGoal: Goal is not a term!"
    unify t' t

  runWithHole : Term → M A → M A
  runWithHole t = local (λ env → record env { goal = inj₁ t })

  runWithGoalTy : Term → M A → M A
  runWithGoalTy t = local (λ env → record env { goal = inj₂ t })

  goalHole : M Term
  goalHole = do
    inj₂ T ← reader TCEnv.goal
      where inj₁ hole → return hole
    newMeta T

  withGoalHole : M ⊤ → M Term
  withGoalHole tac = do
    hole ← goalHole
    runWithHole hole tac
    return hole

Monad-TC : Monad R.TC
Monad-TC = record { R }

MonadTC-TC : MonadTC R.TC ⦃ Monad-TC ⦄ ⦃ MonadError-TC ⦄
MonadTC-TC = record { R; R' using (quoteωTC; withReconstructed; onlyReduceDefs; dontReduceDefs) }
