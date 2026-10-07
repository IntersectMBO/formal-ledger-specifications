---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/DepositStore.lagda.md
---

# Properties of <span class="AgdaDatatype">LEDGER</span>: the Deposit Store {#thm:LEDGER-store}

This module proves that the deposit store holds exactly what it owes.  If the
store equals the total backing recorded for live store-backed outputs before a
`LEDGER`{.AgdaDatatype} step, it does so after it:

    depositStore ≡ ∑ storeBacking

In particular the store is always solvent: every recorded backing can be released.

## Proof Strategy

Within a batch, subtransactions change only the recorded backing, and the
top-level transaction changes the store once, by the batch's declared net change.
The proof composes:

+  `SUBLEDGERS-store`{.AgdaFunction}: the subtransactions leave the store unchanged;
+  `SUBLEDGERS-backing`{.AgdaFunction}: they change the total backing by the sum of
   their declared deposits minus the sum of their declared withdrawals;
+  the top-level step (`UTXO-backing`{.AgdaFunction}, `UTXO-store`{.AgdaFunction}),
   and the reconciliation of the top-level declaration with the subtransactions'
   (`UTXO-reconcile`{.AgdaFunction}).

Each subtransaction's declaration is exact, and the top-level declaration is
reconciled with them, so the batch's declared net is exactly its change in
backing; hence the store and the backing change by the same amount.

The facts about sums over finite maps, and the freshness of each transaction's
new outputs, are module parameters, as in the `LEDGER`{.AgdaDatatype}
preservation-of-value proof.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.DepositStore
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Nat.Base using () renaming (_+_ to _+ᴺ_)
open import Data.Nat.Properties using (+-cancelʳ-≡)
open import Data.Nat.Tactic.RingSolver using (solve-∀)

open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.DepositStore txs abs

open import Interface.STS

open ≡-Reasoning
```
-->

```agda
StoreInvariant : UTxOState → Type
StoreInvariant u = DepositStoreOf u ≡ totalBacking (StoreBackingOf u)

module LEDGER-Store
  ( totalBacking-∪ˡ : {m m' : StoreBacking} → disjoint (dom m) (dom m')
      → totalBacking (m ∪ˡ m') ≡ totalBacking m + totalBacking m' )
  ( totalBacking-split : (m : StoreBacking) (keys : ℙ TxIn)
      → totalBacking m ≡ totalBacking (m ∣ keys ᶜ) + totalBacking (m ∣ keys) )
  -- Freshness: a transaction's new outputs are not already recorded.  As with
  -- `subutxow-step-coin` in the preservation-of-value proof, this follows from
  -- TxId freshness, a chain-level property, rather than from the rule's premises.
  ( sub-fresh : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
      → disjoint (dom (StoreBackingOf s₀ ∣ SpendInputsOf stx ᶜ))
                 (dom (newBacking (PParamsOf Γ) stx)) )
  ( top-fresh : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
      → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
      → disjoint (dom (StoreBackingOf s₀ ∣ SpendInputsOf tx ᶜ))
                 (dom (newBacking (PParamsOf Γ) tx)) )
  where

  open Steps (λ {m} {m'} → totalBacking-∪ˡ {m} {m'}) totalBacking-split
```

<!--
```agda
  private
    UTXOW⇒UTXO : {Γ : UTxOEnv} {s s' : UTxOState} {tx : TopLevelTx}
      → Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
    UTXOW⇒UTXO (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h)   = h
    UTXOW⇒UTXO (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) = h

    SUBUTXOW⇒SUBUTXO : {Γ : SubUTxOEnv} {s s' : UTxOState} {stx : SubLevelTx}
      → Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s' → Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'
    SUBUTXOW⇒SUBUTXO (SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ h) = h

    step-arith : ∀ B₀ B₁ Bₙ D W SD SW
      → B₀ + D ≡ B₁ + W → B₁ + SD ≡ Bₙ + SW → B₀ + (D + SD) ≡ Bₙ + (W + SW)
    step-arith B₀ B₁ Bₙ D W SD SW step ih = begin
      B₀ + (D + SD)   ≡⟨ r₁ B₀ D SD ⟩
      B₀ + D + SD     ≡⟨ cong (_+ SD) step ⟩
      B₁ + W + SD     ≡⟨ r₂ B₁ W SD ⟩
      B₁ + SD + W     ≡⟨ cong (_+ W) ih ⟩
      Bₙ + SW + W     ≡⟨ r₃ Bₙ SW W ⟩
      Bₙ + (W + SW)   ∎
      where
        r₁ : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ a +ᴺ b +ᴺ c
        r₁ = solve-∀
        r₂ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
        r₂ = solve-∀
        r₃ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ (c +ᴺ b)
        r₃ = solve-∀

    -- The whole batch: from the subtransactions (I), the top-level step (II),
    -- the reconciliation (III) and the store update (IV), the store and the
    -- backing change by the same amount.
    batch-arith : ∀ P₀ P₁ P₂ B₀ B₁ B₂ C R D W SD SW
      → P₀ ≡ B₀
      → P₁ ≡ P₀
      → B₀ + SD ≡ B₁ + SW            -- (I)
      → B₁ + C ≡ B₂ + R              -- (II)
      → C + W + SD ≡ R + D + SW      -- (III)
      → P₂ + W ≡ P₁ + D              -- (IV)
      → P₂ ≡ B₂
    batch-arith P₀ P₁ P₂ B₀ B₁ B₂ C R D W SD SW inv₀ P₁≡ I II III IV =
      +-cancelʳ-≡ W P₂ B₂ (trans IV (trans (cong (_+ D) (trans P₁≡ inv₀)) (sym backing)))
      where
        r₁ : ∀ b₂ w r sd → b₂ +ᴺ w +ᴺ (r +ᴺ sd) ≡ b₂ +ᴺ r +ᴺ w +ᴺ sd
        r₁ = solve-∀
        r₂ : ∀ b₁ c w sd → b₁ +ᴺ c +ᴺ w +ᴺ sd ≡ b₁ +ᴺ (c +ᴺ w +ᴺ sd)
        r₂ = solve-∀
        r₃ : ∀ b₁ r d sw → b₁ +ᴺ (r +ᴺ d +ᴺ sw) ≡ b₁ +ᴺ sw +ᴺ r +ᴺ d
        r₃ = solve-∀
        r₄ : ∀ b₀ sd r d → b₀ +ᴺ sd +ᴺ r +ᴺ d ≡ b₀ +ᴺ d +ᴺ (r +ᴺ sd)
        r₄ = solve-∀

        backing : B₂ + W ≡ B₀ + D
        backing = +-cancelʳ-≡ (R + SD) (B₂ + W) (B₀ + D) $ begin
          B₂ + W + (R + SD)     ≡⟨ r₁ B₂ W R SD ⟩
          B₂ + R + W + SD       ≡˘⟨ cong (λ x → x + W + SD) II ⟩
          B₁ + C + W + SD       ≡⟨ r₂ B₁ C W SD ⟩
          B₁ + (C + W + SD)     ≡⟨ cong (B₁ +_) III ⟩
          B₁ + (R + D + SW)     ≡⟨ r₃ B₁ R D SW ⟩
          B₁ + SW + R + D       ≡˘⟨ cong (λ x → x + R + D) I ⟩
          B₀ + SD + R + D       ≡⟨ r₄ B₀ SD R D ⟩
          B₀ + D + (R + SD)     ∎
```
-->

### Subtransactions

```agda
  SUBLEDGERS-store : {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → DepositStoreOf (UTxOStateOf s₁) ≡ DepositStoreOf (UTxOStateOf s₀)

  SUBLEDGERS-backing : {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → totalBacking (StoreBackingOf (UTxOStateOf s₀)) + sum (map subStoreDeposit stxs)
      ≡ totalBacking (StoreBackingOf (UTxOStateOf s₁)) + sum (map subStoreWithdrawal stxs)
```

<!--
```agda
  SUBLEDGERS-store (BS-base Id-nop) = refl
  SUBLEDGERS-store (BS-ind (SUBLEDGER-I _) rest) = SUBLEDGERS-store rest
  SUBLEDGERS-store (BS-ind (SUBLEDGER-V (_ , subutxowStep , _ , _)) rest) =
    trans (SUBLEDGERS-store rest) (SUBUTXO-store (SUBUTXOW⇒SUBUTXO subutxowStep))

  SUBLEDGERS-backing _ (BS-base Id-nop) = refl
  SUBLEDGERS-backing isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())
  SUBLEDGERS-backing isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , _ , _)) rest) =
    step-arith (totalBacking (StoreBackingOf (UTxOStateOf s₀)))
               (totalBacking (StoreBackingOf (UTxOStateOf s₁)))
               (totalBacking (StoreBackingOf (UTxOStateOf sₙ)))
               (subStoreDeposit stx) (subStoreWithdrawal stx)
               (sum (map subStoreDeposit sigs)) (sum (map subStoreWithdrawal sigs))
               (SUBUTXO-backing isV' (sub-fresh h) h)
               (SUBLEDGERS-backing isV rest)
    where h = SUBUTXOW⇒SUBUTXO subutxowStep
```
-->

### The <span class="AgdaDatatype">LEDGER</span> step

```agda
  LEDGER-store : {Γ : LedgerEnv} {s s' : LedgerState} {tx : TopLevelTx}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
    → StoreInvariant (UTxOStateOf s) → StoreInvariant (UTxOStateOf s')
```

<!--
```agda
  LEDGER-store (LEDGER-I (invalid , _ , utxoStep)) inv =
    let (store≡ , backing≡) = UTXO-invalid invalid (UTXOW⇒UTXO utxoStep)
    in trans store≡ (trans inv (cong totalBacking (sym backing≡)))

  LEDGER-store {Γ = Γ} {s = s} {tx = tx}
    (LEDGER-V {utxoState₁ = u₁} {utxoState₂ = u₂} (valid , subStep , _ , _ , utxoStep)) inv =
    batch-arith (DepositStoreOf u₀) (DepositStoreOf u₁) (DepositStoreOf u₂)
                (totalBacking (StoreBackingOf u₀)) (totalBacking (StoreBackingOf u₁))
                (totalBacking (StoreBackingOf u₂))
                (createdBacking (LedgerEnv.pparams Γ) tx) (releasedBacking (StoreBackingOf u₁) tx)
                (topStoreDeposit tx) (topStoreWithdrawal tx)
                (subsStoreDeposit tx) (subsStoreWithdrawal tx)
                inv
                (SUBLEDGERS-store subStep)
                (SUBLEDGERS-backing valid subStep)
                (UTXO-backing valid (top-fresh h) h)
                (UTXO-reconcile h)
                (UTXO-store valid h)
    where
      u₀ = UTxOStateOf s
      h  = UTXOW⇒UTXO utxoStep
```
-->
