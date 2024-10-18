\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_)
open import Ledger.Conway.Conformance.Abstract
open import Ledger.Conway.Conformance.Transaction

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
\end{code}

\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}[hide]
_↑ℚ : ℕ → ℚ
n ↑ℚ = mkℚ+ n 1 (1-coprimeTo n ∘ swap)
\end{code}
\begin{code}
scriptsCost : (pp : PParams) → ℕ → Coin
scriptsCost pp scSz with (PParams.refScriptCostStride pp)
... | 0 = 0  -- This case should never occur; refScriptCostStride should always be > 0.
... | suc m =
  scriptsCostAux  0ℚ
                  minFeeRefScriptCoinsPerByte scSz
                  (<′-wellFounded scSz)
\end{code}
\begin{code}[hide]
  where
  open PParams pp
  multiplier = refScriptCostMultiplier
\end{code}
\begin{code}
  sizeIncrement = suc m
  sizeIncrementRational = sizeIncrement ↑ℚ

  scriptsCostAux : ℚ → ℚ → (n : ℕ) → Acc _<′_ n → Coin
  scriptsCostAux acl curTierPrice n (acc rs) with n ≤? sizeIncrement
  ... | yes _ = ∣ floor (acl + (n ↑ℚ * curTierPrice)) ∣
  ... | no p = scriptsCostAux (acl + (sizeIncrementRational * curTierPrice))
                              (multiplier * curTierPrice)
                              (n - sizeIncrement)
                              (rs $ suc∸≤′ (>′-trans (<⇒<′ $ ≰⇒> p) (<⇒<′ z<s)) (<⇒<′ z<s))
\end{code}
\begin{code}[hide]
    where
    >′-trans : ∀ {l m n} → n >′ m → m >′ l → n >′ l
    >′-trans {l} {m} {.(suc m)} <′-base m>l = ≤′-step m>l
    >′-trans {l} {m} {.(suc _)} (≤′-step n>m) m>l = ≤′-step (>′-trans n>m m>l)

    suc∸≤′ : ∀ {n m} → n >′ 0 → m >′ 0 → suc (n ∸ m) ≤′ n
    suc∸≤′ {suc .0} {suc zero} <′-base x = x
    suc∸≤′ {suc .0} {2+ m} <′-base _ = <′-base
    suc∸≤′ {suc _} {suc .0} (≤′-step _) <′-base = <′-base
    suc∸≤′ {suc _} {suc _} (≤′-step x) (≤′-step y) = ≤′-step (suc∸≤′ x y)
\end{code}
\end{AgdaMultiCode}
\caption{Calculation of fees for reference scripts}
\label{fig:scriptsCost}
\end{figure*}
The function \AgdaFunction{scriptsCost} (Fig.~\ref{fig:scriptsCost}) calculates the fee for
reference scripts in the transaction using a function that is piece-wise linear in the size,
where the linear constant multiple grows with each \refScriptCostStride bytes.
Thus, the \AgdaFunction{scriptsCost} function depends on the \AgdaFunction{scriptsTotalSize}
function, which returns an integer that is the total size of the reference script in bytes,
as well as the following protocol parameters:
\begin{itemize}
\item \refScriptCostMultiplier, a rational number, the growth factor or step multiplier that
determines how much the price per byte increases after each increment;
\item \refScriptCostStride, an integer, the size in bytes at which the price per byte grows linearly;
\item \minFeeRefScriptCoinsPerByte, a rational number, the base fee or initial price per byte.
\end{itemize}
