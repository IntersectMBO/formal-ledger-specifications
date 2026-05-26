module Ledger.Dijkstra.Foreign.HSStructures where

open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Dijkstra.Foreign.ExternalStructures dummyExternalFunctions
  renaming (HSTransactionStructure to DummyTransactionStructure; HSAbstractFunctions to DummyAbstractFunctions; govStructure to DummyGovStructure)
  public
