module ScriptVerification.Examples where

open import ScriptVerification.Prelude
open import Ledger.Prelude hiding (fromList; ε); open Computational

-- We can parametrise ScriptImplementation by a Data type then we don't need to
-- define serialisation functions until way later

DecEq-Script : DecEq (ℕ → Bool)
DecEq-Script = {!!}

instance
 _ = DecEq-Script

serialise : ∀ {A : Set} → A → ℕ
serialise x = {!!}

deserialise : {A : Set} → ℕ → Maybe A
deserialise x = {!!}

scriptImp : ScriptImplementation
scriptImp = record { D = ℕ ;
                     serialise = serialise ;
                     deserialise = deserialise }

open import ScriptVerification.LedgerImplementation scriptImp
