module Ledger.Conway.Foreign.HSLedger.Epoch where

open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.Ledger
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Ratify
open import Ledger.Conway.Foreign.HSLedger.Rewards

open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Epoch it it
open import Ledger.Conway.Conformance.Epoch.Properties it it

module EpochSpec where
  open import Ledger.Conway.Specification.Epoch it it public
  open import Ledger.Conway.Specification.Epoch.Properties it it public

import Data.String as S

instance
  Show-EPOCH : ∀ {eps e eps'} → Show (_ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps')
  Show-EPOCH .show (EPOCH e s) = "EPOCH\n" S.++ show s S.++ " " S.++ show e

  Show-SPEC-EPOCH : ∀ {eps e eps'} → Show (_ EpochSpec.⊢ eps ⇀⦇ e ,EPOCH⦈ eps')
  Show-SPEC-EPOCH .show (EpochSpec.EPOCH (s , r , pr)) =
    "SPEC-EPOCH\n" S.++ "SNAP" S.++ " " S.++ show r

    -- record { currentEpoch = e
    --        ; stakeDistrs = mkStakeDistrs  (Snapshots.mark ss') govSt'
    --                                       (utxoSt' .deposits) (voteDelegs dState)
instance
  HsTy-EpochState = autoHsType EpochState ⊣ withConstructor "MkEpochState"
                                          • fieldPrefix "es"
  Conv-EpochState = autoConvert EpochState

epoch-step : HsType (⊤ → EpochState → Epoch → ComputationResult ⊥ (EpochState × String))
epoch-step _ epochSt e =
  let r = Computational-EPOCH .computeProof _ (from epochSt) e
  in case r of λ where
    (success (s , p)) → to (success (s , show p))

{-# COMPILE GHC epoch-step as epochStep #-}

-- An alternative implementation of EPOCH that connects the conformance state
-- with the specification rule.

spec-epoch-step
  : HsType (⊤ → EpochState → Epoch → ComputationResult ⊥ (EpochState × String))
spec-epoch-step _ epochSt e =
  let r = EpochSpec.Computational-EPOCH .computeProof _ (conv (from epochSt)) e
  in case r of λ where
    (success (s , p)) → to (success (conv s , show p))

{-# COMPILE GHC spec-epoch-step as specEpochStep #-}
