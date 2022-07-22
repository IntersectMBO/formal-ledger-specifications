{-# OPTIONS --safe --without-K #-}

open import Level

open import Prelude

open import Interface.Monad
open import Reflection using (TC; ErrorPart; typeError; catchTC; strErr)

open Monad ⦃...⦄

module Interface.MonadError where

private
  variable
    e f : Level
    A : Set f

record MonadError (E : Set e) (M : ∀ {f} → Set f → Set f) : Setω where
  field
    error : E → M A
    catch : M A → (E → M A) → M A

open MonadError

MonadError-TC : MonadError (List ErrorPart) TC
MonadError-TC .error = typeError
MonadError-TC .catch x h = catchTC x (h [ strErr "TC doesn't provide which error to catch" ])

ErrorT : (E : Set) → (M : ∀ {f} → Set f → Set f) → ∀ {f} → Set f → Set f
ErrorT E M A = M (E ⊎ A)

module _ {E : Set} {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ where

  Monad-ErrorT : Monad (ErrorT E M)
  Monad-ErrorT .return a = return (inj₂ a)
  Monad-ErrorT ._>>=_ x f = x >>= λ where
    (inj₁ e) → return (inj₁ e)
    (inj₂ a) → f a

  MonadError-ErrorT : MonadError E (ErrorT E M)
  MonadError-ErrorT .error e = return (inj₁ e)
  MonadError-ErrorT .catch x h = x >>= λ where
    (inj₁ e) → h e
    (inj₂ a) → return (inj₂ a)
