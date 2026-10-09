---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/DepositStore.lagda.md
---

# Properties of the DepositStore: Single Steps {#sec:properties-of-the-depositstore-steps}

This module derives, from the `SUBUTXO`{.AgdaDatatype} and `UTXO`{.AgdaDatatype}
rules, how a single step changes the DepositStore balance and the total of the UTxO
capacity deposit records.

+  A valid subtransaction leaves the store balance unchanged, and changes the total
   of the records by exactly its declared net allocation minus its declared net
   release (`SUBUTXO-records`{.AgdaFunction}).
+  A valid top-level transaction changes the store balance by exactly the batch's
   declared net change (`UTXO-store`{.AgdaFunction}), and the total of the records
   by the deposits it allocates minus those its own inputs release
   (`UTXO-records`{.AgdaFunction}).
+  A failed batch releases the deposits of its store-backed collateral: the store
   balance and the total of the records both fall by that amount
   (`UTXO-invalid`{.AgdaFunction}).

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
  ( totalUTxODeposits-∪ˡ : {m m' : UTxODepositRecords} → disjoint (dom m) (dom m')
      → totalUTxODeposits (m ∪ˡ m') ≡ totalUTxODeposits m + totalUTxODeposits m' )
  ( totalUTxODeposits-split : (m : UTxODepositRecords) (keys : ℙ TxIn)
      → totalUTxODeposits m ≡ totalUTxODeposits (m ∣ keys ᶜ) + totalUTxODeposits (m ∣ keys) )
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

    -- From `T₀ + A ≡ T₁ + R` (the step) and `A + DR ≡ R + DA` (the declaration),
    -- conclude `T₀ + DA ≡ T₁ + DR` by cancelling `R`.
    net-step : ∀ T₀ T₁ A R DA DR → T₀ + A ≡ T₁ + R → A + DR ≡ R + DA → T₀ + DA ≡ T₁ + DR
    net-step T₀ T₁ A R DA DR step decl = +-cancelʳ-≡ R (T₀ + DA) (T₁ + DR) $ begin
      T₀ + DA + R      ≡⟨ r₁ T₀ DA R ⟩
      T₀ + (R + DA)    ≡˘⟨ cong (T₀ +_) decl ⟩
      T₀ + (A + DR)    ≡⟨ r₂ T₀ A DR ⟩
      T₀ + A + DR      ≡⟨ cong (_+ DR) step ⟩
      T₁ + R + DR      ≡⟨ swap-right T₁ R DR ⟩
      T₁ + DR + R      ∎
      where
        r₁ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ (c +ᴺ b)
        r₁ = solve-∀
        r₂ : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ a +ᴺ b +ᴺ c
        r₂ = solve-∀

  -- The common step: applying a transaction's records to `recs` adds the deposits
  -- it allocates and removes those its inputs release, given freshness of the new
  -- records.
  records-step : (pp : PParams) {ℓ : TxLevel} (tx : Tx ℓ) (recs : UTxODepositRecords)
    → disjoint (dom (recs ∣ SpendInputsOf tx ᶜ)) (dom (newUTxODepositRecords pp tx))
    → totalUTxODeposits recs + allocatedUTxODeposits pp tx
      ≡ totalUTxODeposits (applyUTxODepositRecords pp tx recs) + releasedUTxODeposits recs tx
  records-step pp tx recs disj = begin
    totalUTxODeposits recs + totalUTxODeposits new
      ≡⟨ cong (_+ totalUTxODeposits new) (totalUTxODeposits-split recs (SpendInputsOf tx)) ⟩
    totalUTxODeposits kept + totalUTxODeposits spent + totalUTxODeposits new
      ≡⟨ swap-right (totalUTxODeposits kept) (totalUTxODeposits spent) (totalUTxODeposits new) ⟩
    totalUTxODeposits kept + totalUTxODeposits new + totalUTxODeposits spent
      ≡˘⟨ cong (_+ totalUTxODeposits spent) (totalUTxODeposits-∪ˡ {kept} {new} disj) ⟩
    totalUTxODeposits (kept ∪ˡ new) + totalUTxODeposits spent
      ∎
    where
      kept spent new : UTxODepositRecords
      kept  = recs ∣ SpendInputsOf tx ᶜ
      spent = recs ∣ SpendInputsOf tx
      new   = newUTxODepositRecords pp tx
```
-->

### Subtransactions

```agda
  SUBUTXO-store : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → StoreBalanceOf s₁ ≡ StoreBalanceOf s₀

  SUBUTXO-records : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
    → IsTopLevelValidFlagOf Γ ≡ true
    → disjoint (dom (UTxODepositRecordsOf s₀ ∣ SpendInputsOf stx ᶜ))
               (dom (newUTxODepositRecords (PParamsOf Γ) stx))
    → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
    → totalUTxODeposits (UTxODepositRecordsOf s₀) + subTxNetAllocation stx
      ≡ totalUTxODeposits (UTxODepositRecordsOf s₁) + subTxNetRelease stx
```

<!--
```agda
  SUBUTXO-store {Γ} (SUBUTXO _) = if-same StoreBalanceOf (IsTopLevelValidFlagOf Γ) refl refl

  SUBUTXO-records {Γ} {s₀} {s₁} {stx} isV disj (SUBUTXO (_ , _ , _ , _ , _ , _ , (_ , _ , decl , _) , _)) =
    net-step (totalUTxODeposits recs₀) (totalUTxODeposits (UTxODepositRecordsOf s₁))
             (allocatedUTxODeposits pp stx) (releasedUTxODeposits recs₀ stx)
             (subTxNetAllocation stx) (subTxNetRelease stx)
             (trans (records-step pp stx recs₀ disj)
                    (cong (λ r → totalUTxODeposits r + releasedUTxODeposits recs₀ stx)
                          (sym (if-true UTxODepositRecordsOf (IsTopLevelValidFlagOf Γ) isV))))
             decl
    where
      pp   = PParamsOf Γ
      recs₀ = UTxODepositRecordsOf s₀
```
-->

### Top-level transactions

```agda
  UTXO-store : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ true
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → StoreBalanceOf s₁ + txTotalNetRelease tx ≡ StoreBalanceOf s₀ + txTotalNetAllocation tx

  UTXO-records : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ true
    → disjoint (dom (UTxODepositRecordsOf s₀ ∣ SpendInputsOf tx ᶜ))
               (dom (newUTxODepositRecords (PParamsOf Γ) tx))
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → totalUTxODeposits (UTxODepositRecordsOf s₀) + allocatedUTxODeposits (PParamsOf Γ) tx
      ≡ totalUTxODeposits (UTxODepositRecordsOf s₁) + releasedUTxODeposits (UTxODepositRecordsOf s₀) tx

  -- Check (4) of `TopTxUTxODepositOK`: the reconciliation of the batch's declared
  -- net change with the subtransactions' contributions.
  UTXO-reconcile : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → allocatedUTxODeposits (PParamsOf Γ) tx + txTotalNetRelease tx + subTxsNetAllocation tx
      ≡ releasedUTxODeposits (UTxODepositRecordsOf s₀) tx + txTotalNetAllocation tx + subTxsNetRelease tx
```

On a failed batch, only the collateral is applied: the deposits of store-backed
collateral inputs are released from the store to the fee pot, and their records
removed (DS-COLL-002, DS-COLL-004).

```agda
  UTXO-invalid : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
    → IsValidFlagOf tx ≡ false
    → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
    → let released = collateralReleasedUTxODeposits (UTxODepositRecordsOf s₀) tx in
      StoreBalanceOf s₁ + released ≡ StoreBalanceOf s₀
      × totalUTxODeposits (UTxODepositRecordsOf s₁) + released
        ≡ totalUTxODeposits (UTxODepositRecordsOf s₀)
```

<!--
```agda
  UTXO-store {tx = tx} isV (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ solvent _ _ _ _ _ _ _ _) =
    trans (cong (_+ txTotalNetRelease tx) (if-true StoreBalanceOf (IsValidFlagOf tx) isV))
          (m∸n+n≡m (solvent isV))

  UTXO-records {Γ} {s₀} {s₁} {tx} isV disj (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
    trans (records-step (PParamsOf Γ) tx (UTxODepositRecordsOf s₀) disj)
          (cong (λ r → totalUTxODeposits r + releasedUTxODeposits (UTxODepositRecordsOf s₀) tx)
                (sym (if-true UTxODepositRecordsOf (IsValidFlagOf tx) isV)))

  UTXO-reconcile (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ (_ , _ , _ , reconcile , _) _ _ _ _ _ _ _ _ _) = reconcile

  UTXO-invalid {s₀ = s₀} {tx = tx} isI (UTXO-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ solvent _ _ _ _ _ _ _) =
      trans (cong (_+ released) (if-false StoreBalanceOf (IsValidFlagOf tx) isI))
            (m∸n+n≡m (solvent isI))
    , trans (cong (λ r → totalUTxODeposits r + released)
                  (if-false UTxODepositRecordsOf (IsValidFlagOf tx) isI))
            (sym (totalUTxODeposits-split recs₀ (CollateralInputsOf tx)))
    where
      recs₀    = UTxODepositRecordsOf s₀
      released = collateralReleasedUTxODeposits recs₀ tx
```
-->
