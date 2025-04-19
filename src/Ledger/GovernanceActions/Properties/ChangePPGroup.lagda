\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.GovernanceActions.Properties.ChangePPGroup
  (txs : _) (open TransactionStructure txs)
  where
\end{code}

% If the module name changes, change the following macro to match!
\newcommand{\ChangePPGroup}{GovernanceActions/Properties/ChangePPGroup}

\begin{code}[hide]
open import Ledger.Prelude

instance
  _ : IsSet TxBody GovProposal
  _ = record { toSet = fromList ∘ TxBody.txprop }
\end{code}

\begin{claim}[%
  \LedgerMod{\ChangePPGroup.lagda}{\AgdaModule{\ChangePPGroup{}}}:
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
ChangePPHasGroup : {tx : Tx} {p : GovProposal} (pu : PParamsUpdate)
  → p ∈ Tx.body tx → p .GovProposal.action ≡ ⟦ ChangePParams , pu ⟧ᵍᵃ
  → Type
ChangePPHasGroup pu _ _ = updateGroups pu ≢ ∅
\end{code}
    \item \textit{Proof}. \textit{To appear} (in the
      \LedgerMod{\ChangePPGroup.lagda}{\AgdaModule{\ChangePPGroup{}}} module
      of the \href{\repourl}{formal ledger repository}).
  \end{itemize}
\end{claim}
