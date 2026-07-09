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

open import stdlib-meta.Tactic.GenError using (genErrors)
import Data.Maybe.Relation.Unary.Any as M

open GovStructure govStructure
open RewardAddress

open Computational ⦃...⦄

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
    (dereg c d) →
        case
          ¿ (c , 0) ∈ (RewardsOf ds)
          × (c , d) ∈ (DepositsOf ds)
          ¿ of λ where
            (yes q) → success (-, DELEG-dereg q)
            (no ¬q) → failure (genErrors ¬q)
    _ → failure "Unexpected certificate in DELEG"

  Computational-DELEG .completeness de ds (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom (RewardsOf ds) → d ≡ DelegEnv.pparams de .PParams.keyDeposit)
                                           × (c ∈ dom (RewardsOf ds) → d ≡ 0)
                                           × mv ∈ mapˢ (just ∘ vDelegCredential) (DelegEnv.delegatees de) ∪
                                               fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                           × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵ ¿) p .proj₂ = refl
  Computational-DELEG .completeness _ ds (dereg c d) _ (DELEG-dereg (p , q))
    with ¿ (c , 0) ∈ (RewardsOf ds) × (c , d) ∈ (DepositsOf ds) ¿
  ... | yes p = refl
  ... | no ¬p = ⊥-elim (¬p (p , q))

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ stᵖ (regpool c _)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  ... | yes p = success (-, (POOL-rereg p))
  ... | no ¬p = success (-, (POOL-reg ¬p))
  Computational-POOL .computeProof _ stᵖ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ stᵖ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ stᵖ (regpool c _) _ (POOL-reg p)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  ... | yes p' = ⊥-elim (p p')
  ... | no _ = refl
  Computational-POOL .completeness _ stᵖ (regpool c _) _ (POOL-rereg p)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  ... | yes _ = refl
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
  ... | success _ | refl = refl
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

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
```
