\documentclass[11pt,a4paper,dvipsnames]{article}

\usepackage{environ}
\NewEnviron{NoConway}{%
\BODY
}
\NewEnviron{Conway}{%
}

\input{preamble}

\begin{document}

\tableofcontents

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.Conway.Conformance.PDF where

open import Ledger.Conway.Conformance.BaseTypes
open import Ledger.Conway.Conformance.Introduction
open import Ledger.Conway.Conformance.Notation
open import Ledger.Conway.Conformance.Crypto
open import Ledger.Conway.Conformance.Types.Epoch
open import Ledger.Conway.Conformance.Address
open import Ledger.Conway.Conformance.Script
open import Ledger.Conway.Conformance.ScriptValidation
open import Ledger.Conway.Conformance.PParams

open import Ledger.Conway.Conformance.Types.GovStructure
open import Ledger.Conway.Conformance.GovernanceActions
open import Ledger.Conway.Conformance.Certs

open import Ledger.Conway.Conformance.TokenAlgebra
open import Ledger.Conway.Conformance.TokenAlgebra.ValueSet
open import Ledger.Conway.Conformance.Transaction

open import Ledger.Conway.Conformance.Utxo
open import Ledger.Conway.Conformance.Utxo.Properties

open import Ledger.Conway.Conformance.Utxow
open import Ledger.Conway.Conformance.Utxow.Properties

open import Ledger.Conway.Conformance.Ledger
open import Ledger.Conway.Conformance.Ledger.Properties
open import Ledger.Conway.Conformance.Ratify.Properties
open import Ledger.Conway.Conformance.Chain.Properties

open import Ledger.Conway.Conformance.Gov
open import Ledger.Conway.Conformance.Enact
open import Ledger.Conway.Conformance.Ratify

open import Ledger.Conway.Conformance.Chain

open import Ledger.Conway.Conformance.Properties

open import Ledger.Conway.Conformance.EssentialAgda
open import Ledger.Conway.Conformance.PDF.ConwayBootstrapEnact
open import Ledger.Conway.Conformance.PDF.ConwayBootstrap
\end{code}

\include{Ledger/Introduction}
\include{Ledger/Notation}
\include{Ledger/Crypto}
\include{Ledger/BaseTypes}
\include{Ledger/TokenAlgebra}
\include{Ledger/Address}
\include{Ledger/Script}
\include{Ledger/PParams}
\include{Ledger/GovernanceActions}
\include{Ledger/Transaction}
\include{Ledger/Utxo}
\include{Ledger/Utxow}
\include{Ledger/Gov}
\include{Ledger/Certs}
\include{Ledger/Ledger}
\include{Ledger/Enact}
\include{Ledger/Ratify}
\include{Ledger/Epoch}
\include{Ledger/Chain}

\section{Properties}
\input{Ledger/Utxo/Properties}

\bibliographystyle{abbrv}
\bibliography{references}

\clearpage

\appendix

\input{Ledger/EssentialAgda}
\input{Ledger/PDF/ConwayBootstrapEnact}
\input{Ledger/PDF/ConwayBootstrap}

\end{document}
