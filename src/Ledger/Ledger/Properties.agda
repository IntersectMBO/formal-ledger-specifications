{-# OPTIONS --safe #-}

open import Data.Product.Properties

open import Relation.Nullary.Decidable hiding (map)
import Relation.Binary.PropositionalEquality as Eq

open import Tactic.ReduceDec using (fromWitness')

open import Ledger.Prelude; open Equivalence; open Computational
open import Ledger.Transaction

module Ledger.Ledger.Properties (⋯ : _) (open TransactionStructure ⋯) where

open TxBody
open TxWitnesses
open Tx

open import Ledger.Gov govStructure
open import Ledger.Utxo   ⋯
open import Ledger.Ledger ⋯
open import Ledger.Utxow  ⋯
open import Ledger.PPUp   ⋯

import Ledger.Utxo.Properties  ⋯ as P
import Ledger.Utxow.Properties ⋯ as PW

private variable
  tx : Tx
  Γ : LEnv
  s s' : LState
  l : List Tx

module _ (Computational-TALLY : Computational _⊢_⇀⦇_,GOV⦈_)
         (Computational-CERTS : Computational _⊢_⇀⦇_,CERTS⦈_) where

  instance
    HasCoin-LState : HasCoin LState
    HasCoin-LState .getCoin s = getCoin (s .LState.utxoSt)

  private
    helper : Maybe UTxOState × Maybe GovState × Maybe CertState × Bool → Maybe LState
    helper (just utxoSt' , just tally' , just certState' , true) =
      just ⟦ utxoSt' , tally' , certState' ⟧ˡ
    helper _                                                     = nothing

    -- This massively speeds up type-checking
    abstract
      Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_
      Computational-UTXOW = PW.Computational-UTXOW

    Computational-Match :
      LEnv → LState → Tx → Maybe UTxOState × Maybe GovState × Maybe CertState × Bool
    Computational-Match Γ s tx = let open LState s in
         compute Computational-UTXOW record { LEnv Γ } utxoSt tx
      ,′ compute Computational-TALLY
           record { epoch = epoch (Γ .LEnv.slot) ; LEnv Γ ; TxBody (tx .body) }
           govSt (txgov (tx .body))
      ,′ maybe
           (λ certState' → just certState' ,′
             ⌊ ¿ map RwdAddr.stake (dom (tx .body .txwdrls ˢ))
               ⊆ dom (DState.voteDelegs (CertState.dState certState') ˢ) ¿ ⌋)
           (nothing ,′ false)
           (compute Computational-CERTS
             ⟦ epoch (LEnv.slot Γ) , LEnv.pparams Γ , tx .body .txvote ⟧ᶜ
             certState (tx .body .txcerts))

    helper₁ : ∀ {X Z : Set} {x : Z → X} {y : X} {z : Maybe Z} →
      maybe′ (λ w → just w ,′ x w) (nothing ,′ y) z .proj₁ ≡ z
    helper₁ {z = just x}  = refl
    helper₁ {z = nothing} = refl

    Computational-Match-helper : helper (Computational-Match Γ s tx) ≡ just s' →
      let open LState
          us , gs , cs , _ = Computational-Match Γ s tx
      in us ≡ just (s' .utxoSt)
       × gs ≡ just (s' .govSt)
       × cs ≡ just (s' .certState)
       × map RwdAddr.stake (dom (tx .body .txwdrls ˢ)) ⊆
         dom (DState.voteDelegs (CertState.dState $ certState s') ˢ)
    Computational-Match-helper {Γ} {s} {tx} {⟦ utxoSt , tally , certState ⟧ˡ} h
      with Computational-Match Γ s tx | inspect (Computational-Match Γ s) tx | h
    ... | just x , just x₁ , just x₂ , true | Eq.[ eq ] | refl = let
      eq₁ , eqs = ×-≡,≡←≡ eq
      eq₂ , eqs' = ×-≡,≡←≡ eqs
      eq₃ , eq₄ = ×-≡,≡←≡ eqs'
      comp = compute Computational-CERTS
               ⟦ epoch (LEnv.slot Γ) , LEnv.pparams Γ , tx .body .txvote ⟧ᶜ
               (LState.certState s)
               (tx .body .txcerts)
      prop = λ s → ¿ map RwdAddr.stake (dom (txwdrls (tx .body) ˢ))
                   ⊆ dom (DState.voteDelegs (CertState.dState s) ˢ) ¿
      p = (case comp return (λ x → comp ≡ x → x ≡ just certState) of
             λ x h → trans (trans (sym h) (sym (helper₁))) eq₃) refl
      q = subst
        (λ x → proj₂ (maybe′ (λ certState' → _ ,′ ⌊ prop certState' ⌋) _ x) ≡ _)
        p eq₄
      in eq₁ , eq₂ , eq₃ , toWitness (subst T (sym q) _)

  open UTxOState
  open LState

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_
  Computational-LEDGER .compute Γ s tx = helper (Computational-Match Γ s tx)
  Computational-LEDGER .≡-just⇔STS {Γ} {s} {tx} {s'} = mk⇔
    (λ h → let h₁ , h₂ , h₃ , h₄ = Computational-Match-helper {Γ = Γ} {s = s} {tx = tx} h in
      LEDGER (Computational-UTXOW .≡-just⇔STS .to h₁)
             (Computational-CERTS .≡-just⇔STS .to (trans (sym helper₁) h₃))
             (Computational-TALLY .≡-just⇔STS .to h₂)
             h₄)
    (λ where
      (LEDGER x x₁ x₂ x₃) → cong helper
        ( ×-≡,≡→≡
          ( Computational-UTXOW .≡-just⇔STS .from x
          , ×-≡,≡→≡
            ( Computational-TALLY .≡-just⇔STS .from x₂
            , subst (λ x → maybe _ _ x ≡ _)
                    (sym $ Computational-CERTS .≡-just⇔STS  .from x₁)
                    (×-≡,≡→≡ (refl , fromWitness' _ x₃))))))

  FreshTx : Tx → LState → Set
  FreshTx tx ls = tx .body .txid ∉ map proj₁ (dom (ls .utxoSt .utxo ˢ))

  LEDGER-pov : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
  LEDGER-pov h (LEDGER (UTXOW-inductive _ _ _ _ _ st) _ _ _) = P.pov h st

  data FreshTxs : LEnv → LState → List Tx → Set where
    []-Fresh : FreshTxs Γ s []
    ∷-Fresh  : FreshTx tx s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → FreshTxs Γ s' l
             → FreshTxs Γ s (tx ∷ l)

  LEDGERS-pov : FreshTxs Γ s l → Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s' → getCoin s ≡ getCoin s'
  LEDGERS-pov _ (BS-base refl) = refl
  LEDGERS-pov {Γ} {_} {_ ∷ l} (∷-Fresh h h₁ h₂) (BS-ind x st) =
    trans (LEDGER-pov h x) $
      LEDGERS-pov (subst (λ s → FreshTxs Γ s l)
                         (sym $ computational⇒rightUnique Computational-LEDGER x h₁)
                         h₂) st
