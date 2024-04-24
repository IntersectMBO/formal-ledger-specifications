\documentclass[11pt,a4paper,dvipsnames]{article}

\usepackage{environ}
\NewEnviron{NoConway}{%
\BODY
}
\NewEnviron{Conway}{%
}

\include{preamble}

\begin{document}

\tableofcontents

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.PDF where

open import Ledger.Prelude
\end{code}

\begin{AgdaMultiCode}
\begin{code}
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
