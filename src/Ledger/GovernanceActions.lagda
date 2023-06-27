\section{Governance actions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Epoch

import Ledger.PParams as PP

open import Data.Rational using (ℚ)
open import Data.Nat using (_≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid ; +-0-monoid)
open import Data.These

module Ledger.GovernanceActions (TxId Network DocHash : Set)
                                (es : EpochStructure)
                                (ppd : PP.PParamsDiff es)
                                (ppHashable : isHashableSet (PP.PParams es))
                                (crypto : Crypto) ⦃ _ : DecEq Network ⦄ where

open EpochStructure es
open Crypto crypto

open import Ledger.Address Network KeyHash ScriptHash

open PP es
open PParamsDiff ppd
open isHashableSet ppHashable renaming (THash to PPHash)

open import Tactic.Derive.DecEq
open import MyDebugOptions

\end{code}
\begin{figure*}[h]
\begin{code}
GovActionID : Set
GovActionID = TxId × ℕ

data GovRole : Set where
  CC    : GovRole
  DRep  : GovRole
  SPO   : GovRole

data VDeleg : Set where
  credVoter        : GovRole → Credential → VDeleg
  abstainRep       : VDeleg
  noConfidenceRep  : VDeleg

record Anchor : Set where
  field  url   : String
         hash  : DocHash

data GovAction : Set where
  NoConfidence     :                                   GovAction
  NewCommittee     : KeyHash ⇀ Epoch → ℙ KeyHash → ℚ → GovAction
  NewConstitution  : DocHash                          → GovAction
  TriggerHF        : ProtVer                          → GovAction
  ChangePParams    : UpdateT → PPHash                 → GovAction
  TreasuryWdrl     : (Credential ⇀ Coin)              → GovAction
  Info             :                                    GovAction

actionWellFormed : GovAction → Bool
actionWellFormed (ChangePParams x _) = ppdWellFormed x
actionWellFormed _                   = true

NeedsHash : GovAction → Set
NeedsHash NoConfidence         = GovActionID
NeedsHash (NewCommittee _ _ _) = GovActionID
NeedsHash (NewConstitution _)  = GovActionID
NeedsHash (TriggerHF _)        = GovActionID
NeedsHash (ChangePParams _ _)  = GovActionID
NeedsHash (TreasuryWdrl _)     = ⊤
NeedsHash Info                 = ⊤

data Vote : Set where
  yes      : Vote
  no       : Vote
  abstain  : Vote

record GovVote : Set where
  field gid         : GovActionID
        role        : GovRole
        credential  : Credential
        vote        : Vote
        anchor      : Maybe Anchor

record GovProposal : Set where
  field returnAddr  : RwdAddr
        action      : GovAction
        prevAction  : NeedsHash action
        anchor      : Anchor
\end{code}
\begin{code}[hide]

instance
  _ = +-0-commutativeMonoid
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}
\caption{Governance actions and votes}
\label{defs:governance}
\end{figure*}

\begin{figure*}[h]
\begin{code}
HashProtected : Set → Set
HashProtected A = A × GovActionID

record EnactEnv : Set where
  constructor ⟦_⟧ᵉ
  field gid  : GovActionID

record EnactState : Set where
  field cc            : HashProtected (Maybe (KeyHash ⇀ Epoch × ℚ))
        constitution  : HashProtected DocHash
        pv            : HashProtected ProtVer
        pparams       : HashProtected PParams
        withdrawals   : Credential ⇀ Coin
        treasury      : Coin
\end{code}
\begin{code}[hide]
open EnactState

private variable
  s : EnactState
  up : UpdateT
  new : KeyHash ⇀ Epoch
  rem : ℙ KeyHash
  q : ℚ
  dh : DocHash
  h : PPHash
  v : ProtVer
  wdrl : Credential ⇀ Coin
  newTreasury : Coin
  gid : GovActionID

instance
  _ = +-0-monoid

data
\end{code}
\begin{code}
  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set
\end{code}
\begin{code}[hide]
data _⊢_⇀⦇_,ENACT⦈_ where
\end{code}
\begin{code}

  Enact-NoConf    : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NoConfidence            ,ENACT⦈  record s { cc = nothing , gid }
  Enact-NewComm   : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NewCommittee new rem q  ,ENACT⦈ let
    old = maybe proj₁ ∅ᵐ (proj₁ (EnactState.cc s))
    in record s { cc = just ((new ∪ᵐˡ old) ∣ rem ᶜ , q) , gid }
  Enact-NewConst  : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NewConstitution dh      ,ENACT⦈  record s { constitution = dh , gid }
  Enact-HF        : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ TriggerHF v             ,ENACT⦈  record s { pv = v , gid }
  Enact-PParams   :
    ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ ChangePParams up h  ,ENACT⦈  record s { pparams = applyUpdate (proj₁ (s .pparams)) up , gid }
  Enact-Wdrl      :
    let newWdrls = Σᵐᵛ[ x ← wdrl ᶠᵐ ] x
    in newWdrls ≤ s .treasury
    ────────────────────────────────
    ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈
      record s { withdrawals  = s .withdrawals  ∪⁺ wdrl
               ; treasury     = s .treasury     ∸  newWdrls }
  Enact-Info      : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ Info  ,ENACT⦈ s
\end{code}
\caption{ENACT transition system}
\end{figure*}
