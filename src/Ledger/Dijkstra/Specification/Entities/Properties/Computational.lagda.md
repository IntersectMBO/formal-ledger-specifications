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

        H : Type
        H =
            ∙ ∀[ a ∈ dom withdrawals ] NetworkIdOf a ≡ NetworkId
            ∙ withdrawalsCredentials ⊆ dom Γ.rewards₀
            ∙ withdrawalsCredentials ⊆ dom (RewardsOf s₀)

            ∙ dom accountBalanceIntervals ⊆ dom (RewardsOf s₀)
            ∙ ∀[ (c , interval) ∈ accountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? (RewardsOf s₀) c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId

        H? : Dec H
        H? = ¿ H ¿

        credit : CertState → CertState
        credit s₂ = record s₂
          { dState = record (DStateOf s₂)
            { rewards = applyDirectDeposits directDeposits (RewardsOf s₂) } }

        lift-step : H → ∀ {s₂} → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂
                  → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                  → Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ credit s₂
        lift-step (p₁ , p₂ , p₃ , p₄ , p₅ , p₆) h p₇ =
          SUBENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , h , p₆ , p₇)

        finish : H → (s₂ : CertState) → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂
               → Dec (directDepositsCredentials ⊆ dom (RewardsOf s₂))
               → ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ s')
        finish p s₂ h (no _) = failure ""
        finish p s₂ h (yes q) = success (credit s₂ , lift-step p h q)

        computeProof-aux : Dec H
                         → ComputationResult String (∃[ s₂ ] ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂)
                         → ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ s')
        computeProof-aux (no _) _ = failure ""
        computeProof-aux (yes _) (failure e) = failure e
        computeProof-aux (yes p) (success (s₂ , h)) =
          finish p s₂ h ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ s')
        computeProof = computeProof-aux H?
          (Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txSub))

        finish-complete : (p : H) (s₂ : CertState) (h : ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂)
                         → (d : Dec (directDepositsCredentials ⊆ dom (RewardsOf s₂)))
                         → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                         → map proj₁ (finish p s₂ h d) ≡ success (credit s₂)
        finish-complete p s₂ h (no ¬q) q = ⊥-elim (¬q q)
        finish-complete p s₂ h (yes _) _ = refl

        completeness-aux : (d : Dec H)
                         → (r : ComputationResult String (∃[ s₂ ] ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂))
                         → {s₂ : CertState} → H → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txSub ,CERTS⦈ s₂
                         → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                         → map proj₁ r ≡ success s₂
                         → map proj₁ (computeProof-aux d r) ≡ success (credit s₂)
        completeness-aux (no ¬p) _ p _ _ _ = ⊥-elim (¬p p)
        completeness-aux (yes _) (failure _) _ _ _ ()
        completeness-aux (yes p) (success (s₂ , h)) _ _ q refl =
          finish-complete p s₂ h ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿ q

        completeness : ∀ s' → Γ ⊢ s₀ ⇀⦇ txSub ,SUBENTITIES⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (SUBENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , h , p₆ , p₇)) =
          completeness-aux H?
            (Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txSub))
            (p₁ , p₂ , p₃ , p₄ , p₅ , p₆) h p₇ (Computational-CERTS.completeness _ _ _ _ h)

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
                     startingAccountBalanceIntervals = StartingBalanceIntervalsOf txTop
                     directDeposits            = DirectDepositsOf txTop
                     directDepositsCredentials = mapˢ stake (dom directDeposits)

                ) where
        
        s₁ : CertState
        s₁ = ⟦ ⟦ VoteDelegsOf s₀ , StakeDelegsOf s₀ , applyWithdrawals withdrawals (RewardsOf s₀) , DepositsOf (DStateOf s₀) ⟧
               , PStateOf s₀
               , ⟦ refreshedDReps
                 , CCHotKeysOf s₀
                 , DepositsOf (GStateOf s₀) ⟧ ⟧

        H : Type
        H =
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

            ∙ dom startingAccountBalanceIntervals ⊆ dom Γ.rewards₀
            ∙ ∀[ (c , interval) ∈ startingAccountBalanceIntervals ˢ ]
                (InBalanceInterval (maybe id 0 (lookupᵐ? Γ.rewards₀ c)) interval)

            ∙ ∀[ a ∈ dom directDeposits ] NetworkIdOf a ≡ NetworkId

        H? : Dec H
        H? = ¿ H ¿

        credit : CertState → CertState
        credit s₂ = record s₂
          { dState = record (DStateOf s₂)
            { rewards = applyDirectDeposits directDeposits (RewardsOf s₂) } }

        lift-step : H → ∀ {s₂} → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂
                  → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                  → Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ credit s₂
        lift-step (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉) h p₁₀ =
          ENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , h , p₉ , p₁₀)

        finish : H → (s₂ : CertState) → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂
               → Dec (directDepositsCredentials ⊆ dom (RewardsOf s₂))
               → ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ s')
        finish p s₂ h (no _) = failure ""
        finish p s₂ h (yes q) = success (credit s₂ , lift-step p h q)

        computeProof-aux : Dec H
                         → ComputationResult String (∃[ s₂ ] ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂)
                         → ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ s')
        computeProof-aux (no _) _ = failure ""
        computeProof-aux (yes _) (failure e) = failure e
        computeProof-aux (yes p) (success (s₂ , h)) =
          finish p s₂ h ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ s')
        computeProof = computeProof-aux H?
          (Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txTop))

        finish-complete : (p : H) (s₂ : CertState) (h : ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂)
                         → (d : Dec (directDepositsCredentials ⊆ dom (RewardsOf s₂)))
                         → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                         → map proj₁ (finish p s₂ h d) ≡ success (credit s₂)
        finish-complete p s₂ h (no ¬q) q = ⊥-elim (¬q q)
        finish-complete p s₂ h (yes _) _ = refl

        completeness-aux : (d : Dec H)
                         → (r : ComputationResult String (∃[ s₂ ] ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂))
                         → {s₂ : CertState} → H → ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ ⊢ s₁ ⇀⦇ DCertsOf txTop ,CERTS⦈ s₂
                         → directDepositsCredentials ⊆ dom (RewardsOf s₂)
                         → map proj₁ r ≡ success s₂
                         → map proj₁ (computeProof-aux d r) ≡ success (credit s₂)
        completeness-aux (no ¬p) _ p _ _ _ = ⊥-elim (¬p p)
        completeness-aux (yes _) (failure _) _ _ _ ()
        completeness-aux (yes p) (success (s₂ , h)) _ _ q refl =
          finish-complete p s₂ h ¿ directDepositsCredentials ⊆ dom (RewardsOf s₂) ¿ q

        completeness : ∀ s' → Γ ⊢ s₀ ⇀⦇ txTop ,ENTITIES⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (ENTITIES (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , h , p₉ , p₁₀)) =
          completeness-aux H?
            (Computational-CERTS.computeProof ⟦ Γ.epoch , Γ.pp , Γ.coldCredentials ⟧ s₁ (DCertsOf txTop))
            (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉) h p₁₀ (Computational-CERTS.completeness _ _ _ _ h)

```
