\subsection{UTxO}
\label{sec:utxo-properties}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.Utxo.Properties (txs : TransactionStructure) where

open import Prelude
open import Ledger.Prelude

open import Algebra.Morphism
open import Data.Nat.Properties using (+-0-commutativeMonoid; +-0-monoid; +-comm; +-identityʳ)
open import Interface.ComputationalRelation
open import Relation.Binary
open import Tactic.Cong
open import Tactic.EquationalReasoning
open import Tactic.MonoidSolver

open TransactionStructure txs

open import Ledger.Crypto
open import Ledger.PParams epochStructure
open import Ledger.TokenAlgebra using (TokenAlgebra)
open import Ledger.Utxo txs

open TxBody
open TxWitnesses
open Tx

open Equivalence
open Properties

open Tactic.EquationalReasoning.≡-Reasoning {A = ℕ} (solve-macro (quoteTerm +-0-monoid))

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra

private variable
  tx : TxBody
  utxo utxo' utxo1 utxo2 : UTxO
  fee fee' fees fees' : Coin
  utxoState utxoState' utxoState1 utxoState2 : UTxOState
  Γ : UTxOEnv
  s s' : UTxOState

⟦⟧-cong-Coin = IsCommutativeMonoidMorphism.⟦⟧-cong coinIsMonoidMorphism
∙-homo-Coin = IsCommutativeMonoidMorphism.∙-homo

balance-cong : proj₁ utxo ≡ᵉ proj₁ utxo' → balance utxo ≈ balance utxo'
balance-cong {utxo} {utxo'} = indexedSumᵐ-cong {x = utxo ᶠᵐ} {utxo' ᶠᵐ}

balance-cong-coin : proj₁ utxo ≡ᵉ proj₁ utxo' → cbalance utxo ≡ cbalance utxo'
balance-cong-coin {utxo} {utxo'} x = ⟦⟧-cong-Coin (balance-cong {utxo} {utxo'} x)

balance-∪ : disjoint (dom (utxo ˢ)) (dom (utxo' ˢ))
                     → cbalance (utxo ∪ᵐˡ utxo') ≡ cbalance utxo + cbalance utxo'
balance-∪ {utxo} {utxo'} h = begin
  cbalance (utxo ∪ᵐˡ utxo')
    ≡⟨ ⟦⟧-cong-Coin (indexedSumᵐ-cong {x = (utxo ∪ᵐˡ utxo') ᶠᵐ} {(utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)} (id , id)) ⟩
  coin (indexedSumᵐ _ ((utxo ᶠᵐ) ∪ᵐˡᶠ (utxo' ᶠᵐ)))
    ≡⟨ ⟦⟧-cong-Coin (indexedSumᵐ-∪ {X = utxo ᶠᵐ} {utxo' ᶠᵐ} h) ⟩
  coin (balance utxo +ᵛ balance utxo')
    ≡⟨ ∙-homo-Coin coinIsMonoidMorphism _ _ ⟩
  cbalance utxo + cbalance utxo' ∎

newTxid⇒disj : txid tx ∉ map proj₁ (dom (utxo ˢ)) → disjoint' (dom (utxo ˢ)) (dom ((outs tx) ˢ))
newTxid⇒disj id∉utxo = disjoint⇒disjoint' λ h h' → id∉utxo $ to ∈-map
  (-, (case from ∈-map h' of λ where (_ , refl , h'') → case from ∈-map h'' of λ where (_ , refl , _) → refl) , h)

consumedCoinEquality :  ∀ {pp} → coin (mint tx) ≡ 0 → coin (consumed pp utxo tx) ≡ cbalance (utxo ∣ txins tx)
consumedCoinEquality {tx} {utxo} h = begin
  coin (balance (utxo ∣ txins tx) +ᵛ mint tx) ≡⟨ ∙-homo-Coin coinIsMonoidMorphism _ _ ⟩
  cbalance (utxo ∣ txins tx) + coin (mint tx) ≡tʳ⟨ cong (cbalance (utxo ∣ txins tx) +_) h ⟩
  cbalance (utxo ∣ txins tx) ∎

producedCoinEquality : ∀ {pp} → coin (produced pp utxo tx) ≡ cbalance (outs tx) + (txfee tx) + coin (totalDeposits tx)
producedCoinEquality {utxo} {tx} = begin
  coin (balance (outs tx) +ᵛ inject (txfee tx) +ᵛ totalDeposits tx)             ≡⟨ ∙-homo-Coin coinIsMonoidMorphism _ _ ⟩
  coin (balance (outs tx) +ᵛ inject (txfee tx)) + coin (totalDeposits tx)       ≡⟨ cong (_+ coin (totalDeposits tx)) (∙-homo-Coin coinIsMonoidMorphism _ _) ⟩
  coin (balance (outs tx)) + coin (inject (txfee tx)) + coin (totalDeposits tx) ≡⟨ cong
                                                                                     (λ x → cbalance (outs tx) + x + coin (totalDeposits tx))
                                                                                     (property (txfee tx))
                                                                                ⟩
  cbalance (outs tx) + (txfee tx) + coin (totalDeposits tx)                     ∎

balCoinValueToCbalance : ∀ {pp} → coin (mint tx) ≡ 0 → (coin (consumed pp utxo tx) ≡ coin (produced pp utxo tx))
                                                       ≡ (cbalance (utxo ∣ txins tx) ≡ cbalance (outs tx) + (txfee tx) + coin (totalDeposits tx))
balCoinValueToCbalance {tx} {utxo} {pp} h rewrite (consumedCoinEquality {tx} {utxo} {pp} h)
                                                  | producedCoinEquality {utxo} {tx} {pp} = refl

balValueToCoin : ∀ {pp} → coin (mint tx) ≡ 0 → consumed pp utxo tx ≡ produced pp utxo tx
                                             → cbalance (utxo ∣ txins tx) ≡ cbalance (outs tx) + (txfee tx) + coin (totalDeposits tx)
balValueToCoin {utxo} {tx} {pp} h h' with cong coin h'
... | ans rewrite balCoinValueToCbalance {utxo} {tx} {pp} h = ans

\end{code}

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
pov {tx} {utxo} {_} {fee} h' (UTXO-inductive {Γ} _ _ _ _ newBal noMintAda _) =
  let h : disjoint (dom ((utxo ∣ txins tx ᶜ) ˢ)) (dom (outs tx ˢ))
      h = λ h₁ h₂ → ∉-∅ $ proj₁ (newTxid⇒disj {tx = tx} {utxo} h') $ to ∈-∩ (cores-domᵐ h₁ , h₂)
  in begin
  cbalance utxo + fee
    ≡tʳ⟨ cong (_+ fee) $ begin
      cbalance utxo
        ≡˘⟨ balance-cong-coin {utxo = (utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx)} {utxo' = utxo}
              (let open IsEquivalence ≡ᵉ-isEquivalence renaming (trans to _≡ᵉ-∘_)
               in (disjoint-∪ᵐˡ-∪ (disjoint-sym res-ex-disjoint) ≡ᵉ-∘ ∪-sym) ≡ᵉ-∘ res-ex-∪ (_∈? txins tx))  ⟩
      cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ (utxo ∣ txins tx))
        ≡⟨ balance-∪ {utxo ∣ txins tx ᶜ} {utxo ∣ txins tx} (flip (res-ex-disjoint)) ⟩
      {!!}
      --cbalance (utxo ∣ txins tx ᶜ) + cbalance (utxo ∣ txins tx)
      --  ≡tʳ⟨ cong (cbalance (utxo ∣ txins tx ᶜ) +_) (balValueToCoin {tx} {utxo} {UTxOEnv.pparams Γ} noMintAda newBal) ⟩
      --cbalance (utxo ∣ txins tx ᶜ) + cbalance (outs tx) + txfee tx
      --  ≡˘⟨ cong! (balance-∪ {utxo ∣ txins tx ᶜ} {outs tx} h) ⟩
      --cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + txfee tx ∎
    ⟩
  cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (txfee tx + fee)
    ≡˘⟨ cong (cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) +_) (+-comm fee (txfee tx)) ⟩
  cbalance ((utxo ∣ txins tx ᶜ) ∪ᵐˡ outs tx) + (fee + txfee tx) ∎

\end{code}

\end{property}
