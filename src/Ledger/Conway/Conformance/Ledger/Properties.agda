{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract
import Ledger.Conway.Conformance.Certs

module Ledger.Conway.Conformance.Ledger.Properties
  (txs : _) (open TransactionStructure txs) (open Ledger.Conway.Conformance.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Conway.Conformance.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Conway.Conformance.Epoch txs abs
open import Ledger.Conway.Conformance.Certs.Properties govStructure
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Conway.Conformance.Ledger txs abs
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Utxo.Properties txs abs
open import Ledger.Conway.Conformance.Utxow txs abs
open import Ledger.Conway.Conformance.Utxow.Properties txs abs

open import Data.Bool.Properties using (¬-not)
open import Data.List.Base using (filter)
open import Data.List.Ext using (∈ˡ-map-filter)
open import Data.List.Ext.Properties using (_×-cong_)
open import Data.List.Properties using (++-identityʳ; map-++; ++-assoc; length-++)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm)
open import Relation.Binary using (IsEquivalence)
open import Relation.Unary using (Decidable)

open import Tactic.GenError using (genErrors)

open import Ledger.Conway.Conformance.Equivalence.Certs txs abs
open import Ledger.Conway.Conformance.Equivalence.Convert

import Function.Related.Propositional as R

import Relation.Binary.Reasoning.Setoid as SetoidReasoning

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
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls , _ ⟧
      govΓ : CertState → GovEnv
      govΓ certState = ⟦ txid , epoch slot , pparams , ppolicy , enactState , conv certState , _ ⟧

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s')
      computeProof = case isValid ≟ true of λ where
        (yes p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          let rewards = certState .CertState.dState .DState.rewards
              wdrlCreds   = mapˢ RwdAddr.stake (dom txwdrls)
              rewards' = constMap wdrlCreds 0 ∪ˡ rewards
              dState = certState .CertState.dState
              dState' = record dState { rewards = rewards' }
              certState' = record certState { dState = dState' }
          (certState'' , certStep) ← computeCerts certΓ certState' txcerts
          wdrlsCheck ← case ¿ filterˢ isKeyHash wdrlCreds ⊆ dom (certState' .CertState.dState .DState.voteDelegs) ¿ of λ where
            (yes q) → success q
            (no ¬q) → failure (genErrors ¬q)
          (govSt'  , govStep)  ← computeGov (govΓ certState'') (rmOrphanDRepVotes (conv certState'') govSt) (txgov txb)
          rwdsCheck ← case ¿ mapˢ (map₁ RwdAddr.stake) (txwdrls ˢ) ⊆ rewards ˢ ¿ of λ where
            (yes q) → success q
            (no ¬q) → failure (genErrors ¬q)
          success (_ , LEDGER-V⋯ p utxoStep certStep wdrlsCheck govStep λ { x → rwdsCheck x })
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓ utxoSt tx
          success (_ , LEDGER-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness  ls' (LEDGER-V⋯ v utxoStep certStep u govStep t)
        with isValid ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl
        using rewards ← certState .CertState.dState .DState.rewards
        using wdrlCreds ← mapˢ RwdAddr.stake (dom txwdrls)
        using rewards' ← constMap wdrlCreds 0 ∪ˡ rewards
        using dState ← certState .CertState.dState
        using dState' ← record dState { rewards = rewards' }
        using certState' ← record certState { dState = dState' }
        with computeCerts certΓ certState' txcerts | complete _ _ _ _ certStep
      ... | success (certState'' , _) | refl
        with dec-yes ¿ filterˢ isKeyHash (mapˢ RwdAddr.stake (dom txwdrls)) ⊆ dom (certState .CertState.dState .DState.voteDelegs) ¿ (λ { x → u x })
      ... | (_ , p)
        with computeGov (govΓ certState'') (rmOrphanDRepVotes (conv certState'') govSt ) (txgov txb) | complete {STS = _⊢_⇀⦇_,GOVS⦈_} (govΓ certState'') _ _ _ govStep
      ... | success (govSt' , _) | refl 
        with dec-yes ¿ mapˢ (map₁ RwdAddr.stake) (txwdrls ˢ) ⊆ rewards ˢ ¿ (λ {x → t x}) 
      ... | (_ , q) rewrite p rewrite q = refl
      completeness ls' (LEDGER-I⋯ i utxoStep)
        with isValid ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓ utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-LEDGERS : Computational _⊢_⇀⦇_,LEDGERS⦈_ String
Computational-LEDGERS = it
