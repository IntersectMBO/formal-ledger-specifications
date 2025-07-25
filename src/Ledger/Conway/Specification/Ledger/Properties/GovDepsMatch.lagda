\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Ledger.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
\end{code}
% If the module name changes, change the following macro to match!
\newcommand{\LedgerPropGov}{Conway/Ledger/Properties/GovDepsMatch}

\begin{code}[hide]
open import Ledger.Conway.Specification.Certs govStructure using (DepositPurpose)
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties txs abs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs

open import Axiom.Set.Properties th
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
\end{code}

\begin{lemma}[\LedgerMod{\LedgerPropGov.lagda}{\AgdaModule{\LedgerPropGov{}}}: \AgdaFunction{govDepsMatch} is invariant of \LEDGER{} rule%
  ]\label{lem:LedgerGovDepsMatch}
  \nopagebreak
  \begin{itemize}
    \item \textit{Informally}. 
      Suppose \ab{s}, \ab{s'} are ledger states such that
      \ab{s} \AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,LEDGER⦈}~\ab{s'}.
      Let \ab{utxoSt} and \ab{utxoSt'} be their respective \UTxOState{}s and let \ab{govSt}
      and \ab{govSt'} be their respective \GovState{}s.
      If the governance action deposits of \ab{utxoSt} are equal those
      of \ab{govSt}, then the same holds for \ab{utxoSt'} and \ab{govSt'}.
      In other terms, if \AgdaFunction{govDepsMatch}~\ab{s}, then \AgdaFunction{govDepsMatch}~\ab{s'}. 
    \item \textit{Formally}.
\begin{code}
LEDGER-govDepsMatch :  LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch
\end{code}
\begin{code}[hide]
LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

LEDGER-govDepsMatch {Γ}{s}{tx}{s'}
    utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch =
    let  open Tx tx; open TxBody body
         open LEnv Γ renaming (pparams to pp)
         open PParams pp using (govActionDeposit)
         open LState s
         open LState s' renaming (govSt to govSt'; certState to certState')
         open LEDGER-PROPS tx Γ s using (utxoDeps; updateGovStates; STS→GovSt≡)
         open SetoidProperties tx Γ s using (|ᵒ-GAs-pres; props-dpMap-votes-invar; utxo-govst-connex; noGACerts)
    in
    begin
      filterˢ isGADeposit (dom (updateDeposits pp body utxoDeps))
        ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ utxo-govst-connex txprop aprioriMatch ⟩
      fromList (dpMap (updateGovStates (map inj₂ txprop) 0 govSt))
        ≈˘⟨ props-dpMap-votes-invar txvote txprop ⟩
      fromList (dpMap (updateGovStates (txgov body) 0 govSt ))
        ≈˘⟨ |ᵒ-GAs-pres 0 govSt certState' ⟩
      fromList (dpMap (updateGovStates (txgov body) 0 (rmOrphanDRepVotes certState' govSt)))
        ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
      fromList (dpMap govSt') ∎

LEDGER-govDepsMatch {s' = s'} utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch
\end{code}
  \item \textit{Proof}. See the
    \LedgerMod{\LedgerPropGov.lagda}{\AgdaModule{\LedgerPropGov{}}}
    module in the \href{\repourl}{formal ledger repository}.

  \end{itemize}
\end{lemma}
