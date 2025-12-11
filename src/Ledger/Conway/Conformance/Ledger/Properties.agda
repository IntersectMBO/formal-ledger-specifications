{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Conformance.Ledger.Properties
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Data.Bool.Properties using (¬-not)
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude

open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert
open import Ledger.Conway.Conformance.Certs govStructure
open import Ledger.Conway.Conformance.Certs.Properties govStructure
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Utxow txs abs
open import Ledger.Conway.Conformance.Utxow.Properties txs abs

open import Ledger.Conway.Specification.Gov txs
open import Ledger.Conway.Specification.Gov.Properties.Computational txs
open import Ledger.Conway.Specification.Transaction

instance _ = +-0-monoid

open import Interface.ComputationalRelation

-- ** Proof that LEDGER is computational.

instance
  _ = Monad-ComputationResult

  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_ String
  Computational-LEDGER = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}
    computeCerts = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov   = comp {STS = _⊢_⇀⦇_,GOVS⦈_}

    module go
      (Γ : LEnv)   (let open LEnv Γ)
      (s : LState) (let open LState s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓ = UTxOEnv ∋ record { LEnv Γ }
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txGovVotes , txWithdrawals , _ ⟧
      govΓ : CertState → GovEnv
      govΓ certState = ⟦ txId , epoch slot , pparams , ppolicy , enactState , conv certState , _ ⟧

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          (certSt' , certStep) ← computeCerts certΓ certState txCerts
          (govSt'  , govStep)  ← computeGov (govΓ certSt') (rmOrphanDRepVotes (conv certSt') govSt) (txgov txb)
          success (_ , LEDGER-V⋯ p utxoStep certStep govStep)
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness  ls' (LEDGER-V⋯ v utxoStep certStep govStep)
        with isValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        with computeCerts certΓ certState txCerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov (govΓ certSt') (rmOrphanDRepVotes (conv certSt') govSt) (txgov txb) | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ certSt') _ _ _ govStep
      ... | success (govSt' , _) | refl = refl
      completeness ls' (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
