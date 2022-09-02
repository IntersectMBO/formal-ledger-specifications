\subsection{Witnessing}
\begin{code}[hide]
open import Prelude

open import Relation.Nullary

open import DecEq
open import FinMap renaming (FinMap to _↦_)

open import FinSet hiding (∅) renaming (FinSet to ℙ_)

open import ComputationalRelation
open import Ledger.Transaction

module Ledger.Utxow (txs : TransactionStructure) where

open import Ledger.Utxo txs

open TransactionStructure txs

open TxBody
open TxWitnesses
open Tx
\end{code}

\begin{figure*}[h]
\begin{code}
witsVKeyNeeded : UTxO → TxBody → ℙ KeyHash
witsVKeyNeeded utxo txb =
  mapPartial ((λ { (inj₁ kh) → just kh ; _ → nothing }) ∘ payCred ∘ proj₁) (utxo ⟪$⟫ txins txb)
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
          witsKeys = dom (vkSigs txw)
      in
    FinMap.All (λ { (vk , σ) → isSigned vk (txidBytes (txid txb)) σ }) (vkSigs txw)
    → witsVKeyNeeded utxo txb ⊆ FinSet.map hashKey witsKeys
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
