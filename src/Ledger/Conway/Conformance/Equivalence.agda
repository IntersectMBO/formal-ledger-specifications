{-# OPTIONS --allow-unsolved-metas #-}
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Base txs abs
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Gov txs abs
open import Ledger.Conway.Conformance.Equivalence.Utxo txs abs
open import Ledger.Conway.Conformance.Equivalence.Deposits txs abs
open import Axiom.Set.Properties th using (≡ᵉ-Setoid)

-- Invalid transactions don't change the deposits
lemInvalidDepositsL : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → Γ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt'
                    → L.UTxOState.deposits utxoSt ≡ L.UTxOState.deposits utxoSt'
lemInvalidDepositsL refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                          (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (L.Scripts-No _))) = refl

lemInvalidDepositsC : ∀ {Γ utxoSt utxoSt' tx}
                    → isValid tx ≡ false
                    → (h : Γ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ utxoSt')
                    → utxowDeposits h ≡ L.UTxOState.deposits utxoSt'
lemInvalidDepositsC refl (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                          (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                            (C.Scripts-No _))) = refl

lemUpdateDeposits : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
                  → isValid tx ≡ true
                  → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                  → L.updateDeposits pparams (body tx) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
lemUpdateDeposits refl
  (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
    (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      (L.Scripts-Yes _))) = refl

getValidCertDeposits : ∀ {Γ s tx s'}
                     → (let open L.UTxOEnv Γ using (pparams)
                            open L.UTxOState s using (deposits)
                            open TxBody (tx .Tx.body) using (txcerts))
                     → isValid tx ≡ true
                     → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
                     → L.ValidCertDeposits pparams deposits txcerts
getValidCertDeposits refl
  (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
    (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
      (L.Scripts-Yes (v , _)))) = v

makeCertDeps* : ∀ {Γ s tx s'}
              → (let open L.UTxOEnv Γ using (pparams)
                     open L.UTxOState s using (deposits)
                     open TxBody (tx .Tx.body) using (txcerts))
              → isValid tx ≡ true
              → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
              → CertDeps* pparams txcerts
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
  LStateToConf .convⁱ deposits L.⟦ utxoSt , govSt , certState ⟧ˡ =
    C.⟦ utxoSt , govSt , deposits ⊢conv certState ⟧ˡ

  -- Idea: can we throw in a ≡ᵐ equality in the conformance rule, allowing fudging deposits?
  -- Won't work going the other direction, but maybe not necessary?

  LEDGERToConf : ∀ {Γ s tx s'}
               → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆
                 ∃[ certDeposits-s' ]
                    certDeposits-s' ≡ᵈ certDeposits s'
                  × Γ C.⊢ (certDeposits s ⊢conv s) ⇀⦇ tx ,LEDGER⦈ (certDeposits-s' ⊢conv s')
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ r@(L.LEDGER-V⋯ refl utxow certs gov) =
    updateLedgerDeps pparams tx (certDeposits s)
    , lem-cert-deposits-valid refl r
    , subst₂ (λ • ◆ → Γ C.⊢ getCertDeps* cdeposits ⊢conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ • , _ , ◆ ⟧ˡ)
             utxoEq certsEq ledger'
    where
      open L.LEnv Γ
      open L.LState s
      open L.LState s' renaming (utxoSt to utxoSt'; certState to certState'; govSt to govSt')
      open TxBody (body tx) using (txcerts)
      deposits = L.UTxOState.deposits utxoSt
      utxow' : _ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ setDeposits deposits utxoSt'
      utxow' = conv utxow
      utxoStC'    = setDeposits (L.updateDeposits pparams (body tx) deposits) utxoSt'
      cdeposits  = makeCertDeps* refl utxow
      cdeposits' = updateCertDeps* txcerts cdeposits
      certStateC' = getCertDeps* cdeposits' ⊢conv certState'
      certs' : _ C.⊢ (getCertDeps* cdeposits ⊢conv certState) ⇀⦇ txcerts ,CERTS⦈ certStateC'
      certs' = cdeposits ⊢conv certs
      gov' : _ C.⊢ _ ⇀⦇ C.txgov (body tx) ,GOV⦈ govSt'
      gov' = getCertDeps* cdeposits' ⊢conv gov
      ledger' : Γ C.⊢ (getCertDeps* cdeposits ⊢conv s) ⇀⦇ tx ,LEDGER⦈ C.⟦ utxoStC' , govSt' , certStateC' ⟧ˡ
      ledger' = C.LEDGER-V⋯ refl utxow' certs' gov'
      utxoEq  : utxoStC' ≡ utxoSt'
      utxoEq  = cong (λ • → L.⟦ _ , _ , • , _ ⟧ᵘ)
                     (lemUpdateDeposits refl utxow)
      ddeps = getCertDeps* cdeposits .proj₁
      gdeps = getCertDeps* cdeposits .proj₂
      certsEq : certStateC' ≡ (updateDDeps pparams txcerts ddeps , updateGDeps pparams txcerts gdeps) ⊢conv certState'
      certsEq = cong₂ (λ • ◆ → C.⟦ C.⟦ _ , _ , _ , • ⟧ᵈ , _ , C.⟦ _ , _ , ◆ ⟧ᵛ ⟧ᶜˢ)
                     (lem-ddeps cdeposits)
                     (lem-gdeps cdeposits)

  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ r@(L.LEDGER-I⋯ refl utxow) =
    certDeposits s , lem-cert-deposits-invalid refl r ,
    subst (λ • → Γ C.⊢ _ ⊢conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ C.⟦ _ , _ , • , _ ⟧ᵘ , _ , _ ⟧ˡ)
          (lemInvalidDepositsL refl utxow)
          (C.LEDGER-I⋯ refl (conv utxow))

instance

  LStateFromConf : C.LState ⭆ L.LState
  LStateFromConf .convⁱ _ C.⟦ utxoSt , govSt , certState ⟧ˡ =
    L.⟦ utxoSt , govSt , conv certState ⟧ˡ

certDepositsC : C.CertState → L.Deposits × L.Deposits
certDepositsC C.⟦ dState , _ , gState ⟧ᶜˢ = C.DState.deposits dState , C.GState.deposits gState

WellformedLState : C.LState → Type
WellformedLState s = certDepositsC (C.LState.certState s) ≡ᵈ certDeposits (conv s)

getValidCertDepositsCERTS : ∀ {Γ s certs s'} deposits (open L.CertEnv Γ using (pp))
                          → certDepositsC s ≡ᵈ (certDDeps deposits , certGDeps deposits)
                          → ReflexiveTransitiveClosure {sts = C._⊢_⇀⦇_,CERT⦈_} Γ s certs s'
                          → L.ValidCertDeposits pp deposits certs
getValidCertDepositsCERTS deposits wf (BS-base Id-nop) = L.[]
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-deleg (C.DELEG-delegate (a , b))) rs) =
  L.delegate (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-deleg (C.DELEG-dereg (_ , h))) rs) =
  L.dereg (∈-filter .Equivalence.from (wf .proj₁ .proj₁ h) .proj₂ )
          (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-deleg (C.DELEG-reg x)) rs) =
  L.reg (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-pool (C.POOL-regpool _)) rs) =
  L.regpool (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-pool C.POOL-retirepool) rs) =
  L.retirepool (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-vdel (C.GOVCERT-regdrep x)) rs) =
  L.regdrep (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-vdel (C.GOVCERT-deregdrep (_ , h))) rs) =
  L.deregdrep (∈-filter .Equivalence.from (wf .proj₂ .proj₁ h) .proj₂)
              (getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)
getValidCertDepositsCERTS {Γ} {s} {cert ∷ _} deposits wf (BS-ind (C.CERT-vdel (C.GOVCERT-ccreghot x)) rs) =
  L.ccreghot(getValidCertDepositsCERTS _ (lemUpdCert (L.CertEnv.pp Γ) (certDepositsC s) deposits cert wf) rs)

getValidCertDepositsC : ∀ Γ s {s'} tx
                     → (let open C.LEnv Γ using (pparams; slot)
                            open TxBody (tx .Tx.body) using (txcerts; txvote; txwdrls)
                            open C.LState s
                            open C.UTxOState utxoSt using (deposits)
                       )
                     → WellformedLState s
                     → isValid tx ≡ true
                     → C.⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ C.⊢ certState ⇀⦇ txcerts ,CERTS⦈ s'
                     → L.ValidCertDeposits pparams deposits txcerts
getValidCertDepositsC Γ s tx wf refl (RTC (C.CERT-base _ , step)) =
  getValidCertDepositsCERTS (C.L.UTxOState.deposits (C.LState.utxoSt s)) wf step

lemUtxowDeposits : ∀ {Γ s s' tx}
                      (let open C.UTxOEnv Γ using (pparams))
                  → isValid tx ≡ true
                  → (r : Γ C.⊢ s ⇀⦇ tx ,UTXOW⦈ s')
                  → utxowDeposits r ≡ L.updateDeposits pparams (body tx) (C.UTxOState.deposits s')
lemUtxowDeposits refl (C.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
                        (C.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
                          (C.Scripts-Yes _))) = refl

instance

  LEDGERFromConf : ∀ {Γ s tx s'} → WellformedLState s
                                    ⊢ Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                                    ⭆ Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
  ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
  LEDGERFromConf {Γ} {s} {tx} {s'} .convⁱ wf (C.LEDGER-V⋯ refl utxow certs gov) =
    subst (λ • → Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ L.⟦ • , govSt' , conv certSt' ⟧ˡ) eqUtxo ledger'
    where
      open C.LEnv Γ

      open C.LState s renaming (certState to certSt)
      open C.LState s' using () renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certSt')

      open TxBody (body tx)
      open C.UTxOState utxoSt using (deposits)

      valid-deps : L.ValidCertDeposits pparams deposits txcerts
      valid-deps = getValidCertDepositsC Γ s tx wf refl certs

      utxow' : _ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ (setDeposits (utxowDeposits utxow) utxoSt')
      utxow' = inj₂ valid-deps ⊢conv utxow

      eqUtxo : setDeposits (utxowDeposits utxow) utxoSt' ≡ utxoSt'
      eqUtxo = cong (λ • → L.⟦ _ , _ , • , _ ⟧ᵘ) (lemUtxowDeposits refl utxow)

      ledger' : Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ L.⟦ setDeposits (utxowDeposits utxow) utxoSt'
                                              , govSt'
                                              , conv certSt' ⟧ˡ
      ledger' = L.LEDGER-V⋯ refl utxow' (conv certs) (conv gov)

lemWellformed : ∀ {Γ s tx s'} → WellformedLState s → Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s' → WellformedLState s'
lemWellformed wf r = {!!}
