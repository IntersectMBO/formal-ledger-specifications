{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Chain txs abs
open import Ledger.Utxo txs abs
open import Ledger.Epoch txs abs
open import Ledger.Ledger txs abs
open import Ledger.Enact govStructure
open import Ledger.Gov txs

isCredDeposit : DepositPurpose → Set
isCredDeposit (CredentialDeposit x) = ⊤
isCredDeposit _ = ⊥

instance
  isCredDeposit? : isCredDeposit ⁇¹
  isCredDeposit? {CredentialDeposit x} = ⁇ (yes tt)
  isCredDeposit? {PoolDeposit x} = ⁇ (no λ ())
  isCredDeposit? {DRepDeposit x} = ⁇ (no λ ())
  isCredDeposit? {GovActionDeposit x} = ⁇ (no λ ())

isGADeposit : DepositPurpose → Set
isGADeposit (GovActionDeposit x) = ⊤
isGADeposit _ = ⊥

instance
  isGADeposit? : isGADeposit ⁇¹
  isGADeposit? {CredentialDeposit x} = ⁇ (no λ ())
  isGADeposit? {PoolDeposit x} = ⁇ (no λ ())
  isGADeposit? {DRepDeposit x} = ⁇ (no λ ())
  isGADeposit? {GovActionDeposit x} = ⁇ (yes tt)

getLState : NewEpochState → LState
getLState = EpochState.ls ∘ NewEpochState.epochState

getRewards : NewEpochState → Credential ⇀ Coin
getRewards = DState.rewards ∘ CertState.dState ∘ LState.certState ∘ getLState

allDReps : NewEpochState → Credential ⇀ Epoch
allDReps = GState.dreps ∘ CertState.gState ∘ LState.certState ∘ getLState

activeDReps : Epoch → NewEpochState → ℙ Credential
activeDReps currentEpoch s = dom (filterᵐ (λ (_ , e) → currentEpoch ≤ e) (allDReps s))

getGovState : NewEpochState → GovState
getGovState = LState.govSt ∘ getLState

instance
  _ : IsSet Block Tx
  _ = record { toSet = fromList ∘ Block.ts }

  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txprop }

validBlockIn : ChainState → Block → Set
validBlockIn s b = ∃[ s' ] _ ⊢ s ⇀⦇ b ,CHAIN⦈ s'

validBlock : Block → Set
validBlock b = ∃[ s ] validBlockIn s b

validTxIn : ChainState → Tx → Set
validTxIn s tx = ∃[ b ] tx ∈ b × validBlockIn s b

validTx : Tx → Set
validTx tx = ∃[ s ] validTxIn s tx

ChainInvariant : ∀ {a} → (ChainState → Set a) → Set a
ChainInvariant P = ∀ b s s' → _ ⊢ s ⇀⦇ b ,CHAIN⦈ s' → P s → P s'

module _ (s : ChainState) where
  open ChainState s; open NewEpochState newEpochState; open EpochState epochState
  open LState ls
  open EnactState es renaming (pparams to pparams')
  open CertState certState; open DState dState
  pparams = pparams' .proj₁
  open PParams pparams
  open Tx; open TxBody

  -- Transaction properties

  -- module _ {tx} (let txb = body tx) (valid : validTxIn s tx) where
  --   -- TODO: with current definitions, this is only true when there are no refunds
  --   propose-minSpend :
  --     coin (consumed pparams utxoSt txb) ≥ length (txprop txb) * govActionDeposit
  --   propose-minSpend = {!!}

  --   propose-ChangePP-hasGroup : ∀ {up prop}
  --     → prop ∈ txb → prop .GovProposal.action ≡ ChangePParams up → updateGroups up ≢ ∅
  --   propose-ChangePP-hasGroup = {!!}

  -- Block properties

  module _ {b} (valid : validBlockIn s b) (let open Block b) where
    isNewEpochBlock : Set
    isNewEpochBlock = epoch slot ≡ sucᵉ lastEpoch

    newChainState : ChainState
    newChainState = proj₁ valid

    getEnactState : ChainState → EnactState
    getEnactState = EpochState.es ∘ NewEpochState.epochState ∘ ChainState.newEpochState

    -- enact-change⇒newEpoch : es ≢ getEnactState newChainState → isNewEpochBlock
    -- enact-change⇒newEpoch = {!!}

  -- Invariant properties

  action-deposits≡actions-prop : Set
  action-deposits≡actions-prop = filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
    ≡ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

  dom-rwds≡credDeposits : Set
  dom-rwds≡credDeposits = filterˢ isCredDeposit (dom (UTxOState.deposits utxoSt))
    ≡ mapˢ CredentialDeposit (dom rewards)

  pp-wellFormed : Set
  pp-wellFormed = paramsWellFormed pparams

-- action-deposits≡actions-inv : ChainInvariant action-deposits≡actions-prop
-- action-deposits≡actions-inv = {!!}

-- dom-rwds≡credDeposits-inv : ChainInvariant dom-rwds≡credDeposits
-- dom-rwds≡credDeposits-inv = {!!}

-- pp-wellFormed-inv : ChainInvariant pp-wellFormed
-- pp-wellFormed-inv = {!!}

-- Epoch boundary properties

-- module _ {Γ es e es'} (step : Γ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es') where
--   dom-rwds-const : dom (getRewards es) ≡ dom (getRewards es')
--   dom-rwds-const = {!!}

--   prop≡∅⇒activeDReps-const : getGovState es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es'
--   prop≡∅⇒activeDReps-const = {!!}
