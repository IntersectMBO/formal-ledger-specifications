module Foreign.Convertible where

open import Prelude
open import Foreign.Haskell.Coerce

record Convertible (A B : Set) : Set where
  field to   : A → B
        from : B → A

open Convertible ⦃...⦄ public

Convertible-Refl : ∀ {A} → Convertible A A
Convertible-Refl .to   = id
Convertible-Refl .from = id

instance
  Coercible⇒Convertible : ∀ {A B} → ⦃ _ : Coercible A B ⦄ → Convertible A B
  Coercible⇒Convertible .to   = coerce
  Coercible⇒Convertible .from = coerce ⦃ TrustMe ⦄ -- coercibility is symmetric
