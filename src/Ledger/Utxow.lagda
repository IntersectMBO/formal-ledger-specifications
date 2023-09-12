\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxow (txs : TransactionStructure) where

open import Ledger.Prelude

import Data.Maybe as M
import Data.Nat

open TransactionStructure txs
open import Ledger.Crypto
open import Ledger.Utxo txs

open import Interface.Decidable.Instance

open TxBody
open TxWitnesses
open Tx
\end{code}

\begin{figure*}[h]
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isInj₁

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isInj₂

credsNeeded : Maybe ScriptHash → UTxO → TxBody → ℙ Credential
credsNeeded ppolicy utxo txb =
    map (payCred ∘ proj₁) ((utxo ˢ) ⟪$⟫ txins txb)
  ∪ map cwitness (setFromList $ txcerts txb)
  ∪ map GovVote.credential (setFromList $ txvote txb)
  ∪ mapPartial (const (M.map inj₂ ppolicy)) (setFromList $ txprop txb)

witsVKeyNeeded : Maybe ScriptHash → UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded sh utxo = getVKeys ∘ credsNeeded sh utxo

scriptsNeeded : Maybe ScriptHash → UTxO → TxBody → ℙ ScriptHash
scriptsNeeded sh utxo = getScripts ∘ credsNeeded sh utxo

scriptsP1 : TxWitnesses → ℙ P1Script
scriptsP1 txw = mapPartial isInj₁ (scripts txw)
\end{code}
\caption{Functions used for witnessing}
\label{fig:functions:utxow}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
data
\end{code}
\begin{code}
  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Set
\end{code}
\caption{UTxOW transition-system types}
\label{fig:ts-types:utxow}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
All′ = All
syntax All′ (λ x → P) l = ∀[ x ∈ l ] P
data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    ∀ {Γ} {s} {tx} {s'}
    → let utxo = UTxOState.utxo s
          ppolicy = UTxOEnv.ppolicy Γ
          txb = body tx
          txw = wits tx
          witsKeyHashes = map hash (dom (vkSigs txw ˢ))
          witsScriptHashes = map hash (scripts txw)
      in
    ∀[ (vk , σ) ∈ vkSigs txw ˢ ] isSigned vk (txidBytes (txid txb)) σ
    → ∀[ s ∈ scriptsP1 txw ] validP1Script witsKeyHashes (txvldt txb) s
    → witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    → scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    → txADhash txb ≡ M.map hash (txAD tx)
    → Γ ⊢ s ⇀⦇ txb ,UTXO⦈ s'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
