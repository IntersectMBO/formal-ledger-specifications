--{-# OPTIONS --safe --without-K #-}
module Tactic.Helpers where

open import Prelude

open import Data.List using (map; zipWith)

open import PreludeImports

import Reflection
open import Interface.Monad
open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadReader
open import Interface.MonadTC
open import Interface.Show
open import Reflection.AST.Abstraction using (unAbs)
open import Reflection.Syntax
open import Reflection.TCI

private
  variable a b c : Level
           A : Set a
           B : Set b

zipWithIndex : (ℕ → A → B) → List A → List B
zipWithIndex f l = zipWith f (upTo $ length l) l

record DataDef : Set where
  field
    name : Name
    constructors : List (Name × TypeView)

record RecordDef : Set where
  field
    name : Name
    fields : List (Arg Name)

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  logAdditionalContext : List $ Arg Type → M ⊤
  logAdditionalContext l = withAppendDebugPath "context" do
    debugLog1 "Additional context:"
    helper (length l) l
    where
      helper : ℕ → List $ Arg Type → M ⊤
      helper n [] = return _
      helper n (arg _ t ∷ l) = do
        debugLog ("  " ∷ᵈ mapVars (_∸ (n ∸ (1 + length l))) t ∷ᵈ [])
        helper n l

  logContext : List $ Arg Type → M ⊤
  logContext l = withAppendDebugPath "context" do
    debugLog1 "Context:"
    helper (length l) l
    catch (do
      goalTy ← goalTy
      debugLog ("  ⊢ " ∷ᵈ goalTy ∷ᵈ []))
      λ _ → do
        inj₁ t ← reader TCEnv.goal
          where _ → error1 "Bug in logContext!"
        debugLog ("Error while infering the goal type! Goal: " ∷ᵈ t ∷ᵈ [])
    where
      helper : ℕ → List $ Arg Type → M ⊤
      helper n [] = return _
      helper n (arg _ t ∷ l) = do
        helper n l
        debugLog ("  " ∷ᵈ ♯ (n ∸ (length l + 1)) ∷ᵈ " : " ∷ᵈ mapVars (_+ (n ∸ length l)) t ∷ᵈ [])

  logCurrentContext : M ⊤
  logCurrentContext = markDontFail "logCurrentContext" (logContext =<< getContext)

  inDebugPath : String → M A → M A
  inDebugPath path x = withAppendDebugPath path do
    debugLog (("*****" <+> path <+> "*****") ∷ᵈ [])
    logCurrentContext
    x

  viewAndReduceTy : Type → M TypeView
  viewAndReduceTy ty = helper ty =<< (length ∘ proj₁ ∘ viewTy) <$> normalise ty
    where
      helper : Type → ℕ → M TypeView
      helper ty    zero = return $ viewTy ty
      helper ty (suc k) with viewTy ty
      ... | (tel , ty') = extendContext' (map unAbs tel) $ do
        rTy ← reduce ty'
        (tel' , rTy') ← helper rTy k
        return (tel ++ tel' , rTy')

  getType' : Name → M TypeView
  getType' n = viewAndReduceTy =<< getType n

  getDataDef : Name → M DataDef
  getDataDef n = inDebugPath "getDataDef" do
    debugLog ("Find details for datatype: " ∷ᵈ n ∷ᵈ [])
    (data-type pars cs) ← getDefinition n -- TODO: do something with pars
      where _ → error1 "Not a data definition!"
    debugLogᵐ ("Constructor names:" ∷ᵈᵐ cs ᵛ ∷ᵈᵐ []ᵐ)
    cs' ← traverseList (λ n → (n ,_) <$> getType' n) cs
    debugLogᵐ ("Result:" ∷ᵈᵐ cs' ᵛⁿ ∷ᵈᵐ []ᵐ)
    let res = record { name = n ; constructors = cs' }
    return res

  getRecordDef : Name → M RecordDef
  getRecordDef n = do
    (record-type c fs) ← getDefinition n
      where _ → error1 "Not a record definition!"
    return (record { name = c ; fields = fs })

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

  newMeta : Term → M Term
  newMeta = checkType unknown

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

findMetas : Term → List Term
findMetas' : List (Arg Term) → List Term
findMetasCl : List Clause → List Term

findMetas (var x args) = findMetas' args
findMetas (con c args) = findMetas' args
findMetas (def f args) = findMetas' args
findMetas (lam v (abs _ x)) = findMetas x
findMetas (pat-lam cs args) = findMetasCl cs ++ findMetas' args
findMetas (pi (arg _ a) (abs _ b)) = findMetas a ++ findMetas b
findMetas (agda-sort s) = []
findMetas (lit l) = []
findMetas m@(meta x args) = m ∷ findMetas' args
findMetas unknown = []

findMetas' [] = []
findMetas' ((arg _ t) ∷ ts) = findMetas t ++ findMetas' ts

findMetasCl [] = []
findMetasCl (Clause.clause tel ps t ∷ c) = findMetas t ++ findMetasCl c
findMetasCl (Clause.absurd-clause tel ps ∷ c) = findMetasCl c

isMeta : Term → Bool
isMeta (meta _ _) = true
isMeta _ = false

UnquoteDecl : Set
UnquoteDecl = Reflection.TC ⊤

Tactic : Set
Tactic = Term → Reflection.TC ⊤

ITactic : Set
ITactic = TC ⊤

initTacEnv : (TCEnv → TCEnv) → ITactic → Tactic
initTacEnv f tac goal = (initTCEnvWithGoal goal) Reflection.>>= tac ∘ f

initTacOpts : ITactic → DebugOptions → Tactic
initTacOpts tac opts = initTacEnv (λ env → record env { debug = opts }) tac

initTac : ⦃ DebugOptions ⦄ → ITactic → Tactic
initTac ⦃ opts ⦄ tac = initTacOpts tac opts

initUnquoteWithGoal : ⦃ DebugOptions ⦄ → Term → TC ⊤ → UnquoteDecl
initUnquoteWithGoal ⦃ opts ⦄ g unq = (initTCEnvWithGoal g) Reflection.>>= unq ∘ (λ env → record env { debug = opts })

initUnquote : ⦃ DebugOptions ⦄ → TC ⊤ → UnquoteDecl
initUnquote ⦃ opts ⦄ unq = initUnquoteWithGoal ⦃ opts ⦄ unknown unq

instance
  _ = Reflection.TCI.Monad-TC
  _ = MonadTC-TCI
  _ = MonadError-TC
  _ = MonadReader-TC

module _ ⦃ _ : DebugOptions ⦄ where
  macro
    byTC : TC A → Tactic
    byTC comp = initTac ((comp >>= quoteTC) >>= unifyWithGoal)

    by : ITactic → Tactic
    by = initTac

popPis : Term → ℕ → Maybe Term
popPis t zero = just t
popPis (pi _ (abs _ t)) (suc k) = popPis t k
popPis _ (ℕ.suc k) = nothing

-- run a computation that returns a term, resetting the TC state but
-- ensuring that the term doesn't contain any metavariables
withSafeReset : TC Term → TC Term
withSafeReset x = runAndReset $ do
  t ← x
  let m = findMetas t
  if null m
    then return t
    else do
      debugLogᵐ ("Remaining metavariables:" ∷ᵈᵐ m ᵛⁿ ∷ᵈᵐ []ᵐ)
      debugLog ("In term: " ∷ᵈ t ∷ᵈ [])
      error1 "Unsolved metavariables remaining in withSafeReset!"

-- take the first result if it's a just, otherwise reset the state and
-- run the second computation
runSpeculativeMaybe : TC (Maybe A) → TC A → TC A
runSpeculativeMaybe x y = do
  nothing ← runSpeculative (< id , is-just > <$> x)
    where just a → return a
  y

-- popPisAndLift : Term → ℕ → ℕ → Maybe Term
-- popPisAndLift t ctxLen k = mapVars (_+ (ctxLen ∸ k)) <$> popPis t k
