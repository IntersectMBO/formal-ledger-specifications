\section{Governance actions}
\label{sec:governance-actions}

\newcommand{\defn}[1]{\textit{#1}}

\textbf{Reference}. \href{https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694}{github.com/cardano-foundation/CIPs/CIP-1694}
\\[4pt]
Much of the documentation provided here can also be found at the above url.
\\[4pt]
\textbf{Any Cardano user} will be allowed to submit a \defn{governance action}. We introduce three distinct governance bodies that have
specific functions in this new governance framework:

\begin{enumerate}
\item
  a constitutional committee
\item
  a group of delegate representatives (henceforth called \textbf{DReps})
\item
  the stake pool operators (henceforth called \textbf{SPOs})
\end{enumerate}

Every governance action must be ratified by at least two of these three governance bodies using their on-chain \defn{votes}.
The type of action and the state of the governance system determines which bodies must ratify it.

Ratified actions are then \defn{enacted} on-chain, following a set of well-defined rules.

As with stake pools, any Ada holder may register to be a DRep and so choose to represent themselves and/or others.
Also, as with stake pools, Ada holders may, instead, delegate their voting rights to any other DRep.
Voting rights will be based on the total Ada that is delegated, as a whole number of Lovelace.

The most crucial aspect of this proposal is therefore the notion of ``\textbf{one Lovelace = one vote}''.

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
Figure~\ref{defs:governance} defines several data types used for governance actions:
\begin{itemize}
  \item \AgdaBound{GovRole} enumerates the different roles for governance actions (\AgdaBound{CC}, \AgdaBound{DRep}, and \AgdaBound{SPO}).
  \item \AgdaBound{VDeleg} represents different ways of voter delegation, such as delegation by a credential (\AgdaBound{credVoter}), abstention (\AgdaBound{abstainRep}), and expressing no confidence (\AgdaBound{noConfidenceRep}).
  \item \AgdaBound{Anchor} represents an anchor with fields \AgdaBound{url} (a string) and \AgdaBound{hash} (a document hash).
  \item \AgdaBound{GovAction} enumerates various governance actions (`NoConfidence`, `NewCommittee`, `NewConstitution`, `TriggerHF`, `ChangePParams`, `TreasuryWdrl`, and `Info`), each with specific associated data.
\end{itemize}

The \AgdaBound{GovAction} type shown defines seven different types of \defn{governance actions}.
A governance action is an on-chain event that is triggered by a transaction and has a deadline after which it cannot be enacted.

\begin{itemize}
\item
  An action is said to be \defn{ratified} when it gathers enough votes in its favor (through the rules and parameters that are detailed
  below).
\item
  An action that doesn't collect sufficient \AgdaBound{Yes} votes before its deadline is said to have \defn{expired}.
\item
  An action that has been ratified is said to be \defn{enacted} once it has been activated on the network.
\end{itemize}

The seven types of governance actions are defined in the following table.

\begin{longtable}[]{@{}
  >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.4}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.4}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.2}}@{}}
\hline
\textbf{Action}  & \textbf{Description}  &  \textbf{Agda type}\\
\hline
\endhead
1. Motion of no-confidence & A motion to create a \defn{state of no-confidence} in the current constitutional committee & \AgdaBound{NoConfidence}\\
2. New constitutional committee and/or threshold and/or term limits & Changes to the members of the constitutional committee and/or to its signature threshold and/or term limits & \AgdaBound{NewCommittee}\\
3. Updates to the Constitution & A modification to the off-chain Constitution, recorded as an on-chain hash of the text document & \AgdaBound{NewConstitution}\\
4. Hard-Fork\footnote{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we formalize the definition slightly more by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  obsoleting nodes that are unable to handle the upgrade.}
  Initiation triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade & \AgdaBound{TriggerHF} \\
5. Protocol Parameter Changes & Any change to \textbf{one or more} updatable protocol parameters, excluding changes to major protocol versions (``hard forks'') & \AgdaBound{ChangePParams}\\
6. Treasury Withdrawals & Movements from the treasury, sub-categorized into small, medium or large withdrawals (based on the amount of Lovelace to be withdrawn). The thresholds for treasury withdrawals are discussed below. & \AgdaBound{TreasuryWdrl} \\
7. Info & An action that has no effect on-chain, other than an on-chain record. & \AgdaBound{Info}\\
\hline
\end{longtable}

Associated with each governance action are the following data (see Figure~\ref{defs:governance}).
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

The data type \AgdaBound{Vote} represents the different voting options: ``yes,'' ``no,'' or ``abstain.''

Each vote is recorded (in the \AgdaBound{GovVote} record) along with a
governance action identifier (\AgdaBound{GovActionID}), a role (\AgdaBound{GovRole}),
a credential (\AgdaBound{Credential}), and possibly an anchor (\AgdaBound{Anchor}).
(See Figure~\ref{defs:governance-votes}.)

The record type \AgdaBound{GovProposal} represents a governance proposal with fields \AgdaBound{returnAddr} (a return address), \AgdaBound{action} (a \AgdaBound{GovAction}), \AgdaBound{prevAction} (the previous action associated with this proposal), and possibly an anchor.

\begin{figure*}[h]
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

\textbf{Any Ada holder} can submit a governance action to the chain.
They must provide a deposit of \AgdaBound{govDeposit} Lovelace, which will be returned when the action is finalized (whether it is \textbf{ratified} or has \textbf{expired}).
The deposit amount will be added to the \emph{deposit pot}, similar to stake key deposits. It will also be counted towards the stake of the reward address it will be paid
back to, to not reduce the submitter's voting power to vote on their own (and competing) actions.

Note that a motion of no-confidence is an extreme measure that enables Ada holders to revoke the power that has been granted to the current constitutional committee.

\begin{quote}
\textbf{Note} A \textbf{single} governance action might contain \textbf{multiple} protocol parameter updates. Many parameters are inter-connected and might require moving in lockstep.
\end{quote}



\begin{code}[hide]
instance
  _ = +-0-commutativeMonoid
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}

\subsection{Enactment}
\label{sec:enactment}

\defn{Enactment} of a governance action is carried out as an \defn{enact transition}
which requires an \defn{enact environment} (\AgdaBound{EnactEnv}), an \defn{enact state}
(\AgdaBound{EnactState}), the voted on governance action (that achieved a passing vote to enact),
and the state that results from enacting the given governance action (\AgdaBound{EnactState}).
(See Figure~\ref{fig:enactment-types}.)

The \AgdaBound{EnactEnv} record type represents the environment for enacting a governance action, with a field \AgdaBound{gid} (\AgdaBound{GovActionID}).

The \AgdaBound{EnactState} record type represents the state for enacting a governance action.
It contains various fields such as \AgdaBound{cc} (constitutional committee), \AgdaBound{constitution}, \AgdaBound{pv} (protocol version), \AgdaBound{pparams} (protocol parameters), \AgdaBound{withdrawals} (withdrawals from treasury), and \AgdaBound{treasury} (treasury balance).

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

The data type \verb!_⊢_⇀⦇_,ENACT⦈_! defines the transition relation for enacting a governance action.
It represents how the \AgdaBound{EnactState} changes when a specific governance action is enacted.
(See Figure~\ref{fig:enact-transition-system}.)

\begin{figure*}[h]
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
