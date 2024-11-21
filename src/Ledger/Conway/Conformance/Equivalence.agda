
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Function.Bundles using (_⇔_; mk⇔; Equivalence)
open import Relation.Binary.PropositionalEquality
open ≡-Reasoning

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Base txs abs
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Gov txs abs
open import Ledger.Conway.Conformance.Equivalence.Utxo txs abs

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
                    → utxowDeposits h ≡ L.UTxOState.deposits utxoSt
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

updateDDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateDDeps _ []                                   deps = deps
updateDDeps pp (cert@(L.delegate _ _ _ _) ∷ certs) deps = updateDDeps pp certs (C.updateCertDeposit pp cert deps)
updateDDeps pp (cert@(L.dereg _ _)        ∷ certs) deps = updateDDeps pp certs (C.updateCertDeposit pp cert deps)
updateDDeps pp (_                         ∷ certs) deps = updateDDeps pp certs deps

updateGDeps : PParams → List L.DCert → L.Deposits → L.Deposits
updateGDeps _ []                                deps = deps
updateGDeps pp (cert@(L.regdrep _ _ _) ∷ certs) deps = updateGDeps pp certs (C.updateCertDeposit pp cert deps)
updateGDeps pp (cert@(L.deregdrep _ _) ∷ certs) deps = updateGDeps pp certs (C.updateCertDeposit pp cert deps)
updateGDeps pp (_                      ∷ certs) deps = updateGDeps pp certs deps

data DPurpose : L.DepositPurpose → Set where
  CredentialDeposit : ∀ {c} → DPurpose (L.CredentialDeposit c)

data GPurpose : L.DepositPurpose → Set where
  DRepDeposit : ∀ {c} → GPurpose (L.DRepDeposit c)

instance
  Dec-DPurpose? : ∀ {p} → DPurpose p ⁇
  Dec-DPurpose? {L.CredentialDeposit _} = ⁇ yes CredentialDeposit
  Dec-DPurpose? {L.PoolDeposit       _} = ⁇ no λ ()
  Dec-DPurpose? {L.DRepDeposit       _} = ⁇ no λ ()
  Dec-DPurpose? {L.GovActionDeposit  _} = ⁇ no λ ()

  Dec-GPurpose? : ∀ {p} → GPurpose p ⁇
  Dec-GPurpose? {L.CredentialDeposit _} = ⁇ no λ ()
  Dec-GPurpose? {L.PoolDeposit       _} = ⁇ no λ ()
  Dec-GPurpose? {L.DRepDeposit       _} = ⁇ yes DRepDeposit
  Dec-GPurpose? {L.GovActionDeposit  _} = ⁇ no λ ()

-- Compute DDeps for the CertState from full Deposits
certDDeps : L.Deposits → L.Deposits
certDDeps deps = filterᵐ (λ (k , _) → DPurpose k) deps

-- Compute GDeps for the CertState from full Deposits
certGDeps : L.Deposits → L.Deposits
certGDeps deps = filterᵐ (λ (k , _) → GPurpose k) deps

castValidDepsᵈ : ∀ {pp deps₁ deps₂ certs} → deps₁ ≡ᵐ deps₂ → ValidDepsᵈ pp deps₁ certs → ValidDepsᵈ pp deps₂ certs
castValidDepsᵈ eq [] = []
castValidDepsᵈ eq (delegate deps)   = delegate   (castValidDepsᵈ {!!} deps)
castValidDepsᵈ eq (dereg x deps)    = dereg (proj₁ eq x) (castValidDepsᵈ {!!} deps)
castValidDepsᵈ eq (regdrep deps)    = regdrep    (castValidDepsᵈ eq deps)
castValidDepsᵈ eq (deregdrep deps)  = deregdrep  (castValidDepsᵈ eq deps)
castValidDepsᵈ eq (regpool deps)    = regpool    (castValidDepsᵈ eq deps)
castValidDepsᵈ eq (retirepool deps) = retirepool (castValidDepsᵈ eq deps)
castValidDepsᵈ eq (ccreghot deps)   = ccreghot   (castValidDepsᵈ eq deps)

validDDeps : ∀ {pp certs deposits} → L.ValidCertDeposits pp deposits certs → ValidDepsᵈ pp (certDDeps deposits) certs
validDDeps L.[] = []
validDDeps (L.delegate    v) = delegate (castValidDepsᵈ {!!} (validDDeps v))
validDDeps (L.regpool     v) = {!regpool (validDDeps v)!}
validDDeps (L.regdrep     v) = {!regdrep (validDDeps v)!}
validDDeps (L.dereg _     v) = {!dereg (validDDeps v)!}
validDDeps (L.deregdrep _ v) = {!deregdrep (validDDeps v)!}
validDDeps (L.ccreghot    v) = ccreghot (validDDeps v)
validDDeps (L.retirepool  v) = retirepool (validDDeps v)

validGDeps : ∀ {pp certs deposits} → L.ValidCertDeposits pp deposits certs → ValidDepsᵍ pp (certGDeps deposits) certs
validGDeps v = {!!}

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

updateLedgerDeps : PParams → Tx → L.Deposits × L.Deposits → L.Deposits × L.Deposits
updateLedgerDeps pp tx deps@(ddeps , gdeps) =
  if isValid tx
  then updateDDeps pp certs ddeps , updateGDeps pp certs gdeps
  else deps
  where
    certs = tx .Tx.body .TxBody.txcerts

lem-ddeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵈ ≡ updateDDeps pp certs (deposits .CertDeps*.depsᵈ)
lem-ddeps {certs = []} _ = refl
lem-ddeps (delegate*    ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (dereg*    v  ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (regpool*     ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (retirepool*  ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (regdrep*     ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (deregdrep* v ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-ddeps (ccreghot*    ddeps gdeps) rewrite lem-ddeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl

lem-gdeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵍ ≡ updateGDeps pp certs (deposits .CertDeps*.depsᵍ)
lem-gdeps {certs = []} _ = refl
lem-gdeps (delegate*    ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (dereg*    v  ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (regpool*     ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (retirepool*  ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (regdrep*     ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (deregdrep* v ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl
lem-gdeps (ccreghot*    ddeps gdeps) rewrite lem-gdeps ⟦ _ , _ , ddeps , gdeps ⟧* = refl

certDeposits : L.LState → L.Deposits × L.Deposits
certDeposits s = certDDeps deps , certGDeps deps
  where deps = s .L.LState.utxoSt .L.UTxOState.deposits

instance
  LStateToConf : L.Deposits × L.Deposits ⊢ L.LState ⭆ C.LState
  LStateToConf .convⁱ deposits L.⟦ utxoSt , govSt , certState ⟧ˡ =
    C.⟦ utxoSt , govSt , deposits ⊢conv certState ⟧ˡ

  -- Idea: can I throw in a ≡ᵐ equality in the conformance rule, allowing fudging deposits?
  -- Won't work going the other direction, but maybe not necessary?

  LEDGERToConf : ∀ {Γ s tx s'}
                 -- TODO: show cert deposits in s' match the updated ones from s
                 --       won't be on the nose because update does not commute with restriction
               → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆
                 Γ C.⊢ (certDeposits s ⊢conv s) ⇀⦇ tx ,LEDGER⦈ (updateLedgerDeps (Γ .L.LEnv.pparams) tx (certDeposits s) ⊢conv s')
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ r@(L.LEDGER-V⋯ refl utxow certs gov) =
    let open L.LEnv Γ
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
        ddeps , gdeps = getCertDeps* cdeposits
        certsEq : certStateC' ≡ (updateDDeps pparams txcerts ddeps , updateGDeps pparams txcerts gdeps) ⊢conv certState'
        certsEq = cong₂ (λ • ◆ → C.⟦ C.⟦ _ , _ , _ , • ⟧ᵈ , _ , C.⟦ _ , _ , ◆ ⟧ᵛ ⟧ᶜˢ)
                       (lem-ddeps cdeposits)
                       (lem-gdeps cdeposits)
    in
    subst₂ (λ • ◆ → Γ C.⊢ getCertDeps* cdeposits ⊢conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ • , _ , ◆ ⟧ˡ)
           utxoEq certsEq ledger'
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ (L.LEDGER-I⋯ refl utxow) =
    subst (λ • → Γ C.⊢ _ ⊢conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ C.⟦ _ , _ , • , _ ⟧ᵘ , _ , _ ⟧ˡ)
          (lemInvalidDepositsL refl utxow)
          (C.LEDGER-I⋯ refl (conv utxow))

--   LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
--   LEDGERFromConf .convⁱ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
--   LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
--   ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
