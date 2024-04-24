\begin{code}[hide]
open import Ledger.Prelude

module Ledger.Ratify2 where
\end{code}

\begin{AgdaMultiCode}
\begin{code}
actualVotes  : Bool
actualVotes = true
  where
\end{code}
\begin{code}

  roleVotes : Bool
  roleVotes = true

  getCCHotCred : Bool
  getCCHotCred = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _                        → true

  actualCCVote : Bool
  actualCCVote = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _          → true

  actualCCVotes : Bool
  actualCCVotes = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    _  →  true
\end{code}
\end{AgdaMultiCode}
