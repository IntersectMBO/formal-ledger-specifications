\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract

module Ledger.Ledger.Properties.LEDGERgovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Ledger txs abs
open import Ledger.Ledger.Properties txs abs
open import Ledger.Utxo txs abs
open import Ledger.Certs govStructure using (DepositPurpose)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

module _ where
  open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})

  -- GA Deposits Invariance Property for LEDGER STS ----------------------------------------------------
  LEDGER-govDepsMatch :
\end{code}


\begin{property}[%
  \LedgerMod{Ledger/Properties/LEDGERgovDepsMatch.lagda}{\AgdaModule{LEDGERgovDepsMatch}}:
  \AgdaFunction{govDepsMatch} is a \AgdaDatatype{LEDGER} invariant;
  \textbf{proved}%
]\

\textit{Preliminary remarks}.
\begin{itemize}
  \item
    An inhabitant of the ledger state (\LState{}) type has three fields; the two 
    relevant here are \ab{utxoSt} : \UTxOState{} and \ab{govSt} : \GovState{}.
    The present property asserts that the \AgdaDatatype{LEDGER} rule preserves a
    certain relation between the \ab{utxoSt} and \ab{govSt} fields.
  \item
    An inhabitant of the \GovState{} type is a list of pairs (of type
    \GovActionID{}~×~\GovActionState{}).  Associated with each
    \GovActionID{} is a deposit of type \GovActionDeposit{}.
  \item
    A \UTxOState{} has a \ab{deposits} field (of type \Deposits{}),
    which is a map from \DepositPurpose{} to \Coin{}, and each \DepositPurpose{} is either
    a \CredentialDeposit{}, \PoolDeposit{}, \DRepDeposit{}, or \GovActionDeposit{}.
  \item
    Given a ledger state \ab{s}, we focus on deposits in the
    \UTxOState{} of \ab{s} that are \GovActionDeposit{}s.  The relation we
    consider is whether the set of \GovActionDeposit{}s of the
    \UTxOState{} of \ab{s} is the same as the set of \GovActionDeposit{}s of the
    \GovState{} of \ab{s}.  If this holds, then we write \AgdaFunction{govDepsMatch}~\ab{s}.
\end{itemize}
\textit{Property}.
\begin{itemize}
  \item \textit{Informally}. 
    Suppose \ab{s}, \ab{s'} are ledger states such that
    \ab{s} \AgdaDatatype{⇀⦇}~\ab{tx}~\AgdaDatatype{,LEDGER⦈}~\ab{s'}.
    Let \ab{utxoSt} and \ab{utxoSt'} be their respective \UTxOState{}s and let \ab{govSt}
    and \ab{govSt'} be their respective \GovState{}s.
    If the governance action deposits of \ab{utxoSt} are the same as those
    of \ab{govSt}, then the same holds for \ab{utxoSt'} and \ab{govSt'}.
    In other terms, if \AgdaFunction{govDepsMatch}~\ab{s}, then \AgdaFunction{govDepsMatch}~\ab{s'}. 
  \item \textit{Formally}.
    \begin{AgdaMultiCode}
    Assume
\begin{code}
    {tx    : Tx}       -- a transaction
    {Γ     : LEnv}     -- a ledger environment
    {s s'  : LState}   -- ledger states
\end{code}
\begin{code}[hide]
    →
\end{code}
and
\begin{code}[inline]
    Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
\end{code}
\begin{code}[hide]
    →
\end{code}
.  If
\begin{code}[inline]
    govDepsMatch s
\end{code}
\begin{code}[hide]
    →
\end{code}
, then
\begin{code}[inline]
   govDepsMatch s'
\end{code}
.
\begin{code}[hide]
  LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

  LEDGER-govDepsMatch {tx}{Γ}{s}{s'}
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
\end{AgdaMultiCode}
\end{itemize}
\textit{Proof}. See the \LedgerMod{Ledger/Properties/LEDGERgovDepsMatch.lagda}{\AgdaModule{LEDGERgovDepsMatch}}
  module in our GitHub repository.
\end{property}
