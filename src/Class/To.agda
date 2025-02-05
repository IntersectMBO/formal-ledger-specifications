{-# OPTIONS --safe #-}
module Class.To where

record To (X : Set) (Y : Set) : Set where
  field 
    ⟦_⟧ : X → Y
  infix 5 ⟦_⟧

open To ⦃...⦄ public

-- Metaprogram to derive instances
open import Data.List.NonEmpty as NE using (List⁺; _∷_)
open import Data.List
open import Meta
open import MetaPrelude
open import Reflection.Tactic
open import Reflection.Utils.Debug

open import Class.MonadTC
open import Class.Monad
open import Class.Functor
open import Class.Traversable

open import Data.Product.Nary.NonDependent using (uncurryₙ)

open MonadTCI

getCodPi : Type → Type
getCodPi ty =
  let as , ty_v = stripPis ty
  in unbumpTerm (length as) ty_v
  where
    -- readjust De Bruijn indexes 
    unbumpTerm : ℕ → Term → Term
    unbumpArg : ℕ → Arg Term → Arg Term
    unbumpArgs : ℕ → List (Arg Term) → List (Arg Term)

    unbumpTerm n (var n' args) = var (n' ∸ n) (unbumpArgs n args)
    unbumpTerm n (con c args) = con c (unbumpArgs n args)
    unbumpTerm n (def f args) = def f (unbumpArgs n args)
    unbumpTerm n d = d

    unbumpArg n (arg i x) = arg i (unbumpTerm n x)

    unbumpArgs n [] = []
    unbumpArgs n (x ∷ xs) = unbumpArg n x ∷ unbumpArgs n xs

-- Map a nonempty record def. to
-- 1. its constructor
-- 2. the type of its fields
-- 3. the number of fields
fromNERecDef : Definition → TC (Name × List⁺ Type × ℕ)
fromNERecDef (record′ c (f ∷ fs)) =
  do ty  ← fmap ⦃ Functor-M ⦄ getCodPi (getType (unArg f))
     tys ← traverse (λ f → fmap ⦃ Functor-M ⦄ getCodPi (getType (unArg f))) fs
     return (c , ty ∷ tys , 1 + length fs)
fromNERecDef (record′ c [])       = typeError [ strErr "Expected a nonempty record type" ]
fromNERecDef d                    = typeError [ strErr "Expected a record type" ]

getRecConstrName : Name → TC Name
getRecConstrName rn =
  do d ← getDefinition rn
     case d of λ where
       (record′ c _) → return c
       _ → typeError [ strErr "Expected a record got something else" ]

-- Derive instance of To
derive-To-single : Name -- name of the record type
                 → Name -- name of the instance to be defined
                 → TC ⊤
derive-To-single recTyName instName =
  do To-ctrName             ← getRecConstrName (quote To)
     recDef                 ← getDefinition recTyName
     (ctrName , fTys , nfs) ← fromNERecDef recDef
     arity                  ← quoteTC nfs
     arity'                 ← normalise arity
     let tyProd = NE.foldr₁ (λ ty tys → (quote _×_) ∙⟦ ty ∣ tys ⟧) fTys
     let defTm  = (quote To) ∙⟦ tyProd ∣ recTyName ∙ ⟧
     let instTm = To-ctrName ◆⟦ quote uncurryₙ ∙⟦ arity' ∣ ctrName ◆ ⟧ ⟧
     declareDef (iArg instName) defTm
     defineFun instName [ ⟦⇒ instTm ⟧ ]

module _ ⦃ _ : TCOptions ⦄ where
  derive-To : List (Name × Name) → UnquoteDecl
  derive-To rcs = initUnquoteWithGoal (quote To ∙) (traverse (uncurry derive-To-single) rcs >> return tt)

-- Example usage
private
  record R : Set where
    field r : Bool

  record R' : Set where
    field x : Bool
          y : ℕ

  unquoteDecl To-R To-R' = derive-To ⦃ defaultTCOptions ⦄ ((quote R , To-R) ∷ (quote R' , To-R') ∷ [])

  p : R
  p = ⟦ true ⟧

  module _ (x : Set) where
    record R'' : Set where
      field a : ℕ
            b c : Bool

    instance
      unquoteDecl To-R'' = derive-To ⦃ defaultTCOptions ⦄ ((quote R'' , To-R'') ∷  [])
