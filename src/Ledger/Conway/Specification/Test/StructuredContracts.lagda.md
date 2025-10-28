---
source_branch: master
source_path: src/Ledger/Conway/Specification/Test/StructuredContracts.lagda.md
---

# Structured Contracts

<!--
```agda
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.TokenAlgebra.Base
open import Ledger.Conway.Specification.TokenAlgebra.ValueSet

module Ledger.Conway.Specification.Test.StructuredContracts
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Utxo txs abs
```
-->

We define an instance of the `StrucSimulation`{.AgdaRecord} record type by
implementing a stateful program on (the Agda specification of) the Cardano ledger.
The following must be specified when defining such an instance.

1.  `State`{.AgdaDatatype}: the program state type.

2.  `Input`{.AgdaDatatype}: the program input type.

3.  `STRUC`{.AgdaDatatype}: the program's small-step semantics.

4.  `πˢ`{.AgdaField}: the projection function of program state from a given
    ledger state.

5.  `πⁱ`{.AgdaField}: the projection function of program input from a given
    `TxInfo`{.AgdaRecord}.

6.  `simulates`{.AgdaField}: the proof obligation required for demonstrating
    that data in items 1--5 are such that the state of the program as it appears
    on the ledger can only be updated according to its small-step
    `STRUC`{.AgdaDatatype} specification.

```agda
SSRel : Type → Type → Type → Type₁
SSRel Env State Input = Env → State → Input → State → Type

record StrucSimulation S I (_⊢_⇀⦇_,STRUC⦈_ : SSRel ⊤ S I) : Type₁ where
  field
    πˢ : LState → Maybe S
    πⁱ : TxInfo → I
    -- here, add optional extra assumptions about ledger state, env, and
    -- transaction that may be too difficult to prove without reasoning about
    -- complete ledger traces; e.g.,
    -- * transaction does not re-add a UTxO entry it spends;
    -- * current Slot is after the validity interval of some previous transaction
    extraAssmp : LEnv → LState → Tx → Type

  _~ˢ_ : LState → S → Type -- R
  u ~ˢ s = πˢ u ≡ just s

  -- only for PlutusV3
  _~ᵉ_ : LEnv × Tx × LState → ⊤ × I → Type
  _~ᵉ_ = λ (le , tx , u) (tt , i) → πⁱ (txInfo PlutusV3 (PParamsOf le) (UTxOOf u) tx) ≡ i

  field
    simulates : ∀ Γ s u tx i′ u′ → extraAssmp Γ u tx →
      ∙ Γ ⊢ u ⇀⦇ tx ,LEDGER⦈ u′
      ∙ (Γ , tx , u) ~ᵉ (tt , i′)
      ∙ u ~ˢ s
      ────────────────────────────────
        ∃[ s′ ] u′ ~ˢ s′
               × tt ⊢ s ⇀⦇ i′ ,STRUC⦈ s′
```
