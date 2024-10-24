
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Types.GovStructure

module Ledger.Conway.Conformance.GovernanceActions (gs : _) (open GovStructure gs) where

-- TODO: this could be generic
maximum : ℙ ℚ → ℚ
maximum x = foldl Data.Rational._⊔_ 0ℚ (proj₁ $ finiteness x)

data GovRole : Type where
  CC DRep SPO : GovRole

Voter        = GovRole × Credential
GovActionID  = TxId × ℕ

data VDeleg : Type where
  credVoter        : GovRole → Credential →  VDeleg
  abstainRep       :                         VDeleg
  noConfidenceRep  :                         VDeleg

record Anchor : Type where

  field

    url   : String
    hash  : DocHash

data GovAction : Type where
  NoConfidence     :                                             GovAction
  UpdateCommittee  : (Credential ⇀ Epoch) → ℙ Credential → ℚ  →  GovAction
  NewConstitution  : DocHash → Maybe ScriptHash               →  GovAction
  TriggerHF        : ProtVer                                  →  GovAction
  ChangePParams    : PParamsUpdate                            →  GovAction
  TreasuryWdrl     : (RwdAddr ⇀ Coin)                         →  GovAction
  Info             :                                             GovAction

actionWellFormed : GovAction → Type
actionWellFormed (ChangePParams x)  = ppdWellFormed x
actionWellFormed (TreasuryWdrl x)   = ∀[ a ∈ dom x ] RwdAddr.net a ≡ NetworkId
actionWellFormed _                  = ⊤

actionWellFormed? : ∀ {a} → actionWellFormed a ⁇
actionWellFormed? {NoConfidence}          = it
actionWellFormed? {UpdateCommittee _ _ _} = it
actionWellFormed? {NewConstitution _ _}   = it
actionWellFormed? {TriggerHF _}           = it
actionWellFormed? {ChangePParams _}       = it
actionWellFormed? {TreasuryWdrl _}        = it
actionWellFormed? {Info}                  = it

NeedsHash : GovAction → Type
NeedsHash NoConfidence             = GovActionID
NeedsHash (UpdateCommittee _ _ _)  = GovActionID
NeedsHash (NewConstitution _ _)    = GovActionID
NeedsHash (TriggerHF _)            = GovActionID
NeedsHash (ChangePParams _)        = GovActionID
NeedsHash (TreasuryWdrl _)         = ⊤
NeedsHash Info                     = ⊤

HashProtected : Type → Type
HashProtected A = A × GovActionID

data Vote : Type where
  yes no abstain  : Vote

record GovVote : Type where

  field

    gid         : GovActionID
    voter       : Voter
    vote        : Vote
    anchor      : Maybe Anchor

record GovProposal : Type where

  field

    action      : GovAction
    prevAction  : NeedsHash action
    policy      : Maybe ScriptHash
    deposit     : Coin
    returnAddr  : RwdAddr
    anchor      : Anchor

record GovActionState : Type where

  field

    votes       : Voter ⇀ Vote
    returnAddr  : RwdAddr
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : NeedsHash action

instance
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])

getDRepVote : GovVote → Maybe Credential
getDRepVote record { voter = (DRep , credential) }  = just credential
getDRepVote _                                       = nothing

