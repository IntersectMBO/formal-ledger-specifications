module Ledger.Conway.Foreign.ExternalFunctions where

open import Ledger.Prelude
open import Foreign.HaskellTypes.Deriving

record ExternalFunctions : Set where
  field extIsSigned : ℕ → ℕ → ℕ → Bool
  field extScriptSize : Script -> ℕ
{-# FOREIGN GHC
  data ExternalFunctions = MkExternalFunctions
    { extIsSigned :: Integer -> Integer -> Integer -> Bool
    , extScriptSize :: Script -> Integer
    }
#-}
{-# COMPILE GHC ExternalFunctions = data ExternalFunctions (MkExternalFunctions) #-}

dummyExternalFunctions : ExternalFunctions
dummyExternalFunctions = record { extIsSigned = λ x x₁ x₂ → true; extScriptSize = λ x → 0 }
{-# COMPILE GHC dummyExternalFunctions as dummyExternalFunctions #-}
