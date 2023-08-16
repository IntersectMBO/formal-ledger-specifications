\section{Governance actions}
\label{sec:governance-actions}
We introduce three distinct bodies that have specific functions in the new governance framework:
\begin{enumerate}
\item
  a constitutional committee (henceforth called \CC);
\item
  a group of delegate representatives (henceforth called \DReps);
\item
  a group of stake pool operators (henceforth called \SPOs).
\end{enumerate}
%Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
%The type of action and the state of the governance system determines which bodies must ratify it.
%Ratified actions are then \defn{enacted} on-chain, following a set of well-defined rules.
%\\[4pt]
%As with stake pools, any Ada holder may register to be a DRep and so choose to represent themselves and/or others.
%Also, as with stake pools, Ada holders may instead delegate their voting rights to any other DRep.
%Voting rights will be based on the total Ada that is delegated, as a whole number of Lovelace.
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
\begin{figure*}[h]
{\small
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
} %% end small
\caption{Governance actions}
\label{defs:governance}
\end{figure*}
Figure~\ref{defs:governance} defines several data types used to represent governance actions including:
\begin{itemize}
  \item \GovActionID is \acl{GovActionID}; specifically, it is a pair consisting of \ac{TxId} and a natural number;
  \item \GovRole is \acl{GovRole}; it denotes one of three available voter roles defined above (\CC, \DRep, \SPO);
  \item \VDeleg is \acl{VDeleg}; is denotes one of three ways to delegate votes: \credVoter, \abstainRep, or \noConfidenceRep;
  \item \Anchor is \acl{Anchor}---a url and a document hash;
  \item \GovAction is \acl{GovAction}---one of seven possible actions (see Figure~\ref{fig:types-of-governance-actions} for definitions).
\end{itemize}
\begin{figure*}[h]
\begin{longtable}[]{@{}
>{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.2}}
>{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.75}}@{}}
\GovAction  & description\\[4pt]
\hline
\endhead
\NoConfidence            & \acl{NoConfidence}\\
\NewCommittee            & \acl{NewCommittee}\\
\NewConstitution         & \acl{NewConstitution}\\
\TriggerHF               & \acl{TriggerHF}; requires a prior software upgrade\footnotemark  \\
\ChangePParams           & \acl{ChangePParams}; excludes changes to major protocol versions (``hard forks'')\\
\TreasuryWdrl            & \acl{TreasuryWdrl}\\
\Info                    & \acl{Info} apart from the on-chain record
\end{longtable}
\caption{Types of governance actions}
\label{fig:types-of-governance-actions}
\end{figure*}
\footnotetext{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we formalize the definition slightly more by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  obsoleting nodes that are unable to handle the upgrade.}
\begin{code}[hide]
actionWellFormed : GovAction → Bool
actionWellFormed (ChangePParams x _) = ppdWellFormed x
actionWellFormed _                   = true

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
  threshold NoConfidence          = λ { CC → 0ℚ          ; DRep → P1   ; SPO → Q1 }
  threshold (NewCommittee _ _ _)  = case ccThreshold' of λ where
                        (just _)  → λ { CC → 0ℚ          ; DRep → P2a  ; SPO → Q2a }
                        nothing   → λ { CC → 0ℚ          ; DRep → P2b  ; SPO → Q2b }
  threshold (NewConstitution _)   = λ { CC → ccThreshold ; DRep → P3   ; SPO → 0ℚ }
  threshold (TriggerHF _)         = λ { CC → ccThreshold ; DRep → P4   ; SPO → Q4 }
  threshold (ChangePParams x _)   = λ { CC → ccThreshold ; DRep → P5 x ; SPO → 0ℚ }
  threshold (TreasuryWdrl _)      = λ { CC → ccThreshold ; DRep → P6   ; SPO → 0ℚ }
  threshold Info                  = λ { CC → 2ℚ          ; DRep → 2ℚ   ; SPO → 2ℚ }
\end{code}
\subsection{Voting and ratification}
\label{sec:voting-and-ratification}
Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
The type of action and the state of the governance system determines which bodies must ratify it.
Ratified actions are then \defn{enacted} on-chain, following a set of rules (see Section~\ref{sec:enactment} and Figure~\ref{fig:enactment-types}).
\begin{figure*}[h]
{\small
\begin{code}
NeedsHash : GovAction → Set
NeedsHash NoConfidence          = GovActionID
NeedsHash (NewCommittee _ _ _)  = GovActionID
NeedsHash (NewConstitution _)   = GovActionID
NeedsHash (TriggerHF _)         = GovActionID
NeedsHash (ChangePParams _ _)   = GovActionID
NeedsHash (TreasuryWdrl _)      = ⊤
NeedsHash Info                  = ⊤

HashProtected : Set → Set
HashProtected A = A × GovActionID
\end{code}
} %% end small
\caption{NeedsHash and HashProtected types}
\label{fig:needshash-and-hashprotected-types}
\end{figure*}
Figure~\ref{fig:needshash-and-hashprotected-types} defines types that are used in
ratification (for \verifyPrev) where we check that the stored hash matches the one
attached to the action we want to ratify.
\begin{itemize}
\item
  \defn{Ratification}. An action is said to be \defn{ratified} when it gathers enough votes in its favor
  (according to the rules described in Section~\ref{sec:ratification}).
\item
  \defn{Expiration}. An action that doesn't collect sufficient \yes votes before its deadline is said to have \defn{expired}.
\item
  \defn{Enactment}. An action that has been ratified is said to be \defn{enacted} once it has been activated on the network.
\end{itemize}
See Section~\ref{sec:ratification} for more on the ratification process.

\begin{figure*}[h]
{\small
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
} %% end small
\caption{Governance action proposals and votes}
\label{defs:governance-votes}
\end{figure*}
The data type \Vote represents the different voting options: \yes, \no, or \abstain.
Each \vote is recorded in a \GovVote record along with the following data:
a governance action identifier, a role, a credential, and an anchor (of types \GovActionID, \GovRole, \Credential, and \MaybeAnchor, respectively).


A \defn{governance action proposal} is recorded in a \GovProposal record which includes fields for
a return address, the proposed governance action, a hash of the previous governance action, and an anchor (see Figure~\ref{defs:governance-votes}).

To submit a governance action to the chain one must provide a deposit which will be returned when
the action is finalized (whether it is \defn{ratified} or has \defn{expired}).
The deposit amount will be added to the \defn{deposit pot}, similar to stake key deposits. It will also be
counted towards the stake of the reward address it will be paid back to, to not reduce the submitter's
voting power to vote on their own (and competing) actions.
\\[4pt]
\textbf{Remarks}.
\begin{enumerate}
\item A motion of no-confidence is an extreme measure that enables Ada holders to revoke the power that has been granted to the current constitutional committee.
\item A \emph{single} governance action might contain \emph{multiple} protocol parameter updates. Many parameters are inter-connected and might require moving in lockstep.
\end{enumerate}

\begin{code}[hide]
instance
  _ = +-0-commutativeMonoid
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}

\subsection{Protocol parameters and governance actions}
\label{sec:protocol-parameters-and-governance-actions}
Recall from Section~\ref{sec:protocol-parameters}, parameters used in the Cardano ledger are grouped according to
the general purpose that each parameter serves (see Figure~\ref{fig:protocol-parameter-declarations}).
Specifically, the groups are as follows: \NetworkGroup, \EconomicGroup, \TechnicalGroup, and \GovernanceGroup.
This allows voting/ratification thresholds to be set by group, though we do not require that each protocol
parameter governance action be confined to a single group. In case a governance action carries updates
for multiple parameters from different groups, the maximum threshold of all the groups involved will
apply to any given such governance action.

\subsection{Enactment}
\label{sec:enactment}
\defn{Enactment} of a governance action is carried out as an \defn{enact transition} which requires an
\defn{enact environment} an \defn{enact state} representing the existing state (prior to enactment),
the voted on governance action (that achieved enough votes to enact), and the state that results from
enacting the given governance action (see Figure~\ref{fig:enactment-types}).

The type \EnactEnv is \acl{EnactEnv}, while \EnactState is \acl{EnactState}.
The latter contains fields for the constitutional committee, constitution,
protocol version, protocol parameters, withdrawals from treasury, and treasury balance.
\begin{figure*}[h]
{\small
\begin{code}
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
} %% end small
\caption{Enactment types}
\label{fig:enactment-types}
\end{figure*}
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

The relation \ENACTsyntax defines the transition relation for enacting a governance action.
It represents how the \EnactState changes when a specific governance action is enacted
(see Figure~\ref{fig:enact-transition-system}).
\begin{figure*}[h]
{\small
\begin{code}
  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set where
  Enact-NoConf    : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NoConfidence ,ENACT⦈  record s { cc = nothing , gid }
  Enact-NewComm   : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NewCommittee new rem q ,ENACT⦈ let
    old = maybe proj₁ ∅ᵐ (proj₁ (EnactState.cc s))
    in record s { cc = just ((new ∪ᵐˡ old) ∣ rem ᶜ , q) , gid }
  Enact-NewConst  : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ NewConstitution dh ,ENACT⦈  record s { constitution = dh , gid }
  Enact-HF        : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ TriggerHF v ,ENACT⦈  record s { pv = v , gid }
  Enact-PParams   : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ ChangePParams up h  ,ENACT⦈
    record s { pparams = applyUpdate (proj₁ (s .pparams)) up , gid }
  Enact-Wdrl      :
    let newWdrls = Σᵐᵛ[ x ← wdrl ᶠᵐ ] x
    in newWdrls ≤ s .treasury
    ────────────────────────────────
    ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈
      record s { withdrawals  = s .withdrawals  ∪⁺ wdrl
               ; treasury     = s .treasury     ∸  newWdrls }
  Enact-Info      : ⟦ gid ⟧ᵉ ⊢ s ⇀⦇ Info  ,ENACT⦈ s
\end{code}
} %% end small
\caption{ENACT transition system}
\label{fig:enact-transition-system}
\end{figure*}
