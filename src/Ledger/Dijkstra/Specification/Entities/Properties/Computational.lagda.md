---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entitities/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction using (TransactionStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Gov govStructure

open import Ledger.Dijkstra.Specification.Certs.Properties.Computational govStructure
open import stdlib.Data.Maybe
open import stdlib-meta.Tactic.GenError using (genErrors)
import Data.Maybe.Relation.Unary.Any as M
import Data.Maybe.Relation.Unary.All as M

open RewardAddress

open GovVote

module Computational-CERTS = Computational Computational-CERTS

instance
  Computational-SUBENTITIES : Computational _⊢_⇀⦇_,SUBENTITIES⦈_ String
  Computational-SUBENTITIES = record {go}
    where
      module go (Γ : SubEntitiesEnv) (s₀ : CertState) (txSub : SubLevelTx)
                (let module Γ = SubEntitiesEnv Γ
                     refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList (ListOfGovVotesOf txSub))
                     refreshedDReps  = mapValueRestricted (const (Γ.epoch  + Γ.pp .PParams.drepActivity)) (DRepsOf s₀) refresh

                     withdrawals               = WithdrawalsOf txSub
                     withdrawalsCredentials    = mapˢ stake (dom withdrawals)
                     accountBalanceIntervals   = BalanceIntervalsOf txSub
                     directDeposits            = DirectDepositsOf txSub
                     directDepositsCredentials = mapˢ stake (dom directDeposits)

                ) where

        s₁ : CertState
        s₁ = ⟦ ⟦ VoteDelegsOf s₀ , StakeDelegsOf s₀ , applyWithdrawals withdrawals (RewardsOf s₀) , DepositsOf (DStateOf s₀) ⟧
               , PStateOf s₀
               , ⟦ refreshedDReps
                 , CCHotKeysOf s₀
                 , DepositsOf (GStateOf s₀) ⟧ ⟧

        computeProof : ComputationResult String (∃-syntax (_⊢_⇀⦇_,SUBENTITIES⦈_ Γ s₀ txSub))
        computeProof with ¿
            ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
            ∙ withdrawalsCredentials ⊆ dom Γ.rewards₀
            ∙ withdrawalsCredentials ⊆ dom (RewardsOf s₀)

            ∙ dom accountBalanceIntervals ⊆ dom (RewardsOf s₀)
            ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? (RewardsOf s₀) c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
          ¿ | Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txSub)
        ... | no ¬p | _ = failure ""
        ... | yes _ | failure e = failure e
        ... | yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆) | success (s₂ , p)
          with ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿
        ... | no ¬p = failure ""
        ... | yes p₇ = success (-, (SUBENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p , p₆ , p₇)))

        completeness : ∀ (s' : CertState) → Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (SUBENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p , p₆ , p₇))
          with ¿
            ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
            ∙ withdrawalsCredentials ⊆ dom Γ.rewards₀
            ∙ withdrawalsCredentials ⊆ dom (RewardsOf s₀)

            ∙ dom accountBalanceIntervals ⊆ dom (RewardsOf s₀)
            ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? (RewardsOf s₀) c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
          ¿ | Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txSub) | Computational-CERTS.completeness _ _ _ _ p
        ... | no ¬p | _ | p' = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄ , p₅ , p₆))
        ... | yes _ | failure e | ()
        ... | yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆) | success (s₂ , p) | refl
          with ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿
        ... | no ¬p  = ⊥-elim (¬p p₇)
        ... | yes _ = refl

  Computational-ENTITIES : Computational _⊢_⇀⦇_,ENTITIES⦈_ String
  Computational-ENTITIES = record {go}
    where
      module go (Γ : EntitiesEnv) (s₀ : CertState) (txTop : TopLevelTx)
                (let module Γ = EntitiesEnv Γ
                     refresh         = mapPartial (isGovVoterDRep ∘ voter) (fromList (ListOfGovVotesOf txTop))
                     refreshedDReps  = mapValueRestricted (const (Γ.epoch  + Γ.pp .PParams.drepActivity)) (DRepsOf s₀) refresh

                     withdrawalsSubTxs          = foldl (λ acc txSub → acc ∪⁺ WithdrawalsOf txSub) ∅ (SubTransactionsOf txTop)
                     withdrawals               = WithdrawalsOf txTop
                     withdrawalsCredentials    = mapˢ stake (dom withdrawals)
                     accountBalanceIntervals   = BalanceIntervalsOf txTop
                     directDeposits            = DirectDepositsOf txTop
                     directDepositsCredentials = mapˢ stake (dom directDeposits)

                ) where
        
        s₁ : CertState
        s₁ = ⟦ ⟦ VoteDelegsOf s₀ , StakeDelegsOf s₀ , applyWithdrawals withdrawals (RewardsOf s₀) , DepositsOf (DStateOf s₀) ⟧
               , PStateOf s₀
               , ⟦ refreshedDReps
                 , CCHotKeysOf s₀
                 , DepositsOf (GStateOf s₀) ⟧ ⟧

        computeProof : ComputationResult String (∃-syntax (_⊢_⇀⦇_,ENTITIES⦈_ Γ s₀ txTop))
        computeProof with ¿
            ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
            ∙ withdrawalsCredentials ⊆ dom (RewardsOf s₀)

            ∙ (Γ.legacyMode ≡ true →
                ∙ ∀[ (addr , amt) ∈ withdrawals ˢ ] amt ≡ maybe id 0 (lookupᵐ? (RewardsOf s₀) (stake addr))
                ∙ ∀[ (addr , amt) ∈ withdrawalsSubTxs ˢ ] amt ≤ maybe id 0 (lookupᵐ? Γ.rewards₀ (stake addr)))

            ∙ (Γ.legacyMode ≡ false →
                ∙ withdrawalsCredentials ⊆ dom Γ.rewards₀
                ∙ ∀[ (addr , amt) ∈ (withdrawalsSubTxs ∪⁺ withdrawals) ˢ ] amt ≤ maybe id 0 (lookupᵐ? Γ.rewards₀ (stake addr)))

            ∙ dom accountBalanceIntervals ⊆ dom (RewardsOf s₀)
            ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? (RewardsOf s₀) c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
          ¿ | Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txTop)
        ... | no ¬p | _ = failure ""
        ... | yes _ | failure e = failure e
        ... | yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇) | success (s₂ , p)
          with ¿
            ∙ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿
        ... | no ¬p = failure ""
        ... | yes p₈ = success (-, (ENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p , p₇ , p₈)))
    
        completeness : ∀ (s' : CertState) → Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (ENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p , p₇ , p₈))
          with ¿
            ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
            ∙ withdrawalsCredentials ⊆ dom (RewardsOf s₀)

            ∙ (Γ.legacyMode ≡ true →
                ∙ ∀[ (addr , amt) ∈ withdrawals ˢ ] amt ≡ maybe id 0 (lookupᵐ? (RewardsOf s₀) (stake addr))
                ∙ ∀[ (addr , amt) ∈ withdrawalsSubTxs ˢ ] amt ≤ maybe id 0 (lookupᵐ? Γ.rewards₀ (stake addr)))

            ∙ (Γ.legacyMode ≡ false →
                ∙ withdrawalsCredentials ⊆ dom Γ.rewards₀
                ∙ ∀[ (addr , amt) ∈ (withdrawalsSubTxs ∪⁺ withdrawals) ˢ ] amt ≤ maybe id 0 (lookupᵐ? Γ.rewards₀ (stake addr)))

            ∙ dom accountBalanceIntervals ⊆ dom (RewardsOf s₀)
            ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? (RewardsOf s₀) c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId
          ¿ | Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txTop) | Computational-CERTS.completeness _ _ _ _ p
        ... | no ¬p | _ | p' = ⊥-elim (¬p (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇))
        ... | yes _ | failure e | ()
        ... | yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆) | success (s₂ , p) | refl
          with ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿
        ... | no ¬p  = ⊥-elim (¬p p₈)
        ... | yes _ = refl
```
