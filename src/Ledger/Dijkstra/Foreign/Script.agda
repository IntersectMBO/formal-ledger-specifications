open import Ledger.Core.Foreign.ExternalFunctions

module Ledger.Dijkstra.Foreign.Script
  (externalFunctions : ExternalFunctions)
  where

open import Ledger.Dijkstra.Foreign.Script.Base public
open import Ledger.Dijkstra.Foreign.Script.Structure externalFunctions public
