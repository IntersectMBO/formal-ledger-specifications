\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_)
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Fees
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Rational using (0ℚ; ℚ; mkℚ+; _*_; floor)
open import Data.Nat.Coprimality using (Coprime; 1-coprimeTo)
open import Data.Nat.Properties using (<⇒<′; <′⇒<; ≰⇒>)
-- open import Data.Nat.Properties.Ext using (suc∸≤′)
open import Data.Integer using (∣_∣)
open import Data.Product using (swap)
\end{code}

The function \AgdaFunction{scriptsCost} calculates the fee for reference scripts in the transaction
using a function that is piece-wise linear in the size, where the linear constant multiple grows with each
\refScriptCostStride bytes.  Thus, the \AgdaFunction{scriptsCost} function depends on the
\AgdaFunction{scriptsTotalSize} function, which returns an integer that is the total size of
the reference script in bytes, as well as the following protocol parameters:
\begin{itemize}
\item \refScriptCostMultiplier, a rational number, the growth factor or step multiplier that determines how
much the price per byte increases after each increment;
\item \refScriptCostStride, an integer, the size in bytes at which the price per byte grows linearly;
\item \minFeeRefScriptCoinsPerByte, a rational number, the base fee or initial price per byte.
\end{itemize}

\begin{code}[hide]
_↑ℚ : ℕ → ℚ
n ↑ℚ = mkℚ+ n 1 (1-coprimeTo n ∘ swap)

data Terminates (x : ℕ) : Set where
  termination-proof : (∀ y → (y <′ x) → Terminates y) → Terminates x


base-case : (∀ y → (y <′ zero) → Terminates y)
base-case _ ()

generateTerminationProof : (n : ℕ) → Terminates n

induction : (n : ℕ) → (y : ℕ) → (y <′ n) → Terminates y
induction n zero _ = termination-proof base-case
induction .(suc (suc y')) (suc y') ≤′-refl =  generateTerminationProof (suc y')
induction .(suc n) (suc y') (≤′-step {n} m≤′n) = induction n (suc y') m≤′n

generateTerminationProof zero = termination-proof (base-case)
generateTerminationProof (suc limit) = termination-proof (induction (suc limit))

\end{code}

\begin{code}
scriptsTotalSize : UTxO → Tx → Coin
scriptsTotalSize utxo tx = ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x

scriptsCost : (pp : PParams) → UTxO → Tx → Coin
scriptsCost pp utxo tx with (PParams.refScriptCostStride pp)
... | 0 = 0  -- This case should never occur; refScriptCostStride should always be > 0.
... | suc m = goal
  where
  open PParams pp
  multiplier = refScriptCostMultiplier
  sizeIncrement = suc m
  sizeIncrementRational = sizeIncrement ↑ℚ

  scriptsCostAux : ℚ → ℚ → (n : ℕ) → Terminates n → Coin
  scriptsCostAux acc curTierPrice n (termination-proof tproof) with n ≤? sizeIncrement
  ... | yes _ = ∣ floor (acc + (n ↑ℚ * curTierPrice)) ∣
  ... | no p = scriptsCostAux (acc + (sizeIncrementRational * curTierPrice)) (multiplier * curTierPrice) (n - sizeIncrement)
                 (tproof (n - sizeIncrement) (>′0⇒suc∸≤′ (m>′0⇒n>′0 sizeIncrement>′0 p)))
    where
    -- Everything below, in this `where` block, is needed only for the
    -- (well-founded recursion) proof that scriptCostAux terminates.
    sizeIncrement>′0 : sizeIncrement >′ 0
    sizeIncrement>′0 = <⇒<′ z<s

    >′-trans : ∀ {l m n} → n >′ m → m >′ l → n >′ l
    >′-trans {l} {m} {.(suc m)} <′-base m>l = ≤′-step m>l
    >′-trans {l} {m} {.(suc _)} (≤′-step n>m) m>l = ≤′-step (>′-trans n>m m>l)

    suc∸≤′ : ∀ {n m} → n >′ 0 → m >′ 0 → suc (n ∸ m) ≤′ n
    suc∸≤′ {suc .0} {suc zero} <′-base x = x
    suc∸≤′ {suc .0} {2+ m} <′-base _ = <′-base
    suc∸≤′ {suc _} {suc .0} (≤′-step _) <′-base = <′-base
    suc∸≤′ {suc _} {suc _} (≤′-step x) (≤′-step y) = ≤′-step (suc∸≤′ x y)

    m>′0⇒n>′0 : ∀ {n m} → m >′ 0 → ¬ (n ≤ m) → n >′ 0
    m>′0⇒n>′0 {n} {m} m>0 ¬n≤m = >′-trans (<⇒<′ (≰⇒> ¬n≤m)) m>0

    >′0⇒suc∸≤′ : ∀ {n} → (n >′ 0) → suc (n ∸ sizeIncrement) ≤′ n
    >′0⇒suc∸≤′ {n} n>0 = suc∸≤′ n>0 sizeIncrement>′0

  goal : Coin
  goal = scriptsCostAux 0ℚ minFeeRefScriptCoinsPerByte (scriptsTotalSize utxo tx) (generateTerminationProof (scriptsTotalSize utxo tx))

\end{code}
