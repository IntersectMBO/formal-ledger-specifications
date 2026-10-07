---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/DepositStore.lagda.md
---

# Properties of the Deposit Store: Single Steps {#sec:properties-of-the-deposit-store-steps}

This module derives, from the `SUBUTXO`{.AgdaDatatype} and `UTXO`{.AgdaDatatype}
rules, how a single step changes the deposit store and the recorded backing.

+  A valid subtransaction leaves the store unchanged, and changes the total
   recorded backing by exactly its declared deposit minus its declared withdrawal
   (`SUBUTXO-backing`{.AgdaFunction}).
+  A valid top-level transaction changes the store by exactly its declared batch
   deposit minus its declared batch withdrawal (`UTXO-store`{.AgdaFunction}), and
   changes the total recorded backing by the backing it creates minus the backing
   its own inputs release (`UTXO-backing`{.AgdaFunction}).
+  Invalid steps change neither.

These are composed over a whole batch in `Ledger.Properties.DepositStore`{.AgdaModule}.

As with `balance-∪`{.AgdaFunction} and `split-balance`{.AgdaFunction} in the
`LEDGER`{.AgdaDatatype} preservation-of-value proof, the two facts about sums
over finite maps are module parameters, and so is the freshness of each
transaction's new outputs.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Utxo.Properties.DepositStore
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Utxo txs abs

open import Data.Nat.Base using () renaming (_+_ to _+ᴺ_)
open import Data.Nat.Properties using (+-cancelʳ-≡; m∸n+n≡m)
open import Data.Nat.Tactic.RingSolver using (solve-∀)
open ≡-Reasoning
```
-->

```agda
module Steps
  ( totalBacking-∪ˡ : {m m' : StoreBacking} → disjoint (dom m) (dom m')
      → totalBacking (m ∪ˡ m') ≡ totalBacking m + totalBacking m' )
  ( totalBacking-split : (m : StoreBacking) (keys : ℙ TxIn)
      → totalBacking m ≡ totalBacking (m ∣ keys ᶜ) + totalBacking (m ∣ keys) )
  where
```

<!--
```agda
  private
    -- Pick a branch of the `if` in a rule's post-state without `rewrite`,
    -- which is very slow over the rules' many premises.
    if-true : {X : Type} (f : UTxOState → X) (b : Bool) {A B : UTxOState}
      → b ≡ true → f (if b then A else B) ≡ f A
    if-true f true refl = refl

    if-false : {X : Type} (f : UTxOState → X) (b : Bool) {A B : UTxOState}
      → b ≡ false → f (if b then A else B) ≡ f B
    if-false f false refl = refl

    if-same : {X : Type} (f : UTxOState → X) (b : Bool) {A B : UTxOState} {x : X}
      → f A ≡ x → f B ≡ x → f (if b then A else B) ≡ x
    if-same f true  eA _  = eA
    if-same f false _  eB = eB

    swap-right : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
    swap-right = solve-∀

    -- From `B₀ + C ≡ B₁ + R` (the step) and `C + W ≡ R + D` (the declaration),
    -- conclude `B₀ + D ≡ B₁ + W` by cancelling `R`.
    net-step : ∀ B₀ B₁ C R D W → B₀ + C ≡ B₁ + R → C + W ≡ R + D → B₀ + D ≡ B₁ + W
    net-step B₀ B₁ C R D W step decl = +-cancelʳ-≡ R (B₀ + D) (B₁ + W) $ begin
      B₀ + D + R      ≡⟨ r₁ B₀ D R ⟩
      B₀ + (R + D)    ≡˘⟨ cong (B₀ +_) decl ⟩
      B₀ + (C + W)    ≡⟨ r₂ B₀ C W ⟩
      B₀ + C + W      ≡⟨ cong (_+ W) step ⟩
      B₁ + R + W      ≡⟨ swap-right B₁ R W ⟩
      B₁ + W + R      ∎
      where
        r₁ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ (c +ᴺ b)
        r₁ = solve-∀
        r₂ : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ a +ᴺ b +ᴺ c
        r₂ = solve-∀

  -- The common step: applying a transaction's backing to `bk` adds the backing it
  -- creates and removes the backing its inputs release, given freshness of the
  -- new entries.
  backing-step : (pp : PParams) {ℓ : TxLevel} (tx : Tx ℓ) (bk : StoreBacking)
    → disjoint (dom (bk ∣ SpendInputsOf tx ᶜ)) (dom (newBacking pp tx))
    → totalBacking bk + createdBacking pp tx
      ≡ totalBacking (applyBacking pp tx bk) + releasedBacking bk tx
  backing-step pp tx bk disj = begin
    totalBacking bk + totalBacking new
      ≡⟨ cong (_+ totalBacking new) (totalBacking-split bk (SpendInputsOf tx)) ⟩
    totalBacking kept + totalBacking spent + totalBacking new
      ≡⟨ swap-right (totalBacking kept) (totalBacking spent) (totalBacking new) ⟩
    totalBacking kept + totalBacking new + totalBacking spent
      ≡˘⟨ cong (_+ totalBacking spent) (totalBacking-∪ˡ {kept} {new} disj) ⟩
    totalBacking (kept ∪ˡ new) + totalBacking spent
      ∎
    where
      kept spent new : StoreBacking
      kept  = bk ∣ SpendInputsOf tx ᶜ
      spent = bk ∣ SpendInputsOf tx
      new   = newBacking pp tx
```
-->

### Subtransactions

```agda
  SUBUTXO-store : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → DepositStoreOf s₁ ≡ DepositStoreOf s₀

  SUBUTXO-backing : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ true
    → disjoint (dom (StoreBackingOf s₀ ∣ SpendInputsOf stx ᶜ))
               (dom (newBacking (PParamsOf Γ) stx))
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → totalBacking (StoreBackingOf s₀) + subStoreDeposit stx
      ≡ totalBacking (StoreBackingOf s₁) + subStoreWithdrawal stx

  SUBUTXO-backing-invalid : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ false
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → StoreBackingOf s₁ ≡ StoreBackingOf s₀
```

<!--
```agda
  SUBUTXO-store {Γ} (SUBUTXO _) = if-same DepositStoreOf (IsTopLevelValidFlagOf Γ) refl refl

  SUBUTXO-backing {Γ} {s₀} {s₁} {stx} isV disj (SUBUTXO (_ , _ , _ , _ , _ , _ , (_ , decl , _) , _)) =
    net-step (totalBacking (StoreBackingOf s₀)) (totalBacking (StoreBackingOf s₁))
             (createdBacking pp stx) (releasedBacking (StoreBackingOf s₀) stx)
             (subStoreDeposit stx) (subStoreWithdrawal stx)
             (trans (backing-step pp stx (StoreBackingOf s₀) disj)
                    (cong (λ b → totalBacking b + releasedBacking (StoreBackingOf s₀) stx)
                          (sym (if-true StoreBackingOf (IsTopLevelValidFlagOf Γ) isV))))
             decl
    where pp = PParamsOf Γ

  SUBUTXO-backing-invalid {Γ} isI (SUBUTXO _) = if-false StoreBackingOf (IsTopLevelValidFlagOf Γ) isI
```
-->

### Top-level transactions

```agda
  UTXO-store : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ true
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → DepositStoreOf s₁ + topStoreWithdrawal tx ≡ DepositStoreOf s₀ + topStoreDeposit tx

  UTXO-backing : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ true
    → disjoint (dom (StoreBackingOf s₀ ∣ SpendInputsOf tx ᶜ))
               (dom (newBacking (PParamsOf Γ) tx))
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → totalBacking (StoreBackingOf s₀) + createdBacking (PParamsOf Γ) tx
      ≡ totalBacking (StoreBackingOf s₁) + releasedBacking (StoreBackingOf s₀) tx

  -- Premise (2) of `TopStoreOK`: the reconciliation of the batch's declared net.
  UTXO-reconcile : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → createdBacking (PParamsOf Γ) tx + topStoreWithdrawal tx + subsStoreDeposit tx
      ≡ releasedBacking (StoreBackingOf s₀) tx + topStoreDeposit tx + subsStoreWithdrawal tx
```

A failed batch applies only its collateral, which carries no recorded backing
(premise (5) of `UTXO`{.AgdaDatatype}), so the store and the recorded backing are
unchanged.

```agda
  UTXO-invalid : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ false
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → DepositStoreOf s₁ ≡ DepositStoreOf s₀ × StoreBackingOf s₁ ≡ StoreBackingOf s₀
```

<!--
```agda
  UTXO-store {s₀ = s₀} {tx = tx} isV (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (_ , _ , _ , solvent) _ _ _ _ _ _ _ _ _) =
    trans (cong (_+ topStoreWithdrawal tx) (if-true DepositStoreOf (IsValidFlagOf tx) isV))
          (m∸n+n≡m solvent)

  UTXO-backing {Γ} {s₀} {s₁} {tx} isV disj (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
    trans (backing-step (PParamsOf Γ) tx (StoreBackingOf s₀) disj)
          (cong (λ b → totalBacking b + releasedBacking (StoreBackingOf s₀) tx)
                (sym (if-true StoreBackingOf (IsValidFlagOf tx) isV)))

  UTXO-reconcile (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (_ , reconcile , _ , _) _ _ _ _ _ _ _ _ _) = reconcile

  UTXO-invalid {tx = tx} isI (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
    if-false DepositStoreOf (IsValidFlagOf tx) isI , if-false StoreBackingOf (IsValidFlagOf tx) isI
```
-->
