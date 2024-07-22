module Ledger.Foreign.HSLedger.Ratify where

open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.Gov

open import Ledger.Ratify HSTransactionStructure
open import Ledger.Ratify.Properties HSTransactionStructure
open import Ledger.Enact HSGovStructure

open import Data.String.Base renaming (_++_ to _+ˢ_) hiding (show; length)
import Data.Rational.Show as Rational

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

instance
  _ = Convertible-Refl {Bool}

  Convertible-StakeDistrs : Convertible StakeDistrs F.StakeDistrs
  Convertible-StakeDistrs = autoConvertible

  Convertible-RatifyEnv : Convertible RatifyEnv F.RatifyEnv
  Convertible-RatifyEnv = autoConvertible

  Convertible-RatifyState : Convertible RatifyState F.RatifyState
  Convertible-RatifyState = autoConvertible

ratify-debug : F.RatifyEnv → F.RatifyState → List (F.Pair F.GovActionID F.GovActionState) → String
ratify-debug env st sig =
  "Number of govactions: " +ˢ show (length sig) +ˢ "\n" +ˢ
  foldr (λ x s → s +ˢ govActionInfo x) "" sig
  where
    open RatifyEnv (from env)
    govActionInfo : F.Pair F.GovActionID F.GovActionState → String
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

ratify-step : F.RatifyEnv → F.RatifyState → List (F.Pair F.GovActionID F.GovActionState) → F.ComputationResult F.Empty F.RatifyState
ratify-step = to (compute Computational-RATIFY)

{-# COMPILE GHC ratify-step as ratifyStep #-}
