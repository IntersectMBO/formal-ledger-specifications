open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.Prelude where

record ScriptImplementation : Set₁ where
  field D : Set
        serialise : ∀ {A : Set} → A → D
        deserialise : ∀ {A : Set} → D → Maybe A
        ⦃ DecEq-Data  ⦄    : DecEq D
        ⦃ DecEq-Script ⦄   : DecEq (D → Bool)
