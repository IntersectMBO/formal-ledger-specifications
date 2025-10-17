\section{Ratification}
\label{sec:ratification}
\modulenote{\ConwayModule{Ratify}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)

open import Ledger.Prelude hiding (_∧_; _⊔_) renaming (filterᵐ to filter; ∣_∣ to _↓)
open import Ledger.Conway.Specification.Transaction hiding (Vote)

module Ledger.Conway.Specification.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov.Actions govStructure using (Vote)
\end{code}

Governance actions are \defn{ratified} through on-chain votes.
Different kinds of governance actions have different ratification requirements
but always involve at least two of the three governance bodies.

A successful motion of no-confidence, election of a new constitutional
committee, a constitutional change, or a hard-fork delays ratification of
all other governance actions until the first epoch after their
enactment. This gives a new constitutional committee enough time to vote
on current proposals, re-evaluate existing proposals with respect to a
new constitution, and ensures that the (in principle arbitrary) semantic
changes caused by enacting a hard-fork do not have unintended
consequences in combination with other actions.

\subsection{Ratification Requirements}
\label{sec:ratification-requirements}
\Cref{fig:ratification-requirements} details the ratification
requirements for each governance action scenario. For a governance
action to be ratified, all of these requirements must be satisfied, on
top of other conditions that are explained further down. The
\threshold{} function is defined as a table, with a row for each type of
\GovAction{} and the colums representing the \CC{}, \DRep{} and \SPO{} roles
in that order.

The symbols mean the following:
\begin{itemize}
\item
  \AgdaFunction{vote} x: For an action to pass, the fraction of stake
  associated with yes votes with respect to that associated
  with yes and no votes must exceed the threshold x.
\item
  \AgdaFunction{─}: The body of governance does not participate in voting.
\item
  \AgdaFunction{✓}: The constitutional committee needs to approve an action,
  with the threshold assigned to it.
\item
  \AgdaFunction{✓†}: Voting is possible, but the action will never be enacted.
  This is equivalent to \AgdaFunction{vote} 2 (or any other number above 1).
\end{itemize}

Two rows in this table contain functions that compute the
\DRep{} and \SPO{} thresholds simultaneously: the rows for \UpdateCommittee{}
and \ChangePParams{}.

For \UpdateCommittee{}, there can be different thresholds depending on whether the
system is in a state of no-confidence or not. This information is
provided via the \AgdaArgument{ccThreshold} argument: if the system is in a
state of no-confidence, then \AgdaArgument{ccThreshold} is set to \nothing{}.

In case of the \ChangePParams{} action, the thresholds further depend on
what groups that action is associated with. \pparamThreshold{}
associates a pair of thresholds to each individual group. Since an
individual update can contain multiple groups, the actual thresholds
are then given by taking the maximum of all those thresholds.

Note that each protocol parameter belongs to exactly one of the four
groups that have a \DRep{} threshold, so a \DRep{} vote will always be
required. A protocol parameter may or may not be in the
\SecurityGroup{}, so an \SPO{} vote may not be required.

Finally, each of the \AgdaFunction{P}$_x$ and \AgdaFunction{Q}$_x$ in
\cref{fig:ratification-requirements} are protocol parameters.
\begin{figure*}[htb]
\begin{AgdaMultiCode}
\begin{code}[hide]
private
  ∣_∣_∣_∣ : {A : Type} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

  ∣_∥_∣ : {A : Type} → A → A × A → GovRole → A
  ∣ q₁ ∥ (q₂ , q₃) ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

vote : ℚ → Maybe ℚ
vote = just

defer : ℚ
defer = ℚ.1ℚ ℚ.+ ℚ.1ℚ

maxThreshold : ℙ (Maybe ℚ) → Maybe ℚ
maxThreshold x = foldl comb nothing (proj₁ $ finiteness x)
  where
    comb : Maybe ℚ → Maybe ℚ → Maybe ℚ
    comb (just x) (just y) = just (x ⊔ y)
    comb (just x) nothing  = just x
    comb nothing  (just y) = just y
    comb nothing  nothing  = nothing

─ : Maybe ℚ
─ = nothing
✓† = vote defer
\end{code}
\begin{code}
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold ga =
  case  ga ↓ of
\end{code}
\begin{code}[hide]
        λ where
\end{code}
\begin{code}
        (NoConfidence     , _) → ∣ ─   ∣ vote P1      ∣ vote Q1  ∣
        (UpdateCommittee  , _) → ∣ ─   ∥ P/Q2a/b                 ∣
        (NewConstitution  , _) → ∣ ✓   ∣ vote P3      ∣ ─        ∣
        (TriggerHardFork        , _) → ∣ ✓   ∣ vote P4      ∣ vote Q4  ∣
        (ChangePParams    , x) → ∣ ✓   ∥ P/Q5 x                  ∣
        (TreasuryWithdrawal     , _) → ∣ ✓   ∣ vote P6      ∣ ─        ∣
        (Info             , _) → ∣ ✓†  ∣ ✓†           ∣ ✓†       ∣
          where
\end{code}
\begin{code}[hide]
          open PParams pp
          open DrepThresholds drepThresholds
          open PoolThresholds poolThresholds

          ✓ = maybe just ✓† ccThreshold
\end{code}
\begin{code}
          P/Q2a/b : Maybe ℚ × Maybe ℚ
          P/Q2a/b =  case ccThreshold of
\end{code}
\begin{code}[hide]
            λ where
\end{code}
\begin{code}
                     (just _)  → (vote P2a , vote Q2a)
                     nothing   → (vote P2b , vote Q2b)

          pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
          pparamThreshold NetworkGroup     = (vote P5a  , ─         )
          pparamThreshold EconomicGroup    = (vote P5b  , ─         )
          pparamThreshold TechnicalGroup   = (vote P5c  , ─         )
          pparamThreshold GovernanceGroup  = (vote P5d  , ─         )
          pparamThreshold SecurityGroup    = (─         , vote Q5   )

          P/Q5 : PParamsUpdate → Maybe ℚ × Maybe ℚ
          P/Q5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))
                   , maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

canVote : PParams → GovAction → GovRole → Type
canVote pp a r = Is-just (threshold pp nothing a r)
\end{code}
\end{AgdaMultiCode}
% TODO: this doesn't actually depend on PParams so we could remove that
%       argument, but we don't have a default ATM
\caption{Functions related to voting}
\label{fig:ratification-requirements}
\end{figure*}

\subsection{Protocol Parameters and Governance Actions}
\label{sec:protocol-parameters-and-governance-actions}
Voting thresholds for protocol parameters can be set by group, and we do not require that each protocol
parameter governance action be confined to a single group. In case a governance action carries updates
for multiple parameters from different groups, the maximum threshold of all the groups involved will
apply to any given such governance action.

The purpose of the \SecurityGroup{} is to add an additional check to
security-relevant protocol parameters. Any proposal that includes a
change to a security-relevant protocol parameter must also be accepted
by at least half of the SPO stake.

\subsection{Ratification Restrictions}
\label{sec:ratification-restrictions}
\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record StakeDistrs : Type where
  field
    stakeDistrVDeleg  : VDeleg  ⇀ Coin
    stakeDistrPools   : KeyHash ⇀ Coin

record RatifyEnv : Type where
  field
    stakeDistrs   : StakeDistrs
    currentEpoch  : Epoch
    dreps         : Credential ⇀ Epoch
    ccHotKeys     : Credential ⇀ Maybe Credential
    treasury      : Treasury
    pools         : KeyHash ⇀ StakePoolParams
    delegatees    : VoteDelegs

record RatifyState : Type where
  field
    es              : EnactState
    removed         : ℙ (GovActionID × GovActionState)
    delay           : Bool
\end{code}
\begin{code}[hide]
record HasRatifyState {a} (A : Type a) : Type a where
  field RatifyStateOf : A → RatifyState
open HasRatifyState ⦃...⦄ public

instance
  HasEnactState-RatifyState : HasEnactState RatifyState
  HasEnactState-RatifyState .EnactStateOf = RatifyState.es

  HasTreasury-RatifyEnv : HasTreasury RatifyEnv
  HasTreasury-RatifyEnv .TreasuryOf = RatifyEnv.treasury

  HasDReps-RatifyEnv : HasDReps RatifyEnv
  HasDReps-RatifyEnv .DRepsOf = RatifyEnv.dreps
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the RATIFY transition system}
\label{fig:types-and-functions-for-the-ratify-transition-system}
\end{figure*}
As mentioned earlier, most governance actions must include a \GovActionID{}
for the most recently enacted action of its given type. Consequently, two actions of the
same type can be enacted at the same time, but they must be \emph{deliberately}
designed to do so.

\Cref{fig:types-and-functions-for-the-ratify-transition-system}
defines some types and functions used in the RATIFY transition
system.

\begin{code}[hide]
instance
  unquoteDecl HasCast-StakeDistrs HasCast-RatifyEnv HasCast-RatifyState = derive-HasCast
    (   (quote StakeDistrs , HasCast-StakeDistrs)
    ∷   (quote RatifyEnv , HasCast-RatifyEnv)
    ∷ [ (quote RatifyState , HasCast-RatifyState) ])
\end{code}

\subsection{Vote Counting}

\Cref{fig:defs:ratify-acceptedbycc,fig:defs:ratify-acceptedbydrep,fig:defs:ratify-acceptedbyspo}
define the \acceptedBy{} predicate for each of the governance
bodies. Given the current state of the votes and other parts of the
system these functions calculate whether a governance action is
ratified by the corresponding body.

\subsubsection{Constitutional Commitee}

\begin{figure*}[!ht]
\begin{AgdaMultiCode}
\begin{code}
module AcceptedByCC (currentEpoch : Epoch)
                    (ccHotKeys : Credential ⇀ Maybe Credential)
                    (eSt : EnactState)
                    (gaSt : GovActionState) where

\end{code}
\begin{code}[hide]
  open EnactState eSt using (cc; pparams)
  open PParams (proj₁ pparams)
  open GovActionState gaSt
  open GovVotes votes using (gvCC)
\end{code}
\begin{code}
  castVotes : Credential ⇀ Vote
  castVotes = gvCC

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred (c , e) =
    if currentEpoch > e
      then nothing -- credential has expired
      else case lookupᵐ? ccHotKeys c of
\end{code}
\begin{code}[hide]
          λ where
\end{code}
\begin{code}
        (just (just c'))  → just c'
        _                 → nothing -- hot key not registered or resigned

  actualVote : Credential → Epoch → Vote
  actualVote c e = case getCCHotCred (c , e) of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (just c')  → maybe id Vote.no (lookupᵐ? castVotes c')
      _          → Vote.abstain

  actualVotes : Credential ⇀ Vote
  actualVotes = case proj₁ cc of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      nothing         →  ∅
      (just (m , _))  →  if ccMinSize ≤ lengthˢ (mapFromPartialFun getCCHotCred (m ˢ))
                         then mapWithKey actualVote m
                         else constMap (dom m) Vote.no

  mT : Maybe ℚ
  mT = threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action CC

  t : ℚ
  t = maybe id 0ℚ mT

  stakeDistr : Credential ⇀ Coin
  stakeDistr = constMap (dom actualVotes) 1

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistr ∣ actualVotes ⁻¹ Vote.yes                           ] x
  totalStake     = ∑[ x ← stakeDistr ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵))  ] x

  accepted : Type
  accepted = (acceptedStake /₀ totalStake) ≥ t
    × (maybe (λ (m , _) → lengthˢ m) 0 (proj₁ cc) ≥ ccMinSize ⊎ Is-nothing mT)

acceptedByCC
  : RatifyEnv
  → EnactState
  → GovActionState
  → Type
acceptedByCC Γ = AcceptedByCC.accepted currentEpoch ccHotKeys
  where open RatifyEnv Γ using (currentEpoch; ccHotKeys)
\end{code}
\end{AgdaMultiCode}
\caption{Vote counting for CC}
\label{fig:defs:ratify-acceptedbycc}
\end{figure*}

\Cref{fig:defs:ratify-acceptedbycc} defines the
\AgdaFunction{acceptedByCC} predicate. This predicate utilizes the
following auxiliary definitions:
%
\begin{itemize}
  \item \AgdaFunction{castVotes}: This map contains the votes that
    have been cast by members of the \CC{} body and are part of the
    \AgdaDatatype{GovActionState}~\AgdaBound{gaSt}.

  \item \AgdaFunction{getCCHotCred}: This function maps a
    \Credential{} and an \Epoch{} to the hot key corresponding with
    the given credential, in case this has not expired.

  \item \AgdaFunction{actualVote}: This function sets the default vote
    for \CC{} members. If the given \CC{} member term has expired, they
    have not yet registered a hot key, or they have resigned, then
    \actualVote{} returns \abstain{}; if none of these conditions is
    met, then
    %
    \begin{itemize}
      \item if the \CC{} member has voted, then that vote is returned;
      \item if the \CC{} member has not voted, then the default value
        of \no{} is returned.
    \end{itemize}

  \item \AgdaFunction{actualVotes}: This map contains the actual votes
    of the \CC{} body. If the commitee does not exists then it is the
    empty map, otherwise if
    %
    \begin{itemize}
      \item the number of \CC{} members with a registered hot key is
      greater than the protocol parameter \AgdaBound{ccMinSize}, then
      \AgdaFunction{actualVote} is returned (as a map), otherwise;
      \item all commitee members vote \no{}
    \end{itemize}

  \item \AgdaFunction{mT}: This is the threshold of the \CC{}. It may
    be \AgdaInductiveConstructor{nothing}.

  \item \AgdaFunction{stakeDistr} computes the stake
    distribution. Note that every constitutional committe member has a
    stake of 1, giving them equal voting power. However, just as with
    other delegation, multiple \CC{} members can delegate to the same hot
    key, giving that hot key the power of those multiple votes with a
    single actual vote.

  \item \AgdaFunction{acceptedStake} and \AgdaFunction{totalStake}:
  These amounts correspond to the portion of the stake from the \CC{}
  members that has voted \yes{} and that which has voted \yes{} or
  \no{}.
\end{itemize}

In addition, it has to be the case that either
%
\begin{itemize}
  \item the size of the \CC{} is greater than \AgdaBound{ccMinSize}, or
  \item the threshold function returns \AgdaInductiveConstructor{nothing}
  %% TODO: Explain this?
\end{itemize}

\subsubsection{Delegated Representatives}

\begin{figure*}[!ht]
\begin{AgdaMultiCode}
\begin{code}
module AcceptedByDRep (Γ : RatifyEnv)
                      (eSt : EnactState)
                      (gaSt : GovActionState) where

\end{code}
\begin{code}[hide]
  open EnactState eSt using (cc; pparams)
  open RatifyEnv Γ using (currentEpoch; dreps; stakeDistrs)
  open PParams (proj₁ pparams)
  open StakeDistrs stakeDistrs
  open GovActionState gaSt
  open GovVotes votes using (gvDRep)
\end{code}
\begin{code}
  castVotes : VDeleg ⇀ Vote
  castVotes = mapKeys vDelegCredential gvDRep

  activeDReps : ℙ Credential
  activeDReps = dom (filter (λ (_ , e) → currentEpoch ≤ e) dreps)

  predeterminedDRepVotes : VDeleg ⇀ Vote
  predeterminedDRepVotes = case gaType action of
      λ where
        NoConfidence → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.yes ❵
        _            → ❴ vDelegAbstain , Vote.abstain ❵ ∪ˡ ❴ vDelegNoConfidence , Vote.no  ❵

  defaultDRepCredentialVotes : VDeleg ⇀ Vote
  defaultDRepCredentialVotes = constMap (mapˢ vDelegCredential activeDReps) Vote.no

  actualVotes : VDeleg ⇀ Vote
  actualVotes  = castVotes ∪ˡ defaultDRepCredentialVotes
                             ∪ˡ predeterminedDRepVotes

  t : ℚ
  t = maybe id 0ℚ (threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action DRep)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrVDeleg ∣ actualVotes ⁻¹ Vote.yes                          ] x
  totalStake     = ∑[ x ← stakeDistrVDeleg ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x

  accepted = (acceptedStake /₀ totalStake) ≥ t

acceptedByDRep
  : RatifyEnv
  → EnactState
  → GovActionState
  → Type
acceptedByDRep = AcceptedByDRep.accepted
\end{code}
\begin{code}[hide]
\end{code}
\begin{code}
\end{code}
\begin{code}[hide]
\end{code}
\end{AgdaMultiCode}
\caption{Vote counting for DReps}
\label{fig:defs:ratify-acceptedbydrep}
\end{figure*}

\Cref{fig:defs:ratify-acceptedbydrep} defines the predicate
\AgdaFunction{acceptedByDRep}. This predicate is defined using some
auxiliary definitions:
%
\begin{itemize}
  \item \AgdaFunction{activeDReps}: This set contains all \DRep{}s
    whose term has not expired.

  \item \AgdaFunction{predeterminedDRepVotes}: This map collects the
    predetermined votes for the \AgdaDatatype{VDeleg}. It depends on the
    governance action at hand.

  \item \AgdaFunction{defaultDRepCredentialVote}: This map sets the default
    vote to \no{} for all the active \DRep{}s.

  \item \AgdaFunction{actualVotes}: This map joins together in order of preference:
    the cast votes, the default votes and the predetermined votes.

  \item \AgdaFunction{acceptedStake} and \AgdaFunction{totalStake}:
    These amounts correspond to the portion of the stake from the
    \DRep{} members that has voted \yes{} and that which has voted
    \yes{} or \no{}.
\end{itemize}

\subsubsection{Stake Pool Operators}

\begin{figure*}[!ht]
\begin{AgdaMultiCode}
\begin{code}
module AcceptedBySPO (delegatees : VoteDelegs)
                     (pools : Pools)
                     (stakeDistrPools : KeyHash ⇀ Coin)
                     (eSt : EnactState)
                     (gaSt : GovActionState) where
\end{code}
\begin{code}[hide]
  open EnactState eSt using (cc; pparams)
  open GovActionState gaSt
  open GovVotes votes using (gvSPO)
\end{code}
\begin{code}
  castVotes : KeyHash ⇀ Vote
  castVotes = gvSPO

  defaultVote : KeyHash → Vote
  defaultVote kh = case lookupᵐ? pools kh of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    nothing   → Vote.no
    (just  p) → case lookupᵐ? delegatees (StakePoolParams.rewardAccount p) , gaType action of
\end{code}
\begin{code}[hide]
           λ where
\end{code}
\begin{code}
           (_                       , TriggerHardFork)  → Vote.no
           (just vDelegNoConfidence , NoConfidence   )  → Vote.yes
           (just vDelegAbstain      , _              )  → Vote.abstain
           _                                            → Vote.no

  actualVotes : KeyHash ⇀ Vote
  actualVotes = castVotes ∪ˡ mapFromFun defaultVote (dom stakeDistrPools)

  t : ℚ
  t = maybe id 0ℚ (threshold (proj₁ pparams) (proj₂ <$> (proj₁ cc)) action SPO)

  acceptedStake totalStake : Coin
  acceptedStake  = ∑[ x ← stakeDistrPools ∣ actualVotes ⁻¹ Vote.yes                          ] x
  totalStake     = ∑[ x ← stakeDistrPools ∣ dom (actualVotes ∣^ (❴ Vote.yes ❵ ∪ ❴ Vote.no ❵)) ] x

  accepted : Type
  accepted = (acceptedStake /₀ totalStake) ≥ t

acceptedBySPO
  : RatifyEnv
  → EnactState
  → GovActionState
  → Type
acceptedBySPO Γ = AcceptedBySPO.accepted delegatees pools stakeDistrPools
  where open RatifyEnv Γ
        open StakeDistrs stakeDistrs
\end{code}
\end{AgdaMultiCode}
\caption{Vote counting for SPOs}
\label{fig:defs:ratify-acceptedbyspo}
\end{figure*}

\Cref{fig:defs:ratify-acceptedbyspo}, defines the predicate
\AgdaFunction{acceptedBySPO}, which uses the following auxiliary
definitions:
%
\begin{itemize}
  \item \AgdaFunction{castVotes}: This map contains the votes that
  have been cast by members of the SPO body and have been collected
  as part of the \AgdaDatatype{GovActionState}~\AgdaBound{gaSt}.

  \item \AgdaFunction{defaultVote}: This map sets a default vote to
  all SPOs who didn't vote, with the default depending on the given
  action, and whether the SPO has delegated their vote to one of the
  default \DRep{}s.

  \item \AgdaFunction{actualVotes}: This map combines the votes cast
  by SPOs with \AgdaBound{defaultVote} using a left-biased union
  making cast votes take precedence over default votes.

  \item \AgdaFunction{t}: This rational is the threshold used to
  calculate if the action is ratified by the SPO body.

  \item \AgdaFunction{acceptedStake} and \AgdaFunction{totalStake}:
  These amounts correspond to the portion of the stake from the SPOs
  that has voted \yes{} and that which has voted \yes{} or \no{}. Note
  that it uses the stake distribution \AgdaField{stakeDistrPools} as
  provided in the environment.
\end{itemize}

Let us discuss in more detail the way SPO votes are counted, as the
ledger specification's handling of this has evolved in response to
community feedback. Previously, if an SPO did not vote, then it would
be counted as having voted \abstain{} by default. Members of the SPO
community found this behavior counterintuitive and requested that
non-voters be assigned a \no{} vote by default, with the caveat that
an SPO could change its default setting by delegating its reward
account credential to an \texttt{AlwaysNoConfidence} \DRep{} or an
\texttt{AlwaysAbstain} \DRep{}. (This change applies only after the
bootstrap period; during the bootstrap period the logic is unchanged;
see \cref{sec:conway-bootstrap-gov}.)  To be precise, the agreed upon
specification is the following: an SPO that did not vote is assumed to
have voted \no{}, except under the following circumstances:
%
\begin{itemize}
  \item if the SPO has delegated its reward credential to an
    \texttt{AlwaysNoConfidence} \DRep{}, then their default vote is
    \yes{} for \NoConfidence{} proposals and \no{} for other
    proposals;
  \item if the SPO has delegated its reward credential to an
    \texttt{AlwaysAbstain} \DRep{}, then its default vote is \abstain{}
    for all proposals.
\end{itemize}

It is important to note that the credential that can now be used to
set a default voting behavior is the credential used to withdraw
staking rewards, which is not (in general) the same as the credential
used for voting.
%% And as a second layer, this means that if that credential is a script, it may need
%% to have explicit logic written to be able to set a default at all.


\begin{figure*}[!ht]
\begin{code}[hide]
opaque
\end{code}
\begin{code}
  accepted : RatifyEnv → EnactState → GovActionState → Type
  accepted Γ es gs = acceptedByCC Γ es gs × acceptedByDRep Γ es gs × acceptedBySPO Γ es gs

  expired : Epoch → GovActionState → Type
  expired current record { expiresIn = expiresIn } = expiresIn < current
\end{code}
\caption{Functions related to ratification}
\label{fig:defs:ratify-defs-i}
\end{figure*}

The \accepted{} and \expired{} functions just defined
are used in the rules of RATIFY.

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
open EnactState
\end{code}
\begin{code}
verifyPrev : (a : GovActionType) → NeedsHash a → EnactState → Type
verifyPrev NoConfidence        h es  = h ≡ es .cc .proj₂
verifyPrev UpdateCommittee     h es  = h ≡ es .cc .proj₂
verifyPrev NewConstitution     h es  = h ≡ es .constitution .proj₂
verifyPrev TriggerHardFork     h es  = h ≡ es .pv .proj₂
verifyPrev ChangePParams       h es  = h ≡ es .pparams .proj₂
verifyPrev TreasuryWithdrawal  _ _   = ⊤
verifyPrev Info                _ _   = ⊤

delayingAction : GovActionType → Bool
delayingAction NoConfidence        = true
delayingAction UpdateCommittee     = true
delayingAction NewConstitution     = true
delayingAction TriggerHardFork     = true
delayingAction ChangePParams       = false
delayingAction TreasuryWithdrawal  = false
delayingAction Info                = false

delayed : (a : GovActionType) → NeedsHash a → EnactState → Bool → Type
delayed gaTy h es d = ¬ verifyPrev gaTy h es ⊎ d ≡ true

acceptConds : RatifyEnv → RatifyState → GovActionID × GovActionState → Type
acceptConds Γ stʳ (id , st) =
       accepted Γ es st
    ×  ¬ delayed (gaType action) prevAction es delay
    × ∃[ es' ]  ⟦ id , treasury , currentEpoch ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
\end{code}
\begin{code}[hide]
    where open RatifyEnv Γ
          open RatifyState stʳ
          open GovActionState st

opaque
  unfolding accepted

  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence        h es = dec
  verifyPrev? UpdateCommittee     h es = dec
  verifyPrev? NewConstitution     h es = dec
  verifyPrev? TriggerHardFork     h es = dec
  verifyPrev? ChangePParams       h es = dec
  verifyPrev? TreasuryWithdrawal  h es = dec
  verifyPrev? Info                h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  Is-nothing? : ∀ {A : Set} {x : Maybe A} → Dec (Is-nothing x)
  Is-nothing? {x = x} = All.dec (const $ no id) x
    where
        import Data.Maybe.Relation.Unary.All as All

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = acceptedByCC? Γ es st ×-dec acceptedByDRep? Γ es st ×-dec acceptedBySPO? Γ es st
    where
     acceptedByCC? : ∀ Γ es st → Dec (acceptedByCC Γ es st)
     acceptedByCC? _ _ _ = _ ℚ.≤? _ ×-dec (_ ≥? _ ⊎-dec Is-nothing?)

     acceptedByDRep? : ∀ Γ es st → Dec (acceptedByDRep Γ es st)
     acceptedByDRep? _ _ _ = _ ℚ.≤? _

     acceptedBySPO? : ∀ Γ es st → Dec (acceptedBySPO Γ es st)
     acceptedBySPO? _ _ _ = _ ℚ.≤? _

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿
\end{code}
\end{AgdaMultiCode}
\caption{Functions related to ratification, continued}
\label{fig:defs:ratify-defs-ii}
\end{figure*}

The functions defined above deal with delays
and the acceptance criterion for ratification.  A given action can
either be delayed if the action contained in \EnactState{} isn't the
one the given action is building on top of, which is checked by
\verifyPrev{}, or if a previous action was a \delayingAction{}.  Note
that \delayingAction{} affects the future: whenever a
\delayingAction{} is accepted all future actions are delayed.
\delayed{} then expresses the condition whether an action is
delayed. This happens either because the previous action doesn't match
the current one, or because the previous action was a delaying
one. This information is passed in as an argument.

\begin{code}[hide]
private variable
  Γ : RatifyEnv
  es es' : EnactState
  a : GovActionID × GovActionState
  removed : ℙ (GovActionID × GovActionState)
  d : Bool

open RatifyEnv
open GovActionState
\end{code}
\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Type

_⊢_⇀⦇_,RATIFIES⦈_  : RatifyEnv → RatifyState → List (GovActionID × GovActionState)
                   → RatifyState → Type
\end{code}
\end{AgdaMultiCode}
\caption{Types of the RATIFY and RATIFIES transition systems}
\end{figure*}

\begin{figure*}[ht]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
data _⊢_⇀⦇_,RATIFY⦈_ where
\end{code}
\begin{code}
  RATIFY-Accept :
    let treasury       = TreasuryOf Γ
        e              = Γ .currentEpoch
        (gaId , gaSt)  = a
        action         = GovActionOf gaSt
    in
    ∙ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ ⟦ gaId , treasury , e ⟧ ⊢ es ⇀⦇ action ,ENACT⦈ es'
      ────────────────────────────────
      Γ ⊢ ⟦ es  , removed         , d                     ⟧ ⇀⦇ a ,RATIFY⦈
          ⟦ es' , ❴ a ❵ ∪ removed , delayingAction (gaType action) ⟧

  RATIFY-Reject :
    let e              = Γ .currentEpoch
        (gaId , gaSt)  = a
    in
    ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
    ∙ expired e gaSt
      ────────────────────────────────
      Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , ❴ a ❵ ∪ removed , d ⟧

  RATIFY-Continue :
     let e              = Γ .currentEpoch
         (gaId , gaSt)  = a
     in
     ∙ ¬ acceptConds Γ ⟦ es , removed , d ⟧ a
     ∙ ¬ expired e gaSt
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ ⇀⦇ a ,RATIFY⦈ ⟦ es , removed , d ⟧

_⊢_⇀⦇_,RATIFIES⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,RATIFY⦈_}
\end{code}
\end{AgdaSuppressSpace}
\caption{The RATIFY transition system}
\label{fig:sts:ratify}
\end{figure*}

The RATIFIES transition system is defined as the reflexive-transitive
closure of RATIFY, which is defined via three rules, defined in
\cref{fig:sts:ratify}.
%
\begin{itemize}
  \item \RATIFYAccept{} checks if the votes for a given \GovAction{} meet the
    threshold required for acceptance, that the action is accepted and not delayed,
    and \RATIFYAccept{} ratifies the action.
%
  \item \RATIFYReject{} asserts that the given \GovAction{} is not \accepted{}
    and \expired{}; it removes the governance action.
%
  \item \RATIFYContinue{} covers the remaining cases and keeps the \GovAction{}
    around for further voting.
\end{itemize}
%
Note that all governance actions eventually either get accepted and enacted via \RATIFYAccept{} or
rejected via \RATIFYReject{}. If an action satisfies all criteria to be accepted but cannot be
enacted anyway, it is kept around and tried again at the next epoch boundary.

We never remove actions that do not attract sufficient \yes{} votes before they expire, even if it
is clear to an outside observer that this action will never be enacted. Such an action will simply
keep getting checked every epoch until it expires.
