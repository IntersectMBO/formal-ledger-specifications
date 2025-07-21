\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Transaction
open import Ledger.Conway.Abstract

module Ledger.Conway.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\LedgerPoV}{Conway/Ledger/Properties/PoV}

\begin{code}[hide]
open import Ledger.Conway.Certs govStructure
open import Ledger.Conway.Chain txs abs
open import Ledger.Conway.Certs.Properties govStructure
open import Ledger.Conway.Ledger txs abs
open import Ledger.Prelude
open import Ledger.Conway.Utxo txs abs
open import Ledger.Conway.Utxo.Properties txs abs using (χ; module DepositHelpers)
open import Ledger.Conway.Utxo.Properties.PoV txs abs
open import Ledger.Conway.Utxow txs abs

open import Axiom.Set.Properties th

open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-comm; +-assoc; *-identityʳ; *-zeroʳ)

-- ** Proof that LEDGER preserves values.

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .getCoin s = getCoin (LState.utxoSt s) + getCoin (LState.certState s)

module _
  (tx : Tx) (let open Tx tx; open TxBody body)
  ( indexedSumᵛ'-∪  :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → disjoint (dom m) (dom m') → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m' )
  ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → getCoin (constMap X 0) ≡ 0 )
  ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
  ( getCoin-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                       → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
  ( ≡ᵉ-getCoinˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                       → InjectiveOn (dom s) f → getCoin (mapˢ (map₁ f) s) ≡ getCoin s )
  where

  pattern UTXO-induction r = UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ r _ _ _

\end{code}

\begin{theorem}[\LedgerMod{\LedgerPoV.lagda}{\AgdaModule{\LedgerPoV{}}}: \LEDGER{} rule preserves value]
  \label{thm:LEDGER-PoV}
  \begin{itemize}
    \item \textit{Informally}.
    Let \AgdaBound{s}, \AgdaBound{s'}~:~\LState{} be ledger states and let \AgdaBound{tx}~:~\Tx{} be a
    \textit{fresh} transaction, that is, a transaction that is not already part of the
    \UTxOState{} of \AgdaBound{s}. If \AgdaBound{s}~\AgdaDatatype{⇀⦇}~\AgdaBound{tx}~\AgdaDatatype{,LEDGER⦈}~\AgdaBound{s'},
    then the coin values of \AgdaBound{s} and \AgdaBound{s'} are equal, that is,
    \AgdaField{getCoin}~\AgdaBound{s} $≡$ \AgdaField{getCoin}~\AgdaBound{s'}.
    \item \textit{Formally}.
\begin{AgdaMultiCode}
\begin{code}
  LEDGER-pov : {Γ : LEnv} {s s' : LState}
    → txid ∉ mapˢ proj₁ (dom (UTxOOf s))
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
\end{code}
\end{AgdaMultiCode}
    \item \textit{Proof}. See the
      \LedgerMod{\LedgerPoV.lagda}{\AgdaModule{\LedgerPoV{}}}
      module in the \href{\repourl}{formal ledger repository}.
\begin{code}[hide]
  -- Proof.
  LEDGER-pov
    {s  = s}
    {s' = s'}
    h (LEDGER-V {utxoSt' = utxoSt''} ( valid , UTXOW⇒UTXO st@(UTXO-induction r) , h' , _ )) =
    let
      open LState s
      open CertState certState
      open LState s' renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certState')
      open CertState certState'
      open ≡-Reasoning
      open CERTSpov indexedSumᵛ'-∪ sumConstZero res-decomp  getCoin-cong ≡ᵉ-getCoinˢ r
      zeroMap    = constMap (mapˢ RwdAddr.stake (dom txwdrls)) 0
    in
    begin
      getCoin utxoSt + getCoin certState
        ≡⟨ cong (getCoin utxoSt +_) (CERTS-pov h') ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txwdrls)
        ≡˘⟨ cong (λ x → getCoin utxoSt + (getCoin certState' + x )) (*-identityʳ (getCoin txwdrls)) ⟩  -- cong (λ u → getCoin utxoSt + (getCoin certState' + getCoin txwdrls * χ u)) valid ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txwdrls * 1)
        ≡˘⟨ cong (λ u → getCoin utxoSt + (getCoin certState' + getCoin txwdrls * χ u)) valid ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txwdrls * χ isValid)
        ≡⟨ cong (getCoin utxoSt +_) (+-comm (getCoin certState') _) ⟩
      getCoin utxoSt + (getCoin txwdrls * χ isValid + getCoin certState')
        ≡˘⟨ +-assoc (getCoin utxoSt) (getCoin txwdrls * χ isValid) (getCoin certState') ⟩
      getCoin utxoSt + getCoin txwdrls * χ isValid + getCoin certState'
        ≡⟨ cong (_+ getCoin certState') (UTXOpov h st) ⟩
      getCoin utxoSt' + getCoin certState'
        ∎

  LEDGER-pov  {s = s}
              {s' = s'}
              h (LEDGER-I {utxoSt' = utxoSt''} (invalid , UTXOW⇒UTXO st)) =
    let
        open LState s
        open CertState certState
        open LState s' renaming (utxoSt to utxoSt'; govSt to govSt'; certState to certState')
        open UTxOState utxoSt
        open UTxOState utxoSt' renaming (utxo to utxo'; fees to fees'
                                        ; deposits to deposits'; donations to donations') in
    cong (_+ rewardsBalance dState)
    ( begin
      getCoin ⟦ utxo , fees , deposits , donations ⟧
        ≡˘⟨ +-identityʳ (getCoin ⟦ utxo , fees , deposits , donations ⟧) ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + 0
        ≡˘⟨ cong (getCoin ⟦ utxo , fees , deposits , donations ⟧ +_) (*-zeroʳ (getCoin txwdrls)) ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txwdrls * 0
        ≡˘⟨ cong (λ x → getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txwdrls * χ x) invalid ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txwdrls * χ isValid
        ≡⟨ UTXOpov h st ⟩
      getCoin ⟦ utxo' , fees' , deposits' , donations' ⟧ ∎ )
    where open ≡-Reasoning
\end{code}
  \end{itemize}
\end{theorem}
