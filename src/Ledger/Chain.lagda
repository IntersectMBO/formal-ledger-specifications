\section{Blockchain layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Maybe using (_>>=_)
open import Data.Nat.Properties using (+-0-monoid; +-0-commutativeMonoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain
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

record ChainState : Set where
  field newEpochState  : NewEpochState

record Block : Set where
  field ts    : List Tx
        slot  : Slot
\end{code}
\caption{Definitions for the NEWEPOCH and CHAIN transition systems}
The \AgdaRecord{Acnt} record has two fields, \AgdaField{treasury} and \AgdaField{reserves}, so
the \AgdaBound{acnt} field in \AgdaRecord{NewEpochState} keeps track of the total assets that
remain in treasury and reserves.
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

instance _ = +-0-monoid; _ = +-0-commutativeMonoid

-- The NEWEPOCH rule is actually multiple rules in one for the sake of simplicity:t also does what EPOCH used to do in previous eras
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
      totWithdrawals  = ∑[ x ← trWithdrawals ᶠᵐ ] x

      removedGovActions = flip concatMapˢ removed λ (gaid , gaSt) →
        mapˢ (GovActionState.returnAddr gaSt ,_)
             ((deposits ∣ ❴ GovActionDeposit gaid ❵) ˢ)
      govActionReturns = aggregate₊ $ mapˢ (λ (a , _ , d) → a , d) removedGovActions ᶠˢ

      es        = record esW { withdrawals = ∅ }
      retired   = retiring ⁻¹ e
      refunds   = govActionReturns ∪⁺ trWithdrawals ∣ dom rewards
      unclaimed = govActionReturns ∪⁺ trWithdrawals ∣ dom rewards ᶜ

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
        { treasury = treasury + fees + getCoin unclaimed + donations ∸ totWithdrawals }
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
\begin{code}[hide]
-- TODO: do we still need this for anything?
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
filterPurpose prps m = mapKeys proj₂ (mapMaybeWithKeyᵐ (maybePurpose prps) m)
  {λ where x∈dom y∈dom refl → cong (_, _)
                            $ trans (maybePurpose-prop {prps = prps} m x∈dom)
                            $ sym   (maybePurpose-prop {prps = prps} m y∈dom)}

govActionDeposits : LState → VDeleg ⇀ Coin
govActionDeposits ls =
  let open LState ls; open CertState certState; open PState pState
      open UTxOState utxoSt; open DState dState
   in foldl _∪⁺_ ∅ $ setToList $
    mapPartial
      (λ where (gaid , record { returnAddr = record {stake = c} }) → do
        vd ← lookupᵐ? voteDelegs c ⦃ _ ∈? _ ⦄
        dep ← lookupᵐ? deposits (GovActionDeposit gaid) ⦃ _ ∈? _ ⦄
        just ❴ vd , dep ❵ )
      (fromList govSt)

calculateStakeDistrs : LState → StakeDistrs
calculateStakeDistrs ls =
  let open LState ls; open CertState certState; open PState pState
      open UTxOState utxoSt; open DState dState
      spoDelegs = ∅ -- TODO
      drepDelegs = ∅ -- TODO
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
    let open ChainState s; open Block b; open EnactState (newEpochState .NewEpochState.es) in
       record { stakeDistrs = calculateStakeDistrs (newEpochState .NewEpochState.ls) }
         ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    →  ⟦ slot , constitution .proj₁ .proj₂ , pparams .proj₁ ⟧ˡᵉ
         ⊢ nes .NewEpochState.ls ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
