---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/DepositStore.lagda.md
---

# Properties of <span class="AgdaDatatype">LEDGER</span>: DepositStore Solvency {#thm:LEDGER-store}

This module proves DS-STATE-SOLVENCY: the DepositStore stays solvent.  A state is
*solvent* when the store balance covers the total of the UTxO capacity deposits
allocated to live store-backed outputs:

    totalUTxODeposits allocations ≤ balance

We prove the stronger statement that every `LEDGER`{.AgdaDatatype} step from a
solvent state preserves the *margin* between the two, `balance − totalUTxODeposits`,
on both the successful and the failed path (`LEDGER-margin`{.AgdaFunction};
DS-STATE-BALANCE).  Solvency is therefore preserved (`LEDGER-solvent`{.AgdaFunction}),
and so is exact coverage: starting from the empty store (DS-STATE-INITIALIZATION),
the store always holds exactly what it owes.

As the rules document requires, this is a property of the rules, not a check in
them: the `UTXO`{.AgdaDatatype} rule has no solvency premise.  Solvency of the
initial state is what guarantees that the store can pay each step.

## Proof Strategy

Within a valid batch, subtransactions change only the records, and the top-level
transaction changes the store balance once, by the batch's declared net change.
The proof composes:

+  `SUBLEDGERS-store`{.AgdaFunction}: the subtransactions leave the store balance
   unchanged;
+  `SUBLEDGERS-records`{.AgdaFunction}: they change the total of the records by the
   sum of their declared net allocations minus the sum of their declared net
   releases;
+  the top-level step (`UTXO-records`{.AgdaFunction}, `UTXO-store`{.AgdaFunction}),
   and the reconciliation of the top-level declaration with the subtransactions'
   (`UTXO-reconcile`{.AgdaFunction}).

Each subtransaction's declaration is exact, and the top-level declaration is
reconciled with them, so the batch's declared net change is exactly its change in
recorded deposits; hence the balance and the total change by the same amount.  On a
failed batch, both fall by the deposits released by store-backed collateral
(`UTXO-invalid`{.AgdaFunction}).

The facts about sums over finite maps, and the freshness of each transaction's new
outputs, are module parameters, as in the `LEDGER`{.AgdaDatatype}
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
open import Data.Nat.Properties using (+-cancelʳ-≡; +-cancelˡ-≤; +-monoˡ-≤; +-comm; m≤n+m)
  renaming (≤-trans to ≤ᴺ-trans; ≤-reflexive to ≤ᴺ-reflexive)
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
Solvent : UTxOState → Type
Solvent u = totalUTxODeposits (UTxODepositRecordsOf u) ≤ StoreBalanceOf u

-- The margin is preserved from `u` to `u'`: balance' − total' = balance − total.
MarginPreserved : UTxOState → UTxOState → Type
MarginPreserved u u' =
  StoreBalanceOf u' + totalUTxODeposits (UTxODepositRecordsOf u)
  ≡ StoreBalanceOf u + totalUTxODeposits (UTxODepositRecordsOf u')

module LEDGER-Store
  ( totalUTxODeposits-∪ˡ : {m m' : UTxODepositRecords} → disjoint (dom m) (dom m')
      → totalUTxODeposits (m ∪ˡ m') ≡ totalUTxODeposits m + totalUTxODeposits m' )
  ( totalUTxODeposits-split : (m : UTxODepositRecords) (keys : ℙ TxIn)
      → totalUTxODeposits m ≡ totalUTxODeposits (m ∣ keys ᶜ) + totalUTxODeposits (m ∣ keys) )
  -- Freshness: a transaction's new outputs are not already recorded.  As with
  -- `subutxow-step-coin` in the preservation-of-value proof, this follows from
  -- TxId freshness, a chain-level property, rather than from the rule's premises.
  ( sub-fresh : {Γ : SubUTxOEnv} {s₀ s₁ : UTxOState} {stx : SubLevelTx}
      → Γ ⊢ s₀ ⇀⦇ stx ,SUBUTXO⦈ s₁
      → disjoint (dom (UTxODepositRecordsOf s₀ ∣ SpendInputsOf stx ᶜ))
                 (dom (newUTxODepositRecords (PParamsOf Γ) stx)) )
  ( top-fresh : {Γ : UTxOEnv} {s₀ s₁ : UTxOState} {tx : TopLevelTx}
      → Γ ⊢ s₀ ⇀⦇ tx ,UTXO⦈ s₁
      → disjoint (dom (UTxODepositRecordsOf s₀ ∣ SpendInputsOf tx ᶜ))
                 (dom (newUTxODepositRecords (PParamsOf Γ) tx)) )
  where

  open Steps (λ {m} {m'} → totalUTxODeposits-∪ˡ {m} {m'}) totalUTxODeposits-split
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

    step-arith : ∀ T₀ T₁ Tₙ DA DR SA SR
      → T₀ + DA ≡ T₁ + DR → T₁ + SA ≡ Tₙ + SR → T₀ + (DA + SA) ≡ Tₙ + (DR + SR)
    step-arith T₀ T₁ Tₙ DA DR SA SR step ih = begin
      T₀ + (DA + SA)   ≡⟨ r₁ T₀ DA SA ⟩
      T₀ + DA + SA     ≡⟨ cong (_+ SA) step ⟩
      T₁ + DR + SA     ≡⟨ r₂ T₁ DR SA ⟩
      T₁ + SA + DR     ≡⟨ cong (_+ DR) ih ⟩
      Tₙ + SR + DR     ≡⟨ r₃ Tₙ SR DR ⟩
      Tₙ + (DR + SR)   ∎
      where
        r₁ : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ a +ᴺ b +ᴺ c
        r₁ = solve-∀
        r₂ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
        r₂ = solve-∀
        r₃ : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ (c +ᴺ b)
        r₃ = solve-∀

    -- The records over a whole valid batch: from the subtransactions (I), the
    -- top-level step (II) and the reconciliation (III), the total of the records
    -- changes by the batch's declared net change.
    records-arith : ∀ T₀ T₁ T₂ A R TA TR SA SR
      → T₀ + SA ≡ T₁ + SR            -- (I)
      → T₁ + A ≡ T₂ + R              -- (II)
      → A + TR + SA ≡ R + TA + SR    -- (III)
      → T₂ + TR ≡ T₀ + TA
    records-arith T₀ T₁ T₂ A R TA TR SA SR I II III =
      +-cancelʳ-≡ (R + SA) (T₂ + TR) (T₀ + TA) $ begin
        T₂ + TR + (R + SA)    ≡⟨ r₁ T₂ TR R SA ⟩
        T₂ + R + TR + SA      ≡˘⟨ cong (λ x → x + TR + SA) II ⟩
        T₁ + A + TR + SA      ≡⟨ r₂ T₁ A TR SA ⟩
        T₁ + (A + TR + SA)    ≡⟨ cong (T₁ +_) III ⟩
        T₁ + (R + TA + SR)    ≡⟨ r₃ T₁ R TA SR ⟩
        T₁ + SR + R + TA      ≡˘⟨ cong (λ x → x + R + TA) I ⟩
        T₀ + SA + R + TA      ≡⟨ r₄ T₀ SA R TA ⟩
        T₀ + TA + (R + SA)    ∎
      where
        r₁ : ∀ t₂ w r sa → t₂ +ᴺ w +ᴺ (r +ᴺ sa) ≡ t₂ +ᴺ r +ᴺ w +ᴺ sa
        r₁ = solve-∀
        r₂ : ∀ t₁ a w sa → t₁ +ᴺ a +ᴺ w +ᴺ sa ≡ t₁ +ᴺ (a +ᴺ w +ᴺ sa)
        r₂ = solve-∀
        r₃ : ∀ t₁ r d sr → t₁ +ᴺ (r +ᴺ d +ᴺ sr) ≡ t₁ +ᴺ sr +ᴺ r +ᴺ d
        r₃ = solve-∀
        r₄ : ∀ t₀ sa r d → t₀ +ᴺ sa +ᴺ r +ᴺ d ≡ t₀ +ᴺ d +ᴺ (r +ᴺ sa)
        r₄ = solve-∀

    -- The whole valid batch: with the records (above) and the store update (IV),
    -- the balance and the total change by the same amount.
    batch-arith : ∀ P₀ P₁ P₂ T₀ T₂ TA TR
      → P₁ ≡ P₀
      → T₂ + TR ≡ T₀ + TA            -- records
      → P₂ + TR ≡ P₁ + TA            -- (IV)
      → P₂ + T₀ ≡ P₀ + T₂
    batch-arith P₀ P₁ P₂ T₀ T₂ TA TR P₁≡ records IV =
      +-cancelʳ-≡ TR (P₂ + T₀) (P₀ + T₂) $ begin
        P₂ + T₀ + TR      ≡⟨ swap-right P₂ T₀ TR ⟩
        P₂ + TR + T₀      ≡⟨ cong (_+ T₀) IV ⟩
        P₁ + TA + T₀      ≡⟨ cong (λ x → x + TA + T₀) P₁≡ ⟩
        P₀ + TA + T₀      ≡⟨ r₅ P₀ TA T₀ ⟩
        P₀ + (T₀ + TA)    ≡˘⟨ cong (P₀ +_) records ⟩
        P₀ + (T₂ + TR)    ≡⟨ r₆ P₀ T₂ TR ⟩
        P₀ + T₂ + TR      ∎
      where
        swap-right : ∀ a b c → a +ᴺ b +ᴺ c ≡ a +ᴺ c +ᴺ b
        swap-right = solve-∀
        r₅ : ∀ p a b → p +ᴺ a +ᴺ b ≡ p +ᴺ (b +ᴺ a)
        r₅ = solve-∀
        r₆ : ∀ p a b → p +ᴺ (a +ᴺ b) ≡ p +ᴺ a +ᴺ b
        r₆ = solve-∀

    -- The failed batch: balance and total both fall by the released collateral deposits.
    collateral-arith : ∀ P₀ P₂ T₀ T₂ Rc → P₂ + Rc ≡ P₀ → T₂ + Rc ≡ T₀ → P₂ + T₀ ≡ P₀ + T₂
    collateral-arith P₀ P₂ T₀ T₂ Rc store≡ total≡ = begin
      P₂ + T₀          ≡˘⟨ cong (P₂ +_) total≡ ⟩
      P₂ + (T₂ + Rc)   ≡⟨ r P₂ T₂ Rc ⟩
      P₂ + Rc + T₂     ≡⟨ cong (_+ T₂) store≡ ⟩
      P₀ + T₂          ∎
      where
        r : ∀ a b c → a +ᴺ (b +ᴺ c) ≡ a +ᴺ c +ᴺ b
        r = solve-∀
```
-->

### Subtransactions

```agda
  SUBLEDGERS-store : {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → StoreBalanceOf (UTxOStateOf s₁) ≡ StoreBalanceOf (UTxOStateOf s₀)

  SUBLEDGERS-records : {Γ : SubLedgerEnv} {s₀ s₁ : LedgerState} {stxs : List SubLevelTx}
    → SubLedgerEnv.isTopLevelValid Γ ≡ true
    → Γ ⊢ s₀ ⇀⦇ stxs ,SUBLEDGERS⦈ s₁
    → totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s₀)) + sum (map subTxNetAllocation stxs)
      ≡ totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s₁)) + sum (map subTxNetRelease stxs)
```

<!--
```agda
  SUBLEDGERS-store (BS-base Id-nop) = refl
  SUBLEDGERS-store (BS-ind (SUBLEDGER-I _) rest) = SUBLEDGERS-store rest
  SUBLEDGERS-store (BS-ind (SUBLEDGER-V (_ , subutxowStep , _ , _)) rest) =
    trans (SUBLEDGERS-store rest) (SUBUTXO-store (SUBUTXOW⇒SUBUTXO subutxowStep))

  SUBLEDGERS-records _ (BS-base Id-nop) = refl
  SUBLEDGERS-records isV (BS-ind (SUBLEDGER-I (isI , _)) _) =
    ⊥-elim (case trans (sym isV) isI of λ ())
  SUBLEDGERS-records isV (BS-ind {s = s₀} {s' = s₁} {sigs} {s'' = sₙ}
    (SUBLEDGER-V {stx = stx} (isV' , subutxowStep , _ , _)) rest) =
    step-arith (totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s₀)))
               (totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s₁)))
               (totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf sₙ)))
               (subTxNetAllocation stx) (subTxNetRelease stx)
               (sum (map subTxNetAllocation sigs)) (sum (map subTxNetRelease sigs))
               (SUBUTXO-records isV' (sub-fresh h) h)
               (SUBLEDGERS-records isV rest)
    where h = SUBUTXOW⇒SUBUTXO subutxowStep
```
-->

### The <span class="AgdaDatatype">LEDGER</span> step

```agda
  LEDGER-margin : {Γ : LedgerEnv} {s s' : LedgerState} {tx : TopLevelTx}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
    → Solvent (UTxOStateOf s)
    → MarginPreserved (UTxOStateOf s) (UTxOStateOf s')

  LEDGER-solvent : {Γ : LedgerEnv} {s s' : LedgerState} {tx : TopLevelTx}
    → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
    → Solvent (UTxOStateOf s) → Solvent (UTxOStateOf s')
```

<!--
```agda
  LEDGER-margin {s = s} {tx = tx} (LEDGER-I {utxoState₁ = u₁} (invalid , _ , utxoStep)) solvent₀ =
    let (store≡ , total≡) = UTXO-invalid invalid (UTXOW⇒UTXO utxoStep) canPay
    in collateral-arith (StoreBalanceOf u₀) (StoreBalanceOf u₁)
                        (totalUTxODeposits (UTxODepositRecordsOf u₀))
                        (totalUTxODeposits (UTxODepositRecordsOf u₁))
                        (collateralReleasedUTxODeposits (UTxODepositRecordsOf u₀) tx)
                        store≡ total≡
    where
      u₀ = UTxOStateOf s
      -- The released collateral deposits are part of the total, which the store covers.
      canPay = ≤ᴺ-trans (collateral≤total (UTxODepositRecordsOf u₀) tx) solvent₀

  LEDGER-margin {Γ = Γ} {s = s} {tx = tx}
    (LEDGER-V {utxoState₁ = u₁} {utxoState₂ = u₂} (valid , subStep , _ , _ , utxoStep)) solvent₀ =
    batch-arith P₀ P₁ (StoreBalanceOf u₂) T₀ T₂ TA TR P₁≡P₀ records
                (UTXO-store valid h canPay)
    where
      u₀ = UTxOStateOf s
      h  = UTXOW⇒UTXO utxoStep
      P₀ = StoreBalanceOf u₀
      P₁ = StoreBalanceOf u₁
      T₀ = totalUTxODeposits (UTxODepositRecordsOf u₀)
      T₂ = totalUTxODeposits (UTxODepositRecordsOf u₂)
      TA = txTotalNetAllocation tx
      TR = txTotalNetRelease tx

      P₁≡P₀ : P₁ ≡ P₀
      P₁≡P₀ = SUBLEDGERS-store subStep

      records : T₂ + TR ≡ T₀ + TA
      records = records-arith T₀ (totalUTxODeposits (UTxODepositRecordsOf u₁)) T₂
                  (allocatedUTxODeposits (LedgerEnv.pparams Γ) tx)
                  (releasedUTxODeposits (UTxODepositRecordsOf u₁) tx)
                  TA TR (subTxsNetAllocation tx) (subTxsNetRelease tx)
                  (SUBLEDGERS-records valid subStep)
                  (UTXO-records valid (top-fresh h) h)
                  (UTXO-reconcile h)

      -- The batch's net release is at most what the records held plus its net
      -- allocation, and the store covers the records.
      canPay : TR ≤ P₁ + TA
      canPay = subst (λ p → TR ≤ p + TA) (sym P₁≡P₀)
                 (≤ᴺ-trans (m≤n+m TR T₂)
                   (≤ᴺ-trans (≤ᴺ-reflexive records) (+-monoˡ-≤ TA solvent₀)))

  LEDGER-solvent {s = s} {s' = s'} step solvent₀ =
    +-cancelˡ-≤ T₀ T₂ P₂
      (≤ᴺ-trans (+-monoˡ-≤ T₂ solvent₀)
               (≤ᴺ-reflexive (trans (sym (LEDGER-margin step solvent₀)) (+-comm P₂ T₀))))
    where
      P₂ = StoreBalanceOf (UTxOStateOf s')
      T₀ = totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s))
      T₂ = totalUTxODeposits (UTxODepositRecordsOf (UTxOStateOf s'))
```
-->
