{-# OPTIONS --safe --without-K #-}

module Interface.MonadReader where

open import Prelude

open import Interface.Monad
open import Interface.MonadError

private variable ℓ : Level

open Monad ⦃...⦄
open MonadError ⦃...⦄

record MonadReader (R : Set ℓ) (M : ∀ {a} → Set a → Set a) ⦃ _ : Monad M ⦄ : Setω where
  field
    ask : M R
    local : ∀ {a} {A : Set a} → (R → R) → M A → M A

  reader : ∀ {a} {A : Set a} → (R → A) → M A
  reader f = f <$> ask

open MonadReader ⦃...⦄

ReaderT : (R : Set) (M : ∀ {a} → Set a → Set a) → ∀ {a} → Set a → Set a
ReaderT R M A = R → M A

module _ {R : Set} {M : ∀ {a} → Set a → Set a} ⦃ _ : Monad M ⦄ where

  Monad-ReaderT : Monad (ReaderT R M)
  Monad-ReaderT .return a = λ r → return a
  Monad-ReaderT ._>>=_ x f = λ r → x r >>= λ a → f a r

  MonadReader-ReaderT : MonadReader R (ReaderT R M) ⦃ Monad-ReaderT ⦄
  MonadReader-ReaderT .ask = λ r → return r
  MonadReader-ReaderT .local f x = x ∘ f

  MonadError-ReaderT : ∀ {e} {E : Set e} → ⦃ MonadError E M ⦄ → MonadError E (ReaderT R M)
  MonadError-ReaderT .error e = λ r → error e
  MonadError-ReaderT .catch x h = λ r → catch (x r) (λ e → h e r)
