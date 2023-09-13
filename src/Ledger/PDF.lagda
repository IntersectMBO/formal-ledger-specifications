\documentclass[11pt,a4paper,dvipsnames]{article}

\include{preamble}

\begin{document}
\tableofcontents

\begin{code}[hide]
{-# OPTIONS  #-}

module Ledger.PDF where

open import Ledger.BaseTypes
open import Ledger.Introduction
open import Ledger.Crypto
open import Ledger.Epoch
open import Ledger.Address
open import Ledger.Script
open import Ledger.PParams

open import Ledger.GovStructure
open import Ledger.GovernanceActions
open import Ledger.Deleg

open import Ledger.TokenAlgebra
open import Ledger.TokenAlgebra.ValueSet
open import Ledger.Transaction

open import Ledger.Utxo
open import Ledger.Utxo.Properties

open import Ledger.Utxow
open import Ledger.Utxow.Properties

open import Ledger.PPUp
open import Ledger.PPUp.Properties

open import Ledger.Ledger
open import Ledger.Ledger.Properties
open import Ledger.Ratify.Properties
open import Ledger.Chain.Properties

open import Ledger.Gov
open import Ledger.Ratify

open import Ledger.Chain
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
