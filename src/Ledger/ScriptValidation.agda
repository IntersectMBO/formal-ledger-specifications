{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}

open import Ledger.Transaction

module Ledger.ScriptValidation (txs : TransactionStructure) where

open import Ledger.Prelude hiding (Dec₁; map)

open import Algebra using (CommutativeMonoid)
open import Algebra.Structures
open import Data.Integer using (ℤ; _⊖_)
open import Data.Integer.Ext
open import Data.List as List hiding (map)
open import Data.Maybe
open import Data.Nat using (_≤?_; _≤_)
open import Data.Nat.Properties using (+-0-monoid ; +-0-commutativeMonoid)
open import Data.Sign using (Sign)
open import Interface.Decidable.Instance

open TransactionStructure txs
open TxBody
open TxWitnesses
open Tx

open import Ledger.Crypto
open import Ledger.PParams crypto epochStructure ss
open import Ledger.TokenAlgebra using (TokenAlgebra)

open import MyDebugOptions
--open import Tactic.Defaults
open import Tactic.DeriveComp
open import Tactic.Derive.DecEq

open import Ledger.Script
open import Relation.Nullary.Decidable using (⌊_⌋; isNo)
open import Data.Bool using (_∧_)

-- Global Constants

-- Abstract Types

-- Derived Types

data ScriptPurpose : Set where
  Cert  : DCert → ScriptPurpose
  Rewrd : RwdAddr → ScriptPurpose
  Mint  : PolicyId → ScriptPurpose
  Spend : TxIn → ScriptPurpose

-- Abstract Functions

record indexOf : Set where
  field
    indexOfDCert    : DCert → List DCert → Maybe Ix
    indexOfRwdAddr  : RwdAddr → Wdrl → Maybe Ix
    indexOfTxIn     : TxIn → ℙ TxIn → Maybe Ix
    indexOfPolicyId : PolicyId → ℙ PolicyId → Maybe Ix

indexOfImplementation : indexOf
indexOfImplementation = {!!}

ixToPtr : Ix → RdmrPtr
ixToPtr ix = {!!}

open indexOf indexOfImplementation

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb (Cert h) = map ixToPtr (indexOfDCert h (txcerts txb))
rdptr txb (Rewrd h) = map ixToPtr (indexOfRwdAddr h (txwdrls txb))
rdptr txb (Mint h) = map ixToPtr (indexOfPolicyId h (policies (mint txb)))
rdptr txb (Spend h) = map ixToPtr (indexOfTxIn h (txins txb))

-- Do we need a theorem for
-- if (rdptr body tx) then r ∈ txrdmrs (txwitx tx)
-- or can this function just fail

indexedRdmrs : Tx → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? (txrdmrs (wits tx)) x ⦃ _ ∈? _ ⦄)
                            nothing
                            (rdptr (body tx) sp)

-- Abstract Script Validation Functions

-- epochInfoSlotToUTCTime : EpochInfo → SystemStart → Slot → -- UTCTime? Translate slot number to system time or fail

-- runPLCScript : CostModel → Scriptplc → ExUnits → Data∗ → IsValid
-- Validate a Plutus script, taking resource limits into account

-- Notation

-- Script functions

getDatum : Tx → UTxO → ScriptPurpose → List Datum
getDatum tx utxo (Cert x) = []
getDatum tx utxo (Rewrd x) = []
getDatum tx utxo (Mint x) = []
getDatum tx utxo (Spend txin) with lookupᵐ? utxo txin ⦃ _ ∈? _ ⦄
... | nothing = []
... | just (fst , fst₁ , nothing)  = []
... | just (fst , fst₁ , just x) with lookupᵐ? (txdats (wits tx)) x ⦃ _ ∈? _ ⦄
... | just x₁ = [ x₁ ]
... | nothing = []


-- utxo : Rel TxIn TxOut
-- txdats (wits tx) : DataHash ⇀ Datum
-- getDatum looks for a datum associated with a given script purpose. Note that only an TxIn-type script purpose can result in finding an associated datum hash. If no datum is found, an empty list is returned. A list containing the found datum is returned otherwise.

-- [d] sp ↦ (_,_,hᵈ) ∈ utxo,hᵈ ↦ d ∈ txdats (txwits tx)
-- ϵ otherwise
