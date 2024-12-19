module Ledger.Conway.Foreign.ExternalFunctions where

open import Ledger.Prelude
open import Foreign.HaskellTypes.Deriving
open import Ledger.Conway.Foreign.Types

record ExternalFunctions : Type where
  field extIsSigned : ℕ → ℕ → ℕ → Bool
        extScriptSize : Script → ℕ
{-# FOREIGN GHC
  data ExternalFunctions = MkExternalFunctions
    { extIsSigned :: Integer -> Integer -> Integer -> Bool
    }
#-}
{-# COMPILE GHC ExternalFunctions = data ExternalFunctions (MkExternalFunctions) #-}

dummyExternalFunctions : ∀{Script : Type} → ExternalFunctions Script
dummyExternalFunctions = record 
  { extIsSigned = λ _ _ _ → true 
  ; extScriptSize = λ _ → 0
  }
{-# COMPILE GHC dummyExternalFunctions as dummyExternalFunctions #-}
