\section{Blockchain Layer}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Chain
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Enact govStructure
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs
open import Ledger.Utxo txs abs
open import Ledger.Epoch txs abs
open import Ledger.Certs govStructure
\end{code}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record ChainState : Type where
  field
    newEpochState  : NewEpochState

record Block : Type where
  field
    ts    : List Tx
    slot  : Slot
\end{code}
\end{AgdaMultiCode}
\caption{Definitions CHAIN transition system}
\end{figure*}
\begin{code}[hide]
private variable
  s : ChainState
  b : Block
  ls' : LState
  nes : NewEpochState

instance _ = +-0-monoid

-- TODO: do we still need this for anything?
maybePurpose : DepositPurpose → (DepositPurpose × Credential) → Coin → Maybe Coin
maybePurpose prps (prps' , _) c with prps ≟ prps'
... | yes _ = just c
... | no _ = nothing

maybePurpose-prop : ∀ {prps} {x} {y}
  → (m : (DepositPurpose × Credential) ⇀ Coin)
  → (x , y) ∈ dom ((mapMaybeWithKeyᵐ (maybePurpose prps) m) ˢ)
  → x ≡ prps
maybePurpose-prop {prps = prps} {x} {y} _ xy∈dom with from dom∈ xy∈dom
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
        vd ← lookupᵐ? voteDelegs c
        dep ← lookupᵐ? deposits (GovActionDeposit gaid)
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

totalRefScriptsSize : LState → List Tx → ℕ
totalRefScriptsSize lst txs = sum $ map (refScriptsSize utxo) txs
  where open UTxOState (LState.utxoSt lst)

data
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  _⊢_⇀⦇_,CHAIN⦈_ : ⊤ → ChainState → Block → ChainState → Type
\end{code}
\end{AgdaSuppressSpace}
\caption{Type of the CHAIN transition system}
\end{figure*}
\begin{code}[hide]
  where
\end{code}
\begin{figure*}[h]
\begin{AgdaSuppressSpace}
\begin{code}
  CHAIN :
\end{code}
\begin{code}[hide]
    let open ChainState s; open Block b; open NewEpochState nes
        open EpochState epochState; open EnactState es
        pp = pparams .proj₁; open PParams pp using (maxRefScriptSizePerBlock)
    in
\end{code}
\begin{code}
    totalRefScriptsSize ls ts ≤ maxRefScriptSizePerBlock
    →  _   ⊢ newEpochState ⇀⦇ epoch slot ,NEWEPOCH⦈ nes
    →  ⟦ slot , constitution .proj₁ .proj₂ , pp , es , Acnt.treasury acnt ⟧ˡᵉ ⊢ ls ⇀⦇ ts ,LEDGERS⦈ ls'
    ────────────────────────────────
    _ ⊢ s ⇀⦇ b ,CHAIN⦈ record s {  newEpochState =
                                   record nes {  epochState =
                                                 record epochState { ls = ls'} } }
\end{code}
\end{AgdaSuppressSpace}
\caption{CHAIN transition system}
\end{figure*}
