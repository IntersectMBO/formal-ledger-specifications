<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract

module Ledger.Conway.Specification.Ledger.Properties.GovDepsMatch
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Conway.Specification.Certs govStructure using (DepositPurpose)
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Base txs abs
open import Ledger.Conway.Specification.Ledger.Properties.Computational txs abs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Utxo txs abs

open import Axiom.Set.Properties th
import Relation.Binary.Reasoning.Setoid as SetoidReasoning

open SetoidReasoning (≡ᵉ-Setoid{DepositPurpose})
```
-->

<a id="lem:LedgerGovDepsMatch"></a>
**Lemma (`govDepsMatch`{.AgdaFunction} is invariant of `LEDGER`{.AgdaOperator} rule).**

*Informally*.

Suppose `s`{.AgdaBound} and `s'`{.AgdaBound} are ledger states such that
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `s'`{.AgdaBound}.
Let `utxoSt`{.AgdaBound} and `utxoSt'`{.AgdaBound} be their respective
`UTxOStates`{.AgdaRecord} and let `govSt`{.AgdaBound}  and
`govSt'`{.AgdaBound} be their respective `GovStates`{.AgdaFunction}.
If the governance action deposits of `utxoSt`{.AgdaBound} are equal to those of
`govSt`{.AgdaBound}, then the same holds for `utxoSt'`{.AgdaBound} and `govSt'`{.AgdaBound}.
In other terms, if `govDepsMatch`{.AgdaFunction} `s`{.AgdaBound}, then
`govDepsMatch`{.AgdaFunction} `s'`{.AgdaBound}.

*Formally*.

```agda
LEDGER-govDepsMatch :  LedgerInvariant _⊢_⇀⦇_,LEDGER⦈_ govDepsMatch
```

*Proof*.

```agda
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
        ≈⟨ noGACerts txCerts (updateProposalDeposits txGovProposals txId govActionDeposit utxoDeps) ⟩
      filterˢ isGADeposit (dom (updateProposalDeposits txGovProposals txId govActionDeposit utxoDeps))
        ≈⟨ utxo-govst-connex txGovProposals aprioriMatch ⟩
      fromList (dpMap (updateGovStates (map inj₂ txGovProposals) 0 govSt))
        ≈˘⟨ props-dpMap-votes-invar txGovVotes txGovProposals ⟩
      fromList (dpMap (updateGovStates (txgov body) 0 govSt ))
        ≈˘⟨ |ᵒ-GAs-pres 0 govSt certState' ⟩
      fromList (dpMap (updateGovStates (txgov body) 0 (rmOrphanDRepVotes certState' govSt)))
        ≡˘⟨ cong (fromList ∘ dpMap ) (STS→GovSt≡ utxosts tx-valid) ⟩
      fromList (dpMap govSt') ∎

LEDGER-govDepsMatch {s' = s'} utxosts@(LEDGER-V (() , UTXOW-UTXOS (Scripts-No (_ , refl)) , _ , GOV-sts)) aprioriMatch
```
