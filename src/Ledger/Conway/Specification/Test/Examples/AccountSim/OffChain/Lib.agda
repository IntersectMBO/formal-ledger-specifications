{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Datum
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Validator
open import Ledger.Conway.Specification.Test.Prelude AccountSimData
open import Ledger.Conway.Specification.Test.SymbolicData AccountSimData
open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure
open import Ledger.Conway.Specification.Test.AbstractImplementation SData SData valContext
open import Ledger.Conway.Specification.Test.Lib SData SData valContext
open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Transaction
open import Ledger.Core.Specification.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Conway.Specification.Utxo.Properties.Computational SVTransactionStructure SVAbstractFunctions
open import Data.List using (filter)
import Agda.Builtin.Nat as Nat

module Ledger.Conway.Specification.Test.Examples.AccountSim.OffChain.Lib where

open import Relation.Nullary


defaultTxBody : TxBody
defaultTxBody = record
                  { txIns = ∅
                  ; refInputs = ∅
                  ; collateralInputs = ∅
                  ; txOuts =  ∅
                  ; txFee = 10000000000
                  ; mint = 0
                  ; txVldt = nothing , nothing
                  ; txCerts = []
                  ; txWithdrawals = ∅
                  ; txGovVotes = []
                  ; txGovProposals = []
                  ; txDonation = 0
                  ; txADhash = nothing
                  ; txNetworkId = just 0
                  ; currentTreasury = nothing
                  ; txId = 0
                  ; reqSignerHashes = ∅
                  ; scriptIntegrityHash = nothing
                  }

matchScriptAddress : (scriptHash : ℕ) → Credential → Set
matchScriptAddress sh (KeyHashObj x) = ⊥
matchScriptAddress sh (ScriptObj y) = True (sh ≟ y)

matchScriptAddress? : (sh : ℕ) → (c : Credential) → Dec (matchScriptAddress sh c)
matchScriptAddress? sh (KeyHashObj x) = no (λ x₁ → x₁)
matchScriptAddress? sh (ScriptObj y) = T? ⌊ (sh ≟ y) ⌋

getScriptUTxO : (scriptHash : ℕ) → UTxO → Maybe (TxIn × TxOut)
getScriptUTxO sh (utxo , prf) = head $ filter (λ { (_ , addr , _) → matchScriptAddress? sh (payCred addr)}) (setToList utxo)

matchWalletHash : (keyHash : ℕ) → Credential → Set
matchWalletHash kh (KeyHashObj x) = True (kh ≟ x)
matchWalletHash kh (ScriptObj y) = ⊥

matchWalletHash? : (sh : ℕ) → (c : Credential) → Dec (matchWalletHash sh c)
matchWalletHash? kh (KeyHashObj x) = T? ⌊ (kh ≟ x) ⌋
matchWalletHash? kh (ScriptObj y) = no (λ x₁ → x₁)

getWalletUTxO : (scriptHash : ℕ) → UTxO → List (TxIn × TxOut)
getWalletUTxO sh (utxo , prf) = filter (λ { (_ , addr , _) → matchWalletHash? sh (payCred addr)}) (setToList utxo)



getLabel : TxOut → Maybe Label
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₁ x))) , snd) = just x
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₂ y))) , snd) = nothing
getLabel (fst , fst₁ , just (inj₁ (inj₂ y)) , snd) = nothing
getLabel (fst , fst₁ , just (inj₂ y) , snd) = nothing
getLabel (fst , fst₁ , nothing , snd) = nothing



-- Assumes a list of filtered waller txins and subtracts a default fee from the head of the list
makeFeeTxOut : List (TxIn × TxOut) → List (ℕ × TxOut)
makeFeeTxOut [] = []
makeFeeTxOut ((txin , (fst , txValue , snd)) ∷ utxos) = (proj₂ txin , fst , txValue - feeValue , snd) ∷ []

makeFeeUnPaymentTxOut : List (TxIn × TxOut) → Value → List (ℕ × TxOut)
makeFeeUnPaymentTxOut [] v = []
makeFeeUnPaymentTxOut ((txin , (fst , txValue , snd)) ∷ utxos) v = (proj₂ txin , fst , _+_ {{addValue}} (txValue - feeValue) v , snd) ∷ []

makeFeePaymentTxOut : List (TxIn × TxOut) → Value → List (ℕ × TxOut)
makeFeePaymentTxOut [] v = []
makeFeePaymentTxOut ((txin , (fst , txValue , snd)) ∷ utxos) v = (proj₂ txin , fst , (txValue - feeValue ) - v , snd) ∷ []

-- return id of 0 if no txins
getTxId : List (TxIn × TxOut) → ℕ
getTxId xs = maybe (λ x → proj₁ (proj₁ x)) 0 (head xs)

getVal : Label -> ℕ -> Value
getVal (Always l) w with lookup' w l
...| nothing = emptyValue
...| just v = v




