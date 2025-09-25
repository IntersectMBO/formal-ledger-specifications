```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.Abstract using (AbstractFunctions)

module Ledger.Conway.Specification.RewardUpdate.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Specification.RewardUpdate txs abs
open import Ledger.Conway.Specification.Epoch txs abs
open import Ledger.Conway.Specification.Epoch.Properties.Computational txs abs
open import Ledger.Prelude

open Computational ⦃...⦄

instance
  Computational-RUPD : Computational _⊢_⇀⦇_,RUPD⦈_ ⊥
  Computational-RUPD .computeProof _ (just ru) _ =
    success (just ru , RUPD-Reward-Update-Exists)
  Computational-RUPD .computeProof _ nothing slot
    with firstSlot (epoch slot) + RandomnessStabilisationWindow <? slot
  ... | yes p  =
    let ru' = _
     in success (just ru' , RUPD-Create-Reward-Update {ru' = ru'} p)
  ... | no ¬p = success (nothing , RUPD-Reward-Too-Early ¬p)

  Computational-RUPD .completeness _ s slot s' RUPD-Reward-Update-Exists
    = refl
  Computational-RUPD .completeness _ s slot (just ru') (RUPD-Create-Reward-Update slot>)
    with firstSlot (epoch slot) + RandomnessStabilisationWindow <? slot
  ... | yes _ = refl
  ... | no slot≯ = ⊥-elim (slot≯ slot>)
  Computational-RUPD .completeness _ s slot nothing (RUPD-Reward-Too-Early ¬slot>)
    with firstSlot (epoch slot) + RandomnessStabilisationWindow <? slot
  ... | no _ = refl
  ... | yes slot> = ⊥-elim $ ¬slot> slot>

  Computational-TICK : Computational _⊢_⇀⦇_,TICK⦈_ ⊥
  Computational-TICK .computeProof _ nes _ = do
    (nes' , neStep) ← computeProof {STS = _⊢_⇀⦇_,NEWEPOCH⦈_} _ _ _
    (_ , ruStep) ← computeProof _ (nes' .NewEpochState.ru) _
    success (_ , TICK (neStep , ruStep))

  Computational-TICK .completeness _ _ _ _ (TICK (neStep , ruStep))
    with completeness _ _ _ _ neStep
  ... | refl
    with recomputeProof ruStep | completeness _ _ _ _ ruStep
  ... | success _ | refl
     = refl
```
