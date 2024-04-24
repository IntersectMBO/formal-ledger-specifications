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

module Ledger.Ratify2 (txs : _) (open TransactionStructure txs) where

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

\subsection{Ratification requirements}
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
\DRep and \SPO thresholds simultaneously: the rows for \NewCommittee
and \ChangePParams.

For \NewCommittee, there can be different thresholds depending on whether the
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

Each of the $P_x$ and $Q_x$ are protocol parameters.
\begin{figure*}[h]
\begin{AgdaMultiCode}
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
\begin{code}
threshold : PParams → Maybe ℚ → GovAction → GovRole → Maybe ℚ
threshold pp ccThreshold =
\end{code}
\begin{code}[hide]
  λ where
\end{code}
\begin{code}
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
        P/Q2a/b =  case ccThreshold of
\end{code}
\begin{code}[hide]
          λ where
\end{code}
\begin{code}
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

\subsection{Protocol parameters and governance actions}
\label{sec:protocol-parameters-and-governance-actions}
Voting thresholds for protocol parameters can be set by group, and we do not require that each protocol
parameter governance action be confined to a single group. In case a governance action carries updates
for multiple parameters from different groups, the maximum threshold of all the groups involved will
apply to any given such governance action.

The purpose of the \SecurityGroup is to add an additional check to
security-relevant protocol parameters. Any proposal that includes a
change to a security-relevant protocol parameter must also be accepted
by at least half of the SPO stake.

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

  activeCC : (Credential ⇀ Epoch) → ℙ Credential
  activeCC m = mapPartial getCCHotCred (m ˢ)

  actualCCVotes : Credential ⇀ Vote
  actualCCVotes = case cc of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    nothing         →  ∅
    (just (m , q))  →  if ccMinSize ≤ lengthˢ (activeCC m)
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
