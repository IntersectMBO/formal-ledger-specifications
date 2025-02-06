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
getCodPi (pi a b) = adjustTerm 1 (unAbs b)
  where
    -- adjust De Bruijn indexes
    adjustTerm : ℕ → Term → Term
    adjustArg : ℕ → Arg Term → Arg Term
    adjustArgs : ℕ → List (Arg Term) → List (Arg Term)

    adjustTerm n (var n' args) = var (n' ∸ n) (adjustArgs n args)
    adjustTerm n (con c args) = con c (adjustArgs n args)
    adjustTerm n (def f args) = def f (adjustArgs n args)
    adjustTerm n d = d

    adjustArg n (arg i x) = arg i (adjustTerm n x)

    adjustArgs n [] = []
    adjustArgs n (x ∷ xs) = adjustArg n x ∷ adjustArgs n xs
getCodPi ty = ty

-- Map a nonempty record def. to
-- 1. its constructor
-- 2. the type of its fields
-- 3. the number of fields
fromRecDef : Definition → TC (Name × List Type)
fromRecDef (record′ c fs) =
  do tys ← traverse (λ f → fmap ⦃ Functor-M ⦄ getCodPi (getType (unArg f))) fs
     return (c , tys)
fromRecDef d  = typeError [ strErr "Expected a record type" ]

-- Map a record to its name.
-- This will be superseeded in 2.8.0 by `quote R.constructor`
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
  do (To-ctrName , _) ← getDefinition (quote To) >>= fromRecDef -- this will be superseeded by 'quote To.constructor' in Agda 2.8.0
     (ctrName , fTys@(fTy ∷ fTys')) ← getDefinition recTyName  >>= fromRecDef
       where (_ , []) → typeError [ strErr "Expecting a nonempty record type" ]
     arity            ← quoteTC (length fTys)
     bot              ← quoteTC ⊥
     let tyProd = NE.foldr₁ (λ ty tys → (quote _×_) ∙⟦ ty ∣ tys ⟧) (fTy ∷ fTys')
     let defTm  = (quote To) ∙⟦ tyProd ∣ recTyName ∙ ⟧
     let instTm = To-ctrName ◆⟦ quote uncurryₙ ∙⟦ arity ∣ ctrName ◆ ⟧ ⟧
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
          y : ℕ → ℕ

  unquoteDecl To-R To-R' = derive-To ⦃ defaultTCOptions ⦄ ((quote R , To-R) ∷ (quote R' , To-R') ∷ [])

  p : R
  p = ⟦ true ⟧

  q : R'
  q = ⟦ true , (λ x → x) ⟧

  module _ (x : Set) where
    record R'' : Set where
      field a : ℕ
            b c : Bool

    instance
      unquoteDecl To-R'' = derive-To ⦃ defaultTCOptions ⦄ ((quote R'' , To-R'') ∷  [])
