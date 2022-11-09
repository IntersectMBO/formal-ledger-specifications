{-# OPTIONS --safe --without-K #-}
module Tactic.Helpers where

open import Prelude
open import Meta

open import Data.List using (map; zipWith)
import Data.Sum

open import PreludeImports

open import Relation.Nullary.Decidable hiding (map)
open import Reflection.AST.Name

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
    params : List (Abs (Arg Type))

record RecordDef : Set where
  field
    name : Name
    fields : List (Arg Name)
    params : List (Abs (Arg Type))

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError (List ErrorPart) M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  logTelescope : List (Maybe String × Arg Type) → M ⊤
  logTelescope l = withAppendDebugPath "context" do
    helper (length l) l
    where
      helper : ℕ → List (Maybe String × Arg Type) → M ⊤
      helper n [] = return _
      helper n ((x , ty@(arg _ t)) ∷ l) = do
        let name = case x of λ where
          nothing   → "?"
          (just "") → "_"
          (just x)  → x
        debugLog ("  " ∷ᵈ name ∷ᵈ " : "  ∷ᵈ mapVars (_∸ (n ∸ (1 + length l))) t ∷ᵈ [])
        extendContext ty $ helper n l

  logContext : List $ Arg Type → M ⊤
  logContext l = withAppendDebugPath "context" do
    debugLog1 "Context:"
    catch (helper (length l) l) (λ _ → debugLog1 "Error while printing the context!")
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
    (data-type pars cs) ← getDefinition n
      where _ → error1 "Not a data definition!"
    debugLogᵐ ("Constructor names: " ∷ᵈᵐ cs ᵛ ∷ᵈᵐ []ᵐ)
    cs' ← traverseList (λ n → (n ,_) <$> getType' n) cs
    debugLogᵐ ("Result: " ∷ᵈᵐ cs' ᵛⁿ ∷ᵈᵐ []ᵐ)
    args ← proj₁ <$> getType' n
    return record { name = n ; constructors = cs' ; params = take pars args }

  getRecordDef : Name → M RecordDef
  getRecordDef n = do
    (record-type c fs) ← getDefinition n
      where _ → error1 "Not a record definition!"
    args ← proj₁ <$> getType' n
    return (record { name = c ; fields = fs ; params = args })

  getDataOrRecordDef : Name → M (DataDef ⊎ RecordDef)
  getDataOrRecordDef n =
    catch (inj₁ <$> getDataDef n)
      λ _ → catch (inj₂ <$> getRecordDef n)
      λ _ → error1 "Neither a data not a record definition!"

  getParams : Name → M (List (Abs (Arg Type)))
  getParams n = Data.Sum.[ DataDef.params , RecordDef.params ] <$> getDataOrRecordDef n

  isSort : Term → M Bool
  isSort t = do
    (agda-sort _) ← normalise t
      where _ → return false
    return true

  isDefT : Name → Term → M Bool
  isDefT n t = do
    (def n' _) ← normalise t
      where _ → return false
    return ⌊ n ≟ n' ⌋

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

  -- apply a list of terms to a name, picking the correct constructor & visibility
  applyWithVisibility : Name → List Term → M Term
  applyWithVisibility n l = do
    (argTys , _) ← getType' n
    nameConstr n (zipWith (λ where (abs _ (arg i _)) → arg i) argTys l)

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
