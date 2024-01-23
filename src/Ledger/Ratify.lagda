\section{Ratification}
\label{sec:ratification}
\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ; _⊔_)
open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_; _⊔_)
open import Ledger.Transaction hiding (Vote)

module Ledger.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.GovernanceActions govStructure using (Vote)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
\end{code}
Governance actions are \defn{ratified} through on-chain voting actions.
Different kinds of governance actions have different ratification requirements
but always involve \textit{two of the three} governance bodies, with the exception
of a hard-fork initiation, which requires ratification by all governance bodies.
Depending on the type of governance action, an action will thus be ratified when
a combination of the following occurs:
\begin{itemize}
\item
  the \defn{constitutional committee} (\CC) approves of the action; for this to occur,
  the number of \CC members who vote \yes must meet the \CC vote threshold;
\item
  the \defn{delegation representatives} (\DReps) approve of the action; for this to occur,
  the stake controlled by the \DReps who vote \yes must meet the \DRep vote threshold
  as a percentage of the \defn{total participating voting stake} (\totalStake);
\item
  the stake pool operators (\SPOs) approve of the action; for this to occur,
  the stake controlled by the \SPOs who vote \yes must meet a certain threshold as a percentage of
  the \defn{total registered voting stake} (\totalStake).
\end{itemize}
\textbf{Warning}. Different stake distributions apply to \DReps and \SPOs.
\\[4pt]
A successful motion of no-confidence, election of a new constitutional
committee, a constitutional change, or a hard-fork delays ratification of
all other governance actions until the first epoch after their
enactment. This gives a new constitutional committee enough time to vote
on current proposals, re-evaluate existing proposals with respect to a
new constitution, and ensures that the in principle arbitrary semantic
changes caused by enacting a hard-fork do not have unintended
consequences in combination with other actions.

\subsection{Ratification requirements}
\label{sec:ratification-requirements}
Figure~\ref{fig:ratification-requirements} details the ratification
requirements for each governance action scenario. The \threshold
function is defined as a table, with a row for each type of \GovAction
and the colums representing the \CC, \DRep and \SPO roles in that
order.

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

There are two rows in this table which have a function computing the
\DRep and \SPO thresholds simultaneously: the rows for \NewCommittee
and \ChangePParams.

For \NewCommittee, there can be different thresholds on whether the
system is in a state of no-confidence or not. This information is
provided via the \AgdaArgument{ccThreshold} argument: is the system is in a state of
no-confidence, \nothing is given as that argument.

In case of the \ChangePParams action, the thresholds further depend on
what groups that action is associated with. \pparamThreshold
associates a pair of threshold to each individual group. Since an
individual update can contain multiple groups, the actual thresholds
are then given by taking the maximum of all those thresholds.

Note that each protocol parameter belongs to exactly one of the four
groups that have a \DRep threshold, so a \DRep vote will always be
required. Any protocol parameter may or may not be in the
\SecurityGroup, so a \SPO vote may not be required.

Each of the $P_x$ and $Q_x$ are protocol parameters.
\begin{figure*}[h]
\begin{code}[hide]
private
  ∣_∣_∣_∣ : {A : Set} → A → A → A → GovRole → A
  ∣ q₁ ∣ q₂ ∣ q₃ ∣ = λ { CC → q₁ ; DRep → q₂ ; SPO → q₃ }

  ∣_∥_∣ : {A : Set} → A → A × A → GovRole → A
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
\begin{AgdaMultiCode}
\begin{code}
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold = λ where
    NoConfidence           → ∣ ─   ∣ vote P1      ∣ vote Q1     ∣
    (NewCommittee _ _ _)   → ∣ ─   ∥ P/Q2a/b                    ∣
    (NewConstitution _ _)  → ∣ ✓   ∣ vote P3      ∣ ─           ∣
    (TriggerHF _)          → ∣ ✓   ∣ vote P4      ∣ vote Q4     ∣
    (ChangePParams x)      → ∣ ✓   ∥ P/Q5 x                     ∣
    (TreasuryWdrl _)       → ∣ ✓   ∣ vote P6      ∣ ─           ∣
    Info                   → ∣ ✓†  ∣ ✓†           ∣ ✓†          ∣
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
    P/Q2a/b = case ccThreshold of λ where
      (just _) → (vote P2a , vote Q2a)
      nothing  → (vote P2b , vote Q2b)

    pparamThreshold : PParamGroup → Maybe ℚ × Maybe ℚ
    pparamThreshold NetworkGroup     = (vote P5a  , ─         )
    pparamThreshold EconomicGroup    = (vote P5b  , ─         )
    pparamThreshold TechnicalGroup   = (vote P5c  , ─         )
    pparamThreshold GovernanceGroup  = (vote P5d  , ─         )
    pparamThreshold SecurityGroup    = (─         , vote Q5e  )

    P/Q5 : PParamsUpdate → Maybe ℚ × Maybe ℚ
    P/Q5 ppu = maxThreshold (mapˢ (proj₁ ∘ pparamThreshold) (updateGroups ppu))
             , maxThreshold (mapˢ (proj₂ ∘ pparamThreshold) (updateGroups ppu))

canVote : PParams → GovAction → GovRole → Set
canVote pp a r = Is-just (threshold pp nothing a r)
\end{code}
\end{AgdaMultiCode}
% TODO: this doesn't actually depend on PParams so we could remove that
%       argument, but we don't have a default ATM
\caption{Functions related to voting}
\label{fig:ratification-requirements}
\end{figure*}

\subsection{Ratification restrictions}
\label{sec:ratification-restrictions}
\begin{figure*}[h!]
\begin{code}
record StakeDistrs : Set where
  field stakeDistr  : VDeleg ⇀ Coin

record RatifyEnv : Set where
  field stakeDistrs   : StakeDistrs
        currentEpoch  : Epoch
        dreps         : Credential ⇀ Epoch
        ccHotKeys     : Credential ⇀ Maybe Credential
        treasury      : Coin

record RatifyState : Set where
  constructor ⟦_,_,_⟧ʳ
  field es              : EnactState
        removed         : ℙ (GovActionID × GovActionState)
        delay           : Bool

CCData : Set
CCData = Maybe ((Credential ⇀ Epoch) × ℚ)

govRole : VDeleg → GovRole
govRole (credVoter gv _)  = gv
govRole abstainRep        = DRep
govRole noConfidenceRep   = DRep

IsCC IsDRep IsSPO : VDeleg → Set
IsCC    v = govRole v ≡ CC
IsDRep  v = govRole v ≡ DRep
IsSPO   v = govRole v ≡ SPO
\end{code}
\caption{Types and functions for the RATIFY transition system}
\label{fig:types-and-functions-for-the-ratify-transition-system}
\end{figure*}
As mentioned earlier, each \GovAction must include a \GovActionID
for the most recently enacted action of its given type. Consequently, two actions of the
same type can be enacted at the same time, but they must be \emph{deliberately}
designed to do so.

Figure~\ref{fig:types-and-functions-for-the-ratify-transition-system} defines three more types and some helper functions used in the ratification transition system.
\begin{itemize}
\item \StakeDistrs represents a map relating each voting delegate to an amount of stake;
\item \RatifyEnv denotes an environment with data required for ratification;
\item \RatifyState denotes an enactment state that exists during ratification;
\item \CCData stores data about the constitutional committee.
\item \IsCC, \IsDRep, and \IsSPO, which hold if the given delegate is a \CC member, a \DRep, or an \SPO (resp.), computed via \govRole.
\end{itemize}
\begin{code}[hide]
open StakeDistrs

-- TODO: remove these or put them into RatifyState
coinThreshold rankThreshold : ℕ
coinThreshold = 1000000000
rankThreshold = 1000

-- DReps with at least `c` coins
mostStakeDRepDist : Credential ⇀ Coin → Coin → Credential ⇀ Coin
mostStakeDRepDist dist c = dist ↾' (_≥ c)

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
\begin{AgdaAlign}
\begin{code}
actualPDRepVotes : GovAction → VDeleg ⇀ Vote
actualPDRepVotes NoConfidence  =   ❴ abstainRep , Vote.abstain ❵
                               ∪ˡ  ❴ noConfidenceRep , Vote.yes ❵
actualPDRepVotes _             =   ❴ abstainRep , Vote.abstain ❵
                               ∪ˡ  ❴ noConfidenceRep , Vote.no ❵

actualVotes  : RatifyEnv → PParams → CCData → GovAction
             → GovRole × Credential ⇀ Vote → VDeleg ⇀ Vote
actualVotes Γ pparams cc ga votes  =   mapKeys (credVoter CC) (actualCCVotes cc)
                                   ∪ˡ  actualPDRepVotes ga
                                   ∪ˡ  actualDRepVotes
                                   ∪ˡ  actualSPOVotes ga
  where
  open RatifyEnv Γ
  open PParams pparams

  activeDReps : ℙ Credential
  activeDReps = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) dreps)

  activeCC : CCData → ℙ Credential
  activeCC (just (cc , _))  = dom (filterᵐ (λ (_ , x) → Is-just x) (ccHotKeys ∣ dom cc))
  activeCC nothing          = ∅

  spos : ℙ VDeleg
  spos = filterˢ IsSPO (dom (stakeDistr stakeDistrs))

  actualCCVote : Credential → Epoch → Vote
  actualCCVote c e = case ¿ currentEpoch ≤ e ¿ᵇ , lookupᵐ? ccHotKeys c of
    λ where  (true , just (just c'))  → maybe id Vote.no (lookupᵐ? votes (CC , c'))
             _                        → Vote.abstain -- expired, no hot key or resigned

  actualCCVotes : CCData → Credential ⇀ Vote
  actualCCVotes nothing          =  ∅
  actualCCVotes (just (cc , q))  =  if ccMinSize ≤ lengthˢ (activeCC (just (cc , q)))
                                    then mapWithKey actualCCVote cc
                                    else constMap (dom cc) Vote.no

  roleVotes : GovRole → VDeleg ⇀ Vote
  roleVotes r = mapKeys (uncurry credVoter) (filterᵐ (λ (x , _) → r ≡ proj₁ x) votes)

  actualSPOVotes : GovAction → VDeleg ⇀ Vote
  actualSPOVotes (TriggerHF _)  = roleVotes GovRole.SPO ∪ˡ constMap spos Vote.no
  actualSPOVotes _              = roleVotes GovRole.SPO ∪ˡ constMap spos Vote.abstain

  actualDRepVotes : VDeleg ⇀ Vote
  actualDRepVotes  =   roleVotes GovRole.DRep
                   ∪ˡ  constMap (mapˢ (credVoter DRep) activeDReps) Vote.no
\end{code}
\end{AgdaAlign}
\caption{%Ratify i:
Types and proofs for the ratification of governance actions}
\label{fig:defs:ratify-i}
\end{figure*}
The code in Figure~\ref{fig:defs:ratify-i} defines some of the functions required for ratification of a governance action.
\begin{itemize}
  \item We assume a ratification environment \AgdaPostulate{Γ} and define essential vote-counting functions whose behaviors
  depend on \AgdaPostulate{Γ} as well as other inputs such as
  \begin{itemize}
    \item \agdaboundcc (of type \CCData), constitutional committee data;
    \item \agdaboundvotes, a relation associating each role-credential pair with the vote cast by the individual denoted by that pair;
    \item \agdaboundga (of type \GovAction), the governance action being voted upon.
  \end{itemize}

  \item \actualPDRepVotes determines how the votes will be counted for \DReps;
  here, \abstainRep is mapped to \abstain and \noConfidenceRep is mapped to either \yes or \no,
  depending on the value of \agdaboundga.

  \item \actualCCVote determines how the vote of each \CC member will be counted; specifically, if a \CC member has not yet registered a hot key, has
  \expired, or has resigned, then \actualCCVote returns \abstain;
  if those none of these conditions is met, then
  \begin{itemize}
    \item if the \CC member has voted, then that vote is returned;
    \item if the \CC member has not voted, then the default value of \no is returned.
  \end{itemize}

  \item \actualCCVotes uses \actualCCVote to determine how the votes of all \CC members will be counted.

  \item \roleVotes filters the votes based on the given governance role and is essentially a helper function for
  \actualSPOVotes and \actualDRepVotes.

  \item \actualSPOVotes determines how the votes of \SPOs will be counted; \SPOs that didn't vote count as
  \abstain, unless the action to be voted upon is a hard-fork in which case the default vote is \no.

  \item \actualDRepVotes determines how the votes of \DReps will be counted; \activeDReps that didn't vote count as a \no.

  \item \actualVotes is a partial function relating delegates to the actual vote that will be counted on their behalf;
  it accomplishes this by aggregating the results of \actualCCVotes, \actualPDRepVotes, \actualSPOVotes, and \actualDRepVotes.
\end{itemize}

\begin{figure*}[h!]
\begin{code}[hide]
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

  acceptedBy : RatifyEnv → EnactState → GovActionState → GovRole → Set
  acceptedBy Γ (record { cc = cc , _; pparams = pparams , _ }) gs role =
    let open GovActionState gs
        votes'  = actualVotes Γ pparams cc action votes
        t       = maybe id 0ℚ (threshold pparams (proj₂ <$> cc) action role)
    in acceptedStakeRatio role (dom votes') (RatifyEnv.stakeDistrs Γ) votes' ≥ t

  accepted : RatifyEnv → EnactState → GovActionState → Set
  accepted Γ es gs = acceptedBy Γ es gs CC ∧ acceptedBy Γ es gs DRep ∧ acceptedBy Γ es gs SPO

  expired : Epoch → GovActionState → Set
  expired current record { expiresIn = expiresIn } = expiresIn < current
\end{code}
\caption{%%Ratify iii:
Calculation of stake distributions}
\label{fig:defs:ratify-iii}
\end{figure*}
The code in Figure~\ref{fig:defs:ratify-iii} defines yet more types required for ratification of a governance action.
\begin{itemize}
  \item \getStakeDist computes the stake distribution based on the given governance role and the corresponding delegations;
  \item \acceptedStake calculates the sum of stakes for all delegations that voted \yes for the specified role;
  \item \totalStake calculates the sum of stakes for all delegations that didn't vote \abstain for the given role;
  \item \activeVotingStake computes the total stake for the role of \DRep for active voting; it calculates the sum of
  stakes for all active delegates that have not voted (i.e., their delegation is present in \CC but not in the \agdaboundvotes mapping);
  \item \accepted checks if an action is accepted for the \CC, \DRep, and \SPO roles and whether it meets the minimum active voting stake (\meetsMinAVS);
  \item \expired checks whether a governance action is expired in a given epoch.
\end{itemize}
\begin{figure*}[h!]
\begin{code}[hide]
open EnactState
\end{code}
\begin{code}
verifyPrev : (a : GovAction) → NeedsHash a → EnactState → Set
verifyPrev NoConfidence           h es  = h ≡ es .cc .proj₂
verifyPrev (NewCommittee _ _ _)   h es  = h ≡ es .cc .proj₂
verifyPrev (NewConstitution _ _)  h es  = h ≡ es .constitution .proj₂
verifyPrev (TriggerHF _)          h es  = h ≡ es .pv .proj₂
verifyPrev (ChangePParams _)      h es  = h ≡ es .pparams .proj₂
verifyPrev (TreasuryWdrl _)       _ _   = ⊤
verifyPrev Info                   _ _   = ⊤

delayingAction : GovAction → Bool
delayingAction NoConfidence           = true
delayingAction (NewCommittee _ _ _)   = true
delayingAction (NewConstitution _ _)  = true
delayingAction (TriggerHF _)          = true
delayingAction (ChangePParams _)      = false
delayingAction (TreasuryWdrl _)       = false
delayingAction Info                   = false

delayed : (a : GovAction) → NeedsHash a → EnactState → Bool → Set
delayed a h es d = ¬ verifyPrev a h es ⊎ d ≡ true
\end{code}
\begin{code}[hide]
abstract
  verifyPrev? : ∀ a h es → Dec (verifyPrev a h es)
  verifyPrev? NoConfidence           h es = dec
  verifyPrev? (NewCommittee x x₁ x₂) h es = dec
  verifyPrev? (NewConstitution x x₁) h es = dec
  verifyPrev? (TriggerHF x)          h es = dec
  verifyPrev? (ChangePParams x)      h es = dec
  verifyPrev? (TreasuryWdrl x)       h es = dec
  verifyPrev? Info                   h es = dec

  delayed? : ∀ a h es d → Dec (delayed a h es d)
  delayed? a h es d = let instance _ = ⁇ verifyPrev? a h es in dec

  acceptedBy? : ∀ Γ es st role → Dec (acceptedBy Γ es st role)
  acceptedBy? Γ record{ cc = cc , _ ; pparams = pparams , _ } st role = _ ℚ.≤? _

  accepted? : ∀ Γ es st → Dec (accepted Γ es st)
  accepted? Γ es st = let instance _ = ⁇¹ acceptedBy? Γ es st in dec

  expired? : ∀ e st → Dec (expired e st)
  expired? e st = ¿ expired e st ¿
\end{code}
\caption{%Ratify iv:
Determination of the status of ratification of the governance action}
\label{fig:defs:ratify-iv}
\end{figure*}
The code in Figure~\ref{fig:defs:ratify-iv} defines still more types required for ratification of a governance action.
\begin{itemize}
  \item \verifyPrev takes a governance action, its \NeedsHash, and \EnactState and checks whether the ratification restrictions are met;
  \item \delayingAction takes a governance action and returns \true if it is a ``delaying action'' (\NoConfidence, \NewCommittee, \NewConstitution, \TriggerHF)
  and returns \false otherwise;
  \item \delayed checks whether a given \GovAction is delayed.
\end{itemize}
\begin{code}[hide]
private variable
  Γ : RatifyEnv
  es es' : EnactState
  a : GovActionID × GovActionState
  removed : ℙ (GovActionID × GovActionState)
  d : Bool

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Set where

\end{code}
\begin{figure*}[h!]
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
                 → RatifyState → Set
_⊢_⇀⦇_,RATIFY⦈_ = ReflexiveTransitiveClosure _⊢_⇀⦇_,RATIFY'⦈_
\end{code}
\caption{The RATIFY transition system}
\label{fig:ratify-transition-system}
\end{figure*}
Figure~\ref{fig:ratify-transition-system} defines three rules,
\RATIFYAccept, \RATIFYReject, and \RATIFYContinue, along with the relation \RATIFYsyntax.
The latter is the transition relation for ratification of a \GovAction.
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
