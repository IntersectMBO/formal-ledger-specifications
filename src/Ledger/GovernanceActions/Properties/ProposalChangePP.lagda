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

\begin{claim}[%
  \LedgerMod{GovernanceActions/Properties/ProposalChangePP.lagda}{\AgdaModule{ProposalChangePP}}:
  PParam updates have non-empty groups%
  ]\

  \begin{itemize}
    \item \textit{Informally}.
      Let \ab{p}~:~\GovProposal{} be a governance proposal and suppose the \GovActionType{} 
      of \ab{p}~\AgdaField{.action} is \ChangePParams{}.  If the data
      field of \ab{p}---that is \ab{pu} = \ab{p}~\AgdaField{.action}~\AgdaField{.gaData}---is
      denoted by \ab{pu} (``parameter update''), then the set
      \AgdaField{updateGroups}~\ab{pu} is nonempty.
    \item \textit{Formally}.
\begin{code}
ProposalChangePPHasGroup :
  {tx  : Tx}
  {p   : GovProposal}
  (pu  : PParamsUpdate)
  → p ∈ Tx.body tx
  → p .GovProposal.action ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → Type -- replace with `updateGroups pu ≢ ∅` and prove it.
ProposalChangePPHasGroup pu _ _ = updateGroups pu ≢ ∅
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{GovernanceActions/Properties/ProposalChangePP.lagda}{\AgdaModule{ProposalChangePP}} module
      of the \href{\repourl}{formal ledger repository}).
    \item \textit{Remarks}.
      \begin{enumerate}
        \item
          This property concerns the function \updateGroups{}, which is a map from
          \PParamsUpdate{} to $ℙ$~\PParamGroup{}.
        \item
          The \PParamGroup{} data type is defined in the \LedgerModule{PParams} module;
          an inhabitant of \PParamGroup{} belongs to one of five groups:
          \NetworkGroup{}, \EconomicGroup{},  \TechnicalGroup{}, \GovernanceGroup{}, \SecurityGroup{}.
        \item
          The record type \PParamsDiff{}, defined in \LedgerModule{PParams}, has
          three fields; the two that are relevant here are \PParamsUpdate{} (a type) and \updateGroups{}.
      \end{enumerate}
  \end{itemize}
\end{claim}
