\section{Blockchain layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Chain (txs : TransactionStructure) where

open import Ledger.Prelude

open TransactionStructure txs

open import Algebra
open import Data.Maybe using (_>>=_)
open import Data.Nat.Properties using (+-0-monoid)
open import Ledger.Gov TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open import Ledger.Ledger txs
open import Ledger.PParams epochStructure
open import Ledger.Ratify txs
open import Ledger.Utxo txs

open Equivalence

\end{code}
\begin{figure*}[h]
\begin{code}

record NewEpochEnv : Set where
  field stakeDistrs  : StakeDistrs -- TODO: compute this from LState instead

record NewEpochState : Set where
  constructor ⟦_,_,_,_,_⟧ⁿᵉ
  field lastEpoch  : Epoch
        acnt       : Acnt
        ls         : LState
        es         : EnactState
        fut        : RatifyState

record ChainState : Set where
  field newEpochState  : NewEpochState

record Block : Set where
  field ts    : List Tx
        slot  : Slot
\end{code}
\caption{Definitions for the NEWEPOCH and CHAIN transition systems}
\end{figure*}
\begin{code}[hide]
private variable
  s : ChainState
  b : Block
  ls' : LState
  nes : NewEpochState
  e : Epoch
  es' : EnactState
  govSt' : GovState
  d : Bool
  fut' : RatifyState

instance
  _ = +-0-monoid

-- The NEWEPOCH rule is actually multiple rules in one for the sake of simplicity:
-- it also does what EPOCH used to do in previous eras
data _⊢_⇀⦇_,NEWEPOCH⦈_ : NewEpochEnv → NewEpochState → Epoch → NewEpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWEPOCH-New : ∀ {Γ} → let
      open NewEpochState nes hiding (es)
      open RatifyState fut using (es; removed) -- this rolls over the future enact state into es
      open LState ls
      -- TODO Wire CertState together with treasury and withdrawals
      open CertState certState
      open PState pState

      donations = UTxOState.donations utxoSt
      deposits = UTxOState.deposits utxoSt

      removedGovActions = flip concatMapˢ removed
        (λ where (gaid , gaSt) → map
                   (GovActionState.returnAddr gaSt ,_)
                   ((deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ))

      govActionReturns =
        aggregate₊ (map (λ where (a , _ , d) → a , d) removedGovActions , finiteness _)

      rewards = DState.rewards dState
      refunds   = govActionReturns ∣ dom (rewards ˢ)
      unclaimed = govActionReturns ∣ dom (rewards ˢ) ᶜ

      govSt' = filter (¬? ∘ (_∈? map proj₁ removed) ∘ proj₁) govSt

      retired = retiring ⁻¹ e

      certState' = record certState
        { pState = record pState { pools = pools ∣ retired ᶜ ; retiring = retiring ∣ retired ᶜ }
        ; dState = record dState { rewards = rewards ∪⁺ refunds } }
        ; gState = if not (null govSt')
                     then gState
                     else record gState { dreps = mapValues sucᵉ (GState.dreps gState) }
      utxoSt' = record utxoSt
        { fees = 0
        ; deposits = deposits ∣ map (proj₁ ∘ proj₂) removedGovActions ᶜ
        ; donations = 0
        }
      ls' = record ls { govSt = govSt' ; utxoSt = utxoSt' ; certState = certState' }
      acnt' = record acnt { treasury = Acnt.treasury acnt + UTxOState.fees utxoSt + getCoin unclaimed + donations }
    in
    e ≡ sucᵉ lastEpoch
    → record { currentEpoch = e ; GState gState ; NewEpochEnv Γ }
        ⊢ ⟦ es , ∅ , false ⟧ʳ ⇀⦇ govSt' ,RATIFY⦈ fut'
    -- TODO: remove keys that aren't in the CC from the hot key map
    ────────────────────────────────
    Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , acnt' , ls' , es , fut' ⟧ⁿᵉ

  NEWEPOCH-Not-New : ∀ {Γ} → let open NewEpochState nes in
    e ≢ sucᵉ lastEpoch
    ────────────────────────────────
    Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ nes
\end{code}
\caption{NEWEPOCH transition system}
\end{figure*}

\begin{code}[hide]
maybePurpose : DepositPurpose → (DepositPurpose × Credential) → Coin → Maybe Coin
maybePurpose prps (prps' , _) c with prps ≟ prps'
... | yes _ = just c
... | no _ = nothing

maybePurpose-prop : ∀ {prps} {x} {y}
  → (m : (DepositPurpose × Credential) ⇀ Coin)
  → (x , y) ∈ dom ((mapMaybeWithKeyᵐ (maybePurpose prps) m) ˢ)
  → x ≡ prps
maybePurpose-prop {prps = prps} {x} {y} _ xy∈dom with to dom∈ xy∈dom
... | z , ∈mmwk with prps ≟ x | ∈-mapMaybeWithKey {f = maybePurpose prps} ∈mmwk
... | yes refl | _ = refl

filterPurpose : DepositPurpose → (DepositPurpose × Credential) ⇀ Coin → Credential ⇀ Coin
filterPurpose prps m = mapKeys proj₂ (mapMaybeWithKeyᵐ (maybePurpose prps) m) λ where
  x∈dom y∈dom refl → cong (_, _) $
    trans (maybePurpose-prop {prps = prps} m x∈dom) (sym $ maybePurpose-prop {prps = prps} m y∈dom)

govActionDeposits : LState → VDeleg ⇀ Coin
govActionDeposits ls =
  let open LState ls; open CertState certState; open PState pState; open UTxOState utxoSt; open DState dState
   in foldl _∪⁺_ ∅ᵐ $ setToList $
    mapPartial
      (λ where (gaid , record { returnAddr = record {stake = c} }) → do
        vd ← lookupᵐ? voteDelegs c ⦃ _ ∈? _ ⦄
        dep ← lookupᵐ? deposits (GovActionDeposit gaid) ⦃ _ ∈? _ ⦄
        just ❴ vd , dep ❵ᵐ )
      (setFromList govSt)

calculateStakeDistrs : LState → StakeDistrs
calculateStakeDistrs ls =
  let open LState ls; open CertState certState; open PState pState; open UTxOState utxoSt; open DState dState
      spoDelegs = ∅ᵐ -- TODO
      drepDelegs = ∅ᵐ -- TODO
  in
  record
    { stakeDistr = govActionDeposits ls
    }


data
\end{code}
\begin{figure*}[h]
\begin{code}
  _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Set
\end{code}
\caption{Type of the CHAIN transition system}
\end{figure*}
\begin{code}[hide]
  where
\end{code}
\begin{figure*}[h]
\begin{code}
  CHAIN :
    let open ChainState s; open Block b; open NewEpochState; open EnactState (es nes)
        stakeDistrs = calculateStakeDistrs (ls nes)
    in
    record { stakeDistrs = stakeDistrs } ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    → ⟦ slot , proj₂ (proj₁ constitution) , proj₁ pparams ⟧ˡᵉ ⊢ ls nes ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
