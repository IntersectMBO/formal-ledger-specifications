\section{Gov Actions}
\label{sec:governance-actions}
\modulenote{\ConwayModule{Gov.Actions}}.

We introduce the following distinct bodies with specific functions in the new governance framework:
\begin{enumerate}
  \item a constitutional committee (henceforth called \CC{});
  \item a group of delegate representatives (henceforth called \DReps{});
  \item the stake pool operators (henceforth called \SPOs{}).
\end{enumerate}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid)
open import Data.Rational using (ℚ; 0ℚ; 1ℚ)

open import Tactic.Derive.Show

open import Ledger.Prelude as P hiding (yes; no)
open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Gov.Actions (gs : _) (open GovStructure gs) where
\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
data GovRole : Type where
  CC DRep SPO : GovRole

GovRoleCredential : GovRole → Type
GovRoleCredential CC   = Credential
GovRoleCredential DRep = Credential
GovRoleCredential SPO  = KeyHash

record GovVoter : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵍᵛ
\end{code}
\begin{code}
  field
    gvRole       : GovRole
    gvCredential : GovRoleCredential gvRole
\end{code}
\begin{code}

data VDeleg : Type where
  vDelegCredential   : Credential → VDeleg
  vDelegAbstain      : VDeleg
  vDelegNoConfidence : VDeleg

GovActionID VoteDelegs : Type
GovActionID  = TxId × ℕ
VoteDelegs   = Credential ⇀ VDeleg

record Anchor : Type where
  field
    url   : String
    hash  : DocHash

data GovActionType : Type where
  NoConfidence        : GovActionType
  UpdateCommittee     : GovActionType
  NewConstitution     : GovActionType
  TriggerHardFork     : GovActionType
  ChangePParams       : GovActionType
  TreasuryWithdrawal  : GovActionType
  Info                : GovActionType

\end{code}
\begin{code}[hide]
record HasVoteDelegs {a} (A : Type a) : Type a where
  field VoteDelegsOf : A → VoteDelegs
open HasVoteDelegs ⦃...⦄ public

record HasGovActionType (A : Type) : Type where
  field GovActionTypeOf : A → GovActionType
open HasGovActionType ⦃...⦄ public
\end{code}
\begin{code}

GovActionData : GovActionType → Type
GovActionData NoConfidence        = ⊤
GovActionData UpdateCommittee     = (Credential ⇀ Epoch) × ℙ Credential × ℚ
GovActionData NewConstitution     = DocHash × Maybe ScriptHash
GovActionData TriggerHardFork     = ProtVer
GovActionData ChangePParams       = PParamsUpdate
GovActionData TreasuryWithdrawal  = Withdrawals
GovActionData Info                = ⊤

record GovAction : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_⟧ᵍᵃ
\end{code}
\begin{code}
  field
    gaType : GovActionType
    gaData : GovActionData gaType
\end{code}
\begin{code}[hide]
open GovAction public

record HasGovAction (A : Type) : Type where
  field GovActionOf : A → GovAction
open HasGovAction ⦃...⦄ public

instance
  HasGovActionType-GovAction : HasGovActionType GovAction
  HasGovActionType-GovAction .GovActionTypeOf = GovAction.gaType
\end{code}
\end{AgdaMultiCode}
\caption{Gov actions}
\label{defs:governance}
\end{figure*}
\begin{code}[hide]
instance
  HasCast-GovAction-Sigma : HasCast GovAction (Σ GovActionType GovActionData)
  HasCast-GovAction-Sigma .cast x = x .gaType , x .gaData

  unquoteDecl Show-GovRole = derive-Show [ (quote GovRole , Show-GovRole) ]
\end{code}
\Cref{defs:governance} defines several data types used to represent
governance actions. The type \DocHash{} is abstract but in the
implementation it will be instantiated with a 32-bit hash type (like
e.g.\@ \ScriptHash{}). We keep it separate because it is used for a
different purpose.
%
\begin{itemize}
  \item \GovActionID{}: a unique identifier for a governance action, consisting of the
    \TxId{} of the proposing transaction and an index to identify a proposal within a transaction;
  \item \GovRole{} (\defn{governance role}): one of three available voter roles
    defined above (\CC{}, \DRep{}, \SPO{});
  \item \VDeleg{} (\defn{voter delegation}): one of three ways to
    delegate votes: by credential
    (\AgdaInductiveConstructor{vDelegCredential}), abstention
    (\AgdaInductiveConstructor{vDelegAbstain}), or no confidence
    (\AgdaInductiveConstructor{vDelegNoConfidence});
  \item \Anchor{}: a url and a document hash;
  \item \GovAction{} (\defn{governance action}): one of seven possible actions
    (see \cref{fig:types-of-governance-actions} for definitions);
\end{itemize}

The governance actions carry the following information:
%
\begin{itemize}
  \item \UpdateCommittee{}: a map of credentials and terms to add and a set of
    credentials to remove from the committee;
  \item \NewConstitution{}: a hash of the new constitution document and an optional proposal policy;
  \item \TriggerHardFork{}: the protocol version of the epoch to hard fork into;
  \item \ChangePParams{}: the updates to the parameters; and
  \item \TreasuryWithdrawal{}: a map of withdrawals.
\end{itemize}

\subsubsection{Table: Types of governance actions}
\label{fig:types-of-governance-actions}

\begin{tabular}{ll}
\textbf{Action}  & \textbf{Description}\\
\hline
\endhead{}
\NoConfidence{}            & a motion to create a \emph{state of no-confidence} in the current constitutional committee \\
\UpdateCommittee{}         & changes to the members of the constitutional committee and/or to its signature threshold and/or terms \\
\NewConstitution{}         & a modification to the off-chain Constitution and the proposal policy script \\
\TriggerHardFork{}\footnotemark  & triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade  \\
\ChangePParams{}           & a change to \emph{one or more} updatable protocol parameters, excluding changes to major protocol versions (``hard forks'')\\
\TreasuryWithdrawal{}            & movements from the treasury\\
\Info{}                    & an action that has no effect on-chain, other than an on-chain record
\end{tabular}

\footnotetext{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we attach a bit more meaning to the definition by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  rendering a node obsolete if it is unable to handle the upgrade.}

% \subsection{Voting and Ratification}
% \label{sec:voting-and-ratification}
% Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
% The type of action and the state of the governance system determines which bodies must ratify it.
% Ratified actions are then \defn{enacted} on-chain, following a set of rules (see \cref{sec:enactment,fig:enactment-types}).

\subsection{Hash Protection}
\label{sec:hash-protection}

For some governance actions, in addition to obtaining the necessary votes,
enactment requires that the following condition is also satisfied: the state
obtained by enacting the proposal is in fact the state that was intended when
the proposal was submitted.  This
is achieved by requiring actions to unambiguously link to the state
they are modifying via a pointer to the previous modification. A
proposal can only be enacted if it contains the \GovActionId{} of the
previously enacted proposal modifying the same piece of
state.  \NoConfidence{} and \UpdateCommittee{} modify the same state, while
every other type of governance action has its own state that isn't
shared with any other action. This means that the enactibility of a
proposal can change when other proposals are enacted.

However, not all types of governance actions require this strict
protection.  For \TreasuryWithdrawal{} and \Info{}, enacting them does not change
the state in non-commutative ways, so they can always be enacted.

Types related to this hash protection scheme are defined
in \cref{fig:needshash-and-hashprotected-types}.

\begin{figure*}[h]
\begin{code}
NeedsHash : GovActionType → Type
NeedsHash NoConfidence        = GovActionID
NeedsHash UpdateCommittee     = GovActionID
NeedsHash NewConstitution     = GovActionID
NeedsHash TriggerHardFork     = GovActionID
NeedsHash ChangePParams       = GovActionID
NeedsHash TreasuryWithdrawal  = ⊤
NeedsHash Info                = ⊤

HashProtected : Type → Type
HashProtected A = A × GovActionID
\end{code}
\caption{NeedsHash and HashProtected types}
\label{fig:needshash-and-hashprotected-types}
\end{figure*}

\begin{code}[hide]
instance
  HasCast-HashProtected : ∀ {A : Type} → HasCast (HashProtected A) A
  HasCast-HashProtected .cast = proj₁

  HasCast-HashProtected-MaybeScriptHash : HasCast (HashProtected (DocHash × Maybe ScriptHash)) (Maybe ScriptHash)
  HasCast-HashProtected-MaybeScriptHash .cast = proj₂ ∘ proj₁
\end{code}

\begin{figure*}[htb]
\begin{AgdaMultiCode}
\begin{code}
data Vote : Type where
  yes no abstain  : Vote

record GovVote : Type where
  field
    gid         : GovActionID
    voter       : GovVoter
    vote        : Vote
    anchor      : Maybe Anchor

record GovProposal : Type where
  field
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
    policy      : Maybe ScriptHash
    deposit     : Coin
    returnAddr  : RwdAddr
    anchor      : Anchor

record GovVotes : Type where
  field
    gvCC   : Credential ⇀ Vote
    gvDRep : Credential ⇀ Vote
    gvSPO  : KeyHash ⇀ Vote

record GovActionState : Type where
  field
    votes       : GovVotes
    returnAddr  : RwdAddr
    expiresIn   : Epoch
    action      : GovAction
    prevAction  : NeedsHash (gaType action)
\end{code}
\begin{code}[hide]
instance
  HasGovAction-GovProposal : HasGovAction GovProposal
  HasGovAction-GovProposal .GovActionOf = GovProposal.action

  HasGovAction-GovActionState : HasGovAction GovActionState
  HasGovAction-GovActionState .GovActionOf = GovActionState.action

  HasGovActionType-GovProposal : HasGovActionType GovProposal
  HasGovActionType-GovProposal .GovActionTypeOf = GovActionTypeOf ∘ GovActionOf

  HasGovActionType-GovActionState : HasGovActionType GovActionState
  HasGovActionType-GovActionState .GovActionTypeOf = GovActionTypeOf ∘ GovActionOf

instance
  unquoteDecl DecEq-GovActionType = derive-DecEq ((quote GovActionType , DecEq-GovActionType) ∷ [])
  unquoteDecl DecEq-GovRole       = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote          = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg        = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])

  DecEq-GovVoter : DecEq GovVoter
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ CC ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ CC   , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ DRep ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})
  DecEq-GovVoter ._≟_ ⟦ DRep , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ CC   , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ DRep , c' ⟧ᵍᵛ = P.no λ ()
  DecEq-GovVoter ._≟_ ⟦ SPO  , c ⟧ᵍᵛ ⟦ SPO  , c' ⟧ᵍᵛ
    with c ≟ c'
  ... | P.yes p = P.yes (cong ⟦ SPO ,_⟧ᵍᵛ p)
  ... | P.no ¬p = P.no (λ { refl → ¬p refl})

  unquoteDecl HasCast-GovVote = derive-HasCast [ (quote GovVote , HasCast-GovVote) ]

  unquoteDecl Show-VDeleg = derive-Show [ (quote VDeleg , Show-VDeleg) ]

\end{code}
\end{AgdaMultiCode}
\caption{Vote and proposal types}
\label{defs:governance-votes}
\end{figure*}
\subsection{Votes and Proposals}

\begin{figure*}[htb]
\begin{code}
isGovVoterDRep : GovVoter → Maybe Credential
isGovVoterDRep ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterDRep _              = nothing

isGovVoterCredential : GovVoter → Maybe Credential
isGovVoterCredential ⟦ CC   , c ⟧ᵍᵛ = just c
isGovVoterCredential ⟦ DRep , c ⟧ᵍᵛ = just c
isGovVoterCredential _              = nothing

proposedCC : GovAction → ℙ Credential
proposedCC ⟦ UpdateCommittee , (x , _ , _) ⟧ᵍᵃ  = dom x
proposedCC _                                    = ∅
\end{code}
\caption{Gov helper function}
\end{figure*}

The data type \Vote{} represents the different voting options: \yes{},
\no{}, or \abstain{}. For a \Vote{} to be cast, it must be packaged together
with further information, such as who votes and for which governance
action. This information is combined in the \GovVote{} record. An
optional \Anchor{} can be provided to give context about why a vote was
cast in a certain manner.

To propose a governance action, a \GovProposal{} needs to be
submitted. Beside the proposed action, it contains:
\begin{itemize}
\item a pointer to the previous action if required (see \cref{sec:hash-protection}),
\item a pointer to the proposal policy if one is required,
\item a deposit, which will be returned to \returnAddr{}, and
\item an \Anchor{}, providing further information about the proposal.
\end{itemize}

While the deposit is held, it is added to the deposit pot, similar to
stake key deposits. It is also counted towards the voting stake (but
not the block production stake) of the reward address to which it will
be returned, so as not to reduce the submitter's voting power when
voting on their own (and competing) actions. For a proposal to be
valid, the deposit must be set to the current value of
\govActionDeposit{}. The deposit will be returned when the action is
removed from the state in any way.

\GovActionState{} is the state of an individual governance action. It
contains the individual votes, its lifetime, and information necessary
to enact the action and to repay the deposit.
