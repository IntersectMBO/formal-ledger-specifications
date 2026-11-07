---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/Computational.lagda.md
---

# <span class="AgdaDatatype">LEDGER</span>: Computational {#sec:ledger-computational}

This module proves that the `LEDGER`{.AgdaOperator} transition system is
computational.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Abstract
import Ledger.Conway.Specification.Certs

module Ledger.Conway.Specification.Ledger.Properties.Computational
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Specification.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Conway.Specification.Certs.Properties.Computational govStructure
open import Ledger.Conway.Specification.Gov govStructure
open import Ledger.Conway.Specification.Gov.Properties.Computational txs
open import Ledger.Conway.Specification.Ledger txs abs
open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Utxow txs abs
open import Ledger.Conway.Specification.Utxow.Properties.Computational txs abs

open import Data.Bool.Properties using (¬-not)
```
-->


```agda
instance
  _ = Monad-ComputationResult

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
  Computational-LEDGER = record {go}
    where
    utxowC : Computational _⊢_⇀⦇_,UTXOW⦈_ String
    utxowC = it
    certsC : Computational _⊢_⇀⦇_,CERTS⦈_ String
    certsC = it
    govsC : Computational _⊢_⇀⦇_,GOVS⦈_ String
    govsC = it
    open Computational utxowC renaming (computeProof to computeUtxow; completeness to completeUtxow)
    open Computational certsC renaming (computeProof to computeCerts; completeness to completeCerts)
    open Computational govsC  renaming (computeProof to computeGov;   completeness to completeGov)

    module go
      (Γ : LEnv)   (let open LEnv Γ)
      (s : LState) (let open LState s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txGovVotes , txWithdrawals , _ ⟧
      govΓ : CertState → GovEnv
      govΓ = λ certState → ⟦ txId , epoch slot , pparams , ppolicy , enactState , certState , _ ⟧

      computeProof-aux : Dec (isValid ≡ true) → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof-aux (yes p) = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        (certSt' , certStep) ← computeCerts certΓ certState txCerts
        (govSt'  , govStep)  ← computeGov (govΓ certSt') (rmOrphanDRepVotes certSt' govSt) (txgov txb)
        success (_ , LEDGER-V⋯ p utxoStep certStep govStep)
      computeProof-aux (no ¬p) = do
        (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
        success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = computeProof-aux (isValid ≟ true)

      completeness-aux : (d : Dec (isValid ≡ true)) → ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s'
                       → (proj₁ <$> computeProof-aux d) ≡ success s'
      completeness-aux (no ¬v) _ (LEDGER-V⋯ v _ _ _) = contradiction v ¬v
      completeness-aux (yes _) _ (LEDGER-V⋯ _ utxoStep certStep govStep) =
        bind-complete (computeUtxow utxoΓ utxoSt tx) (completeUtxow _ _ _ _ utxoStep) λ _ →
        bind-complete (computeCerts certΓ certState txCerts) (completeCerts _ _ _ _ certStep) λ _ →
        bind-complete (computeGov (govΓ _) _ (txgov txb))
                      (completeGov (govΓ _) _ _ _ govStep) λ _ → refl
      completeness-aux (yes v) _ (LEDGER-I⋯ i _) = case trans (sym v) i of λ ()
      completeness-aux (no _) _ (LEDGER-I⋯ _ utxoStep) =
        bind-complete (computeUtxow utxoΓ utxoSt tx) (completeUtxow _ _ _ _ utxoStep) λ _ → refl

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness = completeness-aux (isValid ≟ true)

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
```
