\section{Epoch Boundary}
\label{sec:epoch-boundary}
\modulenote{\LedgerModule{Epoch}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)
open import Data.Integer using () renaming (+_ to pos)
open import Data.Integer.Ext
open import Data.Nat.GeneralisedArithmetic using (iterate)

open import Agda.Builtin.FromNat

open import Ledger.Prelude hiding (iterate)
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Gov txs
open import Ledger.Enact govStructure
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure
\end{code}
\begin{NoConway}
\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record RewardUpdate : Set where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_⟧ʳᵘ
\end{code}
\begin{code}
  field
    Δt Δr Δf : ℤ
    rs : Credential ⇀ Coin
\end{code}
\end{AgdaMultiCode}
\end{figure*}
\end{NoConway}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{NoConway}
\begin{code}
record Snapshot : Set where
  field
    stake        : Credential ⇀ Coin
    delegations  : Credential ⇀ KeyHash
    -- poolParameters : KeyHash ⇀ PoolParam

record Snapshots : Set where
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
\end{code}
\begin{code}
  field
    acnt       : Acnt
    ss         : Snapshots
    ls         : LState
    es         : EnactState
    fut        : RatifyState
\end{code}
\begin{NoConway}
\begin{code}
record NewEpochState : Type where
  field
    lastEpoch   : Epoch
    epochState  : EpochState
    ru          : Maybe RewardUpdate
\end{code}
\end{NoConway}
\end{AgdaMultiCode}
\caption{Definitions for the EPOCH and NEWEPOCH transition systems}
\end{figure*}
\begin{code}[hide]
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
\end{code}
\begin{NoConway}
\begin{figure*}[h]
{\small
\begin{code}
applyRUpd : RewardUpdate → EpochState → EpochState
applyRUpd ⟦ Δt , Δr , Δf , rs ⟧ʳᵘ
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
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? a prev) govSt
      in
        (orps ++ orps' , govSt')
\end{code}
}
\end{figure*}
\end{NoConway}

\begin{figure*}[ht]
\begin{AgdaSuppressSpace}
\begin{code}
stakeDistr : UTxO → DState → PState → Snapshot
stakeDistr utxo stᵈ pState = ⟦ aggregate₊ (stakeRelation ᶠˢ) , stakeDelegs ⟧
  where
    open DState stᵈ using (stakeDelegs; rewards)
    m = mapˢ (λ a → (a , cbalance (utxo ∣^' λ i → getStakeCred i ≡ just a))) (dom rewards)
    stakeRelation = m ∪ proj₁ rewards

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
  mkStakeDistrs ss govSt ds delegations .StakeDistrs.stakeDistr =
    aggregateBy (proj₁ delegations) (Snapshot.stake ss ∪⁺ gaDepositStake govSt ds)
\end{code}
\end{AgdaSuppressSpace}
\caption{Functions for computing stake distributions}
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
\end{code}


\begin{NoConway}
\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let open LState lstate; open UTxOState utxoSt; open CertState certState
             stake = stakeDistr utxo dState pState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧

data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where
\end{code}
\end{figure*}
\end{NoConway}

\Cref{fig:epoch:sts} defines the EPOCH transition rule.
Previously, this incorporated the logic that is now handled by
REAP (called POOLREAP in the Shelley specification~\parencite[\sectionname~11.6]{shelley-ledger-spec}).

The EPOCH rule now also needs to invoke RATIFIES and properly deal with
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

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
  EPOCH : let
\end{code}
\begin{code}[hide]
      open LState ls
      open CertState certState
      open RatifyState fut renaming (es to esW)
      open UTxOState
      open PState; open DState; open GState
      open Acnt; open EnactState; open GovActionState
\end{code}
\begin{code}

      es                = record esW { withdrawals = ∅ }
      tmpGovSt          = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt
      orphans           = fromList $ getOrphans es tmpGovSt
      removed'          = removed ∪ orphans
      removedGovActions = flip concatMapˢ removed' λ (gaid , gaSt) →
        mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = esW .withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      retired    = (pState .retiring) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRwdAddr (dom (dState .rewards))
      unclaimed  = getCoin payout - getCoin refunds

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed' ¿) govSt

      dState' = ⟦ dState .voteDelegs , dState .stakeDelegs ,  dState .rewards ∪⁺ refunds ⟧

      pState' = ⟦ pState .pools ∣ retired ᶜ , pState .retiring ∣ retired ᶜ ⟧

      gState' = ⟦ (if null govSt' then mapValues (1 +_) (gState .dreps) else (gState .dreps))
                , gState .ccHotKeys ∣ ccCreds (es .cc) ⟧

      certState' : CertState
      certState' = ⟦ dState' , pState' , gState' ⟧

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
\end{code}
\end{AgdaMultiCode}
\caption{EPOCH transition system}
\label{fig:epoch:sts}
\end{figure*}

\begin{NoConway}
\begin{figure*}[ht]
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
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}
\end{NoConway}
