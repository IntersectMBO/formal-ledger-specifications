{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Types.GovStructure

open import Data.Maybe.Properties
open import Relation.Nullary.Decidable

open import Tactic.ReduceDec

module Ledger.Certs.Properties (gs : _) (open GovStructure gs) where

open import Algebra using (CommutativeMonoid)
open import Ledger.GovernanceActions gs hiding (yes; no)
open import Ledger.Certs gs
open import Data.Nat.Properties         using (+-0-commutativeMonoid; +-0-monoid; +-identityʳ; +-identityˡ)
open import Axiom.Set.Properties using (Dec-∈-singleton; ≡ᵉ-isEquivalence; ∪-cong)
open Computational ⦃...⦄

open import Tactic.GenError using (genErrors)

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_ String
  Computational-DELEG .computeProof ⟦ pp , pools , deps ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ = λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rwds → d ≡ pp .PParams.keyDeposit)
                                × (c ∈ dom rwds → d ≡ 0)
                                × mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵ ¿ of λ where
      (yes p) → success (-, DELEG-delegate p)
      (no ¬p) → failure (genErrors ¬p)
    (dereg c d) → case ¿ (c , 0) ∈ rwds × (CredentialDeposit c , d) ∈ deps ¿ of λ where
      (yes p) → success (-, DELEG-dereg p)
      (no ¬p) → failure (genErrors ¬p)
    _ → failure "Unexpected certificate in DELEG"
  Computational-DELEG .completeness ⟦ pp , pools , deps ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ (delegate c mv mc d)
    s' (DELEG-delegate p) rewrite dec-yes (¿ (c ∉ dom rwds → d ≡ pp .PParams.keyDeposit)
                                × (c ∈ dom rwds → d ≡ 0)
                                × mc ∈ mapˢ just (dom pools) ∪ ❴ nothing ❵ ¿) p .proj₂ = refl
  Computational-DELEG .completeness ⟦ _ , _ , deps ⟧ᵈᵉ ⟦ _ , _ , rwds ⟧ᵈ (dereg c d) _ (DELEG-dereg p)
    rewrite dec-yes (¿ (c , 0) ∈ rwds × (CredentialDeposit c , d) ∈ deps ¿) p .proj₂ = refl

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ ⟦ pools , _ ⟧ᵖ (regpool c _) =
    case ¬? (c ∈? dom pools) of λ where
      (yes p) → success (-, POOL-regpool p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-POOL .computeProof _ _ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ _ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ ⟦ pools , _ ⟧ᵖ (regpool c _) _ (POOL-regpool ¬p)
    rewrite dec-no (c ∈? dom pools) ¬p = refl
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ dReps , _ ⟧ᵛ (regdrep c d _) =
    let open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom dReps)
         ⊎ (d ≡ 0 × c ∈ dom dReps) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ⟦ _ , _ , _ , _ , deps ⟧ᶜ ⟦ dReps , _ ⟧ᵛ (deregdrep c d) =
    case ¿ c ∈ dom dReps × (CredentialDeposit c , d) ∈ deps ¿ of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ ⟦ _ , ccKeys ⟧ᵛ (ccreghot c _) =
    case ¬? ((c , nothing) ∈? (ccKeys ˢ)) of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ⟦ _ , pp , _ , _ , _ ⟧ᶜ ⟦ dReps , _ ⟧ᵛ
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open PParams pp in
        (d ≡ drepDeposit × c ∉ dom dReps) ⊎ (d ≡ 0 × c ∈ dom dReps))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness ⟦ _ , _ , _ , _ , deps ⟧ᶜ ⟦ dReps , _ ⟧ᵛ
    (deregdrep c d) _ (GOVCERT-deregdrep p)
    rewrite dec-yes (¿ c ∈ dom dReps × (CredentialDeposit c , d) ∈ deps ¿) p .proj₂ = refl
  Computational-GOVCERT .completeness _ ⟦ _ , ccKeys ⟧ᵛ
    (ccreghot c _) _ (GOVCERT-ccreghot ¬p)
    rewrite dec-no ((c , nothing) ∈? (ccKeys ˢ)) ¬p = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof Γ@(⟦ e , pp , vs , _ , deps ⟧ᶜ) ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ dCert
    with computeProof ⟦ pp , PState.pools stᵖ , deps ⟧ᵈᵉ stᵈ dCert
       | computeProof pp stᵖ dCert | computeProof Γ stᵍ dCert
  ... | success (_ , h) | _               | _               = success (-, CERT-deleg h)
  ... | failure _       | success (_ , h) | _               = success (-, CERT-pool h)
  ... | failure _       | failure _       | success (_ , h) = success (-, CERT-vdel h)
  ... | failure e₁      | failure e₂      | failure e₃      = failure $
    "DELEG: " <> e₁ <> "\nPOOL: " <> e₂ <> "\nVDEL: " <> e₃
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls , deps ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(delegate c mv mc d) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ , deps ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ⟦ _ , pp , _ , wdrls , deps ⟧ᶜ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ
    dCert@(dereg c _) ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ (CERT-deleg h)
    with computeProof ⟦ pp , PState.pools stᵖ , deps ⟧ᵈᵉ stᵈ dCert | completeness _ _ _ _ h
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
  Computational-CERTBASE .computeProof ⟦ e , pp , vs , wdrls , _ ⟧ᶜ st _ =
    let open PParams pp; open CertState st; open GState gState; open DState dState
        refresh = mapPartial getDRepVote (fromList vs)
    in case ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
              × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes p) → success (-, CERT-base p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-CERTBASE .completeness ⟦ e , pp , vs , wdrls , _ ⟧ᶜ st _ st' (CERT-base p)
    rewrite let dState = CertState.dState st; open DState dState in
      dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
                × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿
        p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it

private variable
  dCert : DCert
  stᵍ stᵍ' : GState
  stᵈ stᵈ' : DState
  stᵖ stᵖ' : PState
  Γ : CertEnv

instance
  _ = +-0-monoid

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

≡ᵉ-getCoin : ∀ {A} → ⦃ _ : DecEq A ⦄ → (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
≡ᵉ-getCoin {A} ⦃ decEqA ⦄ s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'


module _ {A : Type} ⦃ _ : DecEq A ⦄  where
  getCoin-singleton : ((a , c) : A × Coin) → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
  getCoin-singleton _ = indexedSum-singleton' ⦃ M = +-0-commutativeMonoid ⦄ (finiteness _)

  module _ {gc-hom : (d₁ d₂ : A ⇀ Coin) → getCoin (d₁ ∪ˡ d₂) ≡ getCoin d₁ + getCoin d₂} where

    ∪ˡsingleton≡ :  {m : A ⇀ Coin} {(a , c) : A × Coin} → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
    ∪ˡsingleton≡ {m} {(a , c)} = begin
      getCoin (m ∪ˡ ❴ (a , c) ❵)
        ≡⟨ gc-hom m ❴ (a , c) ❵ ⟩
      getCoin m + getCoin{A = A ⇀ Coin} ❴ (a , c) ❵
        ≡⟨ cong (getCoin m +_) (getCoin-singleton (a , c)) ⟩
      getCoin m + c
        ∎
      where open ≡-Reasoning

module _ {gc-hom : (d₁ d₂ : Credential ⇀ Coin) → getCoin (d₁ ∪ˡ d₂) ≡ getCoin d₁ + getCoin d₂} where
  open ≡-Reasoning

  pov :  Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ
         → getCoin ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ≡ getCoin ⟦ stᵈ' , stᵖ , stᵍ ⟧ᶜˢ
  pov {stᵖ = stᵖ} {stᵍ} (CERT-deleg {pp} {deps = deps} {e = e} {vs} {wdrls}
    (DELEG-delegate {c = c} {rwds} {d} {mkh} {vDelegs = vDelegs} {sDelegs} {mv} x)) =
    begin
      getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ  ≡⟨ refl ⟩
      getCoin rwds                                            ≡˘⟨ +-identityʳ (getCoin rwds) ⟩
      getCoin rwds + 0                                        ≡˘⟨ ∪ˡsingleton≡ {gc-hom = gc-hom}{rwds} ⟩
      getCoin (rwds ∪ˡ ❴ (c , 0) ❵ᵐ)                          ≡⟨ refl ⟩
      getCoin  ⟦ ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ (c , 0) ❵ ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
      ∎


  pov {stᵖ = stᵖ} {stᵍ} (CERT-deleg {wdrls = wdrls} (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = goal
    where
    open import Relation.Binary using (IsEquivalence)
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence th  {Credential × Coin})
    ξ'' : ((rwds ∣ ❴ c ❵)  ∪ˡ (rwds ∣ ❴ c ❵ ᶜ)) ˢ ≡ᵉ rwds ˢ
    ξ'' = ≡ᵉ.trans (disjoint-∪ˡ-∪ res-ex-disjoint) (res-ex-∪ (Dec-∈-singleton th))

    ξ' : ∀ (m m' : Credential ⇀ Coin) → m ˢ ≡ᵉ m' ˢ → getCoin m ≡ getCoin m'
    ξ' m m' = ≡ᵉ-getCoin m m'


    sing≡ : (rwds ∣ ❴ c ❵ )ˢ ≡ᵉ  (❴ (c , 0) ❵ᵐ)ˢ
    sing≡ = {!!}

    χ' : ((rwds ∣ ❴ c ❵ ) ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))ˢ ≡ᵉ  (rwds ∣ ❴ c ❵ )ˢ ∪ (rwds ∣ ❴ c ❵ ᶜ)ˢ
    χ' = {!!}

    χ'' : (❴ (c , 0) ❵ᵐ  ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))ˢ ≡ᵉ (❴ (c , 0) ❵ᵐ)ˢ  ∪ (rwds ∣ ❴ c ❵ ᶜ)ˢ
    χ'' = {!!}

    γ : (rwds ∣ ❴ c ❵ )ˢ ∪ (rwds ∣ ❴ c ❵ ᶜ)ˢ ≡ᵉ (❴ (c , 0) ❵ᵐ)ˢ  ∪ (rwds ∣ ❴ c ❵ ᶜ)ˢ
    γ = ∪-cong th sing≡ ≡ᵉ.refl

    ξ : ((rwds ∣ ❴ c ❵ ) ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))ˢ ≡ᵉ  (❴ (c , 0) ❵ᵐ  ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))ˢ
    ξ = ≡ᵉ.trans χ' (≡ᵉ.trans γ (≡ᵉ.sym χ''))

    goal :  getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
            ≡ getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
    goal =
      begin
      getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ  ≡⟨ refl ⟩
      getCoin rwds                                             ≡˘⟨ (ξ' ((rwds ∣ ❴ c ❵ ) ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))(rwds)) ξ'' ⟩
      getCoin ((rwds ∣ ❴ c ❵ ) ∪ˡ (rwds ∣ ❴ c ❵ ᶜ))             ≡⟨ ξ' ((rwds ∣ ❴ c ❵ ) ∪ˡ (rwds ∣ ❴ c ❵ ᶜ)) (❴ (c , 0) ❵ᵐ  ∪ˡ (rwds ∣ ❴ c ❵ ᶜ)) ξ ⟩
      getCoin (❴ (c , 0) ❵ᵐ  ∪ˡ (rwds ∣ ❴ c ❵ ᶜ) )              ≡⟨ gc-hom ❴ (c , 0) ❵ᵐ (rwds ∣ ❴ c ❵ ᶜ) ⟩
      getCoin ❴ (c , 0) ❵ᵐ  + getCoin (rwds ∣ ❴ c ❵ ᶜ)              ≡⟨ cong (_+ getCoin (rwds ∣ ❴ c ❵ ᶜ)) (getCoin-singleton (c , 0)) ⟩
      0 + getCoin (rwds ∣ ❴ c ❵ ᶜ)              ≡⟨ +-identityˡ (getCoin (rwds ∣ ❴ c ❵ ᶜ)) ⟩
      getCoin (rwds ∣ ❴ c ❵ ᶜ)                                 ≡⟨ refl ⟩
      getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
      ∎

  pov (CERT-pool x) = refl
  pov (CERT-vdel x) = refl
