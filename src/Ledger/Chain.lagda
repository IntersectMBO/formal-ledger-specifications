\section{Blockchain layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Chain (txs : TransactionStructure) where

open import Ledger.Prelude

open import Algebra

open TransactionStructure txs
open import Ledger.PParams epochStructure
open import Ledger.NewPP txs
open import Ledger.Ledger txs
open import Ledger.PPUp txs
open import Ledger.Utxo txs
open import Ledger.Ratify txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto
open Equivalence
open import Data.Nat.Properties using (+-0-monoid)
open import Data.Maybe.Base using (_>>=_) renaming (map to map?)

\end{code}
\begin{figure*}[h]
\begin{code}

record NewEpochEnv : Set where
  field stakeDistrs  : StakeDistrs -- TODO: compute this from LState instead

record NewEpochState : Set where
  constructor ⟦_,_,_,_⟧ⁿᵉ
  field lastEpoch  : Epoch
        acnt       : Acnt
        ls         : LState
        es         : EnactState

record ChainState : Set where
  field newEpochState  : NewEpochState

record Block : Set where
  field ts    : List Tx
        slot  : Slot

instance
  _ = +-0-monoid
\end{code}
\caption{Definitions for the NEWEPOCH and CHAIN transition systems}
\end{figure*}
\begin{code}[hide]
private variable
  s : ChainState
  b : Block
  ls' : LState
  pparams' : PParams
  ppup ppup' : PPUpdateState
  nes : NewEpochState
  e : Epoch
  es' : EnactState
  newTally : TallyState
  removed : List (GovActionID × GovActionState)

-- The NEWEPOCH rule is actually multiple rules in one for the sake of simplicity:
-- it also does what EPOCH used to do in previous eras
data _⊢_⇀⦇_,NEWEPOCH⦈_ : NewEpochEnv → NewEpochState → Epoch → NewEpochState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWEPOCH-New : ∀ {Γ} → let
      open NewEpochState nes
      open LState ls
      -- TODO Wire CertState together with treasury and withdrawals
      open CertState certState
      open PState pState
      removedGovActions = map GovActionDeposit (map proj₁ (fromList removed))
      pup = PPUpdateState.pup ppup
      deposits = UTxOState.deposits utxoSt
      acnt' = record acnt { treasury = Acnt.treasury acnt + UTxOState.fees utxoSt }
      retired = retiring ⁻¹ e
      govActionRewards' = concatMapˢ
        (λ where
          (gaid , gaSt) → map
            (GovActionState.returnAddr gaSt ,_)
            ((deposits ˢ) ⟪$⟫ ❴ GovActionDeposit gaid ❵)
        )
        (fromList removed)
      govActionRewards = aggregate₊ (govActionRewards' , finiteness govActionRewards')
      certState' = record certState {
        pState = record pState { pools = pools ∣ retired ᶜ ; retiring = retiring ∣ retired ᶜ };
        dState = record dState { rewards = DState.rewards dState ∪⁺ govActionRewards } }
      utxoSt' = record utxoSt
        { fees = 0
        ; deposits = deposits ∣ removedGovActions ᶜ
        }
      ls' = record ls { tally = newTally ; utxoSt = utxoSt' ; certState = certState' }
    in
    e ≡ sucᵉ lastEpoch
    → record { currentEpoch = e ; ccHotKeys = VState.ccHotKeys vState ; NewEpochEnv Γ }
                    ⊢                               ⟦ es  , [] , [] ⟧ʳ
                    ⇀⦇ setToList (tally ˢ) ,RATIFY⦈ ⟦ es' , setToList (newTally ˢ) , removed ⟧ʳ
    -- TODO: remove keys that aren't in the CC from the hot key map
    ────────────────────────────────
    Γ ⊢ nes ⇀⦇ e ,NEWEPOCH⦈ ⟦ e , acnt' , ls' , es' ⟧ⁿᵉ

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
  → (m : (DepositPurpose × Credential) ↛ Coin)
  → (x , y) ∈ dom ((mapMaybeWithKeyᵐ (maybePurpose prps) m) ˢ)
  → x ≡ prps
maybePurpose-prop {prps = prps} {x} {y} _ xy∈dom with to dom∈ xy∈dom
... | z , ∈mmwk with prps ≟ x | ∈-mapMaybeWithKey {f = maybePurpose prps} ∈mmwk
... | yes refl | _ = refl

filterPurpose : DepositPurpose → (DepositPurpose × Credential) ↛ Coin → Credential ↛ Coin
filterPurpose prps m = mapKeys proj₂ (mapMaybeWithKeyᵐ (maybePurpose prps) m) λ where
  {x , .z} {y , z} x∈dom y∈dom refl → case maybePurpose-prop {prps = prps} m x∈dom of λ where
    x≡prps → case maybePurpose-prop {prps = prps} m y∈dom of λ where
      refl → cong (_, z) x≡prps

instance
  _ = +-0-monoid

govActionDeposits : LState → VDeleg ↛ Coin
govActionDeposits ls =
  let open LState ls; open CertState certState; open PState pState; open UTxOState utxoSt; open DState dState
   in foldl _∪⁺_ ∅ᵐ $ setToList $
    mapPartial
      (λ where (gaid , record { returnAddr = record {stake = c} }) → do
        vd ← lookupᵐ? voteDelegs c ⦃ _ ∈? _ ⦄
        dep ← lookupᵐ? deposits (GovActionDeposit gaid) ⦃ _ ∈? _ ⦄
        just ❴ vd , dep ❵ᵐ )
      (tally ˢ)

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
    let open ChainState s; open Block b; open NewEpochState
        stakeDistrs = calculateStakeDistrs (ls nes)
    in
    record { stakeDistrs = stakeDistrs } ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    → ⟦ slot , EnactState.pparams (es nes) ⟧ˡᵉ ⊢ ls nes ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
