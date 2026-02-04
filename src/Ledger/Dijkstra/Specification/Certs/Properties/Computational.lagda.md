---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.Computational
  (govStructure : GovStructure) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Gov.Actions govStructure hiding (yes; no)
open import Ledger.Dijkstra.Specification.Certs govStructure

open import stdlib.Data.Maybe
open import stdlib-meta.Tactic.GenError using (genErrors)
import Data.Maybe.Relation.Unary.Any as M
import Data.Maybe.Relation.Unary.All as M

open GovStructure govStructure
open Inverse

open Computational ⦃...⦄

private
  lookupᵐ?? :
    {K V : Type} →
    ⦃ _ : DecEq K ⦄ →
    (m : K ⇀ V) (k : K) →
    Dec (Any (λ (k' , _) → k ≡ k') (m ˢ))
  lookupᵐ?? m k = any? (λ { _ → ¿ _ ¿ }) (m ˢ)

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_ String
  Computational-DELEG .computeProof de ds =
    λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom (RewardsOf ds) → d ≡ DelegEnv.pparams de .PParams.keyDeposit)
                                × (c ∈ dom (RewardsOf ds) → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ vDelegCredential) (DelegEnv.delegatees de) ∪
                                    fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵ ¿ of λ where
      (yes p) → success (-, DELEG-delegate p)
      (no ¬p) → failure (genErrors ¬p)
    (dereg c md) → case lookupᵐ?? (DepositsOf ds) c of λ where
      (yes ((_ , d) , _ , _)) →
        case
          ¿ (c , 0) ∈ (RewardsOf ds)
          × (c , d) ∈ (DepositsOf ds)
          × (md ≡ nothing ⊎ md ≡ just d)
          ¿ of λ where
            (yes q) → success (-, DELEG-dereg q)
            (no ¬q) → failure (genErrors ¬q)
      (no ¬p) → failure (genErrors ¬p)
    _ → failure "Unexpected certificate in DELEG"

  Computational-DELEG .completeness de ds (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom (RewardsOf ds) → d ≡ DelegEnv.pparams de .PParams.keyDeposit)
                                           × (c ∈ dom (RewardsOf ds) → d ≡ 0)
                                           × mv ∈ mapˢ (just ∘ vDelegCredential) (DelegEnv.delegatees de) ∪
                                               fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                           × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵ ¿) p .proj₂ = refl
  Computational-DELEG .completeness _ ds (dereg c nothing) _ (DELEG-dereg {d = d} h@(p , q , r))
    with lookupᵐ?? (DepositsOf ds) c
  ... | (yes ((_ , d') , s₂ , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ (RewardsOf ds)
           × (c , d') ∈ (DepositsOf ds)
           × (nothing ≡ nothing {A = ℕ} ⊎ nothing ≡ just d')
           ¿) (p , s₂ , inj₁ refl) .proj₂ = refl
  Computational-DELEG .completeness _ ds (dereg c nothing) _ (DELEG-dereg h@(p , q , r))
      | (no ¬s) = ⊥-elim (¬s (_ , q , refl))
  Computational-DELEG .completeness _ ds (dereg c (just d)) _ (DELEG-dereg h@(p , q , inj₂ refl))
    with lookupᵐ?? (DepositsOf ds) c
  ... | (yes ((_ , d') , q' , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ (RewardsOf ds)
           × (c , d') ∈ (DepositsOf ds)
           × (just d ≡ nothing {A = ℕ} ⊎ just d ≡ just d')
           ¿) (p , q' , inj₂ (cong just (proj₂ (DepositsOf ds) q q'))) .proj₂ = refl
  ... | (no ¬s) = ⊥-elim (¬s (_ , q , refl))

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ stᵖ (regpool c _)
    with ¿ Is-just (lookupᵐ? (PoolsOf stᵖ) c) ¿
  ... | yes p = success (-, (POOL-rereg p))
  ... | no ¬p = success (-, (POOL-reg (¬Is-just↔Is-nothing _ .to ¬p)))
  Computational-POOL .computeProof _ stᵖ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ stᵖ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ stᵖ (regpool c _) _ (POOL-reg p)
    with ¿ Is-just (lookupᵐ? (PoolsOf stᵖ) c) ¿
  ... | yes p' = ⊥-elim (¬Is-just↔Is-nothing _ .from p p')
  ... | no ¬p = refl
  Computational-POOL .completeness _ stᵖ (regpool c _) _ (POOL-rereg p)
    with ¿ Is-just (lookupᵐ? (PoolsOf stᵖ) c) ¿
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p p)
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce gs (regdrep c d _) =
    case ¿ d ≡ PParams.drepDeposit (PParamsOf ce) × c ∉ dom (DRepsOf gs)
         ⊎ d ≡ 0 × c ∈ dom (DRepsOf gs) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce gs (deregdrep c d) =
    case ¿ c ∈ dom (DRepsOf gs) × (c , d) ∈  (DepositsOf gs) ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce gs (ccreghot c _) =
    case ¿ ((c , nothing) ∉ CCHotKeysOf gs ˢ) × c ∈ CertEnv.coldCreds ce ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce gs (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿  (d ≡ PParams.drepDeposit (PParamsOf ce) × c ∉ dom (DRepsOf gs))
         ⊎ (d ≡ 0 × c ∈ dom (DRepsOf gs))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ gs (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes ¿ c ∈ dom (DRepsOf gs) × (c , d) ∈ (DepositsOf gs) ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ce gs (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes ¿ (c , nothing) ∉ CCHotKeysOf gs ˢ × c ∈ CertEnv.coldCreds ce ¿ p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ PParamsOf ce , PoolsOf cs , dom (DRepsOf cs) ⟧ (DStateOf cs) dCert
         | computeProof (PParamsOf ce) (PStateOf cs) dCert
         | computeProof ce (GStateOf cs) dCert

  ... | success (_ , h) | _               | _               = success (-, CERT-deleg h)
  ... | failure _       | success (_ , h) | _               = success (-, CERT-pool h)
  ... | failure _       | failure _       | success (_ , h) = success (-, CERT-gov h)
  ... | failure e₁      | failure e₂      | failure e₃      = failure $
    "DELEG: " <> e₁ <> "\nPOOL: " <> e₂ <> "\nGOV: " <> e₃
  Computational-CERT .completeness ce cs
    dCert@(delegate c mv mc d) cs' (CERT-deleg h)
    with computeProof ⟦ PParamsOf ce , PoolsOf cs , dom (DRepsOf cs) ⟧ (DStateOf cs) dCert
         | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(dereg c _) cs' (CERT-deleg h)
    with computeProof ⟦ PParamsOf ce , PoolsOf cs , dom (DRepsOf cs) ⟧ (DStateOf cs) dCert
         | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(regpool c poolParams) cs' (CERT-pool h)
    with computeProof (CertEnv.pp ce) (CertState.pState cs) dCert
    | completeness _ _ _ _ h
  ... | success x | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(regdrep c _ _) cs' (CERT-gov h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(deregdrep c _) cs' (CERT-gov h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(ccreghot c mkh) cs' (CERT-gov h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl

  Computational-PRE-CERT : Computational _⊢_⇀⦇_,PRE-CERT⦈_ String
  Computational-PRE-CERT .computeProof ce cs _ =
    case ¿  filterˢ isKeyHash (mapˢ CredentialOf (dom (WithdrawalsOf ce))) ⊆ dom (VoteDelegsOf cs)
            × mapˢ (map₁ CredentialOf) (WithdrawalsOf ce ˢ) ⊆ (RewardsOf cs) ˢ  ¿
    of λ where
      (yes p) → success (-, CERT-pre p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-PRE-CERT .completeness ce st _ st' (CERT-pre p) rewrite
    dec-yes ¿  filterˢ isKeyHash (mapˢ CredentialOf (dom (WithdrawalsOf ce))) ⊆ dom (VoteDelegsOf st)
               × mapˢ (map₁ CredentialOf) (WithdrawalsOf ce ˢ) ⊆ (RewardsOf st) ˢ  ¿
        p .proj₂ = refl

  Computational-POST-CERT : Computational _⊢_⇀⦇_,POST-CERT⦈_ String
  Computational-POST-CERT .computeProof ce cs tt = success ( cs' , CERT-post)
    where
      validVoteDelegs : VoteDelegs
      validVoteDelegs = VoteDelegsOf cs ∣^ (mapˢ vDelegCredential (dom (DRepsOf cs)) ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ []) )
      cs' : CertState
      cs' = ⟦ ⟦ validVoteDelegs , _ , _ ⟧ , PStateOf cs , GStateOf cs ⟧

  Computational-POST-CERT .completeness ce cs _ cs' CERT-post = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
```
