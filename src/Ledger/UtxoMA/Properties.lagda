\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.UtxoMA.Properties (txs : TransactionStructure) where

open import Prelude
open import Ledger.Prelude

open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid; +-comm)
open import Interface.ComputationalRelation
open import Relation.Binary
open import Tactic.Cong
open import Tactic.EquationalReasoning
open import Tactic.MonoidSolver

open TransactionStructure txs

open import Ledger.UtxoMA txs
open import Ledger.PParams Epoch
open import Ledger.Crypto
open import Ledger.TokenAlgebra using (TokenAlgebra)
open import Algebra.Morphism

open TxBody
open TxWitnesses
open Tx

open Equivalence
open Properties

open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

instance
  _ = TokenAlgebra.Value tokenAlgebra

private variable
  tx : TxBody
  utxo utxo' utxo1 utxo2 : UTxO
  fee fee' fees fees' : Coin
  utxoState utxoState' utxoState1 utxoState2 : UTxOState
  Γ : UTxOEnv
  s s' : UTxOState

balance-cong' : proj₁ utxo ≡ᵉ proj₁ utxo' → ubalance utxo ≈ ubalance utxo'
balance-cong' {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

--balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → ubalance utxo ≡ ubalance utxo'
--balance-cong {utxo} {utxo'} x = relIsPropositionalEquality (balance-cong' {utxo} {utxo'} x)
--

balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → coin (ubalance utxo) ≡ coin (ubalance utxo')
balance-cong-coin {utxo} {utxo'} x = relImpliesCoinEquality (balance-cong' {utxo} {utxo'} x)

balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ))
                     → coin (ubalance (utxo ∪ᵐˡ utxo')) ≡ coin (ubalance utxo) + coin (ubalance utxo')
balance-∪ {utxo} {utxo'} h = begin
  coin (ubalance (utxo ∪ᵐˡ utxo')) ≡⟨ relImpliesCoinEquality (indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id)) ⟩
  coin (indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ))) ≡⟨ relImpliesCoinEquality (indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h) ⟩
  coin (ubalance utxo +ᵛ ubalance utxo') ≡⟨ IsCommutativeMonoidMorphism.∙-homo coin-monoid-morphism _ _ ⟩
  coin (ubalance utxo) + coin (ubalance utxo') ∎

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
      coin (ubalance utxo) + fee ≡ coin (ubalance utxo') + fee'
\end{code}
\begin{code}[hide]
pov {tx} {utxo} {_} {fee} h' (UTXO-inductive _ _ newBal coinNewBal bal-eq _ _ _ _ _ _ _ _) =
  let h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
      h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h') $ to ∈-∩ (cores-domᵐ h₁ , h₂)
  in begin
  coin (ubalance utxo) + fee
    ≡tʳ⟨ cong (_+ fee) $ begin
      coin (ubalance utxo)
        ≡˘⟨ balance-cong-coin {utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)} {utxo' = utxo}
              (let open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to _≡ᵉ-∘_)
               in (disjoint-∪ᵐˡ-∪ (disjoint-sym res-ex-disjoint) ≡ᵉ-∘ ∪-sym) ≡ᵉ-∘ res-ex-∪ (_∈? txins tx))  ⟩
      coin (ubalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)))
        ≡⟨ balance-∪ {utxo ∣ txins tx ᶜ} {utxo ∣ txins tx} (flip (res-ex-disjoint)) ⟩
      coin (ubalance (utxo ∣ txins tx ᶜ)) + coin (ubalance (utxo ∣ txins tx))
        ≡tʳ⟨ cong ((coin (ubalance (utxo ∣ txins tx ᶜ))) +_) bal-eq ⟩
      coin (ubalance (utxo ∣ txins tx ᶜ)) + coin (ubalance (outs tx)) + txfee tx
        ≡˘⟨ cong! (balance-∪ {utxo ∣ txins tx ᶜ} {outs tx} h) ⟩
      coin (ubalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)) + txfee tx ∎
    ⟩
  coin (ubalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)) + (txfee tx + fee)
    ≡˘⟨ cong ((coin (ubalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx))) +_) (+-comm fee (txfee tx)) ⟩
  coin (ubalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx)) + (fee + txfee tx) ∎

\end{code}

\end{property}

Here, we state the fact that the UTxO relation is computable. This
just follows from our automation.

\begin{figure*}[h]
\begin{code}
{-
UTXO-step : UTxOEnv → UTxOState → TxBody → Maybe UTxOState
UTXO-step = compute Computational-UTXO

UTXO-step-computes-UTXO :
  UTXO-step Γ utxoState tx ≡ just utxoState' ⇔ Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-just⇔STS Computational-UTXO
-}
\end{code}
\caption{Computing the UTXO transition system}
\end{figure*}
