{-# OPTIONS --safe #-}
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_) renaming (map to ⟨_,_⟩)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality
open import Relation.Binary using (IsEquivalence)

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

module L where
  open import Ledger.Conway.Specification.Ledger txs abs public
  open import Ledger.Conway.Specification.Utxo txs abs public
  open import Ledger.Conway.Specification.Utxow txs abs public
  open import Ledger.Conway.Specification.Gov txs public
  open import Ledger.Conway.Specification.Certs govStructure public

module C where
  open import Ledger.Conway.Conformance.Ledger txs abs public
  open import Ledger.Conway.Conformance.Utxo txs abs public
  open import Ledger.Conway.Conformance.Utxow txs abs public
  open import Ledger.Conway.Conformance.Certs govStructure public

open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Utxo txs abs
open import Ledger.Conway.Conformance.Equivalence.Deposits txs abs

open Tx
open import Axiom.Set.Properties th using (≡ᵉ-Setoid)

-- Invalid transactions don't change the deposits
lemInvalidDepositsL : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → Γ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
                    → L.UTxOState.deposits utxoSt ≡ L.UTxOState.deposits utxoSt'
lemInvalidDepositsL refl (L.UTXOW⇒UTXO
                          (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (L.Scripts-No _))) = refl

lemInvalidDepositsC : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → (h : Γ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt')
                    → utxowDeposits h ≡ L.UTxOState.deposits utxoSt'
lemInvalidDepositsC refl (C.UTXOW⇒UTXO
                          (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (C.Scripts-No _))) = refl

-- The UTXOW rule doesn't change the deposits in Conformance
lemDepositsC : ∀ {Γ utxoSt utxoSt' tx}
             → (h : Γ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt')
             → L.UTxOState.deposits utxoSt ≡ L.UTxOState.deposits utxoSt'
lemDepositsC (C.UTXOW⇒UTXO
               (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                 (C.Scripts-Yes _))) = refl
lemDepositsC (C.UTXOW⇒UTXO
               (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                 (C.Scripts-No _))) = refl

lemUpdateDeposits : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
                  → isValid tx ≡ true
                  → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                  → L.updateDeposits pparams (body tx) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
lemUpdateDeposits refl
  (L.UTXOW⇒UTXO
    (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _  _ _ _
      (L.Scripts-Yes _))) = refl

getValidCertDeposits : ∀ {Γ s tx s'}
                     → (let open L.UTxOEnv Γ using (pparams)
                            open L.UTxOState s using (deposits)
                            open TxBody (tx .Tx.body) using (txCerts))
                     → isValid tx ≡ true
                     → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                     → L.ValidCertDeposits pparams deposits txCerts
getValidCertDeposits refl
  (L.UTXOW⇒UTXO
    (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      (L.Scripts-Yes (v , _)))) = v

makeCertDeps* : ∀ {Γ s tx s'}
              → (let open L.UTxOEnv Γ using (pparams)
                     open L.UTxOState s using (deposits)
                     open TxBody (tx .Tx.body) using (txCerts))
              → isValid tx ≡ true
              → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
              → CertDeps* pparams txCerts
makeCertDeps* {s = s} valid r = ⟦ certDDeps deposits , certGDeps deposits , validDDeps validDeps , validGDeps validDeps ⟧*
  where
    open L.UTxOState s using (deposits)
    validDeps = getValidCertDeposits valid r

lem-cert-deposits-valid : ∀ {Γ s tx s'} (open L.LEnv Γ using (pparams))
                        → isValid tx ≡ true
                        → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                        → updateLedgerDeps pparams tx (certDeposits s) ≡ᵈ certDeposits s'
lem-cert-deposits-valid {Γ} {s} {tx} {s'} refl (L.LEDGER-V⋯ refl utxow certs gov) rewrite sym (lemUpdateDeposits refl utxow) =
  lem-upd-ddeps pparams deps tx ,
  lem-upd-gdeps pparams deps tx
  where
    open L.LEnv Γ using (pparams)
    deps = s .L.LState.utxoSt . L.UTxOState.deposits

lem-cert-deposits-invalid : ∀ {Γ s tx s'} (open L.LEnv Γ using (pparams))
                        → isValid tx ≡ false
                        → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                        → certDeposits s ≡ᵈ certDeposits s'
lem-cert-deposits-invalid refl (L.LEDGER-I⋯ _ utxow) rewrite lemInvalidDepositsL refl utxow =
  (id , id) , (id , id)

instance
  LStateToConf : L.Deposits × L.Deposits ⊢ L.LState ⭆ C.LState
  LStateToConf .convⁱ deposits ledgerSt =
    let open L.LState ledgerSt in
    ⟦ utxoSt , govSt , deposits ⊢conv certState ⟧

instance
  LEDGERToConf : ∀ {Γ s tx s'}
               → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆
                 ∃[ certDeposits-s' ]
                    certDeposits-s' ≡ᵈ certDeposits s'
                  × Γ C.⊢ (certDeposits s ⊢conv s) ⇀⦇ tx ,LEDGER⦈ (certDeposits-s' ⊢conv s')
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ r@(L.LEDGER-V⋯ refl utxow certs gov) =
    updateLedgerDeps pparams tx (certDeposits s)
    , lem-cert-deposits-valid refl r
    , subst₂ (λ • ◆ → Γ C.⊢ getCertDeps* cdeposits ⊢conv s ⇀⦇ tx ,LEDGER⦈ ⟦ • , _ , ◆ ⟧)
             utxoEq certsEq ledger'
    where
      open L.LEnv Γ
      open L.LState s
      open L.LState s' renaming (utxoSt to utxoSt'; certState to certState'; govSt to govSt')
      open TxBody (body tx) using (txCerts)
      deposits = L.UTxOState.deposits utxoSt
      utxow' : _ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ setDeposits deposits utxoSt'
      utxow' = conv utxow
      utxoStC'    = setDeposits (L.updateDeposits pparams (body tx) deposits) utxoSt'
      cdeposits  = makeCertDeps* refl utxow
      cdeposits' = updateCertDeps* txCerts cdeposits
      certStateC' = getCertDeps* cdeposits' ⊢conv certState'
      certs' : _ C.⊢ (getCertDeps* cdeposits ⊢conv certState) ⇀⦇ txCerts ,CERTS⦈ certStateC'
      certs' = cdeposits ⊢conv certs
      ledger' : Γ C.⊢ (getCertDeps* cdeposits ⊢conv s) ⇀⦇ tx ,LEDGER⦈ C.⟦ utxoStC' , govSt' , certStateC' ⟧ˡ
      ledger' = C.LEDGER-V⋯ refl utxow' certs' gov
      utxoEq  : utxoStC' ≡ utxoSt'
      utxoEq  = cong (λ • → ⟦ _ , _ , • , _ ⟧)
                     (lemUpdateDeposits refl utxow)
      ddeps = getCertDeps* cdeposits .proj₁
      gdeps = getCertDeps* cdeposits .proj₂
      certsEq : certStateC' ≡ (updateDDeps pparams txCerts ddeps , updateGDeps pparams txCerts gdeps) ⊢conv certState'
      certsEq = cong₂ (λ • ◆ → ⟦ ⟦ _ , _ , _ , • ⟧ , _ , ⟦ _ , _ , ◆ ⟧ ⟧)
                     (lem-ddeps cdeposits)
                     (lem-gdeps cdeposits)

  -- LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ (cdeps , cdeps-eq) r@(L.LEDGER-I⋯ refl utxow) =
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ r@(L.LEDGER-I⋯ refl utxow) =
    certDeposits s , lem-cert-deposits-invalid refl r ,
    subst (λ • → Γ C.⊢ _ ⊢conv s ⇀⦇ tx ,LEDGER⦈ ⟦ ⟦ _ , _ , • , _ ⟧ , _ , _ ⟧)
          (lemInvalidDepositsL refl utxow)
          (C.LEDGER-I⋯ refl (conv utxow))

instance

  LStateFromConf : C.LState ⭆ L.LState
  LStateFromConf .convⁱ _ ls =
    let open C.LState ls in
    ⟦ utxoSt , govSt , conv certState ⟧

certDepositsC : C.CertState → L.Deposits × L.Deposits
certDepositsC cs = let open C.CertState cs in C.DState.deposits dState , C.GState.deposits gState

WellformedLState : C.LState → Type
WellformedLState s = certDepositsC (C.LState.certState s) ≡ᵈ certDeposits (conv s)

getValidCertDepositsCERTS : ∀ {Γ s certs s'} deposits (open L.CertEnv Γ using (pp))
                          → certDepositsC s ≡ᵈ (certDDeps deposits , certGDeps deposits)
                          → RunTraceAndThen C._⊢_⇀⦇_,CERT⦈_ C._⊢_⇀⦇_,POST-CERT⦈_ Γ s certs s'
                          → L.ValidCertDeposits pp deposits certs
getValidCertDepositsCERTS deposits wf (run-[] x) = L.[]
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-deleg (C.DELEG-delegate x)) rs)
  = L.delegate (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-deleg (C.DELEG-dereg (_ , h , h'))) rs)
  = L.dereg (∈-filter .Equivalence.from (wf .proj₁ .proj₁ h) .proj₂) h'
            (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-deleg (C.DELEG-reg x)) rs)
  = L.reg (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-pool L.POOL-regpool) rs)
  = L.regpool (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-pool C.POOL-retirepool) rs)
  = L.retirepool (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-vdel (C.GOVCERT-regdrep x)) rs)
  = L.regdrep (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-vdel (C.GOVCERT-deregdrep (_ , h))) rs)
  = L.deregdrep (∈-filter .Equivalence.from (wf .proj₂ .proj₁ h) .proj₂)
                (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (run-∷ (C.CERT-vdel (C.GOVCERT-ccreghot x)) rs)
  = L.ccreghot(getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)


getValidCertDepositsC : ∀ Γ s {s'} tx
                     → (let open C.LEnv Γ using (pparams; slot; enactState)
                            open TxBody (tx .Tx.body) using (txCerts; txGovVotes; txWithdrawals)
                            open C.LState s
                            open C.UTxOState utxoSt using (deposits)
                            cc = C.allColdCreds govSt enactState
                       )
                     → WellformedLState s
                     → isValid tx ≡ true
                     → ⟦ epoch slot , pparams , txGovVotes , txWithdrawals , cc ⟧ C.⊢ certState ⇀⦇ txCerts ,CERTS⦈ s'
                     → L.ValidCertDeposits pparams deposits txCerts
getValidCertDepositsC Γ s tx wf refl (run {s' = s'} (C.CERT-pre _ , cert-post)) =
  getValidCertDepositsCERTS (C.UTxOState.deposits ((C.LState.utxoSt s))) wf cert-post

lemUtxowDeposits : ∀ {Γ s s' tx}
                      (let open C.UTxOEnv Γ using (pparams))
                  → isValid tx ≡ true
                  → (r : Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s')
                  → utxowDeposits r ≡ L.updateDeposits pparams (body tx) (C.UTxOState.deposits s')
lemUtxowDeposits refl (C.UTXOW⇒UTXO
                        (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                          (C.Scripts-Yes _))) = refl

instance

  LEDGERFromConf : ∀ {Γ s tx s'} → WellformedLState s
                                    ⊢ Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                                    ⭆ Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
  ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
  LEDGERFromConf {Γ} {s} {tx} {s'} .convⁱ wf (C.LEDGER-V⋯ refl utxow certs gov) =
    subst (λ • → Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ ⟦ • , govSt' , conv certSt' ⟧) eqUtxo ledger'
    where
      open C.LEnv Γ

      open C.LState s renaming (certState to certSt)
      open C.LState s' using () renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certSt')

      open TxBody (body tx)
      open C.UTxOState utxoSt using (deposits)

      valid-deps : L.ValidCertDeposits pparams deposits txCerts
      valid-deps = getValidCertDepositsC Γ s tx wf refl certs

      utxow' : _ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ (setDeposits (utxowDeposits utxow) utxoSt')
      utxow' = inj₂ valid-deps ⊢conv utxow

      eqUtxo : setDeposits (utxowDeposits utxow) utxoSt' ≡ utxoSt'
      eqUtxo = cong (λ • → ⟦ _ , _ , • , _ ⟧) (lemUtxowDeposits refl utxow)

      ledger' : Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ L.⟦ setDeposits (utxowDeposits utxow) utxoSt'
                                              , govSt'
                                              , conv certSt' ⟧ˡ
      ledger' = L.LEDGER-V⋯ refl utxow' (conv certs) gov

open IsEquivalence ≡ᵈ-isEquivalence renaming (refl to ≡ᵈ-refl; sym to ≡ᵈ-sym; trans to ≡ᵈ-trans)

lemCERTS'DepositsC : ∀ {Γ s dcerts s'} (open C.CertEnv Γ using (pp))
                   → RunTraceAndThen C._⊢_⇀⦇_,CERT⦈_ C._⊢_⇀⦇_,POST-CERT⦈_ Γ s dcerts s'
                   → certDepositsC s' ≡ ⟨ updateDDeps pp dcerts , updateGDeps pp dcerts ⟩ (certDepositsC s)
lemCERTS'DepositsC (run-[] C.CERT-post) = refl
lemCERTS'DepositsC (run-∷ (C.CERT-deleg  (C.DELEG-delegate     _)) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-deleg  (C.DELEG-dereg        _)) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-deleg  (C.DELEG-reg          _)) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-pool   L.POOL-regpool          ) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-pool    C.POOL-retirepool     )  rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-vdel   (C.GOVCERT-regdrep    _)) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-vdel   (C.GOVCERT-deregdrep  _)) rs) = lemCERTS'DepositsC rs
lemCERTS'DepositsC (run-∷ (C.CERT-vdel   (C.GOVCERT-ccreghot   _)) rs) = lemCERTS'DepositsC rs

lemCERTSDepositsC : ∀ {Γ s txCerts s'} (open C.CertEnv Γ using (pp))
                  → Γ C.⊢ s ⇀⦇ txCerts ,CERTS⦈ s'
                  → certDepositsC s' ≡ ⟨ updateDDeps pp txCerts , updateGDeps pp txCerts ⟩ (certDepositsC s)
lemCERTSDepositsC (run (C.CERT-pre _ , step)) = lemCERTS'DepositsC step

lemWellformed : ∀ {Γ s tx s'} → WellformedLState s → Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s' → WellformedLState s'
lemWellformed {Γ} {s = ls} {tx} {s' = ls'} wf (C.LEDGER-V⋯ refl utxo certs gov) = goal
  where
    open C.LState ls  renaming (certState to certSt)
    open C.LState ls' renaming (utxoSt to utxoSt'; certState to certSt')
    open L.LEnv Γ using (pparams)
    open TxBody (body tx)

    deposits  = L.UTxOState.deposits utxoSt
    deposits' = L.UTxOState.deposits utxoSt'

    depositsL' = L.updateDeposits pparams (body tx) deposits

    ddeps = certDepositsC certSt .proj₁
    gdeps = certDepositsC certSt .proj₂

    ddeps' = certDepositsC certSt' .proj₁
    gdeps' = certDepositsC certSt' .proj₂

    lem : deposits' ≡ depositsL'
    lem rewrite lemDepositsC utxo = refl

    lem₁ : (ddeps' , gdeps') ≡ (updateDDeps pparams txCerts ddeps , updateGDeps pparams txCerts gdeps)
    lem₁ = lemCERTSDepositsC certs

    lem₂ :  (updateDDeps pparams txCerts (certDDeps deposits) , updateGDeps pparams txCerts (certGDeps deposits))
         ≡ᵈ (certDDeps deposits' , certGDeps deposits')
    lem₂ rewrite lem = lem-upd-ddeps pparams deposits tx , lem-upd-gdeps pparams deposits tx

    lem₃ :  (updateDDeps pparams txCerts ddeps , updateGDeps pparams txCerts gdeps)
         ≡ᵈ (updateDDeps pparams txCerts (certDDeps deposits) , updateGDeps pparams txCerts (certGDeps deposits))
    lem₃ = ⟨ cong-updateDDeps txCerts , cong-updateGDeps txCerts ⟩ wf

    goal : (ddeps' , gdeps') ≡ᵈ (certDDeps deposits' , certGDeps deposits')
    goal with refl ← lem₁ = ≡ᵈ-trans {ddeps' , gdeps'}
                                     {updateDDeps pparams txCerts (certDDeps deposits) , updateGDeps pparams txCerts (certGDeps deposits)}
                                     {certDDeps deposits' , certGDeps deposits'}
                              lem₃
                              lem₂
lemWellformed wf (C.LEDGER-I⋯ refl utxo) rewrite lemDepositsC utxo = wf

setCertDeposits : L.Deposits × L.Deposits → C.CertState → C.CertState
setCertDeposits (ddeps , gdeps) cs =
  let open C.CertState cs in
  ⟦ record dState {deposits = ddeps} , pState , record gState {deposits = gdeps} ⟧

updateCDep : PParams → L.DCert → L.Deposits × L.Deposits → L.Deposits × L.Deposits
updateCDep pp cert (ddep , gdep) = updateDDep pp cert ddep , updateGDep pp cert gdep

opaque
  castCERTS' : ∀ {Γ certs} {s s' : L.CertState} deps₁ deps₂ deps₁'
             → deps₁ ≡ᵈ deps₂
             → RunTraceAndThen C._⊢_⇀⦇_,CERT⦈_ C._⊢_⇀⦇_,POST-CERT⦈_ Γ (deps₁ ⊢conv s) certs (deps₁' ⊢conv s')
             → ∃[ deps₂' ] deps₁' ≡ᵈ deps₂'
                           × RunTraceAndThen C._⊢_⇀⦇_,CERT⦈_ C._⊢_⇀⦇_,POST-CERT⦈_ Γ (deps₂ ⊢conv s) certs (deps₂' ⊢conv s')
  castCERTS' deps₁ deps₂ deps₁' eqd (run-[] C.CERT-post) = deps₂ , eqd , run-[] C.CERT-post
  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-deleg {dCert = cert} (C.DELEG-delegate h))    rs)
    = let
        open C.CertEnv Γ using (pp)
        deps₂' , eqd' , rs' = castCERTS' (updateCDep pp cert deps₁) (updateCDep pp cert deps₂) deps₁'
                                         (⟨ cong-updateDDep {pp} cert {deps₁ .proj₁} {deps₂ .proj₁}
                                          , cong-updateGDep {pp} cert {deps₁ .proj₂} {deps₂ .proj₂} ⟩ eqd) rs
        in  deps₂' , eqd' , run-∷ (C.CERT-deleg (C.DELEG-delegate h)) rs'

  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-deleg {dCert = cert} (C.DELEG-dereg (a , b , c))) rs) =
    let open C.CertEnv Γ using (pp)
        deps₂' , eqd' , rs' = castCERTS' (updateCDep pp cert deps₁) (updateCDep pp cert deps₂) deps₁'
                                         (⟨ cong-updateDDep {pp} cert {deps₁ .proj₁} {deps₂ .proj₁}
                                          , cong-updateGDep {pp} cert {deps₁ .proj₂} {deps₂ .proj₂} ⟩ eqd) rs
    in  deps₂' , eqd' , run-∷ (C.CERT-deleg (C.DELEG-dereg (a , eqd .proj₁ .proj₁ b , c))) rs'
  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-deleg {dCert = cert} (C.DELEG-reg h))         rs) =
    let open C.CertEnv Γ using (pp)
        deps₂' , eqd' , rs' = castCERTS' (updateCDep pp cert deps₁) (updateCDep pp cert deps₂) deps₁'
                                         (⟨ cong-updateDDep {pp} cert {deps₁ .proj₁} {deps₂ .proj₁}
                                          , cong-updateGDep {pp} cert {deps₁ .proj₂} {deps₂ .proj₂} ⟩ eqd) rs
    in  deps₂' , eqd' , run-∷ (C.CERT-deleg (C.DELEG-reg h)) rs'

  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-pool  {dCert = cert} L.POOL-regpool)          rs) =
    let deps₂' , eqd' , rs' = castCERTS' deps₁ deps₂ deps₁' eqd rs
    in  deps₂' , eqd' , run-∷  (C.CERT-pool L.POOL-regpool) rs'

  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-pool  {dCert = cert} C.POOL-retirepool)       rs) =
    let deps₂' , eqd' , rs' = castCERTS' deps₁ deps₂ deps₁' eqd rs
    in  deps₂' , eqd' , run-∷ (C.CERT-pool C.POOL-retirepool) rs'
  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-vdel  {dCert = cert} (C.GOVCERT-regdrep h))   rs) =
    let open C.CertEnv Γ using (pp)
        deps₂' , eqd' , rs' = castCERTS' (updateCDep pp cert deps₁) (updateCDep pp cert deps₂) deps₁'
                                         (⟨ cong-updateDDep {pp} cert {deps₁ .proj₁} {deps₂ .proj₁}
                                          , cong-updateGDep {pp} cert {deps₁ .proj₂} {deps₂ .proj₂} ⟩ eqd) rs
    in  deps₂' , eqd' , run-∷ (C.CERT-vdel (C.GOVCERT-regdrep h)) rs'
  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-vdel  {dCert = cert} (C.GOVCERT-deregdrep (a , b))) rs) =
    let open C.CertEnv Γ using (pp)
        deps₂' , eqd' , rs' = castCERTS' (updateCDep pp cert deps₁) (updateCDep pp cert deps₂) deps₁'
                                         (⟨ cong-updateDDep {pp} cert {deps₁ .proj₁} {deps₂ .proj₁}
                                          , cong-updateGDep {pp} cert {deps₁ .proj₂} {deps₂ .proj₂} ⟩ eqd) rs
    in  deps₂' , eqd' , run-∷ (C.CERT-vdel (C.GOVCERT-deregdrep (a , eqd .proj₂ .proj₁ b))) rs'
                                                                   -- ^^^^^^^^^^^^^^^^^^^ Actual work
  castCERTS' {Γ} deps₁ deps₂ deps₁' eqd (run-∷ (C.CERT-vdel  {dCert = cert} (C.GOVCERT-ccreghot h))  rs) =
    let deps₂' , eqd' , rs' = castCERTS' deps₁ deps₂ deps₁' eqd rs
    in  deps₂' , eqd' , run-∷ (C.CERT-vdel (C.GOVCERT-ccreghot h)) rs'

  castCERTS : ∀ {Γ certs} {s s' : L.CertState} deps₁ deps₂ deps₁'
            → deps₁ ≡ᵈ deps₂
            → Γ C.⊢ deps₁ ⊢conv s ⇀⦇ certs ,CERTS⦈ (deps₁' ⊢conv s')
            → ∃[ deps₂' ] deps₁' ≡ᵈ deps₂' × Γ C.⊢ deps₂ ⊢conv s ⇀⦇ certs ,CERTS⦈ (deps₂' ⊢conv s')
  castCERTS deps₁ deps₂ deps₁' eqd (run (C.CERT-pre h , step)) =
    let deps₂' , eqd' , step' = castCERTS' deps₁ deps₂ deps₁' eqd step
    in  deps₂' , eqd' , run (C.CERT-pre h , step')

_⊢_⇀⦇_,GOVn⦈_ : L.GovEnv × ℕ → L.GovState → List (GovVote ⊎ GovProposal) → L.GovState → Type
_⊢_⇀⦇_,GOVn⦈_ = _⊢_⇀⟦_⟧ᵢ*'_ {_⊢_⇀⟦_⟧ᵇ_ = IdSTS} {_⊢_⇀⟦_⟧_ = L._⊢_⇀⦇_,GOV⦈_}

opaque
  castLEDGER : ∀ {Γ tx} {s s' : L.LState} deps₁ deps₂ deps₁'
            → deps₁ ≡ᵈ deps₂
            → Γ C.⊢ deps₁ ⊢conv s ⇀⦇ tx ,LEDGER⦈ (deps₁' ⊢conv s')
            → ∃[ deps₂' ] deps₁' ≡ᵈ deps₂' × Γ C.⊢ deps₂ ⊢conv s ⇀⦇ tx ,LEDGER⦈ (deps₂' ⊢conv s')
  castLEDGER {Γ} {tx} {s} {s'} deps₁ deps₂ deps₁' eqd (C.LEDGER-V⋯ refl utxo certs gov) =
    let deps₂' , eqd' , certs' = castCERTS deps₁ deps₂ deps₁' eqd certs
    in  deps₂' , eqd' , C.LEDGER-V⋯ refl utxo certs' gov
  castLEDGER deps₁ deps₂ deps₁' eqd (C.LEDGER-I⋯ refl utxo) = _ , eqd , C.LEDGER-I⋯ refl utxo

---------------------------------------------------------------------------
-- The main result
---------------------------------------------------------------------------

open import Ledger.Conway.Conformance.Equivalence.Bisimilarity

-- An LState sˡ from the Spec and an LState sᶜ from Conformance are
-- bisimular iff
--  ∙ the deposits in the CertState of sᶜ are equal (as maps) to the
--    appropriate restrictions of the deposits in the UTxOState of sˡ
--  ∙ the only difference between sˡ and sᶜ are the extra deposits in
--    the CertState of sᶜ.
_∼_ : L.LState → C.LState → Type
sˡ ∼ sᶜ = certDeposits sˡ ≡ᵈ certDepositsC (C.LState.certState sᶜ) × sˡ ≡ conv sᶜ

-- This gives us the main result: a bisimulation between the LEDGER
-- rules in Ledger and in Conformance.
bisimilarityProof : Bisimilar L._⊢_⇀⦇_,LEDGER⦈_ C._⊢_⇀⦇_,LEDGER⦈_
bisimilarityProof .Bisimilar._≈_ = _∼_
bisimilarityProof .Bisimilar.to {Γ} {tx} {sˡ} {sˡ'} {sᶜ} (eq , refl) r =
  let deps  , eqd  , r'  = conv r
      deps' , eqd' , r'' = castLEDGER (certDeposits (conv sᶜ))
                                      (certDepositsC (C.LState.certState sᶜ))
                                      deps
                                      eq
                                      r'
      eqd'' : certDeposits sˡ' ≡ᵈ deps'
      eqd'' = ≡ᵈ-trans {certDeposits sˡ'} {deps} {deps'} (≡ᵈ-sym {deps} {certDeposits sˡ'} eqd) eqd'
  in
  (deps' ⊢conv sˡ') , (eqd'' , refl) , r''
bisimilarityProof .Bisimilar.from {Γ} {tx} {sˡ} {sᶜ} {sᶜ'} (eqd , refl) r =
  conv sᶜ' , (wf' , refl) , wf ⊢conv r
  where
    wf  = ≡ᵈ-sym {certDeposits (conv sᶜ)} {certDepositsC (C.LState.certState sᶜ)} eqd
    wf' = ≡ᵈ-sym {certDepositsC (C.LState.certState sᶜ')} {certDeposits (conv sᶜ')} (lemWellformed wf r)
    r' = wf ⊢conv r
