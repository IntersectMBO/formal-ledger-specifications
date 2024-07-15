\section{Ratification}
\label{sec:ratification}
\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_; _⊔_) renaming (filterᵐ to filter)
open import Ledger.Transaction hiding (Vote)

module Ledger.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.Enact govStructure
open import Ledger.GovernanceActions govStructure using (Vote)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
\end{code}

Governance actions are \defn{ratified} through on-chain votes.
Different kinds of governance actions have different ratification requirements
but always involve at least two of the three governance bodies.

A successful motion of no-confidence, election of a new constitutional
committee, a constitutional change, or a hard-fork delays ratification of
all other governance actions until the first epoch after their
enactment. This gives a new constitutional committee enough time to vote
on current proposals, re-evaluate existing proposals with respect to a
new constitution, and ensures that the in principle arbitrary semantic
changes caused by enacting a hard-fork do not have unintended
consequences in combination with other actions.

\subsection{Ratification Requirements}
\label{sec:ratification-requirements}
Figure~\ref{fig:ratification-requirements} details the ratification
requirements for each governance action scenario. For a governance
action to be ratified, all of these requirements must be satisfied, on
top of other conditions that are explained further down. The
\threshold function is defined as a table, with a row for each type of
\GovAction and the colums representing the \CC, \DRep and \SPO roles
in that order.

The symbols mean the following:
\begin{itemize}
\item
  \AgdaFunction{vote} x: To pass the action, the \yes votes need to be over the threshold x.
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
\DRep and \SPO thresholds simultaneously: the rows for \UpdateCommittee
and \ChangePParams.

For \UpdateCommittee, there can be different thresholds depending on whether the
system is in a state of no-confidence or not. This information is
provided via the \AgdaArgument{ccThreshold} argument: if the system is in a state of no-confidence, then \AgdaArgument{ccThreshold} is set to \nothing.

In case of the \ChangePParams action, the thresholds further depend on
what groups that action is associated with. \pparamThreshold
associates a pair of thresholds to each individual group. Since an
individual update can contain multiple groups, the actual thresholds
are then given by taking the maximum of all those thresholds.

Note that each protocol parameter belongs to exactly one of the four
groups that have a \DRep threshold, so a \DRep vote will always be
required. A protocol parameter may or may not be in the
\SecurityGroup, so an \SPO vote may not be required.

Finally, each of the \AgdaFunction{P}$_x$ and \AgdaFunction{Q}$_x$ in
Figure~\ref{fig:ratification-requirements} are protocol parameters.
\begin{figure*}[h]
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
threshold pp ccThreshold =
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
      NoConfidence             → ∣ ─   ∣ vote P1      ∣ vote Q1  ∣
      (UpdateCommittee _ _ _)  → ∣ ─   ∥ P/Q2a/b                 ∣
      (NewConstitution _ _)    → ∣ ✓   ∣ vote P3      ∣ ─        ∣
      (TriggerHF _)            → ∣ ✓   ∣ vote P4      ∣ vote Q4  ∣
      (ChangePParams x)        → ∣ ✓   ∥ P/Q5 x                  ∣
      (TreasuryWdrl _)         → ∣ ✓   ∣ vote P6      ∣ ─        ∣
      Info                     → ∣ ✓†  ∣ ✓†           ∣ ✓†       ∣
        where
\end{code}
\begin{code}[hide]
        open PParams pp
        open DrepThresholds drepThresholds
        open PoolThresholds poolThresholds

        ✓ = ccThreshold
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
        pparamThreshold SecurityGroup    = (─         , vote Q5e  )

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

The purpose of the \SecurityGroup is to add an additional check to
security-relevant protocol parameters. Any proposal that includes a
change to a security-relevant protocol parameter must also be accepted
by at least half of the SPO stake.

\subsection{Ratification Restrictions}
\label{sec:ratification-restrictions}
\begin{figure*}[h!]
\begin{AgdaMultiCode}
\begin{code}
record StakeDistrs : Type where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    stakeDistr  : VDeleg ⇀ Coin

record RatifyEnv : Type where
\end{code}
\begin{code}[hide]
  field
\end{code}
\begin{code}
    stakeDistrs   : StakeDistrs
    currentEpoch  : Epoch
    dreps         : Credential ⇀ Epoch
    ccHotKeys     : Credential ⇀ Maybe Credential
    treasury      : Coin

record RatifyState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ʳ
  field
\end{code}
\begin{code}
    es              : EnactState
    removed         : ℙ (GovActionID × GovActionState)
    delay           : Bool

CCData : Type
CCData = Maybe ((Credential ⇀ Epoch) × ℚ)

govRole : VDeleg → GovRole
govRole (credVoter gv _)  = gv
govRole abstainRep        = DRep
govRole noConfidenceRep   = DRep

IsCC IsDRep IsSPO : VDeleg → Type
IsCC    v = govRole v ≡ CC
IsDRep  v = govRole v ≡ DRep
IsSPO   v = govRole v ≡ SPO
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the RATIFY transition system}
\label{fig:types-and-functions-for-the-ratify-transition-system}
\end{figure*}
As mentioned earlier, most governance actions must include a \GovActionID
for the most recently enacted action of its given type. Consequently, two actions of the
same type can be enacted at the same time, but they must be \emph{deliberately}
designed to do so.

Figure~\ref{fig:types-and-functions-for-the-ratify-transition-system}
defines some types and functions used in the RATIFY transition
system. \CCData is simply an alias to define some functions more
easily.

\begin{code}[hide]
open StakeDistrs

-- TODO: remove these or put them into RatifyState
coinThreshold rankThreshold : ℕ
coinThreshold = 1000000000
rankThreshold = 1000

-- DReps with at least `c` coins
mostStakeDRepDist : Credential ⇀ Coin → Coin → Credential ⇀ Coin
mostStakeDRepDist dist c = dist ∣^' (_≥ c)

-- mostStakeDRepDist-homomorphic : ∀ {dist} → Homomorphic₂ _ _ _>_ (_⊆_ on _ˢ) (mostStakeDRepDist dist)
-- mostStakeDRepDist-homomorphic x>y = impl⇒cores⊆ _ _ {!!} --(<-trans x>y)

mostStakeDRepDist-0 : ∀ {dist} → mostStakeDRepDist dist 0 ≡ᵉᵐ dist
mostStakeDRepDist-0 = (proj₂ ∘ Equivalence.from ∈-filter)
                    , λ x → Equivalence.to ∈-filter (z≤n , x)

-- TODO: maybe this can be proven easier with the maximum?
mostStakeDRepDist-∅ : ∀ {dist} → ∃[ N ] mostStakeDRepDist dist N ˢ ≡ᵉ ∅
mostStakeDRepDist-∅ {dist} = suc (∑[ x ← dist ] x) , Properties.∅-least
  (⊥-elim ∘ uncurry helper ∘ Equivalence.from ∈-filter)
  where
    open ≤-Reasoning

    helper : ∀ {k v} → v > ∑[ x ← dist ] x → (k , v) ∉ dist
    helper {k} {v} v>sum kv∈dist = 1+n≰n $ begin-strict
      v
        ≡˘⟨ indexedSum-singleton' $ finiteness ❴ k , v ❵ ⟩
      ∑[ x ← ❴ k , v ❵ ] x
        ≡˘⟨ indexedSumᵐ-cong {x = (dist ∣ ❴ k ❵) ᶠᵐ} {y = ❴ k , v ❵ ᶠᵐ}
          $ res-singleton' {m = dist} kv∈dist ⟩
      ∑[ x ← (dist ∣ ❴ k ❵) ] x
        ≤⟨ m≤m+n _ _ ⟩
      ∑[ x ← (dist ∣ ❴ k ❵) ] x +ℕ ∑[ x ← (dist ∣ ❴ k ❵ ᶜ) ] x
        ≡˘⟨ indexedSumᵐ-partition {m = dist ᶠᵐ} {(dist ∣ ❴ k ❵) ᶠᵐ} {(dist ∣ ❴ k ❵ ᶜ) ᶠᵐ}
          $ res-ex-disj-∪ Properties.Dec-∈-singleton ⟩
      ∑[ x ← dist ] x
        <⟨ v>sum ⟩
      v ∎

∃topNDRepDist : ∀ {n dist} → n ≤ lengthˢ (dist ˢ) → n > 0
                → ∃[ c ] n ≤ lengthˢ (mostStakeDRepDist dist c ˢ)
                       × lengthˢ (mostStakeDRepDist dist (suc c) ˢ) < n
∃topNDRepDist {n} {dist} length≥n n>0 =
  let
    c , h , h' =
      negInduction (λ _ → _ ≥? n)
        (subst (n ≤_) (sym $ lengthˢ-≡ᵉ _ _ (mostStakeDRepDist-0 {dist})) length≥n)
        (map₂′ (λ h h'
                  → ≤⇒≯ (subst (n ≤_) (trans (lengthˢ-≡ᵉ _ _ h) lengthˢ-∅) h') n>0)
               (mostStakeDRepDist-∅ {dist}))
  in
   c , h , ≰⇒> h'

topNDRepDist : ℕ → Credential ⇀ Coin → Credential ⇀ Coin
topNDRepDist n dist = case (lengthˢ (dist ˢ) ≥? n) ,′ (n >? 0) of λ where
  (_     , no  _)  → ∅ᵐ
  (no _  , yes _)  → dist
  (yes p , yes p₁) → mostStakeDRepDist dist (proj₁ (∃topNDRepDist {dist = dist} p p₁))

-- restrict the DRep stake distribution
-- commented out for now, since we don't know if that'll actually be implemented
restrictedDists : ℕ → ℕ → StakeDistrs → StakeDistrs
restrictedDists coins rank dists = dists
  -- record dists { drepStakeDistr = restrict drepStakeDistr }
  where open StakeDistrs dists
        -- one always includes the other
        restrict : Credential ⇀ Coin → Credential ⇀ Coin
        restrict dist = topNDRepDist rank dist ∪ˡ mostStakeDRepDist dist coins
\end{code}
\begin{figure*}[h!]
\begin{AgdaMultiCode}
\begin{code}
actualVotes  : RatifyEnv → PParams → CCData → GovAction
             → (GovRole × Credential ⇀ Vote) → (VDeleg ⇀ Vote)
actualVotes Γ pparams cc ga votes
  =   mapKeys (credVoter CC) actualCCVotes  ∪ˡ actualPDRepVotes ga
  ∪ˡ  actualDRepVotes                       ∪ˡ actualSPOVotes ga
  where
\end{code}
\begin{code}[hide]
  open RatifyEnv Γ
  open PParams pparams
\end{code}
\begin{code}
  roleVotes : GovRole → VDeleg ⇀ Vote
  roleVotes r = mapKeys (uncurry credVoter) (filter (λ (x , _) → r ≡ proj₁ x) votes)

  activeDReps = dom (filter (λ (_ , e) → currentEpoch ≤ e) dreps)
  spos = filterˢ IsSPO (dom (stakeDistr stakeDistrs))

  getCCHotCred : Credential × Epoch → Maybe Credential
  getCCHotCred (c , e) = case ¿ currentEpoch ≤ e ¿ᵇ , lookupᵐ? ccHotKeys c of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (true , just (just c'))  → just c'
      _                        → nothing -- expired, no hot key or resigned

  actualCCVote : Credential → Epoch → Vote
  actualCCVote c e = case getCCHotCred (c , e) of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      (just c')  → maybe id Vote.no (lookupᵐ? votes (CC , c'))
      _          → Vote.abstain

  actualCCVotes : Credential ⇀ Vote
  actualCCVotes = case cc of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      nothing         → ∅
      (just (m , q))  → if ccMinSize ≤ lengthˢ (mapFromPartialFun getCCHotCred (m ˢ))
                          then mapWithKey actualCCVote m
                          else constMap (dom m) Vote.no

  actualPDRepVotes : GovAction → VDeleg ⇀ Vote
  actualPDRepVotes NoConfidence
                      = ❴ abstainRep , Vote.abstain ❵ ∪ˡ ❴ noConfidenceRep , Vote.yes ❵
  actualPDRepVotes _  = ❴ abstainRep , Vote.abstain ❵ ∪ˡ ❴ noConfidenceRep , Vote.no ❵

  actualDRepVotes : VDeleg ⇀ Vote
  actualDRepVotes  =   roleVotes DRep
                   ∪ˡ  constMap (mapˢ (credVoter DRep) activeDReps) Vote.no

  actualSPOVotes : GovAction → VDeleg ⇀ Vote
  actualSPOVotes (TriggerHF _)  = roleVotes SPO ∪ˡ constMap spos Vote.no
  actualSPOVotes _              = roleVotes SPO ∪ˡ constMap spos Vote.abstain
\end{code}
\end{AgdaMultiCode}
\caption{Vote counting}
\label{fig:defs:ratify-actualvotes}
\end{figure*}

Figure~\ref{fig:defs:ratify-actualvotes} defines the \actualVotes
function. Given the current state about votes and other parts of the
system it calculates a new mapping of votes, which is the mapping that
will actually be used during ratification. Things such as default
votes or resignation/expiry are implemented in this way.

\actualVotes is defined as the union of four voting maps,
corresponding to the constitutional committee, predefined (or auto)
DReps, regular DReps and SPOs.

\begin{itemize}

\item \roleVotes filters the votes based on the given governance role
  and is a helper for definitions further down.

\item if a \CC member has not yet registered a hot key, has \expired,
  or has resigned, then \actualCCVote returns \abstain; if none
  of these conditions is met, then
  \begin{itemize}
    \item if the \CC member has voted, then that vote is returned;
    \item if the \CC member has not voted, then the default value of \no is returned.
  \end{itemize}

\item \actualDRepVotes adds a default vote of \no to all active DReps
  that didn't vote.

\item \actualSPOVotes adds a default vote to all SPOs who didn't vote,
  with the default depending on the action.
\end{itemize}

\begin{figure*}[h!]
\begin{code}[hide]
open RatifyEnv using (stakeDistrs)

abstract
  -- unused, keep until we know for sure that there'll be no minimum AVS
  -- activeVotingStake : ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
  -- activeVotingStake cc dists votes =
  --   ∑[ x  ← getStakeDist DRep cc dists ∣ dom votes ᶜ ᶠᵐ ] x

  -- TODO: explain this notation in the prose and it's purpose:
  -- if there's no stake, accept only if threshold is zero
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = 0ℚ
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y
\end{code}
\begin{code}
  getStakeDist : GovRole → ℙ VDeleg → StakeDistrs → VDeleg ⇀ Coin
  getStakeDist CC    cc  sd  = constMap (filterˢ IsCC cc) 1
  getStakeDist DRep  _   sd  = filterKeys IsDRep  (sd .stakeDistr)
  getStakeDist SPO   _   sd  = filterKeys IsSPO   (sd .stakeDistr)

  acceptedStakeRatio : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → ℚ
  acceptedStakeRatio r cc dists votes = acceptedStake /₀ totalStake
    where
      acceptedStake totalStake : Coin
      acceptedStake  = ∑[ x ← getStakeDist r cc dists ∣ votes ⁻¹ Vote.yes        ] x
      totalStake     = ∑[ x ← getStakeDist r cc dists ∣ votes ⁻¹ Vote.abstain ᶜ  ] x

  acceptedBy : RatifyEnv → EnactState → GovActionState → GovRole → Type
  acceptedBy Γ (record { cc = cc , _; pparams = pparams , _ }) gs role =
    let open GovActionState gs
        votes'  = actualVotes Γ pparams cc action votes
        t       = maybe id 0ℚ (threshold pparams (proj₂ <$> cc) action role)
    in acceptedStakeRatio role (dom votes') (stakeDistrs Γ) votes' ≥ t

  accepted : RatifyEnv → EnactState → GovActionState → Type
  accepted Γ es gs = acceptedBy Γ es gs CC ∧ acceptedBy Γ es gs DRep ∧ acceptedBy Γ es gs SPO

  expired : Epoch → GovActionState → Type
  expired current record { expiresIn = expiresIn } = expiresIn < current
\end{code}
\caption{Functions used in RATIFY rules, without delay}
\label{fig:defs:ratify-defs-i}
\end{figure*}

Figure~\ref{fig:defs:ratify-defs-i} defines the \accepted and \expired
functions (together with some helpers) that are used in the rules of
RATIFY.

\begin{itemize}
  \item \getStakeDist computes the stake distribution based on the
    given governance role and the corresponding delegations. Note that
    every constitutional committe member has a stake of 1, giving them
    equal voting power. However, just as with other delegation, multiple
    CC members can delegate to the same hot key, giving that hot key
    the power of those multiple votes with a single actual vote.

  \item \acceptedStakeRatio is the ratio of accepted stake. It is
    computed as the ratio of \yes votes over the votes that didn't
    \abstain. The latter is equivalent to the sum of \yes and \no votes. The
    special division symbol \AgdaFunction{/₀} indicates that in case
    of a division by 0, the numbers 0 should be returned. This implies
    that in the absence of stake, an action can only pass if the
    threshold is also set to 0.

  \item \acceptedBy looks up the threshold in the \threshold table and
    compares it to the result of \acceptedStakeRatio.

  \item \accepted then checks if an action is accepted by all roles; and
  \item \expired checks whether a governance action is expired in a given epoch.
\end{itemize}
\begin{figure*}[h!]
\begin{code}[hide]
open EnactState
\end{code}
\begin{code}
verifyPrev : (a : GovAction) → NeedsHash a → EnactState → Type
verifyPrev NoConfidence             h es  = h ≡ es .cc .proj₂
verifyPrev (UpdateCommittee _ _ _)  h es  = h ≡ es .cc .proj₂
verifyPrev (NewConstitution _ _)    h es  = h ≡ es .constitution .proj₂
verifyPrev (TriggerHF _)            h es  = h ≡ es .pv .proj₂
verifyPrev (ChangePParams _)        h es  = h ≡ es .pparams .proj₂
verifyPrev (TreasuryWdrl _)         _ _   = ⊤
verifyPrev Info                     _ _   = ⊤

delayingAction : GovAction → Bool
delayingAction NoConfidence             = true
delayingAction (UpdateCommittee _ _ _)  = true
delayingAction (NewConstitution _ _)    = true
delayingAction (TriggerHF _)            = true
delayingAction (ChangePParams _)        = false
delayingAction (TreasuryWdrl _)         = false
delayingAction Info                     = false

delayed : (a : GovAction) → NeedsHash a → EnactState → Bool → Type
delayed a h es d = ¬ verifyPrev a h es ⊎ d ≡ true
\end{code}
\begin{code}[hide]
abstract
  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence              h es = dec
  verifyPrev? (UpdateCommittee x x₁ x₂) h es = dec
  verifyPrev? (NewConstitution x x₁)    h es = dec
  verifyPrev? (TriggerHF x)             h es = dec
  verifyPrev? (ChangePParams x)         h es = dec
  verifyPrev? (TreasuryWdrl x)          h es = dec
  verifyPrev? Info                      h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  acceptedBy? : ∀ Γ es st role → Dec (acceptedBy Γ es st role)
  acceptedBy? Γ record{ cc = cc , _ ; pparams = pparams , _ } st role = _ ℚ.≤? _

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = let instance _ = ⁇¹ acceptedBy? Γ es st in dec

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿
\end{code}
\caption{Functions relating to delays}
\label{fig:defs:ratify-defs-ii}
\end{figure*}

Figure~\ref{fig:defs:ratify-defs-ii} defines functions that
deal with delays. A given action can either be delayed if the action
contained in \EnactState isn't the one the given action is building on top
of, which is checked by \verifyPrev, or if a previous action was a
\delayingAction. Note that \delayingAction affects the future: whenever a
\delayingAction is accepted all future actions are delayed. \delayed then
expresses the condition whether an action is delayed. This happens either
because the previous action doesn't match the current one, or because the
previous action was a delaying one. This information is passed in as an
argument.

\begin{code}[hide]
private variable
  Γ : RatifyEnv
  es es' : EnactState
  a : GovActionID × GovActionState
  removed : ℙ (GovActionID × GovActionState)
  d : Bool

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Type where

\end{code}
\begin{figure*}[h!]
\begin{AgdaSuppressSpace}
\begin{code}
  RATIFY-Accept : let open RatifyEnv Γ; st = a .proj₂; open GovActionState st in
       accepted Γ es st
    →  ¬ delayed action prevAction es d
    →  ⟦ a .proj₁ , treasury , currentEpoch ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es'
       ────────────────────────────────
       Γ ⊢  ⟦ es   , removed          , d                      ⟧ʳ ⇀⦇ a ,RATIFY'⦈
            ⟦ es'  , ❴ a ❵ ∪ removed  , delayingAction action  ⟧ʳ

  RATIFY-Reject : let open RatifyEnv Γ; st = a .proj₂ in
       ¬ accepted Γ es st
    →  expired currentEpoch st
       ────────────────────────────────
       Γ ⊢ ⟦ es , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , ❴ a ❵ ∪ removed , d ⟧ʳ

  RATIFY-Continue : let open RatifyEnv Γ; st = a .proj₂; open GovActionState st in
       ¬ accepted Γ es st × ¬ expired currentEpoch st
    ⊎  accepted Γ es st
       × ( delayed action prevAction es d
         ⊎ (∀ es' → ¬ ⟦ a .proj₁ , treasury , currentEpoch ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es'))
    ────────────────────────────────
    Γ ⊢ ⟦ es , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , removed , d ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_  : RatifyEnv → RatifyState → List (GovActionID × GovActionState)
                 → RatifyState → Type
_⊢_⇀⦇_,RATIFY⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,RATIFY'⦈_
\end{code}
\end{AgdaSuppressSpace}
\caption{The RATIFY transition system}
\label{fig:sts:ratify}
\end{figure*}

The RATIFY transition system is defined as the reflexive-transitive
closure of RATIFY', which is defined via three rules, defined in
Figure~\ref{fig:sts:ratify}.

\begin{itemize}
  \item \RATIFYAccept checks if the votes for a given \GovAction meet the threshold required for
        acceptance, that the action is accepted and not delayed,
        and \RATIFYAccept ratifies the action.

  \item \RATIFYReject asserts that the given \GovAction is not \accepted and \expired;
        it removes the governance action.
  \item \RATIFYContinue covers the remaining cases and keeps the \GovAction around for further voting.
\end{itemize}

Note that all governance actions eventually either get accepted and enacted via \RATIFYAccept or
rejected via \RATIFYReject. If an action satisfies all criteria to be accepted but cannot be
enacted anyway, it is kept around and tried again at the next epoch boundary.

We never remove actions that do not attract sufficient \yes votes before they expire, even if it
is clear to an outside observer that this action will never be enacted. Such an action will simply
keep getting checked every epoch until it expires.
