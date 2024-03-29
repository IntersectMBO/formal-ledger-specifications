\section{Governance actions}
\label{sec:governance-actions}
We introduce three distinct bodies that have specific functions in the new governance framework:
\begin{enumerate}
\item
  a constitutional committee  (henceforth called \CC)
\item
  a group of delegate representatives (henceforth called \DReps)
\item
  the stake pool operators (henceforth called \SPOs)
\end{enumerate}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.DecEq

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Types.GovStructure

module Ledger.GovernanceActions (gs : _) (open GovStructure gs) where

-- TODO: this could be generic
maximum : ℙ ℚ → ℚ
maximum x = foldl Data.Rational._⊔_ 0ℚ (proj₁ $ finiteness x)
\end{code}
\begin{figure*}[h]
\begin{code}
data GovRole : Set where
  CC DRep SPO : GovRole

Voter        = GovRole × Credential
GovActionID  = TxId × ℕ

data VDeleg : Set where
  credVoter        : GovRole → Credential →  VDeleg
  abstainRep       :                         VDeleg
  noConfidenceRep  :                         VDeleg

record Anchor : Set where
  field  url   : String
         hash  : DocHash

data GovAction : Set where
  NoConfidence     :                                             GovAction
  NewCommittee     : (Credential ⇀ Epoch) → ℙ Credential → ℚ  →  GovAction
  NewConstitution  : DocHash → Maybe ScriptHash               →  GovAction
  TriggerHF        : ProtVer                                  →  GovAction
  ChangePParams    : PParamsUpdate                            →  GovAction
  TreasuryWdrl     : (RwdAddr ⇀ Coin)                         →  GovAction
  Info             :                                             GovAction

actionWellFormed : GovAction → Bool
actionWellFormed (ChangePParams x)  = ppdWellFormed x
actionWellFormed _                  = true
\end{code}
\caption{Governance actions}
\label{defs:governance}
\end{figure*}
Figure~\ref{defs:governance} defines several data types used to represent governance actions including:
\begin{itemize}
  \item \GovActionID (\defn{governance action identifier})---a pair consisting of
        a \TxId (\defn{transaction ID}) and a natural number;
  \item \GovRole (\defn{governance role})---one of three available voter roles defined above (\CC, \DRep, \SPO);
  \item \VDeleg (\defn{voter delegation})---one of three ways to delegate votes: by credential, abstention, or no confidence (\credVoter, \abstainRep, or \noConfidenceRep);
  \item \Anchor---a url and a document hash;
  \item \GovAction (\defn{governance action})---one of seven possible actions (see Figure~\ref{fig:types-of-governance-actions} for definitions).
  \item \actionWellFormed---in the case of protocol parameter changes,
    an action is well-formed if it preserves the well-formedness of parameters.
\end{itemize}
\begin{figure*}[h]
\begin{longtable}[]{@{}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.2}}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.75}}@{}}
\textbf{Action}  & \textbf{Description}\\
\hline
\endhead
\NoConfidence            & a motion to create a \emph{state of no-confidence} in the current constitutional committee \\[10pt]
\NewCommittee            & changes to the members of the constitutional committee and/or to its signature threshold and/or terms \\[10pt]
\NewConstitution         & a modification to the off-chain Constitution and the proposal policy script \\[10pt]
\TriggerHF\footnotemark  & triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade  \\[10pt]
\ChangePParams           & a change to \emph{one or more} updatable protocol parameters, excluding changes to major protocol versions (``hard forks'')\\[10pt]
\TreasuryWdrl            & movements from the treasury\\
\Info                    & an action that has no effect on-chain, other than an on-chain record
\end{longtable}
\caption{Types of governance actions}
\label{fig:types-of-governance-actions}
\end{figure*}
\footnotetext{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we formalize the definition slightly more by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  obsoleting nodes that are unable to handle the upgrade.}


% \subsection{Voting and ratification}
% \label{sec:voting-and-ratification}
% Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
% The type of action and the state of the governance system determines which bodies must ratify it.
% Ratified actions are then \defn{enacted} on-chain, following a set of rules (see Section~\ref{sec:enactment} and Figure~\ref{fig:enactment-types}).

\subsection{Hash protection}
\label{sec:hash-protection}

Enactment requires a second condition on top of the necessary votes,
which is that the proposal was intended to be enacted in the way it
is. This is achieved by linking them via their \GovActionID: a
proposal can only be enacted if the previously enacted proposal of the
same kind has the \GovActionID mentioned in the to be enacted proposal.

However, not all types of governance actions require this strict
protection. For \TreasuryWdrl and \Info, enacting them does not change
the state in non-commutative ways, so they can always be enacted.

Types related to this hash protection scheme are defined in
Figure~\ref{fig:needshash-and-hashprotected-types}.

\begin{figure*}[h]
\begin{code}
NeedsHash : GovAction → Set
NeedsHash NoConfidence           = GovActionID
NeedsHash (NewCommittee _ _ _)   = GovActionID
NeedsHash (NewConstitution _ _)  = GovActionID
NeedsHash (TriggerHF _)          = GovActionID
NeedsHash (ChangePParams _)      = GovActionID
NeedsHash (TreasuryWdrl _)       = ⊤
NeedsHash Info                   = ⊤

HashProtected : Set → Set
HashProtected A = A × GovActionID
\end{code}
\caption{NeedsHash and HashProtected types}
\label{fig:needshash-and-hashprotected-types}
\end{figure*}

\begin{figure*}[h]
\begin{code}
data Vote : Set where
  yes no abstain  : Vote

record GovVote : Set where
  field gid         : GovActionID
        voter       : Voter
        vote        : Vote
        anchor      : Maybe Anchor

record GovProposal : Set where
  field action      : GovAction
        prevAction  : NeedsHash action
        policy      : Maybe ScriptHash
        deposit     : Coin
        returnAddr  : RwdAddr
        anchor      : Anchor

record GovActionState : Set where
  field votes       : Voter ⇀ Vote
        returnAddr  : RwdAddr
        expiresIn   : Epoch
        action      : GovAction
        prevAction  : NeedsHash action
\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}
\caption{Vote and proposal types}
\label{defs:governance-votes}
\end{figure*}
\subsection{Votes and proposals}

The data type \Vote represents the different voting options: \yes,
\no, or \abstain. To cast a \Vote, it needs to be packaged together
with further information, such as who votes and for which governance
action. This information is combined in the \GovVote record.

To propose a governance action, a \GovProposal needs to be
submitted. Beside the proposed action, it requires:
\begin{itemize}
\item potentially a pointer to the previous action (see Section~\ref{sec:hash-protection}),
\item potentially a pointer to the proposal policy (if one is required),
\item a deposit, which will be returned to \returnAddr, and
\item an \Anchor, providing further information about the proposal.
\end{itemize}

The deposit will be returned when the action is removed from the state
in any way. It will be added to the deposit pot, similar to stake key
deposits. It will also be counted towards the stake of the reward
address it will be paid back to, to not reduce the submitter's voting
power to vote on their own (and competing) actions.

\GovActionState is the state of an individual governance action. It
contains the individual votes, its lifetime, and information necessary
to enact the action and to repay the deposit.
