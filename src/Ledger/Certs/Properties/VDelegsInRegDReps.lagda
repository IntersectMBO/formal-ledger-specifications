\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Types.GovStructure

module Ledger.Certs.Properties.VDelegsInRegDReps (gs : _) (open GovStructure gs) where

open import Ledger.Certs gs
open import Ledger.Prelude
open import Ledger.GovernanceActions gs
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\CertsVDelegs}{Certs/Properties/VDelegsInRegDReps}

\begin{theorem}[%
  \LedgerMod{\CertsVDelegs.lagda}{\AgdaModule{\CertsVDelegs{}}}:
  \ab{vDelegs} is a subset of registered DReps% 
  ]\label{thm:VDelegsInRegDReps}
  \begin{itemize}
    \item \textit{Informally}. A \CertState{} has a \DState{}, \PState{}, and a
      \GState{}.  The \DState{} contains a field \voteDelegs{} which is a
      mapping from \Credential{} to \VDeleg{}.

      \VDeleg{} is a datatype with three constructors; the one of
      interest to us here is \credVoter{}, which takes two arguments,
      a \GovRole{} and a \Credential{}.

      Now suppose we have a collection 𝒞 of credentials---for instance, 
      given \ab{d}~:~\DState{}, take 𝒞 to be the domain of the
      \voteDelegs{} field of \ab{d}.  We could obtain a collection of \VDeleg{}s
      by applying \credVoter{}~\DRep{} to 𝒞. 

      The present property asserts that the set of \VDelegs{}s that results from the
      application of \credVoter{}~\DRep{} to the domain of the \voteDelegs{} of
      \ab{d} contains the range of the \voteDelegs{} of \ab{d}.
    \item \textit{Formally}.
\begin{code}
VDelegsInRegDReps :  {d : DState} → Type
VDelegsInRegDReps {d = d} = range (voteDelegsOf d) ⊆ mapˢ (credVoter DRep) (dom (voteDelegsOf d))
\end{code}
    \item \textit{Proof}. To appear in the
      \LedgerMod{\CertsVDelegs.lagda}{\AgdaModule{\CertsVDelegs{}}}
      module in the \href{\repourl}{formal ledger repository}.
  \end{itemize}
\end{theorem}
