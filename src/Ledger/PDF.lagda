\documentclass[11pt,a4paper,dvipsnames]{article}

\usepackage{environ}
\NewEnviron{NoConway}{%
\BODY
}
\NewEnviron{Conway}{%
}

\input{preamble}

\begin{document}
\title{Formal Specification of the Cardano Blockchain Ledger}

\author{%
  James Chapman \\ {\small \url{james.chapman@iohk.io}}
  \and
  Jared Corduan \\ {\small \url{jared.corduan@iohk.io}}
  \and
  William DeMeo \\ {\small \url{william.demeo@iohk.io}}
  \and
  Javier Diaz \\ {\small \url{javier.diaz@iohk.io}}
  \and
  Alasdair Hill \\ {\small \url{alasdair.hill@iohk.io}}
  \and
  Joosep Jääger \\ {\small \url{joosep.jaager@iohk.io}}
  \and
  Andre Knispel \\ {\small \url{andre.knispel@iohk.io}}
  \and
  Alexey Kuleshevich \\ {\small \url{alexey.kuleshevich@iohk.io}}
  \and
  Orestis Melkonian \\ {\small \url{orestis.melkonian@iohk.io}}
  \and
  Ulf Norell \\ {\small \url{ulf.norell@quviq.com}}
  \and
  Carlos Tom\'{e} Corti\~{n}as \\ {\small \url{carlos.tome-cortinas@iohk.io}}
  \and
  Polina Vinogradova \\ {\small \url{polina.vinogradova@iohk.io}}
}

\date{\today}

\maketitle

\tableofcontents

\begin{code}[hide]
{-# OPTIONS --safe #-}

module Ledger.PDF where

open import Ledger.BaseTypes
open import Ledger.Introduction
open import Ledger.Crypto
open import Ledger.Types.Epoch
open import Ledger.Address
open import Ledger.Script
open import Ledger.ScriptValidation
open import Ledger.PParams
open import Ledger.Fees

open import Ledger.Types.GovStructure
open import Ledger.GovernanceActions
open import Ledger.Certs

open import Ledger.TokenAlgebra
open import Ledger.TokenAlgebra.ValueSet
open import Ledger.Transaction

open import Ledger.Utxo
open import Ledger.Utxo.Properties

open import Ledger.Utxow
open import Ledger.Utxow.Properties

open import Ledger.Ledger
open import Ledger.Ledger.Properties
open import Ledger.Ratify.Properties
open import Ledger.Epoch.Properties
open import Ledger.Chain.Properties

open import Ledger.Gov
open import Ledger.Enact
open import Ledger.Ratify
open import Ledger.Epoch
open import Ledger.Chain

open import Ledger.Properties

open import EssentialAgda
open import Ledger.PDF.ConwayBootstrapEnact
open import Ledger.PDF.ConwayBootstrap
\end{code}

\include{Ledger/Introduction}
\include{Notation}
\include{Ledger/Crypto}
\include{Ledger/BaseTypes}
\include{Ledger/TokenAlgebra}
\include{Ledger/Address}
\include{Ledger/Script}
\include{Ledger/PParams}
\include{Ledger/Fees}
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

\clearpage

\addcontentsline{toc}{section}{References}
\printbibliography

\clearpage

\appendix

\input{EssentialAgda}
\input{Ledger/PDF/ConwayBootstrapEnact}
\input{Ledger/PDF/ConwayBootstrap}

\end{document}
