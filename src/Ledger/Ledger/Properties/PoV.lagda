\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\LedgerPoV}{Ledger/Properties/PoV}

\begin{code}[hide]
open import Ledger.Certs govStructure
open import Ledger.Chain txs abs
open import Ledger.Certs.Properties govStructure
open import Ledger.Ledger txs abs
open import Ledger.Prelude
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs using (χ; module DepositHelpers)
open import Ledger.Utxo.Properties.PoV txs abs
open import Ledger.Utxow txs abs

open import Axiom.Set.Properties th

open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-comm; +-assoc)

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

  pattern UTXO-induction r = UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ r _ _ _

\end{code}

\begin{theorem}[\LedgerMod{\LedgerPoV.lagda}{\AgdaModule{\LedgerPoV{}}}: \LEDGER{} rule preserves value]
  \label{thm:LEDGER-PoV}
  \begin{itemize}
    \item \textit{Informally}.
    Let \ab{s}, \ab{s'}~:~\LState{} be ledger states and let \ab{tx}~:~\Tx{} be a
    \textit{fresh} transaction, that is, a transaction that is not already part of the
    \UTxOState{} of \ab{s}. If \ab{s}~\AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,LEDGER⦈}~\ab{s'},
    then the coin values of \ab{s} and \ab{s'} are equal, that is,
    \AgdaField{getCoin}~\ab{s} $≡$ \AgdaField{getCoin}~\ab{s'}.
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
        ≡˘⟨ cong (λ u → getCoin utxoSt + (getCoin certState' + χ (getCoin txwdrls , u))) valid ⟩
      getCoin utxoSt + (getCoin certState' + χ (getCoin txwdrls , isValid))
        ≡⟨ cong (getCoin utxoSt +_) (+-comm (getCoin certState') _) ⟩
      getCoin utxoSt + (χ (getCoin txwdrls , isValid) + getCoin certState')
        ≡˘⟨ +-assoc (getCoin utxoSt) (χ (getCoin txwdrls , isValid)) (getCoin certState') ⟩
      getCoin utxoSt + χ (getCoin txwdrls , isValid) + getCoin certState'
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
        ≡˘⟨ cong (λ x → getCoin ⟦ utxo , fees , deposits , donations ⟧ + χ(getCoin txwdrls , x)) invalid ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + χ(getCoin txwdrls , isValid)
        ≡⟨ UTXOpov h st ⟩
      getCoin ⟦ utxo' , fees' , deposits' , donations' ⟧ ∎ )
    where open ≡-Reasoning
\end{code}
  \end{itemize}
\end{theorem}
