module Ledger.Conway.Foreign.ExternalFunctions where

open import Ledger.Prelude
open import Foreign.HaskellTypes.Deriving

record ExternalFunctions : Set where
  field extIsSigned : ℕ → ℕ → ℕ → Bool
{-# FOREIGN GHC
  data ExternalFunctions = MkExternalFunctions
    { extIsSigned :: Integerr -> Integer -> Integer -> Bool
    }
#-}
{-# COMPILE GHC ExternalFunctions = data ExternalFunctions (MkExternalFunctions) #-}

dummyExternalFunctions : ExternalFunctions
dummyExternalFunctions = record { extIsSigned = λ x x₁ x₂ → true }
{-# COMPILE GHC dummyExternalFunctions as dummyExternalFunctions #-}
