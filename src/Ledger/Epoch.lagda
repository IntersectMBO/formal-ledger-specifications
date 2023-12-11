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

record NewEpochEnv : Set where
  field stakeDistrs : StakeDistrs
   -- TODO: compute this from LState instead

record NewEpochState : Set where
  constructor ⟦_,_,_,_,_⟧ⁿᵉ
  field lastEpoch  : Epoch
        acnt       : Acnt
        ls         : LState
        es         : EnactState
        fut        : RatifyState
\end{code}
\caption{Definitions for the NEWEPOCH transition system}
The \AgdaRecord{Acnt} record has two fields, \AgdaField{treasury} and \AgdaField{reserves}, so
the \AgdaBound{acnt} field in \AgdaRecord{NewEpochState} keeps track of the total assets that
remain in treasury and reserves.
\end{figure*}
\begin{code}[hide]
private variable
  nes : NewEpochState
  e : Epoch
  fut' : RatifyState

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

data _⊢_⇀⦇_,NEWEPOCH⦈_ : NewEpochEnv → NewEpochState → Epoch → NewEpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWEPOCH-New : ∀ {Γ} → let
      open NewEpochState nes hiding (es)
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

      gState' = record gState { ccHotKeys = ccHotKeys ∣ ccCreds (es .EnactState.cc) }

      certState' = record certState {
        pState = record pState
          { pools = pools ∣ retired ᶜ ; retiring = retiring ∣ retired ᶜ };
        dState = record dState
          { rewards = rewards ∪⁺ refunds };
        gState = if not (null govSt') then gState' else record gState'
          { dreps = mapValues sucᵉ dreps }
        }
      utxoSt' = record utxoSt
        { fees = 0
        ; deposits = deposits ∣ mapˢ (proj₁ ∘ proj₂) removedGovActions ᶜ
        ; donations = 0
        }
      ls' = record ls
        { govSt = govSt' ; utxoSt = utxoSt' ; certState = certState' }
      acnt' = record acnt
        { treasury = treasury + fees + unclaimed + donations ∸ totWithdrawals }
    in
    e ≡ sucᵉ lastEpoch
    → record { currentEpoch = e ; treasury = treasury ; GState gState ; NewEpochEnv Γ }
        ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
    ────────────────────────────────
    Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , acnt' , ls' , es , fut' ⟧ⁿᵉ

  NEWEPOCH-Not-New : ∀ {Γ} → let open NewEpochState nes in
    e ≢ sucᵉ lastEpoch
    ────────────────────────────────
    Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes
\end{code}
\caption{NEWEPOCH transition system\protect\footnotemark}
\end{figure*}
\footnotetext{The expression \AgdaBound{m}~\AgdaFunction{⁻¹}~\AgdaBound{B} denotes the inverse image of the set \AgdaBound{B} under the map \AgdaBound{m}.}
