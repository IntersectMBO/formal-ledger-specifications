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
open import Ledger.Crypto

open import Ledger.Prelude renaming (yes to yesᵈ; no to noᵈ)
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
  NoConfidence     :                                          GovAction
  NewCommittee     : Credential ⇀ Epoch → ℙ Credential → ℚ  → GovAction
  NewConstitution  : DocHash → Maybe ScriptHash             → GovAction
  TriggerHF        : ProtVer                                → GovAction
  ChangePParams    : UpdateT                                → GovAction
  TreasuryWdrl     : (RwdAddr ⇀ Coin)                       → GovAction
  Info             :                                          GovAction
\end{code}
} %% end small
\caption{Governance actions}
\label{defs:governance}
\end{figure*}
Figure~\ref{defs:governance} defines several data types used to represent governance actions including:
\begin{itemize}
  \item \defn{identifier}---a pair consisting of
        a \TxId (transaction ID) and a natural number;
  \item \defn{role}---one of three available voter roles defined above (\CC, \DRep, \SPO);
  \item \defn{voter delegation type}---one of three ways to delegate votes: by credential, abstention, or no confidence (\credVoter, \abstainRep, or \noConfidenceRep);
  \item \defn{anchor}---a url and a document hash;
  \item \defn{governance action}---one of seven possible actions (see Figure~\ref{fig:types-of-governance-actions} for definitions).
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
\begin{code}[hide]
actionWellFormed : GovAction → Bool
actionWellFormed (ChangePParams x) = ppdWellFormed x
actionWellFormed _                 = true

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

    noVote : Maybe ℚ
    noVote = nothing

    vote : ℚ → Maybe ℚ
    vote = just

  threshold : GovAction → GovRole → Maybe ℚ
  threshold NoConfidence           = λ { CC → noVote           ; DRep → vote P1     ; SPO → vote Q1 }
  threshold (NewCommittee _ _ _)   = case ccThreshold' of λ where
                        (just _)   → λ { CC → noVote           ; DRep → vote P2a    ; SPO → vote Q2a }
                        nothing    → λ { CC → noVote           ; DRep → vote P2b    ; SPO → vote Q2b }
  threshold (NewConstitution _ _)  = λ { CC → vote ccThreshold ; DRep → vote P3     ; SPO → noVote }
  threshold (TriggerHF _)          = λ { CC → vote ccThreshold ; DRep → vote P4     ; SPO → vote Q4 }
  threshold (ChangePParams x)      = λ { CC → vote ccThreshold ; DRep → vote (P5 x) ; SPO → noVote }
  threshold (TreasuryWdrl _)       = λ { CC → vote ccThreshold ; DRep → vote P6     ; SPO → noVote }
  threshold Info                   = λ { CC → vote 2ℚ          ; DRep → vote 2ℚ     ; SPO → vote 2ℚ }

-- TODO: this doesn't actually depend on PParams so we could remove that argument,
--       but we don't have a default ATM
canVote : PParams → GovAction → GovRole → Set
canVote pp a r = Is-just (threshold pp nothing a r)
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
NeedsHash (NewConstitution _ _) = GovActionID
NeedsHash (TriggerHF _)         = GovActionID
NeedsHash (ChangePParams _)     = GovActionID
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
        deposit     : Coin
        anchor      : Anchor
\end{code}
} %% end small
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
Specifically, we have \NetworkGroup, \EconomicGroup, \TechnicalGroup, and \GovernanceGroup.
This allows voting/ratification thresholds to be set by group, though we do not require that each protocol
parameter governance action be confined to a single group. In case a governance action carries updates
for multiple parameters from different groups, the maximum threshold of all the groups involved will
apply to any given such governance action.

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
{\small
\begin{code}
record EnactEnv : Set where
  constructor ⟦_,_⟧ᵉ
  field gid       : GovActionID
        treasury  : Coin

record EnactState : Set where
  field cc            : HashProtected (Maybe (Credential ⇀ Epoch × ℚ))
        constitution  : HashProtected (DocHash × Maybe ScriptHash)
        pv            : HashProtected ProtVer
        pparams       : HashProtected PParams
        withdrawals   : RwdAddr ⇀ Coin

ccCreds : HashProtected (Maybe (Credential ⇀ Epoch × ℚ)) → ℙ Credential
ccCreds (just x  , _) = dom (proj₁ x ˢ)
ccCreds (nothing , _) = ∅
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
  new : Credential ⇀ Epoch
  rem : ℙ Credential
  q : ℚ
  dh : DocHash
  sh : Maybe ScriptHash
  h : PPHash
  v : ProtVer
  wdrl : RwdAddr ⇀ Coin
  t : Coin
  gid : GovActionID

instance
  _ = +-0-monoid

data
\end{code}

The relation \ENACTsyntax is the transition relation for enacting a governance action.
It represents how the \agdaboundEnactState changes when a specific governance action is enacted
(see Figure~\ref{fig:enact-transition-system}).
\begin{figure*}[h]
{\small
\begin{code}
  _⊢_⇀⦇_,ENACT⦈_ : EnactEnv → EnactState → GovAction → EnactState → Set where

  Enact-NoConf    : ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ NoConfidence ,ENACT⦈  record s { cc = nothing , gid }

  Enact-NewComm   : let old = maybe proj₁ ∅ᵐ (proj₁ (EnactState.cc s)) in
    ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ NewCommittee new rem q ,ENACT⦈
      record s { cc = just ((new ∪ᵐˡ old) ∣ rem ᶜ , q) , gid }

  Enact-NewConst  : ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ NewConstitution dh sh ,ENACT⦈  record s { constitution = (dh , sh) , gid }

  Enact-HF        : ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ TriggerHF v ,ENACT⦈  record s { pv = v , gid }

  Enact-PParams   : ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ ChangePParams up ,ENACT⦈
    record s { pparams = applyUpdate (proj₁ (s .pparams)) up , gid }

  Enact-Wdrl      : let newWdrls = s .withdrawals ∪⁺ wdrl in
    Σᵐᵛ[ x ← newWdrls ᶠᵐ ] x ≤ t
    ────────────────────────────────
    ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ TreasuryWdrl wdrl  ,ENACT⦈
      record s { withdrawals  = newWdrls }

  Enact-Info      : ⟦ gid , t ⟧ᵉ ⊢ s ⇀⦇ Info  ,ENACT⦈ s
\end{code}
} %% end small
\caption{ENACT transition system}
\label{fig:enact-transition-system}
\end{figure*}

\begin{code}[hide]
open import Interface.Decidable.Instance
open Computational' ⦃...⦄

instance
  Computational'-ENACT : Computational' _⊢_⇀⦇_,ENACT⦈_
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s NoConfidence = just (_ , Enact-NoConf)
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s (NewCommittee new rem q) = just (_ , Enact-NewComm)
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s (NewConstitution dh sh) = just (_ , Enact-NewConst)
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s (TriggerHF v) = just (_ , Enact-HF)
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s (ChangePParams up) = just (_ , Enact-PParams)
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s (TreasuryWdrl wdrl) =
    case ¿ Σᵐᵛ[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x ≤ t ¿ of λ where
      (yesᵈ p) → just (_ , Enact-Wdrl p)
      (noᵈ _) → nothing
  Computational'-ENACT .computeProof ⟦ gid , t ⟧ᵉ s Info = just (s , Enact-Info)
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s NoConfidence s' Enact-NoConf = refl
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s (NewCommittee new rem q) s' Enact-NewComm = refl
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s (NewConstitution dh sh) s' Enact-NewConst = refl
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s (TriggerHF v) s' Enact-HF = refl
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s (ChangePParams up) s' Enact-PParams = refl
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s (TreasuryWdrl wdrl) s' (Enact-Wdrl p)
    with ¿ (Σᵐᵛ[ x ← (s .withdrawals ∪⁺ wdrl) ᶠᵐ ] x) ≤ t ¿ | "bug"
  ... | yesᵈ p | _ = refl
  ... | noᵈ ¬p | _ = ⊥-elim (¬p p)
  Computational'-ENACT .completeness ⟦ gid , t ⟧ᵉ s Info s' Enact-Info = refl

  Computational-ENACT = fromComputational' Computational'-ENACT
\end{code}
