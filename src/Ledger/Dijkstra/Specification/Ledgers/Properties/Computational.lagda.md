---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledgers/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">LEDGERS</span>: Computational {#sec:ledgers-computational}

This module proves that `LEDGERS`{.AgdaDatatype} transition is
computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledgers.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Dijkstra.Specification.Ledgers txs abs

instance
  _ = Monad-ComputationResult

open Computational ⦃...⦄

computeLedger : ∀ Γ s x → ComputationResult String (∃ λ s' → Γ ⊢ s ⇀⦇ x ,LEDGER⦈ s')
computeLedger = computeProof {STS = _⊢_⇀⦇_,LEDGER⦈_}

completeLedger : ∀ Γ s x s' → Γ ⊢ s ⇀⦇ x ,LEDGER⦈ s' → (proj₁ <$> computeLedger Γ s x) ≡ success s'
completeLedger = completeness {STS = _⊢_⇀⦇_,LEDGER⦈_}

LEDGERSWithLimits-computeProof
  : (Γw : LedgersEnv) (s : LedgersWithLimitsState) (topTxs : List TopLevelTx)
  → ComputationResult String (∃[ s' ] Γw ⊢ s ⇀⦇ topTxs ,LEDGERSWithLimits⦈ s')
LEDGERSWithLimits-computeProof Γw s [] = success (s , LEDGERSWithLimits-[])
LEDGERSWithLimits-computeProof Γw s (topTx ∷ topTxs)
  with computeLedger (LedgersEnv.ledgerEnv Γw) (LedgersWithLimitsState.ledgerState s) topTx
... | failure e = failure e
... | success (ls' , step)
  with LedgersWithLimitsState.refScriptsSizeAcc s + totalRefScriptsSize (UTxOOf (LedgersWithLimitsState.ledgerState s)) topTx ≤? LedgersEnv.refScriptsSizeLimit Γw
... | no ¬p = failure "LEDGERSWithLimits: accumulated reference script size exceeds the limit"
... | yes p
  with ¿ LedgersWithLimitsState.exUnitsAcc s + totalExUnits topTx ≤ᵉᵘ LedgersEnv.exUnitsLimit Γw ¿
... | no ¬q = failure "LEDGERSWithLimits: accumulated ExUnits exceed the limit"
... | yes q
  with LEDGERSWithLimits-computeProof Γw ⟦ ls' , LedgersWithLimitsState.refScriptsSizeAcc s + totalRefScriptsSize (UTxOOf (LedgersWithLimitsState.ledgerState s)) topTx , LedgersWithLimitsState.exUnitsAcc s + totalExUnits topTx ⟧ topTxs
... | failure e = failure e
... | success (s'' , rest) = success (s'' , LEDGERSWithLimits-∷ (step , p , q , rest))

LEDGERSWithLimits-completeness
  : (Γw : LedgersEnv) (s : LedgersWithLimitsState) (topTxs : List TopLevelTx) (s' : LedgersWithLimitsState)
  → Γw ⊢ s ⇀⦇ topTxs ,LEDGERSWithLimits⦈ s'
  → (proj₁ <$> LEDGERSWithLimits-computeProof Γw s topTxs) ≡ success s'
LEDGERSWithLimits-completeness Γw s [] .s LEDGERSWithLimits-[] = refl
LEDGERSWithLimits-completeness Γw s (topTx ∷ topTxs) s'' (LEDGERSWithLimits-∷ {ls' = ls'} (step , p , q , rest))
  with computeLedger (LedgersEnv.ledgerEnv Γw) (LedgersWithLimitsState.ledgerState s) topTx
     | completeLedger (LedgersEnv.ledgerEnv Γw) (LedgersWithLimitsState.ledgerState s) topTx ls' step
... | success _ | refl
  with LedgersWithLimitsState.refScriptsSizeAcc s + totalRefScriptsSize (UTxOOf (LedgersWithLimitsState.ledgerState s)) topTx ≤? LedgersEnv.refScriptsSizeLimit Γw
... | no ¬p = ⊥-elim (¬p p)
... | yes _
  with ¿ LedgersWithLimitsState.exUnitsAcc s + totalExUnits topTx ≤ᵉᵘ LedgersEnv.exUnitsLimit Γw ¿
... | no ¬q = ⊥-elim (¬q q)
... | yes _
  with LEDGERSWithLimits-computeProof Γw ⟦ ls' , LedgersWithLimitsState.refScriptsSizeAcc s + totalRefScriptsSize (UTxOOf (LedgersWithLimitsState.ledgerState s)) topTx , LedgersWithLimitsState.exUnitsAcc s + totalExUnits topTx ⟧ topTxs
     | LEDGERSWithLimits-completeness Γw ⟦ ls' , LedgersWithLimitsState.refScriptsSizeAcc s + totalRefScriptsSize (UTxOOf (LedgersWithLimitsState.ledgerState s)) topTx , LedgersWithLimitsState.exUnitsAcc s + totalExUnits topTx ⟧ topTxs s'' rest
... | success _ | refl = refl

instance
```
-->

```agda
  Computational-LEDGERSWithLimits : Computational _⊢_⇀⦇_,LEDGERSWithLimits⦈_ String
```

<!--
```agda
  Computational-LEDGERSWithLimits .computeProof = LEDGERSWithLimits-computeProof
  Computational-LEDGERSWithLimits .completeness = LEDGERSWithLimits-completeness

LEDGERS-computeProof
  : (Γw : LedgersEnv) (ls : LedgerState) (topTxs : List TopLevelTx)
  → ComputationResult String (∃[ ls' ] Γw ⊢ ls ⇀⦇ topTxs ,LEDGERS⦈ ls')
LEDGERS-computeProof Γw ls topTxs
  with LEDGERSWithLimits-computeProof Γw ⟦ ls , 0 , 0ᵉᵘ ⟧ topTxs
... | failure e = failure e
... | success (s' , step) =
  success (LedgersWithLimitsState.ledgerState s' , LedgersWithLimitsState.refScriptsSizeAcc s' , LedgersWithLimitsState.exUnitsAcc s' , step)

LEDGERS-completeness
  : (Γw : LedgersEnv) (ls : LedgerState) (topTxs : List TopLevelTx) (ls' : LedgerState)
  → Γw ⊢ ls ⇀⦇ topTxs ,LEDGERS⦈ ls'
  → (proj₁ <$> LEDGERS-computeProof Γw ls topTxs) ≡ success ls'
LEDGERS-completeness Γw ls topTxs ls' (accRS , accEU , step)
  with LEDGERSWithLimits-computeProof Γw ⟦ ls , 0 , 0ᵉᵘ ⟧ topTxs
     | LEDGERSWithLimits-completeness Γw ⟦ ls , 0 , 0ᵉᵘ ⟧ topTxs ⟦ ls' , accRS , accEU ⟧ step
... | success _ | refl = refl

instance
```
-->

```agda
  Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
```

<!--
```agda
  Computational-LEDGERS .computeProof = LEDGERS-computeProof
  Computational-LEDGERS .completeness = LEDGERS-completeness
```
-->
