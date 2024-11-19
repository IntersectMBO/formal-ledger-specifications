
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
  DStateToConf .convⁱ deposits L.⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ =
    C.⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ᵈ

  DStateFromConf : C.DState ⭆ L.DState
  DStateFromConf .convⁱ _ C.⟦ voteDelegs , stakeDelegs , rewards , _ ⟧ᵈ =
    L.⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ

  GStateToConf : L.Deposits ⊢ L.GState ⭆ C.GState
  GStateToConf .convⁱ deposits L.⟦ dreps , ccHotKeys ⟧ᵛ =
    C.⟦ dreps , ccHotKeys , deposits ⟧ᵛ

  GStateFromConf : C.GState ⭆ L.GState
  GStateFromConf .convⁱ deposits C.⟦ dreps , ccHotKeys , _ ⟧ᵛ =
    L.⟦ dreps , ccHotKeys ⟧ᵛ

data ValidDepsᵈ (pp : PParams) (deps : L.Deposits) : List L.DCert → Set where
  []         : ValidDepsᵈ pp deps []
  delegate   : ∀ {c del kh v certs}
             → ValidDepsᵈ pp (C.updateCertDeposit pp (L.delegate c del kh v) deps) certs
             → ValidDepsᵈ pp deps (L.delegate c del kh v ∷ certs)
  dereg      : ∀ {c d certs}
             → (L.CredentialDeposit c , d) ∈ deps
             → ValidDepsᵈ pp (C.updateCertDeposit pp (L.dereg c d) deps) certs
             → ValidDepsᵈ pp deps (L.dereg c d ∷ certs)
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

record CertDeps* (pp : PParams) (dcerts : List L.DCert) : Set where
  constructor ⟦_,_,_,_⟧*
  field
    depsᵈ : L.Deposits
    depsᵍ : L.Deposits
    -- Invariants
    validᵈ : ValidDepsᵈ pp depsᵈ dcerts
    validᵍ : ValidDepsᵍ pp depsᵍ dcerts

pattern delegate*    ddeps gdeps = ⟦ _ , _ , delegate   ddeps , delegate    gdeps ⟧*
pattern dereg*    v  ddeps gdeps = ⟦ _ , _ , dereg v    ddeps , dereg       gdeps ⟧*
pattern regpool*     ddeps gdeps = ⟦ _ , _ , regpool    ddeps , regpool     gdeps ⟧*
pattern retirepool*  ddeps gdeps = ⟦ _ , _ , retirepool ddeps , retirepool  gdeps ⟧*
pattern regdrep*     ddeps gdeps = ⟦ _ , _ , regdrep    ddeps , regdrep     gdeps ⟧*
pattern deregdrep* v ddeps gdeps = ⟦ _ , _ , deregdrep  ddeps , deregdrep v gdeps ⟧*
pattern ccreghot*    ddeps gdeps = ⟦ _ , _ , ccreghot   ddeps , ccreghot    gdeps ⟧*

open CertDeps*

getCertDeps* : ∀ {pp dcert} → CertDeps* pp dcert → L.Deposits × L.Deposits
getCertDeps* deps = deps .depsᵈ , deps .depsᵍ

updateCertDeps : ∀ {pp dcert dcerts} → CertDeps* pp (dcert ∷ dcerts) → CertDeps* pp dcerts
updateCertDeps (delegate*    ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (dereg* _     ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (regpool*     ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (retirepool*  ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (regdrep*     ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (deregdrep* _ ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*
updateCertDeps (ccreghot*    ddeps gdeps) = ⟦ _ , _ , ddeps , gdeps ⟧*

updateCertDeps* : ∀ {pp} dcerts → CertDeps* pp dcerts → CertDeps* pp []
updateCertDeps* []               deps = deps
updateCertDeps* (dcert ∷ dcerts) deps = updateCertDeps* dcerts (updateCertDeps deps)

instance

  CertStToConf : L.Deposits × L.Deposits ⊢ L.CertState ⭆ C.CertState
  CertStToConf .convⁱ (ddeps , gdeps) L.⟦ dState , pState , gState ⟧ᶜˢ =
    C.⟦ ddeps ⊢conv dState , pState , gdeps ⊢conv gState ⟧ᶜˢ

  CertStFromConf : C.CertState ⭆ L.CertState
  CertStFromConf .convⁱ _ C.⟦ dState , pState , gState ⟧ᶜˢ =
    L.⟦ conv dState , pState , conv gState ⟧ᶜˢ

  CERTBASEToConf : ∀ {Γ s s'}
                 → L.Deposits × L.Deposits
                   ⊢ Γ L.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆ⁱ λ deposits _ →
                     Γ C.⊢ (deposits ⊢conv s) ⇀⦇ _ ,CERTBASE⦈ (deposits ⊢conv s')
  CERTBASEToConf .convⁱ deposits (L.CERT-base h) = C.CERT-base h

  CERTBASEFromConf : ∀ {Γ s s'}
                   → Γ C.⊢ s ⇀⦇ _ ,CERTBASE⦈ s' ⭆
                     Γ L.⊢ (conv s) ⇀⦇ _ ,CERTBASE⦈ (conv s')
  CERTBASEFromConf .convⁱ _ (C.CERT-base h) = L.CERT-base h

  DELEGToConf : ∀ {Γ s dcert dcerts s'}
                  (open L.DelegEnv Γ renaming (pparams to pp))
              → CertDeps* pp (dcert ∷ dcerts) ⊢
                 Γ L.⊢ s ⇀⦇ dcert ,DELEG⦈ s' ⭆ⁱ λ deposits _ →
                 Γ C.⊢ (deposits .depsᵈ ⊢conv s) ⇀⦇ dcert ,DELEG⦈ (updateCertDeps deposits .depsᵈ ⊢conv s')
  DELEGToConf .convⁱ (delegate* _ _) (L.DELEG-delegate h) = C.DELEG-delegate h
  DELEGToConf .convⁱ (dereg* v _ _)  (L.DELEG-dereg h)    = C.DELEG-dereg (h , v)

  POOLToConf : ∀ {pp s dcert s'} → pp L.⊢ s ⇀⦇ dcert ,POOL⦈ s' ⭆ pp C.⊢ s ⇀⦇ dcert ,POOL⦈ s'
  POOLToConf .convⁱ _ (L.POOL-regpool h) = C.POOL-regpool h
  POOLToConf .convⁱ _ L.POOL-retirepool  = C.POOL-retirepool

  GOVCERTToConf : ∀ {Γ s dcert dcerts s'}
                  (open L.CertEnv Γ using (pp))
                → CertDeps* pp (dcert ∷ dcerts) ⊢
                   Γ L.⊢ s ⇀⦇ dcert ,GOVCERT⦈ s' ⭆ⁱ λ deposits _ →
                   Γ C.⊢ (deposits .depsᵍ ⊢conv s) ⇀⦇ dcert ,GOVCERT⦈ (updateCertDeps deposits .depsᵍ ⊢conv s')
  GOVCERTToConf .convⁱ (regdrep* _ _)     (L.GOVCERT-regdrep h)   = C.GOVCERT-regdrep h
  GOVCERTToConf .convⁱ (deregdrep* v _ _) (L.GOVCERT-deregdrep h) = C.GOVCERT-deregdrep h
  GOVCERTToConf .convⁱ (ccreghot* _ _)    (L.GOVCERT-ccreghot h)  = C.GOVCERT-ccreghot h

  CERTToConf : ∀ {Γ s dcert dcerts s'} (open L.CertEnv Γ using (pp))
             → CertDeps* pp (dcert ∷ dcerts) ⊢
                Γ L.⊢ s ⇀⦇ dcert ,CERT⦈ s' ⭆ⁱ λ deposits _ →
                Γ C.⊢ (getCertDeps* deposits ⊢conv s) ⇀⦇ dcert ,CERT⦈ (getCertDeps* (updateCertDeps deposits) ⊢conv s')
  CERTToConf .convⁱ deposits@(delegate* _ _)    (L.CERT-deleg deleg)  = C.CERT-deleg (deposits ⊢conv deleg)
  CERTToConf .convⁱ deposits@(dereg* _ _ _)     (L.CERT-deleg deleg)  = C.CERT-deleg (deposits ⊢conv deleg)
  CERTToConf .convⁱ deposits@(regpool* _ _)     (L.CERT-pool pool)    = C.CERT-pool (conv pool)
  CERTToConf .convⁱ deposits@(retirepool* _ _)  (L.CERT-pool pool)    = C.CERT-pool (conv pool)
  CERTToConf .convⁱ deposits@(regdrep* _ _)     (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)
  CERTToConf .convⁱ deposits@(deregdrep* _ _ _) (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)
  CERTToConf .convⁱ deposits@(ccreghot* _ _)    (L.CERT-vdel govcert) = C.CERT-vdel (deposits ⊢conv govcert)

  CERTSToConf : ∀ {Γ s dcerts s'} (let open L.CertEnv Γ)
              → CertDeps* pp dcerts
                ⊢ Γ L.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆ⁱ λ deposits _ →
                  Γ C.⊢ (getCertDeps* deposits ⊢conv s) ⇀⦇ dcerts ,CERTS⦈
                        (getCertDeps* (updateCertDeps* dcerts deposits) ⊢conv s')
  CERTSToConf .convⁱ deposits (BS-base certBase)  = BS-base (getCertDeps* deposits ⊢conv certBase)
  CERTSToConf .convⁱ deposits (BS-ind {sig = dcert} cert certs) =
    BS-ind (deposits ⊢conv cert) (updateCertDeps deposits ⊢conv certs)

--   CERTSFromConf : ∀ {Γ s dcerts s'}
--                 → Γ C.⊢ s ⇀⦇ dcerts ,CERTS⦈ s' ⭆
--                   Γ L.⊢ conv s ⇀⦇ dcerts ,CERTS⦈ conv s'
--   CERTSFromConf .convⁱ deposits (BS-base certBase)  = BS-base (conv certBase)
--   CERTSFromConf .convⁱ deposits (BS-ind cert certs) = {!!}