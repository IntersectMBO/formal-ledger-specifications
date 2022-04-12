{-# OPTIONS -v Test:101 #-}
module Tactic.Helpers where

open import Reflection.AST.Abstraction using (unAbs)
open import Agda.Builtin.Reflection using (withReconstructed)
open import Reflection.AST.Argument using (vArg; hArg; iArg)
open import Data.Bool
open import Data.List
open import Data.Nat
open import Data.Product
open import Data.String using (String; _<+>_)
open import Function
open import Reflection using (Term; Type; TC; Name; data-cons; pi; abs; Abs; Arg; Clause; vArg; data-type; record-type; var; con; def; lam; pat-lam; arg; agda-sort; lit; meta; unknown; Pattern)
open import Data.Maybe using (Maybe; just; nothing; from-just; when)
open import Data.Unit
open import Level

open import Prelude.Foldable
open import Prelude.Functor
open import Prelude.Generics
open import Prelude.Lists
open import Prelude.Monad
open import Prelude.Show
open import Prelude.Traversable

open import Interface.MonadError
open import Interface.MonadTC
open import Interface.Show
open MonadTC MonadTC-TC hiding (runAndReset; extendContext'; mkRecord; dropContext)
open MonadTC MonadTC-TC using  (runAndReset; extendContext'; mkRecord; dropContext) public

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
  Show-Abs : ∀ {A} → {{Show A}} → Show (Abs A)
  Show-Abs .show (abs s x) = "abs" <+> s <+> show x

  Show-DataDef : Show DataDef
  Show-DataDef .show d = let open DataDef d in
    "DataDef:" <+> show name <+> "=" <+> show ((map₂ show) <$> constructors)

pattern ⟦_∣_∣_⇒_⟧ x y z k = Clause.clause [] (vArg x ∷ vArg y ∷ vArg z ∷ []) k
pattern ⟦_∣_∣_⦅_⦆⇒_⟧ x y z tel k = Clause.clause tel (vArg x ∷ vArg y ∷ vArg z ∷ []) k

getName : Abs A → String
getName (abs s x) = s

-- TODO: check that this actually is in the context!
viewTyInCtx : Type → TC TypeView
viewTyInCtx ty = do
  ctx ← getContext
  return (dropContext' ctx (viewTy ty))
  where
    dropContext' : List (Arg Type) → TypeView → TypeView
    dropContext' ctx (args , ty) = (drop (length ctx) args , ty)

getTypeInCtx : Name → TC TypeView
getTypeInCtx n = getType n >>= viewTyInCtx

-- TODO: check that this actually is in the context!
viewTyInCtx' : ℕ → Type → TC TypeView
viewTyInCtx' ctxLen ty = do
  return (dropContext' ctxLen (viewTy ty))
  where
    dropContext' : ℕ → TypeView → TypeView
    dropContext' ctxLen (args , ty) = (drop ctxLen args , ty)

viewAndReduceTy : Type → TC TypeView
viewAndReduceTy ty = helper ty =<< length ∘ proj₁ ∘ viewTy <$> normalise ty
  where
    helper : Type → ℕ → TC TypeView
    helper ty    zero = return $ viewTy ty
    helper ty (suc k) with viewTy ty
    ... | (tel , ty') = extendContext' (unAbs <$> tel) $ do
      rTy ← reduce ty'
      (tel' , rTy') ← helper rTy k
      return (tel ++ tel' , rTy')

getType' : Name → TC TypeView
getType' n = viewAndReduceTy =<< getType n

getDataDef : Name → TC DataDef
getDataDef n = do
  (data-type pars cs) ← getDefinition n -- TODO: do something with pars
    where _ → error "Not a data definition!"
  cs' ← traverseM (λ n → (n ,_) <$> getType' n) cs
  let res = record { name = n ; constructors = cs' }
  return res

getRecordDef : Name → TC RecordDef
getRecordDef n = do
  (record-type c fs) ← getDefinition n
    where _ → error "Not a record definition!"
  return (record { name = c ; fields = fs })

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

try : List (TC ⊤) → TC ⊤ → TC ⊤
try [] e = e
try (x ∷ cs) e = MonadError.catch MonadError-TC x (λ _ → try cs e)

getConstrs : Name → TC (List (Name × Type))
getConstrs n = do
  d ← getDefinition n
  cs ← case d of λ where
    (record-type c fs)  → return [ c ]
    (data-type pars cs) → return cs
    _                   → error "Not a data or record definition!"
  traverseM (λ n → (n ,_) <$> (normalise =<< getType n)) (List Name ∋ cs)

getConstrsForType : Term → TC (List (Name × Type))
getConstrsForType ty = do
  (def n _) ← normalise ty
    where _ → error $ show ty <+> "does not reduce to a definition!"
  getConstrs n

getConstrsForTerm : Term → TC (List (Name × Type))
getConstrsForTerm t = getConstrsForType =<< inferType t

-- run a TC computation to arrive at the term under the binder for the pattern
withPattern : List (String × Arg Type) → List (Arg Pattern) → TC Term → TC Clause
withPattern tel ps t = Clause.clause tel ps <$> extendContext' (proj₂ <$> tel) t

macro
  byTC : TC A → Tactic
  byTC comp goal = comp >>= quoteTC >>= unify goal

  by : Tactic → Tactic
  by tac = tac

popPis : Term → ℕ → Maybe Term
popPis t zero = just t
popPis (pi _ (abs _ t)) (suc k) = popPis t k
popPis _ (ℕ.suc k) = nothing

popPisAndLift : Term → ℕ → ℕ → Maybe Term
popPisAndLift t ctxLen k = mapVars (_+ (ctxLen ∸ k)) <$> popPis t k
