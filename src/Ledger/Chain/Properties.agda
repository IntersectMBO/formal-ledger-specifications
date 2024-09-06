{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Properties txs abs using (getLState)
open import Ledger.Enact govStructure
open import Ledger.Chain txs abs
open import Ledger.Epoch txs abs
open import Ledger.Epoch.Properties txs abs
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs

open Computational ⦃...⦄

instance
  Computational-CHAIN : Computational _⊢_⇀⦇_,CHAIN⦈_ String
  Computational-CHAIN .computeProof Γ
    s@record { newEpochState = nes }
    b@record { ts = ts ; slot = slot } = do
         nes' , neStep ← map₁ ⊥-elim $ computeProof {STS = _⊢_⇀⦇_,NEWEPOCH⦈_} _ _ _
         ls' , lsStep ← computeProof _ (getLState nes') ts
         case ((totalRefScriptsSize (EpochState.ls (NewEpochState.epochState nes')) ts)
                ≤? (PParams.maxRefScriptSizePerBlock (proj₁ (EnactState.pparams
                     (EpochState.es (NewEpochState.epochState nes')))))) of λ where
           (no ¬p) → failure "totalRefScriptsSize > maxRefScriptSizePerBlock"
           (yes p) → success (_ , CHAIN p neStep lsStep)

  Computational-CHAIN .completeness .tt s b
    .(record { newEpochState = record { lastEpoch = NewEpochState.lastEpoch nes
                                      ; epochState = record  { acnt = EpochState.acnt (NewEpochState.epochState nes)
                                                             ; ss = EpochState.ss (NewEpochState.epochState nes)
                                                             ; ls = _
                                                             ; es = EpochState.es (NewEpochState.epochState nes)
                                                             ; fut = EpochState.fut (NewEpochState.epochState nes)
                                                             }
                                      ; ru = NewEpochState.ru nes
                                      }
             }) (CHAIN {nes = nes} p neStep lsStep) = goal
    where
    open NewEpochState nes
    open EpochState epochState
    goal : map proj₁ (Computational.computeProof Computational-CHAIN tt s b)
           ≡ success record { newEpochState = ⟦ lastEpoch , ⟦ acnt , ss , _ , EpochState.es epochState , fut ⟧ᵉ' , ru ⟧ⁿᵉ }
    goal with recomputeProof neStep | completeness _ _ _ _ neStep
    ... | _         | refl
      with recomputeProof lsStep | completeness _ _ _ _ lsStep
    ... | success _ | refl
      with ((totalRefScriptsSize (EpochState.ls (NewEpochState.epochState nes)) (Block.ts b))
                ≤? (PParams.maxRefScriptSizePerBlock (proj₁ (EnactState.pparams
                     (EpochState.es (NewEpochState.epochState nes))))))
    ... | yes p = refl
    ... | no ¬p = ⊥-elim (¬p p)
