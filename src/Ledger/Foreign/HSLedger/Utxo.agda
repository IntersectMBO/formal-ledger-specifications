module Ledger.Foreign.HSLedger.Utxo where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Certs

import Ledger.Foreign.LedgerTypes as F

open import Ledger.Utxo HSTransactionStructure HSAbstractFunctions
open import Ledger.Utxo.Properties HSTransactionStructure HSAbstractFunctions
open import Ledger.Utxo.Haskell.Properties HSTransactionStructure HSAbstractFunctions
open import Ledger.Utxow.Properties HSTransactionStructure HSAbstractFunctions

instance
  _ = Convertible-Refl {String}

  Convertible-UTxOEnv : Convertible UTxOEnv F.UTxOEnv
  Convertible-UTxOEnv = autoConvertible

  Convertible-UTxOState : Convertible UTxOState F.UTxOState
  Convertible-UTxOState = λ where
    .to record { utxo = utxo ; fees = fees } →
        record { utxo = to utxo ; fees = fees }
    .from s → let open F.UTxOState s in record
      { utxo      = from utxo
      ; fees      = fees
      ; deposits  = ∅ᵐ
      ; donations = ε
      }

utxo-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}

utxo-step'' : F.UTxOEnv → F.UTxOState → F.Tx → F.ComputationResult String F.UTxOState
utxo-step'' = to (compute Computational-UTXO'')

{-# COMPILE GHC utxo-step'' as utxoStep'' #-}
