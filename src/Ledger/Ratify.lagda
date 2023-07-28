\section{Ratification\protect\footnotemark}
\label{sec:ratification}
\footnotetext{See also \href{https://github.com/cardano-foundation/CIPs/tree/master/CIP-1694}{github.com/cardano-foundation/CIPs/CIP-1694}}
Governance actions are \defn{ratified} through on-chain voting actions.
Different kinds of governance actions have different ratification requirements
but always involve \textit{two of the three} governance bodies, with the exception
of a hard-fork initiation, which requires ratification by all governance bodies.
Depending on the type of governance action, an action will thus be ratified when
a combination of the following occurs:
\begin{itemize}
\item
  the constitutional committee approves of the action (the number of
  members who vote ``Yes'' meets the threshold of the constitutional
  committee)
\item
  the DReps approve of the action (the stake controlled by the DReps who
  vote ``Yes'' meets a certain threshold of the total active voting stake)
\item
  the SPOs approve of the action (the stake controlled by the SPOs who
  vote ``Yes'' meets a certain threshold over the total registered voting
  stake)
\end{itemize}
\textbf{Warning}. Different stake distributions apply to DReps and SPOs.
\\[4pt]
A successful motion of no-confidence, election of a new constitutional
committee, a constitutional change or a hard-fork delays ratification of
all other governance actions until the first epoch after their
enactment. This gives a new constitutional committee enough time to vote
on current proposals, re-evaluate existing proposals with respect to a
new constitution, and ensures that the in principle arbitrary semantic
changes caused by enacting a hard-fork do not have unintended
consequences in combination with other actions.

\subsection{Ratification requirements}
\label{sec:ratification-requirements}
The following table details the ratification requirements for each
governance action scenario. The columns represent:
\begin{itemize}
\item
  \textbf{Governance action type}. The type of governance action. Note
  that the protocol parameter updates are grouped into three categories.
\item
  \textbf{Constitutional committee (CC)}. A value of \ding{51} indicates
  that the constitutional committee must approve this action.
  A value of - means that constitutional committee votes do not apply.
\item
  \textbf{DReps}. The DRep vote threshold that must be met as a
  percentage of \emph{active voting stake}. A value of - means that
  DReps votes do not apply.
\item
  \textbf{SPOs}. The SPO vote threshold which must be met as a percentage
  of the stake held by all stake pools. A value of - means that SPO
  votes do not apply.
\end{itemize}

\begin{table}[h]
\begin{longtable}[]{@{}
   >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.4}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.2}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.2}}
  >{\raggedright\arraybackslash}p{(\columnwidth - 6\tabcolsep) * \real{0.2}}@{}}
\hline
\textbf{Action}  & \textbf{CC}  &  \textbf{DRep} & \textbf{SPO} \\
\hline
\endhead
1. Motion of no-confidence & - & \AgdaField{P1} & \AgdaField{Q1} \\
2a. New committee/threshold (\emph{normal state}) & - & \AgdaField{P2a} & \AgdaField{Q2a} \\
2b. New committee/threshold (\emph{state of no-confidence}) & - & \AgdaField{P2b} & \AgdaField{Q2b} \\
3. Update to the Constitution & \ding{51} & \AgdaField{P3} & - \\
4. Hard-fork initiation & \ding{51} & \AgdaField{P4} & \AgdaField{Q4} \\
5a. Protocol parameter changes, network group & \ding{51} & \AgdaField{P5a} & - \\
5b. Protocol parameter changes, economic group & \ding{51} & \AgdaField{P5b} & - \\
5c. Protocol parameter changes, technical group & \ding{51} & \AgdaField{P5c} & - \\
5d. Protocol parameter changes, governance group & \ding{51} & \AgdaField{P5d} & - \\
6. Treasury withdrawal & \ding{51} & \AgdaField{P6} & - \\
7. Info & \ding{51} & \(100\) & \(100\) \\
\hline
\end{longtable}
\end{table}
Each of these thresholds is a governance parameter. The initial thresholds should be chosen by
the Cardano community as a whole. The two thresholds for the \AgdaInductiveConstructor{Info}
action are set to 100\% since setting it any lower would result in not being able to poll
above the threshold.
\\[4pt]
\textbf{Remarks}.
\begin{enumerate}
\item It may make sense for some or all thresholds to be adaptive with respect
to the Lovelace that is actively registered to vote. For example, a threshold
could vary between 51\% for a high level of registration and 75\% for a low
level registration. Moreover, the treasury threshold could also be adaptive,
depending on the total Lovelace that is being withdrawn, or different thresholds
could be set for different levels of withdrawal.
\item To achieve legitimacy, the minimum acceptable threshold should be no less
than 50\% of the delegated stake.
\end{enumerate}

\subsection{Ratification restrictions}
\label{sec:ratification-restrictions}
Apart from \emph{Treasury withdrawals} and \emph{Infos}, we include a mechanism for ensuring
that governance actions of the same type do not accidentally clash with each other in an unexpected way.

Each governance action must include a \defn{governance action identifier} (\AgdaSymbol{:}\,\AgdaDatatype{GovActionId})
for the most recently enacted action of its given type. This means that two actions of the same type can
be enacted at the same time, but they must be \emph{deliberately} designed to do so.
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ratify (txs : TransactionStructure) where

open import Ledger.Prelude hiding (_∧_)

open TransactionStructure txs
open import Ledger.Gov TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open import Ledger.PParams epochStructure

import Data.Integer as Z
import Data.Maybe
import Data.Rational as R
open import Data.Nat hiding (_≟_)
open import Data.Nat.Properties hiding (_≟_)
open import Data.Nat.Properties.Ext
open import Data.Product using (map₂)

open import Relation.Nullary.Decidable using (⌊_⌋)

infixr 2 _∧_
_∧_ = _×_

instance
  _ = +-0-commutativeMonoid
  _ = +-0-monoid
\end{code}
\begin{itemize}
\item \AgdaRecord{StakeDistrs} is a record type with one field, \AgdaField{stakeDistr},
      which is a map from voting delegate to quantity of Ada
      (i.e., a map of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Coin}).
\item \AgdaRecord{RatifyEnv} is a record type with four fields,
  \begin{itemize}
    \item \AgdaField{stakeDistrs} of type \AgdaRecord{StakeDistrs};
    \item \AgdaField{currentEpoch} of type \AgdaDatatype{Epoch};
    \item \AgdaField{dreps}, a map of type \AgdaDatatype{Credential}~\AgdaDatatype{⇀}~\AgdaDatatype{Epoch};
    \item \AgdaField{ccHotKeys}, a map of type \AgdaDatatype{KeyHash}~\AgdaDatatype{⇀}~\AgdaDatatype{Maybe}~\AgdaDatatype{KeyHash}.
  \end{itemize}
\item \AgdaBound{RatifyState} is a record type with four fields,
  \begin{itemize}
    \item \AgdaField{es} of type \AgdaRecord{EnactState};
    \item \AgdaField{future} of type \AgdaDatatype{List}~(\AgdaDatatype{GovActionID}~\AgdaDatatype{×}~\AgdaRecord{GovActionState});
    \item \AgdaField{removed} of type \AgdaDatatype{List}~(\AgdaDatatype{GovActionID}~\AgdaDatatype{×}~\AgdaRecord{GovActionState});
    \item \AgdaField{delay} of type \AgdaDatatype{Bool}.
  \end{itemize}
\end{itemize}
\begin{figure*}[h!]
\begin{code}
record StakeDistrs : Set where
  field stakeDistr  : VDeleg ⇀ Coin

record RatifyEnv : Set where
  field stakeDistrs   : StakeDistrs
        currentEpoch  : Epoch
        dreps         : Credential ⇀ Epoch
        ccHotKeys     : KeyHash ⇀ Maybe KeyHash

record RatifyState : Set where
  constructor ⟦_,_,_,_⟧ʳ
  field es              : EnactState
        future          : List (GovActionID × GovActionState)
        removed         : List (GovActionID × GovActionState)
        delay           : Bool
\end{code}
\caption{Types and functions for the RATIFY transition system}
\end{figure*}

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
mostStakeDRepDist-0 = (proj₂ ∘ Equivalence.from ∈-filter) , λ x → Equivalence.to ∈-filter (z≤n , x)

-- TODO: maybe this can be proven easier with the maximum?
mostStakeDRepDist-∅ : ∀ {dist} → ∃[ N ] mostStakeDRepDist dist N ˢ ≡ᵉ ∅
mostStakeDRepDist-∅ {dist} = suc (Σᵐᵛ[ x ← dist ᶠᵐ ] x) , Properties.∅-least
  (⊥-elim ∘ uncurry helper ∘ Equivalence.from ∈-filter)
  where
    open ≤-Reasoning

    helper : ∀ {k v} → v > Σᵐᵛ[ x ← dist ᶠᵐ ] x → ¬ (k , v) ∈ dist ˢ
    helper {k} {v} v>sum kv∈dist = 1+n≰n $ begin-strict
      v
        ≡˘⟨ indexedSum-singleton' (finiteness ❴ k , v ❵) ⟩
      Σᵐᵛ[ x ← ❴ k , v ❵ᵐ ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-cong {x = (dist ∣ ❴ k ❵) ᶠᵐ} {y = ❴ k , v ❵ᵐ ᶠᵐ}
                             (res-singleton' {m = dist} kv∈dist) ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x
        ≤⟨ m≤m+n _ _ ⟩
      Σᵐᵛ[ x ← (dist ∣ ❴ k ❵) ᶠᵐ ] x + Σᵐᵛ[ x ← (dist ∣ ❴ k ❵ ᶜ) ᶠᵐ ] x
        ≡˘⟨ indexedSumᵐ-partition {m = dist ᶠᵐ} {(dist ∣ ❴ k ❵) ᶠᵐ} {(dist ∣ ❴ k ❵ ᶜ) ᶠᵐ}
                                  (res-ex-disj-∪ Properties.Dec-∈-singleton) ⟩
      Σᵐᵛ[ x ← dist ᶠᵐ ] x
        <⟨ v>sum ⟩
      v ∎

∃topNDRepDist : ∀ {n dist} → lengthˢ (dist ˢ) ≥ n → n > 0
                → ∃[ c ] lengthˢ (mostStakeDRepDist dist c ˢ) ≥ n
                       × lengthˢ (mostStakeDRepDist dist (suc c) ˢ) < n
∃topNDRepDist {n} {dist} length≥n n>0 with negInduction (λ _ → _ ≥? n)
  (subst (_≥ n) (sym $ lengthˢ-≡ᵉ _ _ (mostStakeDRepDist-0 {dist})) length≥n)
  (map₂ (λ h h' → ≤⇒≯ (subst (_≥ n) (trans (lengthˢ-≡ᵉ _ _ h) lengthˢ-∅) h') n>0)
                     (mostStakeDRepDist-∅ {dist}))
... | (c , h , h') = c , h , ≰⇒> h'

topNDRepDist : ℕ → Credential ⇀ Coin → Credential ⇀ Coin
topNDRepDist n dist = case (lengthˢ (dist ˢ) ≥? n) ,′ (n >? 0) of λ where
  (_     , no  _)  → ∅ᵐ
  (no _  , yes _)  → dist
  (yes p , yes p₁) → mostStakeDRepDist dist (proj₁ (∃topNDRepDist {dist = dist} p p₁))

-- restrict the DRep stake distribution
-- commented out for now, since we don't know if that'll actually be implemented
restrictedDists : ℕ → ℕ → StakeDistrs → StakeDistrs
restrictedDists coins rank dists = dists -- record dists { drepStakeDistr = restrict drepStakeDistr }
  where open StakeDistrs dists
        -- one always includes the other
        restrict : Credential ⇀ Coin → Credential ⇀ Coin
        restrict dist = topNDRepDist rank dist ∪ᵐˡ mostStakeDRepDist dist coins

CCData : Set
CCData = Maybe (KeyHash ⇀ Epoch × R.ℚ)
\end{code}
The code in Figure~\ref{fig:defs:ratify-i} defines some types required for ratification of a governance action.
\begin{figure*}[h!]
\begin{code}
module _ (Γ : RatifyEnv) (cc : CCData) (votes : (GovRole × Credential) ⇀ Vote) (ga : GovAction) where

  open RatifyEnv Γ

  roleVotes : GovRole → (GovRole × Credential) ⇀ Vote
  roleVotes r = filterᵐ (to-sp ((r ≟_) ∘ proj₁ ∘ proj₁)) votes

  actualCCVote : KeyHash → Epoch → Vote
  actualCCVote kh e = case ⌊ currentEpoch ≤ᵉ? e ⌋ ,′ lookupᵐ? ccHotKeys kh ⦃ _ ∈? _ ⦄ of λ where
    (true , just (just hk)) → maybe′ id Vote.no $ lookupᵐ? votes (CC , (inj₁ hk)) ⦃ _ ∈? _ ⦄
    _                       → Vote.abstain -- expired, no hot key or resigned

  actualCCVotes : Credential ⇀ Vote
  actualCCVotes = case cc of λ where
    (just (cc , _)) → mapKeys inj₁ (mapWithKey actualCCVote cc) (λ where _ _ refl → refl)
    nothing         → ∅ᵐ

  actualPDRepVotes : VDeleg ⇀ Vote
  actualPDRepVotes = ❴ abstainRep      , Vote.abstain ❵ᵐ
                 ∪ᵐˡ ❴ noConfidenceRep , (case ga of λ where
                                           NoConfidence → Vote.yes
                                           _            → Vote.no) ❵ᵐ

  actualDRepVotes : VDeleg ⇀ Vote
  actualDRepVotes = mapKeys (uncurry credVoter) (roleVotes GovRole.DRep) (λ where _ _ refl → refl)
                  ∪ᵐˡ constMap (map (credVoter DRep) activeDReps) Vote.no
    where
      activeDReps : ℙ Credential
      activeDReps = dom (filterᵐ (to-sp (currentEpoch ≤ᵉ?_ ∘ proj₂)) dreps ˢ)

  actualVotes : VDeleg ⇀ Vote
  actualVotes = mapKeys (credVoter CC) actualCCVotes (λ where _ _ refl → refl)
              ∪ᵐˡ actualPDRepVotes ∪ᵐˡ actualDRepVotes
              ∪ᵐˡ mapKeys (uncurry credVoter) votes (λ where _ _ refl → refl) -- TODO: make `actualVotes` for SPO
\end{code}
\caption{Ratify i: Definitions required for types related to ratification of governance actions}
\label{fig:defs:ratify-i}
\end{figure*}
\begin{itemize}
  \item Module parameters:
  \begin{itemize}
    \item \AgdaBound{Γ} of type \AgdaRecord{RatifyEnv}
    \item \AgdaBound{cc} of type \AgdaDatatype{CCData}
    \item \AgdaBound{votes} of type \AgdaDatatype{GovRole}~\AgdaDatatype{×}~\AgdaDatatype{Credential}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}
    \item \AgdaBound{ga} of type \AgdaDatatype{GovAction}
  \end{itemize}

  \item \AgdaBound{roleVotes} of type \AgdaDatatype{GovRole}~\AgdaSymbol{→}~(\AgdaDatatype{GovRole}~\AgdaDatatype{×}~\AgdaDatatype{Credential})~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}
  This function takes a \AgdaDatatype{GovRole} as input and returns a partial function that maps each pair consisting of a \AgdaDatatype{GovRole} and a \AgdaDatatype{Credential} to a \AgdaDatatype{Vote}.
  It filters the \AgdaBound{votes} function based on the given \AgdaDatatype{GovRole}.

  \item \AgdaBound{actualCCVote} of type \AgdaDatatype{KeyHash}~\AgdaDatatype{→}~\AgdaDatatype{Epoch}~\AgdaDatatype{→}~\AgdaDatatype{Vote}: Given a \AgdaDatatype{KeyHash} and an \AgdaDatatype{Epoch} this function returns the corresponding \AgdaDatatype{Vote} based on various conditions.
  It checks if the \AgdaBound{currentEpoch} is less than or equal to the given \AgdaDatatype{Epoch} and whether the \AgdaDatatype{KeyHash} exists in the \AgdaBound{ccHotKeys} data. Depending on the conditions, it may return \AgdaBound{Vote.no}, \AgdaBound{Vote.yes}, or \AgdaBound{Vote.abstain}.

  \item \AgdaBound{actualCCVotes} of type \AgdaDatatype{Credential}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}: This is a partial function that maps \AgdaDatatype{Credential} to a \AgdaDatatype{Vote}. It uses the \AgdaDatatype{actualCCVote} function on each element of \AgdaDatatype{cc} to compute the votes.

  \item \AgdaBound{actualPDRepVotes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}: This is a partial function that maps a delegation (of type \AgdaDatatype{VDeleg}) to a \AgdaDatatype{Vote}. It consists of a set of pairs, where \AgdaDatatype{abstainRep} is mapped to \AgdaDatatype{Vote.abstain}, and \AgdaDatatype{noConfidenceRep} is mapped to either \AgdaDatatype{Vote.yes} or \AgdaDatatype{Vote.no}, depending on the value of \AgdaDatatype{ga}.

  \item \AgdaBound{actualDRepVotes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}: This is a partial function that maps a delegation (of type \AgdaDatatype{VDeleg}) to a \AgdaDatatype{Vote}. It computes the votes based on the \AgdaDatatype{activeDReps}, which are delegates whose credentials are present in \AgdaDatatype{dreps}. It uses the \AgdaDatatype{roleVotes} function with \AgdaDatatype{GovRole.DRep} to get the votes.

  \item \AgdaBound{actualVotes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote}. This is a partial function that maps a delegation (of type \AgdaDatatype{VDeleg}) to a \AgdaDatatype{Vote}. It combines the votes for \AgdaDatatype{CC}, \AgdaDatatype{DRep}, and \AgdaDatatype{SPO}, using the functions \AgdaDatatype{actualCCVotes}, \AgdaDatatype{actualPDRepVotes}, and \AgdaDatatype{actualDRepVotes}.
\end{itemize}
The code in Figure~\ref{fig:defs:ratify-ii} defines more types required for ratification of a governance action.
\begin{figure*}[h!]
\begin{code}
votedHashes : Vote → (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedHashes v votes r = votes ⁻¹ v

votedYesHashes : (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedYesHashes = votedHashes Vote.yes

votedAbstainHashes : (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
votedAbstainHashes = votedHashes Vote.abstain

participatingHashes : (VDeleg ⇀ Vote) → GovRole → ℙ VDeleg
participatingHashes votes r = votedYesHashes votes r ∪ votedHashes Vote.no votes r

isCC : VDeleg → Bool
isCC (credVoter CC _) = true
isCC _                = false

isDRep : VDeleg → Bool
isDRep (credVoter DRep _) = true
isDRep (credVoter _ _)    = false
isDRep abstainRep         = true
isDRep noConfidenceRep    = true

isSPO : VDeleg → Bool
isSPO (credVoter SPO _) = true
isSPO _                 = false

isCCProp : specProperty λ x → isCC x ≡ true
isCCProp = to-sp (λ x → isCC x ≟ true)

isDRepProp : specProperty λ x → isDRep x ≡ true
isDRepProp = to-sp (λ x → isDRep x ≟ true)

isSPOProp : specProperty λ x → isSPO x ≡ true
isSPOProp = to-sp (λ x → isSPO x ≟ true)
\end{code}
\caption{Ratify ii: Definitions required for types related to ratification of governance actions}
\label{fig:defs:ratify-ii}
\end{figure*}
\begin{itemize}
  \item \AgdaBound{votedHashes} of type \AgdaDatatype{Vote}~\AgdaDatatype{→}~(\AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}: This function takes a \AgdaDatatype{Vote}, a mapping of delegations to votes, and a \AgdaDatatype{GovRole}. It returns a set of delegations that have voted with the given \AgdaDatatype{Vote} for the specified \AgdaDatatype{GovRole}.

  \item \AgdaBound{votedYesHashes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaDatatype{GovRole}. It returns a set of delegations that have voted with \AgdaDatatype{Vote.yes} for the specified \AgdaDatatype{GovRole}.

  \item \AgdaBound{votedAbstainHashes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaDatatype{GovRole}. It returns a set of delegations that have voted with \AgdaDatatype{Vote.abstain} for the specified \AgdaDatatype{GovRole}.

  \item \AgdaBound{participatingHashes} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaDatatype{GovRole}. It returns a set of delegations that have participated in voting for the specified \AgdaDatatype{GovRole}, which includes both \AgdaDatatype{Vote.yes} and \AgdaDatatype{Vote.no} votes.

  \item \AgdaBound{isCC} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{Bool}: This function takes a delegation (of type \AgdaDatatype{VDeleg}) and returns \AgdaDatatype{true} if the delegation corresponds to \AgdaDatatype{CC} (i.e., Credential is of type \AgdaDatatype{CC}) and \AgdaDatatype{false} otherwise.

  \item \AgdaBound{isDRep} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{Bool}: This function takes a delegation (of type \AgdaDatatype{VDeleg}) and returns \AgdaDatatype{true} if the delegation corresponds to \AgdaDatatype{DRep} (i.e., Credential is of type \AgdaDatatype{DRep}) and \AgdaDatatype{false} otherwise.

  \item \AgdaBound{isSPO} of type \AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{Bool}: This function takes a delegation (of type \AgdaDatatype{VDeleg}) and returns \AgdaDatatype{true} if the delegation corresponds to \AgdaDatatype{SPO} (i.e., Credential is of type \AgdaDatatype{SPO}) and \AgdaDatatype{false} otherwise.

  \item \AgdaBound{isCCProp} of type \AgdaDatatype{specProperty}~\AgdaDatatype{λ}~\AgdaDatatype{x}~\AgdaDatatype{→}~\AgdaDatatype{isCC}~\AgdaDatatype{x}~\AgdaDatatype{≡}~\AgdaDatatype{true}: This definition is a specification property that states that for any delegation \AgdaDatatype{x}, \AgdaDatatype{isCC}~\AgdaDatatype{x} (as defined in \AgdaDatatype{isCC} function) should be equal to \AgdaDatatype{true}.

  \item \AgdaBound{isDRepProp} of type \AgdaDatatype{specProperty}~\AgdaDatatype{λ}~\AgdaDatatype{x}~\AgdaDatatype{→}~\AgdaDatatype{isDRep}~\AgdaDatatype{x}~\AgdaDatatype{≡}~\AgdaDatatype{true}: This is a specification property similar to the previous one but for the \AgdaDatatype{isDRep} function.

  \item \AgdaBound{isSPOProp} of type \AgdaDatatype{specProperty}~\AgdaDatatype{λ}~\AgdaDatatype{x}~\AgdaDatatype{→}~\AgdaDatatype{isSPO}~\AgdaDatatype{x}~\AgdaDatatype{≡}~\AgdaDatatype{true}: This is a specification property similar to the previous two but for the \AgdaDatatype{isSPO} function.
\end{itemize}
The code in Figure~\ref{fig:defs:ratify-iii} defines yet more types required for ratification of a governance action.
\begin{figure*}[h!]
\begin{code}
getStakeDist : GovRole → ℙ VDeleg → StakeDistrs → VDeleg ⇀ Coin
getStakeDist CC   cc _                            = constMap (filterˢ isCCProp cc) 1
getStakeDist DRep _  record { stakeDistr = dist } = filterᵐ (sp-∘ isDRepProp proj₁) dist
getStakeDist SPO  _  record { stakeDistr = dist } = filterᵐ (sp-∘ isSPOProp proj₁) dist

acceptedStake : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
acceptedStake r cc dists votes =
  Σᵐᵛ[ x ← (getStakeDist r cc dists ∣ votedYesHashes votes r) ᶠᵐ ] x

totalStake : GovRole → ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
totalStake r cc dists votes = Σᵐᵛ[ x ← getStakeDist r cc dists ∣ votedAbstainHashes votes r ᶜ ᶠᵐ ] x

activeVotingStake : ℙ VDeleg → StakeDistrs → (VDeleg ⇀ Vote) → Coin
activeVotingStake cc dists votes = Σᵐᵛ[ x ← getStakeDist DRep cc dists ∣ dom (votes ˢ) ᶜ ᶠᵐ ] x

-- for now, consider a proposal as accepted if the CC and half of the SPOs and DReps agree
accepted' : RatifyEnv → EnactState → GovActionState → Set
accepted' Γ es@record { cc = cc , _    ; pparams = pparams , _ }
            s@record  { votes = votes' ; action = action } =
  acceptedBy CC ∧ acceptedBy DRep ∧ acceptedBy SPO ∧ meetsMinAVS
  where
    open RatifyEnv Γ
    open PParams pparams

    votes = actualVotes Γ cc votes' action
    cc' = dom (votes ˢ)
    redStakeDistr = restrictedDists coinThreshold rankThreshold stakeDistrs

    meetsMinAVS : Set
    meetsMinAVS = activeVotingStake cc' redStakeDistr votes ≥ minimumAVS

    acceptedBy : GovRole → Set
    acceptedBy role = let t = threshold pparams (Data.Maybe.map proj₂ cc) action role in
      case totalStake role cc' redStakeDistr votes of λ where
        0         → t ≡ R.0ℚ -- if there's no stake, accept only if the threshold is zero
        x@(suc _) → Z.+ acceptedStake role cc' redStakeDistr votes R./ x R.≥ t

expired : Epoch → GovActionState → Set
expired current record { expiresIn = expiresIn } = expiresIn <ᵉ current
\end{code}
\caption{Ratify iii: Definitions required for types related to ratification of governance actions}
\label{fig:defs:ratify-iii}
\end{figure*}
\begin{itemize}
  \item \AgdaBound{getStakeDist} of type \AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{StakeDistrs}~\AgdaDatatype{→}~\AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Coin}: This is a partial function that maps a delegation (of type \AgdaDatatype{VDeleg}) to a \AgdaDatatype{Coin} representing the stake distribution. It takes a \AgdaDatatype{GovRole}, a set of delegations \AgdaDatatype{cc}, and a \AgdaDatatype{StakeDistrs} record as input and computes the stake distribution based on the role and corresponding delegations.

  \item \AgdaBound{acceptedStake} of type \AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{StakeDistrs}~\AgdaDatatype{→}~(\AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{Coin}: This function computes the total accepted stake for a given \AgdaDatatype{GovRole}, \AgdaDatatype{cc}, \AgdaDatatype{StakeDistrs}, and votes mapping (\AgdaDatatype{votes}). It calculates the sum of stakes for all delegations that voted \AgdaDatatype{Vote.yes} for the specified role.

  \item \AgdaBound{totalStake} of type \AgdaDatatype{GovRole}~\AgdaDatatype{→}~\AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{StakeDistrs}~\AgdaDatatype{→}~(\AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{Coin}: This function computes the total stake for a given \AgdaDatatype{GovRole}, \AgdaDatatype{cc}, \AgdaDatatype{StakeDistrs}, and votes mapping (\AgdaDatatype{votes}). It calculates the sum of stakes for all delegations that voted \AgdaDatatype{Vote.abstain} for the specified role.

  \item \AgdaBound{activeVotingStake} of type \AgdaDatatype{ℙ}~\AgdaDatatype{VDeleg}~\AgdaDatatype{→}~\AgdaDatatype{StakeDistrs}~\AgdaDatatype{→}~(\AgdaDatatype{VDeleg}~\AgdaDatatype{⇀}~\AgdaDatatype{Vote})~\AgdaDatatype{→}~\AgdaDatatype{Coin}: This function computes the total stake for the role \AgdaDatatype{DRep} for active voting. It calculates the sum of stakes for all active delegates that have not voted (i.e., their delegation is present in \AgdaDatatype{cc} but not in the \AgdaDatatype{votes} mapping).

  \item \AgdaBound{accepted} of type \AgdaDatatype{RatifyEnv}~\AgdaDatatype{→}~\AgdaDatatype{EnactState}~\AgdaDatatype{→}~\AgdaDatatype{GovActionState}~\AgdaDatatype{→}~\AgdaDatatype{Set}: This function takes three records as input and returns a \AgdaDatatype{Set}. It checks if an action is accepted for the \AgdaDatatype{CC}, \AgdaDatatype{DRep}, and \AgdaDatatype{SPO} roles and whether it meets the minimum active voting stake (\AgdaDatatype{meetsMinAVS}). The \AgdaDatatype{actualVotes} function is used to compute the votes based on the provided records.

  \item \AgdaBound{expired} of type \AgdaDatatype{Epoch}~\AgdaDatatype{→}~\AgdaDatatype{GovActionState}~\AgdaDatatype{→}~\AgdaDatatype{Set}: This function takes an \AgdaDatatype{Epoch} and a \AgdaDatatype{GovActionState} record and returns a \AgdaDatatype{Set}. It checks if the given \AgdaDatatype{Epoch} is greater than the \AgdaDatatype{expiresIn} field in the record.

  \item \AgdaBound{verifyPrev} of type (\AgdaBound{a}~\AgdaDatatype{:}~\AgdaDatatype{GovAction})~\AgdaDatatype{→}~\AgdaDatatype{NeedsHash}~\AgdaBound{a}~\AgdaDatatype{→}~\AgdaDatatype{EnactState}~\AgdaDatatype{→}~\AgdaDatatype{Set}: This function checks if a given governance action has been previously verified. It takes a \AgdaDatatype{GovAction}, its corresponding \AgdaDatatype{NeedsHash}, and an \AgdaDatatype{EnactState} record as input. The function returns a \AgdaDatatype{Set}, which is either an empty set (\AgdaDatatype{⊤}) if the verification passes or a disjoint union of the hash check (\AgdaDatatype{NeedsHash}) and a boolean check (\AgdaDatatype{d}) if the verification fails.

  \item \AgdaBound{delayingAction} of type \AgdaDatatype{GovAction}~\AgdaDatatype{→}~\AgdaDatatype{Bool}: This function takes a \AgdaDatatype{GovAction} and returns \AgdaDatatype{true} if it is a ``delaying action,'' which includes actions like \AgdaDatatype{NoConfidence}, \AgdaDatatype{NewCommittee}, \AgdaDatatype{NewConstitution}, and \AgdaDatatype{TriggerHF}. Otherwise, it returns \AgdaDatatype{false}.

  \item \AgdaBound{delayed} of type (\AgdaBound{a}~\AgdaDatatype{:}~\AgdaDatatype{GovAction})~\AgdaDatatype{→}~\AgdaDatatype{NeedsHash}~\AgdaBound{a}~\AgdaDatatype{→}~\AgdaDatatype{EnactState}~\AgdaDatatype{→}~\AgdaDatatype{Bool}~\AgdaDatatype{→}~\AgdaDatatype{Set}: This function checks if a given governance action is delayed. It takes a \AgdaDatatype{GovAction}, its corresponding \AgdaDatatype{NeedsHash}, an \AgdaDatatype{EnactState} record, and a boolean flag \AgdaDatatype{d} as input. It returns a \AgdaDatatype{Set}, which is a disjoint union of the hash check (\AgdaDatatype{NeedsHash}) and the boolean check (\AgdaDatatype{d}) if the action is delayed, or an empty set (\AgdaDatatype{⊤}) if the action is not delayed.
\end{itemize}
\begin{figure*}[h!]
\begin{code}
verifyPrev : (a : GovAction) → NeedsHash a → EnactState → Set
verifyPrev NoConfidence         h es = let open EnactState es in h ≡ proj₂ cc
verifyPrev (NewCommittee _ _ _) h es = let open EnactState es in h ≡ proj₂ cc
verifyPrev (NewConstitution _)  h es = let open EnactState es in h ≡ proj₂ constitution
verifyPrev (TriggerHF _)        h es = let open EnactState es in h ≡ proj₂ pv
verifyPrev (ChangePParams _ _)  h es = let open EnactState es in h ≡ proj₂ pparams
verifyPrev (TreasuryWdrl _)     _ _  = ⊤
verifyPrev Info                 _ _  = ⊤

delayingAction : GovAction → Bool
delayingAction NoConfidence         = true
delayingAction (NewCommittee _ _ _) = true
delayingAction (NewConstitution _)  = true
delayingAction (TriggerHF _)        = true
delayingAction (ChangePParams _ _)  = false
delayingAction (TreasuryWdrl _)     = false
delayingAction Info                 = false

delayed : (a : GovAction) → NeedsHash a → EnactState → Bool → Set
delayed a h es d = ¬ verifyPrev a h es ⊎ d ≡ true
\end{code}
\caption{Ratify iv: Definitions required for types related to ratification of governance actions}
\label{fig:defs:ratify-iii}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : RatifyEnv
  s s' : RatifyState
  es es' : EnactState
  upd : PParamsUpdate
  a : GovActionID × GovActionState
  f f' l removed : List (GovActionID × GovActionState)
  d : Bool

-- having `accepted` abstract speeds up type checking of RATIFY' a lot
abstract
  accepted : RatifyEnv → EnactState → GovActionState → Set
  accepted = accepted'

data _⊢_⇀⦇_,RATIFY'⦈_ : RatifyEnv → RatifyState → GovActionID × GovActionState → RatifyState → Set where
\end{code}
Finally, Figure~\ref{fig:ratify-transition-system} defines three functions: \AgdaFunction{RATIFY-Accept}, \AgdaFunction{RATIFY-Reject}, and \AgdaFunction{RATIFY-Continue}, along with the syntax \verb!_⊢_⇀⦇_,RATIFY⦈_!.
The syntax \verb!_⊢_⇀⦇_,RATIFY⦈_! is a wrapper around another function, represented by \AgdaDatatype{SS⇒BS}, which is a transformation from some source state (\AgdaDatatype{SS}) to a binary state (\AgdaDatatype{BS}).
\begin{itemize}
  \item \AgdaFunction{RATIFY-Accept}:  This function represents an action related to the ratification of a governance action. It takes some context \AgdaDatatype{Γ} a list of actions \AgdaDatatype{es}, and a state \AgdaDatatype{st} (extracted from \AgdaBound{a}) from a \AgdaRecord{GovActionState}.
        The function checks if the action represented by \AgdaDatatype{st} is accepted in the given context \AgdaDatatype{Γ}. Additionally, it verifies that the action is not delayed (based on some previous action \AgdaDatatype{prevAction}), and then applies some transformation represented by \AgdaDatatype{⇀⦇}~\AgdaDatatype{action}~\AgdaDatatype{,ENACT⦈} to the list of actions \AgdaDatatype{es} to produce a new list \AgdaDatatype{es'}.
        The conclusion states that if the action is accepted and not delayed, then applying the transformation \AgdaDatatype{⇀⦇}~\AgdaDatatype{action}~\AgdaDatatype{,ENACT⦈} to the modified list of actions should yield a new state.

  \item \AgdaFunction{RATIFY-Reject}: This function handles the rejection of an governance action. It takes some context \AgdaDatatype{Γ}, a list of actions \AgdaDatatype{es}, and a state \AgdaDatatype{st} (extracted from \AgdaBound{a}) from a \AgdaRecord{RatifyEnv}.
        The function checks if the action represented by \AgdaDatatype{st} is not accepted and if the current \AgdaDatatype{epoch} is expired. If both conditions hold, it applies a transformation represented by \AgdaDatatype{⇀⦇}~\AgdaBound{a}~\AgdaDatatype{,RATIFY'⦈} to the list of actions \AgdaDatatype{es} to produce a new list \AgdaDatatype{es'}.
        The conclusion states that if the action is not accepted and the epoch is expired, then applying the transformation \AgdaDatatype{⇀⦇}~\AgdaBound{a}~\AgdaDatatype{,RATIFY'⦈} to the modified list of actions should yield a new state.

  \item \AgdaFunction{RATIFY-Continue}: This function handles the case where the ratification process is neither accepted nor rejected, and the epoch is not expired. It takes some context \AgdaDatatype{Γ}, a list of actions \AgdaDatatype{es}, and a state \AgdaDatatype{st} (extracted from \AgdaBound{a}) from a \AgdaRecord{RatifyEnv}.
        The function checks that the action is neither accepted nor expired, or it is delayed based on the previous action. If any of these conditions hold, it applies the transformation \AgdaDatatype{⇀⦇}~\AgdaBound{a}~\AgdaDatatype{,RATIFY'⦈} to the list of actions \AgdaDatatype{es} to produce a new list \AgdaDatatype{es'}.
        The conclusion states that if the action is not accepted and not expired, or it is delayed, then applying the transformation \AgdaDatatype{⇀⦇}~\AgdaBound{a}~\AgdaDatatype{,RATIFY'⦈} to the modified list of actions should yield a new state.
\end{itemize}
\begin{figure*}[h!]
\begin{code}
  RATIFY-Accept : let st = proj₂ a; open GovActionState st in
    accepted Γ es st
    → ¬ delayed action prevAction es d
    → ⟦ proj₁ a ⟧ᵉ ⊢ es ⇀⦇ action ,ENACT⦈ es'
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es' , f , a ∷ removed , delayingAction action ⟧ʳ

  -- remove expired actions
  -- NOTE: don't have to remove actions that can never be accpted because of sufficient no votes
  RATIFY-Reject : let open RatifyEnv Γ; st = proj₂ a in
    ¬ accepted Γ es st
    → expired currentEpoch st
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , f , a ∷ removed , d ⟧ʳ

  -- continue voting in the next epoch
  RATIFY-Continue : let open RatifyEnv Γ; st = proj₂ a; open GovActionState st in
    ¬ accepted Γ es st × ¬ expired currentEpoch st ⊎ delayed action prevAction es d
    ────────────────────────────────
    Γ ⊢ ⟦ es , f , removed , d ⟧ʳ ⇀⦇ a ,RATIFY'⦈ ⟦ es , a ∷ f , removed , d ⟧ʳ

_⊢_⇀⦇_,RATIFY⦈_ : RatifyEnv → RatifyState → List (GovActionID × GovActionState) → RatifyState → Set
_⊢_⇀⦇_,RATIFY⦈_ = SS⇒BS (λ where (Γ , _) → Γ ⊢_⇀⦇_,RATIFY'⦈_)
\end{code}
\caption{RATIFY transition system}
\label{fig:ratify-transition-system}
\end{figure*}
