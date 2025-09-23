module Ledger.Conway.Foreign.HSLedger.NewEpoch where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Epoch
open import Ledger.Conway.Foreign.HSLedger.Rewards

open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Epoch.Properties it it

import Data.String as S

instance
  Show-NEWEPOCH : ∀ {eps e eps'} → Show (_ ⊢ eps ⇀⦇ e ,NEWEPOCH⦈ eps')
  Show-NEWEPOCH .show (NEWEPOCH-New (_ , e))        = "NEWEPOCH-New " S.++ show e
  Show-NEWEPOCH .show (NEWEPOCH-Not-New x)          = "NEWEPOCH-Not-New"
  Show-NEWEPOCH .show (NEWEPOCH-No-Reward-Update x) = "NEWEPOCH-No-Reward-Update"

  Show-SPEC-NEWEPOCH : ∀ {eps e eps'} → Show (_ EpochSpec.⊢ eps ⇀⦇ e ,NEWEPOCH⦈ eps')
  Show-SPEC-NEWEPOCH .show (EpochSpec.NEWEPOCH-New (_ , e))        = "NEWEPOCH-New " S.++ show e
  Show-SPEC-NEWEPOCH .show (EpochSpec.NEWEPOCH-Not-New x)          = "NEWEPOCH-Not-New"
  Show-SPEC-NEWEPOCH .show (EpochSpec.NEWEPOCH-No-Reward-Update x) = "NEWEPOCH-No-Reward-Update"

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ (NewEpochState × String))
newepoch-step _ newEpochSt e =
  let r = Computational-NEWEPOCH .computeProof _ (from newEpochSt) e
  in case r of λ where
    (success (s , p)) → to (success (s , show p))

{-# COMPILE GHC newepoch-step as newEpochStep #-}

-- An alternative implementation of NEWEPOCH that connects the conformance state
-- with the specification rule.

spec-newepoch-step
  : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ (NewEpochState × String))
spec-newepoch-step _ neSt e =
  let r = EpochSpec.Computational-NEWEPOCH .computeProof _ (conv (from neSt)) e
  in case r of λ where
    (success (s , p)) → to (success (conv s , show p))

{-# COMPILE GHC spec-newepoch-step as specNewEpochStep #-}
