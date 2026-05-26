module Ledger.Conway.Foreign.HSStructures where

open import Ledger.Core.Foreign.ExternalFunctions
open import Ledger.Conway.Foreign.ExternalStructures dummyExternalFunctions
  renaming (HSTransactionStructure to DummyTransactionStructure; HSAbstractFunctions to DummyAbstractFunctions)
  public
