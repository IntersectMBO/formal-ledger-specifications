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
open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid; +-identityʳ; +-identityˡ)
open import Axiom.Set.Properties using (≡ᵉ-isEquivalence; disjoint-subst; ∪-cong; Dec-∈-singleton; disjoint-sym)
open import Relation.Binary using (IsEquivalence)
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
  Γ : CertEnv
  l : List DCert
  A A' B : Type
instance
  _ = +-0-monoid

  HasCoin-Map : ∀ {A} → ⦃ DecEq A ⦄ → HasCoin (A ⇀ Coin)
  HasCoin-Map .getCoin s = ∑[ x ← s ] x

≡ᵉ-getCoin : ∀ {A} → ⦃ _ : DecEq A ⦄ → (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
≡ᵉ-getCoin {A} ⦃ decEqA ⦄ s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'

getCoin-singleton : ⦃ _ : DecEq A ⦄ → ((a , c) : A × Coin) → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
getCoin-singleton _ = indexedSum-singleton' ⦃ M = +-0-commutativeMonoid ⦄ (finiteness _)

∪ˡsingleton≡ : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {(a , c) : A × Coin} → a ∈ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m
∪ˡsingleton≡ m {(a , c)} a∈dom = ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ'{m = m} a∈dom)

module _ ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ {m : A ⇀ Coin} {g : A → A'} {InjOn : InjectiveOn (dom (m ˢ)) g} where

  module ≡ᵉ' = IsEquivalence (≡ᵉ-isEquivalence th  {A' × Coin})
  gmap : A' ⇀ Coin
  gmap = mapKeys g m {InjOn}

  indexedSumᵛ'-mapKeys :  (indexedSumᵛ' id m) ≡ (indexedSumᵛ' id gmap)
  indexedSumᵛ'-mapKeys = {!!}


module _  {indexedSumᵛ'-∪ :  {A : Type} ⦃ _ : DecEq A ⦄ → ∀ (m m' : A ⇀ Coin) → disjoint (dom m) (dom m')
                             → ∑[ x ← m ∪ˡ m' ] x ≡ ∑[ x ←  m ] x + ∑[ x ←  m' ] x}
          {indexedSumᵛ'-singleton : {A : Type} ⦃ _ : DecEq A ⦄ → {a : A} {c : Coin} → ∑[ x ←  ❴ (a , c) ❵ᵐ ] x ≡ c}
  where
  ∪ˡsingleton≡' : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {(a , c) : A × Coin} → a ∉ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
  ∪ˡsingleton≡' m {(a , c)} a∉dom = trans ξ (cong (∑[ x ← m ] x +_) indexedSumᵛ'-singleton)
    where
    γ : disjoint (dom m) (dom ❴ a , c ❵ᵐ)
    γ {a'} x y = a∉dom (subst (λ u → u ∈ dom m) (Equivalence.from ∈-dom-singleton-pair y) x)

    ξ : ∑[ x ← (m ∪ˡ ❴ a , c ❵ᵐ) ] x ≡ ∑[ x ← m ] x + ∑[ x ←  ❴ (a , c) ❵ᵐ ] x
    ξ = indexedSumᵛ'-∪ m ❴ (a , c) ❵ᵐ γ

  ∪ˡsingleton0≡ : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {a : A} → getCoin (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton≡ m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton≡' m a∉dom) (+-identityʳ (getCoin m))

--



  open ≡-Reasoning

  CERT-pov :  {stᵈ stᵈ' : DState} {stᵖ stᵖ' : PState} {stᵍ stᵍ' : GState}
              → Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ' , stᵍ' ⟧ᶜˢ
              → getCoin ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ≡ getCoin ⟦ stᵈ' , stᵖ' , stᵍ' ⟧ᶜˢ
  CERT-pov {stᵈ = stᵈ} {stᵈ'} {stᵖ} {stᵖ'} {stᵍ} {stᵍ'} (CERT-deleg {pp} {deps = deps} {e = e} {vs} {wdrls}
    (DELEG-delegate {c = c} {rwds} {d} {mkh} {vDelegs = vDelegs} {sDelegs} {mv} x)) =
    begin
      getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ
        ≡⟨ refl ⟩
      getCoin rwds
        ≡˘⟨ ∪ˡsingleton0≡ rwds ⟩
      getCoin  ⟦ ⟦ insertIfJust c mv vDelegs , insertIfJust c mkh sDelegs , rwds ∪ˡ ❴ (c , 0) ❵ ⟧ᵈ
               , stᵖ'
               , stᵍ'
               ⟧ᶜˢ
        ∎

  CERT-pov {stᵈ = stᵈ} {stᵈ'} {stᵖ} {stᵖ'} {stᵍ} {stᵍ'}
    (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ  ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds (≡ᵉ.trans rwds-∪ˡ-∪ (res-ex-∪' (Dec-∈-singleton th))) ⟩
    getCoin rwds-∪ˡ-decomp                                   ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ  ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )              ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ᵈ , stᵖ' , stᵍ' ⟧ᶜˢ
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence th  {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵ )

    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ  (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ res-ex-disjoint'

    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom  = res-comp-dom a∈res (dom-single→single a∈dom)

    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )ˢ
    rwds-∪ˡ≡sing-∪ˡ = ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans (∪-cong th ≡ᵉ.refl (res-singleton'{m = rwds} (proj₁ x))) (≡ᵉ.sym (disjoint-∪ˡ-∪ disj)))




  CERT-pov (CERT-pool x) = refl
  CERT-pov (CERT-vdel x) = refl

--    wdrls     : RwdAddr ⇀ Coin

  module _ {sumConstZero : {A : Type} ⦃ _ : DecEq A ⦄ → {X : ℙ A} → ∑[ x ← constMap X 0 ] x ≡ 0} where

  -- module _ ⦃ _ : IsSet X (A × B) ⦄ where
    CERTBASE-pov : {s s' : CertState} → Γ ⊢ s ⇀⦇ _ ,CERTBASE⦈ s' → getCoin s ≡ getCoin s' + getCoin (CertEnv.wdrls Γ)
    CERTBASE-pov  {Γ = Γ}{s = ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ , stᵖ , ⟦ dreps , ccHotKeys ⟧ᵛ ⟧ᶜˢ}
                  {⟦ ⟦ voteDelegs , stakeDelegs , rewards' ⟧ᵈ , stᵖ , stᵍ ⟧ᶜˢ}
                  (CERT-base {pp}{vs}{e}{dreps} x) =

      -- goal : getCoin rewards ≡ getCoin ((constMap (mapˢ RwdAddr.stake (dom wdrls)) 0) ∪ˡ rewards) + getCoin wdrls

      begin
        getCoin rewards ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rewards (≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.sym rwds-decomp)) ⟩
        getCoin ((rewards ∣ wdrlCreds ᶜ) ∪ˡ withdrawals) ≡⟨ indexedSumᵛ'-∪ (rewards ∣ wdrlCreds ᶜ) withdrawals disj ⟩
        getCoin ((rewards ∣ wdrlCreds ᶜ)) + getCoin withdrawals ≡⟨ cong (getCoin ((rewards ∣ wdrlCreds ᶜ)) +_) withdrawals≡wdrls ⟩
        getCoin ((rewards ∣ wdrlCreds ᶜ)) + getCoin wdrls ≡⟨ cong (_+ getCoin wdrls) resRwds≡rwds-wdrls ⟩
        getCoin ((constMap (mapˢ RwdAddr.stake (dom wdrls)) 0) ∪ˡ rewards) + getCoin wdrls ∎
      where
      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence th  {Credential × Coin})
      open CertEnv Γ

      wdrlCreds : ℙ Credential
      wdrlCreds = mapˢ RwdAddr.stake (dom wdrls)

      -- QUESTION: is the following ⊆-inclusion true?
      -- α : wdrlCreds ⊆ dom rewards
      -- α = {!!}

      InjOn : InjectiveOn (dom (wdrls ˢ)) RwdAddr.stake
      InjOn = {!!}

      withdrawals : Credential ⇀ Coin
      withdrawals = mapKeys RwdAddr.stake wdrls {InjOn}

      rwds-∪ˡ-decomp : Credential ⇀ Coin
      rwds-∪ˡ-decomp = (rewards ∣ wdrlCreds ᶜ) ∪ˡ withdrawals

      withdrawals≡wdrls : getCoin withdrawals ≡ getCoin wdrls
      withdrawals≡wdrls = sym (indexedSumᵛ'-mapKeys {m = wdrls}{InjOn = InjOn})

      disj : disjoint (dom (rewards ∣ wdrlCreds ᶜ)) (dom withdrawals)
      disj = {!!}

      rewards-decomp : rewards ˢ ≡ᵉ ((rewards ∣ wdrlCreds ᶜ) ∪ˡ withdrawals)ˢ
      rewards-decomp = {!!}

      rwds-∪ˡ-∪ : ((rewards ∣ wdrlCreds ᶜ) ∪ˡ withdrawals)ˢ ≡ᵉ ((rewards ∣ wdrlCreds ᶜ)ˢ) ∪ (withdrawals ˢ)
      rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ disj

      rwds-decomp : rewards ˢ ≡ᵉ ((rewards ∣ wdrlCreds ᶜ)ˢ) ∪ (withdrawals ˢ)
      rwds-decomp = ≡ᵉ.trans rewards-decomp rwds-∪ˡ-∪

      resRwds≡rwds-wdrls : getCoin (rewards ∣ wdrlCreds ᶜ) ≡ getCoin ((constMap (mapˢ RwdAddr.stake (dom wdrls)) 0) ∪ˡ rewards)
      resRwds≡rwds-wdrls = {!!}


    CERTS-pov : {stᵈ stᵈ' : DState} {stᵖ stᵖ' : PState} {stᵍ stᵍ' : GState}
                → Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ⇀⦇ l ,CERTS⦈ ⟦ stᵈ' , stᵖ' , stᵍ' ⟧ᶜˢ
                → getCoin ⟦ stᵈ , stᵖ , stᵍ ⟧ᶜˢ ≡ getCoin ⟦ stᵈ' , stᵖ' , stᵍ' ⟧ᶜˢ + getCoin (CertEnv.wdrls Γ)
    CERTS-pov (BS-base x) = CERTBASE-pov x
    CERTS-pov (BS-ind  x xs) = trans (CERT-pov x) (CERTS-pov xs)
