\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Types.GovStructure

module Ledger.Conway.Certs.Properties.VoteDelegsVDeleg (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Certs gs
open import Ledger.Prelude
open import Ledger.Conway.Governance.Actions gs
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\CertsVDelegs}{Conway/Certs/Properties/VoteDelegsVDeleg}

\begin{claim}[%
  \LedgerMod{\CertsVDelegs.lagda}{\AgdaModule{\CertsVDelegs{}}}:
  \voteDelegs{} by \credVoter{} constructor% 
  ]\label{thm:VDelegsInRegDReps}
  \begin{itemize}
    \item \textit{Informally}. A \CertState{} has a \DState{}, \PState{}, and a
      \GState{}.  The \DState{} contains a field \voteDelegs{} which is a
      mapping from \Credential{} to \VDeleg{}.

      \VDeleg{} is a datatype with three constructors; the one of
      interest to us here is \credVoter{}, which takes two arguments,
      a \GovRole{} and a \Credential{}.

      Now suppose we have a collection \ab{C} of credentials---for instance, 
      given \ab{d}~:~\DState{}, take \ab{C} to be the domain of the
      \voteDelegs{} field of \ab{d}.  We could then obtain a set of \VDeleg{}s
      by applying \credVoter{}~\DRep{} to each element of \ab{C}. 

      The present property asserts that the set of \VDeleg{}s that results from the
      application of \credVoter{}~\DRep{} to the domain of the \voteDelegs{} of
      \ab{d} contains the range of the \voteDelegs{} of \ab{d}.
    \item \textit{Formally}.
\begin{code}
voteDelegsVDeleg :  DState → Type
voteDelegsVDeleg d = range (voteDelegsOf d) ⊆ mapˢ (credVoter DRep) (dom (voteDelegsOf d))
\end{code}
    \item \textit{Proof}. To appear in the
      \LedgerMod{\CertsVDelegs.lagda}{\AgdaModule{\CertsVDelegs{}}}
      module in the \href{\repourl}{formal ledger repository}.
  \end{itemize}
\end{claim}
