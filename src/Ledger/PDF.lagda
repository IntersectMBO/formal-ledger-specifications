\documentclass{article}
\usepackage{agda}

\begin{document}
\begin{AgdaMultiCode}
\begin{code}
module Ledger.PDF where
open import Ledger.Prelude

ff : Bool
ff = true
  where
\end{code}
\begin{code}
  f1 : Bool
  f1 = true

  f2 : Bool
  f2 = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
      _ → true

  f3 : Bool
  f3 = case true of
\end{code}
\begin{code}[hide]
    λ where
\end{code}
\begin{code}
    _ → true
\end{code}
\end{AgdaMultiCode}

\end{document}
