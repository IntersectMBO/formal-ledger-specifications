---
source_branch: master
source_path: src/Ledger/Dijkstra/Foreign/Gov.lagda.md
---
```agda
module Ledger.Dijkstra.Foreign.Gov where

open import Foreign.Convertible
open import Foreign.Convertible.Deriving
open import Foreign.HaskellTypes
open import Foreign.HaskellTypes.Deriving

open import Ledger.Prelude
open import Ledger.Prelude.Foreign.HSTypes

open import Ledger.Core.Foreign.Address
open import Ledger.Dijkstra.Foreign.HSStructures
open import Ledger.Dijkstra.Foreign.Cert
open import Ledger.Dijkstra.Foreign.Enact
open import Ledger.Dijkstra.Foreign.PParams
open import Ledger.Dijkstra.Foreign.Gov.Core
open import Ledger.Dijkstra.Foreign.Gov.Actions
open import Ledger.Dijkstra.Specification.Gov DummyGovStructure as Gov
open import Ledger.Dijkstra.Specification.Gov.Properties.Computational it

open Computational

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
    returnAddr  : RewardAddress
    anchor      : Anchor

-- We can convert between the dependent and non-dependent versions
-- using to/fromNeedsHash.

private
  mkGovProposal' : Convertible GovProposal GovProposal'
  mkGovProposal' = λ where
    .to   p → let module p = GovProposal  p in record { p; action = to p.action  ; prevAction = fromNeedsHash p.prevAction }
    .from p → let module p = GovProposal' p in record { p; action = from p.action; prevAction = toNeedsHash   p.prevAction }

-- Auto-generated conversions for the non-dependent types

instance
  HsTy-GovProposal' = autoHsType GovProposal' ⊣ withName "GovProposal"
                                              • withConstructor "MkGovProposal"
                                              • fieldPrefix "gp"
  Conv-GovProposal' = autoConvert GovProposal'

  HsTy-GovProposal = MkHsType GovProposal (HsType GovProposal')
  Conv-GovProposal = mkGovProposal' ⨾ Conv-GovProposal'

-- GovActionState also has a dependent prevAction field.

record GovActionState' : Type where
  field
    votes       : GovVotes
    returnAddr  : RewardAddress
    expiresIn   : Epoch
    action      : GovAction'
    prevAction  : GovActionID

private
  mkGovActionState' : Convertible GovActionState GovActionState'
  mkGovActionState' = λ where
    .to   s → let module s = GovActionState s in
      record { votes = s.votes ; returnAddr = s.returnAddr ; expiresIn = s.expiresIn
             ; action = to s.action ; prevAction = fromNeedsHash s.prevAction }
    .from s → let module s = GovActionState' s in
      record { votes = s.votes ; returnAddr = s.returnAddr ; expiresIn = s.expiresIn
             ; action = from s.action ; prevAction = toNeedsHash s.prevAction }

instance
  HsTy-GovActionState' = autoHsType GovActionState' ⊣ withName "GovActionState"
                                                     • withConstructor "MkGovActionState"
                                                     • fieldPrefix "gas"
  Conv-GovActionState' = autoConvert GovActionState'

  HsTy-GovActionState = MkHsType GovActionState (HsType GovActionState')
  Conv-GovActionState = mkGovActionState' ⨾ Conv-GovActionState'

-- GovEnv has no dependent types, so autoHsType works directly.

  HsTy-GovEnv = autoHsType Gov.GovEnv ⊣ withConstructor "MkGovEnv"
                                       • fieldPrefix "ge"
  Conv-GovEnv = autoConvert Gov.GovEnv

unquoteDecl = do
  hsTypeAlias GovActionID
  hsTypeAlias GovState
  hsTypeAlias GovVoter'

-- Computational step functions

gov-step : HsType (GovEnv × ℕ → GovState → GovVote ⊎ GovProposal → ComputationResult String GovState)
gov-step = to (compute Computational-GOV)

{-# COMPILE GHC gov-step as govStep #-}

govs-step : HsType (GovEnv → GovState → List (GovVote ⊎ GovProposal) → ComputationResult String GovState)
govs-step = to (compute Computational-GOVS)

{-# COMPILE GHC govs-step as govsStep #-}
```
