{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Conformance.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Conformance.Chain txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Epoch txs abs
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Enact govStructure
open import Ledger.Conway.Conformance.Gov txs
open import Ledger.Conway.Conformance.Certs govStructure

isCredDeposit : DepositPurpose → Type
isCredDeposit (CredentialDeposit x) = ⊤
isCredDeposit _ = ⊥

instance
  isCredDeposit? : isCredDeposit ⁇¹
  isCredDeposit? {CredentialDeposit x} = ⁇ (yes tt)
  isCredDeposit? {PoolDeposit x} = ⁇ (no λ ())
  isCredDeposit? {DRepDeposit x} = ⁇ (no λ ())
  isCredDeposit? {GovActionDeposit x} = ⁇ (no λ ())

isGADeposit : DepositPurpose → Type
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

validBlockIn : ChainState → Block → Type
validBlockIn s b = ∃[ s' ] _ ⊢ s ⇀⦇ b ,CHAIN⦈ s'

validBlock : Block → Type
validBlock b = ∃[ s ] validBlockIn s b

-- Transaction validity is complicated. In the truest sense, a
-- transaction is valid if it is part of a valid block,
-- i.e. `validTxIn₁`. However, a transaction can also be seen as valid
-- if it could be applied at a certain slot (with no knowledge of an
-- actual block). This is closer to how the mempool sees transaction
-- validity and is expressed by `validTxIn₂`.

-- Note that these two are not equivalent and in fact there is no
-- implication between the two in either direction. `2 => 1` would
-- require one to come up with a block, which we can't, but `1 => 2`
-- is also not true, since the transaction might depend on a previous
-- transaction in the same block. Maybe this means that `validTxIn₂`
-- should be changed so that it allows for applying a list of
-- transactions before the final transaction? However, the downside
-- then becomes that the transaction isn't applied to the given state
-- but to some intermediate one. Maybe we'll gain some insight on this
-- matter once we have proven more theorems.

validTxIn₁ : ChainState → Tx → Type
validTxIn₁ s tx = ∃[ b ] tx ∈ b × validBlockIn s b

module _ (s : ChainState) (slot : Slot) where

  open ChainState s; open NewEpochState newEpochState
  open EpochState epochState; open EnactState es

  private
    ledgerEnv = ⟦ slot , constitution .proj₁ .proj₂ , pparams .proj₁ , es , Acnt.treasury acnt ⟧ˡᵉ

  validTxIn₂ : Tx → Type
  validTxIn₂ tx = ∃[ ls' ] ledgerEnv ⊢ ls ⇀⦇ tx ,LEDGER⦈ ls'

validTx₁ : Tx → Type
validTx₁ tx = ∃[ s ] validTxIn₁ s tx

ChainInvariant : ∀ {a} → (ChainState → Type a) → Type a
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

  module _ {slot} {tx} (let txb = body tx) (valid : validTxIn₂ s slot tx)
    (indexedSum-∪⁺-hom : ∀ {A V : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq V ⦄ ⦃ mon : CommutativeMonoid 0ℓ 0ℓ V ⦄
      → (d₁ d₂ : A ⇀ V) → indexedSumᵛ' id (d₁ ∪⁺ d₂) ≡ indexedSumᵛ' id d₁ ◇ indexedSumᵛ' id d₂)
    (indexedSum-⊆ : ∀ {A : Type} ⦃ _ : DecEq A ⦄ (d d' : A ⇀ ℕ) → d ˢ ⊆ d' ˢ
      → indexedSumᵛ' id d ≤ indexedSumᵛ' id d') -- technically we could use an ordered monoid instead of ℕ
    where
    open import Ledger.Conway.Conformance.Utxow txs abs
    open import Ledger.Conway.Conformance.Utxo.Properties txs abs

  --   propose-ChangePP-hasGroup : ∀ {up prop}
  --     → prop ∈ txb → prop .GovProposal.action ≡ ChangePParams up → updateGroups up ≢ ∅
  --   propose-ChangePP-hasGroup = {!!}

  -- Block properties

  module _ {b} (valid : validBlockIn s b) (let open Block b) where
    isNewEpochBlock : Type
    isNewEpochBlock = epoch slot ≡ sucᵉ lastEpoch

    newChainState : ChainState
    newChainState = proj₁ valid

    getEnactState : ChainState → EnactState
    getEnactState = EpochState.es ∘ NewEpochState.epochState ∘ ChainState.newEpochState

    -- enact-change⇒newEpoch : es ≢ getEnactState newChainState → isNewEpochBlock
    -- enact-change⇒newEpoch = {!!}

  -- Invariant properties

  action-deposits≡actions-prop : Type
  action-deposits≡actions-prop = filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
    ≡ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

  dom-rwds≡credDeposits : Type
  dom-rwds≡credDeposits = filterˢ isCredDeposit (dom (UTxOState.deposits utxoSt))
    ≡ mapˢ CredentialDeposit (dom rewards)

  pp-wellFormed : Type
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
