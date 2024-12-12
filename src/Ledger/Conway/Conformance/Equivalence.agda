{-# OPTIONS --allow-unsolved-metas #-}
-- Proof that the rules under Ledger.Conway.Conformance are equivalent
-- to the rules under Ledger.

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction using (TransactionStructure)

open import Data.Unit using (⊤)
open import Data.Product using (_×_; _,_)
open import Data.Product.Relation.Binary.Pointwise.NonDependent using (Pointwise)
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

_≡ᵈ_ : (x y : L.Deposits × L.Deposits) → Type
_≡ᵈ_ = Pointwise _≡ᵐ_ _≡ᵐ_

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

-- getValidCertDepositsC : ∀ {Γ s tx s'}
--                      → (let open L.UTxOEnv Γ using (pparams)
--                             open L.UTxOState s using (deposits)
--                             open TxBody (tx .Tx.body) using (txcerts))
--                      → isValid tx ≡ true
--                      → Γ C.⊢ s ⇀⦇ tx ,CERTS⦈ s'
--                      → L.ValidCertDeposits pparams deposits txcerts
-- getValidCertDepositsC refl

instance

  LStateFromConf : C.LState ⭆ L.LState
  LStateFromConf .convⁱ _ C.⟦ utxoSt , govSt , certState ⟧ˡ =
    L.⟦ utxoSt , govSt , conv certState ⟧ˡ

record WellformedLState (s : C.LState) : Type where
  field
    certDeps : L.Deposits × L.Deposits
    eqDeps   : certDeps ≡ᵈ certDeposits (conv s)
    eqSt     : s ≡ certDeps ⊢conv (conv s)

wellformedConv : ∀ (s : L.LState) deps → deps ≡ᵈ certDeposits s → WellformedLState (deps ⊢conv s)
wellformedConv s deps eq = record { certDeps = deps; eqDeps = eq; eqSt = refl }

lemWellformed : ∀ {Γ s tx s'} → WellformedLState s → Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s' → WellformedLState s'
lemWellformed wf r = {!!}

-- C.CERTS → ValidCertDeposits

instance

  LEDGERFromConf : ∀ {Γ s tx s'} → WellformedLState s
                                    ⊢ Γ C.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                                    ⭆ Γ L.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
  ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
  LEDGERFromConf {Γ} {s} {tx} {s'} .convⁱ wf (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
    where
      open C.LState s
      open C.LState s' using () renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certSt')
      utxow' : _ L.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ _
      utxow' = inj₂ {!!} ⊢conv utxow

      -- valid-deps
