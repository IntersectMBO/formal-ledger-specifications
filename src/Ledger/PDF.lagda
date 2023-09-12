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

\usepackage{iohk}
\usepackage{agda-latex-macros}
\usepackage[hidelinks]{hyperref}
\usepackage[links]{agda}

\newcommand{\N}{\ensuremath{\mathbb{N}}}

%%
%% Functions
%%
\newcommand{\txins}[1]{\fun{txins}~ \var{#1}}
\newcommand{\txouts}[1]{\fun{txouts}~ \var{#1}}
\newcommand{\txid}[1]{\fun{txid}~ \var{#1}}
\newcommand{\outs}[1]{\fun{outs}~ \var{#1}}
\newcommand{\balance}[1]{\fun{balance}~ \var{#1}}
\newcommand{\txfee}[1]{\fun{txfee}~ \var{#1}}

\newtheorem{property}{Property}[section]

%% -- DEFINITIONS -----------------------------------------------------------
%% Set the desired typeface of defined terms here and, at the
%% first occurrence of such a term, enclose it in `\defn{...}`.
\newcommand{\defn}[1]{\textit{#1}}   %  defined terms are typeset in italics
%% \newcommand{\defn}[1]{\textbf{#1}}   %  defined terms are typeset in bold

%% -- For typesetting an Agda field name along with its type -----------------
\newcommand{\FieldTyped}[2]{\AgdaField{#1}\,\AgdaSymbol{:}\,\AgdaDatatype{#2}}

\begin{document}
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
open import Ledger.Ratify.Properties
open import Ledger.Chain.Properties

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
\include{Ledger/Deleg}
\include{Ledger/Ledger}
\include{Ledger/Ratify}
\include{Ledger/Chain}

\section{Properties}
\input{Ledger/Utxo/Properties}

\end{document}
