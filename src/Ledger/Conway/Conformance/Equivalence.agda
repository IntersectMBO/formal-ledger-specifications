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
open ≡-Reasoning

open import Ledger.Conway.Conformance.Equivalence.Convert

module Ledger.Conway.Conformance.Equivalence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Equivalence.Base txs abs
open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
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
lemUpdateDeposits {tx = tx} refl
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
updateGDeps pp (cert@(L.ccreghot _ _)  ∷ certs) deps = updateGDeps pp certs (C.updateCertDeposit pp cert deps)
updateGDeps pp (_                      ∷ certs) deps = updateGDeps pp certs deps

data ValidCertDeps (pp : PParams) (tx : Tx) : Set where
  validDeps : (let open TxBody (tx .Tx.body))
            → isValid tx ≡ true
            → CertDeps* pp txcerts
            → ValidCertDeps pp tx
  invalidDeps : isValid tx ≡ false
              → L.Deposits × L.Deposits
              → ValidCertDeps pp tx

getValidCertDeps : ∀ {pp tx} → ValidCertDeps pp tx → L.Deposits × L.Deposits
getValidCertDeps (validDeps _ deps) = getCertDeps* deps
getValidCertDeps (invalidDeps _ deps) = deps

updateLedgerDeps : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' → ValidCertDeps (Γ .L.LEnv.pparams) tx → L.Deposits × L.Deposits
updateLedgerDeps {Γ} {tx = tx} (L.LEDGER-V⋯ refl _ _ _) (validDeps _ ⟦ ddeps , gdeps , _ , _ ⟧*) =
  let pp    = Γ .L.LEnv.pparams
      certs = tx .Tx.body .TxBody.txcerts in
  updateDDeps pp certs ddeps , updateGDeps pp certs gdeps
updateLedgerDeps (L.LEDGER-I⋯ refl _) (invalidDeps invalid deps) = deps

validCertDeposits : ∀ {pp tx} → isValid tx ≡ true → ValidCertDeps pp tx → CertDeps* pp (tx .Tx.body .TxBody.txcerts)
validCertDeposits refl (validDeps _ deps) = deps

lem-ddeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵈ ≡ updateDDeps pp certs (deposits .CertDeps*.depsᵈ)
lem-ddeps = {!!}

lem-gdeps : ∀ {pp certs} (deposits : CertDeps* pp certs)
          → updateCertDeps* certs deposits .CertDeps*.depsᵍ ≡ updateGDeps pp certs (deposits .CertDeps*.depsᵍ)
lem-gdeps = {!!}

instance
  GovEnvToConf : L.Deposits × L.Deposits ⊢ L.GovEnv ⭆ C.GovEnv
  GovEnvToConf .convⁱ deposits L.⟦ txid , epoch , pp , policy , enactState , certState ⟧ᵍ =
    C.⟦ txid , epoch , pp , policy , enactState , deposits ⊢conv certState ⟧ᵍ

  opaque
    unfolding L.isRegistered C.isRegistered

    isRegisteredToConf : ∀ {Γ voter} → L.Deposits × L.Deposits ⊢ L.isRegistered Γ voter ⭆ⁱ λ deposits _ → C.isRegistered (deposits ⊢conv Γ) voter
    isRegisteredToConf {voter = CC   , c} .convⁱ _ h = h
    isRegisteredToConf {voter = DRep , c} .convⁱ _ h = h
    isRegisteredToConf {voter = SPO  , c} .convⁱ _ h = h

  GOV'ToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ (Γ , n) L.⊢ s ⇀⦇ votes ,GOV'⦈ s' ⭆ⁱ λ deposits _ →
                (deposits ⊢conv Γ , n) C.⊢ s ⇀⦇ votes ,GOV'⦈ s'
  GOV'ToConf .convⁱ deposits (L.GOV-Vote (a , b , c)) = C.GOV-Vote (a , b , deposits ⊢conv c)
  GOV'ToConf .convⁱ deposits (L.GOV-Propose h) = C.GOV-Propose h

  GOVToConf : ∀ {Γ s votes s' n}
            → L.Deposits × L.Deposits
              ⊢ _⊢_⇀⟦_⟧ᵢ*'_ IdSTS L._⊢_⇀⦇_,GOV'⦈_ (Γ , n) s votes s' ⭆ⁱ λ deposits _ →
                _⊢_⇀⟦_⟧ᵢ*'_ IdSTS C._⊢_⇀⦇_,GOV'⦈_ (deposits ⊢conv Γ , n) s votes s'
  GOVToConf .convⁱ deposits (BS-base Id-nop) = BS-base Id-nop
  GOVToConf .convⁱ deposits (BS-ind h r) = BS-ind (deposits ⊢conv h) (deposits ⊢conv r)

  LStateToConf : L.Deposits × L.Deposits ⊢ L.LState ⭆ C.LState
  LStateToConf .convⁱ deposits L.⟦ utxoSt , govSt , certState ⟧ˡ =
    C.⟦ utxoSt , govSt , deposits ⊢conv certState ⟧ˡ

  LEDGERToConf : ∀ {Γ s tx s'}
               → ValidCertDeps (Γ .L.LEnv.pparams) tx   -- TODO: shouldn't assume cert deposits are valid
                 ⊢ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆ⁱ λ deposits r →
                   Γ C.⊢ (getValidCertDeps deposits ⊢conv s) ⇀⦇ tx ,LEDGER⦈ (updateLedgerDeps r deposits ⊢conv s')
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ (validDeps _ cdeposits) r@(L.LEDGER-V⋯ refl utxow certs gov) =
    let open L.LEnv Γ
        open L.LState s
        open L.LState s' renaming (utxoSt to utxoSt'; certState to certState'; govSt to govSt')
        open TxBody (body tx) using (txcerts)
        deposits = L.UTxOState.deposits utxoSt
        utxow' : _ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ setDeposits deposits utxoSt'
        utxow' = conv utxow
        utxoStC'    = setDeposits (L.updateDeposits pparams (body tx) deposits) utxoSt'
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
  LEDGERToConf .convⁱ (validDeps refl _) (L.LEDGER-I⋯ () utxow)
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ (invalidDeps refl cdeps) (L.LEDGER-I⋯ refl utxow) =
    let ledger' : Γ C.⊢ (cdeps ⊢conv s) ⇀⦇ tx ,LEDGER⦈ _
        ledger' = C.LEDGER-I⋯ refl (conv utxow)
    in
    subst (λ • → Γ C.⊢ cdeps ⊢conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ C.⟦ _ , _ , • , _ ⟧ᵘ , _ , _ ⟧ˡ)
          (lemInvalidDepositsL refl utxow)
          ledger'

--   LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
--   LEDGERFromConf .convⁱ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
--   LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
--   ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
