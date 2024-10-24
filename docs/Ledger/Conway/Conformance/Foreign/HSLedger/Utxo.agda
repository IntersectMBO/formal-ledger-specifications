module Ledger.Conway.Conformance.Foreign.HSLedger.Utxo where

open import Data.String.Base renaming (_++_ to _+ˢ_) hiding (show; length)

open import Ledger.Conway.Conformance.Foreign.HSLedger.Address
open import Ledger.Conway.Conformance.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Conformance.Foreign.HSLedger.Certs
open import Ledger.Conway.Conformance.Foreign.HSLedger.PParams
open import Ledger.Conway.Conformance.Foreign.HSLedger.Transaction

open import Ledger.Conway.Conformance.Utxo it it
open import Ledger.Conway.Conformance.Utxo.Properties it it
open import Ledger.Conway.Conformance.Utxow.Properties it it

instance
  HsTy-UTxOEnv = autoHsType UTxOEnv ⊣ withConstructor "MkUTxOEnv"
                                    • fieldPrefix "ue"
  Conv-UTxOEnv = autoConvert UTxOEnv

  HsTy-UTxOState = autoHsType UTxOState ⊣ withConstructor "MkUTxOState"
  Conv-UTxOState = autoConvert UTxOState

unquoteDecl = do
  hsTypeAlias UTxO
  hsTypeAlias Redeemer

utxo-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxo-step = to (compute Computational-UTXO)

{-# COMPILE GHC utxo-step as utxoStep #-}

utxow-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
utxow-step = to (compute Computational-UTXOW)

{-# COMPILE GHC utxow-step as utxowStep #-}

utxo-debug : HsType (UTxOEnv → UTxOState → Tx → String)
utxo-debug env st tx =
  let open Tx (from tx)
      open TxBody body
      open UTxOState (from st)
      open UTxOEnv (from env)
   in unlines $
        "Consumed:" ∷
        ("\tInputs:      \t" +ˢ show (balance (utxo ∣ txins))) ∷
        ("\tMint:        \t" +ˢ show mint) ∷
        ("\tRefunds:     \t" +ˢ show (inject (depositRefunds pparams (from st) body))) ∷
        ("\tWithdrawals: \t" +ˢ show (inject (getCoin txwdrls))) ∷
        ("\tTotal:       \t" +ˢ show (consumed pparams (from st) body)) ∷
        "Produced:" ∷
        ("\tOutputs:     \t" +ˢ show (balance (outs body))) ∷
        ("\tDonations:   \t" +ˢ show (inject txdonation)) ∷
        ("\tDeposits:    \t" +ˢ show (inject (newDeposits pparams (from st) body))) ∷
        ("\tFees:        \t" +ˢ show (inject txfee)) ∷
        ("\tTotal:       \t" +ˢ show (produced pparams (from st) body)) ∷
        []

{-# COMPILE GHC utxo-debug as utxoDebug #-}
