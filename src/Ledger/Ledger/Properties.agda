{-# OPTIONS --safe #-}

open import Data.Product.Properties

import Relation.Binary.PropositionalEquality as Eq

open import Tactic.ReduceDec using (fromWitness')

open import Ledger.Prelude; open Equivalence; open Computational ⦃...⦄
open import Ledger.Transaction

module Ledger.Ledger.Properties (txs : _) (open TransactionStructure txs) where

open TxBody
open TxWitnesses
open Tx

open import Ledger.Gov govStructure
open import Ledger.Utxo txs
open import Ledger.Ledger txs
open import Ledger.Utxow txs
open import Ledger.PPUp txs

import Ledger.Utxo.Properties txs as P
import Ledger.Utxow.Properties txs as PW

private variable
  tx : Tx
  Γ : LEnv
  s s' : LState
  l : List Tx

instance
  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_
  Computational-LEDGER .computeProof Γ@(⟦ slot , ppolicy , pparams ⟧ˡᵉ) ⟦ utxoSt , govSt , certSt ⟧ˡ tx = do
    let txb = body tx
    (utxoSt' , utxoStep) ← computeProof record{ LEnv Γ } utxoSt tx
    (certSt' , certStep) ← computeProof ⟦ epoch slot , pparams , txvote txb ⟧ᶜ certSt (txcerts txb)
    (govSt'  , govStep)  ← computeProof ⟦ txid txb , epoch slot , pparams ⟧ᵗ govSt (txgov txb)
    case ¿ mapˢ RwdAddr.stake (dom (txwdrls txb ˢ)) ⊆ dom (DState.voteDelegs (CertState.dState certSt') ˢ) ¿ of λ where
      (yes h) → just (_ , LEDGER utxoStep certStep govStep h)
      (no _)  → nothing
    where
      open import Data.Maybe hiding (map)
  Computational-LEDGER .completeness Γ@(⟦ slot , ppolicy , pparams ⟧ˡᵉ)
                                     ⟦ utxoSt , govSt , certSt ⟧ˡ
                                     tx
                                     ⟦ utxoSt' , govSt' , certState' ⟧ˡ
                                     (LEDGER utxoStep certStep govStep h)
    with computeProof record{ LEnv Γ } utxoSt tx | completeness _ _ _ _ utxoStep
  ... | just (utxoSt' , _) | refl
    with computeProof {STS = _⊢_⇀⦇_,CERTS⦈_} ⟦ epoch slot , pparams , txvote (body tx) ⟧ᶜ certSt (txcerts (body tx))
       | completeness _ _ _ _ certStep
  ... | just (certSt' , _) | refl
    with computeProof {STS = _⊢_⇀⦇_,GOV⦈_} ⟦ txid (body tx) , epoch slot , pparams ⟧ᵗ govSt (txgov (body tx))
       | completeness _ _ _ _ govStep
  ... | just (govSt' , _) | refl
    rewrite dec-yes ¿ mapˢ RwdAddr.stake (dom (txwdrls (body tx) ˢ)) ⊆
                      dom (DState.voteDelegs (CertState.dState certSt') ˢ) ¿ h .proj₂ = refl

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s)

open UTxOState
open LState

FreshTx : Tx → LState → Set
FreshTx tx ls = txid (body tx) ∉ mapˢ proj₁ (dom (utxo (utxoSt ls) ˢ))

LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
LEDGER-pov h (LEDGER (UTXOW-inductive _ _ _ _ _ st) _ _ _) = P.pov h st

data FreshTxs : LEnv → LState → List Tx → Set where
  []-Fresh : FreshTxs Γ s []
  ∷-Fresh  : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → FreshTxs Γ s' l
            → FreshTxs Γ s (tx ∷ l)

LEDGERS-pov : FreshTxs Γ s l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s' → getCoin s ≡ getCoin s'
LEDGERS-pov _ (BS-base Id-nop) = refl
LEDGERS-pov {Γ} {_} {_ ∷ l} (∷-Fresh h h₁ h₂) (BS-ind x st) =
  trans (LEDGER-pov h x) $
    LEDGERS-pov (subst (λ s → FreshTxs Γ s l)
                        (sym $ computational⇒rightUnique Computational-LEDGER x h₁)
                        h₂) st
