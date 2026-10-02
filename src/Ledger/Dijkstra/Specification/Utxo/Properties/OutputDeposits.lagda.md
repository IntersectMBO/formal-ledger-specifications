---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/OutputDeposits.lagda.md
---

# Properties of Output Deposits {#sec:properties-of-output-deposits}

This module shows that the deposit store is accounted for exactly by the
declared store deposits and releases.  For every valid `SUBUTXO`{.AgdaDatatype}
or `UTXO`{.AgdaDatatype} step,

    storeBalance before + declared deposit ≡ storeBalance after + declared release,

and an invalid step leaves the recorded deposits unchanged.  These are the store
summands of the per-step coin equations assumed by the `LEDGER`{.AgdaDatatype}
preservation-of-value proof (`subutxow-step-coin`{.AgdaFunction} and
`UTXOW-V-mechanical`{.AgdaFunction}, stated there in terms of
`outCoin`{.AgdaFunction} and `inCoin`{.AgdaFunction}).

As with `balance-∪`{.AgdaFunction} and `split-balance`{.AgdaFunction} in that
proof, the two facts about sums over finite maps are taken as module parameters,
and so is the freshness of the new outputs' `TxIn`{.AgdaFunction}s.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Utxo.Properties.OutputDeposits
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Data.Nat.Properties using (+-assoc; +-comm)
open ≡-Reasoning
```
-->

```agda
module _
  ( storeBalance-∪ˡ : {m m' : OutputDeposits} → disjoint (dom m) (dom m')
      → storeBalance (m ∪ˡ m') ≡ storeBalance m + storeBalance m' )
  ( storeBalance-split : (m : OutputDeposits) (keys : ℙ TxIn)
      → storeBalance m ≡ storeBalance (m ∣ keys ᶜ) + storeBalance (m ∣ keys) )
  where
```

<!--
```agda
  private
    -- Pick a branch of the `if` in a rule's post-state without `rewrite`,
    -- which is very slow over the rules' many premises.
    if-true : (b : Bool) {A B : UTxOState} → b ≡ true → OutDepositsOf (if b then A else B) ≡ OutDepositsOf A
    if-true true refl = refl

    if-false : (b : Bool) {A B : UTxOState} → b ≡ false → OutDepositsOf (if b then A else B) ≡ OutDepositsOf B
    if-false false refl = refl

    swap-right : ∀ (a b c : ℕ) → a + b + c ≡ a + c + b
    swap-right a b c = trans (+-assoc a b c) (trans (cong (a +_) (+-comm b c)) (sym (+-assoc a c b)))

  -- The common step: applying a transaction's deposits to `deps` changes the
  -- store by exactly the declared deposit and release, given the
  -- `OutputDepositsOK` equalities and freshness of the new entries.
  store-step : (pp : PParams) {ℓ : TxLevel} (tx : Tx ℓ) (deps : OutputDeposits)
    → disjoint (dom (deps ∣ SpendInputsOf tx ᶜ)) (dom (newOutputDeposits pp tx))
    → StoreDepositOf tx ≡ storeDepositOf pp tx
    → StoreReleaseOf tx ≡ storeReleaseOf deps tx
    → storeBalance deps + StoreDepositOf tx
      ≡ storeBalance (applyOutputDeposits pp tx deps) + StoreReleaseOf tx
  store-step pp tx deps disj dep≡ rel≡ = begin
    storeBalance deps + StoreDepositOf tx
      ≡⟨ cong₂ _+_ (storeBalance-split deps (SpendInputsOf tx)) dep≡ ⟩
    storeBalance kept + storeBalance spent + storeBalance new
      ≡⟨ swap-right (storeBalance kept) (storeBalance spent) (storeBalance new) ⟩
    storeBalance kept + storeBalance new + storeBalance spent
      ≡˘⟨ cong (_+ storeBalance spent) (storeBalance-∪ˡ {kept} {new} disj) ⟩
    storeBalance (kept ∪ˡ new) + storeBalance spent
      ≡˘⟨ cong (storeBalance (kept ∪ˡ new) +_) rel≡ ⟩
    storeBalance (applyOutputDeposits pp tx deps) + StoreReleaseOf tx
      ∎
    where
      kept spent new : OutputDeposits
      kept  = deps ∣ SpendInputsOf tx ᶜ
      spent = deps ∣ SpendInputsOf tx
      new   = newOutputDeposits pp tx
```
-->

### Sub-transactions

```agda
  SUBUTXO-store : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ true
    → disjoint (dom (OutDepositsOf s₀ ∣ SpendInputsOf stx ᶜ))
               (dom (newOutputDeposits (PParamsOf Γ) stx))
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → storeBalance (OutDepositsOf s₀) + StoreDepositOf stx
      ≡ storeBalance (OutDepositsOf s₁) + StoreReleaseOf stx
```

<!--
```agda
  SUBUTXO-store {Γ} {s₀} {stx = stx} isV disj
    (SUBUTXO (_ , _ , _ , _ , _ , _ , (_ , _ , dep≡ , rel≡) , _)) =
    trans (store-step (PParamsOf Γ) stx (OutDepositsOf s₀) disj dep≡ rel≡)
          (cong (λ d → storeBalance d + StoreReleaseOf stx) (sym (if-true (IsTopLevelValidFlagOf Γ) isV)))
```
-->

```agda
  SUBUTXO-store-invalid : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ false
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → OutDepositsOf s₁ ≡ OutDepositsOf s₀
```

<!--
```agda
  SUBUTXO-store-invalid {Γ} isI (SUBUTXO _) = if-false (IsTopLevelValidFlagOf Γ) isI
```
-->

### Top-level transactions

```agda
  UTXO-store : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ true
    → disjoint (dom (OutDepositsOf s₀ ∣ SpendInputsOf tx ᶜ))
               (dom (newOutputDeposits (PParamsOf Γ) tx))
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → storeBalance (OutDepositsOf s₀) + StoreDepositOf tx
      ≡ storeBalance (OutDepositsOf s₁) + StoreReleaseOf tx
```

<!--
```agda
  UTXO-store {Γ} {s₀} {tx = tx} isV disj
    (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (_ , _ , dep≡ , rel≡) _ _ _ _ _ _ _ _ _ _) =
    trans (store-step (PParamsOf Γ) tx (OutDepositsOf s₀) disj dep≡ rel≡)
          (cong (λ d → storeBalance d + StoreReleaseOf tx) (sym (if-true (IsValidFlagOf tx) isV)))
```
-->

A failed batch applies only its collateral, and collateral inputs carry no
recorded deposit (premise (5) of `UTXO`{.AgdaDatatype}), so the recorded
deposits, and hence the store and every account's lock, are unchanged.

```agda
  UTXO-store-invalid : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ false
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → OutDepositsOf s₁ ≡ OutDepositsOf s₀
```

<!--
```agda
  UTXO-store-invalid {tx = tx} isI (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
    if-false (IsValidFlagOf tx) isI
```
-->
