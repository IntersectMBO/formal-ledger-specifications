{-# OPTIONS --safe #-}

module Test.Examples.MultiSig.OffChain.Lib where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Test.Examples.MultiSig.Datum
open import Test.Examples.MultiSig.Validator
open import Test.Prelude MultiSigData
open import Test.SymbolicData MultiSigData
open import Test.LedgerImplementation SData SData

open TransactionStructure SVTransactionStructure
open Implementation
open import Data.List using (filter)
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

succeedTxOut' : TxOut
succeedTxOut' = inj₁ (record { net = 0 ;
                           pay = ScriptObj 777 ;
                           stake = just (ScriptObj 777) })
                           , 700000000000 , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

getLabel : TxOut → Maybe Label
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₁ x))) , snd) = just x
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₂ y))) , snd) = nothing
getLabel (fst , fst₁ , just (inj₁ (inj₂ y)) , snd) = nothing
getLabel (fst , fst₁ , just (inj₂ y) , snd) = nothing
getLabel (fst , fst₁ , nothing , snd) = nothing

-- Assumes a list of filtered waller txins and subtracts a default fee from the head of the list
makeFeeTxOut : List (TxIn × TxOut) → List (ℕ × TxOut)
makeFeeTxOut [] = []
makeFeeTxOut ((txin , (fst , txValue , snd)) ∷ utxos) = (proj₂ txin , fst , txValue - 10000000000 , snd) ∷ []

-- return id of 0 if no txins
getTxId : List (TxIn × TxOut) → ℕ
getTxId xs = maybe (λ x → proj₁ (proj₁ x)) 0 (head xs)

