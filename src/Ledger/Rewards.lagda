\section{Rewards}
\label{sec:rewards}
\modulenote{\LedgerModule{Rewards}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

import      Data.Nat as ℕ renaming (_⊔_ to max)
import      Data.Integer as ℤ renaming (_⊔_ to max)
import      Data.Integer.Properties as ℤ
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_)
import      Data.Rational as ℚ renaming (_⊓_ to min; _⊔_ to max)
open import Data.Rational.Literals using (number; fromℤ)
import      Data.Rational.Properties as ℚ

open import Ledger.Abstract
open import Ledger.Transaction
open import Ledger.Types.Numeric.UnitInterval

open import Agda.Builtin.FromNat
open        Number number renaming (fromNat to fromℕ)

module Ledger.Rewards
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Certs govStructure
open import Ledger.Ledger txs abs
open import Ledger.Prelude hiding (_/_; _*_; _-_)
open import Ledger.Utxo txs abs

\end{code}
This section defines how rewards for stake pools and their delegators
are calculated and paid out.
This calculation has two main aspects:
\begin{itemize}
  \item The \emph{amount} of rewards to be paid out.
    This is defined in
    \cref{sec:rewards-amount}.
  \item The \emph{time} when rewards are paid out.
    This is defined in
    \cref{sec:rewards-time}.
\end{itemize}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Rewards Motivation}
\label{sec:rewards-motivation}
In order to operate, any blockchain needs to attract parties that are
willing to spend computational and network resources
on processing transactions and producing new blocks.
These parties, called \defn{block producers},
are incentivized by monetary \defn{rewards}.

Cardano is a proof-of-stake (PoS) blockchain:
through a random lottery,
one block producer is selected to produce one particular block.
The probability for being select depends on their \defn{stake} of Ada,
that is the amount of Ada that they (and their delegators) own
relative to the total amount of Ada. (We will explain delegation below.)
After successful block production,
the block producer is eligible for a share of the rewards.

The rewards for block producers come from two sources:
during an initial period, rewards are paid out from the \defn{reserve},
which is an initial allocation of Ada created for this very purpose.
Over time, the reserve is depleted,
and rewards are sourced from transaction fees.

Rewards are paid out epoch by epoch.

Rewards are collective, but depend on performance:
after every epoch, a fraction of the available reserve
and the transaction fees accumulated during that epoch
are added together. This sum is paid out to the block producers
proportionally to how many blocks they have created each.
In order to avoid perverse incentives, block producers
do not receive individual rewards that depend on the content
of their blocks.

Not all people can or want to set up and administer a dedicated computer
that produces blocks. However, these people still own Ada,
and their stake is relevant for block production.
Specifically, these people have the option to \defn{delegate} their stake
to a \defn{stake pool}, which belongs to a block producer.
This stake counts towards the stake of the pool in the block production lottery.
In turn, the protocol distributes the rewards for produced blocks
to the stake pool owner and their delegators.
The owner receives a fixed fee (``cost'') and a share of the rewards (``margin'').
The remainder is distributed among delegators in proportion to their stake.
By design, delegation and ownership are separate
--- delegation counts towards the stake of the pool,
but delegators remain in full control of their Ada,
stake pools cannot spend delegated Ada.

Stake pools compete for delegators based on fees and performance.
In order to achieve stable blockchain operation,
the rewards are chosen such that they incentivize the system to evolve into a
large, but fixed number of stake pools that attract most of the stake.
For more details about the design and rationale of the rewards and delegation
system, see \textcite{shelley-delegation-design}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Amount of Rewards to be Paid Out}
\label{sec:rewards-amount}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Precision of Arithmetic Operations}
\label{sec:precision-rewards}
When computing rewards, all intermediate results are computed
using rational numbers, \AgdaDatatype{ℚ},
and converted to \Coin{} using the \AgdaFunction{floor} function
at the very end of the computation.

Note for implementors:
Values in \AgdaDatatype{ℚ} can have arbitrarily large nominators and denominators.
Please use an appropriate type that represents rational numbers
as fractions of unbounded nominators and denominators.
Types such as \AgdaFunction{Double}, \AgdaFunction{Float},
\AgdaFunction{BigDecimal} (Java Platform),
or \AgdaFunction{Fixed} (fixed-precision arithmetic)
do \emph{not} faithfully represent the rational numbers, and
are \emph{not} suitable for computing rewards according to this specification!

We use the following arithmetic operations besides basic arithmetic:
\begin{itemize}
  \item \AgdaFunction{fromℕ}: Interpret a natural number as a rational number.
  \item \AgdaFunction{floor}: Round a rational number to the next smaller integer.
  \item \AgdaFunction{posPart}:
    Convert an integer to a natural number by mapping all negative numbers to zero.
  \item \AgdaFunction{÷}: Division of rational numbers.
  \item \AgdaFunction{÷₀}: Division operator that returns zero when the denominator is zero.
  \item \AgdaFunction{/}: Division operator that maps integer arguments to a rational number.
  \item \AgdaFunction{/₀}: Like \AgdaFunction{÷₀}, but with integer arguments.
\end{itemize}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Rewards Distribution Calculation}
\label{sec:rewards-distribution-calculation}
This section defines the amount of rewards that are paid out
to stake pools and their delegators.

\Cref{fig:functions:maxPool} defines the function \AgdaFunction{maxPool}
which gives the maximum reward a stake pool can receive in an epoch.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{rewardPot}: Total rewards to be paid out after the epoch.
  \item \AgdaArgument{stake}: Relative stake of the pool.
  \item \AgdaArgument{pledge}: Relative stake that the pool owner has pledged themselves to the pool.
  \item \AgdaFunction{z0}: Relative stake of a fully saturated pool.
  \item \AgdaFunction{nopt}: Protocol parameter, planned number of block producers.
  \item \AgdaFunction{a0}: Protocol parameter that incentivizes higher pledges.
  \item \AgdaFunction{rewardℚ}: Pool rewards as a rational number.
  \item \AgdaFunction{rewardℕ}: Pool rewards after rounding to a natural number of lovelace.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}[hide]
nonZero-max-1 : ∀ (n : ℕ) → ℕ.NonZero (ℕ.max 1 n)
nonZero-max-1 zero = ℕ.nonZero
nonZero-max-1 (suc n) = ℕ.nonZero

nonZero-1/n : ∀ (n : ℕ) → .{{_ : ℕ.NonZero n}} → ℚ.NonZero (1 / n)
nonZero-1/n n {{prf}} =
  ℚ.pos⇒nonZero (1 / n) {{ℚ.normalize-pos 1 n {{prf}} {{_}} }}

nonZero-1+max0-x : ∀ (x : ℚ) → ℚ.NonZero (1 + ℚ.max 0 x)
nonZero-1+max0-x x =
  ℚ.>-nonZero (ℚ.+-mono-<-≤ (ℚ.positive⁻¹ 1) (ℚ.p≤p⊔q 0 x))

private instance
  nonNegative : ∀ {i} → ℤ.NonNegative (ℤ.max 0 i)
  nonNegative {i} = ℤ.nonNegative (ℤ.i≤i⊔j 0 i)
\end{code}
\begin{code}
maxPool : PParams → Coin → UnitInterval → UnitInterval → Coin
maxPool pparams rewardPot stake pledge = rewardℕ
  where
    a0      = ℚ.max 0 (pparams .PParams.a0)
    1+a0    = 1 + a0
    nopt    = ℕ.max 1 (pparams .PParams.nopt)
\end{code}
\begin{code}[hide]
    instance
      nonZero-nopt : ℕ.NonZero nopt
      nonZero-nopt = nonZero-max-1 (pparams .PParams.nopt)
\end{code}
\begin{code}
    z0       = 1 / nopt
    stake'   = ℚ.min (fromUnitInterval stake) z0
    pledge'  = ℚ.min (fromUnitInterval pledge) z0
\end{code}
\begin{code}[hide]
    instance
      nonZeroz0 : ℚ.NonZero z0
      nonZeroz0 = nonZero-1/n nopt

      nonZero-1+a0 : ℚ.NonZero (1+a0)
      nonZero-1+a0 = nonZero-1+max0-x (pparams .PParams.a0)
\end{code}
\begin{code}
    rewardℚ =
        ((fromℕ rewardPot) ÷ 1+a0)
        * (stake' + pledge' * a0 * (stake' - pledge' * (z0 - stake') ÷ z0) ÷ z0)
    rewardℕ = posPart (floor rewardℚ)
\end{code}
\end{AgdaMultiCode}
\caption{Function maxPool used for computing a Reward Update}
\label{fig:functions:maxPool}
\end{figure*}

\Cref{fig:functions:mkApparentPerformance} defines
the function \AgdaFunction{mkApparentPerformance}
which computes the apparent performance of a stake pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{stake}: Relative active stake of the pool.
  \item \AgdaArgument{poolBlocks}: Number of blocks that the pool added to the chain in the last epoch.
  \item \AgdaArgument{totalBlocks}: Total number of blocks added in the last epoch.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
mkApparentPerformance : UnitInterval → ℕ → ℕ → ℚ
mkApparentPerformance stake poolBlocks totalBlocks = ratioBlocks ÷₀ stake'
  where
    stake' = fromUnitInterval stake
\end{code}
\begin{code}[hide]
    instance
      nonZero-totalBlocks : ℕ.NonZero (ℕ.max 1 totalBlocks)
      nonZero-totalBlocks = nonZero-max-1 totalBlocks
\end{code}
\begin{code}
    ratioBlocks = (ℤ.+ poolBlocks) / (ℕ.max 1 totalBlocks)
\end{code}
\end{AgdaMultiCode}
\caption{Function mkApparentPerformance used for computing a Reward Update}
\label{fig:functions:mkApparentPerformance}
\end{figure*}

\Cref{fig:functions:rewardOwners-rewardMember} defines
the functions \AgdaFunction{rewardOwners} and \AgdaFunction{rewardMember}.
Their purpose is to divide the reward for one pool
between pool owners and individual delegators
by taking into account a fixed pool cost, a relative pool margin,
and the stake of each member.
The rewards will be distributed as follows:
\begin{itemize}
  \item \AgdaArgument{rewardOwners}:
    These funds will go to the \AgdaField{rewardAccount}
    specified in the pool registration certificate.
  \item \AgdaArgument{rewardMember}:
    These funds will go to the reward accounts of the individual delegators.
\end{itemize}
Relevant quantities for the functions are:
\begin{itemize}
  \item \AgdaArgument{rewards}: Rewards paid out to this pool.
  \item \AgdaArgument{pool}: Pool parameters, such as cost and margin.
  \item \AgdaArgument{ownerStake}: Stake of the pool owners relative to the total amount of Ada.
  \item \AgdaArgument{memberStake}: Stake of the pool member relative to the total amount of Ada.
  \item \AgdaArgument{stake}: Stake of the whole pool relative to the total amount of Ada.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
rewardOwners : Coin → PoolParams → UnitInterval → UnitInterval → Coin
rewardOwners rewards pool ownerStake stake = if rewards ≤ cost
  then rewards
  else cost + posPart (floor (
        (fromℕ rewards - fromℕ cost) * (margin + (1 - margin) * ratioStake)))
  where
    ratioStake   = fromUnitInterval ownerStake ÷₀ fromUnitInterval stake
    cost         = pool .PoolParams.cost
    margin       = fromUnitInterval (pool .PoolParams.margin)
\end{code}
\end{AgdaMultiCode}
\begin{AgdaMultiCode}
\begin{code}
rewardMember : Coin → PoolParams → UnitInterval → UnitInterval → Coin
rewardMember rewards pool memberStake stake = if rewards ≤ cost
  then 0
  else posPart (floor (
         (fromℕ rewards - fromℕ cost) * ((1 - margin) * ratioStake)))
  where
    ratioStake    = fromUnitInterval memberStake ÷₀ fromUnitInterval stake
    cost          = pool .PoolParams.cost
    margin        = fromUnitInterval (pool .PoolParams.margin)
\end{code}
\end{AgdaMultiCode}
\caption{Functions rewardOwners and rewardMember}
\label{fig:functions:rewardOwners-rewardMember}
\end{figure*}

\Cref{fig:functions:rewardOnePool} defines
the function \AgdaFunction{rewardOnePool}
which calculates the rewards given out to each member of a given pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{rewardPot}: Total rewards to be paid out for this epoch.
  \item \AgdaArgument{n}: Number of blocks produced by the pool in the last epoch.
  \item \AgdaArgument{N}: Expectation value of the number of blocks to be produced by the pool.
  \item \AgdaArgument{stakeDistr}: Distribution of stake,
    as mapping from \AgdaInductiveConstructor{Credential} to \Coin{}.
  \item \AgdaArgument{σ}: Total relative stake controlled by the pool.
  \item \AgdaArgument{σa}: Total active relative stake controlled by the pool, used for selecting block producers.
  \item \AgdaArgument{tot}: Total amount of Ada in circulation, for computing the relative stake.
  \item \AgdaFunction{mkRelativeStake}: Compute stake relative to the total amount in circulation.
  \item \AgdaFunction{ownerStake}: Total amount of stake controlled by the stake pool operator and owners.
  \item \AgdaFunction{maxP}: Maximum rewards the pool can claim if the pledge is met,
    and zero otherwise.
  \item \AgdaFunction{poolReward}: Actual rewards to be paid out to this pool.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
Stake = Credential ⇀ Coin

rewardOnePool : PParams → Coin → ℕ → ℕ → PoolParams
  → Stake → UnitInterval → UnitInterval → Coin → (Credential ⇀ Coin)
rewardOnePool pparams rewardPot n N pool stakeDistr σ σa tot = rewards
  where
    mkRelativeStake = λ coin → clamp (coin /₀ tot)
    owners = mapˢ KeyHashObj (pool .PoolParams.owners) 
    ownerStake = ∑[ c ← stakeDistr ∣ owners ] c
    pledge = pool .PoolParams.pledge
    maxP = if pledge ≤ ownerStake
      then maxPool pparams rewardPot σ (mkRelativeStake pledge)
      else 0
    apparentPerformance = mkApparentPerformance σa n N
    poolReward = posPart (floor (apparentPerformance * fromℕ maxP))
    memberRewards =
      mapValues (λ coin → rewardMember poolReward pool (mkRelativeStake coin) σ)
        (stakeDistr ∣ owners ᶜ)
    ownersRewards  =
      ❴ pool .PoolParams.rewardAccount
      , rewardOwners poolReward pool (mkRelativeStake ownerStake) σ ❵ᵐ
    rewards = memberRewards ∪⁺ ownersRewards
\end{code}
\end{AgdaMultiCode}
\caption{Function rewardOnePool used for computing a Reward Update}
\label{fig:functions:rewardOnePool}
\end{figure*}

\Cref{fig:functions:poolStake} defines
the function \AgdaFunction{poolStake}
which filters the stake distribution to one stake pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaArgument{hk}: \AgdaDatatype{KeyHash} of the stake pool to be filtered by.
    \item \AgdaArgument{delegs}:
      Mapping from \AgdaDatatype{Credential}s to stake pool that they delegate to.
  \item \AgdaArgument{stake}: Distribution of stake for all \AgdaDatatype{Credential}s.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
Delegations = Credential ⇀ KeyHash

poolStake  : KeyHash → Delegations → Stake → Stake
poolStake hk delegs stake = stake ∣ dom (delegs ∣^ ❴ hk ❵)
\end{code}
\end{AgdaMultiCode}
\caption{Function poolStake}
\label{fig:functions:poolStake}
\end{figure*}

\Cref{fig:functions:reward} defines
the function \AgdaFunction{reward}
which applies \AgdaFunction{rewardOnePool} to each registered stake pool.
Relevant quantities are:
\begin{itemize}
  \item \AgdaFunction{uncurryᵐ}: Helper function to rearrange a nested mapping.
  \item \AgdaArgument{blocks}: Number of blocks produced by pools in the last epoch,
    as a mapping from pool \AgdaDatatype{KeyHash} to number.
  \item \AgdaArgument{poolParams}: Parameters of all known stake pools.
  \item \AgdaArgument{stake}: Distribution of stake,
    as mapping from \AgdaDatatype{Credential} to \Coin{}.
    \item \AgdaArgument{delegs}:
      Mapping from \AgdaDatatype{Credential}s to stake pool that they delegate to.
  \item \AgdaArgument{total}: Total stake $=$ amount of Ada in circulation, for computing the relative stake.
  \item \AgdaFunction{active}: Active stake $=$ amount of Ada that was used for selecting block producers.
  \item \AgdaFunction{Σ\_/total}: Sum of stake divided by total stake.
  \item \AgdaFunction{Σ\_/active}: Sum of stake divided by active stake.
  \item \AgdaFunction{N}: Total number of blocks produced in the last epoch.
  \item \AgdaFunction{pdata}: Data needed to compute rewards for each pool.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
BlocksMade = KeyHash ⇀ ℕ

uncurryᵐ :
\end{code}
\begin{code}[hide]
  ∀ {A B C : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ →
\end{code}
\begin{code}
  A ⇀ (B ⇀ C) → (A × B) ⇀ C
\end{code}
\begin{code}[hide]
uncurryᵐ {A} {B} {C} abc = mapFromPartialFun lookup' domain'
  where
    lookup' : (A × B) → Maybe C
    lookup' (a , b) = lookupᵐ? abc a >>= (λ bc → lookupᵐ? bc b)

    joinˢ : ∀ {X} → ℙ (ℙ X) → ℙ X
    joinˢ = concatMapˢ id

    domain' : ℙ (A × B)
    domain' = joinˢ (range (mapWithKey (λ a bc → range (mapWithKey (λ b _ → (a , b)) bc)) abc))
\end{code}
\begin{code}

reward : PParams → BlocksMade → Coin → (KeyHash ⇀ PoolParams)
  → Stake → Delegations → Coin → (Credential ⇀ Coin)
reward pp blocks rewardPot poolParams stake delegs total = rewards
  where
    active = ∑[ c ← stake ] c
    Σ_/total = λ st → clamp ((∑[ c ← st ] c) /₀ total)
    Σ_/active = λ st → clamp ((∑[ c ← st ] c) /₀ active)
    N = ∑[ m ← blocks ] m
    mkPoolData = λ hk p →
      map (λ n → (n , p , poolStake hk delegs stake)) (lookupᵐ? blocks hk)
    pdata = mapMaybeWithKeyᵐ mkPoolData poolParams

    results  : (KeyHash × Credential) ⇀ Coin
    results = uncurryᵐ (mapValues (λ (n , p , s)
      → rewardOnePool pp rewardPot n N p s (Σ s /total) (Σ s /active) total)
      pdata)
    rewards  = aggregateBy
      (mapˢ (λ (kh , cred) → (kh , cred) , cred) (dom results))
      results
\end{code}
\end{AgdaMultiCode}
\caption{Function reward used for computing a Reward Update}
\label{fig:functions:reward}
\end{figure*}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Reward Update}
\label{sec:reward-update}
This section defines the \AgdaRecord{RewardUpdate} type,
which records the net flow of Ada due to paying out rewards
after an epoch.
This type is defined in \Cref{fig:functions:RewardUpdate}.
The update consists of four net flows:
\begin{itemize}
  \item \AgdaField{Δt}: The change to the treasury.
    This will be a positive value.
  \item \AgdaField{Δr}: The change to the reserves.
    We typically expect this to be a negative value.
  \item \AgdaField{Δf}: The change to the fee pot.
    This will be a negative value.
  \item \AgdaField{rs}: The map of new individual rewards,
    to be added to the existing rewards.
\end{itemize}

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
\caption{RewardUpdate type}
\label{fig:functions:RewardUpdate}
\end{figure*}

The function \AgdaFunction{createRUpd} calculates the
\AgdaRecord{RewardUpdate},
but requires the definition of the type \AgdaRecord{EpochState},
so we have to defer the definition of this function to \cref{sec:epoch-boundary}.

\Cref{fig:rewardPot} captures the potential movement of funds
in the entire system
that can happen during one transition step as described in this document.
Exception: Withdrawals from the ``Treasury'' are not shown in this diagram,
they can move funds into ``Reward accounts''.
Value is moved between accounting pots,
but the total amount of value in the system remains constant.
In particular, the red subgraph
represents the inputs and outputs to the \AgdaFunction{rewardPot},
a temporary variable used during the reward update calculation
in the function \AgdaFunction{createRUpd}.
Each red arrow corresponds to one field of the \AgdaRecord{RewardUpdate}
data type.
The blue arrows represent the movement of funds
after they have passed through the \AgdaFunction{rewardPot}.

\begin{figure}[htb]
  \begin{center}
    \begin{tikzpicture}
      [ x=30mm, y=30mm
      , direct/.style={black, draw}
      , implied/.style={blue, draw}
      , toTotPot/.style={red, draw}
      ]
    \node (C) at (3,2.5) {\LARGE Circulation};
    \node (R) at (5, 1) {\LARGE Reserves};
    \node (D) at (1, 2) {\LARGE Deposits};
    \node (FR) at (1,1) {\LARGE Fees};
    \node (RA) at (5, 2) {\LARGE Reward accounts};
    \node (T) at (3,0.5) {\LARGE Treasury};

    \draw[->, direct, ultra thick]
    (C) edge (D)
    (C) edge (FR)

    (D) edge (C)

    (RA) edge (C);

    \draw[->, implied, ultra thick]
    (FR) edge (T)
    (FR) edge (RA)

    (R) edge (T)
    (R) edge (RA);

    \node (TP) at (3, 1.15) {\LARGE rewardPot};

    \draw[->, toTotPot, ultra thick]
    (FR) edge node[below] {$-\Delta f$} (TP)
    (R)  edge node[below] {$-\Delta r$} (TP)

    (TP) edge node[below] {\textit{rs}} (RA)
    (TP) edge node[right] {$\Delta t$} (T);
    \end{tikzpicture}
  \end{center}
  \caption{Preservation of funds and rewards}
  \label{fig:rewardPot}
\end{figure}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Stake Distribution Calculation}
\label{sec:stake-distribution-calculation}

This section defines the calculation of the stake distribution
for the purpose of calculating rewards.

\Cref{fig:defs:Snapshot} defines the type \AgdaField{Snapshot}
that represents a stake distribution snapshot.
Such a snapshot contains the essential data needed to compute rewards:
\begin{itemize}
  \item \AgdaField{stake}  A stake distribution,
  that is a mapping from credentials to coin.
  \item \AgdaField{delegations}: A delegation map,
  that is a mapping from credentials to the stake pools that they delegate to.
  \item \AgdaField{poolParameters}:
  A mapping that stores the pool parameters of each stake pool.
\end{itemize}

\begin{figure*}[ht]
\begin{code}
record Snapshot : Set where
  field
    stake           : Credential ⇀ Coin
    delegations     : Credential ⇀ KeyHash
    poolParameters  : KeyHash ⇀ PoolParams

\end{code}
\caption{Definitions of the Snapshot type}
\label{fig:defs:Snapshot}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl HasCast-Snapshot =
    derive-HasCast [ (quote Snapshot , HasCast-Snapshot) ]
\end{code}

\Cref{fig:functions:stakeDistr} defines the calculation of
the stake distribution from the data contained in a ledger state.
Here,
\begin{itemize}
  \item \AgdaFunction{aggregate₊} takes a relation \ab{R ⊂ A × V},
    where \ab{V} is any monoid with operation \ab{+},
    and returns a mapping \ab{A ⇀ B} such that any item \ab{a ∈ A}
    is mapped to the sum (using the operation \ab{+})
    of all \ab{b ∈ B} such that \ab{(a , b) ∈ R}.
  \item \AgdaFunction{m}
    is the stake relation computed from the UTxO set.    
  \item \AgdaFunction{stakeRelation}
    is the total stake relation obtained
    by combining the stake from the UTxO set
    with the stake from the reward accounts.
\end{itemize}

\begin{figure*}[ht]
\begin{AgdaSuppressSpace}
\begin{code}[hide]
private
  getStakeCred : TxOut → Maybe Credential
  getStakeCred (a , _ , _ , _) = stakeCred a
\end{code}
\begin{code}
stakeDistr : UTxO → DState → PState → Snapshot
stakeDistr utxo stᵈ pState =
    ⟦ aggregate₊ (stakeRelation ᶠˢ) , stakeDelegs , poolParams ⟧
  where
    poolParams = pState .PState.pools
    open DState stᵈ using (stakeDelegs; rewards)
    m = mapˢ (λ a → (a , cbalance (utxo ∣^' λ i → getStakeCred i ≡ just a))) (dom rewards)
    stakeRelation = m ∪ ∣ rewards ∣
\end{code}
\end{AgdaSuppressSpace}
\caption{Functions for computing stake distributions}
\label{fig:functions:stakeDistr}
\end{figure*}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Timing when Rewards are Paid Out}
\label{sec:rewards-time}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Stake Distribution Snapshots}
\label{sec:stake-distribution-snapshots}
This section defines the SNAP transition rule for stake distribution snapshots.

\Cref{fig:defs:Snapshots} defines the type
\AgdaField{Snapshots} that contains the data that needs
to be saved at the end of an epoch. This data is:
\begin{itemize}
  \item \AgdaField{mark}, \AgdaField{set}, \AgdaField{go}:
  Three stake distribution snapshots as explained in Section~TODO.
  \item \AgdaField{feeSS}:
  stores the fees which are added to the reward pot during the next reward update
calculation, which is then subtracted from the fee pot on the epoch boundary.
\end{itemize}

\begin{figure*}[ht]
\begin{code}
record Snapshots : Set where
  field
    mark set go  : Snapshot
    feeSS        : Coin

\end{code}
\caption{Definitions for the SNAP transition system}
\label{fig:defs:Snapshots}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl HasCast-Snapshots =
    derive-HasCast [ (quote Snapshots , HasCast-Snapshots) ]
\end{code}

\Cref{fig:snap:sts} defines the snapshot transition rule.
This transition has no preconditions and results in the following state change:
\begin{itemize}
  \item The oldest snapshot is replaced with the penultimate one.
  \item The penultimate snapshot is replaced with the newest one.
  \item The newest snapshot is replaced with one just calculated.
  \item The current fees pot is stored in \AgdaField{feeSS}.
  Note that this value will not change during the
  epoch, unlike the \AgdaField{fees} value in the UTxO state.
\end{itemize}

\begin{code}[hide]
private variable
  lstate : LState
  mark set go : Snapshot
  feeSS : Coin
\end{code}
\begin{figure*}[h]
\begin{code}
data _⊢_⇀⦇_,SNAP⦈_ : LState → Snapshots → ⊤ → Snapshots → Type where
  SNAP : let open LState lstate; open UTxOState utxoSt; open CertState certState
             stake = stakeDistr utxo dState pState
    in
    lstate ⊢ ⟦ mark , set , go , feeSS ⟧ ⇀⦇ tt ,SNAP⦈ ⟦ stake , mark , set , fees ⟧
\end{code}
\caption{SNAP transition system}
\label{fig:snap:sts}
\end{figure*}
