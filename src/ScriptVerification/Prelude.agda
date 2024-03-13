open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.Prelude where

record ScriptImplementation (T D : Set) : Set₁ where
  field serialise : T → D
        deserialise : D → Maybe T
        toData' : ∀ {A : Set} → A → D -- fix this
        ⦃ DecEq-Data  ⦄    : DecEq D
