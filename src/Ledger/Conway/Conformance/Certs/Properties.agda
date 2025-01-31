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
  Computational-DELEG .computeProof ⟦ pp , pools , delegatees ⟧ᵈᵉ ⟦ _ , _ , rwds , dep ⟧ᵈ = λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rwds → d ≡ pp .PParams.keyDeposit)
                                × (c ∈ dom rwds → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
                                    fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
                                × mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵ ¿ of λ where
      (yes p) → success (-, DELEG-delegate p )
      (no ¬p) → failure (genErrors ¬p)
    (dereg c md) → case lookupDeposit dep (CredentialDeposit c) of λ where
      (yes ((k , d) , _)) → 
        case 
          ¿ (c , 0) ∈ rwds 
          × (CredentialDeposit c , d) ∈ dep 
          × (md ≡ nothing ⊎ md ≡ just d)
          ¿ of λ where
            (yes q) → success (-, DELEG-dereg q)
            (no ¬q) → failure (genErrors ¬q)
      (no ¬p) → failure (genErrors ¬p)
    (reg c d) → case ¿ c ∉ dom rwds × (d ≡ pp .PParams.keyDeposit ⊎ d ≡ 0) ¿ of λ where
      (yes p) → success (-, DELEG-reg p)
      (no ¬p) → failure (genErrors ¬p)
    _ → failure "Unexpected certificate in DELEG"

  Computational-DELEG .completeness ⟦ pp , pools , delegatees ⟧ᵈᵉ ⟦ _ , _ , rwds , dep ⟧ᵈ (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom rwds → d ≡ pp .PParams.keyDeposit)
                                           × (c ∈ dom rwds → d ≡ 0)
                                           × mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
                                               fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
                                           × mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵ ¿) p .proj₂ = refl
  Computational-DELEG .completeness ⟦ _ , _ , _ ⟧ᵈᵉ ds@(⟦ _ , _ , rwds , dep@(depˢ , dep-uniq) ⟧ᵈ) (dereg c nothing) _ (DELEG-dereg h@(p , q , r)) 
    with lookupDeposit dep (CredentialDeposit c) 
  ... | (yes ((_ , d') , s₂ , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ rwds 
           × (CredentialDeposit c , d') ∈ dep 
           × (nothing ≡ nothing {A = ℕ} ⊎ nothing ≡ just d')
           ¿) (p , s₂ , inj₁ refl) .proj₂ = refl
  Computational-DELEG .completeness ⟦ _ , _ , _ ⟧ᵈᵉ ds@(⟦ _ , _ , rwds , dep ⟧ᵈ) (dereg c nothing) _ (DELEG-dereg h@(p , q , r)) 
      | (no ¬s) = ⊥-elim (¬s (_ , q , refl))
  Computational-DELEG .completeness ⟦ _ , _ , _ ⟧ᵈᵉ ⟦ _ , _ , rwds , dep@(depˢ , dep-uniq) ⟧ᵈ (dereg c (just d)) _ (DELEG-dereg h@(p , q , inj₂ refl)) 
    with lookupDeposit dep (CredentialDeposit c) 
  ... | (yes ((_ , d') , q' , refl)) rewrite dec-yes
          (¿ (c , 0) ∈ rwds 
           × (CredentialDeposit c , d') ∈ dep 
           × (just d ≡ nothing {A = ℕ} ⊎ just d ≡ just d')
           ¿) (p , q' , inj₂ (cong just (dep-uniq q q'))) .proj₂ = refl
  ... | (no ¬s) = ⊥-elim (¬s (_ , q , refl))
  Computational-DELEG .completeness ⟦ pp , _ , _ ⟧ᵈᵉ ⟦ _ , _ , rwds , dep ⟧ᵈ (reg c d) _ (DELEG-reg p)
    rewrite dec-yes (¿ c ∉ dom rwds × (d ≡ pp .PParams.keyDeposit ⊎ d ≡ 0) ¿) p .proj₂ = refl

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
  Computational-GOVCERT .computeProof ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ dReps , _ , dep ⟧ᵛ (regdrep c d _) =
    let open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom dReps)
         ⊎ (d ≡ 0 × c ∈ dom dReps) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ dReps , _ , dep ⟧ᵛ (deregdrep c d) =
    case ¿ c ∈ dom dReps × (DRepDeposit c , d) ∈ dep ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ⟦ _ , pp , _ , _ , cc ⟧ᶜ ⟦ _ , ccKeys , dep ⟧ᵛ (ccreghot c _) =
    case ¿ ((c , nothing) ∉ ccKeys ˢ) × c ∈ cc ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ dReps , _ , dep ⟧ᵛ
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open PParams pp in
        (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ ⟦ dReps , _ , dep ⟧ᵛ
    (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes ¿ c ∈ dom dReps × (DRepDeposit c , d) ∈ dep ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ⟦ _ , _ , _ , _ , cc ⟧ᶜ ⟦ _ , ccKeys , _ ⟧ᵛ
    (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes (¿ (((c , nothing) ∉ ccKeys ˢ) × c ∈ cc) ¿) p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof Γ@(⟦ e , pp , vs , _ , _ ⟧ᶜ) ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ dCert
    with computeProof ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ᵈᵉ stᵈ dCert
         | computeProof pp stᵖ dCert | computeProof Γ stᵍ dCert
  ... | success (_ , h) | _               | _               = success (-, CERT-deleg h)
  ... | failure _       | success (_ , h) | _               = success (-, CERT-pool h)
  ... | failure _       | failure _       | success (_ , h) = success (-, CERT-vdel h)
  ... | failure e₁      | failure e₂      | failure e₃      = failure $
    "DELEG: " <> e₁ <> "\nPOOL: " <> e₂ <> "\nVDEL: " <> e₃
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(delegate c mv mc d) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(reg c d) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(dereg c _) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ , dom (GState.dreps stᵍ) ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(regpool c poolParams) ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ (CERT-pool h)
    with computeProof pp stᵖ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(retirepool c e) ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(regdrep c d an)
    ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(deregdrep c _) ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(ccreghot c mkh) ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl

  Computational-CERTBASE : Computational _⊢_⇀⦇_,CERTBASE⦈_ String
  Computational-CERTBASE .computeProof ⟦ e , pp , vs , wdrls , _ ⟧ᶜ st sig = goal
    where
    open PParams pp; open CertState st; open GState gState; open DState dState
    sep : String
    sep = " | "
    refresh = mapPartial getDRepVote (fromList vs)

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
           (∃-syntax (_⊢_⇀⦇_,CERTBASE⦈_ ⟦ e , pp , vs , wdrls , _ ⟧ᶜ st sig))
    goal = case ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
              × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes p) → success (-, CERT-base p)
      (no ¬p) → failure (genErr ¬p)
  Computational-CERTBASE .completeness ⟦ e , pp , vs , wdrls , _ ⟧ᶜ st _ st' (CERT-base p)
    rewrite let dState = CertState.dState st; open DState dState in
      dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
                × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿
        p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it
