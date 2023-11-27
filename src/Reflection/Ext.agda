module Reflection.Ext where

open import Prelude
open import PreludeMeta
open import Data.Nat using (_≤ᵇ_)

open import Class.Show.Core; open import Class.Show.Instances
open import Class.Semigroup.Core; open import Class.Semigroup.Instances
open import Class.Monad.Core; open import Class.Monad.Instances
open import Class.Applicative.Core; open import Class.Applicative.Instances

open import Interface.Functor using (map; _<$>_; Type↑; Functor)

open import Generics

private variable ℓ : Level; A B : Set ℓ

-- N-ary extension of the TC context.
-- TODO: use `MonadTC.extendContext'` once it includes names
extendContextTel : Telescope → TC A → TC A
extendContextTel = λ where
  [] → id
  ((x , t) ∷ tel) → extendContext x t ∘ extendContextTel tel

-- N-ary extension of the TCI context.
extendContextTel′ : Telescope → TCI A → TCI A
extendContextTel′ = λ where
  [] m → m
  ((x , ty) ∷ tys) m → extendContext x ty ∘ extendContextTel′ tys m

-- Reducing only definitions.
reduceDef : Type → TC Type
reduceDef = λ where
  t@(def _ _) → reduce t
  t           → return t

-- Constructing list of quoted names without having to use `quote`.
macro
  infixr 4 _`∷_
  _`∷_ : Name → List Name → Hole → TC ⊤
  (x `∷ y) hole = do
    `x ← quoteTC x
    `y ← quoteTC y
    unify hole $ con (quote _∷_) (vArg `x ∷ vArg `y ∷ [])

-- Calculating all free variables of a term.
freeVars : Term → List ℕ
freeVars = go 0 where mutual
  go : ℕ → Term → _
  go bound = λ where
    (var x as) → if bound ≤ᵇ x then [ x ∸ bound ] else []
    (def _ as) → goArgs bound as
    (con _ as) → goArgs bound as
    (lam _ t̂) → goAbs (suc bound) t̂
    (pat-lam cs as) → goCls bound cs ++ goArgs bound as
    (pi at t̂) → goArg bound at ++ goAbs (suc bound) t̂
    (meta _ as) → goArgs bound as
    _ → []

  goArg : ℕ → Arg Term → _
  goArg b (arg _ t) = go b t

  goAbs : ℕ → Abs Term → _
  goAbs b (abs _ t) = go b t

  goArgs : ℕ → Args Term → _
  goArgs b = λ where [] → []; (a ∷ as) → goArg b a ◇ goArgs b as

  goCl : ℕ → Clause → _
  goCl b = λ where
    (clause tel _ t) → go (length tel +ℕ b) t
    (absurd-clause _ _) → []

  goCls : ℕ → List Clause → _
  goCls b = λ where [] → []; (c ∷ cs) → goCl b c ◇ goCls b cs

module _ x y z where
  _ = freeVars (quoteTerm (λ x → x +ℕ 1))
    ≡ []
    ∋ refl
  _ = freeVars (quoteTerm (λ x → x +ℕ y))
    ≡ [ 1 ]
    ∋ refl
  _ = freeVars (quoteTerm (λ x y → x +ℕ y +ℕ z))
    ≡ [ 0 ]
    ∋ refl
  _ = freeVars (quoteTerm (λ x → x +ℕ y +ℕ z))
    ≡ (1 ∷ 0 ∷ [])
    ∋ refl
  _ = freeVars (quoteTerm (x +ℕ y +ℕ z))
    ≡ (2 ∷ 1 ∷ 0 ∷ [])
    ∋ refl
  _ = freeVars (quote _,_ ◆⟦ ♯ 0 ∣ `λ "y" ⇒ ♯ 1 ⟧)
    ≡ (0 ∷ 0 ∷ [])
    ∋ refl

-- ** Telescopes providing names via `Abs` instead of products.

AbsTelescope = List (Abs (Arg Type))

absTelescope : AbsTelescope → Telescope
absTelescope = map λ where (abs x t) → x , t

telescopeAbs : Telescope → AbsTelescope
telescopeAbs = map $ uncurry abs

showAbsTel = show ⦃ Show-Tel ⦄ ∘ absTelescope

-- Common monadic operations.
module _ {M : Type↑} ⦃ _ : Functor M ⦄ ⦃ _ : Monad M ⦄ where

  filterM : (A → M Bool) → List A → M (List A)
  filterM P? [] = return []
  filterM P? (x ∷ xs) = do
    b ← P? x
    xs ← filterM P? xs
    return $ if b then x ∷ xs else xs

  mapM : (A → M B) → List A → M (List B)
  mapM f []       = return []
  mapM f (x ∷ xs) = do y ← f x; y ∷_ <$> mapM f xs

  forM : List A → (A → M B) → M (List B)
  forM = flip mapM

-- Check that a type has an instance.
hasInstance : Type → TC Bool
hasInstance = isSuccessful ∘ checkType (quote it ∙)

-- ** Monoidal structure of terms.

open import Class.Semigroup.Core
open import Class.Monoid.Core

-- A folding action on monoids.
fold : ∀ {ℓ} {A : Set ℓ} ⦃ _ : Monoid A ⦄ → List A → A
fold = λ where
  [] → ε
  (x ∷ []) → x
  (x ∷ xs@(_ ∷ _)) → x ◇ fold xs

Semigroup-Term-× = Semigroup Term ∋ λ where ._◇_ → quote _×_ ∙⟦_∣_⟧
Semigroup-Term-⊎ = Semigroup Term ∋ λ where ._◇_ → quote _⊎_ ∙⟦_∣_⟧

Monoid-Term-× = Monoid Term ∋ λ where .ε → quote ⊤ ∙
  where instance _ = Semigroup-Term-×
Monoid-Term-⊎ = Monoid Term ∋ λ where .ε → quote ⊥ ∙
  where instance _ = Semigroup-Term-⊎
