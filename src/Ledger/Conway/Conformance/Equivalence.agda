
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

-- validCertDeposits : ∀ {Γ s tx s'}
--                     (let open TxBody (Tx.body tx)
--                          open L.UTxOEnv Γ
--                          open L.UTxOState s)
--                   → isValid tx ≡ true
--                   → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                   → L.ValidCertDeposits pparams deposits txcerts
-- validCertDeposits refl (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--                           (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--                             (L.Scripts-Yes (valid , _)))) = valid

-- -- TODO: this isn't true!
-- lemUpdateCertDeposits : ∀ {pp deposits} certs → C.updateCertDepositsUtxo pp certs deposits ≡ L.updateCertDeposits pp certs deposits
-- lemUpdateCertDeposits certs = {!!}

-- lemUpdateDeposits : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
--                   → isValid tx ≡ true
--                   → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                   → C.updateDeposits pparams (body tx) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
-- lemUpdateDeposits {tx = tx} refl
--   (L.UTXOW-inductive⋯ _ _ _ _ _ _ _ _
--     (L.UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
--       (L.Scripts-Yes (valid , _)))) = lemUpdateCertDeposits (TxBody.txcerts (body tx))

-- -- Also not true?
-- lemUpdateDeposits' : ∀ {Γ s tx s'} (open L.UTxOEnv Γ)
--                    → isValid tx ≡ true
--                    → Γ L.⊢ s ⇀⦇ tx ,UTXOW⦈ s'
--                    → updateCertDeposits pparams (TxBody.txcerts (body tx)) (L.UTxOState.deposits s) ≡ L.UTxOState.deposits s'
-- lemUpdateDeposits' = {!!}

instance
  LStateToConf : L.LState ⭆ C.LState
  LStateToConf .convⁱ _ L.⟦ utxoSt , govSt , certState ⟧ˡ =
    let deposits = L.UTxOState.deposits utxoSt in
    C.⟦ utxoSt , govSt , (deposits , deposits) ⊢conv certState ⟧ˡ

  -- This is not true. Should this be precise about the CERT deposits in the conformance post state?
  LEDGERToConf : ∀ {Γ s tx s'} → Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s' ⭆ Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s'
  LEDGERToConf {Γ} {s} {tx} {s'} .convⁱ _ (L.LEDGER-V⋯ valid utxow certs gov) =
    {!!}
    -- let open L.LEnv Γ
    --     open L.LState s
    --     open L.LState s' renaming (utxoSt to utxoSt'; certState to certState'; govSt to govSt')
    --     open TxBody (body tx) using (txcerts)
    --     deposits = L.UTxOState.deposits utxoSt
    --     utxow' : _ C.⊢ utxoSt ⇀⦇ tx ,UTXOW⦈ setDeposits deposits utxoSt'
    --     utxow' = conv utxow
    --     utxoStC'    = setDeposits (C.updateDeposits pparams (body tx) deposits) utxoSt'
    --     certStateC' = updateCertDeposits pparams txcerts deposits ⊢conv certState'
    --     certs' : _ C.⊢ (deposits ⊢conv certState) ⇀⦇ txcerts ,CERTS⦈ certStateC'
    --     certs' = (deposits , validCertDeposits valid utxow) ⊢conv certs
    --     ledger' : Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ utxoStC' , govSt' , certStateC' ⟧ˡ
    --     ledger' = C.LEDGER-V⋯ valid utxow' certs' gov
    --     utxoEq  : utxoStC' ≡ utxoSt'
    --     utxoEq  = cong (λ • → L.⟦ _ , _ , • , _ ⟧ᵘ)
    --                    (lemUpdateDeposits valid utxow)
    --     certsEq : certStateC' ≡ L.UTxOState.deposits utxoSt' ⊢conv certState'
    --     certsEq = cong (λ • → C.⟦ C.⟦ _ , _ , _ , • ⟧ᵈ , _ , C.⟦ _ , _ , • ⟧ᵛ ⟧ᶜˢ)
    --                    (lemUpdateDeposits' valid utxow)
    -- in
    -- subst₂ (λ • ◆ → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ C.⟦ • , _ , ◆ ⟧ˡ) utxoEq certsEq ledger'
  LEDGERToConf .convⁱ _ (L.LEDGER-I⋯ invalid utxow) with conv utxow
  ... | utxow' rewrite lemInvalidDepositsL invalid utxow = C.LEDGER-I⋯ invalid utxow'

--   LEDGERFromConf : ∀ {Γ s tx s'} → Γ C.⊢ conv s ⇀⦇ tx ,LEDGER⦈ conv s' ⭆ Γ L.⊢ s ⇀⦇ tx ,LEDGER⦈ s'
--   LEDGERFromConf .convⁱ _ (C.LEDGER-V⋯ valid utxow certs gov) = {!!}
--   LEDGERFromConf .convⁱ _ (C.LEDGER-I⋯ invalid utxow) with inj₁ invalid ⊢conv utxow
--   ... | utxow' rewrite lemInvalidDepositsC invalid utxow = L.LEDGER-I⋯ invalid utxow'
