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


-- ≈
-- why can't I use ≡
-- do I need to define properties about rel in tokenalgebra?

balance-cong' : proj₁ utxo ≡ᵉ proj₁ utxo' → ubalance utxo ≈ ubalance utxo'
balance-cong' {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → ubalance utxo ≡ ubalance utxo'
balance-cong {utxo} {utxo'} x = relIsPropositionalEquality (balance-cong' {utxo} {utxo'} x)

{-
proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≡ balance utxo'
Have: (_≡ᵉ_ on proj₁) (utxo ᶠᵐ) (utxo' ᶠᵐ) →
      (_≡_ on Axiom.Set.Sum.indexedSumᵐ th _f_7546) (utxo ᶠᵐ) (utxo' ᶠᵐ)
-}

--indexedSumᵐ-cong {_} {_} {λ x → proj₂ (proj₂ x)} {utxo ᶠᵐ} {utxo' ᶠᵐ}
-- = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

{-
balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ)) → ubalance (utxo ∪ᵐˡ utxo') ≡ ubalance utxo + ubalance utxo'
balance-∪ {utxo} {utxo'} h = begin
  ubalance (utxo ∪ᵐˡ utxo') ≡⟨ indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id) ⟩
  indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)) ≡⟨ indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h ⟩
  ubalance utxo + ubalance utxo' ∎

newTxid⇒disj : txid tx ∉ map proj₁ (dom (utxo ˢ)) → disjoint' (dom (utxo ˢ)) (dom ((outs tx) ˢ))
newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
  (-, (case from ∈-map h' of λ where (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

-}
\end{code}
