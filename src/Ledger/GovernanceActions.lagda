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

defer : ℚ
defer = 1ℚ Data.Rational.+ 1ℚ

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
\end{itemize}
\begin{figure*}[h]
\begin{longtable}[]{@{}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.2}}
 >{\raggedright\arraybackslash}p{(\columnwidth - 2\tabcolsep) * \real{0.75}}@{}}
\textbf{Action}  & \textbf{Description}\\
\hline
\endhead
\NoConfidence            & a motion to create a \defn{state of no-confidence} in the current constitutional committee \\[10pt]
\NewCommittee            & changes to the members of the constitutional committee and/or to its signature threshold and/or term limits \\[10pt]
\NewConstitution         & a modification to the off-chain Constitution, recorded as an on-chain hash of the text document \\[10pt]
\TriggerHF\footnotemark  & triggers a non-backwards compatible upgrade of the network; requires a prior software upgrade  \\[10pt]
\ChangePParams           & a change to \textit{one or more} updatable protocol parameters, excluding changes to major protocol versions (``hard forks'')\\[10pt]
\TreasuryWdrl            & movements from the treasury, sub-categorized into small, medium or large withdrawals (based on the amount of Lovelace to be withdrawn)\\[10pt]
\Info                    & an action that has no effect on-chain, other than an on-chain record
\end{longtable}
\caption{Types of governance actions}
\label{fig:types-of-governance-actions}
\end{figure*}
\footnotetext{There are many varying definitions of the term ``hard fork'' in the blockchain industry. Hard forks typically refer
  to non-backwards compatible updates of a network. In Cardano, we formalize the definition slightly more by calling any upgrade that
  would lead to \emph{more blocks} being validated a ``hard fork'' and force nodes to comply with the new protocol version, effectively
  obsoleting nodes that are unable to handle the upgrade.}
\begin{figure*}[h]
\begin{code}[hide]
private
  ∣_∣_∣_∣ : {A : Set} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }
\end{code}
\begin{code}
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold' = λ where
    NoConfidence           → ∣ noVote            ∣ vote P1      ∣ vote Q1      ∣
    (NewCommittee _ _ _)   → case ccThreshold' of λ where
      (just _)             → ∣ noVote            ∣ vote P2a     ∣ vote Q2a     ∣
      nothing              → ∣ noVote            ∣ vote P2b     ∣ vote Q2b     ∣
    (NewConstitution _ _)  → ∣ vote ccThreshold  ∣ vote P3      ∣ noVote       ∣
    (TriggerHF _)          → ∣ vote ccThreshold  ∣ vote P4      ∣ vote Q4      ∣
    (ChangePParams x)      → ∣ vote ccThreshold  ∣ (P5 x)       ∣ Q5 x         ∣
    (TreasuryWdrl _)       → ∣ vote ccThreshold  ∣ vote P6      ∣ noVote       ∣
    Info                   → ∣ vote defer        ∣ vote defer   ∣ vote defer   ∣
  where
    open PParams pp
    open DrepThresholds drepThresholds
    open PoolThresholds poolThresholds

    noVote : Maybe ℚ
    noVote = nothing

    vote : ℚ → Maybe ℚ
    vote = just

    ccThreshold : ℚ
    ccThreshold = case ccThreshold' of λ where
      (just x)  → x
      nothing   → defer   -- (defer > 1 ⇒ unreachable threshold ⇒ not yet enactable)

    pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
    pparamThreshold NetworkGroup     = vote P5a  , noVote
    pparamThreshold EconomicGroup    = vote P5b  , noVote
    pparamThreshold TechnicalGroup   = vote P5c  , noVote
    pparamThreshold GovernanceGroup  = vote P5d  , noVote
    pparamThreshold SecurityGroup    = noVote    , vote Q5e

    maxThreshold : ℙ (Maybe ℚ) → Maybe ℚ
    maxThreshold x = foldl comb nothing (proj₁ $ finiteness x)
      where
        comb : Maybe ℚ → Maybe ℚ → Maybe ℚ
        comb (just x) (just y) = just (x Data.Rational.⊔ y)
        comb (just x) nothing  = just x
        comb nothing  (just y) = just y
        comb nothing  nothing  = nothing

    P5 : PParamsUpdate → Maybe ℚ
    P5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))

    Q5 : PParamsUpdate → Maybe ℚ
    Q5 ppu = maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

-- TODO: this doesn't actually depend on PParams so we could remove that
--       argument, but we don't have a default ATM
canVote : PParams → GovAction → GovRole → Set
canVote pp a r = Is-just (threshold pp nothing a r)
\end{code}
\caption{Functions related to voting}
\label{fig:voting-defs}
\end{figure*}
\subsection{Voting and ratification}
\label{sec:voting-and-ratification}
Every governance action must be ratified by at least two of these three bodies using their on-chain \defn{votes}.
The type of action and the state of the governance system determines which bodies must ratify it.
Ratified actions are then \defn{enacted} on-chain, following a set of rules (see Section~\ref{sec:enactment} and Figure~\ref{fig:enactment-types}).
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
Figure~\ref{fig:needshash-and-hashprotected-types} defines types that are used in
ratification (for verifyPrev) where we check that the stored hash matches the one
attached to the action we want to ratify.
\begin{itemize}
\item
  \defn{Ratification}. An action is said to be \defn{ratified} when it gathers enough votes in its favor
  (according to the rules described in Section~\ref{sec:ratification}).
\item
  \defn{Expiration}. An action that doesn't collect sufficient `yes' votes before its deadline is said to have \defn{expired}.
\item
  \defn{Enactment}. An action that has been ratified is said to be \defn{enacted} once it has been activated on the network.
\end{itemize}
See Section~\ref{sec:ratification} for more on the ratification process.

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
  field returnAddr  : RwdAddr
        action      : GovAction
        prevAction  : NeedsHash action
        policy      : Maybe ScriptHash
        deposit     : Coin
        anchor      : Anchor
\end{code}
\caption{Governance action proposals and votes}
\label{defs:governance-votes}
\end{figure*}
The data type \Vote represents the different voting options: \yes, \no, or \abstain.
Each \vote is recorded in a \GovVote record along with the following data:
a governance action ID, a role, a credential, and possibly an anchor.

A \defn{governance action proposal} is recorded in a \GovProposal record which includes fields for
a return address, the proposed governance action, a hash of the previous governance action,
a deposit (required to propose a governance action)
and an anchor (see Figure~\ref{defs:governance-votes}).

To submit a governance action proposal to the chain one must provide a deposit which will be returned when
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

\subsection{Protocol parameters and governance actions}
\label{sec:protocol-parameters-and-governance-actions}
Recall from Section~\ref{sec:protocol-parameters}, parameters used in the Cardano ledger are grouped according to
the general purpose that each parameter serves (see Figure~\ref{fig:protocol-parameter-declarations}).
Specifically, we have \NetworkGroup, \EconomicGroup, \TechnicalGroup and \GovernanceGroup.
There is also a \SecurityGroup, which has a special purpose. Every protocol parameter belongs
to one of the regular groups, and it also may or may not belong to the \SecurityGroup.
This allows voting/ratification thresholds to be set by group, though we do not require that each protocol
parameter governance action be confined to a single group. In case a governance action carries updates
for multiple parameters from different groups, the maximum threshold of all the groups involved will
apply to any given such governance action.

The purpose of the \SecurityGroup is to add an additional check to
security-relevant protocol parameters. Any proposal that includes a
change to a security-relevant protocol parameter must also be accepted
by at least half of the SPO stake.

\subsection{Enactment}
\label{sec:enactment}
\defn{Enactment} of a governance action is carried out as an \defn{enact transition}
which requires an \defn{enact environment}, an \defn{enact state}
representing the existing state (prior to enactment), the voted on
governance action (that achieved enough votes to enact), and the state that results from enacting the given
governance action (see Figure~\ref{fig:enactment-types}).

A record of type \EnactEnv represents the environment for enacting a governance action.
A record of type \EnactState represents the state for enacting a governance action.
The latter contains fields for the constitutional committee, constitution,
protocol version, protocol parameters, withdrawals from treasury, and treasury balance.
\begin{figure*}[h]
\begin{code}
record EnactEnv : Set where
  constructor ⟦_,_,_⟧ᵉ
  field gid       : GovActionID
        treasury  : Coin
        epoch     : Epoch

record EnactState : Set where
  field cc            : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ))
        constitution  : HashProtected (DocHash × Maybe ScriptHash)
        pv            : HashProtected ProtVer
        pparams       : HashProtected PParams
        withdrawals   : RwdAddr ⇀ Coin

ccCreds : HashProtected (Maybe ((Credential ⇀ Epoch) × ℚ)) → ℙ Credential
ccCreds (just x   , _)  = dom (x .proj₁)
ccCreds (nothing  , _)  = ∅
\end{code}
\caption{Enactment types}
\label{fig:enactment-types}
\end{figure*}
\begin{code}[hide]
open EnactState

private variable
  s : EnactState
  up : PParamsUpdate
  new : Credential ⇀ Epoch
  rem : ℙ Credential
  q : ℚ
  dh : DocHash
  sh : Maybe ScriptHash
  v : ProtVer
  wdrl : RwdAddr ⇀ Coin
  t : Coin
  gid : GovActionID
  e : Epoch

instance
  _ = +-0-monoid
  unquoteDecl DecEq-GovRole = derive-DecEq ((quote GovRole , DecEq-GovRole) ∷ [])
  unquoteDecl DecEq-Vote    = derive-DecEq ((quote Vote    , DecEq-Vote)    ∷ [])
  unquoteDecl DecEq-VDeleg  = derive-DecEq ((quote VDeleg  , DecEq-VDeleg)  ∷ [])
\end{code}

The relation \ENACTsyntax is the transition relation for enacting a governance action.
It represents how the \agdaboundEnactState changes when a specific governance action is enacted
(see Figure~\ref{fig:enact-transition-system}).
\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set where

  Enact-NoConf :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢   s ⇀⦇ NoConfidence ,ENACT⦈
                 record  s { cc = nothing , gid }

  Enact-NewComm : let old      = maybe proj₁ ∅ (s .EnactState.cc .proj₁)
                      maxTerm  = s .pparams .proj₁ .PParams.ccMaxTermLength +ᵉ e
                  in
    ∀[ term ∈ range new ] term ≤ maxTerm
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢  s ⇀⦇ NewCommittee new rem q ,ENACT⦈
                record  s { cc = just ((new ∪ˡ old) ∣ rem ᶜ , q) , gid }

  Enact-NewConst :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢  s ⇀⦇ NewConstitution dh sh ,ENACT⦈
                record  s { constitution = (dh , sh) , gid }

  Enact-HF :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢   s ⇀⦇ TriggerHF v ,ENACT⦈
                 record  s { pv = v , gid }

  Enact-PParams :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢  s ⇀⦇ ChangePParams up ,ENACT⦈
                record  s { pparams = applyUpdate (s .pparams .proj₁) up , gid }

  Enact-Wdrl : let newWdrls = s .withdrawals ∪⁺ wdrl in
    ∑[ x ← newWdrls ] x ≤ t
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢  s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈
                record  s { withdrawals  = newWdrls }

  Enact-Info :
    ───────────────────────────────────────
    ⟦ gid , t , e ⟧ᵉ ⊢  s ⇀⦇ Info  ,ENACT⦈ s
\end{code}
\caption{ENACT transition system}
\label{fig:enact-transition-system}
\end{figure*}
