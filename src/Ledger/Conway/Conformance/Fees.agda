
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_)
open import Ledger.Conway.Conformance.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Fees
  (txs : _) (open TransactionStructure txs)
  -- (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Rational using (0ℚ; ℚ; mkℚ+; _*_; floor)
open import Data.Nat.Coprimality using (1-coprimeTo)
open import Data.Nat.Induction using (<′-wellFounded)
open import Data.Nat.Properties using (<⇒<′; ≰⇒>)
open import Data.Integer using (∣_∣)
open import Data.Product using (swap)
open import Induction.WellFounded using (Acc; acc)

_↑ℚ : ℕ → ℚ
n ↑ℚ = mkℚ+ n 1 (1-coprimeTo n ∘ swap)

scriptsCost : (pp : PParams) → ℕ → Coin
scriptsCost pp scSz with (PParams.refScriptCostStride pp)
... | 0 = 0  -- This case should never occur; refScriptCostStride should always be > 0.
... | suc m =
  scriptsCostAux  0ℚ
                  minFeeRefScriptCoinsPerByte scSz
                  (<′-wellFounded scSz)

  where
  open PParams pp
  multiplier = refScriptCostMultiplier

  sizeIncrement = suc m
  sizeIncrementRational = sizeIncrement ↑ℚ

  scriptsCostAux : ℚ → ℚ → (n : ℕ) → Acc _<′_ n → Coin
  scriptsCostAux acl curTierPrice n (acc rs) with n ≤? sizeIncrement
  ... | yes _ = ∣ floor (acl + (n ↑ℚ * curTierPrice)) ∣
  ... | no p = scriptsCostAux (acl + (sizeIncrementRational * curTierPrice))
                              (multiplier * curTierPrice)
                              (n - sizeIncrement)
                              (rs $ suc∸≤′ (>′-trans (<⇒<′ $ ≰⇒> p) (<⇒<′ z<s)) (<⇒<′ z<s))

    where
    >′-trans : ∀ {l m n} → n >′ m → m >′ l → n >′ l
    >′-trans {l} {m} {.(suc m)} <′-base m>l = ≤′-step m>l
    >′-trans {l} {m} {.(suc _)} (≤′-step n>m) m>l = ≤′-step (>′-trans n>m m>l)

    suc∸≤′ : ∀ {n m} → n >′ 0 → m >′ 0 → suc (n ∸ m) ≤′ n
    suc∸≤′ {suc .0} {suc zero} <′-base x = x
    suc∸≤′ {suc .0} {2+ m} <′-base _ = <′-base
    suc∸≤′ {suc _} {suc .0} (≤′-step _) <′-base = <′-base
    suc∸≤′ {suc _} {suc _} (≤′-step x) (≤′-step y) = ≤′-step (suc∸≤′ x y)

