module Ledger.Conway.Foreign.HSLedger.Gov where

open import Ledger.Prelude using (Type)

open import Ledger.Conway.Foreign.HSLedger.Address
open import Ledger.Conway.Foreign.HSLedger.BaseTypes
open import Ledger.Conway.Foreign.HSLedger.Enact
open import Ledger.Conway.Foreign.HSLedger.PParams
open import Ledger.Conway.Foreign.HSLedger.Gov.Core
open import Ledger.Conway.Foreign.HSLedger.Gov.Actions
open import Ledger.Conway.Foreign.HSLedger.Cert

open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.Gov it it
import Ledger.Conway.Specification.Gov it as L
open import Ledger.Conway.Specification.Gov.Properties it

instance

  HsTy-GovEnv = autoHsType GovEnv ⊣ withConstructor "MkGovEnv"
                                  • fieldPrefix "ge"
  Conv-GovEnv = autoConvert GovEnv

-- NeedsHash depends on a GovAction, so a little bit of manual work is
-- required to get the types using it into Haskell.

-- First we define to/fromNeedsHash that replaces the ⊤ cases by a
-- dummy GovActionID.

toNeedsHash : ∀ {action} → GovActionID → NeedsHash action
toNeedsHash {NoConfidence}        x = x
toNeedsHash {UpdateCommittee}     x = x
toNeedsHash {NewConstitution}     x = x
toNeedsHash {TriggerHardFork}     x = x
toNeedsHash {ChangePParams}       x = x
toNeedsHash {TreasuryWithdrawal}  x = tt
toNeedsHash {Info}                x = tt

fromNeedsHash : ∀ {action} → NeedsHash action → GovActionID
fromNeedsHash {NoConfidence}        x = x
fromNeedsHash {UpdateCommittee}     x = x
fromNeedsHash {NewConstitution}     x = x
fromNeedsHash {TriggerHardFork}     x = x
fromNeedsHash {ChangePParams}       x = x
fromNeedsHash {TreasuryWithdrawal}  x = 0 , 0
fromNeedsHash {Info}                x = 0 , 0

-- Then we define non-dependent versions of the types that use
-- NeedsHash.

record GovProposal' : Type where
  field
    action      : GovAction'
    prevAction  : GovActionID       -- NeedsHash action
    policy      : Maybe ScriptHash
    deposit     : Coin
    returnAddr  : RwdAddr
    anchor      : Anchor

record GovActionState' : Type where
  field
    votes       : GovVotes
    returnAddr  : RwdAddr
    expiresIn   : Epoch
    action      : GovAction'
    prevAction  : GovActionID       -- NeedsHash action

-- We can convert between the dependent and non-dependent versions
-- using to/fromNeedsHash.

private
  mkGovProposal' : Convertible GovProposal GovProposal'
  mkGovProposal' = λ where
    .to   p → let module p = GovProposal  p in record { p; action = to p.action  ; prevAction = fromNeedsHash p.prevAction }
    .from p → let module p = GovProposal' p in record { p; action = from p.action; prevAction = toNeedsHash   p.prevAction }

  mkGovActionState' : Convertible GovActionState GovActionState'
  mkGovActionState' = λ where
    .to   s → let module s = GovActionState  s in record{ s; action = to s.action  ; prevAction = fromNeedsHash s.prevAction }
    .from s → let module s = GovActionState' s in record{ s; action = from s.action; prevAction = toNeedsHash   s.prevAction }

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

unquoteDecl = do
  hsTypeAlias GovActionID
  hsTypeAlias GovState
  hsTypeAlias GovVoter'

-- Computational function

gov-step
  : HsType (GovEnv → GovState → List (GovVote ⊎ GovProposal)
  → ComputationResult String GovState)
gov-step Γ govSt gvps =
    to $ compute Computational-GOVS
      ⟦ txid , e' , pparams , ppolicy , enactState , to certState , rewardCreds ⟧
      (from govSt)
      (from gvps)
  where open GovEnv (from Γ) renaming (epoch to e')

{-# COMPILE GHC gov-step as govStep #-}
