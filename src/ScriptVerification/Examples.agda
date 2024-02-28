open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.Examples
  (scriptImp : ScriptImplementation ℕ) (open ScriptImplementation scriptImp)
  where

open import ScriptVerification.LedgerImplementation ℕ scriptImp
