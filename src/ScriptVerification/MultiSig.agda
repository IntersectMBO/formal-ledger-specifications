open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.MultiSig where

PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

{-
  data ScriptPurpose : Set where
    Cert     : DCert        → ScriptPurpose
    Rwrd     : RwdAddr      → ScriptPurpose
    Mint     : ScriptHash   → ScriptPurpose
    Spend    : TxIn         → ScriptPurpose
    Vote     : Voter        → ScriptPurpose
    Propose  : GovProposal  → ScriptPurpose

  record TxInfo : Set where
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
-}

open import Tactic.Derive.DecEq

data ScriptPurpose' : Set where
  Rwrd     : ℕ → ScriptPurpose'
  Mint     : ℕ → ScriptPurpose'
  Spend    : (ℕ × ℕ) → ScriptPurpose'
  Empty    : ScriptPurpose'
instance
  unquoteDecl DecEq-ScriptPurpose' = derive-DecEq
    ((quote ScriptPurpose' , DecEq-ScriptPurpose') ∷ [])

open import ScriptVerification.LedgerImplementation ScriptPurpose' ScriptPurpose'
open import Ledger.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure using (TxInfo; ScriptPurpose; Data)

valContext : TxInfo → ScriptPurpose → Data
valContext record { realizedInputs = realizedInputs ; txouts = txouts ; fee = fee ; mint = mint ; txcerts = txcerts ; txwdrls = txwdrls ; txvldt = txvldt ; vkKey = vkKey ; txdats = txdats ; txid = txid } = {!!}

open import ScriptVerification.AbstractImplementation ScriptPurpose' ScriptPurpose' valContext
open import ScriptVerification.Lib ScriptPurpose' ScriptPurpose' valContext
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
multiSigValidator : MultiSig → Maybe ScriptPurpose' → Maybe ScriptPurpose' → List ScriptPurpose' → Bool
multiSigValidator = {!!}

multiSigScript : MultiSig → PlutusScript
multiSigScript p = 777 , applyScriptWithContext (multiSigValidator p)
