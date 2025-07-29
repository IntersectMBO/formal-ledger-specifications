\section{Epoch Boundary}
\label{sec:epoch-boundary}
\modulenote{\ConwayModule{Epoch}}

\begin{code}[hide]
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
open import Ledger.Conway.Specification.PoolReap txs abs
open import Ledger.Conway.Specification.Ratify txs
open import Ledger.Conway.Specification.Rewards txs abs
open import Ledger.Conway.Specification.Utxo txs abs

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

  Hasreserves-EpochState : Hasreserves EpochState
  Hasreserves-EpochState .reservesOf = Acnt.reserves ∘ EpochState.acnt

  HasPParams-EpochState : HasPParams EpochState
  HasPParams-EpochState .PParamsOf = PParamsOf ∘ EnactStateOf
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
createRUpd slotsPerEpoch b es total =
  record  { Δt = Δt₁
          ; Δr = 0 - Δr₁ + Δr₂
          ; Δf = 0 - pos feeSS
          ; rs = rs
\end{code}
\begin{code}[hide]
          ; flowConservation = flowConservation
          ; Δt-nonnegative = Δt-nonneg
          ; Δf-nonpositive = Δf-nonpos
\end{code}
\begin{code}
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

\end{code}
\begin{code}[hide]
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
  e lastEpoch : Epoch
  fut fut' : RatifyState
  poolReapState : PoolReapState
  eps eps' eps'' : EpochState
  ls : LState
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
private variable
  acnt acnt' : Acnt
  utxoSt''   : UTxOState
  dState'    : DState
  pState'    : PState
\end{code}

\begin{code}[hide]
-- All of these definitions are a copy of those used in the EPOCH transition.
--
-- We duplicate them in the EPOCH transition so they are visible when presenting
-- the rule. We keep this module as its contents need to be brought in scope for some
-- proofs.
module EPOCH-updates0
    (fut : RatifyState)
    (ls : LState)
    where
  open LState ls
  open CertState certState
  open RatifyState fut hiding (es)
  open UTxOState
  open GState
  open EnactState
  open GovActionState

  esW : EnactState
  esW = RatifyState.es fut

  es : EnactState
  es = record esW { withdrawals = ∅ }

  tmpGovSt : GovState
  tmpGovSt = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed) govSt

  orphans : ℙ (GovActionID × GovActionState)
  orphans  = fromList (getOrphans es tmpGovSt)

  removed' : ℙ (GovActionID × GovActionState)
  removed' = removed ∪ orphans

  govSt' : List (GovActionID × GovActionState)
  govSt' = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed') govSt

  removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
  removedGovActions =
    flip concatMapˢ removed' λ (gaid , gaSt) →
      mapˢ
        (returnAddr gaSt ,_)
        ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)

  govActionReturns : RwdAddr ⇀ Coin
  govActionReturns =
    aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

  trWithdrawals : RwdAddr ⇀ Coin
  trWithdrawals = EnactState.withdrawals esW

  payout : RwdAddr ⇀ Coin
  payout = govActionReturns ∪⁺ trWithdrawals

  gState' : GState
  gState' =
    ⟦ (if null govSt' then mapValues (1 +_) (gState .dreps) else gState .dreps)
    , gState .ccHotKeys ∣ ccCreds (es .cc)
    ⟧

  utxoSt' : UTxOState
  utxoSt' = record utxoSt
    { deposits = utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ
    ; donations = 0
    }

  totWithdrawals : Coin
  totWithdrawals = ∑[ x ← trWithdrawals ] x

module EPOCH-updates
    (fut : RatifyState)
    (ls : LState)
    (acnt' : Acnt)
    (dState' : DState)
    (pState' : PState)
    where
  open LState ls
  open UTxOState
  open EPOCH-updates0 fut ls public
  open DState
  open Acnt

  refunds : Credential ⇀ Coin
  refunds = pullbackMap payout toRwdAddr (dom (dState' .rewards))

  dState'' : DState
  dState'' = record dState' { rewards = dState' .rewards ∪⁺ refunds }

  certState' : CertState
  certState' = ⟦ dState'' , pState' , gState' ⟧

  unclaimed : Coin
  unclaimed = getCoin payout - getCoin refunds

  acnt'' : Acnt
  acnt'' = record acnt'
    { treasury =
        Acnt.treasury acnt' ∸ totWithdrawals + utxoSt .donations + unclaimed
    }
\end{code}

\begin{code}
data _⊢_⇀⦇_,EPOCH⦈_ : ⊤ → EpochState → Epoch → EpochState → Type where
\end{code}
\end{figure*}
\end{NoConway}

\Cref{fig:epoch:sts} defines the EPOCH transition rule.
Previously, this incorporated the logic that is now handled by
POOLREAP (Shelley specification~\parencite[\sectionname~11.6]{shelley-ledger-spec}).

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
      esW : EnactState
      esW = RatifyState.es fut

      es : EnactState
      es = record esW { withdrawals = ∅ }

      tmpGovSt : GovState
      tmpGovSt = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed) govSt

      orphans : ℙ (GovActionID × GovActionState)
      orphans  = fromList (getOrphans es tmpGovSt)

      removed' : ℙ (GovActionID × GovActionState)
      removed' = removed ∪ orphans

      govSt' : List (GovActionID × GovActionState)
      govSt' = filter (λ x → proj₁ x ∉ mapˢ proj₁ removed') govSt

      removedGovActions : ℙ (RwdAddr × DepositPurpose × Coin)
      removedGovActions =
        flip concatMapˢ removed' λ (gaid , gaSt) →
          mapˢ
            (returnAddr gaSt ,_)
            ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)

      govActionReturns : RwdAddr ⇀ Coin
      govActionReturns =
        aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals : RwdAddr ⇀ Coin
      trWithdrawals = EnactState.withdrawals esW

      payout : RwdAddr ⇀ Coin
      payout = govActionReturns ∪⁺ trWithdrawals

      refunds : Credential ⇀ Coin
      refunds = pullbackMap payout toRwdAddr (dom (dState' .rewards))

      dState'' : DState
      dState'' = record dState' { rewards =  dState' .rewards ∪⁺ refunds }

      gState' : GState
      gState' =
        ⟦ (if null govSt' then mapValues (1 +_) (gState .dreps) else gState .dreps)
        , gState .ccHotKeys ∣ ccCreds (es .cc)
        ⟧

      certState' : CertState
      certState' = ⟦ dState'' , pState' , gState' ⟧

      utxoSt' : UTxOState
      utxoSt' = record utxoSt
        { deposits = utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ
        ; donations = 0
        }

      unclaimed : Coin
      unclaimed = getCoin payout - getCoin refunds

      totWithdrawals : Coin
      totWithdrawals = ∑[ x ← trWithdrawals ] x

      acnt'' : Acnt
      acnt'' = record acnt'
        { treasury =
            Acnt.treasury acnt' ∸ totWithdrawals + utxoSt .donations + unclaimed
        }

    in
    record { currentEpoch = e
           ; stakeDistrs = mkStakeDistrs  (Snapshots.mark ss') govSt'
                                          (utxoSt' .deposits) (voteDelegs dState)
           ; treasury = acnt .treasury ; GState gState
           ; pools = pState .pools ; delegatees = dState .voteDelegs }
        ⊢ ⟦ es , ∅ , false ⟧ ⇀⦇ govSt' ,RATIFIES⦈ fut'
      → ls ⊢ ss ⇀⦇ tt ,SNAP⦈ ss'
      → _ ⊢ ⟦ utxoSt' , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈
            ⟦ utxoSt'' , acnt' , dState' , pState' ⟧
    ────────────────────────────────
    _ ⊢ ⟦ acnt , ss , ls , es₀ , fut ⟧ ⇀⦇ e ,EPOCH⦈
        ⟦ acnt'' , ss' , ⟦ utxoSt'' , govSt' , certState' ⟧ , es , fut' ⟧
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
