{-# OPTIONS --no-qualified-instances #-}

module Ledger.Conway.Foreign.HSLedger.Utxo where

open import Ledger.Conway.Foreign.ExternalFunctions

open import Data.String.Base renaming (_++_ to _+ˢ_) hiding (show; length)

open import Ledger.Conway.Foreign.HSLedger.Core
open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.Certs
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Transaction

open import Foreign.Haskell.Coerce

open import Ledger.Conway.Foreign.HSLedger.BaseTypes hiding (TxWitnesses; refScripts)
open import Ledger.Conway.Conformance.Utxo DummyTransactionStructure DummyAbstractFunctions
open import Ledger.Conway.Conformance.Utxow DummyTransactionStructure DummyAbstractFunctions
  renaming (module L to LW)

instance
  HsTy-UTxOEnv = autoHsType UTxOEnv ⊣ withConstructor "MkUTxOEnv"
                                    • fieldPrefix "ue"
  Conv-UTxOEnv = autoConvert UTxOEnv

  HsTy-UTxOState = autoHsType UTxOState ⊣ withConstructor "MkUTxOState"
  Conv-UTxOState = autoConvert UTxOState

unquoteDecl = do
  hsTypeAlias UTxO
  hsTypeAlias Redeemer

module _ (ext : ExternalFunctions) where
  open import Ledger.Conway.Foreign.HSLedger.ExternalStructures ext hiding (Tx; TxBody; inject)
  open import Ledger.Conway.Conformance.Utxow.Properties HSTransactionStructure HSAbstractFunctions
  open import Ledger.Conway.Conformance.Utxo.Properties HSTransactionStructure HSAbstractFunctions

  utxo-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
  utxo-step = to (coerce ⦃ TrustMe ⦄ $ compute Computational-UTXO)

  {-# COMPILE GHC utxo-step as utxoStep #-}

  utxow-step : HsType (UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState)
  utxow-step = to (coerce ⦃ TrustMe ⦄ $ compute Computational-UTXOW)

  {-# COMPILE GHC utxow-step as utxowStep #-}

  utxo-debug : HsType (UTxOEnv → UTxOState → Tx → String)
  utxo-debug env st tx =
    let open Tx (from tx)
        open TxBody body
        open UTxOState (from st)
        open UTxOEnv (from env)
     in unlines $
          "Consumed:" ∷
          ("\tInputs:      \t" +ˢ show (L.balance (utxo ∣ txins))) ∷
          ("\tMint:        \t" +ˢ show mint) ∷
          ("\tRefunds:     \t" +ˢ show (inject (L.depositRefunds pparams (from st) body))) ∷
          ("\tWithdrawals: \t" +ˢ show (inject (getCoin txwdrls))) ∷
          ("\tTotal:       \t" +ˢ show (L.consumed pparams (from st) body)) ∷
          "Produced:" ∷
          ("\tOutputs:     \t" +ˢ show (L.balance (L.outs body))) ∷
          ("\tDonations:   \t" +ˢ show (inject txdonation)) ∷
          ("\tDeposits:    \t" +ˢ show (inject (L.newDeposits pparams (from st) body))) ∷
          ("\tFees:        \t" +ˢ show (inject txfee)) ∷
          ("\tTotal:       \t" +ˢ show (L.produced pparams (from st) body)) ∷
          []

  {-# COMPILE GHC utxo-debug as utxoDebug #-}

  utxow-debug : HsType (UTxOEnv → UTxOState → Tx → String)
  utxow-debug env st tx =
    let open Tx (from tx)
        open TxBody body
        open UTxOState (from st)
        open UTxOEnv (from env)
        open TxWitnesses (coerce ⦃ TrustMe ⦄ wits)
        neededHashes = LW.scriptsNeeded utxo body
        refScriptHashes = mapˢ 
          hash 
          (refScripts (coerce ⦃ TrustMe ⦄ (from tx)) (coerce ⦃ TrustMe ⦄ utxo))
        witsScriptHashes  = mapˢ hash scripts
     in unlines
       $ "witsVKeyNeeded utxo txb = "
       ∷ show (LW.witsVKeyNeeded utxo body)
       ∷ "\nwitsKeyHashes = "
       ∷ show (mapˢ hash (dom vkSigs))
       ∷ "\nneededHashes = "
       ∷ show neededHashes
       ∷ "\nrefScriptHashes = "
       ∷ show refScriptHashes
       ∷ "\nwitsScriptHashes = "
       ∷ show witsScriptHashes
       ∷ []

  {-# COMPILE GHC utxow-debug as utxowDebug #-}
