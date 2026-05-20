---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Entitities/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Entities.Properties.Computational
  (govStructure : GovStructure) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Entities govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure

open import Ledger.Dijkstra.Specification.Certs.Properties.Computational govStructure
open import stdlib.Data.Maybe
open import stdlib-meta.Tactic.GenError using (genErrors)
import Data.Maybe.Relation.Unary.Any as M
import Data.Maybe.Relation.Unary.All as M

open GovStructure govStructure
open RewardAddress

open GovVote

module Computational-CERTS = Computational Computational-CERTS

instance
  Computational-ENTITIES : Computational _⊢_⇀⦇_,ENTITIES⦈_ String
  Computational-ENTITIES = record {go}
    where
      module go (Γ : CertEnv) (s₀ : CertState) (dCerts : List DCert)
                (let module Γ = CertEnv Γ
                     refresh  = mapPartial (isGovVoterDRep ∘ voter) (fromList Γ.votes)
                     refreshedDReps  = mapValueRestricted (const (Γ.epoch  + Γ.pp .PParams.drepActivity)) (DRepsOf s₀) refresh
                     wdrlCreds       = mapˢ stake (dom Γ.wdrls)
                     ddCreds         = mapˢ stake (dom Γ.directDeposits)
                ) where
        
        s₁ : CertState
        s₁ = ⟦ ⟦ VoteDelegsOf s₀ , StakeDelegsOf s₀ , applyWithdrawals Γ.wdrls (RewardsOf s₀) , DepositsOf (DStateOf s₀) ⟧
               , PStateOf s₀
               , ⟦ refreshedDReps
                 , CCHotKeysOf s₀
                 , DepositsOf (GStateOf s₀) ⟧ ⟧

        computeProof : ComputationResult String (∃-syntax (_⊢_⇀⦇_,ENTITIES⦈_ Γ s₀ dCerts))
        computeProof with ¿ filterˢ isKeyHash wdrlCreds ⊆ dom (VoteDelegsOf s₀)
                          × wdrlCreds ⊆ dom (RewardsOf s₀)
                          × (∀[ (addr , amt) ∈ Γ.wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s₀) (stake addr)))
                          ¿ | Computational-CERTS.computeProof Γ s₁ dCerts
        ... | no ¬p | _ = failure ""
        ... | yes _ | failure e = failure e
        ... | yes (p₁ , p₂ , p₃) | success (s₂ , p)
          with ¿ ddCreds ⊆ dom (RewardsOf s₂) ¿
        ... | no ¬p = failure ""
        ... | yes p₄ = success (-, (ENTITIES (p₁ , p₂ , p₃ , p , p₄)))
    
        completeness : ∀ (s' : CertState) → Γ ⊢ s₀ ⇀⦇ dCerts ,ENTITIES⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (ENTITIES (p₁ , p₂ , p₃ , p , p₄))
          with ¿ filterˢ isKeyHash wdrlCreds ⊆ dom (VoteDelegsOf s₀)
               × wdrlCreds ⊆ dom (RewardsOf s₀)
               × (∀[ (addr , amt) ∈ Γ.wdrls ˢ ] amt ≤ maybe id 0 (lookupᵐ? (RewardsOf s₀) (stake addr)))
               ¿ | Computational-CERTS.computeProof Γ s₁ dCerts | Computational-CERTS.completeness _ _ _ _ p
        ... | no ¬p | _ | p' = ⊥-elim (¬p (p₁ , p₂ , p₃))
        ... | yes _ | failure e | ()
        ... | yes (p₁ , p₂ , p₃) | success (s₂ , p) | refl
          with ¿ ddCreds ⊆ dom (RewardsOf s₂) ¿ 
        ... | no ¬p  = ⊥-elim (¬p p₄)
        ... | yes p₄ = refl
```
