\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

import Data.Maybe as M
import Data.Nat

open import Interface.Decidable.Instance

open import Ledger.Prelude
open import Ledger.Crypto
open import Ledger.Transaction

module Ledger.Utxow (txs : _) (open TransactionStructure txs) where
open import Ledger.Utxo txs
\end{code}

\begin{figure*}[h]
\begin{code}[hide]
\end{code}
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isInj₁

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isInj₂

credsNeeded : Maybe ScriptHash → UTxO → TxBody → ℙ Credential
credsNeeded sh utxo txb
  =  map (payCred ∘ proj₁) ((utxo ˢ) ⟪$⟫ txins)
  ∪  map cwitness (fromList txcerts)
  ∪  map GovVote.credential (fromList txvote)
  ∪  mapPartial (const (M.map inj₂ sh)) (fromList txprop)
  where open TxBody txb

witsVKeyNeeded : Maybe ScriptHash → UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded sh = getVKeys ∘₂ credsNeeded sh

scriptsNeeded  : Maybe ScriptHash → UTxO → TxBody → ℙ ScriptHash
scriptsNeeded sh = getScripts ∘₂ credsNeeded sh
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
    → let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
          open UTxOState s; open UTxOEnv Γ
          witsKeyHashes     = map hash (dom (vkSigs ˢ))
          witsScriptHashes  = map hash scripts
      in
       ∀[ (vk , σ) ∈ vkSigs ˢ ] isSigned vk (txidBytes txid) σ
    →  ∀[ s ∈ scriptsP1 ] validP1Script witsKeyHashes txvldt s
    →  witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    →  scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    →  txADhash ≡ M.map hash txAD
    →  Γ ⊢ s ⇀⦇ txb ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
