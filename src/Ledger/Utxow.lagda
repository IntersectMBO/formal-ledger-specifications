\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Maybe as M
import Data.Nat

open import Interface.Decidable.Instance

open import Ledger.Prelude
open import Ledger.Crypto
open import Ledger.Transaction

module Ledger.Utxow (⋯ : _) (open TransactionStructure ⋯) where
open TxBody
open TxWitnesses
open Tx
open import Ledger.Utxo ⋯
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
  ∪ map cwitness (fromList $ txcerts txb)
  ∪ map GovVote.credential (fromList $ txvote txb)
  ∪ mapPartial (const (M.map inj₂ ppolicy)) (fromList $ txprop txb)

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
data _⊢_⇀⦇_,UTXOW⦈_ where
\end{code}
\begin{code}
  UTXOW-inductive :
    ∀ {Γ} {s} {tx} {s'}
    → let open UTxOState s; open UTxOEnv Γ
          txb = tx .body; txw = tx .wits
          witsKeyHashes    = map hash (dom (txw .vkSigs ˢ))
          witsScriptHashes = map hash (txw .scripts )
      in
    ∀[ (vk , σ) ∈ txw .vkSigs ˢ ] isSigned vk (txb .txid .txidBytes) σ
    → ∀[ s ∈ scriptsP1 txw ] validP1Script witsKeyHashes (txb .txvldt) s
    → witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    → scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    → txb .txADhash ≡ M.map hash (tx .txAD)
    → Γ ⊢ s ⇀⦇ txb ,UTXO⦈ s'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
