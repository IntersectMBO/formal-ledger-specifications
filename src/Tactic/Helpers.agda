{-# OPTIONS -v Test:101 #-}
module Tactic.Helpers where

open import Reflection.AST.Abstraction using (unAbs)
open import Reflection.AST.Argument using (vArg; hArg; iArg)
open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product hiding (map)
open import Data.String using (String; _<+>_)
open import Function
open import Reflection using (Term; Type; Name; data-cons; pi; abs; Abs; Arg; Clause; vArg; data-type; record-type; var; con; def; lam; pat-lam; arg; agda-sort; lit; meta; unknown; Pattern; strErr; ErrorPart) public
open import Data.Maybe using (Maybe; just; nothing; from-just; when)
open import Data.Unit
open import Level

open import Prelude.Foldable
import Prelude.Functor as P
open import Prelude.Generics using (TypeView; viewTy; mapVars)
open import Prelude.Lists
import Prelude.Monad as P
import Prelude.Show as P
open import Prelude.Traversable

open import Interface.MonadError hiding (MonadError-TC)
open import Interface.MonadTC
open import Interface.Monad
open import Interface.MonadReader
open import Interface.Show
open import Reflection.TCI
open import Tactic.Defaults

private
  variable a b c : Level
           A : Set a
           B : Set b

zipWithIndex : (ℕ → A → B) → List A → List B
zipWithIndex f l = zipWith f (indices l) l

record DataDef : Set where
  field
    name : Name
    constructors : List (Name × TypeView)

record RecordDef : Set where
  field
    name : Name
    fields : List (Arg Name)

instance
  Show-Abs : ∀ {A} → {{P.Show A}} → P.Show (Abs A)
  Show-Abs .P.show (abs s x) = "abs" <+> s <+> P.show x

  Show-DataDef : P.Show DataDef
  Show-DataDef .P.show d = let open DataDef d in
    "DataDef:" <+> P.show name <+> "=" <+> P.show ((map₂ P.show) P.<$> constructors)

pattern ♯ n = Term.var n []

pattern ⟦_∣_∣_⇒_⟧ x y z k = Clause.clause [] (vArg x ∷ vArg y ∷ vArg z ∷ []) k
pattern ⟦_∣_∣_⦅_⦆⇒_⟧ x y z tel k = Clause.clause tel (vArg x ∷ vArg y ∷ vArg z ∷ []) k

getName : Abs A → String
getName (abs s x) = s

open Monad ⦃...⦄
open MonadTC ⦃...⦄
open MonadError ⦃...⦄
open MonadReader ⦃...⦄

record IsErrorPart (A : Set) : Set where
  field
    toErrorPart : A → ErrorPart

open IsErrorPart ⦃...⦄

instance
  IsErrorPart-String : IsErrorPart String
  IsErrorPart-String .toErrorPart = strErr

  IsErrorPart-Term : IsErrorPart Term
  IsErrorPart-Term .toErrorPart = ErrorPart.termErr

  IsErrorPart-Name : IsErrorPart Name
  IsErrorPart-Name .toErrorPart = ErrorPart.nameErr

infixr 5 _∷ᵈ_
_∷ᵈ_ : A → ⦃ _ : IsErrorPart A ⦄ → List ErrorPart → List ErrorPart
e ∷ᵈ es = toErrorPart e ∷ es

module _ {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ ⦃ me : MonadError String M ⦄ ⦃ mre : MonadReader TCEnv M ⦄ ⦃ _ : MonadTC M ⦄ where

  logAndError : String → M A
  logAndError msg = debugLog (msg ∷ᵈ []) >> error msg

  debugLog1 : ⦃ IsErrorPart A ⦄ → A → M ⊤
  debugLog1 a = debugLog (a ∷ᵈ [])

  debugLogValue : A → M ⊤
  debugLogValue a = do
    t ← quoteTC a
    debugLog (t ∷ᵈ [])

  debugLogValueNorm : A → M ⊤
  debugLogValueNorm a = do
    t ← local (λ env → record env { normalisation = true }) $ quoteTC a
    debugLog (t ∷ᵈ [])

  debugLogTerm : Term → M ⊤
  debugLogTerm t = do
    T ← inferType t
    debugLog (t ∷ᵈ " : " ∷ᵈ T ∷ᵈ [])

  goalTy : M Type
  goalTy = reader TCEnv.goal >>= inferType

  logContext : List $ Arg Type → M ⊤
  logContext l = withAppendDebugPath "context" do
    debugLog1 "Context:"
    helper (length l) l
    catch (do
      goalTy ← goalTy
      debugLog ("  ⊢ " ∷ᵈ goalTy ∷ᵈ []))
      λ _ → debugLog1 "Error while infering the goal type!"
    where
      helper : ℕ → List $ Arg Type → M ⊤
      helper n [] = return _
      helper n (arg _ t ∷ l) = do
        helper n l
        debugLog ("  " ∷ᵈ ♯ (n ∸ (length l + 1)) ∷ᵈ " : " ∷ᵈ mapVars (_+ (n ∸ length l)) t ∷ᵈ [])

  logCurrentContext : M ⊤
  logCurrentContext = logContext =<< getContext

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
      where _ → error "Not a data definition!"
    debugLog1 "Constructor names:"
    debugLogValue cs
    cs' ← traverseList (λ n → (n ,_) <$> getType' n) cs
    debugLog1 "Result"
    debugLogValueNorm cs'
    let res = record { name = n ; constructors = cs' }
    return res

  getRecordDef : Name → M RecordDef
  getRecordDef n = do
    (record-type c fs) ← getDefinition n
      where _ → error "Not a record definition!"
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
      _                   → error "Not a data or record definition!"
    traverseList (λ n → (n ,_) <$> (normalise =<< getType n)) (List Name ∋ cs)

  getConstrsForType : Term → M (List (Name × Type))
  getConstrsForType ty = do
    (def n _) ← normalise ty
      where _ → error $ P.show ty <+> "does not reduce to a definition!"
    getConstrs n

  getConstrsForTerm : Term → M (List (Name × Type))
  getConstrsForTerm t = getConstrsForType =<< inferType t

  -- run a TC computation to arrive at the term under the binder for the pattern
  withPattern : List (String × Arg Type) → List (Arg Pattern) → M Term → M Clause
  withPattern tel ps t = Clause.clause tel ps <$> extendContext' (map proj₂ tel) t

  unifyWithGoal : Term → M ⊤
  unifyWithGoal t = (reader TCEnv.goal) >>= λ t' → unify t' t

  runWithHole : Term → M A → M A
  runWithHole t = local (λ env → record env { goal = t })

  withGoalHole : M ⊤ → M Term
  withGoalHole tac = do
    hole ← reader TCEnv.goal
    runWithHole hole tac
    return hole

  newMeta : Term → M Term
  newMeta = checkType unknown

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

initUnquote : ⦃ DebugOptions ⦄ → TC ⊤ → UnquoteDecl
initUnquote ⦃ opts ⦄ unq = (initTCEnvWithGoal unknown) Reflection.>>= unq ∘ (λ env → record env { debug = opts })

instance
  _ = Reflection.TCI.Monad-TC
  _ = MonadTC-TCI
  _ = MonadError-TC
  _ = MonadReader-TC

macro
  byTC : TC A → Tactic
  byTC comp = initTac ((comp >>= quoteTC) >>= unifyWithGoal)

  by : ITactic → Tactic
  by = initTac

popPis : Term → ℕ → Maybe Term
popPis t zero = just t
popPis (pi _ (abs _ t)) (suc k) = popPis t k
popPis _ (ℕ.suc k) = nothing

-- popPisAndLift : Term → ℕ → ℕ → Maybe Term
-- popPisAndLift t ctxLen k = mapVars (_+ (ctxLen ∸ k)) <$> popPis t k
