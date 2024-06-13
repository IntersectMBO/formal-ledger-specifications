open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.MultiSig where

scriptImp : ScriptImplementation String String
scriptImp = record { serialise = id ;
                     deserialise = λ x → just x ;
                     toData' = λ x → "dummy" }

PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

open import ScriptVerification.LedgerImplementation String String scriptImp
open import ScriptVerification.Lib String String scriptImp
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions

helloWorldValidator : Maybe String → Maybe String → Bool
helloWorldValidator = {!!}

-- Actions
-- Create MultiSig params
-- pay into multisig no validation needed
-- redeem requires signatories more than params

{-
Record TxInfo : Set where
  field realizedInputs : UTxO
        txouts  : Ix ⇀ TxOut
        fee     : Value
        mint    : Value
        txcerts : List DCert
        txwdrls : Wdrl
        txvldt  : Maybe Slot × Maybe Slot
        vkKey   : ℙ KeyHash
        txdats  : DataHash ⇀ Datum
        txid    : TxId

data ScriptPurpose : Set where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : Voter        → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose
-}


-- valContext : TxInfo → ScriptPurpose → Data
-- valContext txinfo sp = toData (txinfo , sp)


-- params → redeemer → datum → script context
multiSigValidator : MultiSig → Maybe String → Maybe String → List String → Bool
multiSigValidator = {!!}

multiSigScript : MultiSig → PlutusScript
multiSigScript p = 777 , applyScriptWithContext (multiSigValidator p)
