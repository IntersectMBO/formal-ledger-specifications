
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)
import Data.Integer as ℤ

open import Agda.Builtin.FromNat

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Gov txs
open import Ledger.Enact govStructure
open import Ledger.Interface.HasDowncast.Instance txs govStructure
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Certs govStructure

record RewardUpdate : Set where
  constructor ⟦_,_,_,_⟧ʳᵘ
  field
    Δt Δr Δf : ℤ
    rs : Credential ⇀ Coin

record Snapshot : Set where
  field
    stake        : Credential ⇀ Coin
    delegations  : Credential ⇀ KeyHash
    -- poolParameters : KeyHash ⇀ PoolParam

record Snapshots : Set where
  field
    mark set go  : Snapshot
    feeSS        : Coin

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    epochState  : EpochState
    ru          : Maybe RewardUpdate

instance
  unquoteDecl To-RewardUpdate To-Snapshot To-Snapshots To-EpochState To-NewEpochState = derive-To
    (   (quote RewardUpdate   , To-RewardUpdate)
    ∷   (quote Snapshot       , To-Snapshot)
    ∷   (quote Snapshots      , To-Snapshots)
    ∷   (quote EpochState     , To-EpochState)
    ∷ [ (quote NewEpochState  , To-NewEpochState)])

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

toRwdAddr : Credential → RwdAddr
toRwdAddr x = record { net = NetworkId ; stake = x }

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open RwdAddr using (stake)
open GovActionState using (returnAddr)

applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd ⟦ Δt , Δr , Δf , rs ⟧ʳᵘ
  ⟦ ⟦ treasury , reserves ⟧ᵃ
  , ss
  , ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards , dDeposits ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut
  ⟧ᵉ' =
  ⟦ ⟦ posPart (ℤ.+ treasury ℤ.+ Δt ℤ.+ ℤ.+ unregRU')
    , posPart (ℤ.+ reserves ℤ.+ Δr) ⟧ᵃ
  , ss
  , ⟦ ⟦ utxo , posPart (ℤ.+ fees ℤ.+ Δf) , deposits , donations ⟧ᵘ
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU , dDeposits ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut ⟧ᵉ'
  where
    regRU     = rs ∣ dom rewards
    unregRU   = rs ∣ dom rewards ᶜ
    unregRU'  = ∑[ x ← unregRU ] x

stakeDistr : UTxO → DState → PState → Snapshot
stakeDistr utxo ⟦ _ , stakeDelegs , rewards , _ ⟧ᵈ pState = ⟦ aggregate₊ (stakeRelation ᶠˢ) , stakeDelegs ⟧
  where
    m = mapˢ (λ a → (a , cbalance (utxo ∣^' λ i → getStakeCred i ≡ just a))) (dom rewards)
    stakeRelation = m ∪ rewards ↓

gaDepositStake : GovState → Deposits → Credential ⇀ Coin
gaDepositStake govSt ds = aggregateBy
  (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
  (mapFromPartialFun (λ (gaid , _) → lookupᵐ? ds (GovActionDeposit gaid)) govSt')
  where govSt' = mapˢ (map₂ returnAddr) (fromList govSt)


opaque

  mkStakeDistrs : Snapshot → GovState → Deposits → (Credential ⇀ VDeleg) → StakeDistrs
  mkStakeDistrs ss govSt ds delegations .StakeDistrs.stakeDistr =
    aggregateBy (delegations ↓) (Snapshot.stake ss ∪⁺ gaDepositStake govSt ds)

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
  certState' : CertState

data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let open LState lstate; open UTxOState utxoSt; open CertState certState
             stake = stakeDistr utxo dState pState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

  EPOCH : let
      open LState ls
      open CertState certState
      open RatifyState fut
      open UTxOState
      open PState; open DState; open GState
      open Acnt; open EnactState; open GovActionState


      removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
        mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = es .withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      es         = record es { withdrawals = ∅ }
      retired    = (pState .retiring) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRwdAddr (dom (dState .rewards))
      unclaimed  = getCoin payout - getCoin refunds
      vDeposits  = gState .deposits

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      dState' : DState
      dState' = record dState { rewards = dState .rewards ∪⁺ refunds }

      pState' : PState
      pState' = ⟦ (pState .pools) ∣ retired ᶜ , (pState .retiring) ∣ retired ᶜ ⟧

      gState' : GState
      gState' = ⟦ (if null govSt' then mapValues (1 +_) (gState .dreps) else (gState .dreps))
                , (gState .ccHotKeys) ∣ ccCreds (es .cc)
                , vDeposits
                ⟧

      certState' : CertState
      certState' = record { dState = dState' ; pState = pState' ; gState = gState' }

      utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧

      acnt' = record acnt
        { treasury  = acnt .treasury ∸ totWithdrawals + utxoSt .donations + unclaimed }
    in
    record { currentEpoch = e
           ; stakeDistrs = mkStakeDistrs  (Snapshots.mark ss') govSt'
                                          (utxoSt' .deposits) (voteDelegs dState)
           ; treasury = acnt .treasury ; GState gState
           ; pools = pState .pools ; delegatees = dState .voteDelegs }
        ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
    ────────────────────────────────
    _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈
        ⟦ acnt' , ss' , ⟦ utxoSt' , govSt' , certState' ⟧ , es , fut' ⟧

data

  _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type

  where

  NEWEPOCH-New : let
      eps' = applyRUpd ru eps
    in
    ∙ e ≡ lastEpoch + 1
    ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , just ru ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps'' , nothing ⟧

  NEWEPOCH-Not-New :
    ∙ e ≢ lastEpoch + 1
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , mru ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , eps , mru ⟧

  NEWEPOCH-No-Reward-Update :
    ∙ e ≡ lastEpoch + 1
    ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , nothing ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps' , nothing ⟧
