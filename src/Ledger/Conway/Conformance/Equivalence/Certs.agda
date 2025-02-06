{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Product using (_×_; _,_)
open import Relation.Binary.PropositionalEquality

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence.Certs
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Base txs abs

instance

  DStateToConf : L.Deposits ⊢ L.DState ⭆ C.DState
  DStateToConf .convⁱ deposits stᵈ =
    let open L.DState stᵈ in
    ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧

  DStateFromConf : C.DState ⭆ L.DState
  DStateFromConf .convⁱ _ dState =
    let open C.DState dState in
    ⟦ voteDelegs , stakeDelegs , rewards ⟧

  GStateToConf : L.Deposits ⊢ L.GState ⭆ C.GState
  GStateToConf .convⁱ deposits stᵍ =
    let open L.GState stᵍ in
    ⟦ dreps , ccHotKeys , deposits ⟧

  GStateFromConf : C.GState ⭆ L.GState
  GStateFromConf .convⁱ deposits gState =
    let open C.GState gState in
    ⟦ dreps , ccHotKeys ⟧

data ValidDepsᵈ (pp : PParams) (deps : L.Deposits) : List L.DCert → Set where
  []         : ValidDepsᵈ pp deps []
  delegate   : ∀ {c del kh v certs}
             → ValidDepsᵈ pp (C.updateCertDeposit pp (L.delegate c del kh v) deps) certs
             → ValidDepsᵈ pp deps (L.delegate c del kh v ∷ certs)
  dereg      : ∀ {c md d certs}
             → (L.CredentialDeposit c , d) ∈ deps
             → md ≡ nothing ⊎ md ≡ just d
             → ValidDepsᵈ pp (C.updateCertDeposit pp (L.dereg c md) deps) certs
             → ValidDepsᵈ pp deps (L.dereg c md ∷ certs)
  regdrep    : ∀ {c v a certs}
             → ValidDepsᵈ pp deps certs
             → ValidDepsᵈ pp deps (L.regdrep c v a ∷ certs)
  deregdrep  : ∀ {c d certs}
             → ValidDepsᵈ pp deps certs
             → ValidDepsᵈ pp deps (L.deregdrep c d ∷ certs)
  regpool    : ∀ {kh p certs}
             → ValidDepsᵈ pp deps certs
             → ValidDepsᵈ pp deps (L.regpool kh p ∷ certs)
  retirepool : ∀ {kh e certs}
             → ValidDepsᵈ pp deps certs
             → ValidDepsᵈ pp deps (L.retirepool kh e  ∷ certs)
  ccreghot   : ∀ {c v certs}
             → ValidDepsᵈ pp deps certs
             → ValidDepsᵈ pp deps (L.ccreghot c v ∷ certs)
  reg        : ∀ {c d certs}
             → ValidDepsᵈ pp (C.updateCertDeposit pp (L.reg c d) deps) certs
             → ValidDepsᵈ pp deps (L.reg c d ∷ certs)

data ValidDepsᵍ (pp : PParams) (deps : L.Deposits) : List L.DCert → Set where
  []         : ValidDepsᵍ pp deps []
  regdrep    : ∀ {c v a certs}
             → ValidDepsᵍ pp (C.updateCertDeposit pp (L.regdrep c v a) deps) certs
             → ValidDepsᵍ pp deps (L.regdrep c v a ∷ certs)
  deregdrep  : ∀ {c d certs}
             → (L.DRepDeposit c , d) ∈ deps
             → ValidDepsᵍ pp (C.updateCertDeposit pp (L.deregdrep c d) deps) certs
             → ValidDepsᵍ pp deps (L.deregdrep c d ∷ certs)
  delegate   : ∀ {c del kh v certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.delegate c del kh v ∷ certs)
  dereg      : ∀ {c d certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.dereg c d ∷ certs)
  regpool    : ∀ {kh p certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.regpool kh p ∷ certs)
  retirepool : ∀ {kh e certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.retirepool kh e  ∷ certs)
  ccreghot   : ∀ {c v certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.ccreghot c v ∷ certs)
  reg        : ∀ {c d certs}
             → ValidDepsᵍ pp deps certs
             → ValidDepsᵍ pp deps (L.reg c d ∷ certs)

record CertDeps* (pp : PParams) (dcerts : List L.DCert) : Set where
  constructor ⟦_,_,_,_⟧*
  field
    depsᵈ : L.Deposits
    depsᵍ : L.Deposits
    -- Invariants
    validᵈ : ValidDepsᵈ pp depsᵈ dcerts
    validᵍ : ValidDepsᵍ pp depsᵍ dcerts

pattern delegate*    ddeps gdeps = ⟦ _ , _ , delegate   ddeps , delegate    gdeps ⟧*
pattern dereg*  v w  ddeps gdeps = ⟦ _ , _ , dereg v w  ddeps , dereg       gdeps ⟧*
pattern regpool*     ddeps gdeps = ⟦ _ , _ , regpool    ddeps , regpool     gdeps ⟧*
pattern retirepool*  ddeps gdeps = ⟦ _ , _ , retirepool ddeps , retirepool  gdeps ⟧*
pattern regdrep*     ddeps gdeps = ⟦ _ , _ , regdrep    ddeps , regdrep     gdeps ⟧*
pattern deregdrep* v ddeps gdeps = ⟦ _ , _ , deregdrep  ddeps , deregdrep v gdeps ⟧*
pattern ccreghot*    ddeps gdeps = ⟦ _ , _ , ccreghot   ddeps , ccreghot    gdeps ⟧*
pattern reg*         ddeps gdeps = ⟦ _ , _ , reg        ddeps , reg         gdeps ⟧*

open CertDeps*

getCertDeps* : ∀ {pp dcert} → CertDeps* pp dcert → L.Deposits × L.Deposits
getCertDeps* deps = deps .depsᵈ , deps .depsᵍ

updateCertDeps : ∀ {pp dcert dcerts} → CertDeps* pp (dcert ∷ dcerts) → CertDeps* pp dcerts
updateCertDeps (delegate*    ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (dereg* _ _   ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (regpool*     ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (retirepool*  ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (regdrep*     ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (deregdrep* _ ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (ccreghot*    ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (reg*         ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*

updateCertDeps* : ∀ {pp} dcerts → CertDeps* pp dcerts → CertDeps* pp []
updateCertDeps* []               deps = deps
updateCertDeps* (dcert ∷ dcerts) deps = updateCertDeps* dcerts (updateCertDeps deps)

instance

  CertStToConf : L.Deposits × L.Deposits ⊢ L.CertState ⭆ C.CertState
  CertStToConf .convⁱ (ddeps , gdeps) certState =
    let open L.CertState certState in
    ⟦ ddeps ⊢conv dState , pState , gdeps ⊢conv gState ⟧

  CertStFromConf : C.CertState ⭆ L.CertState
  CertStFromConf .convⁱ _ certState =
    let open C.CertState certState in
    ⟦ conv dState , pState , conv gState ⟧

  CERTBASEToConf : ∀ {Γ s s'}
                 → L.Deposits × L.Deposits
                   ⊢ Γ L.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆ⁱ λ deposits _ →
                     Γ C.⊢ (deposits ⊢conv s) ⇀⦇ _ ,CERTBASE⦈ (deposits ⊢conv s')
  CERTBASEToConf .convⁱ deposits (L.CERT-base h) = C.CERT-base h

  DELEGToConf : ∀ {Γ s dcert dcerts s'}
                  (open L.DelegEnv Γ renaming (pparams to pp))
              → CertDeps* pp (dcert ∷ dcerts) ⊢
                 Γ L.⊢ s ⇀⦇ dcert ,DELEG⦈ s' ⭆ⁱ λ deposits _ →
                 Γ C.⊢ (deposits .depsᵈ ⊢conv s) ⇀⦇ dcert ,DELEG⦈ (updateCertDeps deposits .depsᵈ ⊢conv s')
  DELEGToConf .convⁱ (delegate* _ _) (L.DELEG-delegate h) = C.DELEG-delegate h
  DELEGToConf .convⁱ (dereg* v w _ _)  (L.DELEG-dereg h)    = C.DELEG-dereg (h , v , w)
  DELEGToConf .convⁱ (reg* _ _) (L.DELEG-reg h) = C.DELEG-reg h

  POOLToConf : ∀ {pp s dcert s'} → pp L.⊢ s ⇀⦇ dcert ,POOL⦈ s' ⭆ pp C.⊢ s ⇀⦇ dcert ,POOL⦈ s'
  POOLToConf .convⁱ _ (L.POOL-regpool h) = C.POOL-regpool h
  POOLToConf .convⁱ _ L.POOL-retirepool  = C.POOL-retirepool

  GOVCERTToConf : ∀ {Γ s dcert dcerts s'}
                  (open L.CertEnv Γ using (pp))
                → CertDeps* pp (dcert ∷ dcerts) ⊢
                   Γ L.⊢ s ⇀⦇ dcert ,GOVCERT⦈ s' ⭆ⁱ λ deposits _ →
                   Γ C.⊢ (deposits .depsᵍ ⊢conv s) ⇀⦇ dcert ,GOVCERT⦈ (updateCertDeps deposits .depsᵍ ⊢conv s')
  GOVCERTToConf .convⁱ (regdrep* _ _)     (L.GOVCERT-regdrep h) = C.GOVCERT-regdrep h
  GOVCERTToConf .convⁱ (deregdrep* v _ _) (L.GOVCERT-deregdrep h) = C.GOVCERT-deregdrep (h , v)
  GOVCERTToConf .convⁱ (ccreghot* _ _)    (L.GOVCERT-ccreghot h)  = C.GOVCERT-ccreghot h

  CERTToConf : ∀ {Γ s dcert dcerts s'} (open L.CertEnv Γ using (pp))
             → CertDeps* pp (dcert ∷ dcerts) ⊢
                Γ L.⊢ s ⇀⦇ dcert ,CERT⦈ s' ⭆ⁱ λ deposits _ →
                Γ C.⊢ (getCertDeps* deposits ⊢conv s) ⇀⦇ dcert ,CERT⦈ (getCertDeps* (updateCertDeps deposits) ⊢conv s')
  CERTToConf .convⁱ deposits@(delegate* _ _)    (L.CERT-deleg deleg)  = C.CERT-deleg (deposits ⊢conv deleg)
  CERTToConf .convⁱ deposits@(dereg* _ _ _ _)   (L.CERT-deleg deleg)  = C.CERT-deleg (deposits ⊢conv deleg)
  CERTToConf .convⁱ deposits@(regpool* _ _)     (L.CERT-pool pool)    = C.CERT-pool (conv pool)
  CERTToConf .convⁱ deposits@(retirepool* _ _)  (L.CERT-pool pool)    = C.CERT-pool (conv pool)
  CERTToConf .convⁱ deposits@(regdrep* _ _)     (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)
  CERTToConf .convⁱ deposits@(deregdrep* _ _ _) (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)
  CERTToConf .convⁱ deposits@(ccreghot* _ _)    (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)
  CERTToConf .convⁱ deposits@(reg* _ _)         (L.CERT-deleg deleg)  = C.CERT-deleg (deposits ⊢conv deleg)

  CERTS'ToConf : ∀ {Γ s dcerts s'} (let open L.CertEnv Γ)
               → CertDeps* pp dcerts
                 ⊢ ReflexiveTransitiveClosure {sts = L._⊢_⇀⦇_,CERT⦈_} Γ s dcerts s' ⭆ⁱ λ deposits _ →
                   ReflexiveTransitiveClosure {sts = C._⊢_⇀⦇_,CERT⦈_}
                             Γ (getCertDeps* deposits ⊢conv s) dcerts
                               (getCertDeps* (updateCertDeps* dcerts deposits) ⊢conv s')
  CERTS'ToConf .convⁱ deposits (BS-base Id-nop) = BS-base Id-nop
  CERTS'ToConf .convⁱ deposits (BS-ind r rs)    = BS-ind (deposits ⊢conv r) (updateCertDeps deposits ⊢conv rs)

  CERTSToConf : ∀ {Γ s dcerts s'} (let open L.CertEnv Γ)
              → CertDeps* pp dcerts
                ⊢ Γ L.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆ⁱ λ deposits _ →
                  Γ C.⊢ (getCertDeps* deposits ⊢conv s) ⇀⦇ dcerts ,CERTS⦈
                        (getCertDeps* (updateCertDeps* dcerts deposits) ⊢conv s')
  CERTSToConf .convⁱ deposits (RTC (base , step)) =
    RTC (getCertDeps* deposits ⊢conv base , deposits ⊢conv step)

-- Converting form Conformance is easier since the deposit tracking disappears.
instance
  DELEGFromConf : ∀ {Γ s dcert s'}
                → Γ C.⊢ s ⇀⦇ dcert ,DELEG⦈ s' ⭆
                  Γ L.⊢ conv s ⇀⦇ dcert ,DELEG⦈ conv s'
  DELEGFromConf .convⁱ _ (C.DELEG-delegate h)    = L.DELEG-delegate h
  DELEGFromConf .convⁱ _ (C.DELEG-dereg (h , _)) = L.DELEG-dereg h
  DELEGFromConf .convⁱ _ (C.DELEG-reg h)         = L.DELEG-reg h

  POOLFromConf : ∀ {pp s dcert s'} → pp C.⊢ s ⇀⦇ dcert ,POOL⦈ s' ⭆ pp L.⊢ s ⇀⦇ dcert ,POOL⦈ s'
  POOLFromConf .convⁱ _ (C.POOL-regpool h) = L.POOL-regpool h
  POOLFromConf .convⁱ _ C.POOL-retirepool  = L.POOL-retirepool

  GOVCERTFromConf : ∀ {Γ s dcert s'}
                  → Γ C.⊢ s ⇀⦇ dcert ,GOVCERT⦈ s' ⭆
                    Γ L.⊢ conv s ⇀⦇ dcert ,GOVCERT⦈ conv s'
  GOVCERTFromConf .convⁱ _ (C.GOVCERT-regdrep h)   = C.GOVCERT-regdrep h
  GOVCERTFromConf .convⁱ _ (C.GOVCERT-deregdrep (h , _)) = C.GOVCERT-deregdrep h
  GOVCERTFromConf .convⁱ _ (C.GOVCERT-ccreghot h)  = C.GOVCERT-ccreghot h

  CERTFromConf : ∀ {Γ s dcert s'} → Γ C.⊢ s ⇀⦇ dcert ,CERT⦈ s' ⭆ Γ L.⊢ conv s ⇀⦇ dcert ,CERT⦈ conv s'
  CERTFromConf .convⁱ _ (C.CERT-deleg deleg)  = L.CERT-deleg (conv deleg)
  CERTFromConf .convⁱ _ (C.CERT-pool pool)    = L.CERT-pool (conv pool)
  CERTFromConf .convⁱ _ (C.CERT-vdel govcert) = L.CERT-vdel (conv govcert)

  CERTBASEFromConf : ∀ {Γ s s'}
                   → Γ C.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆
                     Γ L.⊢ (conv s) ⇀⦇ _ ,CERTBASE⦈ (conv s')
  CERTBASEFromConf .convⁱ _ (C.CERT-base h) = L.CERT-base h

  CERTS'FromConf : ∀ {Γ s dcerts s'}
                 → ReflexiveTransitiveClosure {sts = C._⊢_⇀⦇_,CERT⦈_} Γ s dcerts s' ⭆
                   ReflexiveTransitiveClosure {sts = L._⊢_⇀⦇_,CERT⦈_} Γ (conv s) dcerts (conv s')
  CERTS'FromConf .convⁱ _ (BS-base Id-nop) = BS-base Id-nop
  CERTS'FromConf .convⁱ _ (BS-ind r rs) = BS-ind (conv r) (conv rs)

  CERTSFromConf : ∀ {Γ s dcerts s'}
                → Γ C.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆
                  Γ L.⊢ conv s ⇀⦇ dcerts ,CERTS⦈ conv s'
  CERTSFromConf .convⁱ _ (RTC (base , step)) = RTC (conv base , conv step)
