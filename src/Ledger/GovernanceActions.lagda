\section{Governance actions\protect\footnotemark}
\label{sec:governance-actions}
\footnotetext{See also: \href{https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694}{github.com/cardano-foundation/CIPs/CIP-1694}}
%%\textit{Any Cardano user} will be allowed to submit a \defn{governance action}.
We introduce three distinct bodies that have specific functions in the new governance framework:
\begin{enumerate}
\item
  a constitutional committee
\item
  a group of delegate representatives (henceforth called \defn{DReps})
\item
  the stake pool operators (henceforth called \defn{SPOs})
\end{enumerate}
Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
The type of action and the state of the governance system determines which bodies must ratify it.
Ratified actions are then \defn{enacted} on-chain, following a set of well-defined rules.
\\[4pt]
As with stake pools, any Ada holder may register to be a DRep and so choose to represent themselves and/or others.
Also, as with stake pools, Ada holders may instead delegate their voting rights to any other DRep.
Voting rights will be based on the total Ada that is delegated, as a whole number of Lovelace.
\\[4pt]
The most crucial aspect of this proposal is the notion of ``\textit{one Lovelace = one vote}''.

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

Figure~\ref{defs:governance} defines several data types used to represent governance actions including:
\begin{itemize}
  \item %%% \defn{identifier} (\AgdaSymbol{:}\,
        \AgdaDatatype{GovActionId}---a pair consisting of a transaction id (\AgdaSymbol{:}\,\AgdaDatatype{TxId}) and a natural number (\AgdaSymbol{:}\,\AgdaDatatype{ℕ});
  \item %%% \defn{role} (\AgdaSymbol{:}\,
        \AgdaDatatype{GovRole}---enumerates the available voter roles: \AgdaInductiveConstructor{CC}, \AgdaInductiveConstructor{DRep}, \AgdaInductiveConstructor{SPO};
  \item %%% \defn{voter delegation type} (\AgdaSymbol{:}\,
        \AgdaDatatype{VDeleg}---enumerates the available ways to delegate votes: by a credential
        (\AgdaInductiveConstructor{credVoter}), abstention (\AgdaInductiveConstructor{abstainRep}), or expressing no confidence (\AgdaInductiveConstructor{noConfidenceRep});
  \item %%% \defn{anchor} (\AgdaSymbol{:}\,
        \AgdaRecord{Anchor}---an anchor with fields \AgdaField{url} (\AgdaSymbol{:}\,\AgdaDatatype{String}) and a document \AgdaField{hash} (\AgdaSymbol{:}\,\AgdaDatatype{DocHash});
  \item %%% \defn{governance action} (\AgdaSymbol{:}\,
        \AgdaDatatype{GovAction}---enumerates the available governance actions
        (\AgdaInductiveConstructor{NoConfidence}, \AgdaInductiveConstructor{NewCommittee},
        \AgdaInductiveConstructor{NewConstitution}, \AgdaInductiveConstructor{TriggerHF},
        \AgdaInductiveConstructor{ChangePParams}, \AgdaInductiveConstructor{TreasuryWdrl}, or
        \AgdaInductiveConstructor{Info}).
\end{itemize}
The \AgdaDatatype{GovAction} type represents the seven available \defn{governance actions} described in Table~\ref{fig:types-of-governance-actions}.
\begin{table}[h]
\begin{longtable}[]{@{}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.35}}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.35}}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.15}}@{}}
\hline
\textbf{Action}  & \textbf{Description}  &  \textbf{Agda type}\\
\hline
\endhead
1. Motion of no-confidence & A motion to create a \defn{state of no-confidence} in the current constitutional committee & \AgdaInductiveConstructor{NoConfidence}\\
2. New constitutional committee and/or threshold and/or term limits & Changes to the members of the constitutional committee and/or to its signature threshold and/or term limits & \AgdaInductiveConstructor{NewCommittee}\\
3. Updates to the Constitution & A modification to the off-chain Constitution, recorded as an on-chain hash of the text document & \AgdaInductiveConstructor{NewConstitution}\\
4. Hard fork\footnotemark &
  Initiation triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade & \AgdaInductiveConstructor{TriggerHF} \\
5. Protocol Parameter Changes & Any change to \textit{one or more} updatable protocol parameters, excluding changes to major protocol versions (``hard forks'') & \AgdaInductiveConstructor{ChangePParams}\\
6. Treasury Withdrawals & Movements from the treasury, sub-categorized into small, medium or large withdrawals (based on the amount of Lovelace to be withdrawn). The thresholds for treasury withdrawals are discussed below. & \AgdaInductiveConstructor{TreasuryWdrl} \\
7. Info & An action that has no effect on-chain, other than an on-chain record. & \AgdaInductiveConstructor{Info}\\
\hline
\end{longtable}
\caption{Types of governance actions}
\label{tab:types-of-governance-actions}
\end{table}
\footnotetext{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we formalize the definition slightly more by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  obsoleting nodes that are unable to handle the upgrade.}
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
    pparamThreshold NetworkGroup    = P5a
    pparamThreshold EconomicGroup   = P5b
    pparamThreshold TechnicalGroup  = P5c
    pparamThreshold GovernanceGroup = P5d

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

A governance action is an on-chain event that is triggered by a transaction, and there is a deadline after which
the governance action cannot be enacted.
\begin{itemize}
\item
  \defn{Ratification}. An action is said to be \defn{ratified} when it gathers enough votes in its favor (through the rules and parameters that are detailed
  below).
\item
  \defn{Expiration}. An action that doesn't collect sufficient \AgdaField{yes} votes before its deadline is said to have \defn{expired}.
\item
  \defn{Enactment}. An action that has been ratified is said to be \defn{enacted} once it has been activated on the network.
\end{itemize}


\subsection{Voting and ratification}
\label{sec:voting-and-ratification}
A governance action is an on-chain event that is triggered by a transaction. There is a deadline after which
the governance action cannot be enacted.
\begin{itemize}
\item
  A governance action is said to be \defn{ratified} when it gathers enough votes in its favor
  (through the rules and parameters that are detailed elsewhere [TODO: insert reference]).
\item
  A governance action is said to have \defn{expired} if it does not collect sufficient \AgdaField{yes} votes before the deadline.
\item
  An action that has been ratified is said to be \defn{enacted} once it has been activated on the network.
\end{itemize}

The data type \AgdaDatatype{Vote} represents the different voting options: \AgdaInductiveConstructor{yes}, \AgdaInductiveConstructor{no}, or \AgdaInductiveConstructor{abstain}.
Each \AgdaField{vote} is recorded in a \AgdaRecord{GovVote} record along with the following meta-data:
\begin{itemize}
\item \FieldTyped{gid}{GovActionID} (governance action identifier),
\item \FieldTyped{role}{GovRole},
\item \FieldTyped{credential}{Credential},
\item \FieldTyped{anchor}{Maybe~Anchor}.
\end{itemize}
A \defn{governance action proposal} is recorded in a \AgdaRecord{GovProposal} record which includes fields for
a return address (\FieldTyped{returnAddr}{RwdAddr}), the proposed governance action (\FieldTyped{action}{GovAction}),
a hash of the previous governance action (\FieldTyped{prevAction}{NeedsHash action}), and an anchor. (See Figure~\ref{defs:governance-votes}.)
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
\emph{Any Ada holder} can submit a governance action to the chain.
They must provide a deposit of \AgdaBound{govDeposit} Lovelace, which will be returned when the action is finalized (whether it is \defn{ratified} or has \defn{expired}).
The deposit amount will be added to the \defn{deposit pot}, similar to stake key deposits. It will also be counted towards the stake of the reward address it will be paid
back to, to not reduce the submitter's voting power to vote on their own (and competing) actions.
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

See Section~\ref{sec:ratification} for more on the ratification process.

\subsection{Enactment}
\label{sec:enactment}
\defn{Enactment} of a governance action is carried out as an \defn{enact transition}
which requires an \defn{enact environment} (\AgdaSymbol{:}\,\AgdaRecord{EnactEnv}), an \defn{enact state}
(\AgdaSymbol{:}\,\AgdaRecord{EnactState}) representing the existing state (prior to enactment), the voted on
governance action (that achieved enough votes to enact), and the state that results from enacting the given
governance action (\AgdaSymbol{:}\,\AgdaRecord{EnactState}). (See Figure~\ref{fig:enactment-types}.)

The \AgdaRecord{EnactEnv} record type represents the environment for enacting a governance action. %; the type has only one field, \FieldTyped{gid}{GovActionID}.

The \AgdaRecord{EnactState} record type represents the state for enacting a governance action.
It contains various fields such as \AgdaField{cc} (constitutional committee), \AgdaField{constitution},
\AgdaField{pv} (protocol version), \AgdaField{pparams} (protocol parameters), \AgdaField{withdrawals}
(withdrawals from treasury), and \AgdaField{treasury} (treasury balance).
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
\end{code}

The data type \verb!_⊢_⇀⦇_,ENACT⦈_! defines the transition relation for enacting a governance action.
It represents how the \AgdaBound{EnactState} changes when a specific governance action is enacted.
(See Figure~\ref{fig:enact-transition-system}.)

\begin{figure*}[h]
{\small
\begin{code}
data _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set where
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
\caption{ENACT transition system}
\label{fig:enact-transition-system}
}
\end{figure*}
