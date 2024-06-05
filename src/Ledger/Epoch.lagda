\section{Epoch boundary}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)
open import Data.List using (filter)

open import Agda.Builtin.FromNat

open import Ledger.Prelude
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
\end{code}
\begin{figure*}[h]
\begin{code}
record EpochState : Set where
  constructor ⟦_,_,_,_⟧ᵉ'
  field acnt       : Acnt
        ls         : LState
        es         : EnactState
        fut        : RatifyState

record NewEpochEnv : Set where
  field stakeDistrs : StakeDistrs
   -- TODO: compute this from LState instead

record NewEpochState : Set where
  constructor ⟦_,_⟧ⁿᵉ
  field lastEpoch   : Epoch
        epochState  : EpochState
\end{code}
\caption{Definitions for the EPOCH and NEWEPOCH transition systems}
\end{figure*}
\begin{code}[hide]
private variable
  nes nes' : NewEpochState
  e lastEpoch : Epoch
  fut fut' : RatifyState
  eps eps' : EpochState
  Γ : NewEpochEnv
  ls : LState
  acnt : Acnt
  es₀ : EnactState

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

toRwdAddr : Credential → RwdAddr
toRwdAddr x = record { net = NetworkId ; stake = x }

data _⊢_⇀⦇_,EPOCH⦈_ : NewEpochEnv → EpochState → Epoch → EpochState → Set where
\end{code}

Figure~\ref{fig:epoch:sts} defines the rule for the EPOCH transition
system. Currently, this contains some logic that is handled by
POOLREAP in the Shelley specification, since POOLREAP is not implemented here.

The EPOCH rule now also needs to invoke RATIFY and properly deal with
its results, i.e:

\begin{itemize}
\item Pay out all the enacted treasury withdrawals.
\item Remove expired and enacted governance actions \& refund deposits.
\item If \AgdaBound{govSt'} is empty, increment the activity counter for DReps.
\item Remove all hot keys from the constitutional committee delegation map that
  do not belong to currently elected members.
\item Apply the resulting enact state from the previous epoch boundary $fut$ and
  store the resulting enact state $fut'$.
\end{itemize}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
  EPOCH : let
      ⟦ esW , removed , _ ⟧ʳ = fut
      ⟦ utxoSt , govSt , ⟦ dState , pState , gState ⟧ᶜˢ ⟧ˡ = ls
\end{code}
\begin{code}[hide]
      open UTxOState
      open PState; open DState; open GState
      open Acnt; open EnactState; open GovActionState
\end{code}
\begin{code}

      removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
        mapˢ (returnAddr gaSt ,_) ((utxoSt .deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ (mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ)

      trWithdrawals   = esW .withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      es         = record esW { withdrawals = ∅ }
      retired    = (pState .retiring) ⁻¹ e
      payout     = govActionReturns ∪⁺ trWithdrawals
      refunds    = pullbackMap payout toRwdAddr (dom (dState .rewards))
      unclaimed  = getCoin payout - getCoin refunds

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      certState' =
        ⟦ record dState { rewards = dState .rewards ∪⁺ refunds }
        , ⟦ (pState .pools) ∣ retired ᶜ , (pState .retiring) ∣ retired ᶜ ⟧ᵖ
        , ⟦ if null govSt' then mapValues (1 +_) (gState .dreps) else (gState .dreps)
          , (gState .ccHotKeys) ∣ ccCreds (es .cc) ⟧ᵛ ⟧ᶜˢ

      utxoSt' = ⟦ utxoSt .utxo , 0 , utxoSt .deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧ᵘ

      ls' = ⟦ utxoSt' , govSt' , certState' ⟧ˡ

      acnt' = record acnt
        { treasury  = acnt .treasury ∸ totWithdrawals
                    + utxoSt .fees + utxoSt .donations + unclaimed }
    in
    record { currentEpoch = e ; treasury = acnt .treasury ; GState gState ; NewEpochEnv Γ }
        ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
    ────────────────────────────────
    Γ ⊢ ⟦ acnt , ls , es₀ , fut ⟧ᵉ' ⇀⦇ e ,EPOCH⦈ ⟦ acnt' , ls' , es , fut' ⟧ᵉ'
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
  _⊢_⇀⦇_,NEWEPOCH⦈_ : NewEpochEnv → NewEpochState → Epoch → NewEpochState → Set
\end{code}
\begin{code}[hide]
  where
\end{code}
\begin{code}
  NEWEPOCH-New :
    e ≡ lastEpoch + 1
    → Γ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    ────────────────────────────────
    Γ ⊢ ⟦ lastEpoch , eps ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps' ⟧ⁿᵉ

  NEWEPOCH-Not-New :
    e ≢ lastEpoch + 1
    ────────────────────────────────
    Γ ⊢ ⟦ lastEpoch , eps ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , eps ⟧ⁿᵉ
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}
\end{NoConway}
