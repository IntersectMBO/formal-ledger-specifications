---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.Computational (gs : _) (open GovStructure gs) where

open import Data.Maybe.Properties
open import Relation.Nullary.Decidable

open import Tactic.ReduceDec

open import Algebra using (CommutativeMonoid)
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Conway.Specification.Certs gs

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid; +-identityʳ; +-identityˡ)
open import Axiom.Set.Properties th
open import Relation.Binary using (IsEquivalence)
open Computational ⦃...⦄

open import stdlib-meta.Tactic.GenError using (genErrors)

open CertState
open GovVote using (voter)

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_ String
  Computational-DELEG .computeProof de stᵈ =
    let open DelegEnv de; open DState stᵈ in
    λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rewards → d ≡ pparams .PParams.keyDeposit)
                                × (c ∈ dom rewards → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ vDelegCredential) delegatees ∪
                                    fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                × mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵
                                ¿ of λ where
      (yes p) → success (-, DELEG-delegate p)
      (no ¬p) → failure (genErrors ¬p)
    (dereg c d) → case ¿ (c , 0) ∈ rewards ¿ of λ where
      (yes p) → success (-, DELEG-dereg p)
      (no ¬p) → failure (genErrors ¬p)
    (reg c d) → case ¿ c ∉ dom rewards
                     × (d ≡ pparams .PParams.keyDeposit ⊎ d ≡ 0)
                     ¿ of λ where
      (yes p) → success (-, DELEG-reg p)
      (no ¬p) → failure (genErrors ¬p)
    _ → failure "Unexpected certificate in DELEG"
  Computational-DELEG .completeness de stᵈ (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom (DState.rewards stᵈ) → d ≡ DelegEnv.pparams de .PParams.keyDeposit)
                                × (c ∈ dom (DState.rewards stᵈ) → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ vDelegCredential) (DelegEnv.delegatees de) ∪ fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵
                                           ¿) p .proj₂ = refl
  Computational-DELEG .completeness de stᵈ (dereg c d) _ (DELEG-dereg p)
    rewrite dec-yes (¿ (c , 0) ∈ (DState.rewards stᵈ) ¿) p .proj₂ = refl
  Computational-DELEG .completeness de stᵈ (reg c d) _ (DELEG-reg p)
    rewrite dec-yes (¿ c ∉ dom (DState.rewards stᵈ) × (d ≡ DelegEnv.pparams de .PParams.keyDeposit ⊎ d ≡ 0) ¿) p .proj₂ = refl

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ stᵖ (regpool c _) = success (-, POOL-regpool)
  Computational-POOL .computeProof _ _ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ _ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ stᵖ (regpool c _) _ POOL-regpool = refl
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce cs (regdrep c d _) =
    let open CertEnv ce; open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom (GState.dreps (gState cs)))
         ⊎ (d ≡ 0 × c ∈ dom (GState.dreps (gState cs))) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ cs (deregdrep c _) =
    case c ∈? dom (GState.dreps (gState cs)) of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce cs (ccreghot c _) =
    let open CertEnv ce in
    case ¿ ((c , nothing) ∉ GState.ccHotKeys (gState cs) ˢ) × c ∈ coldCreds ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce cs
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open CertEnv ce; open PParams pp in
        (d ≡ drepDeposit × c ∉ dom (GState.dreps (gState cs))) ⊎ (d ≡ 0 × c ∈ dom (GState.dreps (gState cs))))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ cs
    (deregdrep c _) _ (GOVCERT-deregdrep p)
    rewrite dec-yes (c ∈? dom (GState.dreps (gState cs))) p .proj₂ = refl
  Computational-GOVCERT .completeness ce cs
    (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes (¿ (((c , nothing) ∉ (GState.ccHotKeys (gState cs)) ˢ) × c ∈ CertEnv.coldCreds ce) ¿) p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ CertEnv.pp ce , PState.pools (pState cs) , dom (GState.dreps (gState cs)) ⟧ (dState cs) dCert
       | computeProof (CertEnv.pp ce) (pState cs) dCert | computeProof ce cs dCert
  ... | success (_ , h) | _               | _               = success (-, CERT-deleg h)
  ... | failure _       | success (_ , h) | _               = success (-, CERT-pool h)
  ... | failure _       | failure _       | success (_ , h) = success (-, CERT-vdel h)
  ... | failure e₁      | failure e₂      | failure e₃      = failure $
    "DELEG: " <> e₁ <> "\nPOOL: " <> e₂ <> "\nVDEL: " <> e₃
  Computational-CERT .completeness ce cs
    dCert@(delegate c mv mc d) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (pState cs) , dom (GState.dreps (gState cs)) ⟧ (dState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(reg c d) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (pState cs) , dom (GState.dreps (gState cs)) ⟧ (dState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(dereg c _) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (pState cs) , dom (GState.dreps (gState cs)) ⟧ (dState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(regpool c poolParams) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness ce cs
    (regdrep c d an) _ (CERT-vdel (GOVCERT-regdrep p))
    rewrite dec-yes
      ¿ (let open CertEnv ce; open PParams pp in
        (d ≡ drepDeposit × c ∉ dom (GState.dreps (gState cs))) ⊎ (d ≡ 0 × c ∈ dom (GState.dreps (gState cs))))
      ¿ p .proj₂ = refl
  Computational-CERT .completeness ce cs
    (deregdrep c _) _ (CERT-vdel (GOVCERT-deregdrep p))
    rewrite dec-yes (c ∈? dom (GState.dreps (gState cs))) p .proj₂ = refl
  Computational-CERT .completeness ce cs
    (ccreghot c _) _ (CERT-vdel (GOVCERT-ccreghot p))
    rewrite dec-yes (¿ (((c , nothing) ∉ (GState.ccHotKeys (gState cs)) ˢ) × c ∈ CertEnv.coldCreds ce) ¿) p .proj₂ = refl

  Computational-PRE-CERT : Computational _⊢_⇀⦇_,PRE-CERT⦈_ String
  Computational-PRE-CERT .computeProof ce cs _ =
    let open CertEnv ce; open PParams pp
        open GState (gState cs); open DState (dState cs)
        refresh = mapPartial (isGovVoterDRep ∘ voter) (fromList votes)
        refreshedDReps  = mapValueRestricted (const (CertEnv.epoch ce + drepActivity)) dreps refresh
    in case ¿ filterˢ isKeyHash (mapˢ RewardAddress.stake (dom wdrls)) ⊆ dom voteDelegs
              × mapˢ (map₁ RewardAddress.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes p) → success (-, CERT-pre p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-PRE-CERT .completeness ce st _ st' (CERT-pre p)
    rewrite let dState = CertState.dState st; open DState dState in
      dec-yes ¿ filterˢ isKeyHash (mapˢ RewardAddress.stake (dom (CertEnv.wdrls ce))) ⊆ dom voteDelegs
                × mapˢ (map₁ RewardAddress.stake) (CertEnv.wdrls ce ˢ) ⊆ rewards ˢ ¿
        p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
```
