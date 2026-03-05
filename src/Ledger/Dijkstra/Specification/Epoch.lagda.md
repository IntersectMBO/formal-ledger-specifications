---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Epoch.lagda.md
---

# Epoch and NewEpoch transition systems for Dijkstra

Modelled on the `Conway.Conformance.Epoch`{.AgdaModule} module, adapted for Dijkstra:

+  Deposits live in `CertState`{.AgdaRecord} (not `UTxOState`{.AgdaRecord})
+  `SNAP`{.AgdaDatatype} and `POOLREAP`{.AgdaDatatype} operate on `CertState`{.AgdaRecord}
   and `Acnt`{.AgdaRecord} rather than `UTxOState`{.AgdaRecord} and `CertState`{.AgdaRecord}.
+  govAction deposit returns are taken from `GState.deposits`{.AgdaField}.

```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude hiding (iterate)
open import Data.Integer using () renaming (+_ to pos)
import Data.Integer as ℤ

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)

open import Agda.Builtin.FromNat
open import Data.Nat.GeneralisedArithmetic using (iterate)

open import Data.Maybe                      using (fromMaybe)

open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Enact govStructure
open import Ledger.Dijkstra.Specification.Gov govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.PoolReap txs abs
open import Ledger.Dijkstra.Specification.Ratify govStructure
open import Ledger.Dijkstra.Specification.Rewards txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs

getOrphans : EnactState → GovState → GovState
getOrphans es govSt = proj₁ $ iterate step ([] , govSt) (length govSt)
  where
    step : GovState × GovState → GovState × GovState
    step (orps , govSt) =
      let
        isOrphan? a prev = ¬? (hasParent? es govSt a prev)
        (orps' , govSt') = partition
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? (a .gaType) prev)
          govSt
      in
        (orps ++ orps' , govSt')

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open GovActionState using (returnAddr)
open RewardAddress using (stake)

PoolDelegatedStake : Type
PoolDelegatedStake = KeyHash ⇀ Coin

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LedgerState
    es         : EnactState
    fut        : RatifyState

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


applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate
  ⟦ ⟦ treasury , reserves ⟧ᵃ , ss , ⟦ ⟦ utxo , fees , donations ⟧ᵘ , govSt , ⟦ ⟦ voteDelegs , stakeDelegs , rewards , deposits ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ , es , fut ⟧ᵉ' = ⟦  ⟦ posPart (pos treasury + Δt + pos unregRU') , posPart (pos reserves + Δr) ⟧ , ss , ⟦ ⟦ utxo , posPart (pos fees + Δf) , donations ⟧ , govSt , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU , deposits ⟧ᵈ , pState , gState ⟧ᶜˢ  ⟧ˡ , es , fut ⟧ᵉ'
  where
  open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
  regRU     = rs ∣ dom rewards
  unregRU   = rs ∣ dom rewards ᶜ
  unregRU'  = ∑[ x ← unregRU ] x

opaque
  calculatePoolDelegatedStake : Snapshot → PoolDelegatedStake
  calculatePoolDelegatedStake ss = sd ∣ dom (ss .pools)
    -- Shelley spec: the output map must contain keys appearing in both
    -- sd and the pool parameters.
    where
      open Snapshot
      -- stake credentials delegating to each pool
      stakeCredentialsPerPool : Rel KeyHash Credential
      stakeCredentialsPerPool = (StakeDelegsOf ss ˢ) ⁻¹ʳ
      -- delegated stake per pool
      sd : KeyHash ⇀ Coin
      sd = aggregate₊ ((stakeCredentialsPerPool ∘ʳ (StakeOf ss ˢ)) ᶠˢ)

  -- In Dijkstra, look up each gov action's deposit from GState.deposits
  -- using the stake credential of the proposal's returnAddr.
  stakeFromGADeposits : GovState → GState → Stake
  stakeFromGADeposits govSt gState =
    aggregateBy
      (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
      (mapFromPartialFun (λ (_ , addr) → lookupᵐ? (DepositsOf gState) (stake addr)) govSt')
    where
      govSt' : ℙ (GovActionID × RewardAddress)
      govSt' = mapˢ (map₂ returnAddr) (fromList govSt)

module VDelegDelegatedStake
  (currentEpoch : Epoch)
  (utxoSt       : UTxOState)
  (govSt        : GovState)
  (gState       : GState)
  (dState       : DState)
  where
  activeDReps : ℙ Credential
  activeDReps = dom (activeDRepsOf gState currentEpoch)
  activeVDelegs : ℙ VDeleg
  activeVDelegs = mapˢ vDelegCredential activeDReps ∪ ❴ vDelegNoConfidence ❵ ∪ ❴ vDelegAbstain ❵
  stakePerCredential : Credential → Coin
  stakePerCredential c =
      cbalance ((UTxOOf utxoSt) ∣^' λ txout → getStakeCred txout ≡ just c)
    + fromMaybe 0 (lookupᵐ? (stakeFromGADeposits govSt gState) c)  -- ← gState, not utxoSt
    + fromMaybe 0 (lookupᵐ? (RewardsOf dState) c)
  calculate : VDeleg ⇀ Coin
  calculate =
    mapFromFun
      (λ vd → ∑ˢ[ c ← (VoteDelegsOf dState) ⁻¹ vd ] stakePerCredential c)
      activeVDelegs


opaque
  calculateVDelegDelegatedStake : Epoch → UTxOState → GovState → GState → DState → VDeleg ⇀ Coin
  calculateVDelegDelegatedStake = VDelegDelegatedStake.calculate

  -- Pool-delegated stake for voting:
  -- also uses gState instead of utxoSt for gov-action deposit component.
  calculatePoolDelegatedStakeForVoting : Snapshot → GovState → GState → KeyHash ⇀ Coin
  calculatePoolDelegatedStakeForVoting ss govSt gState =
    calculatePoolDelegatedStake ss ∪⁺ (stakeFromDeposits ∣ dom (PoolsOf ss))
    where
    stakeFromDeposits : KeyHash ⇀ Coin
    stakeFromDeposits = aggregate₊ (((StakeDelegsOf ss ˢ) ⁻¹ʳ ∘ʳ (stakeFromGADeposits govSt gState ˢ)) ᶠˢ)

-- mkStakeDistrs no longer takes utxoSt for the deposit lookup,
-- but still takes it for the UTxO-balance part of VDeleg stake.
mkStakeDistrs : Snapshot → Epoch → UTxOState → GovState → GState → DState → StakeDistrs
mkStakeDistrs ss currentEpoch utxoSt govSt gState dState =
  ⟦ calculateVDelegDelegatedStake currentEpoch utxoSt govSt gState dState
  , calculatePoolDelegatedStakeForVoting ss govSt gState   -- ← no utxoSt here
  ⟧


private variable
  e lastEpoch : Epoch
  fut fut' : RatifyState
  eps eps' eps'' : EpochState
  ls : LedgerState
  acnt : Acnt
  es₀ : EnactState
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

  EPOCH : let
      open LedgerState ls
      open RatifyState fut renaming (es to esW)

      es : EnactState
      es = record esW { withdrawals = ∅ }

      tmpGovSt = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      orphans : ℙ (GovActionID × GovActionState)
      orphans  = fromList (getOrphans es tmpGovSt)

      removed' : ℙ (GovActionID × GovActionState)
      removed' = removed ∪ orphans

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed' ¿) govSt

      removedGovActions : ℙ (RewardAddress × Coin)
      removedGovActions =
          mapPartial
            (λ (gaid , gaSt) →
              let ra   = GovActionState.returnAddr gaSt
                  cred = RewardAddress.stake ra
              in  (ra ,_) <$> lookupᵐ? (DepositsOf (GStateOf ls)) cred)
            removed'

      govActionReturns : RewardAddress ⇀ Coin
      govActionReturns =
        aggregate₊ (mapˢ (λ (a , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = WithdrawalsOf esW
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      retired    = (RetiringOf (PStateOf ls)) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRewardAddress (dom (RewardsOf (DStateOf ls)))
      unclaimed  = getCoin payout - getCoin refunds

      dState' : DState
      dState' = record (DStateOf ls) { rewards = (RewardsOf (DStateOf ls)) ∪⁺ refunds }

      pState' : PState
      pState' = let ps = PStateOf ls in
        ⟦ PoolsOf ps ∣ retired ᶜ , PState.fPools ps ∣ retired ᶜ , RetiringOf ps ∣ retired ᶜ , DepositsOf ps ∣ retired ᶜ ⟧

      gState' : GState
      gState' = ⟦ (if null govSt' then mapValues (1 +_) (DRepsOf ls) else (DRepsOf ls))
                , CCHotKeysOf ls ∣ ccCreds (EnactState.cc es)
                , DepositsOf (GStateOf ls)
                  -- ∣ mapˢ (RewardAddress.stake ∘ GovActionState.returnAddr ∘ proj₂) removed' ᶜ
                ⟧

      certState' : CertState
      certState' = record { dState = dState' ; pState = pState' ; gState = gState' }

      -- utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧
      utxoSt' = UTxOStateOf ls

      acnt' = record acnt
        { treasury  = TreasuryOf acnt ∸ totWithdrawals + DonationsOf utxoSt + unclaimed }

      stakeDistrs : StakeDistrs
      stakeDistrs = mkStakeDistrs (Snapshots.mark ss') e utxoSt' govSt' (record { GState (GStateOf ls) })
                                                                        (record { DState (DStateOf ls) })

      ratifyΓ : RatifyEnv
      ratifyΓ = record { currentEpoch = e
                       ; stakeDistrs  = stakeDistrs
                       ; treasury     = TreasuryOf acnt
                       ; GState (GStateOf ls)
                       ; pools        = PoolsOf (PStateOf ls)
                       ; delegatees   = VoteDelegsOf (DStateOf ls) }

    in
    ∙ ratifyΓ ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
    ∙ ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈ ⟦ acnt' , ss' , ⟦ utxoSt' , govSt' , certState' ⟧ , es , fut' ⟧

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
```
