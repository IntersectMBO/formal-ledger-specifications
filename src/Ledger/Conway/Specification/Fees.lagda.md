# Fee Calculation {#sec:fees}

This section defines the functions used to compute the fees associated with reference scripts.

The function `scriptsCost`{.AgdaFunction},
defined in the [Calculation of Fees for Reference Scripts][] section, calculates the
fee for reference scripts in a transaction. It takes as input the total
size of the reference scripts in bytes---calculated by
`refScriptsSize`{.AgdaFunction} (see [Functions used in UTxO rules][])---and
uses a function (`scriptsCostAux`{.AgdaFunction}) that is piece-wise
linear in the size, where the linear constant multiple grows with each
`refScriptCostStride`{.AgdaFunction} bytes. In addition,
`scriptsCost`{.AgdaFunction} depends on the following constants (which
are bundled with the protocol parameters; see the
[Protocol Parameter Definitions][] section):

- `refScriptCostMultiplier`{.AgdaFunction}, a rational number, the
  growth factor or step multiplier that determines how much the price
  per byte increases after each increment;

- `refScriptCostStride`{.AgdaFunction}, an integer, the size in bytes at
  which the price per byte grows linearly;

- `minFeeRefScriptCoinsPerByte`{.AgdaFunction}, a rational number, the
  base fee or initial price per byte.

For background on this particular choice of fee calculation, see
[Kuleshevich24](#adr9).


<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_; ≤-trans; ∣_∣)
open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Fees
  (txs : _) (open TransactionStructure txs)
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

### Calculation of Fees for Reference Scripts {#sec:calculation-of-fees}

```agda
scriptsCost : (pp : PParams) → ℕ → Coin
scriptsCost pp scriptSize
  = scriptsCostAux 0ℚ minFeeRefScriptCoinsPerByte scriptSize
```
<!--
```agda
                  (<′-wellFounded scriptSize)
```
-->
```agda
  where
    minFeeRefScriptCoinsPerByte = PParams.minFeeRefScriptCoinsPerByte pp
    refScriptCostMultiplier = PParams.refScriptCostMultiplier pp
    refScriptCostStride = PParams.refScriptCostStride pp
    scriptsCostAux : ℚ        -- accumulator
                   → ℚ        -- current tier price
                   → (n : ℕ)  -- remaining script size
```
<!--
```agda
                   → Acc _<′_ n
```
-->
```agda
                   → Coin
    scriptsCostAux acl curTierPrice n
```
<!--
```agda
       (acc rs)
```
-->
```agda
       = case  n ≤? fromℕ⁺ refScriptCostStride of
```
<!--
```agda
                λ where
```
-->
```agda
                (yes _)  → ∣ floor (acl + (fromℕ n * curTierPrice)) ∣
                (no  p)  → scriptsCostAux
                             (acl + (fromℕ (fromℕ⁺ refScriptCostStride) * curTierPrice))
                             (refScriptCostMultiplier * curTierPrice)
                             (n - fromℕ⁺ refScriptCostStride)
```
<!--
```agda
                             (rs $ <⇒<′ (suc∸≤ (≤-trans (s<s z≤n) (≰⇒> p)) (ℕ⁺->0 refScriptCostStride)))
      where
        suc∸≤ : ∀ {n m : ℕ} → n > 0 → m > 0 → n ∸ m < n
        suc∸≤ {n} {.suc m} p (s≤s q) = ≤-trans (+-monoʳ-≤ 1 (∸-monoʳ-≤ n (s<s q)))
                                               (≤-reflexive (m+[n∸m]≡n p))
```
-->


# References {#references .unnumbered}

**\[Kuleshevich24\]** <span id="adr9" label="adr9"></span> Alexey
Kuleshevich. *Changes to the fee calculation due to Reference Scripts*.
2024.
