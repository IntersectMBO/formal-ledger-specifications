{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Ledger.Properties (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs

open TxBody
open TxWitnesses
open Tx

open import Data.Product.Properties

open import Ledger.Utxo txs
open import Ledger.Ledger txs
open import Ledger.Utxow txs
open import Ledger.PPUp txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto

import Ledger.Utxo.Properties txs as P
import Ledger.Utxow.Properties txs as PW

import Relation.Binary.PropositionalEquality as Eq

open Equivalence
open Computational

private variable
  tx : Tx
  Γ : LEnv
  s s' : LState
  l : List Tx

module _ (Computational-TALLY : Computational _⊢_⇀⦇_,TALLY⦈_)
         (Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_) where

  instance
    HasCoin-LState : HasCoin LState
    HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

  private
    helper : Maybe UTxOState × Maybe TallyState × Maybe CertState → Maybe LState
    helper (just utxoSt' , just tally' , just certState') = just ⟦ utxoSt' , tally' , certState' ⟧ˡ
    helper _                                              = nothing

    Computational-Match : LEnv → LState → Tx → Maybe UTxOState × Maybe TallyState × Maybe CertState
    Computational-Match Γ s tx = let open LState s in
      (compute PW.Computational-UTXOW record { LEnv Γ } utxoSt tx
      ,′ compute Computational-TALLY record { epoch = epoch (Γ .LEnv.slot) ; LEnv Γ ; TxBody (body tx) } tally (txgov (body tx))
      ,′ compute Computational-CERTS (LEnv.pparams Γ) certState (txcerts (body tx)))

    Computational-Match-helper : helper (Computational-Match Γ s tx) ≡ just s' → let open LState in
      proj₁        (Computational-Match Γ s tx)  ≡ just (utxoSt s') ×
      proj₁ (proj₂ (Computational-Match Γ s tx)) ≡ just (tally s')  ×
      proj₂ (proj₂ (Computational-Match Γ s tx)) ≡ just (certState s')
    Computational-Match-helper {Γ} {s} {tx} {⟦ utxoSt , tally , certState ⟧ˡ} h
      with Computational-Match Γ s tx | inspect (Computational-Match Γ s) tx | h
    ... | just x , just x₁ , just x₂ | Eq.[ eq ] | refl =
      proj₁ (×-≡,≡←≡ eq) , proj₁ (×-≡,≡←≡ $ proj₂ (×-≡,≡←≡ eq)) , proj₂ (×-≡,≡←≡ $ proj₂ (×-≡,≡←≡ eq))

  open UTxOState
  open LState

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_
  Computational-LEDGER .compute Γ s tx = helper (Computational-Match Γ s tx)
  Computational-LEDGER .≡-just⇔STS {Γ} {s} {tx} {s'} = mk⇔
    (λ h → case Computational-Match-helper {Γ = Γ} {s = s} {tx = tx} h of λ where
      (h₁ , h₂ , h₃) → LEDGER (to (≡-just⇔STS Computational-CERTS) h₃)
                              (to (≡-just⇔STS PW.Computational-UTXOW) h₁)
                              (to (≡-just⇔STS Computational-TALLY) h₂))
    (λ where (LEDGER x x₁ x₂) → cong helper
               (×-≡,≡→≡ (from (≡-just⇔STS PW.Computational-UTXOW) x₁
               , ×-≡,≡→≡ ((from (≡-just⇔STS Computational-TALLY) x₂)
               , (from (≡-just⇔STS Computational-CERTS) x)))))

  FreshTx : Tx → LState → Set
  FreshTx tx ls = txid (body tx) ∉ map proj₁ (dom (utxo (utxoSt ls) ˢ))

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER _ (UTXOW-inductive _ _ _ _ _ st) _) = P.pov h st

  data FreshTxs : LEnv → LState → List Tx → Set where
    []-Fresh  : FreshTxs Γ s []
    ∷-Fresh : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → FreshTxs Γ s' l → FreshTxs Γ s (tx ∷ l)

  LEDGERS-pov : FreshTxs Γ s l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s' → getCoin s ≡ getCoin s'
  LEDGERS-pov _ BS-base = refl
  LEDGERS-pov {Γ} {_} {_ ∷ l} (∷-Fresh h h₁ h₂) (BS-ind x st) = trans (LEDGER-pov h x)
    (LEDGERS-pov (subst (λ s → FreshTxs Γ s l) (sym $ computational⇒rightUnique Computational-LEDGER x h₁) h₂) st)
