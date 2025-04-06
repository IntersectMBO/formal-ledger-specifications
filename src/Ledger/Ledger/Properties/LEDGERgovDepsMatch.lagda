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

module _ (tx : Tx) (Γ : LEnv) (s : LState) where
  open Tx tx renaming (body to txb); open TxBody txb
  open LEnv Γ renaming (pparams to pp)
  open PParams pp using (govActionDeposit)
  open LState s
  open LEDGER-PROPS tx Γ s using (utxoDeps; updateGovStates; STS→GovSt≡)
  open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
  open SetoidProperties tx Γ s using (|ᵒ-GAs-pres; props-dpMap-votes-invar; utxo-govst-connex; noGACerts)

  -- GA Deposits Invariance Property for LEDGER STS ----------------------------------------------------
  LEDGER-govDepsMatch : ∀ {s' : LState} → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                        → govDepsMatch s → govDepsMatch s'
  LEDGER-govDepsMatch (LEDGER-I⋯ refl (UTXOW-UTXOS (Scripts-No _))) aprioriMatch = aprioriMatch

  LEDGER-govDepsMatch {s' = s'}
    utxosts@(LEDGER-V⋯ tx-valid (UTXOW-UTXOS (Scripts-Yes x)) _ GOV-sts) aprioriMatch =
    let open LState s' renaming (govSt to govSt'; certState to certState') in
    begin
      filterˢ isGADeposit (dom (updateDeposits pp txb utxoDeps))
        ≈⟨ noGACerts txcerts (updateProposalDeposits txprop txid govActionDeposit utxoDeps) ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txprop txid govActionDeposit utxoDeps))
        ≈⟨ utxo-govst-connex txprop aprioriMatch ⟩
      fromList (dpMap (updateGovStates (map inj₂ txprop) 0 govSt))
        ≈˘⟨ props-dpMap-votes-invar txvote txprop ⟩
      fromList (dpMap (updateGovStates (txgov txb) 0 govSt ))
        ≈˘⟨ |ᵒ-GAs-pres 0 govSt certState' ⟩
      fromList (dpMap (updateGovStates (txgov txb) 0 (rmOrphanDRepVotes certState' govSt)))
        ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
      fromList (dpMap govSt') ∎

  LEDGER-govDepsMatch {s' = s'} utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch
\end{code}
