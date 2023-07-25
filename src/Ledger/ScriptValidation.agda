{-# OPTIONS --safe #-}
{-# OPTIONS --overlapping-instances #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.ScriptValidation (txs : TransactionStructure)(abs : AbstractFunctions txs)where

open import Ledger.Prelude hiding (Dec₁) renaming (map to mapSet)

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

open AbstractFunctions abs
open indexOf indexOfImp

data ScriptPurpose : Set where
  Cert  : DCert → ScriptPurpose
  Rewrd : RwdAddr → ScriptPurpose
  Mint  : PolicyId → ScriptPurpose
  Spend : TxIn → ScriptPurpose

rdptr : TxBody → ScriptPurpose → Maybe RdmrPtr
rdptr txb (Cert h) = map (λ x → Cert , x) (indexOfDCert h (txcerts txb))
rdptr txb (Rewrd h) = map (λ x → Rewrd , x) (indexOfRwdAddr h (txwdrls txb))
rdptr txb (Mint h) = map (λ x → Mint , x) (indexOfPolicyId h (policies (mint txb)))
rdptr txb (Spend h) = map (λ x → Spend , x) (indexOfTxIn h (txins txb))

indexedRdmrs : Tx → ScriptPurpose → Maybe (Redeemer × ExUnits)
indexedRdmrs tx sp = maybe (λ x → lookupᵐ? (txrdmrs (wits tx)) x ⦃ _ ∈? _ ⦄)
                            nothing
                            (rdptr (body tx) sp)

-- Abstract Script Validation Functions

-- epochInfoSlotToUTCTime : EpochInfo → SystemStart → Slot → -- UTCTime? Translate slot number to system time or fail

-- runPLCScript : CostModel → Scriptplc → ExUnits → Data∗ → IsValid
-- Validate a Plutus script, taking resource limits into account

-- Notation

getDatum : Tx → UTxO → ScriptPurpose → List Datum
getDatum tx utxo (Spend txin) = maybe (λ { (_ , _ , just x) → maybe (λ x₁ → [ x₁ ])
                                                              []
                                                              (lookupᵐ? (txdats (wits tx)) x ⦃ _ ∈? _ ⦄)
                                          ; (_ , _ , nothing) → []})
                                          []
                                          ((lookupᵐ? utxo txin ⦃ _ ∈? _ ⦄))
getDatum tx utxo _ = []


record TxInfo : Set where
  field realizedInputs : TxIn -- just to stop unification error for now
        txouts  : Ix ⇀ TxOut
        fee     : Value
        mint    : Value
        txcerts : List DCert
        txwdrls : Wdrl
        txvldt  : Maybe Slot × Maybe Slot
        vkKey   : ℙ KeyHash
        txdats  : DataHash ⇀ Datum
        txid    : TxId

txInfo : Language → PParams
                  → UTxO
                  → Tx
                  → TxInfo
txInfo l pp utxo tx = record
                        { realizedInputs = {!!}
                        ; txouts = txouts txb
                        ; fee = inject (txfee txb)
                        ; mint = mint txb
                        ; txcerts = txcerts txb
                        ; txwdrls = txwdrls txb
                        ; txvldt = txvldt txb
                        ; vkKey = reqSigHash txb
                        ; txdats = txdats (wits tx)
                        ; txid = txid txb
                        }
  where
    txb = body tx

collectPhaseTwoScriptInputs : PParams → Tx
                                      → UTxO
                                      → List (Script × List Data × ExUnits × CostModel)
collectPhaseTwoScriptInputs pp tx utxo with getDatum tx utxo {!!}
... | ans = {!!}

