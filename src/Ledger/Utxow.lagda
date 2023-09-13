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
open import Ledger.Utxo ⋯
\end{code}

\begin{figure*}[h]
\begin{code}
getVKeys : ℙ Credential → ℙ KeyHash
getVKeys = mapPartial isInj₁

getScripts : ℙ Credential → ℙ ScriptHash
getScripts = mapPartial isInj₂

module _ (ppolicy : Maybe ScriptHash) (utxo : UTxO) (txb : _) (open TxBody txb) where

  credsNeeded : ℙ Credential
  credsNeeded  =  map (payCred ∘ proj₁) ((utxo ˢ) ⟪$⟫ txins)
               ∪  map cwitness (fromList txcerts)
               ∪  map GovVote.credential (fromList txvote)
               ∪  mapPartial (const (M.map inj₂ ppolicy)) (fromList txprop)

  witsVKeyNeeded : ℙ KeyHash
  witsVKeyNeeded = getVKeys credsNeeded

  scriptsNeeded  : ℙ ScriptHash
  scriptsNeeded = getScripts credsNeeded
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
    → ∀[ s ∈ scriptsP1 ] validP1Script witsKeyHashes txvldt s
    → witsVKeyNeeded ppolicy utxo txb ⊆ witsKeyHashes
    → scriptsNeeded ppolicy utxo txb ≡ᵉ witsScriptHashes
    → txADhash ≡ M.map hash txAD
    → Γ ⊢ s ⇀⦇ txb ,UTXO⦈ s'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}
