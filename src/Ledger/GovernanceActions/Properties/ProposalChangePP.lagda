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

  \begin{itemize}
    \item \textit{Informally}.
      Suppose \ab{p} is a governance proposal (\GovProposal{}) whose \AgdaField{action} :
      \GovAction{} has \GovActionType{} \ChangePParams{} and \GovActionData{} \ab{up}.
      Then the set \AgdaField{updateGroups}~\ab{up} is nonempty.
    \item \textit{Formally}.
\begin{code}
ProposalChangePPHasGroup :  {tx  : Tx}
                            {p   : GovProposal}
                            {up  : PParamsUpdate}
                            → p ∈ Tx.body tx
                            → p .GovProposal.action ≡ ⟦ ChangePParams , up ⟧ᵍᵃ
                            → Type
ProposalChangePPHasGroup {tx}{p}{up} _ _ = updateGroups up ≢ ∅
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{GovernanceActions/Properties/ProposalChangePP.lagda}{\AgdaModule{ProposalChangePP}} module
      of the \href{\repourl}{formal ledger GitHub repository}).
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
\end{property}
