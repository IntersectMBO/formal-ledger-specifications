\begin{document}
\begin{code}
open import Ledger.Crypto
import Ledger.PParams
open import DecEq

module Ledger.Transaction where

record TransactionStructure : Set₁ where
  field TxId Ix Network Epoch AuxiliaryData : Set
        crypto                              : Crypto
        adHashingScheme                     : HashingScheme AuxiliaryData
        ppUpd                               : Ledger.PParams.PParamsDiff Epoch
        txidBytes                           : TxId → Crypto.Ser crypto
        instance DecEq-TxId : DecEq TxId
                 DecEq-Ix   : DecEq Ix
                 DecEq-Netw : DecEq Network
                 DecEq-UpdT : DecEq (Ledger.PParams.PParamsDiff.UpdateT ppUpd)

  open import FinSet renaming (FinSet to ℙ_)
  open import FinMap renaming (FinMap to _↛_)
  open import Prelude
  open import Ledger.PParams Epoch

  open Crypto crypto public
  open HashingScheme adHashingScheme renaming (THash to ADHash; hash to hashAD)
  open PParamsDiff ppUpd renaming (UpdateT to PParamsUpdate)

  open import Ledger.Address Network KeyHash ScriptHash public

  TxIn  = TxId × Ix
  TxOut = Addr × Coin
  UTxO  = TxIn ↛ TxOut
  Wdrl  = RwdAddr ↛ Coin

  ProposedPPUpdates = KeyHash ↛ PParamsUpdate
  Update = ProposedPPUpdates × Epoch

  record TxBody : Set where
    field
      txins    : ℙ TxIn
      txouts   : Ix ↛ TxOut
      --txcerts  : List DCert
      txfee    : Coin
      txvldt   : Maybe ℕ × Maybe ℕ
      txwdrls  : Wdrl
      txup     : Maybe Update
      txADhash : Maybe ADHash
      txsize   : ℕ
      txid     : TxId

  record TxWitnesses : Set where
    field
      vkSigs  : VKey ↛ Sig
      scripts : ℙ Script

  record Tx : Set where
    field
      body : TxBody
      wits : TxWitnesses
      txAD : AuxiliaryData

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom (utxo |^' (isVKeyAddr? ∘ proj₁))

\end{code}
\end{document}
