\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_%_; _*_)
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Costs
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Rational using (0ℚ; ℚ; mkℚ+; _*_; floor)
open import Data.Nat.Coprimality using (Coprime; 1-coprimeTo)
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
\end{code}

\begin{code}
scriptsTotalSize : UTxO → Tx → Coin
scriptsTotalSize utxo tx = ∑[ x ← mapValues scriptSize (setToHashMap (refScripts tx utxo)) ] x

scriptsCost : PParams → UTxO → Tx → Coin
scriptsCost pp utxo tx = scriptsCostAux 0ℚ minFeeRefScriptCoinsPerByte (scriptsTotalSize utxo tx)
  where
  open PParams pp
  multiplier = refScriptCostMultiplier
  sizeIncrement = refScriptCostStride
  sizeIncrementRational = sizeIncrement ↑ℚ

  scriptsCostAux : ℚ → ℚ → ℕ → Coin
  scriptsCostAux acc curTierPrice n with n ≤? sizeIncrement
  ... | yes _ = ∣ floor (acc + (n ↑ℚ * curTierPrice)) ∣
  ... | no _ = scriptsCostAux (acc + (sizeIncrementRational * curTierPrice)) (multiplier * curTierPrice) (n - sizeIncrement)
\end{code}
