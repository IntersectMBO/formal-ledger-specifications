# Base Types of the Cardano Ledger


<!--
```agda
{-# OPTIONS --safe #-}

module Ledger.Prelude.Base where

open import Agda.Primitive using (lzero) renaming (Set to Type) public
open import Data.Nat
```
-->

## Basic Types

```agda
Coin : Type
Coin = ℕ

Donations Fees Reserves Treasury : Type
Donations         = Coin
Fees              = Coin
Reserves          = Coin
Treasury          = Coin
```

<!--
```agda
{- Type classes
   These provide a handy mechanism for associating a Coin value with a type and
   provide a consistent way to access that value via a type class instance.
-}

record HasDonations {a} (A : Type a) : Type a where
  field DonationsOf : A → Donations
open HasDonations ⦃...⦄ public

record HasFees {a} (A : Type a) : Type a where
  field FeesOf : A → Fees
open HasFees ⦃...⦄ public

record HasReserves {a} (A : Type a) : Type a where
  field ReservesOf : A → Reserves
open HasReserves ⦃...⦄ public

record HasTreasury {a} (A : Type a) : Type a where
  field TreasuryOf : A → Treasury
open HasTreasury ⦃...⦄ public

{- For instance, we have record types representing entities that have fees or
   donations associated with them.  If `A` is such a type with a field called `fees`,
   then we would define the following instance of the `HasFees` type class:

       HasFees-A : HasFees A
       HasFees-A .FeesOf = A.fees

   then, if `a : A`, we can access the fees of `a` via `FeesOf a`.  From this
   contrived example, it may seem like this is overkill, but it can be quite useful
   in practice when we have many different types that have fees or donations
   associated with them, and we want to be able to access those values in a
   consistent way.  Moreover, we have many examples of nested records that
   contain fees or donations, and this allows us to access those values without
   having to remember the specific paths to the field names of those record types.
-}
```
-->
