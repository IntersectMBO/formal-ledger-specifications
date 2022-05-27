module PreludeExt where

open import Prelude.Init
open import Prelude.Monad
open import Prelude.Applicative
open import Prelude.Functor

rawMonadToMonad : {M : Set↑}
                → (∀ {ℓ} {A : Set ℓ} → A → M A)
                → (∀ {ℓ ℓ'} {A : Set ℓ} {B : Set ℓ'} → M A → (A → M B) → M B)
                → Monad M
rawMonadToMonad ret bind .super .super ._<$>_ = λ f x → bind x λ x' → ret (f x')
rawMonadToMonad ret bind .super .pure  = ret
rawMonadToMonad ret bind .super ._<*>_ = λ f x → bind f λ f' → bind x λ x' → ret (f' x')
rawMonadToMonad ret bind .return = ret
rawMonadToMonad ret bind ._>>=_  = bind
