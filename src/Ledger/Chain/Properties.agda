{-# OPTIONS --safe #-}

open import Ledger.Transaction using (TransactionStructure)
open import Ledger.Abstract using (AbstractFunctions)

module Ledger.Chain.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure using (EnactState)
open import Ledger.Epoch txs abs
open import Ledger.Epoch.Properties txs abs
open import Ledger.Interface.HasDowncast.Instance txs govStructure
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Prelude
-- open import Ledger.Properties txs abs using (getLState)

open Computational ⦃...⦄

module _
  (nes : NewEpochState)
  (open EpochState (NewEpochState.epochState nes) using (ls) renaming (es to es'))
  (open EnactState es' using (pparams))
  (open PParams (pparams ↓) using (maxRefScriptSizePerBlock))
  (ts : List Tx)
  where
  refScriptSize≤?Bound : Dec (totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock)
  refScriptSize≤?Bound = totalRefScriptsSize ls ts ≤? maxRefScriptSizePerBlock

instance
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ s record { ts = ts } = do
    nes , neStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,NEWEPOCH⦈_} _ _ _
    _ , lsStep ← computeProof _ (LStateOf nes) ts
    case refScriptSize≤?Bound nes ts of λ where
      (no ¬p) → failure "totalRefScriptsSize > maxRefScriptSizePerBlock"
      (yes p) → success (_ , CHAIN p neStep lsStep)

  Computational-CHAIN .completeness _ s b _ (CHAIN {nes = nes} p neStep lsStep)
    with recomputeProof neStep | completeness _ _ _ _ neStep
  ... | _         | refl
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
  ... | success _ | refl
    with refScriptSize≤?Bound nes (Block.ts b)
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
