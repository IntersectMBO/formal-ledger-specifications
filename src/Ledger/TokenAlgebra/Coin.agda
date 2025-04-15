module Ledger.TokenAlgebra.Coin where

open import Ledger.Prelude
open import Algebra.Morphism.Construct.Identity
  using (isMonoidHomomorphism)

open import Ledger.TokenAlgebra ℕ

open TokenAlgebra

Coin-TokenAlgebra : TokenAlgebra
Coin-TokenAlgebra = λ where
  .Value                      → Coin
  .Value-CommutativeMonoid    → it
    -- ^ Agda bug? Without this line, `coinIsMonoidHomomorphism` doesn't type check anymore
  .coin                       → id
  .inject                     → id
  .policies                   → λ _ → ∅
  .size                       → λ x → 1 -- there is only ada in this token algebra
  .AssetName                  → String
  .specialAsset               → "Ada"
  .property                   → λ _ → refl
  .coinIsMonoidHomomorphism   → isMonoidHomomorphism _ refl
