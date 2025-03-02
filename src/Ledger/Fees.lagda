\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_)
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Fees
  (txs : _) (open TransactionStructure txs)
  where

open import Data.Rational using (0ℚ; ℚ; mkℚ+; _*_; floor)
open import Data.Rational.Literals using (number)
open import Data.Nat.Induction using (<′-wellFounded)
open import Data.Nat.Properties using (≤′-trans; <⇒<′; ≰⇒>)
open import Data.Integer using (∣_∣)
open import Induction.WellFounded using (Acc; acc)
open import Agda.Builtin.FromNat using (Number)

open Number number renaming (fromNat to fromℕ)
\end{code}

\section{Fee Calculation}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
scriptsCost : (pp : PParams) → ℕ → Coin
scriptsCost pp scriptSize
\end{code}
\begin{code}[hide]
  with (PParams.refScriptCostStride pp)
... | 0 = 0  -- This case should never occur; refScriptCostStride should always be > 0.
... | suc m
\end{code}
\begin{code}
  = scriptsCostAux 0ℚ minFeeRefScriptCoinsPerByte scriptSize
\end{code}
\begin{code}[hide]
                  (<′-wellFounded scriptSize)
\end{code}
\begin{code}[hide]
  where
    open PParams pp hiding (refScriptCostStride)
    refScriptCostStride = suc m
\end{code}
\begin{code}
    scriptsCostAux : ℚ        -- accumulator
                   → ℚ        -- current tier price
                   → (n : ℕ)  -- remaining script size
\end{code}
\begin{code}[hide]
                   → Acc _<′_ n
\end{code}
\begin{code}
                   → Coin
    scriptsCostAux acl curTierPrice n
\end{code}
\begin{code}[hide]
      (acc rs)
\end{code}
\begin{code}
        = case n ≤? refScriptCostStride of λ where
            (yes _)  → ∣ floor (acl + (fromℕ n * curTierPrice)) ∣
            (no  p)  → scriptsCostAux (acl + (fromℕ refScriptCostStride * curTierPrice))
                                      (refScriptCostMultiplier * curTierPrice)
                                      (n - refScriptCostStride)
\end{code}
\begin{code}[hide]
                                     (rs $ suc∸≤′ (≤′-trans (<⇒<′ z<s) (<⇒<′ $ ≰⇒> p)) (<⇒<′ z<s))
\end{code}
\begin{code}[hide]
      where
        suc∸≤′ : ∀ {n m} → n >′ 0 → m >′ 0 → n ∸ m <′ n
        suc∸≤′ {suc .0} {suc zero} <′-base x = x
        suc∸≤′ {suc .0} {2+ m} <′-base _ = <′-base
        suc∸≤′ {suc _} {suc .0} (≤′-step _) <′-base = <′-base
        suc∸≤′ {suc _} {suc _} (≤′-step x) (≤′-step y) = ≤′-step (suc∸≤′ x y)
\end{code}
\end{AgdaMultiCode}
\caption{Calculation of fees for reference scripts}
\label{fig:scriptsCost}
\end{figure*}

The function \scriptsCost{} (\cref{fig:scriptsCost}) calculates
the fee for reference scripts in a transaction. It takes as input the
total size of the reference scripts in bytes, which can be calculated
using \AgdaFunction{refScriptsSize}~(cref{fig:functions:utxo-conway}).
%
In addition, \scriptsCost{} depends on the following constants (which
are bundled with the protocol parameters, see
\cref{fig:protocol-parameter-declarations}):
%
\begin{itemize}
  \item \AgdaFunction{refScriptCostMultiplier}, a rational number, the
   growth factor or step multiplier that determines how much the price
   per byte increases after each increment;
  \item \AgdaFunction{refScriptCostStride}, an integer, the size in bytes at which
   the price per byte grows linearly;
  \item \AgdaFunction{minFeeRefScriptCoinsPerByte}, a rational number,
   the base fee or initial price per byte.
\end{itemize}

The function \scriptsCost{} calculates the fee using a function,
\AgdaFunction{scriptsCostAux}, that is piece-wise linear in the size,
where the linear constant multiple grows with each
\AgdaFunction{refScriptCostStride} bytes.
