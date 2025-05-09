{-# OPTIONS --safe #-}
module iog-prelude.Prelude.Init where

open import Prelude.Init public

open import Class.Decidable

∃⁇ : ∀ {ℓ} → Set (lsuc ℓ)
∃⁇ {ℓ} = Σ (Set ℓ) _⁇

