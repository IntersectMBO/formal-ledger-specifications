{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Data.Integer using () renaming (+_ to pos)
import Data.Integer as ℤ

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)

open import Agda.Builtin.FromNat

open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Conformance.Equivalence txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Equivalence.Deposits txs abs
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Rewards txs abs
open import Ledger.Conway.Specification.Epoch txs abs
  using (getStakeCred; getOrphans; mkStakeDistrs; toRwdAddr) public
import Ledger.Conway.Specification.Epoch txs abs as EpochSpec

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

PoolDelegatedStake : Type
PoolDelegatedStake = KeyHash ⇀ Coin

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    bprev       : BlocksMade
    bcur        : BlocksMade
    epochState  : EpochState
    ru          : Maybe RewardUpdate
    pd          : PoolDelegatedStake

instance
  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

  EpochStateFromConf : EpochState ⭆ EpochSpec.EpochState
  EpochStateFromConf .convⁱ _ epochState =
    let open EpochState epochState in
    ⟦ acnt , ss , conv ls , es , fut ⟧

  EpochStateToConf : EpochSpec.EpochState ⭆ EpochState
  EpochStateToConf .convⁱ deposits epochSt =
    let open EpochSpec.EpochState epochSt in
    ⟦ acnt , ss , certDeposits ls ⊢conv ls , es , fut ⟧ᵉ'

  NewEpochStateFromConf : NewEpochState ⭆ EpochSpec.NewEpochState
  NewEpochStateFromConf .convⁱ _ newEpochState =
    let open NewEpochState newEpochState in
    ⟦ lastEpoch , bprev , bcur , conv epochState , ru , pd ⟧

  NewEpochStateToConf : EpochSpec.NewEpochState ⭆ NewEpochState
  NewEpochStateToConf .convⁱ deposits newEpochSt =
    let open EpochSpec.NewEpochState newEpochSt in
    ⟦ lastEpoch , bcur , bprev , conv epochState , ru , pd ⟧


applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate
  ⟦ ⟦ treasury , reserves ⟧ᵃ
  , ss
  , ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits' ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut
  ⟧ᵉ' =
  ⟦ ⟦ posPart (pos treasury + Δt + pos unregRU')
    , posPart (pos reserves + Δr) ⟧
  , ss
  , ⟦ ⟦ utxo , posPart (pos fees + Δf) , deposits , donations ⟧
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU , deposits' ⟧ , pState , gState ⟧ ⟧
  , es
  , fut ⟧
  where
    open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
    regRU     = rs ∣ dom rewards
    unregRU   = rs ∣ dom rewards ᶜ
    unregRU'  = ∑[ x ← unregRU ] x

opaque
  calculatePoolDelegatedStake : Snapshot → PoolDelegatedStake
  calculatePoolDelegatedStake ss =
      -- Shelley spec: the output map must contain keys appearing in both
      -- sd and the pool parameters.
      sd ∣ dom (ss .pools)
    where
      open Snapshot

      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ

      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)


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

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

  EPOCH : let
      open LState ls
      open CertState certState
      open RatifyState fut renaming (es to esW)
      open UTxOState
      open PState; open DState; open GState
      open Acnt; open EnactState; open GovActionState

      es : EnactState
      es = record esW { withdrawals = ∅ }

      tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      orphans : ℙ (GovActionID × GovActionState)
      orphans  = fromList (getOrphans es tmpGovSt)

      removed' : ℙ (GovActionID × GovActionState)
      removed' = removed ∪ orphans

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed' ¿) govSt

      removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
      removedGovActions =
        flip concatMapˢ removed' λ (gaid , gaSt) →
          mapˢ
            (returnAddr gaSt ,_)
            ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)

      govActionReturns : RwdAddr ⇀ Coin
      govActionReturns =
        aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = esW .withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      retired    = (pState .retiring) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRwdAddr (dom (dState .rewards))
      unclaimed  = getCoin payout - getCoin refunds
      vDeposits  = gState .deposits

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

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs (Snapshots.mark ss') e utxoSt' govSt' (record { GState (CertState.gState (LState.certState ls)) })
                                                                        (record { DState (CertState.dState (LState.certState ls)) })

    in
    record { currentEpoch = e
           ; stakeDistrs = stakeDistrs
           ; treasury = acnt .treasury ; GState gState
           ; pools = pState .pools ; delegatees = dState .voteDelegs }
        ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
    ────────────────────────────────
    _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈
        ⟦ acnt' , ss' , ⟦ utxoSt' , govSt' , certState' ⟧ , es , fut' ⟧

data _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type where

  NEWEPOCH-New :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
       eps' = applyRUpd ru eps
       ss   = EpochState.ss eps''
       pd'  = calculatePoolDelegatedStake (Snapshots.set ss)
     in
       ∙ e ≡ lastEpoch + 1
       ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
       ────────────────────────────────
       _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , just ru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ  , eps'' , nothing , pd' ⟧

  NEWEPOCH-Not-New : ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    ∙ e ≢ lastEpoch + 1
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , bprev , bcur , eps , mru , pd ⟧

  NEWEPOCH-No-Reward-Update :
    ∀ {bprev bcur : BlocksMade} {pd : PoolDelegatedStake} →
    let
      ss  = EpochState.ss eps'
      pd' = calculatePoolDelegatedStake (Snapshots.set ss)
    in
      ∙ e ≡ lastEpoch + 1
      ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , bprev , bcur , eps , nothing , pd ⟧ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , bcur , ∅ᵐ , eps' , nothing , pd' ⟧
