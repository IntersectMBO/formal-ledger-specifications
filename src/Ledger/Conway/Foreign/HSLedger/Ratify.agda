module Ledger.Conway.Foreign.HSLedger.Ratify where

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.Gov

open import Ledger.Conway.Conformance.Enact govStructure

open import Data.String.Base renaming (_++_ to _+ˢ_) hiding (show; length)
import Data.Rational.Show as Rational

import Foreign.Haskell.Pair as F
open import Ledger.Conway.Conformance.Ratify it
open import Ledger.Conway.Conformance.Ratify.Properties it

instance
  HsTy-StakeDistrs = autoHsType StakeDistrs
  Conv-StakeDistrs = autoConvert StakeDistrs

  HsTy-RatifyEnv = autoHsType RatifyEnv ⊣ withConstructor "MkRatifyEnv"
                                        • fieldPrefix "re"
  Conv-RatifyEnv = autoConvert RatifyEnv

  HsTy-RatifyState = autoHsType RatifyState ⊣ withConstructor "MkRatifyState"
                                            • fieldPrefix "rs"
                                            • RatifyState.es ↦ "rsEnactState"
  Conv-RatifyState = autoConvert RatifyState

ratify-debug : HsType (RatifyEnv → RatifyState → List (GovActionID × GovActionState) → String)
ratify-debug env st sig =
  "Number of govactions: " +ˢ show (length sig) +ˢ "\n" +ˢ
  foldr (λ x s → s +ˢ govActionInfo x) "" sig
  where
    open RatifyEnv (from env)
    govActionInfo : HsType (GovActionID × GovActionState) → String
    govActionInfo (gaId F., gas) =
      let
        open GovActionState (from gas)
        open RatifyState (from st)
        open EnactState es
        votes'  = actualVotes (from env) (proj₁ pparams) (proj₁ cc) action votes
        showAcceptedStakeRatio role = Rational.show (acceptedStakeRatio role (dom votes') stakeDistrs votes')
        showIsAccepted role = case acceptedBy? (from env) es (from gas) role of λ where
          (yes _) → "✓"
          (no  _) → "×"
      in
        "SPO: \t"  +ˢ showAcceptedStakeRatio SPO  +ˢ "\t" +ˢ showIsAccepted SPO  +ˢ "\n" +ˢ
        "DRep: \t" +ˢ showAcceptedStakeRatio DRep +ˢ "\t" +ˢ showIsAccepted DRep +ˢ "\n" +ˢ
        "CC: \t"   +ˢ showAcceptedStakeRatio CC   +ˢ "\t" +ˢ showIsAccepted CC   +ˢ "\n"

{-# COMPILE GHC ratify-debug as ratifyDebug #-}

ratify-step : HsType (RatifyEnv → RatifyState → List (GovActionID × GovActionState) → ComputationResult ⊥ RatifyState)
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}
