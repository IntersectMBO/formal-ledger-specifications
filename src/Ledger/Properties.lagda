\begin{code}[hide]
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
open import Ledger.Certs govStructure
open import Ledger.Gov txs

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
    ledgerEnv = ⟦ slot , constitution .proj₁ .proj₂ , pparams .proj₁ , es , Acnt.treasury acnt ⟧

  validTxIn₂ : Tx → Type
  validTxIn₂ tx = ∃[ ls' ] ledgerEnv ⊢ ls ⇀⦇ tx ,LEDGER⦈ ls'

validTx₁ : Tx → Type
validTx₁ tx = ∃[ s ] validTxIn₁ s tx

ChainInvariant : ∀ {a} → (ChainState → Type a) → Type a
ChainInvariant P = ∀ b s s' → _ ⊢ s ⇀⦇ b ,CHAIN⦈ s' → P s → P s'

-- Transaction properties


-- Block properties

module _ (s : ChainState) (open ChainState s)
         {b} (let open Block b)
  where
  open NewEpochState newEpochState
  open EpochState epochState

  isNewEpochBlock : Type
  isNewEpochBlock = epoch slot ≡ sucᵉ lastEpoch

  module _ (valid : validBlockIn s b) where 

    newChainState : ChainState
    newChainState = proj₁ valid

    getEnactState : ChainState → EnactState
    getEnactState = EpochState.es ∘ NewEpochState.epochState ∘ ChainState.newEpochState


    -- PROPERTY (TO PROVE) --
    enact-change⇒newEpoch : Type
    enact-change⇒newEpoch = es ≢ getEnactState newChainState → epoch slot ≡ sucᵉ lastEpoch
    -- Let
    --   * s   = a ChainState,
    --   * nes = the NewEpochState of s,
    --   * es  = the EpochState of nes (= the EpochState of s),
    --   * le  = the lastEpoch of nes.
    --
    -- Suppose there exists a chain state s' with EpochState es' such that 
    -- s ⇀⦇ b ,CHAIN⦈ s'.  Then the following implication holds:
    -- if es ≢ es' then the epoch of the slot of b is sucᵉ le.


-- Invariant properties

module _ (s : ChainState) where
  open ChainState s; open NewEpochState newEpochState; open EpochState epochState
  open LState ls
  
  -- PROPERTY (TO PROVE) --
  action-deposits≡actions-prop : Type
  action-deposits≡actions-prop = filterˢ isGADeposit (dom (UTxOState.deposits utxoSt))
    ≡ fromList (map (λ where (id , _) → GovActionDeposit id) govSt)

  -- PROPERTY (TO PROVE) --
  open EnactState es renaming (pparams to pparams')
  open CertState certState; open DState dState
  dom-rwds≡credDeposits : Type
  dom-rwds≡credDeposits = filterˢ isCredDeposit (dom (UTxOState.deposits utxoSt))
    ≡ mapˢ CredentialDeposit (dom rewards)

  -- PROPERTY (TO PROVE) --
  pp-wellFormed : Type
  pp-wellFormed = paramsWellFormed (pparams' .proj₁)

-- PROPERTY (TO PROVE) --
action-deposits≡actions-inv : Type
action-deposits≡actions-inv = ChainInvariant action-deposits≡actions-prop

-- PROPERTY (TO PROVE) --
dom-rwds≡credDeposits-inv : Type
dom-rwds≡credDeposits-inv = ChainInvariant dom-rwds≡credDeposits

-- PROPERTY (TO PROVE) --
pp-wellFormed-inv : Type
pp-wellFormed-inv = ChainInvariant pp-wellFormed


-- Epoch boundary properties

module _ {Γ es e es'} (step : Γ ⊢ es ⇀⦇ e ,NEWEPOCH⦈ es') where
  -- PROPERTY (TO PROVE) --
  dom-rwds-const : Type
  dom-rwds-const = dom (getRewards es) ≡ dom (getRewards es')

  -- PROPERTY (TO PROVE) --
  prop≡∅⇒activeDReps-const : Type
  prop≡∅⇒activeDReps-const = getGovState es ≡ [] → activeDReps e es ≡ᵉ activeDReps (sucᵉ e) es'
\end{code}

