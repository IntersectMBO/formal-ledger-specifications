{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure using (GovStructure)

module Ledger.Conway.Conformance.Certs.Properties (gs : _) (open GovStructure gs) where

open import Data.Maybe.Properties
open import Relation.Nullary.Decidable

open import Ledger.GovernanceActions gs hiding (yes; no)
open import Ledger.Conway.Conformance.Certs gs

open Computational ⦃...⦄

open import Tactic.GenError using (genErrors)

open DCert ; open PState


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
                                × mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
                                    fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
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
                                           × mv ∈ mapˢ (just ∘ credVoter DRep) (DelegEnv.delegatees de) ∪
                                               fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
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

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ ps (regpool c _) =
    case ¬? (c ∈? dom (pools ps)) of λ where
      (yes p) → success (-, POOL-regpool p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-POOL .computeProof _ _ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ _ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ ps (regpool c _) _ (POOL-regpool ¬p)
    rewrite dec-no (c ∈? dom (pools ps)) ¬p = refl
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce gs (regdrep c d _) =
    let open CertEnv ce; open GState gs; open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom dreps)
         ⊎ (d ≡ 0 × c ∈ dom dreps) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce gs (deregdrep c d) =
    case ¿ c ∈ dom (GState.dreps gs) × (DRepDeposit c , d) ∈  (GState.deposits gs) ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce gs (ccreghot c _) =
    let open CertEnv ce; open GState gs in
    case ¿ ((c , nothing) ∉ ccHotKeys ˢ) × c ∈ coldCreds ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce gs
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open CertEnv ce; open PParams pp in
        (d ≡ drepDeposit × c ∉ dom (GState.dreps gs)) ⊎ (d ≡ 0 × c ∈ dom (GState.dreps gs)))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ gs
    (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes ¿ c ∈ dom (GState.dreps gs) × (DRepDeposit c , d) ∈ (GState.deposits gs) ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ce gs
    (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes (¿ (((c , nothing) ∉ (GState.ccHotKeys gs) ˢ) × c ∈ CertEnv.coldCreds ce) ¿) p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ CertEnv.pp ce , PState.pools (CertState.pState cs) , dom (GState.dreps (CertState.gState cs)) ⟧
                      (CertState.dState cs) dCert
         | computeProof (CertEnv.pp ce) (CertState.pState cs) dCert
         | computeProof ce (CertState.gState cs) dCert
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
    with computeProof (CertEnv.pp ce) (CertState.pState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(regdrep c d an)
    cs' (CERT-vdel h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(deregdrep c _) cs' (CERT-vdel h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ cs
    dCert@(ccreghot c mkh) cs' (CERT-vdel h)
    with computeProof Γ (CertState.gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl

  Computational-CERTBASE : Computational _⊢_⇀⦇_,CERTBASE⦈_ String
  Computational-CERTBASE .computeProof ce st sig = goal
    where
    open CertEnv ce; open PParams pp; open CertState st
    open GState gState; open DState dState
    sep : String
    sep = " | "
    refresh = mapPartial getDRepVote (fromList votes)

    genErr : ¬ ( filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
                 × mapˢ (Bifunctor.map₁ Bifunctor-× (RwdAddr.stake)) (wdrls ˢ) ⊆ proj₁ rewards)
                  → String
    genErr ¬p = case dec-de-morgan ¬p of λ where
      (inj₁ a) → " ¬ ( filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs ) "
                 + sep + " filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)): "
                 + show (filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)))
                 + sep + " dom voteDelegs: "
                 + show (dom voteDelegs)
      (inj₂ b) → "¬ ( mapˢ (Bifunctor.map₁ Bifunctor-× (RwdAddr.stake)) (wdrls ˢ) ⊆ proj₁ rewards )"
                 + sep + " mapˢ (Bifunctor.map₁ Bifunctor-× (RwdAddr.stake)) (wdrls ˢ): "
                 + show (mapˢ (Bifunctor.map₁ Bifunctor-× (RwdAddr.stake)) (wdrls ˢ))
                 + sep + " proj₁ rewards: "
                 + show (proj₁ rewards)

    goal : ComputationResult String
           (∃-syntax (_⊢_⇀⦇_,CERTBASE⦈_ ⟦ CertEnv.epoch ce , pp , votes , wdrls , _ ⟧ st sig))
    goal = case ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
              × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes p) → success (-, CERT-base p)
      (no ¬p) → failure (genErr ¬p)
  Computational-CERTBASE .completeness ce st _ st' (CERT-base p)
    rewrite let dState = CertState.dState st; open DState dState; open CertEnv ce in
      dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
                × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿
        p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
