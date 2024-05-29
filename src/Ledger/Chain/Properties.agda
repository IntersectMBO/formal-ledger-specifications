{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Chain txs abs
open import Ledger.Epoch txs abs
open import Ledger.Epoch.Properties txs abs
open import Ledger.Ledger.Properties txs abs

open Computational ⦃...⦄

module _ {Γ : NewEpochEnv} {nes : NewEpochState} {e : Epoch} where

instance
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ s b = do
    _ , neStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,NEWEPOCH⦈_} _ _ _
    _ , lsStep ← computeProof _ _ _
    success (_ , CHAIN neStep lsStep)
  Computational-CHAIN .completeness Γ s b s' (CHAIN neStep lsStep)
    with recomputeProof neStep | completeness _ _ _ _ neStep
  ... | _         | refl
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
  ... | success _ | refl = refl
