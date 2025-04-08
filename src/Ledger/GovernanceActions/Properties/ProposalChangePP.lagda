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

If \ab{p} is a goveranance proposal to update a parameter, \ab{up}, then\\[4pt]
\(\text{\AgdaField{updateGroups}}~\ab{up} ≢ ∅\).
\\[6pt]
More formally, assume
\begin{code}[hide]
ProposalChangePPHasGroup :
\end{code}
\begin{code}
  {tx  : Tx}
  {p   : GovProposal}
  {up  : PParamsUpdate}
\end{code}
\begin{code}[hide]
  (let open Tx; txb = body tx)
  →
\end{code}
with
\begin{code}[inline]
  p ∈ txb
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
\end{property}
