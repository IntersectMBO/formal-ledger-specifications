\section{Epoch boundary}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)

open import Ledger.Prelude
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Epoch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Gov govStructure
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
  fut' : RatifyState
  eps eps' : EpochState
  Γ : NewEpochEnv

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

data _⊢_⇀⦇_,EPOCH⦈_ : NewEpochEnv → EpochState → Epoch → EpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  EPOCH : let
      open EpochState eps hiding (es)
      open RatifyState fut using (removed) renaming (es to esW)
      -- ^ this rolls over the future enact state into es
      open LState ls; open UTxOState utxoSt
      open CertState certState
      open PState pState; open DState dState; open GState gState
      open Acnt acnt

      trWithdrawals   = esW .EnactState.withdrawals
      totWithdrawals  = ∑[ x ← trWithdrawals ] x

      removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
        mapˢ (GovActionState.returnAddr gaSt ,_)
             ((deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ $ mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ

      es        = record esW { withdrawals = ∅ }
      retired   = retiring ⁻¹ e
      payout    = govActionReturns ∪⁺ trWithdrawals
      refunds   = pullbackMap payout (λ x → record { net = NetworkId ; stake = x }) (dom rewards)
      unclaimed = getCoin payout ∸ getCoin refunds

      govSt' = filter (λ x → ¿ proj₁ x ∉ mapˢ proj₁ removed ¿) govSt

      certState' =
        ⟦ record dState { rewards = rewards ∪⁺ refunds }
        , ⟦ pools ∣ retired ᶜ , retiring ∣ retired ᶜ ⟧ᵖ
        , ⟦ if null govSt' then mapValues sucᵉ dreps else dreps
          , ccHotKeys ∣ ccCreds (es .EnactState.cc) ⟧ᵛ ⟧ᶜˢ

      utxoSt' = ⟦ utxo , 0 , deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ , 0 ⟧ᵘ

      ls' = ⟦ utxoSt' , govSt' , certState' ⟧ˡ

      acnt' = record acnt
        { treasury = treasury + fees + unclaimed + donations ∸ totWithdrawals }
    in
    record { currentEpoch = e ; treasury = treasury ; GState gState ; NewEpochEnv Γ }
        ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
    ────────────────────────────────
    Γ ⊢ eps ⇀⦇ e ,EPOCH⦈ ⟦ acnt' , ls' , es , fut' ⟧ᵉ'
\end{code}
\caption{EPOCH transition system\protect\footnotemark}
\end{figure*}
\footnotetext{The expression \AgdaBound{m}~\AgdaFunction{⁻¹}~\AgdaBound{B} denotes the inverse image of the set \AgdaBound{B} under the map \AgdaBound{m}.}

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
    e ≡ sucᵉ lastEpoch
    → Γ ⊢ eps ⇀⦇ e ,EPOCH⦈ eps'
    ────────────────────────────────
    Γ ⊢ ⟦ lastEpoch , eps ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , eps' ⟧ⁿᵉ

  NEWEPOCH-Not-New :
    e ≢ sucᵉ lastEpoch
    ────────────────────────────────
    Γ ⊢ ⟦ lastEpoch , eps ⟧ⁿᵉ ⇀⦇ e ,NEWEPOCH⦈ ⟦ lastEpoch , eps ⟧ⁿᵉ
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}
