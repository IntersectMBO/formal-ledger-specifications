\section{Reaping Transition}
\label{sec:reaping-transition}
\modulenote{\LedgerModule{Reap}}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.PoolReap
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where
open import Ledger.Prelude
open import Ledger.Conway.Utxo txs abs
open import Ledger.Conway.Certs govStructure

\end{code}

\begin{figure*}[ht]
\begin{AgdaMultiCode}
\begin{code}
record PlReapState : Type where
\end{code}
\begin{code}[hide]
  constructor ⟦_,_,_,_⟧ᵖ
\end{code}
\begin{code}
  field
    utxoSt     : UTxOState   -- utxo state
    acnt       : Acnt        -- accounting
    dState     : DState      -- delegation state
    pState     : PState      -- pool state
\end{code}
\end{AgdaMultiCode}
\end{figure*}

\begin{code}[hide]
instance
  unquoteDecl HasCast-PlReapState = derive-HasCast
                [ (quote PlReapState , HasCast-PlReapState) ]
\end{code}

Recall, \PState{} is a record with two fields, \pools{} and \retiring{} (maps
on \KeyHash{} with codomains \PoolParams{} and \Epoch{}, respe.)  \PoolParams{}
is a record with just one field, the \rewardAddr{} credential.

\begin{code}
private variable
  e lastEpoch : Epoch
  plReapState : PlReapState
  pp : PParams

data _⊢_⇀⦇_,POOLREAP⦈_ : PParams → PlReapState → Epoch → PlReapState → Type where
  REAP : let
    -- open LState ls
    open PlReapState plReapState
    open UTxOState
    open PState
    open DState
    open Acnt
    open PParams

    -- retired := dom (retiring⁻¹ e) = { hk : (hk , e) ∈ retiring }  (Shelley Fig 41)
    retired    = (pState .retiring) ⁻¹ e


    -- pr = { hk ↦ (poolDeposit pp) | hk ∈ retired }
    --    = { (hk , poolDeposit pp) ∈ KeyHash × Coin | hk ∈ retired }  (Shelley Fig 41)
    pr = constMap retired  (pp .poolDeposit)

    -- rewardAcnts := { (hk , poolRAcnt pool) ∈ KeyHash × Credential | (hk , pool) ∈ poolParams ↾ retired }  (Shelley Fig 41)
    -- rewardAcnts : KeyHash ⇀ Credential
    rewardAcnts = (pState .pools) ∣ retired

    -- rewardAcnts' : RwdAddr ⇀ Coin
    -- rewardAcnts' =?= constMap (range (rewardAcnts ˢ)) (pp .poolDeposit)



    -- refunds := rewardAcnts' ↾ dom rewards         (recall, rewards : Credential ⇀ Coin is stored in DState))
    refunds    = _ -- pullbackMap (esW .withdrawals) toRwdAddr (dom (dState .rewards))
    --(recall, pullbackMap : (m : Map A B) → ⦃ ∀ {x} → (x ∈ dom (m ˢ)) ⁇ ⦄ → (A' → A) → Set A' → Map A' B)

    -- refunds =?= rewardAcnts' ∣ (dom (dState .rewards))

    -- mRefunds := rewardAcnts' ↾ (dom rewards)ᶜ

--    unclaimed  = getCoin (esW .withdrawals) - getCoin refunds
    -- cf. Shelley Fig 41: unclaimed := ∑ {c | ∃ hk (hk , c) ∈ mRefunds }

    utxoSt' = ⟦ utxoSt .utxo , utxoSt .fees , utxoSt .deposits , 0 ⟧
    -- cf. Shelley Fig 41: utxoSt' .deposits = utxoSt .deposits - (unclaimed + getCoin refunds)
    --                                       = utxoSt .deposits - getCoin (esW .withdrawals)

    acnt' = _
    -- record acnt
--      { treasury  = acnt .treasury ∸ totWithdrawals + utxoSt .donations + unclaimed }
    -- cf. Shelley spec fig 41: acnt' = acnt .treasury + utxoSt .donations + unclaimed

    dState' = ⟦ dState .voteDelegs , dState .stakeDelegs ,  dState .rewards ∪⁺ refunds ⟧

    pState' = ⟦ pState .pools ∣ retired ᶜ , pState .retiring ∣ retired ᶜ ⟧

    in
    ────────────────────────────────
    pp ⊢ ⟦ utxoSt , acnt , dState , pState ⟧ ⇀⦇ e ,POOLREAP⦈ ⟦ utxoSt' , acnt' , dState' , pState' ⟧
\end{code}
