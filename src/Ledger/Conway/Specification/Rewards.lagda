\section{Rewards}
\label{sec:rewards}
\modulenote{\ConwayModule{Rewards}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Integer using () renaming (+_ to pos)
open import Data.Rational using (ℚ; floor; _*_; _÷_; _/_; _-_; >-nonZero; _⊓_)
                          renaming (_⊔_ to _⊔ℚ_; NonZero to NonZeroℚ)
open import Data.Rational.Literals using (number; fromℤ)
open import Data.Rational.Properties using (pos⇒nonZero; positive⁻¹; +-mono-<-≤; normalize-pos; p≤p⊔q)
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction
open import Ledger.Prelude.Numeric.UnitInterval

open import Agda.Builtin.FromNat
open        Number number renaming (fromNat to fromℕ)

module Ledger.Conway.Specification.Rewards
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude hiding (_/_; _*_; _-_; >-nonZero; _⊓_)
open import Ledger.Conway.Specification.Utxo txs abs

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
nonZero-max-1 : ∀ (n : ℕ) → NonZero (1 ⊔ n)
nonZero-max-1 zero = nonZero
nonZero-max-1 (suc n) = nonZero

nonZero-1/n : ∀ (n : ℕ) → .{{_ : NonZero n}} → NonZeroℚ (1 / n)
nonZero-1/n n {{prf}} =
  pos⇒nonZero (1 / n) {{normalize-pos 1 n {{prf}} {{_}} }}

nonZero-1+max0-x : ∀ (x : ℚ) → NonZeroℚ (1 + (0 ⊔ℚ x))
nonZero-1+max0-x x =
  >-nonZero (+-mono-<-≤ (positive⁻¹ 1 {{_}}) (p≤p⊔q 0 x))
\end{code}
\begin{code}
maxPool : PParams → Coin → UnitInterval → UnitInterval → Coin
maxPool pparams rewardPot stake pledge = rewardℕ
  where
    a0    = 0 ⊔ℚ pparams .PParams.a0
    1+a0  = 1 + a0
    nopt  = 1 ⊔ pparams .PParams.nopt
\end{code}
\begin{code}[hide]
    instance
      nonZero-nopt : NonZero nopt
      nonZero-nopt = nonZero-max-1 (pparams .PParams.nopt)
\end{code}
\begin{code}
    z0       = 1 / nopt
    stake'   = fromUnitInterval stake ⊓ z0
    pledge'  = fromUnitInterval pledge ⊓ z0
\end{code}
\begin{code}[hide]
    instance
      nonZeroz0 : NonZeroℚ z0
      nonZeroz0 = nonZero-1/n nopt

      nonZero-1+a0 : NonZeroℚ (1+a0)
      nonZero-1+a0 = nonZero-1+max0-x (pparams .PParams.a0)
\end{code}
\begin{code}
    rewardℚ =
        fromℕ rewardPot ÷ 1+a0
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
      nonZero-totalBlocks : NonZero (1 ⊔ totalBlocks)
      nonZero-totalBlocks = nonZero-max-1 totalBlocks
\end{code}
\begin{code}
    ratioBlocks = (pos poolBlocks) / (1 ⊔ totalBlocks)
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
    ratioStake  = fromUnitInterval ownerStake ÷₀ fromUnitInterval stake
    cost        = pool .PoolParams.cost
    margin      = fromUnitInterval (pool .PoolParams.margin)
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
    ratioStake  = fromUnitInterval memberStake ÷₀ fromUnitInterval stake
    cost        = pool .PoolParams.cost
    margin      = fromUnitInterval (pool .PoolParams.margin)
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
We require these net flows to satisfy certain constraints that
are also stored in the \AgdaRecord{RewardUpdate} data type.
Specifically, \AgdaField{flowConservation} states that
all four net flows add up to zero,
and we state the directions of \AgdaField{Δt} and \AgdaField{Δf}.

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record RewardUpdate : Set where
  field
    Δt Δr Δf          : ℤ
    rs                : Credential ⇀ Coin
    flowConservation  : Δt + Δr + Δf + pos (∑[ c ← rs ] c) ≡ 0
    Δt-nonnegative    : 0 ≤ Δt
    Δf-nonpositive    : Δf ≤ 0

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

\begin{figure*}[!h]
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
  \item \AgdaFunction{utxoBalance}
    computes the coin balance of all those UTxO with a given
    stake \AgdaDatatype{Credential}.
  \item \AgdaFunction{activeDelegs}
    represents the active stake \AgdaDatatype{Credential}s,
    i.e.\ those that delegate to an existing pool
    and that have a registered reward account.
  \item \AgdaFunction{activeRewards}
    is a mapping from active stake \AgdaDatatype{Credential}s
    to the balance of their reward account.
  \item \AgdaFunction{activeStake}
    stores the stake for each active \AgdaDatatype{Credential},
    i.e.\ the sum of coins from the UTxO set
    plus the reward account balance.
\end{itemize}

\begin{figure*}[!h]
\begin{AgdaMultiCode}
\begin{code}[hide]
private
  getStakeCred : TxOut → Maybe Credential
  getStakeCred (a , _ , _ , _) = stakeCred a

opaque
\end{code}
\begin{code}

  stakeDistr : UTxO → DState → PState → Snapshot
  stakeDistr utxo dState pState =
      ⟦ activeStake , stakeDelegs , poolParams ⟧
    where
\end{code}
\begin{code}[hide]
      poolParams    : KeyHash ⇀ PoolParams
      utxoBalance   : Credential → Coin
      activeDelegs  : Credential ⇀ KeyHash
      activeRewards : Credential ⇀ Coin
      activeStake   : Credential ⇀ Coin
\end{code}
\begin{code}
      poolParams     = pState .PState.pools
      open DState dState using (stakeDelegs; rewards)
      utxoBalance    = λ cred → cbalance (utxo ∣^' λ txout → getStakeCred txout ≡ just cred)
      activeDelegs   = (stakeDelegs ∣ dom rewards) ∣^ dom poolParams
      activeRewards  = rewards ∣ dom activeDelegs
      activeStake    =
        mapWithKey (λ c rewardBalance → utxoBalance c + rewardBalance) activeRewards
\end{code}
\end{AgdaMultiCode}
\caption{Functions for computing stake distributions}
\label{fig:functions:stakeDistr}
\end{figure*}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsection{Timing when Rewards are Paid Out}
\label{sec:rewards-time}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Timeline of the Rewards Calculation}
\label{sec:rewards-timeline}

As described in \cref{sec:rewards-motivation},
the probability of producing a block depends on the stake delegated
to the block producer.
However, the stake distribution changes over time,
as funds are transferred between parties.
This raises the question:
What is the point in time from which we take the stake distribution?
Right at the moment of producing a block? Some time in the past?
How do we deal with the fact that the blockchain is only \emph{eventually consistent},
i.e.\ blocks can be rolled back before a stable consensus on the chain is formed?

On Cardano, the answer to these questions is to group time into \emph{epochs}.
An epoch is long enough such that at the beginning of a new epoch,
the beginning of the previous epoch has become stable.
An epoch is also long enough for human users to react to parameter changes,
such as stake pool costs or performance.
But an epoch is also short enough so that changes to
the stake distribution will be reflected in block production
within a reasonable timeframe.

The rewards for the blocks produced during a given epoch $e_i$
involve the two epochs surrounding it.
In particular, the stake distribution will come from the previous epoch
and the rewards will be calculated in the following epoch.
At each epoch boundary, one snapshot of the stake distribution is taken;
changes to the stake distribution within an epoch are not considered
until the next snapshot is taken.
More concretely:
\begin{enumerate}[label=(\Alph*)]%for small alpha-characters within brackets.
  \item A stake distribution snapshot is taken at the begining of epoch $e_{i-1}$.
  \item The randomness for leader election is fixed during epoch $e_{i-1}$
  \item Epoch $e_{i}$ begins, blocks are produced using the snapshot taken at (A).
  \item Epoch $e_{i}$ ends.
    A snapshot is taken of the stake pool performance during epoch $e_{i}$.
    A snapshot is also taken of the fee pot.
  \item The snapshots from (D) are stable and the reward calculation can begin.
  \item The reward calculation is finished and an update to the ledger state
    is ready to be applied.
  \item Rewards are given out.
\end{enumerate}

\usetikzlibrary{decorations.pathreplacing}
\begin{tikzpicture}
% axis
\draw[latex-latex] (0,0) -- (11,0) ;

% epoch braces
\draw [decorate,decoration={brace,amplitude=10pt} ,yshift=5pt] (1.03,0) -- (3.97,0)
  node [midway, above, yshift=9pt]{$e_{i-1}$};
\draw [decorate,decoration={brace,amplitude=10pt} ,yshift=5pt] (4.03,0) -- (6.97,0)
  node [midway, above, yshift=9pt]{$e_{i}$};
\draw [decorate,decoration={brace,amplitude=10pt} ,yshift=5pt] (7.03,0) -- (9.97,0)
  node [midway, above, yshift=9pt]{$e_{i+1}$};

% epoch boundaries
\foreach \x in  {1,4,7,10}
  \draw[shift={(\x,0)}] (0pt,0pt) -- (0pt,-3pt);

\node at (1,-0.5) {A};
\node at (3,-0.5) {B};
\node at (4,-0.5) {C};
\node at (7,-0.5) {D};
\node at (8,-0.5) {E};
\node at (9,-0.5) {F};
\node at (10,-0.5) {G};

\end{tikzpicture}

In order to specify this logic,
we store the last three snapshots of the stake distributions.
The mnemonic ``mark, set, go'' will be used to keep
track of the snapshots, where the label ``mark'' refers to the most recent snapshot,
and ``go'' refers to the snapshot that is ready to be used in the reward calculation.

In the above diagram, the snapshot taken at (A) is labeled ``mark'' during epoch $e_{i-1}$,
``set'' during epoch $e_i$ and ``go'' during epoch $e_{i+1}$. At (G) the snapshot
taken at (A) is no longer needed and will be discarded.

In other words, blocks will be produced using the snapshot labeled ``set'',
whereas rewards are computed from the snapshot labeled ``go''.

\begin{note}
  Between time D and E we are concerned with chain growth and stability.
  Therefore this duration can be stated as 2k blocks (to state it in slots requires details about
  the particular version of the Ouroboros protocol). The duration between F and G is also 2k blocks.
  Between E and F a single honest block is enough to ensure a random nonce.
\end{note}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Example Illustration of the Reward Cycle}
\label{sec:illustration-reward-cycle}

For better understanding, here an example
of the logic described in the previous section:

\definecolor{epochColor}{rgb} {1.00,0.50,0.00}
\definecolor{aliceColor}{rgb} {0.65,0.00,0.00}
\definecolor{bobColor}{rgb} {0.00,0.50,0.00}
\definecolor{bob2Color}{rgb} {0.00,0.95,0.00}
\definecolor{snapshot1}{rgb} {0.00,0.00,0.90}
\definecolor{snapshot2}{rgb} {0.00,0.60,0.90}

\begin{tikzpicture}

  % Axis
  \draw [thick] (-0.2,0) -- (13,0);
  \draw (0,-.2) -- (0, .2);
  \draw (3,-.2) -- (3, .2);
  \draw (6,-.2) -- (6, .2);
  \draw (9,-.2) -- (9, .2);
  \draw (12,-.2) -- (12, .2);
  \node[align=center, below, color=epochColor] at (1.5,0.5)
    {$e_1$};
  \node[align=center, below, color=epochColor] at (4.5,0.5)
    {$e_2$};
  \node[align=center, below, color=epochColor] at (7.5,0.5)
    {$e_3$};
  \node[align=center, below, color=epochColor] at (10.5,0.5)
    {$e_4$};

  % Alice
  % Alice's circle
  \draw [aliceColor, fill] (0,3) circle [radius=0.5];
  \node [white] at (0,3) {Alice};
  % Alice's delegation line
  \draw [->,thick, aliceColor] (0.4,2.65) to (2,0.05);
  \node [aliceColor] at (2.2,2) {delegate to Bob};

  % Bob
  % Bob's circle
  \draw [bobColor, fill] (0,-3) circle [radius=0.5];
  \node [white] at (0,-3) {Bob};
  % Bob's registration line
  \draw [->,thick, bobColor] (0.2,-2.50) to (1,-0.05);
  \node [align=left, below, bobColor] at (-0.5,-0.5) {initial pool \\ registration};
  % Bob's re-registration line
  \draw [->,thick, bob2Color] (0.45,-2.65) to (2.90,-0.05);
  \node [bob2Color] at (2,-2.8) {re-registration};
  % Bob's cached parameter change
  \draw [->,thick, bob2Color] (2.9,-0.2) to [out=280, in=180] (3,-2)
     to [out=0, in=290] (3.1,-0.2);

  % Alice time to re-delegate
  \draw [decorate, decoration = {brace, mirror, amplitude=10pt}, aliceColor, thick]
    (3.2,-0.2) to (5.9,-0.2);
  \node [align=center, below, aliceColor] at (5.1,-0.5)
    {Alice's opportunity \\ to re-delegate \\ before Bob's new \\ parameters};

  % Bob's blocks
  % epoch e3
  \draw [fill=bobColor,bobColor] (6.3,-.1) rectangle (6.5,-.3);
  \draw [fill=bobColor,bobColor] (6.7,-.1) rectangle (6.9,-.3);
  \draw [fill=bobColor,bobColor] (7.4,-.1) rectangle (7.6,-.3);
  \draw [fill=bobColor,bobColor] (8.4,-.1) rectangle (8.6,-.3);
  \draw [decorate, decoration = {brace, mirror, amplitude=10pt}, bobColor, thick]
    (6.2, -0.4) to (8.9,-0.4);
  \draw [->,thick, bobColor] (7.6, -0.8) to [out=315,in=200] (8.4, -1.2)
     to [] (9.6, -0.9);

  % epoch e4
  \draw [fill=bob2Color,bob2Color] (9.9,-.1) rectangle (10.1,-.3);
  \draw [fill=bob2Color,bob2Color] (10.4,-.1) rectangle (10.6,-.3);
  \draw [fill=bob2Color,bob2Color] (10.8,-.1) rectangle (11.0,-.3);
  \draw [decorate, decoration = {brace, mirror, amplitude=10pt}, bob2Color, thick]
    (9.7, -0.4) to (11.2,-0.4);
  \draw [->,thick, bob2Color] (10.6, -0.8) to [out=315,in=200] (11.4, -1.2)
     to [] (12.6, -0.9);

  % Snapshots
  \draw [->,thick, snapshot1] (3,0.3) to [out=90,in=150] (9,0.5)
     to [out=330,in=180] (10,-1) to [out=0,in=-135] (12,0) ;
   \node [snapshot1] at (2.7,1.2) {mark};
   \node [snapshot1] at (6,1.9) {set};
   \node [snapshot1] at (9,0.9) {go};

  \draw [->,thick, snapshot2] (6,0.3) to [out=90,in=150] (12,0.5)
     to [out=330,in=180] (13,-1);
   \node [snapshot2] at (5.7,1.2) {mark};
   \node [snapshot2] at (9,1.9) {set};
   \node [snapshot2] at (12,0.9) {go};
\end{tikzpicture}

Bob registers his stake pool in epoch $e_1$.
Alice delegates to Bob's stake pool in epoch $e_1$.
Just before the end of epoch $e_1$, Bob submits a stake pool re-registration,
changing his pool parameters. The change in parameters is not immediate,
as shown by the curved arrow around the epoch boundary.

A snapshot is taken on the $e_1$/$e_2$ boundary. It is labeled ``mark'' initially.
This snapshot includes Alice's delegation to Bob's pool, and Bob's pool parameters
and listed in the initial pool registration certificate.

If Alice changes her delegation choice any time during epoch $e_2$,
she will never be effected by Bob's change of parameters.

A new snapshot is taken on the $e_2$/$e_3$ boundary.
The previous (darker blue) snapshot is now labeled ``set'', and the new one labeled ``mark''.
The ``set'' snapshot is used for leader election in epoch $e_3$.

On the $e_3$/$e_4$ boundary, the darker blue snapshot is labeled ``go'' and
the lighter blue snapshot is labeled ``set''.
Bob's stake pool performance during epoch $e_3$ (he produced 4 blocks)
will be used with the darker blue snapshot for the rewards which will
be handed out at the beginning of epoch $e_5$.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\subsubsection{Stake Distribution Snapshots}
\label{sec:stake-distribution-snapshots}
This section defines the SNAP transition rule for stake distribution snapshots.

\Cref{fig:defs:Snapshots} defines the type
\AgdaField{Snapshots} that contains the data that needs
to be saved at the end of an epoch. This data is:
\begin{itemize}
  \item \AgdaField{mark}, \AgdaField{set}, \AgdaField{go}:
  Three stake distribution snapshots as explained in \cref{sec:rewards-timeline}.
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
