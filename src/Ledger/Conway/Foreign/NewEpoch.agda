module Ledger.Conway.Foreign.NewEpoch where

import Data.String as S
open import Class.Convertible
open import Class.Convertible.Foreign
open import Class.HasHsType
open import Class.HasHsType.Foreign
open import Tactic.Derive.Convertible
open import Tactic.Derive.HsType

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Conway.Foreign.HSStructures
open import Ledger.Conway.Foreign.Epoch
open import Ledger.Conway.Foreign.Rewards
open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Epoch it it

open Computational

instance
  Show-NEWEPOCH : ∀ {eps e eps'} → Show (_ EpochSpec.⊢ eps ⇀⦇ e ,NEWEPOCH⦈ eps')
  Show-NEWEPOCH .show (EpochSpec.NEWEPOCH-New (_ , e))        = "NEWEPOCH-New " S.++ show e
  Show-NEWEPOCH .show (EpochSpec.NEWEPOCH-Not-New x)          = "NEWEPOCH-Not-New"
  Show-NEWEPOCH .show (EpochSpec.NEWEPOCH-No-Reward-Update x) = "NEWEPOCH-No-Reward-Update"

instance
  HsTy-NewEpochState = autoHsType NewEpochState ⊣ withConstructor "MkNewEpochState"
  Conv-NewEpochState = autoConvert NewEpochState

newepoch-step
  : HsType (⊤ → NewEpochState → Epoch → ComputationResult ⊥ (NewEpochState × String))
newepoch-step _ neSt e =
  let r = EpochSpec.Computational-NEWEPOCH .computeProof _ (conv (from neSt)) e
  in case r of λ where
    (success (s , p)) → to (success (conv s , show p))

{-# COMPILE GHC newepoch-step as newEpochStep #-}
