---
source_branch: master
source_path: src/Ledger/Conway/Conformance/Certs/Properties.lagda.md
---
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Base using (GovStructure)

module Ledger.Conway.Conformance.Certs.Properties (gs : _) (open GovStructure gs) where

open import Data.Maybe.Properties
open import Relation.Nullary.Decidable

open import Ledger.Conway.Specification.Certs.Properties.Computational gs
  using (Computational-POOL)
open import Ledger.Conway.Specification.Gov.Actions gs hiding (yes; no)
open import Ledger.Conway.Conformance.Certs gs

open Computational ⦃...⦄

open import stdlib-meta.Tactic.GenError using (genErrors)

open DCert ; open PState
open GovVote

lookupDeposit :
  (dep : DepositPurpose ⇀ Coin) (c : DepositPurpose) →
  Dec (Any (λ (c' , _) → c ≡ c') (dep ˢ))
lookupDeposit dep c = any? (λ { _ → ¿ _ ¿ }) (dep ˢ)

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_ String
  Computational-DELEG .computeProof de ds =
    let open DelegEnv de; open DState ds in
    λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rewards → d ≡ pparams .PParams.keyDeposit)
                                × (c ∈ dom rewards → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ vDelegCredential) delegatees ∪
                                    fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵ ¿ of λ where
      (yes p) → success (-, DELEG-delegate p )
      (no ¬p) → failure (genErrors ¬p)
    (dereg c md) → case lookupDeposit deposits (CredentialDeposit c) of λ where
      (yes ((k , d) , _)) →
        case
          ¿ (c , 0) ∈ rewards
          × (CredentialDeposit c , d) ∈ deposits
          × (md ≡ nothing ⊎ md ≡ just d)
          ¿ of λ where
            (yes q) → success (-, DELEG-dereg q)
            (no ¬q) → failure (genErrors ¬q)
      (no ¬p) → failure (genErrors ¬p)
    (reg c d) → case ¿ c ∉ dom rewards × (d ≡ pparams .PParams.keyDeposit ⊎ d ≡ 0) ¿ of λ where
      (yes p) → success (-, DELEG-reg p)
      (no ¬p) → failure (genErrors ¬p)
    _ → failure "Unexpected certificate in DELEG"

  Computational-DELEG .completeness de ds (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom (DState.rewards ds) → d ≡ DelegEnv.pparams de .PParams.keyDeposit)
                                           × (c ∈ dom (DState.rewards ds) → d ≡ 0)
                                           × mv ∈ mapˢ (just ∘ vDelegCredential) (DelegEnv.delegatees de) ∪
                                               fromList ( nothing ∷ just vDelegAbstain ∷ just vDelegNoConfidence ∷ [] )
                                           × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵ ¿) p .proj₂ = refl
  Computational-DELEG .completeness _ ds (dereg c nothing) _ (DELEG-dereg h@(p , q , r))
    with lookupDeposit (DState.deposits ds) (CredentialDeposit c)
  ... | (yes ((_ , d') , s₂ , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ (DState.rewards ds)
           × (CredentialDeposit c , d') ∈ (DState.deposits ds)
           × (nothing ≡ nothing {A = ℕ} ⊎ nothing ≡ just d')
           ¿) (p , s₂ , inj₁ refl) .proj₂ = refl
  Computational-DELEG .completeness _ ds (dereg c nothing) _ (DELEG-dereg h@(p , q , r))
      | (no ¬s) = ⊥-elim (¬s (_ , q , refl))
  Computational-DELEG .completeness _ ds (dereg c (just d)) _ (DELEG-dereg h@(p , q , inj₂ refl))
    with lookupDeposit (DState.deposits ds) (CredentialDeposit c)
  ... | (yes ((_ , d') , q' , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ (DState.rewards ds)
           × (CredentialDeposit c , d') ∈ (DState.deposits ds)
           × (just d ≡ nothing {A = ℕ} ⊎ just d ≡ just d')
           ¿) (p , q' , inj₂ (cong just (proj₂ (DState.deposits ds) q q'))) .proj₂ = refl
  ... | (no ¬s) = ⊥-elim (¬s (_ , q , refl))
  Computational-DELEG .completeness de ds (reg c d) _ (DELEG-reg p)
    rewrite dec-yes (¿ c ∉ dom (DState.rewards ds) × (d ≡ DelegEnv.pparams de .PParams.keyDeposit ⊎ d ≡ 0) ¿) p .proj₂ = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce cs (regdrep c d _) =
    let open CertEnv ce; open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom (GState.dreps (CertState.gState cs)))
         ⊎ (d ≡ 0 × c ∈ dom (GState.dreps (CertState.gState cs))) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce cs (deregdrep c d) =
    case ¿ c ∈ dom (GState.dreps (CertState.gState cs)) × (DRepDeposit c , d) ∈  (GState.deposits (CertState.gState cs)) ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce cs (ccreghot c _) =
    let open CertEnv ce in
    case ¿ ((c , nothing) ∉ GState.ccHotKeys (CertState.gState cs) ˢ) × c ∈ coldCreds ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce cs
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open CertEnv ce; open PParams pp in
        (d ≡ drepDeposit × c ∉ dom (GState.dreps (CertState.gState cs))) ⊎ (d ≡ 0 × c ∈ dom (GState.dreps (CertState.gState cs))))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ cs
    (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes ¿ c ∈ dom (GState.dreps (CertState.gState cs)) × (DRepDeposit c , d) ∈ (GState.deposits (CertState.gState cs)) ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ce cs
    (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes (¿ (((c , nothing) ∉ (GState.ccHotKeys (CertState.gState cs)) ˢ) × c ∈ CertEnv.coldCreds ce) ¿) p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ CertEnv.pp ce , PState.pools (CertState.pState cs) , dom (GState.dreps (CertState.gState cs)) ⟧
                      (CertState.dState cs) dCert
         | computeProof (CertEnv.pp ce) (CertState.pState cs) dCert
         | computeProof ce cs dCert
  ... | success (_ , h) | _               | _               = success (-, CERT-deleg h)
  ... | failure _       | success (_ , h) | _               = success (-, CERT-pool h)
  ... | failure _       | failure _       | success (_ , h) = success (-, CERT-vdel h)
  ... | failure e₁      | failure e₂      | failure e₃      = failure $
    "DELEG: " <> e₁ <> "\nPOOL: " <> e₂ <> "\nVDEL: " <> e₃
  Computational-CERT .completeness ce cs
    dCert@(delegate c mv mc d) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (CertState.pState cs) , dom (GState.dreps (CertState.gState cs)) ⟧
                      (CertState.dState cs) dCert
         | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(reg c d) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (CertState.pState cs) , dom (GState.dreps (CertState.gState cs)) ⟧
                      (CertState.dState cs) dCert
         | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(dereg c _) cs' (CERT-deleg h)
    with computeProof ⟦ CertEnv.pp ce , PState.pools (CertState.pState cs) , dom (GState.dreps (CertState.gState cs)) ⟧
                      (CertState.dState cs) dCert
         | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(regpool c poolParams) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(regdrep c d an)
    cs' (CERT-vdel h)
    with computeProof {STS = _⊢_⇀⦇_,GOVCERT⦈_} Γ cs dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(deregdrep c _) cs' (CERT-vdel h)
    with computeProof {STS = _⊢_⇀⦇_,GOVCERT⦈_} Γ cs dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(ccreghot c mkh) cs' (CERT-vdel h)
    with computeProof {STS = _⊢_⇀⦇_,GOVCERT⦈_} Γ cs dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl


  Computational-PRE-CERT : Computational _⊢_⇀⦇_,PRE-CERT⦈_ String
  Computational-PRE-CERT .computeProof ce cs _ =
    let open CertEnv ce; open PParams pp
        open GState (CertState.gState cs); open DState (CertState.dState cs)
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
