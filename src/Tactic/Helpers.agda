--{-# OPTIONS --safe --without-K #-}
module Tactic.Helpers where

open import Prelude
open import Meta

open import Data.List using (map; zipWith)

open import PreludeImports

import Reflection
open import Interface.Monad.Instance
open import Interface.MonadError.Instance
open import Interface.MonadReader.Instance
open import Interface.MonadTC.Instance

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

  -- run a computation that returns a term, resetting the TC state but
  -- ensuring that the term doesn't contain any metavariables
  withSafeReset : M Term → M Term
  withSafeReset x = runAndReset $ do
    t ← x
    let m = findMetas t
    if null m
      then return t
      else do
        debugLogᵐ ("Remaining metavariables:" ∷ᵈᵐ m ᵛⁿ ∷ᵈᵐ []ᵐ)
        debugLog ("In term: " ∷ᵈ t ∷ᵈ [])
        error1 "Unsolved metavariables remaining in withSafeReset!"

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

module _ ⦃ _ : DebugOptions ⦄ where
  macro
    byTC : TC A → Tactic
    byTC comp = initTac ((comp >>= quoteTC) >>= unifyWithGoal)

    by : ITactic → Tactic
    by = initTac
