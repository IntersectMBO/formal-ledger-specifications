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
\end{code}

\include{Ledger/Utxow}
\include{Ledger/Deleg}
\include{Ledger/Ledger}
\include{Ledger/Enact}
\include{Ledger/Ratify2}

\end{document}
