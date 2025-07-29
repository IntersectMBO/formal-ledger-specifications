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
open import Ledger.Conway.Specification.Certs.Properties govStructure
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxo.Properties txs abs using (χ; module DepositHelpers)
open import Ledger.Conway.Specification.Utxo.Properties.PoV txs abs
open import Ledger.Conway.Specification.Utxow txs abs

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
```
-->


<a id="thm:LEDGER-PoV"></a>
**Theorem (`LEDGER`{.AgdaOperator} rule preserves value).**

*Informally*.

 Let , : `LState`{.AgdaRecord} be ledger states and let :
`Tx`{.AgdaRecord} be a *fresh* transaction, that is, a transaction
that is not already part of the `UTxOState`{.AgdaRecord} of . If
`⇀⦇`{.AgdaDatatype} `,LEDGER⦈`{.AgdaDatatype} , then the coin values
of and are equal, that is, `getCoin`{.AgdaField} $≡$
`getCoin`{.AgdaField} .

*Formally*.

```agda
  LEDGER-pov : {Γ : LEnv} {s s' : LState}
    → txid ∉ mapˢ proj₁ (dom (UTxOOf s))
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → getCoin s ≡ getCoin s'
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
```
