{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
import      Data.Integer as ℤ
open import Data.Integer.Properties using (module ≤-Reasoning; +-mono-≤; neg-mono-≤; +-identityˡ)
                                    renaming (nonNegative⁻¹ to nonNegative⁻¹ℤ)
open import Data.Nat.GeneralisedArithmetic using (iterate)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _⊓_; _≟_; ≢-nonZero)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Rational.Properties using (nonNegative⁻¹; pos⇒nonNeg; ⊓-glb)
open import stdlib.Data.Rational.Properties using (0≤⇒0≤floor; ÷-0≤⇒0≤; fromℕ-0≤; *-0≤⇒0≤; fromℤ-0≤)

open import Data.Integer.Tactic.RingSolver using (solve-∀)

open import Agda.Builtin.FromNat

open import Ledger.Prelude hiding (iterate; _/_; _*_; _⊓_; _≟_; ≢-nonZero)
open Filter using (filter)
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction
open import Ledger.Prelude.Numeric.UnitInterval

open Number number renaming (fromNat to fromℕ)

module Ledger.Conway.Specification.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Enact govStructure
open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Conway.Specification.Utxo txs abs

record EpochState : Type where
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState

record HasEpochState {a} (A : Type a) : Type a where
  field EpochStateOf : A → EpochState
open HasEpochState ⦃...⦄ public

instance
  HasLState-EpochState : HasLState EpochState
  HasLState-EpochState .LStateOf = EpochState.ls

  HasEnactState-EpochState : HasEnactState EpochState
  HasEnactState-EpochState .EnactStateOf = EpochState.es

  HasDeposits-EpochState : HasDeposits EpochState
  HasDeposits-EpochState .DepositsOf = DepositsOf ∘ LStateOf

  Hastreasury-EpochState : Hastreasury EpochState
  Hastreasury-EpochState .treasuryOf = Acnt.treasury ∘ EpochState.acnt

  Hasreserves-EpochState : Hasreserves EpochState
  Hasreserves-EpochState .reservesOf = Acnt.reserves ∘ EpochState.acnt

  HasPParams-EpochState : HasPParams EpochState
  HasPParams-EpochState .PParamsOf = PParamsOf ∘ EnactStateOf

record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    epochState  : EpochState
    ru          : Maybe RewardUpdate

record HasNewEpochState {a} (A : Type a) : Type a where
  field NewEpochStateOf : A → NewEpochState
open HasNewEpochState ⦃...⦄ public
record HasLastEpoch     {a} (A : Type a) : Type a where field LastEpochOf     : A → Epoch
open HasLastEpoch     ⦃...⦄ public

instance
  HasLastEpoch-NewEpochState : HasLastEpoch NewEpochState
  HasLastEpoch-NewEpochState .LastEpochOf = NewEpochState.lastEpoch

  HasEpochState-NewEpochState : HasEpochState NewEpochState
  HasEpochState-NewEpochState .EpochStateOf = NewEpochState.epochState

  Hastreasury-NewEpochState : Hastreasury NewEpochState
  Hastreasury-NewEpochState .treasuryOf = treasuryOf ∘ EpochStateOf

  HasLState-NewEpochState : HasLState NewEpochState
  HasLState-NewEpochState .LStateOf = LStateOf ∘ EpochStateOf

  HasGovState-NewEpochState : HasGovState NewEpochState
  HasGovState-NewEpochState .GovStateOf = GovStateOf ∘ LStateOf

  HasCertState-NewEpochState : HasCertState NewEpochState
  HasCertState-NewEpochState .CertStateOf = CertStateOf ∘ LStateOf

  HasDReps-NewEpochState : HasDReps NewEpochState 
  HasDReps-NewEpochState .DRepsOf = DRepsOf ∘ CertStateOf

  HasRewards-NewEpochState : HasRewards NewEpochState
  HasRewards-NewEpochState .RewardsOf = RewardsOf ∘ CertStateOf

  unquoteDecl HasCast-EpochState HasCast-NewEpochState = derive-HasCast
    ( (quote EpochState     , HasCast-EpochState)
    ∷ [ (quote NewEpochState  , HasCast-NewEpochState)])

toRwdAddr : Credential → RwdAddr
toRwdAddr x = record { net = NetworkId ; stake = x }

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open GovActionState using (returnAddr)

createRUpd : ℕ → BlocksMade → EpochState → Coin → RewardUpdate
createRUpd slotsPerEpoch b es total =
  record  { Δt = Δt₁
          ; Δr = 0 - Δr₁ + Δr₂
          ; Δf = 0 - pos feeSS
          ; rs = rs
          ; flowConservation = flowConservation
          ; Δt-nonnegative = Δt-nonneg
          ; Δf-nonpositive = Δf-nonpos
          }
  where
    prevPp       = PParamsOf es
    reserves     = reservesOf es
    pstakego     = es .EpochState.ss .Snapshots.go
    feeSS        = es .EpochState.ss .Snapshots.feeSS
    stake        = pstakego .Snapshot.stake
    delegs       = pstakego .Snapshot.delegations
    poolParams   = pstakego .Snapshot.poolParameters
    blocksMade   = ∑[ m ← b ] m
    ρ            = fromUnitInterval (prevPp .PParams.monetaryExpansion)
    η            = fromℕ blocksMade ÷₀ (fromℕ slotsPerEpoch * ActiveSlotCoeff)
    Δr₁          = floor (1 ⊓ η * ρ * fromℕ reserves)
    rewardPot    = pos feeSS + Δr₁
    τ            = fromUnitInterval (prevPp .PParams.treasuryCut)
    Δt₁          = floor (fromℤ rewardPot * τ)
    R            = rewardPot - Δt₁
    circulation  = total - reserves
    rs           = reward prevPp b (posPart R) poolParams stake delegs circulation
    Δr₂          = R - pos (∑[ c ← rs ] c)

    -- Proofs
    -- Note: Overloading of + and - seems to interfere with
    -- the ring solver.
    lemmaFlow : ∀ (t₁ r₁ f z : ℤ)
      → (t₁ ℤ.+ (0 ℤ.- r₁ ℤ.+ ((f ℤ.+ r₁ ℤ.- t₁) ℤ.- z)) ℤ.+ (0 ℤ.- f) ℤ.+ z) ≡ 0
    lemmaFlow = solve-∀
    flowConservation = lemmaFlow Δt₁ Δr₁ (pos feeSS) (pos (∑[ c ← rs ] c))

    ÷₀-0≤⇒0≤ : ∀ (x y : ℚ) → 0 ≤ x → 0 ≤ y → 0 ≤ (x ÷₀ y)
    ÷₀-0≤⇒0≤ x y 0≤x 0≤y with y ≟ 0
    ... | (yes y≡0) = nonNegative⁻¹ 0
    ... | (no y≢0)  = ÷-0≤⇒0≤ x y {{≢-nonZero y≢0}} 0≤x 0≤y

    η-nonneg : 0 ≤ η
    η-nonneg = ÷₀-0≤⇒0≤ _ _ (fromℕ-0≤ blocksMade)
      (*-0≤⇒0≤ _ _
        (fromℕ-0≤ slotsPerEpoch)
        (nonNegative⁻¹ ActiveSlotCoeff {{pos⇒nonNeg ActiveSlotCoeff}}))

    min1η-nonneg : 0 ≤ 1 ⊓ η
    min1η-nonneg = ⊓-glb (nonNegative⁻¹ 1) η-nonneg

    Δr₁-nonneg : 0 ≤ Δr₁
    Δr₁-nonneg = 0≤⇒0≤floor _
      (*-0≤⇒0≤ (1 ⊓ η * ρ) (fromℕ reserves)
        (UnitInterval-*-0≤ (1 ⊓ η) (prevPp .PParams.monetaryExpansion) min1η-nonneg)
        (fromℕ-0≤ reserves))

    rewardPot-nonneg : 0 ≤ rewardPot
    rewardPot-nonneg = +-mono-≤ (nonNegative⁻¹ℤ (pos feeSS)) Δr₁-nonneg

    Δt-nonneg : 0 ≤ Δt₁
    Δt-nonneg = 0≤⇒0≤floor _
      (UnitInterval-*-0≤ (fromℤ rewardPot) (prevPp .PParams.treasuryCut)
        (fromℤ-0≤ rewardPot rewardPot-nonneg))

    Δf-nonpos : (0 - pos feeSS) ≤ 0
    Δf-nonpos = begin
        0 - pos feeSS ≡⟨ +-identityˡ _ ⟩
        ℤ.- pos feeSS ≤⟨ neg-mono-≤ (ℤ.+≤+ z≤n) ⟩
        0             ∎
      where open ≤-Reasoning

applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rewardUpdate
  ⟦ ⟦ treasury , reserves ⟧ᵃ
  , ss
  , ⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut
  ⟧ᵉ' =
  ⟦ ⟦ posPart (pos treasury + Δt + pos unregRU')
    , posPart (pos reserves + Δr) ⟧
  , ss
  , ⟦ ⟦ utxo , posPart (pos fees + Δf) , deposits , donations ⟧
    , govSt
    , ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU ⟧ , pState , gState ⟧ ⟧
  , es
  , fut ⟧
  where
    open RewardUpdate rewardUpdate using (Δt; Δr; Δf; rs)
    regRU     = rs ∣ dom rewards
    unregRU   = rs ∣ dom rewards ᶜ
    unregRU'  = ∑[ x ← unregRU ] x

getOrphans : EnactState → GovState → GovState
getOrphans es govSt = proj₁ $ iterate step ([] , govSt) (length govSt)
  where
    step : GovState × GovState → GovState × GovState
    step (orps , govSt) =
      let
        isOrphan? a prev = ¬? (hasParent? es govSt a prev)
        (orps' , govSt') = partition
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? (a .gaType) prev) govSt
      in
        (orps ++ orps' , govSt')

open RwdAddr using (stake)

gaDepositStake : GovState → Deposits → Credential ⇀ Coin
gaDepositStake govSt ds = aggregateBy
  (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
  (mapFromPartialFun (λ (gaid , _) → lookupᵐ? ds (GovActionDeposit gaid)) govSt')
  where govSt' = mapˢ (map₂ returnAddr) (fromList govSt)

opaque
  mkStakeDistrs : Snapshot → GovState → Deposits → (Credential ⇀ VDeleg) → StakeDistrs
  mkStakeDistrs ss govSt ds delegations .StakeDistrs.stakeDistr =
    aggregateBy ∣ delegations ∣ (Snapshot.stake ss ∪⁺ gaDepositStake govSt ds)

private variable
  lastEpoch : Epoch
  eps eps' eps'' : EpochState
  es₀ : EnactState
  mark : Snapshot
  ss ss' : Snapshots
  ru : RewardUpdate
  mru : Maybe RewardUpdate

module EpochSetup₀ (ls : LState) (fut : RatifyState) where
  open LState ls renaming (utxoSt to utxoSt₀; govSt to govSt₀; certState to certState₀) public
  open CertState certState₀ renaming (dState to dState₀; pState to pState₀; gState to gState₀) public
  open RatifyState fut renaming (es to esW; removed to removed₀) public
  open EnactState esW renaming (cc to cc₀; constitution to constitution₀; pv to pv₀; pparams to pparams₀; withdrawals to withdrawals₀) public

  orphans  = fromList (getOrphans ⟦ cc₀ , constitution₀ , pv₀ , pparams₀ , ∅ ⟧
                         $ filter (λ x → proj₁ x ∉ mapˢ proj₁ removed₀) govSt₀)

  removed₁ : ℙ (GovActionID × GovActionState)
  removed₁ = removed₀ ∪ orphans

  removedGovActions = flip concatMapˢ removed₁ λ (gaid , gaSt) →
    mapˢ (returnAddr gaSt ,_) ((DepositsOf utxoSt₀ ∣ ❴ GovActionDeposit gaid ❵) ˢ)

  deposits₁ : Deposits
  deposits₁ = DepositsOf utxoSt₀ ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ

  govSt₁ : GovState
  govSt₁ = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed₁) govSt₀

ratifyEnvFrom : Epoch → LState → RatifyState → Acnt → Snapshot → RatifyEnv
ratifyEnvFrom e ls fut acnt mark  =
  record { currentEpoch  = e
         ; stakeDistrs   = mkStakeDistrs mark govSt₁ deposits₁ (voteDelegsOf dState₀)
         ; treasury      = Acnt.treasury acnt
         ; GState gState₀
         ; pools         = PState.pools pState₀
         ; delegatees    = voteDelegsOf dState₀
         }
  where open EpochSetup₀ ls fut


module EpochSetup₁ (e : Epoch)(ls : LState)(fut fut' : RatifyState)(acnt : Acnt) where
  open EpochSetup₀ ls fut
  es : EnactState
  es = record { cc = cc₀
              ; constitution = constitution₀
              ; pv = pv₀
              ; pparams = pparams₀
              ; withdrawals = ∅
              }
  open UTxOState utxoSt₀ renaming (utxo to utxo₀; fees to fees₀; deposits to deposits₀; donations to donations₀)
  open PState pState₀ renaming (pools to pools₀; retiring to retiring₀)
  open DState dState₀ renaming (voteDelegs to voteDelegs₀; stakeDelegs to stakeDelegs₀; rewards to rewards₀)
  open GState gState₀ renaming (dreps to dreps₀; ccHotKeys to ccHotKeys₀)

  govActionReturns : RwdAddr ⇀ Coin
  govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

  refunds : Credential ⇀ Coin
  refunds = pullbackMap (govActionReturns ∪⁺ withdrawals₀) toRwdAddr (dom rewards₀)

  unclaimed : Coin
  unclaimed = getCoin (govActionReturns ∪⁺ withdrawals₀) - getCoin refunds

  dState₁ : DState
  dState₁ = ⟦ voteDelegs₀ , stakeDelegs₀ ,  rewards₀ ∪⁺ refunds ⟧

  pState₁ : PState
  pState₁ = ⟦ pools₀ ∣ (retiring₀ ⁻¹ e) ᶜ , retiring₀ ∣ (retiring₀ ⁻¹ e) ᶜ ⟧

  gState₁ : GState
  gState₁ = ⟦ (if null govSt₁ then mapValues (1 +_) dreps₀ else dreps₀) , ccHotKeys₀ ∣ ccCreds cc₀ ⟧

  certState₁ : CertState
  certState₁ = record { dState = dState₁ ; pState = pState₁ ; gState = gState₁ }

  utxoSt₁ : UTxOState
  utxoSt₁ = ⟦ utxo₀ , fees₀ , deposits₀ ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧

  acnt₁ : Acnt
  acnt₁ = ⟦ Acnt.treasury acnt ∸ (∑[ x ← withdrawals₀ ] x) +  donations₀ + unclaimed , Acnt.reserves acnt ⟧

  data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where

    EPOCH :
      ratifyEnvFrom e ls fut acnt mark ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt₁ ,RATIFIES⦈ fut'
      → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      ────────────────────────────────
      _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈
          ⟦ acnt₁ , ss' , ⟦ utxoSt₁ , govSt₁ , certState₁ ⟧ , es , fut' ⟧

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
