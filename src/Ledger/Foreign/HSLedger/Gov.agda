module Ledger.Foreign.HSLedger.Gov where

open import Ledger.Foreign.HSLedger.Cert

open import Ledger.Foreign.HSLedger.BaseTypes

import Ledger.Foreign.LedgerTypes as F
import Foreign.Haskell.Pair as F

open import Ledger.Foreign.HSLedger.Enact

open import Ledger.Gov HSTransactionStructure
open import Ledger.Gov.Properties HSTransactionStructure

open import Ledger.GovernanceActions HSGovStructure using (Vote) public

toNeedsHash : ∀ {action} → F.GovActionID → NeedsHash action
toNeedsHash {NoConfidence} x = from x
toNeedsHash {UpdateCommittee _ _ _} x = from x
toNeedsHash {NewConstitution _ _} x = from x
toNeedsHash {TriggerHF _} x = from x
toNeedsHash {ChangePParams _} x = from x
toNeedsHash {TreasuryWdrl _} x = tt
toNeedsHash {Info} x = tt

fromNeedsHash : ∀ {action} → NeedsHash action → F.GovActionID
fromNeedsHash {NoConfidence} x = to x
fromNeedsHash {UpdateCommittee _ _ _} x = to x
fromNeedsHash {NewConstitution _ _} x = to x
fromNeedsHash {TriggerHF _} x = to x
fromNeedsHash {ChangePParams _} x = to x
fromNeedsHash {TreasuryWdrl _} x = to 0 F., 0
fromNeedsHash {Info} x = to 0 F., 0

instance
  _ = Convertible-Refl {String}

  Convertible-GovEnv : ConvertibleType GovEnv F.GovEnv
  Convertible-GovEnv = autoConvertible

  Convertible-DocHash : Convertible DocHash F.DataHash
  Convertible-DocHash = autoConvertible

  Convertible-GovActionState : Convertible GovActionState F.GovActionState
  Convertible-GovActionState = λ where
    .to s → let open GovActionState s in
      record
        { gasVotes = to votes
        ; gasReturnAddr = to returnAddr
        ; gasExpiresIn = to expiresIn
        ; gasAction = to action
        ; gasPrevAction = fromNeedsHash prevAction
        }
    .from s → let open F.GovActionState s in
      record
        { votes = from gasVotes
        ; returnAddr = from gasReturnAddr
        ; expiresIn = from gasExpiresIn
        ; action = from gasAction
        ; prevAction = toNeedsHash gasPrevAction
        }

  Convertible-GovProposal : Convertible GovProposal F.GovProposal
  Convertible-GovProposal = λ where
    .to p → let open GovProposal p in
      record
        { gpAction = to action
        ; gpPrevAction = fromNeedsHash prevAction
        ; gpPolicy = to policy
        ; gpDeposit = to deposit
        ; gpReturnAddr = to returnAddr
        ; gpAnchor = to anchor
        }
    .from p → let open F.GovProposal p in
      record
        { action = from gpAction
        ; prevAction = toNeedsHash gpPrevAction
        ; policy = from gpPolicy
        ; deposit = from gpDeposit
        ; returnAddr = from gpReturnAddr
        ; anchor = from gpAnchor
        }

  Convertible-GovSignal : Convertible (GovVote ⊎ GovProposal) F.GovSignal
  Convertible-GovSignal = λ where
    .to (inj₁ x) → F.GovSignalVote (to x)
    .to (inj₂ y) → F.GovSignalProposal (to y)
    .from (F.GovSignalVote x) → inj₁ (from x)
    .from (F.GovSignalProposal x) → inj₂ (from x)

gov-step : F.GovEnv → F.GovState → List F.GovSignal → F.ComputationResult String F.GovState
gov-step = to (compute Computational-GOV)

{-# COMPILE GHC gov-step as govStep #-}
