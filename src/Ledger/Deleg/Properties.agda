{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.GovStructure

open import Data.Maybe.Properties
open import Relation.Nullary.Decidable

open import Tactic.ReduceDec

module Ledger.Deleg.Properties (gs : _) (open GovStructure gs) where

open import Ledger.GovernanceActions gs hiding (yes; no)
open import Ledger.Deleg gs

open Computational ⦃...⦄

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_
  Computational-DELEG .computeProof ⟦ pp , pools ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ = λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rwds → d ≡ pp .PParams.poolDeposit)
                                × (c ∈ dom rwds → d ≡ 0)
                                × mc ∈ mapˢ just (dom pools) ¿ of λ where
      (yes (p₁ , p₂ , p₃)) → just (-, DELEG-delegate p₁ p₂ p₃)
      _ → nothing
    (dereg c) → case ¿ (c , 0) ∈ rwds ¿ of λ where
      (yes p) → just (-, DELEG-dereg p)
      _       → nothing
    _ → nothing
  Computational-DELEG .completeness ⟦ pp , pools ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ (delegate c mv mc d)
    s' (DELEG-delegate p₁ p₂ p₃) rewrite dec-yes (¿ (c ∉ dom rwds → d ≡ pp .PParams.poolDeposit)
                                × (c ∈ dom rwds → d ≡ 0)
                                × mc ∈ mapˢ just (dom pools) ¿) (p₁ , p₂ , p₃) .proj₂ = refl
  Computational-DELEG .completeness ⟦ _ , _ ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ (dereg c) _ (DELEG-dereg p)
    rewrite dec-yes (¿ (c , 0) ∈ rwds ¿) p .proj₂ = refl

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_
  Computational-POOL .computeProof _ ⟦ pools , _ ⟧ᵖ (regpool c _) =
    case c ∈? dom pools of λ where
      (yes _) → nothing
      (no p)  →  just (-, POOL-regpool p)
  Computational-POOL .computeProof _ _ (retirepool c e) = just (-, POOL-retirepool)
  Computational-POOL .computeProof _ _ _ = nothing
  Computational-POOL .completeness _ ⟦ pools , _ ⟧ᵖ (regpool c _) _ (POOL-regpool ¬p)
    rewrite dec-no (c ∈? dom pools) ¬p = refl
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_
  Computational-GOVCERT .computeProof ⟦ _ , pp , _ , _ ⟧ᶜ ⟦ dReps , _ ⟧ᵛ (regdrep c d _) =
    let open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom dReps)
         ⊎ (d ≡ 0 × c ∈ dom dReps) ¿ of λ where
      (yes p) → just (-, GOVCERT-regdrep p)
      (no _)  → nothing
  Computational-GOVCERT .computeProof _ ⟦ dReps , _ ⟧ᵛ (deregdrep c) =
    case c ∈? dom dReps of λ where
      (yes p) → just (-, GOVCERT-deregdrep p)
      (no _)  → nothing
  Computational-GOVCERT .computeProof _ ⟦ _ , ccKeys ⟧ᵛ (ccreghot c _) =
    case (c , nothing) ∈? (ccKeys ˢ) of λ where
      (yes _) → nothing
      (no p)  → just (-, GOVCERT-ccreghot p)
  Computational-GOVCERT .computeProof _ _ _ = nothing
  Computational-GOVCERT .completeness ⟦ _ , pp , _ , _ ⟧ᶜ ⟦ dReps , _ ⟧ᵛ
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open PParams pp in
        (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ ⟦ dReps , _ ⟧ᵛ
    (deregdrep c) _ (GOVCERT-deregdrep p)
    rewrite dec-yes (c ∈? dom dReps) p .proj₂ = refl
  Computational-GOVCERT .completeness _ ⟦ _ , ccKeys ⟧ᵛ
    (ccreghot c _) _ (GOVCERT-ccreghot ¬p)
    rewrite dec-no ((c , nothing) ∈? (ccKeys ˢ)) ¬p = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_
  Computational-CERT .computeProof Γ@(⟦ e , pp , vs , _ ⟧ᶜ) ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ dCert
    with computeProof ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ stᵈ dCert
       | computeProof pp stᵖ dCert | computeProof Γ stᵍ dCert
  ... | just (_ , h) | _            | _            = just (-, CERT-deleg h)
  ... | nothing      | just (_ , h) | _            = just (-, CERT-pool h)
  ... | nothing      | nothing      | just (_ , h) = just (-, CERT-vdel h)
  ... | nothing      | nothing      | nothing      = nothing
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(delegate c mv mc d) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(dereg c) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(regpool c poolParams) ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ (CERT-pool h)
    with computeProof pp stᵖ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , _ ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(retirepool c e) ⟦ stᵈ , stᵖ' , stᵍ ⟧ᶜˢ (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(regdrep c d an)
    ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(deregdrep c) ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl
  Computational-CERT .completeness Γ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(ccreghot c mkh) ⟦ stᵈ , stᵖ , stᵍ' ⟧ᶜˢ (CERT-vdel h)
    with computeProof Γ stᵍ dCert | completeness _ _ _ _ h
  ... | just _ | refl = refl

  Computational-CERTBASE : Computational _⊢_⇀⦇_,CERTBASE⦈_
  Computational-CERTBASE .computeProof ⟦ e , pp , vs , wdrls ⟧ᶜ st _ =
    let open PParams pp; open CertState st; open GState gState; open DState dState
        refresh = mapPartial getDRepVote (fromList vs)
        wdrlCreds = mapˢ RwdAddr.stake (dom wdrls)
    in case ¿ wdrlCreds ⊆ dom voteDelegs × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes (p₁ , p₂)) → just (-, CERT-base p₁ p₂)
      (no ¬p)         → nothing
  Computational-CERTBASE .completeness ⟦ e , pp , vs , wdrls ⟧ᶜ st _ st' (CERT-base p₁ p₂)
    rewrite let dState = CertState.dState st; open DState dState in
      dec-yes ¿ mapˢ RwdAddr.stake (dom wdrls) ⊆ dom voteDelegs × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿
        (p₁ , p₂) .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_
Computational-CERTS = it
