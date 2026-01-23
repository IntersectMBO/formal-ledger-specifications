{-# OPTIONS --safe #-}

open import Ledger.Prelude using (DecEq; Show)
import Ledger.Conway.Specification.Script.ScriptPurpose as SP
open import Test.LedgerImplementation using (SVTransactionStructure)

module Test.AbstractImplementation
  {T D : Set} {{DecEq-Data : DecEq D}} {{Show-Data : Show D}}
  (open SP (SVTransactionStructure T D) using (TxInfo; ScriptPurpose))
  (valContext' : TxInfo → ScriptPurpose → D)
  where

open import Ledger.Prelude using (nothing; just; _,_; ℕ; ⊤; tt; id)

open import Test.LedgerImplementation T D
  renaming (SVTransactionStructure to SVTransactionStructure')
open import Ledger.Conway.Specification.Abstract SVTransactionStructure'

open Implementation

SVAbstractFunctions : AbstractFunctions
SVAbstractFunctions = record
  { Implementation
  ; txscriptfee = λ tt y → 0
  ; serSize     = λ v → 0 -- changed to 0
  ; indexOfImp  = record
    { indexOfDCert          = λ _ _ → nothing
    ; indexOfRewardAddress  = λ _ _ → nothing
    ; indexOfTxIn           = indexOfTxInImp
    ; indexOfPolicyId       = λ _ _ → nothing
    ; indexOfVote           = λ _ _ → nothing
    ; indexOfProposal       = λ _ _ → nothing
    }
  ; runPLCScript = λ { x (sh , script) x₂ x₃ → script x₃ }
  ; scriptSize = λ _ → 0
  ; valContext = valContext'
  ; UTCTime = ℕ
  ; POSIXTimeRange = ⊤
  ; EpochInfo = ⊤
  ; SystemStart = ⊤
  ; EI = tt
  ; SysSt = tt
  ; epochInfoSlotToUTCTime = λ _ _ _ → just 0
  ; transVITime = λ _ _ _ → tt
  }
