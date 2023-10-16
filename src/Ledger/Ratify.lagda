\section{Ratification}
\label{sec:ratification}
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
Figure~\ref{fig:ratification-requirements} details the ratification requirements for each
governance action scenario. The columns represent
\begin{itemize}
\item
  \GovAction: the action under consideration;
\item
  \CC: a \ding{51} indicates that the constitutional committee must approve this action;
  a - symbol means that constitutional committee votes do not apply;
\item
  \DRep: the vote threshold that must be met as a percentage of \totalStake;
\item
  \SPO: the vote threshold that must be met as a percentage of the stake held by
  all stake pools; a - symbol means that \SPO votes do not apply.
\end{itemize}
\begin{figure*}[h!]
\begin{longtable}[]{@{}
   >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.65}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.11}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.12}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.12}}@{}}
\GovAction  & \CC  &  \DRep & \SPO \\
\hline
\endhead
1. Motion of no-confidence & - & \Pone & \Qone \\
2a. New committee/threshold (\emph{normal state}) & - & \Ptwoa & \Qtwoa \\
2b. New committee/threshold (\emph{state of no-confidence}) & - & \Ptwob & \Qtwob \\
3. Update to the Constitution & \ding{51} & \Pthree & - \\
4. Hard-fork initiation & \ding{51} & \Pfour & \Qfour \\
5a. Changes to protocol parameters in the \NetworkGroup & \ding{51} & \Pfivea & - \\
5b. Changes to protocol parameters in the \EconomicGroup & \ding{51} & \Pfiveb & - \\
5c. Changes to protocol parameters in the \TechnicalGroup & \ding{51} & \Pfivec & - \\
5d. Changes to protocol parameters in the \GovernanceGroup & \ding{51} & \Pfived & - \\
6. Treasury withdrawal & \ding{51} & \Psix & - \\
7. Info & \ding{51} & \(100\) & \(100\) \\
\end{longtable}
\caption{Ratification requirements}
\label{fig:ratification-requirements}
\end{figure*}
Each of these thresholds is a governance parameter.  The two thresholds for the \Info
action are set to 100\% since setting it any lower would result in not being able to poll
above the threshold.

\subsection{Ratification restrictions}
\label{sec:ratification-restrictions}
\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Integer as ℤ
open import Data.Rational as ℚ using (ℚ; 0ℚ)
open import Data.Nat.Properties hiding (_≟_; _≤?_)
open import Data.Nat.Properties.Ext

open import Ledger.Prelude hiding (_∧_)
open import Ledger.Transaction

module Ledger.Ratify (txs : _) (open TransactionStructure txs) where

open import Ledger.Gov govStructure

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
  _ = +-0-monoid
\end{code}
\begin{figure*}[h!]
{\small
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
CCData = Maybe (Credential ⇀ Epoch × ℚ)

isCC : VDeleg → Bool
isCC (credVoter CC _)  = true
isCC _                 = false

isDRep : VDeleg → Bool
isDRep (credVoter DRep _)  = true
isDRep (credVoter _ _)     = false
isDRep abstainRep          = true
isDRep noConfidenceRep     = true

isSPO : VDeleg → Bool
isSPO (credVoter SPO _)  = true
isSPO _                  = false
\end{code}
\begin{code}[hide]
isCCProp : specProperty λ x → isCC x ≡ true
isCCProp = to-sp (λ x → isCC x ≟ true)

isDRepProp : specProperty λ x → isDRep x ≡ true
isDRepProp = to-sp (λ x → isDRep x ≟ true)

isSPOProp : specProperty λ x → isSPO x ≡ true
isSPOProp = to-sp (λ x → isSPO x ≟ true)
\end{code}
} %% end small
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
\item \isCC, \isDRep, and \isSPO, which return \true if the given delegate is a \CC member, a \DRep, or an \SPO (resp.) and \false otherwise.
\end{itemize}
\begin{code}[hide]
-- TODO: remove these or put them into RatifyState
coinThreshold rankThreshold : ℕ
coinThreshold = 1000000000
rankThreshold = 1000

-- DReps with at least `c` coins
mostStakeDRepDist : Credential ⇀ Coin → Coin → Credential ⇀ Coin
mostStakeDRepDist dist c = dist ↾' to-sp (_≥? c)

-- mostStakeDRepDist-homomorphic : ∀ {dist} → Homomorphic₂ _ _ _>_ (_⊆_ on _ˢ) (mostStakeDRepDist dist)
-- mostStakeDRepDist-homomorphic x>y = impl⇒cores⊆ _ _ {!!} --(<-trans x>y)

mostStakeDRepDist-0 : ∀ {dist} → mostStakeDRepDist dist 0 ≡ᵉᵐ dist
mostStakeDRepDist-0 = (proj₂ ∘ Equivalence.from ∈-filter)
                    , λ x → Equivalence.to ∈-filter (z≤n , x)

-- TODO: maybe this can be proven easier with the maximum?
mostStakeDRepDist-∅ : ∀ {dist} → ∃[ N ] mostStakeDRepDist dist N ˢ ≡ᵉ ∅
mostStakeDRepDist-∅ {dist} = suc (Σᵐᵛ[ x ← dist ᶠᵐ ] x) , Properties.∅-least
  (⊥-elim ∘ uncurry helper ∘ Equivalence.from ∈-filter)
  where
    open ≤-Reasoning

    helper : ∀ {k v} → v > Σᵐᵛ[ x ← dist ᶠᵐ ] x → (k , v) ∉ dist
    helper {k} {v} v>sum kv∈dist = 1+n≰n $ begin-strict
      v
        ≡˘⟨ indexedSum-singleton' $ finiteness ❴ k , v ❵ ⟩
      Σᵐᵛ[ x ← ❴ k , v ❵ᵐ ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-cong {x = (dist ∣ ❴ k ❵) ᶠᵐ} {y = ❴ k , v ❵ᵐ ᶠᵐ}
          $ res-singleton' {m = dist} kv∈dist ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x
        ≤⟨ m≤m+n _ _ ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x +ℕ Σᵐᵛ[ x ← (dist ∣ ❴ k ❵ ᶜ) ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-partition {m = dist ᶠᵐ} {(dist ∣ ❴ k ❵) ᶠᵐ} {(dist ∣ ❴ k ❵ ᶜ) ᶠᵐ}
          $ res-ex-disj-∪ Properties.Dec-∈-singleton ⟩
      Σᵐᵛ[ x ← dist ᶠᵐ ] x
        <⟨ v>sum ⟩
      v ∎

∃topNDRepDist : ∀ {n dist} → lengthˢ (dist ˢ) ≥ n → n > 0
                → ∃[ c ] lengthˢ (mostStakeDRepDist dist c ˢ) ≥ n
                       × lengthˢ (mostStakeDRepDist dist (suc c) ˢ) < n
∃topNDRepDist {n} {dist} length≥n n>0 =
  let
    c , h , h' =
      negInduction (λ _ → _ ≥? n)
        (subst (_≥ n) (sym $ lengthˢ-≡ᵉ _ _ (mostStakeDRepDist-0 {dist})) length≥n)
        (map₂′ (λ h h'
                  → ≤⇒≯ (subst (_≥ n) (trans (lengthˢ-≡ᵉ _ _ h) lengthˢ-∅) h') n>0)
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
        restrict dist = topNDRepDist rank dist ∪ᵐˡ mostStakeDRepDist dist coins
\end{code}
\begin{figure*}[h!]
{\small
\begin{code}
actualVotes : RatifyEnv → CCData → (GovRole × Credential) ⇀ Vote → GovAction → PParams
            → VDeleg ⇀ Vote
actualVotes Γ cc votes ga pparams
  =    mapKeys (credVoter CC) actualCCVotes
  ∪ᵐˡ  actualPDRepVotes ∪ᵐˡ actualDRepVotes
  ∪ᵐˡ  actualSPOVotes
  where
    open RatifyEnv Γ
    open PParams pparams

    roleVotes : GovRole → VDeleg ⇀ Vote
    roleVotes r = mapKeys (uncurry credVoter) (filterᵐ? ((r ≟_) ∘ proj₁ ∘ proj₁) votes)

    activeCC activeDReps : ℙ Credential
    activeCC = case cc of λ where
      (just (cc , _))  → dom (filterᵐᵇ (is-just ∘ proj₂) (ccHotKeys ∣ dom cc))
      nothing          → ∅

    activeDReps = dom (filterᵐ? (λ x → currentEpoch ≤? (proj₂ x)) dreps)

    actualCCVote : Credential → Epoch → Vote
    actualCCVote c e =
      case ¿ currentEpoch ≤ e ¿ᵇ , lookupᵐ? ccHotKeys c of λ where
        (true , just (just c'))  → maybe id Vote.no $ lookupᵐ? votes (CC , c')
        _                        → Vote.abstain -- expired, no hot key or resigned

    actualCCVotes : Credential ⇀ Vote
    actualCCVotes = case cc , ¿ ccMinSize ≤ lengthˢ activeCC ¿ᵇ of λ where
      (just (cc , _)  , true)   → mapWithKey actualCCVote cc
      (just (cc , _)  , false)  → constMap (dom cc) Vote.no
      (nothing        , _)      → ∅ᵐ

    actualPDRepVotes
      =    ❴ abstainRep       , Vote.abstain ❵ᵐ
      ∪ᵐˡ  ❴ noConfidenceRep  , (case ga of λ where  NoConfidence  → Vote.yes
                                                     _             → Vote.no) ❵ᵐ

    actualDRepVotes
      =    roleVotes GovRole.DRep
      ∪ᵐˡ  constMap (mapˢ (credVoter DRep) activeDReps) Vote.no

    actualSPOVotes
      =    roleVotes GovRole.SPO
      ∪ᵐˡ  constMap spos (if isHF then Vote.no else Vote.abstain)
      where
        spos : ℙ VDeleg
        spos = filterˢ isSPOProp $ dom (StakeDistrs.stakeDistr stakeDistrs)

        isHF : Bool
        isHF = case ga of λ where
          (TriggerHF _)  → true
          _              → false
\end{code}
} %% end small
\caption{%Ratify i:
Types and proofs for the ratification of governance actions}
\label{fig:defs:ratify-i}
\end{figure*}
The code in Figure~\ref{fig:defs:ratify-i} defines some of the types required for ratification of a governance action.
\begin{itemize}
  \item Assuming a ratification environment \AgdaPostulate{Γ},
  \begin{itemize}
    \item \agdaboundcc contains constitutional committee data;
    \item \agdaboundvotes is a relation associating each role-credential pair with the vote cast by the individual denoted by that pair;
    \item \agdaboundga denotes the governance action being voted upon.
  \end{itemize}

  \item \roleVotes filters the votes based on the given governance role.

  \item \actualCCVote determines how the vote of each \CC member will be counted; specifically, if a \CC member has not yet registered a hot key, has
  \expired, or has resigned, then \actualCCVote returns \abstain;
  if those none of these conditions is met, then
  \begin{itemize}
    \item if the \CC member has voted, then that vote is returned;
    \item if the \CC member has not voted, then the default value of \no is returned.
  \end{itemize}

  \item \actualCCVotes uses \actualCCVote to determine how the votes of all \CC members will be counted.

  \item \actualPDRepVotes determines how the votes will be counted for \DReps;
  here, \abstainRep is mapped to \abstain and \noConfidenceRep is mapped to either \yes or \no,
  depending on the value of \agdaboundga.

  \item \actualDRepVotes determines how the votes of \DReps will be counted; \activeDReps that didn't vote count as a \no.

  \item \actualVotes is a partial function relating delegates to the actual vote that will be counted on their behalf;
  it accomplishes this by aggregating the results of \actualCCVotes, \actualPDRepVotes, and \actualDRepVotes.
\end{itemize}
\begin{figure*}[h!]
{\small
\begin{code}
votedHashes : Vote → (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedHashes v votes r = votes ⁻¹ v

votedYesHashes : (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedYesHashes = votedHashes Vote.yes

votedAbstainHashes participatingHashes : (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedAbstainHashes = votedHashes Vote.abstain
participatingHashes votes r = votedYesHashes votes r ∪ votedHashes Vote.no votes r
\end{code}
} %% end small
\caption{Calculation of the votes as they will be counted}
\label{fig:defs:ratify-ii}
\end{figure*}

The code in Figure~\ref{fig:defs:ratify-ii} defines \votedHashes, which returns the set of delegates who voted a certain way on the given governance role.
\begin{figure*}[h!]
{\small
\begin{code}
getStakeDist : GovRole → ℙ VDeleg → StakeDistrs → VDeleg ⇀ Coin
getStakeDist CC    cc  _                             = constMap (filterˢ isCCProp cc) 1
getStakeDist DRep  _   record { stakeDistr = dist }  = filterᵐ (sp-∘ isDRepProp  proj₁) dist
getStakeDist SPO   _   record { stakeDistr = dist }  = filterᵐ (sp-∘ isSPOProp   proj₁) dist

acceptedStake : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
acceptedStake r cc dists votes =
  Σᵐᵛ[ x ← (getStakeDist r cc dists ∣ votedYesHashes votes r) ᶠᵐ ] x

totalStake : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
totalStake r cc dists votes =
  Σᵐᵛ[ x  ← getStakeDist r cc dists ∣ votedAbstainHashes votes r ᶜ ᶠᵐ ] x

activeVotingStake : ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
activeVotingStake cc dists votes =
  Σᵐᵛ[ x  ← getStakeDist DRep cc dists ∣ dom votes ᶜ ᶠᵐ ] x

accepted' : RatifyEnv → EnactState → GovActionState → Set
accepted' Γ (record { cc = cc , _ ; pparams = pparams , _ }) gs =
  acceptedBy CC ∧ acceptedBy DRep ∧ acceptedBy SPO ∧ meetsMinAVS
  where
    open RatifyEnv Γ; open GovActionState gs; open PParams pparams

    votes' = actualVotes Γ cc votes action pparams
    cc' = dom votes'
    redStakeDistr = restrictedDists coinThreshold rankThreshold stakeDistrs

    meetsMinAVS : Set
    meetsMinAVS = activeVotingStake cc' redStakeDistr votes' ≥ minimumAVS

    acceptedBy : GovRole → Set
    acceptedBy role =
      let t = maybe id 0ℚ $ threshold pparams (proj₂ <$> cc) action role in
      case totalStake role cc' redStakeDistr votes' of λ where
        0 → t ≡ 0ℚ -- if there's no stake, accept only if threshold is zero
        x@(suc _) → ℤ.+ acceptedStake role cc' redStakeDistr votes' ℚ./ x ℚ.≥ t

expired : Epoch → GovActionState → Set
expired current record { expiresIn = expiresIn } = expiresIn < current
\end{code}
} %% end small
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
{\small
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
} %% end small
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

-- having `accepted` abstract speeds up type checking of RATIFY' a lot
abstract
  accepted : RatifyEnv → EnactState → GovActionState → Set
  accepted = accepted'

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Set where

\end{code}
\begin{figure*}[h!]
{\small
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
    ⊎  delayed action prevAction es d
    ⊎  accepted Γ es st
       × ¬ delayed action prevAction es d
       × (∀ es' → ¬ ⟦ a .proj₁ , treasury , currentEpoch ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es')
    ────────────────────────────────
    Γ ⊢ ⟦ es , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , removed , d ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_  : RatifyEnv → RatifyState → List (GovActionID × GovActionState)
                 → RatifyState → Set
_⊢_⇀⦇_,RATIFY⦈_ = SS⇒BS _⊢_⇀⦇_,RATIFY'⦈_
\end{code}
} %% end small
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
