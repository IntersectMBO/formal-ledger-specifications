\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxo.Properties (txs : TransactionStructure) where

open import Prelude
open import Ledger.Prelude

open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid; +-comm)
open import Interface.ComputationalRelation
open import Relation.Binary
open import Tactic.Cong
open import Tactic.EquationalReasoning
open import Tactic.MonoidSolver

open TransactionStructure txs

open import Ledger.Utxo txs
open import Ledger.PParams Epoch
open import Ledger.Crypto

open TxBody
open TxWitnesses
open Tx

open Equivalence
open Properties

open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

instance
  _ = +-0-commutativeMonoid

private variable
  tx : TxBody
  utxo utxo' utxo1 utxo2 : UTxO
  fee fee' fees fees' : Coin
  utxoState utxoState' utxoState1 utxoState2 : UTxOState
  Γ : UTxOEnv
  s s' : UTxOState

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≡ balance utxo'
balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ)) → balance (utxo ∪ᵐˡ utxo') ≡ balance utxo + balance utxo'
balance-∪ {utxo} {utxo'} h = begin
  balance (utxo ∪ᵐˡ utxo') ≡⟨ indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id) ⟩
  indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)) ≡⟨ indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h ⟩
  balance utxo + balance utxo' ∎

newTxid⇒disj : txid tx ∉ map proj₁ (dom (utxo ˢ)) → disjoint' (dom (utxo ˢ)) (dom ((outs tx) ˢ))
newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
  (-, (case from ∈-map h' of λ where (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)
\end{code}

\begin{property}[\textbf{Preserve Balance}]
For all $\var{env}\in\UTxOEnv$, $\var{utxo},\var{utxo'}\in\UTxO$, $\var{fee},\var{fee'}\in\Coin$ and $\var{tx}\in\TxBody$, if
\begin{code}[hide]
pov :
\end{code}
\begin{code}[inline*]
  txid tx ∉ map proj₁ (dom (utxo ˢ))
\end{code}
and
\begin{code}[hide]
  →
\end{code}
\begin{code}[inline*]
      Γ ⊢ ⟦ utxo , fee ⟧ᵘ ⇀⦇ tx ,UTXO⦈ ⟦ utxo' , fee' ⟧ᵘ
\end{code}
then
\begin{code}[hide]
  →
\end{code}
\begin{code}
      getCoin ⟦ utxo , fee ⟧ᵘ ≡ getCoin ⟦ utxo' , fee' ⟧ᵘ
\end{code}
\begin{code}[hide]
pov {tx} {utxo} {_} {fee} h' (UTXO-inductive _ _ _ _ bal-eq _) =
  let h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
      h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h') $ to ∈-∩ (cores-domᵐ h₁ , h₂)
  in begin
  balance utxo + fee
    ≡tʳ⟨ cong (_+ fee) $ begin
      balance utxo
        ≡˘⟨ balance-cong {utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)} {utxo' = utxo}
              (let open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to _≡ᵉ-∘_)
               in (disjoint-∪ᵐˡ-∪ (disjoint-sym res-ex-disjoint) ≡ᵉ-∘ ∪-sym) ≡ᵉ-∘ res-ex-∪ (_∈? txins tx)) ⟩
      balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx))
        ≡⟨ balance-∪ {utxo ∣ txins tx ᶜ} {utxo ∣ txins tx} (flip (res-ex-disjoint)) ⟩
      balance (utxo ∣ txins tx ᶜ) + balance (utxo ∣ txins tx)
        ≡tʳ⟨ cong (balance (utxo ∣ txins tx ᶜ) +_) bal-eq ⟩
      balance (utxo ∣ txins tx ᶜ) + balance (outs tx) + txfee tx
        ≡˘⟨ cong! (balance-∪ {utxo ∣ txins tx ᶜ} {outs tx} h) ⟩
      balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + txfee tx ∎
    ⟩
  balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (txfee tx + fee)
    ≡˘⟨ cong (balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) +_) (+-comm fee (txfee tx)) ⟩
  balance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (fee + txfee tx) ∎
\end{code}

\end{property}

Here, we state the fact that the UTxO relation is computable. This
just follows from our automation.

\begin{figure*}[h]
\begin{code}
UTXO-step : UTxOEnv → UTxOState → TxBody → Maybe UTxOState
UTXO-step = compute Computational-UTXO

UTXO-step-computes-UTXO :
  UTXO-step Γ utxoState tx ≡ just utxoState' ⇔ Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-just⇔STS Computational-UTXO
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}
