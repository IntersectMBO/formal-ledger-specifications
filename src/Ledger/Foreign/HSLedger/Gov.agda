module Ledger.Foreign.HSLedger.Gov where

open import Ledger.Foreign.HSLedger.Address
open import Ledger.Foreign.HSLedger.BaseTypes
open import Ledger.Foreign.HSLedger.Enact
open import Ledger.Foreign.HSLedger.PParams

open import Ledger.Gov it
open import Ledger.Gov.Properties it

open import Ledger.GovernanceActions govStructure using (Vote) public

instance
  HsTy-GovRole = autoHsType GovRole
  Conv-GovRole = autoConvert GovRole

  HsTy-Anchor = autoHsType Anchor
  Conv-Anchor = autoConvert Anchor

  HsTy-VDeleg = autoHsType VDeleg
  Conv-VDeleg = autoConvert VDeleg

  HsTy-Vote = autoHsType Vote
  Conv-Vote = autoConvert Vote

  HsTy-GovVote = autoHsType GovVote
  Conv-GovVote = autoConvert GovVote

  HsTy-GovEnv = autoHsType GovEnv ⊣ withConstructor "MkGovEnv"
                                  • fieldPrefix "ge"
  Conv-GovEnv = autoConvert GovEnv

-- NeedsHash depends on a GovAction, so a little bit of manual work is
-- required to get the types using it into Haskell.

-- First we define to/fromNeedsHash that replaces the ⊤ cases by a
-- dummy GovActionID.

toNeedsHash : ∀ {action} → GovActionID → NeedsHash action
toNeedsHash {NoConfidence}           x = x
toNeedsHash {UpdateCommittee _ _ _}  x = x
toNeedsHash {NewConstitution _ _}    x = x
toNeedsHash {TriggerHF _}            x = x
toNeedsHash {ChangePParams _}        x = x
toNeedsHash {TreasuryWdrl _}         x = tt
toNeedsHash {Info}                   x = tt

fromNeedsHash : ∀ {action} → NeedsHash action → GovActionID
fromNeedsHash {NoConfidence}           x = x
fromNeedsHash {UpdateCommittee _ _ _}  x = x
fromNeedsHash {NewConstitution _ _}    x = x
fromNeedsHash {TriggerHF _}            x = x
fromNeedsHash {ChangePParams _}        x = x
fromNeedsHash {TreasuryWdrl _}         x = 0 , 0
fromNeedsHash {Info}                   x = 0 , 0

-- Then we define non-dependent versions of the types that use
-- NeedsHash.

record GovProposal' : Type where
  field
    action      : GovAction
    prevAction  : GovActionID       -- NeedsHash action
    policy      : Maybe ScriptHash
    deposit     : Coin
    returnAddr  : RwdAddr
    anchor      : Anchor

record GovActionState' : Type where
  field
    votes       : Voter ⇀ Vote
    returnAddr  : RwdAddr
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : GovActionID       -- NeedsHash action

-- We can convert between the dependent and non-dependent versions
-- using to/fromNeedsHash.

private
  mkGovProposal' : Convertible GovProposal GovProposal'
  mkGovProposal' = λ where
    .to   p → let module p = GovProposal  p in record{ p; prevAction = fromNeedsHash p.prevAction }
    .from p → let module p = GovProposal' p in record{ p; prevAction = toNeedsHash   p.prevAction }

  mkGovActionState' : Convertible GovActionState GovActionState'
  mkGovActionState' = λ where
    .to   s → let module s = GovActionState  s in record{ s; prevAction = fromNeedsHash s.prevAction }
    .from s → let module s = GovActionState' s in record{ s; prevAction = toNeedsHash   s.prevAction }

-- Auto-generated conversions for the non-dependent types

instance
  HsTy-GovProposal' = autoHsType GovProposal' ⊣ withName "GovProposal"
                                              • withConstructor "MkGovProposal"
                                              • fieldPrefix "gp"
  Conv-GovProposal' = autoConvert GovProposal'

  HsTy-GovActionState' = autoHsType GovActionState' ⊣ withName "GovActionState"
                                                    • withConstructor "MkGovActionState"
                                                    • fieldPrefix "gas"
  Conv-GovActionState' = autoConvert GovActionState'

-- And finally we compose everything into conversions for the dependent types

instance
  HsTy-GovProposal = MkHsType GovProposal (HsType GovProposal')
  Conv-GovProposal = mkGovProposal' ⨾ Conv-GovProposal'

  HsTy-GovActionState = MkHsType GovActionState (HsType GovActionState')
  Conv-GovActionState = mkGovActionState' ⨾ Conv-GovActionState'

-- Computational function

gov-step : HsType (GovEnv → GovState → List (GovVote ⊎ GovProposal) → ComputationResult String GovState)
gov-step = to (compute Computational-GOV)

{-# COMPILE GHC gov-step as govStep #-}
