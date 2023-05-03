\section{Blockchain layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Primitive renaming (Set to Type) using ()
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Chain
 (PolicyID : Type)       -- identifies monetary policies
 (ByteString : Type)     -- could postulate `ByteString` here, but then we'd have to drop `--safe` pragma
 (AdaName : ByteString)  -- the asset name for Ada
 (txs : TransactionStructure  PolicyID ByteString AdaName)
 where

open import Ledger.Prelude

open TransactionStructure txs
open import Ledger.PParams epochStructure
open import Ledger.NewPP PolicyID ByteString AdaName txs
open import Ledger.Ledger PolicyID ByteString AdaName txs
open import Ledger.PPUp PolicyID ByteString AdaName txs
open import Ledger.Utxo PolicyID ByteString AdaName txs
open import Ledger.Ratify PolicyID ByteString AdaName txs
open import Ledger.Tally TxId Network ADHash epochStructure ppUpd ppHashingScheme crypto

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
        stakeDistrs    : StakeDistrs -- TODO: compute this from LState instead

record Block : Set where
  field ts   : List Tx
        slot : Slot
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
      pup = PPUpdateState.pup ppup
      acnt' = record acnt { treasury = Acnt.treasury acnt + UTxOState.fees utxoSt }
      retired = retiring ⁻¹ e
      certState' = record certState { pState = record pState { pools = pools ∣ retired ᶜ ; retiring = retiring ∣ retired ᶜ } }
      ls' = record ls { tally = newTally ; utxoSt = record utxoSt { fees = 0 } ; certState = certState' }
    in
    e ≡ sucᵉ lastEpoch
    → record { currentEpoch = e ; NewEpochEnv Γ } ⊢ ⟦ es  , [] ⟧ʳ
                    ⇀⦇ setToList (tally ˢ) ,RATIFY⦈ ⟦ es' , setToList (newTally ˢ) ⟧ʳ
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
data _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  CHAIN : let open ChainState s; open Block b; open NewEpochState in
    record { ChainState s } ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    → ⟦ slot , EnactState.pparams (es nes) ⟧ˡᵉ ⊢ ls nes ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s { newEpochState = record nes { ls = ls' } }
\end{code}
\caption{CHAIN transition system}
\end{figure*}
