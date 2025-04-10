\section{Epoch Boundary}
\label{sec:epoch-boundary}
\modulenote{\LedgerModule{Epoch}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Builtin.FromNat

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)
open import Data.Integer using () renaming (+_ to pos)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_)
import Data.Rational as ℚ renaming (_⊓_ to min)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Nat.GeneralisedArithmetic using (iterate)
open Number number renaming (fromNat to fromℕ)

open import Ledger.Prelude hiding (iterate; _/_; _*_)
open import Ledger.Abstract
open import Ledger.Transaction
open import Ledger.Types.Numeric.UnitInterval

module Ledger.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Gov txs
open import Ledger.Enact govStructure
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Rewards govStructure
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure
\end{code}
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

open GovActionState using (returnAddr)
\end{code}
\begin{NoConway}
\Cref{fig:functions:createRUpd} defines
the function \AgdaFunction{createRUpd}
which creates a \AgdaRecord{RewardUpdate},
i.e.\ the net flow of Ada due to paying out rewards
after an epoch.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{prevPp}: Previous protocol parameters,
    which correspond to the parameters during the epoch for which we are creating rewards.
  \item \AgdaFunction{Δr₁}: Ada taken out of the reserves for paying rewards,
    as determined by the \AgdaField{monetaryExpansion} protocol parameter.
  \item \AgdaFunction{rewardPot}: Total amount of coin available for rewards this epoch, as
described in section 6.4 of \textcite{shelley-delegation-design}.
  \item \AgdaFunction{feeSS}: The fee pot, containing the transaction fees from the epoch.
    The fee pot is taken from the snapshot taken at the epoch boundary.
    Note that fees are not explicitly removed from any account:
    the fees come from transactions paying them and are accounted for whenever transactions are processed.
  \item \AgdaFunction{Δt₁}: The proportion of the reward pot that will move to the treasury,
    as determined by the \AgdaField{treasuryCut} protocol parameter.
    The remaining pot is called the \AgdaFunction{R},
    just as in section 6.5 of \textcite{shelley-delegation-design}.
  \item \AgdaFunction{pstakego}:
    Stake distribution used for calculating the rewards.
    This is the oldest stake distribution snapshot, labeled ``go''.
  \item \AgdaFunction{rs}: The calculated rewards.
    As given by \AgdaFunction{maxPool}, each pool can receive a maximal amount,
    determined by its performance.
  \item \AgdaFunction{Δr₂}: The difference between the maximal amount of rewards
    that could have been paid out if pools had been optimal,
    and the actual rewards paid out.
    This difference is returned to the reserves.
  \item \AgdaFunction{÷₀}: Division operator that returns zero when the denominator is zero.
\end{itemize}

\begin{figure*}[h]
\begin{code}
ActiveSlotCoeff : ℚ
ActiveSlotCoeff = (1 / 20)
\end{code}
\begin{code}[hide]
  {{nonZero}}
\end{code}
\begin{code}
createRUpd : PParams → ℕ → BlocksMade → EpochState → Coin → RewardUpdate
createRUpd prevPp slotsPerEpoch b es total =
    ⟦ Δt₁ , 0 - Δr₁ + Δr₂ , 0 - feeSS , rs ⟧ʳᵘ
  where
    reserves = es .EpochState.acnt .Acnt.reserves
    pstakego  = es .EpochState.ss .Snapshots.go
    feeSS    = es .EpochState.ss .Snapshots.feeSS
    stake = pstakego .Snapshot.stake
    delegs  = pstakego .Snapshot.delegations
    poolParams = ∅ᵐ -- FIXME: Add pool parameters to Snapshots

    blocksMade = ∑[ m ← b ] m

    rho = fromUnitInterval (prevPp .PParams.monetaryExpansion)
    η = fromℕ blocksMade ÷₀ (fromℕ slotsPerEpoch * ActiveSlotCoeff)
    Δr₁ = floor (ℚ.min 1 η * rho * fromℕ reserves)

    rewardPot = pos feeSS + Δr₁
    tau = fromUnitInterval (prevPp .PParams.treasuryCut)
    Δt₁ = floor (tau * fromℤ rewardPot)
    R = posPart (rewardPot - Δt₁)
    circulation = total - reserves

    rs = reward prevPp b R poolParams stake delegs circulation
    Δr₂ = R - ∑[ c ← rs ] c
\end{code}
\caption{RewardUpdate Creation}
\label{fig:functions:createRUpd}
\end{figure*}
\end{NoConway}

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
          (λ (_ , record {action = a ; prevAction = prev}) → isOrphan? (a .gaType) prev) govSt
      in
        (orps ++ orps' , govSt')
\end{code}
}
\end{figure*}
\end{NoConway}

\begin{figure*}[ht]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
open RwdAddr using (stake)
\end{code}
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
Currently, this incorporates logic that was previously handled by
POOLREAP in the Shelley specification~\parencite[\sectionname~11.6]{shelley-ledger-spec};
POOLREAP is not implemented here.

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
