\subsection{Witnessing}
\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Prelude

open import Relation.Nullary

open import DecEq
open import FinMap renaming (FinMap to _↦_)

open import FinSet hiding (∅) renaming (FinSet to ℙ_)

open import ComputationalRelation
open import Ledger.Transaction

module Ledger.Utxow (txs : TransactionStructure) where

open import Ledger.Crypto

open TransactionStructure txs

open import Ledger.Utxo txs
import Data.Nat
open import Ledger.Script KeyHash ScriptHash ℕ Data.Nat._≤_ Data.Nat._≤ᵇ_

open TxBody
open TxWitnesses
open Tx
\end{code}

\begin{figure*}[h]
\begin{code}
witsVKeyNeeded : UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded utxo txb =
  mapPartial ((λ { (inj₁ kh) → just kh ; _ → nothing }) ∘ payCred ∘ proj₁) (utxo ⟪$⟫ txins txb)

scriptsNeeded : UTxO → TxBody → ℙ ScriptHash
scriptsNeeded utxo txb =
  mapPartial ((λ { (inj₂ sh) → just sh ; _ → nothing }) ∘ payCred ∘ proj₁) (utxo ⟪$⟫ txins txb)

scriptsP1 : TxWitnesses → ℙ P1Script
scriptsP1 txw = mapPartial (λ { (inj₁ s) → just s ; _ → nothing }) (scripts txw)
\end{code}
\caption{Functions used for witnessing}
\label{fig:functions:utxow}
\end{figure*}

\begin{figure*}[h]
\begin{code}[hide]
instance
  Computational⇒DecInst : ∀ {C S Sig c s sig s'} ⦃ _ : DecEq S ⦄
    {STS : C → S → Sig → S → Set} ⦃ comp : Computational STS ⦄ → Dec (STS c s sig s')
  Computational⇒DecInst ⦃ comp = comp ⦄ = Computational⇒Dec comp

  import Relation.Unary as U
  FSall? : {A : Set} {P : A → Set} {P? : U.Decidable P} ⦃ _ : DecEq A ⦄ {s : FinSet.FinSet A}
         → Dec (FinSet.All P s)
  FSall? {P? = P?} {s} = FinSet.all? P? s

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
    → let utxo = proj₁ s
          txb = body tx
          txw = wits tx
          witsKeyHashes = FinSet.map hash (dom (vkSigs txw))
          witsScriptHashes = FinSet.map hash (scripts txw)
      in
    FinMap.All (λ { (vk , σ) → isSigned vk (txidBytes (txid txb)) σ }) (vkSigs txw)
    → FinSet.All (validP1Script witsKeyHashes (txvldt txb)) (scriptsP1 txw)
    → witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    → scriptsNeeded utxo txb ⊆ witsScriptHashes
    → Γ ⊢ s ⇀⦇ txb ,UTXO⦈ s'
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
\end{code}
\caption{UTXOW inference rules}
\label{fig:rules:utxow}
\end{figure*}

\begin{code}[hide]
  --unquoteDecl Computational-UTXOW = deriveComputational (quote _⊢_⇀⦇_,UTXOW⦈_) Computational-UTXOW
\end{code}
