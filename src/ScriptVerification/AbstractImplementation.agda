open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude
open import Ledger.Transaction using (TransactionStructure)
open import ScriptVerification.LedgerImplementation using (SVTransactionStructure)

module ScriptVerification.AbstractImplementation (T D : Set){{DecEq-Data : DecEq D}}
  (open TransactionStructure (SVTransactionStructure T D))
  (valContext' : TxInfo → ScriptPurpose → D)
  where

open import ScriptVerification.LedgerImplementation T D renaming (SVTransactionStructure to SVTransactionStructure')
open import Ledger.Abstract SVTransactionStructure'

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
