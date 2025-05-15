{-# OPTIONS --safe #-}

open import Ledger.Conway.Transaction using (TransactionStructure)
open import Ledger.Conway.Abstract using (AbstractFunctions)

module Ledger.Conway.Chain.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Chain txs abs
open import Ledger.Conway.Enact govStructure using (EnactState)
open import Ledger.Conway.Epoch txs abs
open import Ledger.Conway.Epoch.Properties txs abs
open import Ledger.Conway.Ledger txs abs
open import Ledger.Conway.Ledger.Properties txs abs
open import Ledger.Prelude

open Computational ⦃...⦄

module _
  (nes : NewEpochState)
  (open EpochState (NewEpochState.epochState nes) using (ls) renaming (es to es'))
  (open EnactState es' using (pparams))
  (open PParams ∣ pparams ∣ using (maxRefScriptSizePerBlock))
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
      (yes p) → success (_ , CHAIN (p , neStep , lsStep))

  Computational-CHAIN .completeness _ s b _ (CHAIN {nes = nes} (p , neStep , lsStep))
    with recomputeProof neStep | completeness _ _ _ _ neStep
  ... | _         | refl
    with recomputeProof lsStep | completeness _ _ _ _ lsStep
  ... | success _ | refl
    with refScriptSize≤?Bound nes (Block.ts b)
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
