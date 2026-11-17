{-# OPTIONS --safe #-}

-- Compare record projections through a product.  The typechecker verifies
-- that reconstructing the record is a left inverse of those projections.
module stdlib-meta.Tactic.Derive.DecEqRecord where

open import Meta.Prelude
open import Meta.Init
import Data.List
open import Reflection.Tactic
open import Class.DecEq.Core
open import Class.Functor
open import Class.Monad
open import Class.MonadTC using (TCOptions)
open import Class.Traversable
open import Relation.Nullary.Decidable using (map′)

open MonadTCI

private
  record-equality : ∀ {a b} {A : Set a} {B : Set b} ⦃ _ : DecEq B ⦄
                  → (to : A → B) → (from : B → A)
                  → (∀ x → from (to x) ≡ x) → DecEq A
  record-equality to from inverse ._≟_ x y =
    map′ (λ eq → trans (sym (inverse x)) (trans (cong from eq) (inverse y)))
         (cong to) (to x ≟ to y)

  fields-product : List Term → Term
  fields-product [] = quote tt ◆
  fields-product (t ∷ []) = t
  fields-product (t ∷ u ∷ ts) = quote _,_ ◆⟦ t ∣ fields-product (u ∷ ts) ⟧

  unpack-fields : List (Arg Name) → Term → List (Arg Term)
  unpack-fields [] _ = []
  unpack-fields (arg i _ ∷ []) t = arg i t ∷ []
  unpack-fields (arg i _ ∷ f ∷ fs) t =
    arg i (quote proj₁ ∙⟦ t ⟧) ∷ unpack-fields (f ∷ fs) (quote proj₂ ∙⟦ t ⟧)

  derive-single : Name → Name → TC ⊤
  derive-single recordName instanceName = do
    record′ constructorName fs ← getDefinition recordName
      where _ → typeError [ strErr "Expected a record type" ]
    let projections = Data.List.map (λ f → unArg f ∙⟦ ♯ 0 ⟧) fs
    let to = lam visible (abs "r" (fields-product projections))
    let from = lam visible (abs "p" (con constructorName (unpack-fields fs (♯ 0))))
    let inverse = lam visible (abs "r" (quote refl ◆))
    let value = quote record-equality ∙⟦ to ∣ from ∣ inverse ⟧
    declareDef (iArg instanceName) (quote DecEq ∙⟦ recordName ∙ ⟧)
    defineFun instanceName [ ⟦⇒ value ⟧ ]

module _ ⦃ _ : TCOptions ⦄ where
  derive-DecEqRecord : List (Name × Name) → UnquoteDecl
  derive-DecEqRecord records = initUnquoteWithGoal (quote DecEq ∙)
    (traverse (uncurry derive-single) records >> return tt)

private
  module Tests where
    open import Class.DecEq
    open import Tactic.Defaults
    open import Relation.Nullary using (does)

    instance
      DecEq-product : ∀ {a b} {A : Set a} {B : Set b}
                    → ⦃ DecEq A ⦄ → ⦃ DecEq B ⦄ → DecEq (A × B)
      DecEq-product = DecEq-×

    record Empty : Set where
      constructor empty

    record Triple : Set where
      constructor triple
      field
        firstField : ℕ
        middleField : Bool
        lastField : ℕ

    instance
      unquoteDecl DecEq-Empty DecEq-Triple = derive-DecEqRecord
        ((quote Empty , DecEq-Empty) ∷ (quote Triple , DecEq-Triple) ∷ [])

    _ : does (empty ≟ empty) ≡ true
    _ = refl

    _ : does (triple 0 true 1 ≟ triple 0 true 1) ≡ true
    _ = refl

    _ : does (triple 0 true 1 ≟ triple 1 true 1) ≡ false
    _ = refl

    _ : does (triple 0 true 1 ≟ triple 0 false 1) ≡ false
    _ = refl

    _ : does (triple 0 true 1 ≟ triple 0 true 0) ≡ false
    _ = refl

    module _ {a} (A : Set a) ⦃ _ : DecEq A ⦄ where
      record Box : Set a where
        constructor box
        field boxValue : A

      instance
        unquoteDecl DecEq-Box = derive-DecEqRecord ((quote Box , DecEq-Box) ∷ [])
