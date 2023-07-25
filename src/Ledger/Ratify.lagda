\section{Ratification}
\label{sec:ratification}

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
\item \AgdaBound{StakeDistrs} is a record type with one field, \AgdaBound{stakeDistr}, which is a map from voting delegate to quantity of Ada
(i.e., a map of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Coin}).
\item \AgdaBound{RatifyEnv} is a record type with four fields,
  \begin{itemize}
    \item \AgdaBound{stakeDistrs} of type \AgdaBound{StakeDistrs};
    \item \AgdaBound{currentEpoch} of type \AgdaBound{Epoch};
    \item \AgdaBound{dreps}, a map of type \AgdaBound{Credential}~\AgdaBound{⇀}~\AgdaBound{Epoch};
    \item \AgdaBound{ccHotKeys}, a map of type \AgdaBound{KeyHash}~\AgdaBound{⇀}~\AgdaBound{Maybe}~\AgdaBound{KeyHash}.
  \end{itemize}
\item \AgdaBound{RatifyState} is a record type with four fields,
  \begin{itemize}
    \item \AgdaBound{es} of type \AgdaBound{EnactState};
    \item \AgdaBound{future} of type \AgdaBound{List}~(\AgdaBound{GovActionID}~\AgdaBound{×}~\AgdaBound{GovActionState});
    \item \AgdaBound{removed} of type \AgdaBound{List}~(\AgdaBound{GovActionID}~\AgdaBound{×}~\AgdaBound{GovActionState});
    \item \AgdaBound{delay} of type \AgdaBound{Bool}.
  \end{itemize}
\end{itemize}

\begin{figure*}[h]
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

The code in Figure~\ref{fig:defs:ratification} contains a series of definitions, operations and properties related to the voting system and the ratification of governance actions.
\begin{itemize}
  \item Module parameters:
  \begin{itemize}
    \item \AgdaBound{Γ} of type \AgdaBound{RatifyEnv}
    \item \AgdaBound{cc} of type \AgdaBound{CCData}
    \item \AgdaBound{votes} of type \AgdaBound{GovRole}~\AgdaBound{×}~\AgdaBound{Credential}~\AgdaBound{⇀}~\AgdaBound{Vote}
    \item \AgdaBound{ga} of type \AgdaBound{GovAction}
  \end{itemize}

  \item \AgdaBound{roleVotes} of type \AgdaBound{GovRole}~\AgdaBound{→}~(\AgdaBound{GovRole}~\AgdaBound{×}~\AgdaBound{Credential})~\AgdaBound{⇀}~\AgdaBound{Vote}
  This function takes a \AgdaBound{GovRole} as input and returns a partial function that maps each pair consisting of a \AgdaBound{GovRole} and a \AgdaBound{Credential} to a \AgdaBound{Vote}.
  It filters the \AgdaBound{votes} function based on the given \AgdaBound{GovRole}.

  \item \AgdaBound{actualCCVote} of type \AgdaBound{KeyHash}~\AgdaBound{→}~\AgdaBound{Epoch}~\AgdaBound{→}~\AgdaBound{Vote}: Given a \AgdaBound{KeyHash} and an \AgdaBound{Epoch} this function returns the corresponding \AgdaBound{Vote} based on various conditions.
  It checks if the \AgdaBound{currentEpoch} is less than or equal to the given \AgdaBound{Epoch} and whether the \AgdaBound{KeyHash} exists in the \AgdaBound{ccHotKeys} data. Depending on the conditions, it may return \AgdaBound{Vote.no}, \AgdaBound{Vote.yes}, or \AgdaBound{Vote.abstain}.

  \item \AgdaBound{actualCCVotes} of type \AgdaBound{Credential}~\AgdaBound{⇀}~\AgdaBound{Vote}: This is a partial function that maps \AgdaBound{Credential} to a \AgdaBound{Vote}. It uses the \AgdaBound{actualCCVote} function on each element of \AgdaBound{cc} to compute the votes.

  \item \AgdaBound{actualPDRepVotes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote}: This is a partial function that maps a delegation (of type \AgdaBound{VDeleg}) to a \AgdaBound{Vote}. It consists of a set of pairs, where \AgdaBound{abstainRep} is mapped to \AgdaBound{Vote.abstain}, and \AgdaBound{noConfidenceRep} is mapped to either \AgdaBound{Vote.yes} or \AgdaBound{Vote.no}, depending on the value of \AgdaBound{ga}.

  \item \AgdaBound{actualDRepVotes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote}: This is a partial function that maps a delegation (of type \AgdaBound{VDeleg}) to a \AgdaBound{Vote}. It computes the votes based on the \AgdaBound{activeDReps}, which are delegates whose credentials are present in \AgdaBound{dreps}. It uses the \AgdaBound{roleVotes} function with \AgdaBound{GovRole.DRep} to get the votes.

  \item \AgdaBound{actualVotes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote}. This is a partial function that maps a delegation (of type \AgdaBound{VDeleg}) to a \AgdaBound{Vote}. It combines the votes for \AgdaBound{CC}, \AgdaBound{DRep}, and \AgdaBound{SPO}, using the functions \AgdaBound{actualCCVotes}, \AgdaBound{actualPDRepVotes}, and \AgdaBound{actualDRepVotes}.

  \item \AgdaBound{votedHashes} of type \AgdaBound{Vote}~\AgdaBound{→}~(\AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}: This function takes a \AgdaBound{Vote}, a mapping of delegations to votes, and a \AgdaBound{GovRole}. It returns a set of delegations that have voted with the given \AgdaBound{Vote} for the specified \AgdaBound{GovRole}.

  \item \AgdaBound{votedYesHashes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaBound{GovRole}. It returns a set of delegations that have voted with \AgdaBound{Vote.yes} for the specified \AgdaBound{GovRole}.

  \item \AgdaBound{votedAbstainHashes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaBound{GovRole}. It returns a set of delegations that have voted with \AgdaBound{Vote.abstain} for the specified \AgdaBound{GovRole}.

  \item \AgdaBound{participatingHashes} of type \AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}: This function takes a mapping of delegations to votes and a \AgdaBound{GovRole}. It returns a set of delegations that have participated in voting for the specified \AgdaBound{GovRole}, which includes both \AgdaBound{Vote.yes} and \AgdaBound{Vote.no} votes.

  \item \AgdaBound{isCC} of type \AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{Bool}: This function takes a delegation (of type \AgdaBound{VDeleg}) and returns \AgdaBound{true} if the delegation corresponds to \AgdaBound{CC} (i.e., Credential is of type \AgdaBound{CC}) and \AgdaBound{false} otherwise.

  \item \AgdaBound{isDRep} of type \AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{Bool}: This function takes a delegation (of type \AgdaBound{VDeleg}) and returns \AgdaBound{true} if the delegation corresponds to \AgdaBound{DRep} (i.e., Credential is of type \AgdaBound{DRep}) and \AgdaBound{false} otherwise.

  \item \AgdaBound{isSPO} of type \AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{Bool}: This function takes a delegation (of type \AgdaBound{VDeleg}) and returns \AgdaBound{true} if the delegation corresponds to \AgdaBound{SPO} (i.e., Credential is of type \AgdaBound{SPO}) and \AgdaBound{false} otherwise.

  \item \AgdaBound{isCCProp} of type \AgdaBound{specProperty}~\AgdaBound{λ}~\AgdaBound{x}~\AgdaBound{→}~\AgdaBound{isCC}~\AgdaBound{x}~\AgdaBound{≡}~\AgdaBound{true}: This definition is a specification property that states that for any delegation \AgdaBound{x}, \AgdaBound{isCC}~\AgdaBound{x} (as defined in \AgdaBound{isCC} function) should be equal to \AgdaBound{true}.

  \item \AgdaBound{isDRepProp} of type \AgdaBound{specProperty}~\AgdaBound{λ}~\AgdaBound{x}~\AgdaBound{→}~\AgdaBound{isDRep}~\AgdaBound{x}~\AgdaBound{≡}~\AgdaBound{true}: This is a specification property similar to the previous one but for the \AgdaBound{isDRep} function.

  \item \AgdaBound{isSPOProp} of type \AgdaBound{specProperty}~\AgdaBound{λ}~\AgdaBound{x}~\AgdaBound{→}~\AgdaBound{isSPO}~\AgdaBound{x}~\AgdaBound{≡}~\AgdaBound{true}: This is a specification property similar to the previous two but for the \AgdaBound{isSPO} function.

  \item \AgdaBound{getStakeDist} of type \AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{StakeDistrs}~\AgdaBound{→}~\AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Coin}: This is a partial function that maps a delegation (of type \AgdaBound{VDeleg}) to a \AgdaBound{Coin} representing the stake distribution. It takes a \AgdaBound{GovRole}, a set of delegations \AgdaBound{cc}, and a \AgdaBound{StakeDistrs} record as input and computes the stake distribution based on the role and corresponding delegations.

  \item \AgdaBound{acceptedStake} of type \AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{StakeDistrs}~\AgdaBound{→}~(\AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{Coin}: This function computes the total accepted stake for a given \AgdaBound{GovRole}, \AgdaBound{cc}, \AgdaBound{StakeDistrs}, and votes mapping (\AgdaBound{votes}). It calculates the sum of stakes for all delegations that voted \AgdaBound{Vote.yes} for the specified role.

  \item \AgdaBound{totalStake} of type \AgdaBound{GovRole}~\AgdaBound{→}~\AgdaBound{ℙ}~\AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{StakeDistrs}~\AgdaBound{→}~(\AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{Coin}: This function computes the total stake for a given \AgdaBound{GovRole}, \AgdaBound{cc}, \AgdaBound{StakeDistrs}, and votes mapping (\AgdaBound{votes}). It calculates the sum of stakes for all delegations that voted \AgdaBound{Vote.abstain} for the specified role.

  \item \AgdaBound{activeVotingStake} of type \AgdaBound{ℙ}~\AgdaBound{VDeleg}~\AgdaBound{→}~\AgdaBound{StakeDistrs}~\AgdaBound{→}~(\AgdaBound{VDeleg}~\AgdaBound{⇀}~\AgdaBound{Vote})~\AgdaBound{→}~\AgdaBound{Coin}: This function computes the total stake for the role \AgdaBound{DRep} for active voting. It calculates the sum of stakes for all active delegates that have not voted (i.e., their delegation is present in \AgdaBound{cc} but not in the \AgdaBound{votes} mapping).

  \item \AgdaBound{accepted} of type \AgdaBound{RatifyEnv}~\AgdaBound{→}~\AgdaBound{EnactState}~\AgdaBound{→}~\AgdaBound{GovActionState}~\AgdaBound{→}~\AgdaBound{Set}: This function takes three records as input and returns a \AgdaBound{Set}. It checks if an action is accepted for the \AgdaBound{CC}, \AgdaBound{DRep}, and \AgdaBound{SPO} roles and whether it meets the minimum active voting stake (\AgdaBound{meetsMinAVS}). The \AgdaBound{actualVotes} function is used to compute the votes based on the provided records.

  \item \AgdaBound{expired} of type \AgdaBound{Epoch}~\AgdaBound{→}~\AgdaBound{GovActionState}~\AgdaBound{→}~\AgdaBound{Set}: This function takes an \AgdaBound{Epoch} and a \AgdaBound{GovActionState} record and returns a \AgdaBound{Set}. It checks if the given \AgdaBound{Epoch} is greater than the \AgdaBound{expiresIn} field in the record.

  \item \AgdaBound{verifyPrev} of type (\AgdaBound{a}~\AgdaBound{:}~\AgdaBound{GovAction})~\AgdaBound{→}~\AgdaBound{NeedsHash}~\AgdaBound{a}~\AgdaBound{→}~\AgdaBound{EnactState}~\AgdaBound{→}~\AgdaBound{Set}: This function checks if a given governance action has been previously verified. It takes a \AgdaBound{GovAction}, its corresponding \AgdaBound{NeedsHash}, and an \AgdaBound{EnactState} record as input. The function returns a \AgdaBound{Set}, which is either an empty set (\AgdaBound{⊤}) if the verification passes or a disjoint union of the hash check (\AgdaBound{NeedsHash}) and a boolean check (\AgdaBound{d}) if the verification fails.

  \item \AgdaBound{delayingAction} of type \AgdaBound{GovAction}~\AgdaBound{→}~\AgdaBound{Bool}: This function takes a \AgdaBound{GovAction} and returns \AgdaBound{true} if it is a ``delaying action,'' which includes actions like \AgdaBound{NoConfidence}, \AgdaBound{NewCommittee}, \AgdaBound{NewConstitution}, and \AgdaBound{TriggerHF}. Otherwise, it returns \AgdaBound{false}.

  \item \AgdaBound{delayed} of type (\AgdaBound{a}~\AgdaBound{:}~\AgdaBound{GovAction})~\AgdaBound{→}~\AgdaBound{NeedsHash}~\AgdaBound{a}~\AgdaBound{→}~\AgdaBound{EnactState}~\AgdaBound{→}~\AgdaBound{Bool}~\AgdaBound{→}~\AgdaBound{Set}: This function checks if a given governance action is delayed. It takes a \AgdaBound{GovAction}, its corresponding \AgdaBound{NeedsHash}, an \AgdaBound{EnactState} record, and a boolean flag \AgdaBound{d} as input. It returns a \AgdaBound{Set}, which is a disjoint union of the hash check (\AgdaBound{NeedsHash}) and the boolean check (\AgdaBound{d}) if the action is delayed, or an empty set (\AgdaBound{⊤}) if the action is not delayed.
\end{itemize}

\begin{figure*}[h]
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
\caption{Definitions required for types related to ratification of governance actions}
\label{fig:defs:ratification}
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

Figure~\ref{fig:ratify-transition-system} defines three functions: \AgdaBound{RATIFY-Accept}, \AgdaBound{RATIFY-Reject}, and \AgdaBound{RATIFY-Continue}, along with the syntax \AgdaBound{_⊢_⇀⦇_,RATIFY⦈_}.

The syntax \AgdaBound{_⊢_⇀⦇_,RATIFY⦈_} is a wrapper around another function, represented by \AgdaBound{SS⇒BS}, which is a transformation from some source state (\AgdaBound{SS}) to a binary state (\AgdaBound{BS}).

\begin{itemize}
  \item \AgdaBound{RATIFY-Accept}:  This function represents an action related to the ratification of a governance action. It takes some context \AgdaBound{Γ} a list of actions \AgdaBound{es}, and a state \AgdaBound{st} (extracted from \AgdaBound{a}) from a \AgdaBound{GovActionState}.
        The function checks if the action represented by \AgdaBound{st} is accepted in the given context \AgdaBound{Γ}. Additionally, it verifies that the action is not delayed (based on some previous action \AgdaBound{prevAction}), and then applies some transformation represented by \AgdaBound{⇀⦇}~\AgdaBound{action}~\AgdaBound{,ENACT⦈} to the list of actions \AgdaBound{es} to produce a new list \AgdaBound{es'}.
        The conclusion states that if the action is accepted and not delayed, then applying the transformation \AgdaBound{⇀⦇}~\AgdaBound{action}~\AgdaBound{,ENACT⦈} to the modified list of actions should yield a new state.

  \item \AgdaBound{RATIFY-Reject}: This function handles the rejection of an governance action. It takes some context \AgdaBound{Γ}, a list of actions \AgdaBound{es}, and a state \AgdaBound{st} (extracted from \AgdaBound{a}) from a \AgdaBound{RatifyEnv}.
        The function checks if the action represented by \AgdaBound{st} is not accepted and if the current \AgdaBound{epoch} is expired. If both conditions hold, it applies a transformation represented by \AgdaBound{⇀⦇}~\AgdaBound{a}~\AgdaBound{,RATIFY'⦈} to the list of actions \AgdaBound{es} to produce a new list \AgdaBound{es'}.
        The conclusion states that if the action is not accepted and the epoch is expired, then applying the transformation \AgdaBound{⇀⦇}~\AgdaBound{a}~\AgdaBound{,RATIFY'⦈} to the modified list of actions should yield a new state.

  \item \AgdaBound{RATIFY-Continue}: This function handles the case where the ratification process is neither accepted nor rejected, and the epoch is not expired. It takes some context \AgdaBound{Γ}, a list of actions \AgdaBound{es}, and a state \AgdaBound{st} (extracted from \AgdaBound{a}) from a \AgdaBound{RatifyEnv}.
        The function checks that the action is neither accepted nor expired, or it is delayed based on the previous action. If any of these conditions hold, it applies the transformation \AgdaBound{⇀⦇}~\AgdaBound{a}~\AgdaBound{,RATIFY'⦈} to the list of actions \AgdaBound{es} to produce a new list \AgdaBound{es'}.
        The conclusion states that if the action is not accepted and not expired, or it is delayed, then applying the transformation \AgdaBound{⇀⦇}~\AgdaBound{a}~\AgdaBound{,RATIFY'⦈} to the modified list of actions should yield a new state.
\end{itemize}

\begin{figure*}[h]
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
