{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Epoch.Haskell
  (txs : _) (open TransactionStructure txs hiding (DState; GState; ⟦_,_⟧ᵖ; ⟦_,_⟧ᵛ; CertState))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.List using (filter)

open import Ledger.Ledger.Haskell txs abs
open import Ledger.Certs.Haskell govStructure

open import Ledger.Epoch txs abs using
  ( Snapshots; Snapshot; RewardUpdate
  ; toRwdAddr; mkStakeDistrs; ⟦_,_,_,_⟧ˢˢ
  ; getStakeCred
  )
open import Ledger.Enact govStructure
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure
  using (⟦_,_⟧ᵖ)
open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Agda.Builtin.FromNat

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

record NewEpochState : Type where
  constructor ⟦_,_,_⟧ⁿᵉ
  field
    lastEpoch   : Epoch
    epochState  : EpochState
    ru          : Maybe RewardUpdate

open RwdAddr using (stake)
open GovActionState using (returnAddr)

stakeDistr : UTxO → DState → PState → Snapshot
stakeDistr utxo ⟦ _ , stakeDelegs , rewards ⟧ᵈ pState = ⟦ aggregate₊ (stakeRelation ᶠˢ) , stakeDelegs ⟧ˢ
  where
    m = mapˢ (λ a → (a , cbalance (utxo ∣^' λ i → getStakeCred i ≡ just a))) (dom rewards)
    stakeRelation = m ∪ proj₁ rewards

module _ where
  private variable
    nes nes' : NewEpochState
    e lastEpoch : Epoch
    fut fut' : RatifyState
    eps eps' eps'' : EpochState
    ls : LState
    acnt : Acnt
    es₀ : EnactState
    mark set go : Snapshot
    feeSS : Coin
    lstate : LState
    ss ss' : Snapshots
    ru : RewardUpdate
    mru : Maybe RewardUpdate

  data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
    SNAP : let open LState lstate; open UTxOState utxoSt; open CertState certState
               stake = stakeDistr utxo {!dState!} pState
      in
      lstate ⊢ ⟦ mark , set , go , feeSS ⟧ˢˢ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧ˢˢ
  
  data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where
    EPOCH : let
        ⟦ esW , removed , _ ⟧ʳ = fut
        ⟦ utxoSt , govSt , ⟦ dState , pState , gState ⟧ᶜˢ ⟧ˡ = ls
        open UTxOState
        open PState; open DState; open GState
        open Acnt; open EnactState; open GovActionState
  
        removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
          mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
        govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)
  
        trWithdrawals   = esW .withdrawals
        totWithdrawals  = ∑[ x ← trWithdrawals ] x
  
        es         = record esW { withdrawals = ∅ }
        retired    = (pState .retiring) ⁻¹ e
        payout     = govActionReturns ∪⁺ trWithdrawals
        refunds    = pullbackMap payout toRwdAddr (dom (dState .rewards))
        unclaimed  = getCoin payout - getCoin refunds
  
        govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt
  
        certState' =
          ⟦ record dState { rewards = dState .rewards ∪⁺ refunds }
          , ⟦ (pState .pools) ∣ retired ᶜ , (pState .retiring) ∣ retired ᶜ ⟧ᵖ
          , ⟦ if null govSt' then mapValues (1 +_) (gState .dreps) else (gState .dreps)
            , (gState .ccHotKeys) ∣ ccCreds (es .cc)
            , gState .deposits
            ⟧ᵛ
          ⟧ᶜˢ
  
        utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧ᵘ
  
        acnt' = record acnt
          { treasury  = acnt .treasury ∸ totWithdrawals + utxoSt .donations + unclaimed }
      in
      record { currentEpoch = e
             ; stakeDistrs = mkStakeDistrs  (Snapshots.mark ss') govSt'
                                            (utxoSt' .deposits) (voteDelegs dState)
             ; treasury = acnt .treasury ; GState gState }
          ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
         → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ᵉ' ⇀⦇ e ,EPOCH⦈
          ⟦ acnt' , ss' , ⟦ utxoSt' , govSt' , certState' ⟧ˡ , es , fut' ⟧ᵉ'

module _ (lstate : LState) (ss : Snapshots) where
  SNAP-total : ∃[ ss' ] lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
  SNAP-total = -, SNAP

  SNAP-complete : ∀ ss' → lstate ⊢ ss ⇀⦇ tt ,SNAP⦈ ss' → proj₁ SNAP-total ≡ ss'
  SNAP-complete ss' SNAP = refl

module _ {eps : EpochState} {e : Epoch} where
  open import Ledger.Ratify.Properties txs

  open EpochState eps hiding (es)
  open RatifyState fut using (removed) renaming (es to esW)
  open LState ls; open CertState certState; open Acnt acnt
  es         = record esW { withdrawals = ∅ }
  govSt'     = filter (λ x → ¿ ¬ proj₁ x ∈ mapˢ proj₁ removed ¿) govSt

  EPOCH-total : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
  EPOCH-total = -, EPOCH (RATIFY-total' .proj₂) (SNAP-total ls ss .proj₂)

  EPOCH-complete : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total ≡ eps'
  EPOCH-complete eps' (EPOCH p₁ p₂) = cong₂ ⟦ _ ,_, _ , _ ,_⟧ᵉ' (SNAP-complete _ _ _ p₂)
    (RATIFY-complete' (subst ty (cong Snapshots.mark (sym (SNAP-complete _ _ _ p₂))) p₁))
    where
      ty : Snapshot → Set
      ty x = record
        { stakeDistrs = mkStakeDistrs x _ _ _
        ; currentEpoch = _
        ; dreps = _
        ; ccHotKeys = _
        ; treasury = _
        } ⊢ _ ⇀⦇ _ ,RATIFY⦈ _

  abstract
    EPOCH-total' : ∃[ eps' ] _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    EPOCH-total' = EPOCH-total

    EPOCH-complete' : ∀ eps' → _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps' → proj₁ EPOCH-total' ≡ eps'
    EPOCH-complete' = EPOCH-complete

open Computational ⦃...⦄

instance
  Computational-EPOCH : Computational _⊢_⇀⦇_,EPOCH⦈_ ⊥
  Computational-EPOCH .computeProof Γ s sig = success EPOCH-total'
  Computational-EPOCH .completeness Γ s sig s' h = cong success (EPOCH-complete' s' h)
