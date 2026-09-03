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
open StakePoolParams
open PoolEnv
open PParams

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
  Computational-POOL .computeProof _ stᵖ (regpool c poolParams)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  Computational-POOL .computeProof Γ stᵖ (regpool c poolParams) | yes p
    with ¿ ¬ (poolParams .vrf ∈ poolVrfs (PoolsOf stᵖ ∣ ❴ c ❵ ᶜ) ∪ mapˢ vrf (range (FuturePoolsOf stᵖ ∣ ❴ c ❵ ᶜ)))
         ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
         ∙ Γ .pp .minPoolCost ≤ poolParams .cost ¿
  ... | yes q = success (-, POOL-rereg (p , q))
  ... | no ¬q = failure (genErrors ¬q)
  Computational-POOL .computeProof Γ stᵖ (regpool c poolParams) | no ¬p
    with ¿ ¬ (poolParams .vrf ∈ poolVrfs (PoolsOf stᵖ) ∪ mapˢ vrf (range (FuturePoolsOf stᵖ)))
         ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
         ∙ Γ .pp .minPoolCost ≤ poolParams .cost ¿
  ... | yes q = success (-, (POOL-reg (¬p , q)))
  ... | no ¬q = failure (genErrors ¬q)
  Computational-POOL .computeProof Γ stᵖ (regblskey c vk pop)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c
         ∙ isValidPoP vk pop ¿
  ... | yes p = success (-, POOL-regblskey p)
  ... | no ¬p = failure (genErrors ¬p)
  Computational-POOL .computeProof Γ stᵖ (retirepool c e')
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c
         ∙ Γ .epoch < e'
         ∙ e' ≤  Γ .epoch + Γ .pp .Emax ¿
  ... | yes p = success (-, POOL-retirepool p)
  ... | no ¬q = failure (genErrors ¬q)
  Computational-POOL .computeProof _ stᵖ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness Γ stᵖ (regpool c poolParams) _ (POOL-reg (p , q))
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  ... | yes r = ⊥-elim (p r)
  ... | no ¬r
    with ¿ ¬ (poolParams .vrf ∈ poolVrfs (PoolsOf stᵖ) ∪ mapˢ vrf (range (FuturePoolsOf stᵖ)))
         ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
         ∙ Γ .pp .minPoolCost ≤ poolParams .cost ¿
  ... | yes _ = refl
  ... | no ¬s = ⊥-elim (¬s q)
  Computational-POOL .completeness Γ stᵖ (regpool c poolParams) _ (POOL-rereg (p , q))
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c ¿
  ... | no ¬r = ⊥-elim (¬r p)
  ... | yes r
    with ¿ ¬ (poolParams .vrf ∈ poolVrfs (PoolsOf stᵖ ∣ ❴ c ❵ ᶜ) ∪ mapˢ vrf (range (FuturePoolsOf stᵖ ∣ ❴ c ❵ ᶜ)))
         ∙ NetworkIdOf (poolParams .rewardAccount) ≡ NetworkId
         ∙ Γ .pp .minPoolCost ≤ poolParams .cost ¿
  ... | yes _ = refl
  ... | no ¬s = ⊥-elim (¬s q)
  Computational-POOL .completeness Γ stᵖ (regblskey c vk pop) _ (POOL-regblskey p)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c
         ∙ isValidPoP vk pop ¿
  ... | yes _ = refl
  ... | no ¬p = ⊥-elim (¬p p)
  Computational-POOL .completeness Γ stᵖ (retirepool c e) _ (POOL-retirepool p)
    with ¿ IsPoolRegistered (PoolsOf stᵖ) c
         ∙ Γ .epoch < e
         ∙ e ≤ Γ .epoch + Γ .pp .Emax ¿
  ... | yes _ = refl
  ... | no ¬q = ⊥-elim (¬q p)

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce cs (regdrep c d _) =
    case ¿ d ≡ PParams.drepDeposit (PParamsOf ce) × c ∉ dom (DRepsOf cs)
         ⊎ d ≡ 0 × c ∈ dom (DRepsOf cs) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce cs (deregdrep c d) =
    case ¿ c ∈ dom (DRepsOf cs) × (c , d) ∈  (DepositsOf (GStateOf cs)) ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce cs (ccreghot c _) =
    case ¿ ((c , nothing) ∉ CCHotKeysOf cs ˢ) × c ∈ ColdCredentialsOf ce ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce cs (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿  (d ≡ PParams.drepDeposit (PParamsOf ce) × c ∉ dom (DRepsOf cs))
         ⊎ (d ≡ 0 × c ∈ dom (DRepsOf cs))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ cs (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes ¿ c ∈ dom (DRepsOf cs) × (c , d) ∈ (DepositsOf (GStateOf cs)) ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ce cs (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes ¿ (c , nothing) ∉ CCHotKeysOf cs ˢ × c ∈ ColdCredentialsOf ce ¿ p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ PParamsOf ce , PoolsOf cs , dom (DRepsOf cs) ⟧ (DStateOf cs) dCert
         | computeProof ⟦ EpochOf ce , PParamsOf ce ⟧ (PStateOf cs) dCert
         | computeProof ⟦ EpochOf ce , PParamsOf ce , ColdCredentialsOf ce ⟧ cs dCert

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
    with computeProof ⟦ EpochOf ce , PParamsOf ce ⟧ (PStateOf cs) dCert
    | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with computeProof ⟦ EpochOf ce , PParamsOf ce ⟧ (PStateOf cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(regblskey c vk pop) cs' (CERT-pool h)
    with computeProof ⟦ EpochOf ce , PParamsOf ce ⟧ (PStateOf cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    (regdrep c d an) _ (CERT-gov (GOVCERT-regdrep p))
    rewrite dec-yes
      ¿  (d ≡ PParams.drepDeposit (PParamsOf Γ) × c ∉ dom (DRepsOf cs))
         ⊎ (d ≡ 0 × c ∈ dom (DRepsOf cs))
      ¿ p .proj₂ = refl
  Computational-CERT .completeness Γ cs
    (deregdrep c d) _ (CERT-gov (GOVCERT-deregdrep p))
    rewrite dec-yes ¿ c ∈ dom (DRepsOf cs) × (c , d) ∈ (DepositsOf (GStateOf cs)) ¿ p .proj₂ = refl
  Computational-CERT .completeness Γ cs
    (ccreghot c mc) _ (CERT-gov (GOVCERT-ccreghot p))
    rewrite dec-yes ¿ (c , nothing) ∉ CCHotKeysOf cs ˢ × c ∈ ColdCredentialsOf Γ ¿ p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
```
