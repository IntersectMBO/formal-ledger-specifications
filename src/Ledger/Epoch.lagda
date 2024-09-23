\section{Epoch Boundary}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)
import Data.Integer as ℤ
open import Data.Integer.Ext

open import Agda.Builtin.FromNat

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction
open import Ledger.Types.LedgerStructure

module Ledger.Epoch
  (txs : _) (open TransactionStructure txs hiding (DState; PState; CertState; stakeDelegs; rewards; dState; pState; retiring; voteDelegs))
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  (ledgerStructure  : LedgerStructure txs abs) (open LedgerStructure ledgerStructure)
  where

open import Ledger.Types.CertsStructure govStructure
open CertsStructure certsStructure
open import Ledger.Delegation govStructure

open import Ledger.Gov txs
open import Ledger.Enact govStructure
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs
\end{code}
\begin{NoConway}
\begin{figure*}[h]
\end{figure*}
\end{NoConway}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{NoConway}
\begin{code}
record Snapshot : Set where
  constructor ⟦_,_⟧ˢ
  field
    stake        : Credential ⇀ Coin
    delegations  : Credential ⇀ KeyHash
    -- poolParameters : KeyHash ⇀ PoolParam

record Snapshots : Set where
  constructor ⟦_,_,_,_⟧ˢˢ
  field
    mark set go  : Snapshot
    feeSS        : Coin

\end{code}
\end{NoConway}
\begin{code}
record EpochState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_,_⟧ᵉ'
  field
\end{code}
\begin{code}
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState
\end{code}
\begin{NoConway}
\begin{code}
record NewEpochState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_⟧ⁿᵉ
  field
\end{code}
\begin{code}
    lastEpoch   : Epoch
    epochState  : EpochState
    ru          : Maybe RewardUpdate
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{Definitions for the EPOCH and NEWEPOCH transition systems}
\end{figure*}
\begin{code}[hide]
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

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

toRwdAddr : Credential → RwdAddr
toRwdAddr x = record { net = NetworkId ; stake = x }

getStakeCred : TxOut → Maybe Credential
getStakeCred (a , _ , _ , _) = stakeCred a

open RwdAddr using (stake)
open GovActionState using (returnAddr)
\end{code}
\begin{NoConway}
\begin{code}
applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd rupd@(⟦ Δt , Δr , Δf , rs ⟧ʳᵘ)
  ⟦ ⟦ treasury , reserves ⟧ᵃ
  , ss
  , lState
    --⟦ ⟦ utxo , fees , deposits , donations ⟧ᵘ
    --, govSt
    --, lState --⟦ ⟦ voteDelegs , stakeDelegs , rewards ⟧ᵈ , pState , gState ⟧ᶜˢ
    --⟧ˡ
  , es
  , fut
  ⟧ᵉ' =
  ⟦ ⟦ posPart (ℤ.+ treasury ℤ.+ Δt ℤ.+ ℤ.+ unregRU')
    , posPart (ℤ.+ reserves ℤ.+ Δr) ⟧ᵃ
  , ss
  , applyRUpdLState rupd lState
    -- ⟦ ⟦ voteDelegs , stakeDelegs , rewards ∪⁺ regRU ⟧ᵈ , pState , gState ⟧ᶜˢ ⟧ˡ
  , es
  , fut ⟧ᵉ'
  where
    certState = certSt lState
    dSt = dState certState
    regRU     = rs ∣ dom (rewards dSt)
    unregRU   = rs ∣ dom (rewards dSt) ᶜ
    unregRU'  = ∑[ x ← unregRU ] x
\end{code}
\end{NoConway}

\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
stakeDistr : UTxO → DState → PState → Snapshot
stakeDistr utxo dState pState = ⟦ aggregate₊ (stakeRelation ᶠˢ) , stakeDelegs dState ⟧ˢ
  where
    m = mapˢ (λ a → (a , cbalance (utxo ∣^' λ i → getStakeCred i ≡ just a))) (dom (rewards dState))
    stakeRelation = m ∪ proj₁ (rewards dState)

gaDepositStake : GovState → Deposits → Credential ⇀ Coin
gaDepositStake govSt ds = aggregateBy
  (mapˢ (λ (gaid , addr) → (gaid , addr) , stake addr) govSt')
  (mapFromPartialFun (λ (gaid , _) → lookupᵐ? ds (GovActionDeposit gaid)) govSt')
  where govSt' = mapˢ (map₂ returnAddr) (fromList govSt)

\end{code}
\begin{code}[hide]
opaque
\end{code}
\begin{code}
  mkStakeDistrs : Snapshot → GovState → Deposits → (Credential ⇀ VDeleg) → StakeDistrs
  mkStakeDistrs ⟦ stake , _ ⟧ˢ govSt ds delegations .StakeDistrs.stakeDistr =
    aggregateBy (proj₁ delegations) (stake ∪⁺ gaDepositStake govSt ds)
\end{code}
\end{AgdaSuppressSpace}
\caption{Functions for computing stake distributions}
\end{figure*}

\begin{NoConway}
\begin{code}
data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let
      utxoState = utxoSt lstate
      utxo = UTxOState.utxo utxoState
      certState = certSt lstate
      dSt = dState certState
      pSt = pState certState
      stake = stakeDistr utxo dSt pSt
      fees = UTxOState.fees utxoState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ˢˢ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧ˢˢ

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where
\end{code}
\end{NoConway}

Figure~\ref{fig:epoch:sts} defines the rule for the EPOCH transition
system. Currently, this contains some logic that is handled by
POOLREAP in the Shelley specification, since POOLREAP is not implemented here.

The EPOCH rule now also needs to invoke RATIFY and properly deal with
its results by carrying out each of the following tasks.
\begin{itemize}
\item Pay out all the enacted treasury withdrawals.
\item Remove expired and enacted governance actions \& refund deposits.
\item If \AgdaBound{govSt'} is empty, increment the activity counter for DReps.
\item Remove all hot keys from the constitutional committee delegation map that
  do not belong to currently elected members.
\item Apply the resulting enact state from the previous epoch boundary \AgdaBound{fut} and
  store the resulting enact state \AgdaBound{fut'}.
\end{itemize}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
  EPOCH : let
      ⟦ esW , removed , _ ⟧ʳ = fut
      certState = certSt ls
      pSt = pState certState
      dSt = dState certState
      gSt = gState certState
      rwds = rewards dSt
      utxoSt = utxoSt ls
      govSt = govSt ls
\end{code}
\begin{code}[hide]
      open UTxOState
      open Acnt; open EnactState; open GovActionState
\end{code}
\begin{code}

      removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
        mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = esW .withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      es         = record esW { withdrawals = ∅ }
      retired    = (retiring pSt) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRwdAddr (dom (dSt .rewards))
      unclaimed  = getCoin payout - getCoin refunds

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt
      lState' = updateLState ls

      utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧ᵘ

      acnt' = record acnt
        { treasury  = acnt .treasury ∸ totWithdrawals + utxoSt .donations + unclaimed }
    in
    record { currentEpoch = e
           ; stakeDistrs = mkStakeDistrs  (Snapshots.mark ss') govSt'
                                          (utxoSt' .deposits) (voteDelegs dSt)
           ; treasury = acnt .treasury
           ; dreps = {!? gState!}
           ; ccHotKeys = {!!}
           }
        ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
      → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
    ────────────────────────────────
    _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ᵉ' ⇀⦇ e ,EPOCH⦈
        ⟦ acnt' , ss' , lState' , es , fut' ⟧ᵉ'
\end{code}
\end{AgdaMultiCode}
\caption{EPOCH transition system}
\label{fig:epoch:sts}
\end{figure*}

\begin{NoConway}
\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,NEWEPOCH⦈_ : ⊤ → NewEpochState → Epoch → NewEpochState → Type
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}
  NEWEPOCH-New : let
      eps' = applyRUpd ru eps
    in
    ∙ e ≡ lastEpoch + 1
    ∙ _ ⊢ eps' ⇀⦇ e ,EPOCH⦈ eps''
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , just ru ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps'' , nothing ⟧ⁿᵉ

  NEWEPOCH-Not-New :
    ∙ e ≢ lastEpoch + 1
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , mru ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , eps , mru ⟧ⁿᵉ

  NEWEPOCH-No-Reward-Update :
    ∙ e ≡ lastEpoch + 1
    ∙ _ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
      ────────────────────────────────
      _ ⊢ ⟦ lastEpoch , eps , nothing ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps' , nothing ⟧ⁿᵉ
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}
\end{NoConway}
