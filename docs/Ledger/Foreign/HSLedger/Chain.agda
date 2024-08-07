module Ledger.Foreign.HSLedger.Chain where

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.NewEpoch
open import Ledger.Foreign.HSLedger.Certs

open import Ledger.Chain HSTransactionStructure HSAbstractFunctions
open import Ledger.Chain.Properties HSTransactionStructure HSAbstractFunctions

instance
  _ = Convertible-Refl {String}

  Convertible-ChainState : Convertible ChainState F.ChainState
  Convertible-ChainState = autoConvertible

  Convertible-Block : Convertible Block F.Block
  Convertible-Block = autoConvertible

chain-step : ⊤ → F.ChainState → F.Block → F.ComputationResult String F.ChainState
chain-step = to (compute Computational-CHAIN)

{-# COMPILE GHC chain-step as chainStep #-}
