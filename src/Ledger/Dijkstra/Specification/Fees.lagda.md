---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Fees.lagda.md
---

# Fee Calculation {#sec:fees}

This section defines the function used to compute the fees associated with reference scripts.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_; ≤-trans; ∣_∣)

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Dijkstra.Specification.Script.Base
open import Ledger.Dijkstra.Specification.PParams

module Ledger.Dijkstra.Specification.Fees
  {cryptoStructure : _} {epochStructure : _}
  {scriptStructure : ScriptStructure cryptoStructure epochStructure}
  (pp : PParams cryptoStructure epochStructure scriptStructure)
  where

open import Data.Rational using (0ℚ; ℚ; mkℚ+; _*_; floor)
open import Data.Rational.Literals using (number)
open import Ledger.Prelude.Numeric
open import Data.Nat.Induction using (<′-wellFounded)
open import Data.Nat.Properties using (<⇒<′; ≰⇒>; ∸-monoʳ-≤; +-monoʳ-≤; n≤1+n; m+[n∸m]≡n; ≤-reflexive; ≤-trans)
open import Data.Integer using (∣_∣)
open import Induction.WellFounded using (Acc; acc)
open import Agda.Builtin.FromNat using (Number)

open Number number renaming (fromNat to fromℕ)
```
-->

## Calculation of Fees for Reference Scripts

See [Kuleshevich24](#adr9).

```agda
scriptsCost : ℕ → Coin
scriptsCost scriptSize
  = scriptsCostAux 0ℚ minFeeRefScriptCoinsPerByte scriptSize (<′-wellFounded scriptSize)
    where
    -- Base fee or initial price per byte.
    minFeeRefScriptCoinsPerByte : ℚ
    minFeeRefScriptCoinsPerByte = PParams.minFeeRefScriptCoinsPerByte pp

    -- Price increase per byte per increment.
    refScriptCostMultiplier : ℚ
    refScriptCostMultiplier = PParams.refScriptCostMultiplier pp

    -- Size in bytes at which price per byte grows linearly.
    refScriptCostStride : ℕ⁺
    refScriptCostStride = PParams.refScriptCostStride pp

    scriptsCostAux : ℚ        -- accumulator
                   → ℚ        -- current tier price
                   → (n : ℕ)  -- remaining script size
                   → Acc _<′_ n
                   → Coin
    scriptsCostAux acl curTierPrice n (acc rs) = case  n ≤? fromℕ⁺ refScriptCostStride of λ where
      (yes _)  → ∣ floor (acl + (fromℕ n * curTierPrice)) ∣
      (no  p)  → scriptsCostAux
                   (acl + (fromℕ (fromℕ⁺ refScriptCostStride) * curTierPrice))
                   (refScriptCostMultiplier * curTierPrice)
                   (n - fromℕ⁺ refScriptCostStride)
                   (rs $ <⇒<′ (suc∸≤ (≤-trans (s<s z≤n) (≰⇒> p)) (ℕ⁺->0 refScriptCostStride)))
        where
        suc∸≤ : ∀ {n m : ℕ} → n > 0 → m > 0 → n ∸ m < n
        suc∸≤ {n} {.suc m} p (s≤s q) = ≤-trans (+-monoʳ-≤ 1 (∸-monoʳ-≤ n (s<s q)))
                                               (≤-reflexive (m+[n∸m]≡n p))
```

# References {#references .unnumbered}

**\[Kuleshevich24\]** <span id="adr9" label="adr9"></span> Alexey
Kuleshevich. *Changes to the fee calculation due to Reference Scripts*.
2024.
