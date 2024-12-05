open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.Prelude where

record ScriptImplementation (T D : Type) : Type₁ where
  field serialise : T → D
        deserialise : D → Maybe T
        toData' : ∀ {A : Type} → A → D -- fix this
        ⦃ DecEq-Data  ⦄    : DecEq D
        ⦃ Show-Data  ⦄     : Show D
