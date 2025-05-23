# Base Types {#sec:base-types}

<div class="agda-hidden-source">

```agda

{-# OPTIONS --safe #-}

module Ledger.Conway.BaseTypes where

open import Agda.Builtin.FromNat
open import Prelude using (ℕ; _×_)
open import Data.Rational using (ℚ; _≤_)
open import Data.Refinement using (Refinement-syntax)
```

</div>



<div class="agda-hidden-source">

```agda

private
```

</div>



### Some basic types used in many places in the ledger

 
```agda

  Coin   = ℕ
  Slot   = ℕ
  Epoch  = ℕ
```


### Refinement types used in some places in the ledger

 
```agda

  UnitInterval = [ x ∈ ℚ ∣ (0 ≤ x) × (x ≤ 1) ]
```

