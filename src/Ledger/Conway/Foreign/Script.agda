open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Conway.Foreign.Script
  (externalFunctions : ExternalFunctions)
  where

open import Ledger.Conway.Foreign.Script.Base public
open import Ledger.Conway.Foreign.Script.Structure externalFunctions public
