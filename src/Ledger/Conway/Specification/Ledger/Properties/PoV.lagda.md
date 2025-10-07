<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Ledger.Properties.PoV
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Chain txs abs
open import Ledger.Conway.Specification.Certs.Properties.Computational govStructure
open import Ledger.Conway.Specification.Certs.Properties.PoV govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxo.Properties.PoV txs abs
open import Ledger.Conway.Specification.Utxow txs abs

open import Axiom.Set.Properties th

open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-comm; +-assoc; *-identityʳ; *-zeroʳ)

-- ** Proof that LEDGER preserves values.

instance
  HasCoin-LState : HasCoin LState
  HasCoin-LState .CoinOf s = CoinOf (LState.utxoSt s) + CoinOf (LState.certState s)

module _
  (tx : Tx) (let open Tx tx; open TxBody body)
  ( indexedSumᵛ'-∪  :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → disjoint (dom m) (dom m') → CoinOf (m ∪ˡ m') ≡ CoinOf m + CoinOf m' )
  ( sumConstZero    :  {A : Type} ⦃ _ : DecEq A ⦄ {X : ℙ A} → CoinOf (constMap X 0) ≡ 0 )
  ( res-decomp      :  {A : Type} ⦃ _ : DecEq A ⦄ (m m' : A ⇀ Coin)
                       → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ )
  ( CoinOf-cong    :  {A : Type} ⦃ _ : DecEq A ⦄ (s : A ⇀ Coin) (s' : ℙ (A × Coin)) → s ˢ ≡ᵉ s'
                       → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s' )
  ( ≡ᵉ-CoinOfˢ     :  {A A' : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq A' ⦄ (s : ℙ (A × Coin)) {f : A → A'}
                       → InjectiveOn (dom s) f → CoinOf (mapˢ (map₁ f) s) ≡ CoinOf s )
  where

  pattern UTXO-induction r = UTXO-inductive⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ r _ _ _
```
-->

<a id="thm:LEDGER-PoV"></a>
**Theorem (The `LEDGER`{.AgdaOperator} rule preserves value).**

*Informally*.

 Let `s`{.AgdaBound} and `s'`{.AgdaBound} be ledger states and
 let `tx`{.AgdaBound} : `Tx`{.AgdaRecord} be a *fresh* transaction, that is, a transaction
that is not already part of the `UTxOState`{.AgdaRecord} of `s`{.AgdaBound}. If
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `s'`{.AgdaBound},
then the coin values of `s`{.AgdaBound} and `s'`{.AgdaBound} are equal, that is, 
`CoinOf`{.AgdaField} `s`{.AgdaBound} $≡$ `CoinOf`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
  LEDGER-pov : {Γ : LEnv} {s s' : LState}
    → txId ∉ mapˢ proj₁ (dom (UTxOOf s))
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → CoinOf s ≡ CoinOf s'
```

*Proof*.

```agda
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
      open Certs-PoV indexedSumᵛ'-∪ sumConstZero res-decomp  CoinOf-cong ≡ᵉ-CoinOfˢ
      zeroMap    = constMap (mapˢ RwdAddr.stake (dom txWithdrawals)) 0
    in
    begin
      CoinOf utxoSt + CoinOf certState
        ≡⟨ cong (CoinOf utxoSt +_) (CERTS-pov r h') ⟩
      CoinOf utxoSt + (CoinOf certState' + CoinOf txWithdrawals)
        ≡˘⟨ cong (λ x → CoinOf utxoSt + (CoinOf certState' + x )) (*-identityʳ (CoinOf txWithdrawals)) ⟩
      CoinOf utxoSt + (CoinOf certState' + CoinOf txWithdrawals * 1)
        ≡˘⟨ cong (λ u → CoinOf utxoSt + (CoinOf certState' + CoinOf txWithdrawals * χ u)) valid ⟩
      CoinOf utxoSt + (CoinOf certState' + CoinOf txWithdrawals * χ isValid)
        ≡⟨ cong (CoinOf utxoSt +_) (+-comm (CoinOf certState') _) ⟩
      CoinOf utxoSt + (CoinOf txWithdrawals * χ isValid + CoinOf certState')
        ≡˘⟨ +-assoc (CoinOf utxoSt) (CoinOf txWithdrawals * χ isValid) (CoinOf certState') ⟩
      CoinOf utxoSt + CoinOf txWithdrawals * χ isValid + CoinOf certState'
        ≡⟨ cong (_+ CoinOf certState') (UTXOpov h st) ⟩
      CoinOf utxoSt' + CoinOf certState'
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
      CoinOf ⟦ utxo , fees , deposits , donations ⟧
        ≡˘⟨ +-identityʳ (CoinOf ⟦ utxo , fees , deposits , donations ⟧) ⟩
      CoinOf ⟦ utxo , fees , deposits , donations ⟧ + 0
        ≡˘⟨ cong (CoinOf ⟦ utxo , fees , deposits , donations ⟧ +_) (*-zeroʳ (CoinOf txWithdrawals)) ⟩
      CoinOf ⟦ utxo , fees , deposits , donations ⟧ + CoinOf txWithdrawals * 0
        ≡˘⟨ cong (λ x → CoinOf ⟦ utxo , fees , deposits , donations ⟧ + CoinOf txWithdrawals * χ x) invalid ⟩
      CoinOf ⟦ utxo , fees , deposits , donations ⟧ + CoinOf txWithdrawals * χ isValid
        ≡⟨ UTXOpov h st ⟩
      CoinOf ⟦ utxo' , fees' , deposits' , donations' ⟧ ∎ )
    where open ≡-Reasoning
```
