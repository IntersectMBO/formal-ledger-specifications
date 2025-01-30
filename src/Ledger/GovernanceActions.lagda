\section{Governance Actions}
\label{sec:governance-actions}
We introduce three distinct bodies that have specific functions in the new governance framework:
\begin{enumerate}
\item
  a constitutional committee  (henceforth called \CC);
\item
  a group of delegate representatives (henceforth called \DReps);
\item
  the stake pool operators (henceforth called \SPOs).

In the following figure, \DocHash is abstract but in the
implementation it will be instantiated with a 32-bit hash type (like
e.g. \ScriptHash). We keep it separate because it is used for a
different purpose.

\end{enumerate}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.DecEq
open import Tactic.Derive.Show

open import Ledger.Prelude hiding (yes; no)
open import Ledger.Types.GovStructure

module Ledger.GovernanceActions (gs : _) (open GovStructure gs) where

-- TODO: this could be generic
maximum : ℙ ℚ → ℚ
maximum x = foldl Data.Rational._⊔_ 0ℚ (proj₁ $ finiteness x)
\end{code}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
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
\end{code}
\begin{code}[hide]
actionWellFormed? : ∀ {a} → actionWellFormed a ⁇
actionWellFormed? {NoConfidence}          = it
actionWellFormed? {UpdateCommittee _ _ _} = it
actionWellFormed? {NewConstitution _ _}   = it
actionWellFormed? {TriggerHF _}           = it
actionWellFormed? {ChangePParams _}       = it
actionWellFormed? {TreasuryWdrl _}        = it
actionWellFormed? {Info}                  = it
\end{code}
\end{AgdaMultiCode}
\caption{Governance actions}
\label{defs:governance}
\end{figure*}
Figure~\ref{defs:governance} defines several data types used to represent governance actions including:
\begin{itemize}
  \item \GovActionID---a unique identifier for a governance action,
    consisting of the \TxId of the proposing transaction and an index to identify a proposal within a transaction;
  \item \GovRole (\defn{governance role})---one of three available voter roles defined above (\CC, \DRep, \SPO);
  \item \VDeleg (\defn{voter delegation})---one of three ways to delegate votes: by credential, abstention, or no confidence (\credVoter, \abstainRep, or \noConfidenceRep);
  \item \Anchor---a url and a document hash;
  \item \GovAction (\defn{governance action})---one of seven possible actions (see Figure~\ref{fig:types-of-governance-actions} for definitions);
  \item \actionWellFormed---in the case of protocol parameter changes,
    an action is well-formed if it preserves the well-formedness of parameters.
    \ppdWellFormed is effectively the same as \paramsWellFormed, except that it
    only applies to the parameters that are being changed.
\end{itemize}
The governance actions carry the following information:
\begin{itemize}
  \item \UpdateCommittee: a map of credentials and terms to add and a set of credentials to remove from the committee;
  \item \NewConstitution: a hash of the new constitution document and an optional proposal policy;
  \item \TriggerHF: the protocol version of the epoch to hard fork into;
  \item \ChangePParams: the updates to the parameters; and
  \item \TreasuryWdrl: a map of withdrawals.
\end{itemize}
\begin{figure*}[h]
\begin{longtable}[]{@{}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.2}}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.75}}@{}}
\textbf{Action}  & \textbf{Description}\\
\hline
\endhead
\NoConfidence            & a motion to create a \emph{state of no-confidence} in the current constitutional committee \\[10pt]
\UpdateCommittee         & changes to the members of the constitutional committee and/or to its signature threshold and/or terms \\[10pt]
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
  to non-backwards compatible updates of a network. In Cardano, we attach a bit more meaning to the definition by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  rendering a node obsolete if it is unable to handle the upgrade.}

% \subsection{Voting and Ratification}
% \label{sec:voting-and-ratification}
% Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
% The type of action and the state of the governance system determines which bodies must ratify it.
% Ratified actions are then \defn{enacted} on-chain, following a set of rules (see Section~\ref{sec:enactment} and Figure~\ref{fig:enactment-types}).

\subsection{Hash Protection}
\label{sec:hash-protection}

For some governance actions, in addition to obtaining the necessary votes,
enactment requires that the following condition is also satisfied: the state
obtained by enacting the proposal is in fact the state that was intended when
the proposal was submitted.  This
is achieved by requiring actions to unambiguously link to the state
they are modifying via a pointer to the previous modification. A
proposal can only be enacted if it contains the \GovActionID of the
previously enacted proposal modifying the same piece of
state. \NoConfidence and \UpdateCommittee modify the same state, while
every other type of governance action has its own state that isn't
shared with any other action. This means that the enactibility of a
proposal can change when other proposals are enacted.

However, not all types of governance actions require this strict
protection. For \TreasuryWdrl and \Info, enacting them does not change
the state in non-commutative ways, so they can always be enacted.

Types related to this hash protection scheme are defined in
Figure~\ref{fig:needshash-and-hashprotected-types}.

\begin{figure*}[h]
\begin{code}
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
\end{code}
\caption{NeedsHash and HashProtected types}
\label{fig:needshash-and-hashprotected-types}
\end{figure*}

\begin{figure*}[htb]
\begin{AgdaMultiCode}
\begin{code}
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
\end{code}
\begin{code}[hide]
instance
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}
\end{AgdaMultiCode}
\caption{Vote and proposal types}
\label{defs:governance-votes}
\end{figure*}
\subsection{Votes and Proposals}

\begin{figure*}[htb]
\begin{code}
getDRepVote : GovVote → Maybe Credential
getDRepVote record { voter = (DRep , credential) }  = just credential
getDRepVote _                                       = nothing

proposedCC : GovAction → ℙ Credential
proposedCC (UpdateCommittee x _ _) = dom x
proposedCC _                       = ∅
\end{code}
\caption{Governance helper function}
\end{figure*}

The data type \Vote represents the different voting options: \yes,
\no, or \abstain. For a \Vote to be cast, it must be packaged together
with further information, such as who votes and for which governance
action. This information is combined in the \GovVote record. An
optional \Anchor can be provided to give context about why a vote was
cast in a certain manner.

To propose a governance action, a \GovProposal needs to be
submitted. Beside the proposed action, it requires:
\begin{itemize}
\item potentially a pointer to the previous action (see Section~\ref{sec:hash-protection}),
\item potentially a pointer to the proposal policy (if one is required),
\item a deposit, which will be returned to \returnAddr, and
\item an \Anchor, providing further information about the proposal.
\end{itemize}

While the deposit is held, it is added to the deposit pot, similar to
stake key deposits. It is also counted towards the voting stake (but
not the block production stake) of the reward address to which it will
be returned, so as not to reduce the submitter's voting power when
voting on their own (and competing) actions. For a proposal to be
valid, the deposit must be set to the current value of
\govActionDeposit. The deposit will be returned when the action is
removed from the state in any way.

\GovActionState is the state of an individual governance action. It
contains the individual votes, its lifetime, and information necessary
to enact the action and to repay the deposit.
