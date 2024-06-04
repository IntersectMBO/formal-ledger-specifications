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

open import ScriptVerification.LedgerImplementation String String MultiSig scriptImp
open import ScriptVerification.Lib String String MultiSig scriptImp
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

multiSigValidator : MultiSig → Maybe String → Maybe String → List String → Bool
multiSigValidator = {!!}

multiSigScript : MultiSig → PlutusScript
multiSigScript p = 777 , (p , applyScriptWithContext multiSigValidator)

-- 777 , ? , applyScriptWithContext {!multiSigValidator!}
