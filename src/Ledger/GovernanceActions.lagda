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
  NewCommittee     : KeyHash ↛ Epoch → ℙ KeyHash → ℚ → GovAction
  NewConstitution  : DocHash                          → GovAction
  TriggerHF        : ProtVer                          → GovAction
  ChangePParams    : UpdateT → PPHash                 → GovAction
  TreasuryWdrl     : (Credential ↛ Coin)              → GovAction
  Info             :                                    GovAction

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
  field deposit     : Coin
        returnAddr  : RwdAddr
        action      : GovAction
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
record EnactEnv : Set where

record EnactState : Set where
  field cc            : Maybe (KeyHash ↛ Epoch × ℚ)
        constitution  : DocHash
        pv            : ProtVer
        pparams       : PParams
        withdrawals   : Credential ↛ Coin
        treasury      : Coin
\end{code}
\begin{code}[hide]
open EnactState

private variable
  s : EnactState
  up : UpdateT
  new : KeyHash ↛ Epoch
  rem : ℙ KeyHash
  q : ℚ
  dh : DocHash
  h : PPHash
  v : ProtVer
  wdrl : Credential ↛ Coin
  newTreasury : Coin

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

  -- TODO: add hashes to everything except withdrawals & no ops
  Enact-NoConf    : _ ⊢ s ⇀⦇ NoConfidence            ,ENACT⦈  record s { cc = nothing }
  Enact-NewComm   : _ ⊢ s ⇀⦇ NewCommittee new rem q  ,ENACT⦈ let
    old = maybe proj₁ ∅ᵐ (EnactState.cc s)
    in record s { cc = just ((new ∪ᵐˡ old) ∣ rem ᶜ , q) }
  Enact-NewConst  : _ ⊢ s ⇀⦇ NewConstitution dh      ,ENACT⦈  record s { constitution = dh }
  Enact-HF        : _ ⊢ s ⇀⦇ TriggerHF v             ,ENACT⦈  record s { pv = v }
  Enact-PParamsY  :
    h ≡ hash (s .pparams)
    ────────────────────────────────
    _ ⊢ s ⇀⦇ ChangePParams up h  ,ENACT⦈  record s { pparams = applyUpdate (s .pparams) up }
  Enact-PParamsN  : -- TODO: maybe prevent this in TALLY instead and delay enactment?
    ¬ h ≡ hash (s .pparams)
    ────────────────────────────────
    _ ⊢ s ⇀⦇ ChangePParams up h  ,ENACT⦈ s
  Enact-Wdrl      :
    let newWdrls = Σᵐᵛ[ x ← wdrl ᶠᵐ ] x
    in newWdrls ≤ s .treasury
    ────────────────────────────────
    _ ⊢ s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈
      record s { withdrawals  = s .withdrawals  ∪⁺ wdrl
               ; treasury     = s .treasury     ∸  newWdrls }
  Enact-Info      : _ ⊢ s ⇀⦇ Info  ,ENACT⦈ s
\end{code}
\caption{ENACT transition system}
\end{figure*}
