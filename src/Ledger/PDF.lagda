\documentclass[11pt,a4paper,dvipsnames,twosided]{article}
\usepackage{unicode-math}
\setsansfont{XITSMath-Regular.otf}

\usepackage{newunicodechar}
\usepackage{longtable}
\newunicodechar{ᵇ}{\ensuremath{^b}}
\newunicodechar{ᶜ}{\ensuremath{^c}}
\newunicodechar{ᵈ}{\ensuremath{^d}}
\newunicodechar{ᵉ}{\ensuremath{^e}}
\newunicodechar{ᶠ}{\ensuremath{^f}}
\newunicodechar{ᵐ}{\ensuremath{^m}}
\newunicodechar{ᵖ}{\ensuremath{^p}}
\newunicodechar{ᵘ}{\ensuremath{^u}}
\newunicodechar{ᵛ}{\ensuremath{^v}}
\newunicodechar{⁺}{\ensuremath{^+}}
\newunicodechar{⁻}{\ensuremath{^-}}
\newunicodechar{¹}{\ensuremath{^1}}
\newunicodechar{₁}{\ensuremath{_1}}
\newunicodechar{₂}{\ensuremath{_2}}
\newunicodechar{₃}{\ensuremath{_3}}
\newunicodechar{σ}{\ensuremath{\sigma}}
\newunicodechar{≤}{\ensuremath{\leq}}
\newunicodechar{≢}{\ensuremath{\nequiv}}
\newunicodechar{❴}{\ensuremath{\{}}
\newunicodechar{❵}{\ensuremath{\}}}
\newunicodechar{⊢}{\ensuremath{\vdash}}
\newunicodechar{⇀}{\ensuremath{\rightharpoonup}}
% TODO: figure something out for the parentheses - the font doesn't support those in one place
\newunicodechar{⦇}{\ensuremath{(}}
\newunicodechar{⦈}{\ensuremath{)}}

\usepackage[margin=2.5cm]{geometry}
\usepackage{float}
\floatstyle{boxed}
\restylefloat{figure}

\usepackage{iohk}    %% (we moved some custom macros from this file to `src/latex/iohk.sty`)

\usepackage[hidelinks]{hyperref}
\usepackage[links]{agda}
\usepackage{pifont}  %% (needed for checkmark, `\ding{51}`)

\newtheorem{property}{Property}[section]

\begin{document}

\input{acronyms}

\tableofcontents

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.PDF (txs : TransactionStructure) where

open import Ledger.BaseTypes
open import Ledger.Introduction

open import Ledger.Utxo txs
open import Ledger.Utxow txs
open import Ledger.Deleg
open import Ledger.Chain txs

open import Ledger.PPUp
open import Ledger.PPUp.Properties

open import Ledger.Ledger.Properties

open import Ledger.TokenAlgebra.ValueSet
\end{code}

\include{Ledger/Introduction}
\include{Ledger/Crypto}
\include{Ledger/BaseTypes}
\include{Ledger/TokenAlgebra}
\include{Ledger/Address}
\include{Ledger/Script}
\include{Ledger/GovernanceActions}
\include{Ledger/PParams}
\include{Ledger/Transaction}
\include{Ledger/Utxo}
\include{Ledger/Utxow}
%\include{Ledger/Tally}
\include{Ledger/Deleg}
\include{Ledger/Ledger}
\include{Ledger/Ratify}
\include{Ledger/Chain}

\section{Properties}
\input{Ledger/Utxo/Properties}

\end{document}
