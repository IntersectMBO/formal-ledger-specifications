---
source_branch: master
source_path: src/Ledger/Conway/Foreign/ExternalFunctions.lagda.md
---
```agda
module Ledger.Conway.Foreign.ExternalFunctions where

open import Ledger.Prelude
open import Foreign.HaskellTypes.Deriving

record ExternalFunctions : Set where
  field
    extIsSigned : ℕ → ℕ → ℕ → Bool
    extValidPlutusScript : Bool
{-# FOREIGN GHC
  data ExternalFunctions = MkExternalFunctions
    {
      extIsSigned :: Integer -> Integer -> Integer -> Bool
    , extValidPlutusScript :: Bool
    }
#-}
{-# COMPILE GHC ExternalFunctions = data ExternalFunctions (MkExternalFunctions) #-}

dummyExternalFunctions : ExternalFunctions
dummyExternalFunctions =
  record { extIsSigned = λ _ _ _ → true
         ; extValidPlutusScript = true
         }
{-# COMPILE GHC dummyExternalFunctions as dummyExternalFunctions #-}
```
