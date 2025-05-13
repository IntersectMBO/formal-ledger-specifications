\section{Epoch Boundary}
\label{sec:epoch-boundary}
\modulenote{\ConwayModule{Epoch}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.Integer using () renaming (+_ to pos)
import      Data.Integer as ℤ
open import Data.Nat.GeneralisedArithmetic using (iterate)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_)
open import Data.Rational.Literals using (number; fromℤ)
import      Data.Rational as ℚ renaming (_⊓_ to min)

open import Data.Integer.Tactic.RingSolver

open import Agda.Builtin.FromNat

open import Ledger.Prelude hiding (iterate; _/_; _*_)
open Filter using (filter)
open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction
open import Ledger.Conway.Types.Numeric.UnitInterval

open Number number renaming (fromNat to fromℕ)

module Ledger.Conway.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Certs govStructure
open import Ledger.Conway.Enact govStructure
open import Ledger.Conway.Gov txs
open import Ledger.Conway.Ledger txs abs
open import Ledger.Conway.Ratify txs
open import Ledger.Conway.Rewards txs abs
open import Ledger.Conway.Utxo txs abs

\end{code}
\begin{figure*}[ht]
\begin{AgdaMultiCode}
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
\begin{code}[hide]
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
i.e.\@ the net flow of Ada due to paying out rewards
after an epoch.
Relevant quantities are:
\begin{itemize}
  \item \AgdaFunction{prevPp}: Previous protocol parameters,
    which correspond to the parameters during the epoch for which we are creating rewards.
  \item \AgdaFunction{ActiveSlotCoeff}:
    Global constant, equal to the probability
    that a party holding all the stake will be selected to be a leader for given slot.
    Equals $1/20$ during the Shelley era on the Cardano Mainnet.
  \item \AgdaFunction{Δr₁}: Ada taken out of the reserves for paying rewards,
    as determined by the \AgdaField{monetaryExpansion} protocol parameter.
  \item \AgdaFunction{rewardPot}: Total amount of coin available for rewards this epoch, as
described in \textcite[\sectionname~6.4]{shelley-delegation-design}.
  \item \AgdaFunction{feeSS}: The fee pot which, together with the reserves,
    funds the \AgdaFunction{rewardPot}.
    We use the fee pot that accumulated during the epoch
    for which we now compute block production rewards.
    Note that fees are not explicitly removed from any account:
    the fees come from transactions paying them and are accounted for whenever transactions are processed.
  \item \AgdaFunction{Δt₁}: The proportion of the reward pot that will move to the treasury,
    as determined by the \AgdaField{treasuryCut} protocol parameter.
    The remaining pot is called the \AgdaFunction{R},
    just as in \textcite[\sectionname~6.5]{shelley-delegation-design}.
  \item \AgdaFunction{pstakego}:
    Stake distribution used for calculating the rewards.
    This is the oldest stake distribution snapshot, labeled \AgdaField{go}.
  \item \AgdaFunction{rs}: The rewards,
    as calculated by the function \AgdaFunction{reward}.
  \item \AgdaFunction{Δr₂}: The difference between the maximal amount of rewards
    that could have been paid out if pools had been optimal,
    and the actual rewards paid out.
    This difference is returned to the reserves.
  \item \AgdaFunction{÷₀}: Division operator that returns zero when the denominator is zero.
\end{itemize}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}

createRUpd : ℕ → BlocksMade → EpochState → Coin → RewardUpdate
createRUpd slotsPerEpoch b es total = record {
\end{code}
\begin{code}[hide]
  flowConservation = flowConservation;
\end{code}
\begin{code}
    Δt = Δt₁; Δr = 0 - Δr₁ + Δr₂; Δf = 0 - pos feeSS; rs = rs }
  where
    prevPp      = PParamsOf (es .EpochState.es)
    reserves    = es .EpochState.acnt .Acnt.reserves
    pstakego    = es .EpochState.ss .Snapshots.go
    feeSS       = es .EpochState.ss .Snapshots.feeSS
    stake       = pstakego .Snapshot.stake
    delegs      = pstakego .Snapshot.delegations
    poolParams  = pstakego .Snapshot.poolParameters

    blocksMade = ∑[ m ← b ] m

    rho = fromUnitInterval (prevPp .PParams.monetaryExpansion)
    η = fromℕ blocksMade ÷₀ (fromℕ slotsPerEpoch * ActiveSlotCoeff)
    Δr₁ = floor (ℚ.min 1 η * rho * fromℕ reserves)

    rewardPot = pos feeSS + Δr₁
    tau = fromUnitInterval (prevPp .PParams.treasuryCut)
    Δt₁ = floor (tau * fromℤ rewardPot)
    R = rewardPot - Δt₁
    circulation = total - reserves

    rs = reward prevPp b (posPart R) poolParams stake delegs circulation
    Δr₂ = R - pos (∑[ c ← rs ] c)

\end{code}
\begin{code}[hide]
    -- TODO: Overloading of + and - seems to interfere with
    -- the ring solver.
    lemmaFlow : ∀ (t₁ r₁ f z : ℤ)
      → (t₁ ℤ.+ (0 ℤ.- r₁ ℤ.+ ((f ℤ.+ r₁ ℤ.- t₁) ℤ.- z)) ℤ.+ (0 ℤ.- f) ℤ.+ z) ≡ 0
    lemmaFlow = solve-∀
    flowConservation = lemmaFlow Δt₁ Δr₁ (pos feeSS) (pos (∑[ c ← rs ] c))
\end{code}
\end{AgdaMultiCode}
\caption{RewardUpdate Creation}
\label{fig:functions:createRUpd}
\end{figure*}
\end{NoConway}

\begin{NoConway}
\begin{figure*}[h]
{\small
\begin{code}
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
    aggregateBy ∣ delegations ∣ (Snapshot.stake ss ∪⁺ gaDepositStake govSt ds)
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
      open RatifyState fut hiding (es)
      open UTxOState
      open PState; open DState; open GState
      open Acnt; open EnactState; open GovActionState
\end{code}
\begin{code}
      esW               = RatifyState.es fut
      es                = record esW { withdrawals = ∅ }
      tmpGovSt          = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed) govSt
      orphans           = fromList (getOrphans es tmpGovSt)
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

      govSt' = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed') govSt

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
 