\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.GovernanceActions.Properties.ProposalChangePP
  (txs : _) (open TransactionStructure txs)
  where

open import Ledger.Prelude

instance
  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txprop }
\end{code}

\begin{property}[%
  \LedgerMod{GovernanceActions/Properties/ProposalChangePP.lagda}{\AgdaModule{ProposalChangePP}}:
  PParam updates have non-empty groups;
  \textbf{to prove}%
]\

\textit{Preliminary remarks}.
\begin{itemize}
  \item
    This property concerns the function \updateGroups{}, which is a map from
    \UpdateT{} to $ℙ$~\PParamGroup{}.
  \item
    The \PParamGroup{} data type is defined in the \LedgerModule{PParams} module;
    an inhabitant of \PParamGroup{} belongs to one of five groups:
    \NetworkGroup{}, \EconomicGroup{},  \TechnicalGroup{}, \GovernanceGroup{}, \SecurityGroup{}.
  \item
    The record type \PParamsDiff{}, defined in \LedgerModule{PParams}, has
    three fields; the two that are relevant here are \UpdateT{} (a type) and \updateGroups{}.
  \item
    Previously, we had renamed \UpdateT{} to \PParamsUpdate{}, but we have since
  abandoned such renamings in an effort reduce complexity and make the whole ledger
  formalization simpler and easier to comprehend.
\end{itemize}  

\textit{Property}.
\begin{itemize}
  \item \textit{Informally}.
    Suppose \ab{p} is a goveranance proposal (\GovProposal{}) whose \AgdaField{action}
    (\GovAction{}) has \GovActionType{} \ChangePParams{} and \GovActionData{} \ab{up}.
    Then the set \AgdaField{updateGroups}~\ab{up} is nonempty.
  \item \textit{Formally}.
    Assume
\begin{code}[hide]
ProposalChangePPHasGroup :
\end{code}
\begin{code}
  {tx  : Tx}
  {p   : GovProposal}
  {up  : UpdateT}
\end{code}
\begin{code}[hide]
  →
\end{code}
with
\begin{code}[inline]
  p ∈ Tx.body tx
\end{code}
\begin{code}[hide]
  →
\end{code}
 and suppose
\begin{code}[inline]
  p .GovProposal.action ≡ ⟦ ChangePParams , up ⟧ᵍᵃ
\end{code}
\begin{code}[hide]
  → Type
\end{code}
\begin{code}[hide]
ProposalChangePPHasGroup {tx}{p}{up} _ _ =
\end{code}
.  Then
\begin{code}[inline]
   updateGroups up ≢ ∅
\end{code}
.
\end{itemize}
\textit{Proof}. TODO
\end{property}
