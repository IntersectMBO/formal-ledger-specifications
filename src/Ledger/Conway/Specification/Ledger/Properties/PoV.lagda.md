---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/PoV.lagda.md
---

## Theorem: The <span class="AgdaDatatype">LEDGER</span> rule preserves value {#thm:LEDGER-PoV}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Transaction
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
```
-->

*Informally*.

 Let `s`{.AgdaBound} and `s'`{.AgdaBound} be ledger states and
 let `tx`{.AgdaBound} : `Tx`{.AgdaRecord} be a *fresh* transaction, that is, a transaction
that is not already part of the `UTxOState`{.AgdaRecord} of `s`{.AgdaBound}. If
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `s'`{.AgdaBound},
then the coin values of `s`{.AgdaBound} and `s'`{.AgdaBound} are equal, that is,
`getCoin`{.AgdaField} `s`{.AgdaBound} $≡$ `getCoin`{.AgdaField} `s'`{.AgdaBound}.

*Formally*.

```agda
  LEDGER-pov : {Γ : LEnv} {s s' : LState}
    → txId ∉ mapˢ proj₁ (dom (UTxOOf s))
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
```

*Proof*.  (Click the "Show more Agda" button to reveal the formal proof.)

<!--
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
      open Certs-PoV indexedSumᵛ'-∪ sumConstZero res-decomp  getCoin-cong ≡ᵉ-getCoinˢ
      zeroMap    = constMap (mapˢ RewardAddress.stake (dom txWithdrawals)) 0
    in
    begin
      getCoin utxoSt + getCoin certState
        ≡⟨ cong (getCoin utxoSt +_) (CERTS-pov r h') ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txWithdrawals)
        ≡˘⟨ cong (λ x → getCoin utxoSt + (getCoin certState' + x )) (*-identityʳ (getCoin txWithdrawals)) ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txWithdrawals * 1)
        ≡˘⟨ cong (λ u → getCoin utxoSt + (getCoin certState' + getCoin txWithdrawals * χ u)) valid ⟩
      getCoin utxoSt + (getCoin certState' + getCoin txWithdrawals * χ isValid)
        ≡⟨ cong (getCoin utxoSt +_) (+-comm (getCoin certState') _) ⟩
      getCoin utxoSt + (getCoin txWithdrawals * χ isValid + getCoin certState')
        ≡˘⟨ +-assoc (getCoin utxoSt) (getCoin txWithdrawals * χ isValid) (getCoin certState') ⟩
      getCoin utxoSt + getCoin txWithdrawals * χ isValid + getCoin certState'
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
        ≡˘⟨ cong (getCoin ⟦ utxo , fees , deposits , donations ⟧ +_) (*-zeroʳ (getCoin txWithdrawals)) ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txWithdrawals * 0
        ≡˘⟨ cong (λ x → getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txWithdrawals * χ x) invalid ⟩
      getCoin ⟦ utxo , fees , deposits , donations ⟧ + getCoin txWithdrawals * χ isValid
        ≡⟨ UTXOpov h st ⟩
      getCoin ⟦ utxo' , fees' , deposits' , donations' ⟧ ∎ )
    where open ≡-Reasoning
```
-->
