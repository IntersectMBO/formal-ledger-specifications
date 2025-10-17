{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Prelude
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.Test.LedgerImplementation using (SVTransactionStructure)
open import Ledger.Conway.Specification.ScriptPurpose using ()

module Ledger.Conway.Specification.Test.AbstractImplementation (T D : Set){{DecEq-Data : DecEq D}}{{Show-Data : Show D}}
  (open TransactionStructure (SVTransactionStructure T D))
  (open Ledger.Conway.Specification.ScriptPurpose (SVTransactionStructure T D))
  (valContext' : TxInfo → ScriptPurpose → D)
  where

open import Ledger.Conway.Specification.Test.LedgerImplementation T D renaming (SVTransactionStructure to SVTransactionStructure')
open import Ledger.Conway.Specification.Abstract SVTransactionStructure'

open Implementation

SVAbstractFunctions : AbstractFunctions
SVAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → 0 -- changed to 0
  ; indexOfImp  = record
    { indexOfDCert    = λ _ _ → nothing
    ; indexOfRwdAddr  = λ _ _ → nothing
    ; indexOfTxIn     = indexOfTxInImp
    ; indexOfPolicyId = λ _ _ → nothing
    ; indexOfVote     = λ _ _ → nothing
    ; indexOfProposal = λ _ _ → nothing
    }
  ; runPLCScript = λ { x (sh , script) x₂ x₃ → script x₃ }
  ; scriptSize = λ _ → 0
  ; valContext = valContext'
  }
