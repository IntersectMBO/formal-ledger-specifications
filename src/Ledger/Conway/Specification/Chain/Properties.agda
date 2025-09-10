{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.Abstract using (AbstractFunctions)

module Ledger.Conway.Specification.Chain.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.BlockBody.Properties txs abs
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Enact govStructure using (EnactState)
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Epoch.Properties txs abs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Specification.RewardUpdate.Properties txs abs
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
  Computational-CHAIN .computeProof Γ s b = do
    nes , tickStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,TICK⦈_} _ _ _
    (_ , _) , bbStep ← computeProof _ (LStateOf nes , nes .NewEpochState.bcur) b
    case refScriptSize≤?Bound nes (b .Block.ts) of λ where
      (no ¬p) → failure "totalRefScriptsSize > maxRefScriptSizePerBlock"
      (yes p) → success (_ , CHAIN (p , tickStep , bbStep))

  Computational-CHAIN .completeness _ s b _ (CHAIN {nes = nes} (p , tickStep , bbStep))
    with recomputeProof tickStep | completeness _ _ _ _ tickStep
  ... | success _ | refl
    with recomputeProof bbStep | completeness _ _ _ _ bbStep
  ... | success _ | refl
    with refScriptSize≤?Bound nes (Block.ts b)
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
