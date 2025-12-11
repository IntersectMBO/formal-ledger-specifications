{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Chain.Properties
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Prelude

open import Ledger.Conway.Conformance.Chain txs abs
open import Ledger.Conway.Conformance.Epoch txs abs
open import Ledger.Conway.Conformance.Epoch.Properties txs abs
open import Ledger.Conway.Conformance.Ledger.Properties txs abs

open Computational ⦃...⦄

module _ {nes : NewEpochState} {e : Epoch} where

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
