\begin{document}
\begin{code}
module Ledger.PParams (Epoch : Set) where

open import Prelude

Coin = ℕ

record PParams : Set where
  field a             : ℕ
        b             : ℕ
        maxBlockSize  : ℕ
        maxTxSize     : ℕ
        maxHeaderSize : ℕ
        poolDeposit   : Coin
        Emax          : Epoch

record PParamsDiff : Set₁ where
  field UpdateT : Set
        applyUpdate : PParams → UpdateT → PParams

\end{code}
\end{document}
