{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties (gs : _) (open GovStructure gs) where

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

instance
  Computational-DELEG : Computational _⊢_⇀⦇_,DELEG⦈_ String
  Computational-DELEG .computeProof de stᵈ =
    let open DelegEnv de; open DState stᵈ in
    λ where
    (delegate c mv mc d) → case ¿ (c ∉ dom rewards → d ≡ pparams .PParams.keyDeposit)
                                × (c ∈ dom rewards → d ≡ 0)
                                × mv ∈ mapˢ (just ∘ credVoter DRep) delegatees ∪
                                    fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
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
                                × mv ∈ mapˢ (just ∘ credVoter DRep) (DelegEnv.delegatees de) ∪ fromList ( nothing ∷ just abstainRep ∷ just noConfidenceRep ∷ [] )
                                × mc ∈ mapˢ just (dom (DelegEnv.pools de)) ∪ ❴ nothing ❵
                                           ¿) p .proj₂ = refl
  Computational-DELEG .completeness de stᵈ (dereg c d) _ (DELEG-dereg p)
    rewrite dec-yes (¿ (c , 0) ∈ (DState.rewards stᵈ) ¿) p .proj₂ = refl
  Computational-DELEG .completeness de stᵈ (reg c d) _ (DELEG-reg p)
    rewrite dec-yes (¿ c ∉ dom (DState.rewards stᵈ) × (d ≡ DelegEnv.pparams de .PParams.keyDeposit ⊎ d ≡ 0) ¿) p .proj₂ = refl

  Computational-POOL : Computational _⊢_⇀⦇_,POOL⦈_ String
  Computational-POOL .computeProof _ stᵖ (regpool c _) =
    let open PState stᵖ in
    case ¬? (c ∈? dom pools) of λ where
      (yes p) → success (-, POOL-regpool p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-POOL .computeProof _ _ (retirepool c e) = success (-, POOL-retirepool)
  Computational-POOL .computeProof _ _ _ = failure "Unexpected certificate in POOL"
  Computational-POOL .completeness _ stᵖ (regpool c _) _ (POOL-regpool ¬p)
    rewrite dec-no (c ∈? dom (PState.pools stᵖ)) ¬p = refl
  Computational-POOL .completeness _ _ (retirepool _ _) _ POOL-retirepool = refl

  Computational-GOVCERT : Computational _⊢_⇀⦇_,GOVCERT⦈_ String
  Computational-GOVCERT .computeProof ce stᵍ (regdrep c d _) =
    let open CertEnv ce; open PParams pp in
    case ¿ (d ≡ drepDeposit × c ∉ dom (GState.dreps stᵍ))
         ⊎ (d ≡ 0 × c ∈ dom (GState.dreps stᵍ)) ¿ of λ where
      (yes p) → success (-, GOVCERT-regdrep p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ stᵍ (deregdrep c _) =
    let open GState stᵍ in
    case c ∈? dom dreps of λ where
      (yes p) → success (-, GOVCERT-deregdrep p)
      (no ¬p)  → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof ce stᵍ (ccreghot c _) =
    let open CertEnv ce; open GState stᵍ in
    case ¿ ((c , nothing) ∉ ccHotKeys ˢ) × c ∈ coldCreds ¿ of λ where
      (yes p) → success (-, GOVCERT-ccreghot p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-GOVCERT .computeProof _ _ _ = failure "Unexpected certificate in GOVCERT"
  Computational-GOVCERT .completeness ce stᵍ
    (regdrep c d _) _ (GOVCERT-regdrep p)
    rewrite dec-yes
      ¿ (let open CertEnv ce; open PParams pp; open GState stᵍ in
        (d ≡ drepDeposit × c ∉ dom dreps) ⊎ (d ≡ 0 × c ∈ dom dreps))
      ¿ p .proj₂ = refl
  Computational-GOVCERT .completeness _ stᵍ
    (deregdrep c _) _ (GOVCERT-deregdrep p)
    rewrite dec-yes (c ∈? dom (GState.dreps stᵍ)) p .proj₂ = refl
  Computational-GOVCERT .completeness ce stᵍ
    (ccreghot c _) _ (GOVCERT-ccreghot p)
    rewrite dec-yes (¿ (((c , nothing) ∉ (GState.ccHotKeys stᵍ) ˢ) × c ∈ CertEnv.coldCreds ce) ¿) p .proj₂ = refl

  Computational-CERT : Computational _⊢_⇀⦇_,CERT⦈_ String
  Computational-CERT .computeProof ce cs dCert
    with computeProof ⟦ CertEnv.pp ce , PState.pools (pState cs) , dom (GState.dreps (gState cs)) ⟧ (dState cs) dCert
       | computeProof (CertEnv.pp ce) (pState cs) dCert | computeProof ce (gState cs) dCert
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
    with computeProof (CertEnv.pp ce) (pState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(retirepool c e) cs' (CERT-pool h)
    with completeness _ _ _ _ h
  ... | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(regdrep c d an)
    cs' (CERT-vdel h)
    with computeProof ce (gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(deregdrep c _) cs' (CERT-vdel h)
    with computeProof ce (gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl
  Computational-CERT .completeness ce cs
    dCert@(ccreghot c mkh) cs' (CERT-vdel h)
    with computeProof ce (gState cs) dCert | completeness _ _ _ _ h
  ... | success _ | refl = refl

  Computational-CERTBASE : Computational _⊢_⇀⦇_,CERTBASE⦈_ String
  Computational-CERTBASE .computeProof ce cs _ =
    let open CertEnv ce; open PParams pp
        open GState (gState cs); open DState (dState cs)
        refresh = mapPartial getDRepVote (fromList votes)
        refreshedDReps  = mapValueRestricted (const (CertEnv.epoch ce + drepActivity)) dreps refresh
    in case ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom wdrls)) ⊆ dom voteDelegs
              × mapˢ (map₁ RwdAddr.stake) (wdrls ˢ) ⊆ rewards ˢ ¿ of λ where
      (yes p) → success (-, CERT-base p)
      (no ¬p) → failure (genErrors ¬p)
  Computational-CERTBASE .completeness ce st _ st' (CERT-base p)
    rewrite let dState = CertState.dState st; open DState dState in
      dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom (CertEnv.wdrls ce))) ⊆ dom voteDelegs
                × mapˢ (map₁ RwdAddr.stake) (CertEnv.wdrls ce ˢ) ⊆ rewards ˢ ¿
        p .proj₂ = refl

Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_ String
Computational-CERTS = it

private variable
  dCert : DCert
  l : List DCert
  A A' B : Type
instance
  _ = +-0-monoid

getCoin-singleton : ⦃ _ : DecEq A ⦄ {(a , c) : A × Coin} → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
getCoin-singleton = indexedSum-singleton' {M = Coin} (finiteness _)

∪ˡsingleton∈dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                → a ∈ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m
∪ˡsingleton∈dom m {(a , c)} a∈dom = ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ {m = m} a∈dom)

module _  {Γ : CertEnv}
          ( indexedSumᵛ'-∪ :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                              → disjoint (dom m) (dom m')
                              → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
  where
  open ≡-Reasoning
  open Equivalence

  ∪ˡsingleton∉dom :  ⦃ _ : DecEq A ⦄ (m : A ⇀ Coin) {(a , c) : A × Coin}
                   → a ∉ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
  ∪ˡsingleton∉dom m {(a , c)} a∉dom = begin
    getCoin (m ∪ˡ ❴ a , c ❵ᵐ)
      ≡⟨ indexedSumᵛ'-∪ m ❴ a , c ❵ᵐ
         ( λ x y → a∉dom (subst (_∈ dom m) (from ∈-dom-singleton-pair y) x) ) ⟩
    getCoin m + getCoin ❴ a , c ❵ᵐ
      ≡⟨ cong (getCoin m +_) getCoin-singleton ⟩
    getCoin m + c
      ∎

  ∪ˡsingleton0≡ : ⦃ _ : DecEq A ⦄ → (m : A ⇀ Coin) {a : A} → getCoin (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton∈dom m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton∉dom m a∉dom) (+-identityʳ (getCoin m))


  CERT-pov :  {stᵈ stᵈ' : DState} {stᵖ stᵖ' : PState} {stᵍ stᵍ' : GState}
              → Γ ⊢ ⟦ stᵈ , stᵖ , stᵍ ⟧ ⇀⦇ dCert ,CERT⦈ ⟦ stᵈ' , stᵖ' , stᵍ' ⟧
              → getCoin ⟦ stᵈ , stᵖ , stᵍ ⟧ ≡ getCoin ⟦ stᵈ' , stᵖ' , stᵍ' ⟧
  CERT-pov (CERT-deleg (DELEG-delegate {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov (CERT-deleg (DELEG-reg {rwds = rwds} _)) = sym (∪ˡsingleton0≡ rwds)
  CERT-pov {stᵖ = stᵖ} {stᵖ'} {stᵍ} {stᵍ'}
    (CERT-deleg (DELEG-dereg {c = c} {rwds} {vDelegs = vDelegs}{sDelegs} x)) = begin
    getCoin ⟦ ⟦ vDelegs , sDelegs , rwds ⟧ , stᵖ , stᵍ ⟧
      ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rwds
          ( ≡ᵉ.trans rwds-∪ˡ-∪ (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton)) ) ⟩
    getCoin rwds-∪ˡ-decomp
      ≡⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ) rwds-∪ˡ≡sing-∪ˡ  ⟩
    getCoin ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )
      ≡⟨ ∪ˡsingleton0≡ (rwds ∣ ❴ c ❵ ᶜ) ⟩
    getCoin ⟦ ⟦ vDelegs ∣ ❴ c ❵ ᶜ , sDelegs ∣ ❴ c ❵ ᶜ , rwds ∣ ❴ c ❵ ᶜ ⟧ , stᵖ' , stᵍ' ⟧
      ∎
    where
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
    rwds-∪ˡ-decomp = (rwds ∣ ❴ c ❵ ᶜ) ∪ˡ (rwds ∣ ❴ c ❵ )

    rwds-∪ˡ-∪ : rwds-∪ˡ-decomp ˢ ≡ᵉ (rwds ∣ ❴ c ❵ ᶜ)ˢ ∪ (rwds ∣ ❴ c ❵)ˢ
    rwds-∪ˡ-∪ = disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint)

    disj : disjoint (dom ((rwds ∣ ❴ c ❵ˢ ᶜ) ˢ)) (dom (❴ c , 0 ❵ᵐ ˢ))
    disj {a} a∈res a∈dom  = res-comp-dom a∈res (dom-single→single a∈dom)

    rwds-∪ˡ≡sing-∪ˡ : rwds-∪ˡ-decomp ˢ ≡ᵉ ((rwds ∣ ❴ c ❵ ᶜ) ∪ˡ ❴ (c , 0) ❵ᵐ )ˢ
    rwds-∪ˡ≡sing-∪ˡ = ≡ᵉ.trans rwds-∪ˡ-∪
                              ( ≡ᵉ.trans (∪-cong ≡ᵉ.refl (res-singleton'{m = rwds} x))
                                         (≡ᵉ.sym $ disjoint-∪ˡ-∪ disj) )
  CERT-pov (CERT-pool x) = refl
  CERT-pov (CERT-vdel x) = refl

  injOn : (wdls : Withdrawals)
          → ∀[ a ∈ dom (wdls ˢ) ] NetworkIdOf a ≡ NetworkId
          → InjectiveOn (dom (wdls ˢ)) RwdAddr.stake
  injOn _ h {record { stake = stakex }} {record { stake = stakey }} x∈ y∈ refl =
    cong (λ u → record { net = u ; stake = stakex }) (trans (h x∈) (sym (h y∈)))

  module CERTSpov
    -- TODO: prove some or all of the following assumptions, used in roof of `CERTBASE-pov`.
    ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
    ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                         → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
    ( getCoin-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                         → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
    ( ≡ᵉ-getCoinˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                         → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
    ( constNetworkId  :  ∀[ a ∈ dom (CertEnv.wdrls Γ) ] NetworkIdOf a ≡ NetworkId )
    where

    CERTBASE-pov :  {s s' : CertState} → Γ ⊢ s ⇀⦇ _ ,CERTBASE⦈ s'
                    → getCoin s ≡ getCoin s' + getCoin (CertEnv.wdrls Γ)

    CERTBASE-pov  {s  = cs}
                  {s' = cs'}
                  (CERT-base {pp}{vs}{e}{dreps}{wdrls} (_ , wdrlsCC⊆rwds)) =
      let
        open DState (dState cs )
        open DState (dState cs') renaming (rewards to rewards')
        module ≡ᵉ       = IsEquivalence (≡ᵉ-isEquivalence {Credential × Coin})
        wdrlsCC         = mapˢ (map₁ RwdAddr.stake) (wdrls ˢ)
        zeroMap         = constMap (mapˢ RwdAddr.stake (dom wdrls)) 0
        rwds-∪ˡ-decomp  = (rewards ∣ dom wdrlsCC ᶜ) ∪ˡ (rewards ∣ dom wdrlsCC)
      in
        begin
          getCoin rewards
            ≡˘⟨ ≡ᵉ-getCoin rwds-∪ˡ-decomp rewards
                ( ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                           (≡ᵉ.trans ∪-sym (res-ex-∪ (_∈? dom wdrlsCC))) ) ⟩
          getCoin rwds-∪ˡ-decomp
            ≡⟨ indexedSumᵛ'-∪ (rewards ∣ dom wdrlsCC ᶜ) (rewards ∣ dom wdrlsCC)
                              (disjoint-sym res-ex-disjoint) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin (rewards ∣ dom wdrlsCC )
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_)
               ( getCoin-cong (rewards ∣ dom wdrlsCC) wdrlsCC (res-subset{m = rewards} wdrlsCC⊆rwds) ) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrlsCC
            ≡⟨ cong (getCoin (rewards ∣ dom wdrlsCC ᶜ) +_) (≡ᵉ-getCoinˢ (wdrls ˢ) (injOn wdrls constNetworkId)) ⟩
          getCoin (rewards ∣ dom wdrlsCC ᶜ) + getCoin wdrls
            ≡˘⟨ cong (_+ getCoin wdrls)
                ( begin
                  getCoin (zeroMap ∪ˡ rewards)
                    ≡⟨ ≡ᵉ-getCoin (zeroMap ∪ˡ rewards) (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                                  (res-decomp zeroMap rewards) ⟩
                  getCoin (zeroMap ∪ˡ (rewards ∣ dom zeroMap ᶜ))
                    ≡⟨ indexedSumᵛ'-∪ zeroMap (rewards ∣ dom zeroMap ᶜ)
                                      (disjoint-sym res-comp-dom) ⟩
                  getCoin zeroMap + getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ cong (λ u → u + getCoin (rewards ∣ dom zeroMap ᶜ)) sumConstZero ⟩
                  0 + getCoin (rewards ∣ (dom zeroMap) ᶜ)
                    ≡⟨ +-identityˡ (getCoin (rewards ∣ dom zeroMap ᶜ)) ⟩
                  getCoin (rewards ∣ dom zeroMap ᶜ)
                    ≡⟨ ≡ᵉ-getCoin (rewards ∣ dom zeroMap ᶜ) (rewards ∣ dom wdrlsCC ᶜ)
                       ( res-comp-cong
                         ( ⊆-Transitive (proj₁ constMap-dom) (proj₂ dom-mapˡ≡map-dom)
                         , ⊆-Transitive (proj₁ dom-mapˡ≡map-dom) (proj₂ constMap-dom) ) ) ⟩
                  getCoin (rewards ∣ dom wdrlsCC ᶜ)
                    ∎ ) ⟩
          getCoin (zeroMap ∪ˡ rewards) + getCoin wdrls
            ∎

    sts-pov  : {s₁ sₙ : CertState} → ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,CERT⦈_} Γ s₁ l sₙ
             → getCoin s₁ ≡ getCoin sₙ
    sts-pov (BS-base Id-nop) = refl
    sts-pov (BS-ind x xs) = trans (CERT-pov x) (sts-pov xs)

    CERTS-pov : {s₁ sₙ : CertState} → Γ ⊢ s₁ ⇀⦇ l ,CERTS⦈ sₙ → getCoin s₁ ≡ getCoin sₙ + getCoin (CertEnv.wdrls Γ)
    CERTS-pov (RTC {s' = s'} {s'' = sₙ} (bsts , BS-base Id-nop)) = CERTBASE-pov bsts
    CERTS-pov (RTC (bsts , BS-ind x sts)) = trans  (CERTBASE-pov bsts)
                                                   (cong  (_+ getCoin (CertEnv.wdrls Γ))
                                                          (trans (CERT-pov x) (sts-pov sts)))

