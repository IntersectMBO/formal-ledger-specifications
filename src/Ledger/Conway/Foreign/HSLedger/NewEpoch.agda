module Ledger.Conway.Foreign.HSLedger.NewEpoch where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Epoch
open import Ledger.Conway.Foreign.HSLedger.Rewards

open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Epoch.Properties it it

import Data.String as S

instance
  Show-NEWEPOCH : ∀ {eps e eps'} → Show (_ ⊢ eps ⇀⦇ e ,NEWEPOCH⦈ eps')
  Show-NEWEPOCH .show (NEWEPOCH-New (_ , e))        = "NEWEPOCH-New " S.++ show e
  Show-NEWEPOCH .show (NEWEPOCH-Not-New x)          = "NEWEPOCH-Not-New"
  Show-NEWEPOCH .show (NEWEPOCH-No-Reward-Update x) = "NEWEPOCH-No-Reward-Update"

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ (NewEpochState × String))
newepoch-step _ newEpochSt e =
  let r = Computational-NEWEPOCH .computeProof _ (from newEpochSt) e
  in case r of λ where
    (success (s , p)) → to (success (s , show p))

{-# COMPILE GHC newepoch-step as newEpochStep #-}

