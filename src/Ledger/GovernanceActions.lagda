\section{Governance actions}
\label{sec:governance-actions}

\begin{code}[hide]
{-# OPTIONS --safe #-}
open import Ledger.Crypto

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Epoch

import Ledger.PParams as PP

open import Data.Nat using (_≤_)
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

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

2ℚ = 1ℚ Data.Rational.+ 1ℚ

\end{code}

\newcommand{\defn}[1]{\textit{#1}}
A \defn{Governance action}, defined by the \AgdaBound{GovAction} type shown in Figure~\ref{defs:governance},
is one of the following:

\begin{itemize}
  \item \AgdaBound{NoConfidence}. A vote of \textit{no confidence}.
  \item \AgdaBound{NewCommittee}.  A \textit{new committee} requires a map from \AgdaBound{KeyHash} to \AgdaBound{Epoch}, a set of key hashes (of type \AgdaBound{ℙ KeyHash}, and a rational number.
  \item \AgdaBound{NewConstitution}.  A \textit{new constitution} requires a document hash (of type \AgdaBound{DocHash}).
  \item \AgdaBound{TriggerHF}. ... requires a protocol version (of type \AgdaBound{ProtVer}) ...
  \item \AgdaBound{ChangePParams}. A \textit{change of protocol parameters} (\AgdaBound{PParams}) requires an update (of type \AgdaBound{UpdateT}) and a protocol parameter hash (of type \AgdaBound{PPHash}).
  \item \AgdaBound{TreasuryWdrl}. A \textit{treasury withdrawal} requires a map from \AgdaBound{Credential} to \AgdaBound{Coin}.
  \item \AgdaBound{Info}.
\end{itemize}

Associated with each governance action are the following data:
\begin{itemize}
  \item a \defn{identifier} (\AgdaBound{GovActionId})---a pair consisting of a transaction id (of type \AgdaBound{TxId}) and a natural number.
  \item a \defn{role} (\AgdaBound{GovRole}), which is either \AgdaBound{CC}, \AgdaBound{DRep}, or \AgdaBound{SPO}.
  \item a \defn{vote delegation type} (\AgdaBound{VDeleg}), which is either \AgdaBound{credVoter}, \AgdaBound{abstainRep}, or \AgdaBound{noConfidenceRep}.
  \item an \defn{anchor} (\AgdaBound{Anchor}) consisting of a url (\AgdaBound{String}) and a document hash (\AgdaBound{DocHash}).
\end{itemize}


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
  NoConfidence     :                                    GovAction
  NewCommittee     : KeyHash ⇀ Epoch → ℙ KeyHash → ℚ  → GovAction
  NewConstitution  : DocHash                          → GovAction
  TriggerHF        : ProtVer                          → GovAction
  ChangePParams    : UpdateT → PPHash                 → GovAction
  TreasuryWdrl     : (Credential ⇀ Coin)              → GovAction
  Info             :                                    GovAction
\end{code}
\caption{Governance actions}
\label{defs:governance}
\end{figure*}

\begin{code}[hide]
actionWellFormed : GovAction → Bool
actionWellFormed (ChangePParams x _)  = ppdWellFormed x
actionWellFormed _                    = true

maximum : ℙ ℚ → ℚ
maximum x = foldl Data.Rational._⊔_ 0ℚ (proj₁ $ finiteness x)

module _ (pp : PParams) (ccThreshold' : Maybe ℚ) where
  open PParams pp
  open DrepThresholds drepThresholds
  open PoolThresholds poolThresholds

  -- Here, 2 can just be any number strictly greater than one. It just
  -- means that a threshold can never be cleared, i.e. that the action
  -- cannot be enacted.

  private
    ccThreshold : ℚ
    ccThreshold = case ccThreshold' of λ where
      (just x) → x
      nothing  → 2ℚ

    pparamThreshold : PParamGroup → ℚ
    pparamThreshold NetworkGroup     = P5a
    pparamThreshold EconomicGroup    = P5b
    pparamThreshold TechnicalGroup   = P5c
    pparamThreshold GovernanceGroup  = P5d

    P5 : UpdateT → ℚ
    P5 ppu = maximum $ map pparamThreshold (updateGroups ppu)

  threshold : GovAction → GovRole → ℚ
  threshold NoConfidence         = λ { CC → 0ℚ          ; DRep → P1   ; SPO → Q1 }
  threshold (NewCommittee _ _ _) = case ccThreshold' of λ where
                        (just _) → λ { CC → 0ℚ          ; DRep → P2a  ; SPO → Q2a }
                        nothing  → λ { CC → 0ℚ          ; DRep → P2b  ; SPO → Q2b }
  threshold (NewConstitution _)  = λ { CC → ccThreshold ; DRep → P3   ; SPO → 0ℚ }
  threshold (TriggerHF _)        = λ { CC → ccThreshold ; DRep → P4   ; SPO → Q4 }
  threshold (ChangePParams x _)  = λ { CC → ccThreshold ; DRep → P5 x ; SPO → 0ℚ }
  threshold (TreasuryWdrl _)     = λ { CC → ccThreshold ; DRep → P6   ; SPO → 0ℚ }
  threshold Info                 = λ { CC → 2ℚ          ; DRep → 2ℚ   ; SPO → 2ℚ }

NeedsHash : GovAction → Set
NeedsHash NoConfidence         = GovActionID
NeedsHash (NewCommittee _ _ _) = GovActionID
NeedsHash (NewConstitution _)  = GovActionID
NeedsHash (TriggerHF _)        = GovActionID
NeedsHash (ChangePParams _ _)  = GovActionID
NeedsHash (TreasuryWdrl _)     = ⊤
NeedsHash Info                 = ⊤
\end{code}

A \defn{governance action proposal} is recorded in a \AgdaBound{GovProposal} record which includes
an address (of type \AgdaBound{RwdAddr}), the proposed governance action (of type \AgdaBound{GovAction}),
a hash of the previous governance action, and an anchor. (See Figure~\ref{defs:governance-votes}.)

There are three ways to vote on a governance action: ``yes,'' ``no,'' or ``abstain.''

Each vote is recorded (in the \AgdaBound{GovVote} record) along with a
governance action identifier (\AgdaBound{GovActionID}), a role (\AgdaBound{GovRole}),
a credential (\AgdaBound{Credential}), and possibly an anchor (\AgdaBound{Anchor}).
(See Figure~\ref{defs:governance-votes}.)

\begin{code}
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
\caption{Governance action proposals and votes}
\label{defs:governance-votes}
\end{figure*}

\begin{code}[hide]
instance
  _ = +-0-commutativeMonoid
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}

\defn{Enactment} of a governance action is carried out as an \defn{enact transition}
which requires an \defn{enact environment} (\AgdaBound{EnactEnv}), an \defn{enact state}
(\AgdaBound{EnactState}), the voted on governance action (that achieved a passing vote to enact),
and the state that results from enacting the given governance action (\AgdaBound{EnactState}).
(See Figure~\ref{fig:enact-transition-system}.)

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
\label{fig:enact-transition-system}
\end{figure*}
