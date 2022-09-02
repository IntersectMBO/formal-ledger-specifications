\documentclass[11pt,a4paper,dvipsnames,twosided]{article}
\usepackage{unicode-math}
\setsansfont{XITSMath-Regular.otf}

\usepackage{newunicodechar}
\newunicodechar{ᵇ}{\ensuremath{^b}}
\newunicodechar{ᵐ}{\ensuremath{^m}}
\newunicodechar{ᵖ}{\ensuremath{^p}}
\newunicodechar{₁}{\ensuremath{_1}}
\newunicodechar{₂}{\ensuremath{_2}}
\newunicodechar{σ}{\ensuremath{\sigma}}

\usepackage[margin=2.5cm]{geometry}
\usepackage{float}
\floatstyle{boxed}
\restylefloat{figure}

\usepackage{iohk}

\usepackage[hidelinks]{hyperref}
\usepackage[links]{agda}

\newcommand{\N}{\ensuremath{\mathbb{N}}}
\newcommand{\TxBody}{\type{TxBody}}
\newcommand{\TxWitness}{\type{TxWitness}}
\newcommand{\Tx}{\type{Tx}}
\newcommand{\Ix}{\type{Ix}}
\newcommand{\TxId}{\type{TxId}}
\newcommand{\Addr}{\type{Addr}}
\newcommand{\UTxO}{\type{UTxO}}
\newcommand{\Coin}{\type{Coin}}
\newcommand{\TxIn}{\type{TxIn}}
\newcommand{\TxOut}{\type{TxOut}}
\newcommand{\UTxOEnv}{\type{UTxOEnv}}
\newcommand{\UTxOState}{\ensuremath{\type{UTxOState}}}

%%
%% Functions
%%
\newcommand{\txins}[1]{\fun{txins}~ \var{#1}}
\newcommand{\txouts}[1]{\fun{txouts}~ \var{#1}}
\newcommand{\txid}[1]{\fun{txid}~ \var{#1}}
\newcommand{\outs}[1]{\fun{outs}~ \var{#1}}
\newcommand{\balance}[1]{\fun{balance}~ \var{#1}}
\newcommand{\txfee}[1]{\fun{txfee}~ \var{#1}}

\newcommand{\wcard}[0]{\rule[-.5mm]{2mm}{.2mm}}
\newcommand{\leteq}{\ensuremath{\mathrel{\mathop:}=}}

\newtheorem{property}{Property}[section]


\begin{document}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Script
open import Ledger.Transaction

module Ledger (txs : TransactionStructure) where

open import Ledger.Utxo txs
open import Ledger.Utxow txs
\end{code}

\include{ledger/address}
\include{ledger/script}
\include{ledger/transaction}
\include{ledger/utxo}
\include{ledger/utxow}

\end{document}
