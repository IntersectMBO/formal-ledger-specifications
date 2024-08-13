{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Transaction
open import Ledger.Abstract
import Ledger.Certs

module Ledger.Swaps.Properties
  (txs : _) (open TransactionStructure txs) (open Ledger.Certs govStructure)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Axiom.Set.Properties th
open import Ledger.Chain txs abs
open import Ledger.Enact govStructure
open import Ledger.Epoch txs abs
open import Ledger.Gov txs
open import Ledger.Gov.Properties txs
open import Ledger.Ledger txs abs
open import Ledger.Ratify txs hiding (vote)
open import Ledger.Utxo txs abs
open import Ledger.Utxo.Properties txs abs
open import Ledger.Utxow txs abs
open import Ledger.Utxow.Properties txs abs
open import Ledger.Certs.Properties govStructure

open import Data.Bool.Properties using (¬-not)
open import Data.List.Base using (filter)
open import Data.List.Ext using (∈ˡ-map-filter)
open import Data.List.Ext.Properties using (_×-cong_)
open import Data.List.Properties using (++-identityʳ; map-++; ++-assoc; length-++)
open import Data.List.Membership.Propositional.Properties using (∈-filter⁺; map-∈↔)
open import Data.Product.Base using (swap)
open import Data.Product.Properties using (×-≡,≡←≡)
open import Data.Product.Properties.Ext using (×-⇔-swap)
open import Data.Nat.Properties using (+-0-monoid; +-identityʳ; +-suc; +-comm; +-assoc)
open import Relation.Binary using (IsEquivalence)
open import Relation.Unary using (Decidable)

import Function.Related.Propositional as R

import Relation.Binary.Reasoning.Setoid as SetoidReasoning

instance _ = +-0-monoid

open import Interface.ComputationalRelation

-- ** Proof that SWAP is computational.

instance
  _ = Monad-ComputationResult

  Computational-SWAP : Computational _⊢_⇀⦇_,SWAP⦈_ String
  Computational-SWAP = record {go}
    where
    open Computational ⦃...⦄ renaming (computeProof to comp; completeness to complete)
    computeUtxow = comp {STS = _⊢_⇀⦇_,UTXOW⦈_}
    computeCerts = comp {STS = _⊢_⇀⦇_,CERTS⦈_}
    computeGov   = comp {STS = _⊢_⇀⦇_,GOV⦈_}

    module go
      (Γ : SwapEnv)   (let ⟦ ⟦ slot , ppolicy , pparams , enactState , treasury ⟧ˡᵉ , bdat , reqObs , bScripts , valP ⟧ˢᵉ = Γ)
      (s : LState) (let ⟦ utxoSt , govSt , certSt ⟧ˡ = s)
      (tx : Tx)    (let open Tx tx renaming (body to txb); open TxBody txb)
      where
      utxoΓV = UTxOEnv ∋ ⟦ slot , pparams , treasury , reqObs , bdat , true , (getIsTop bdat tx) , bScripts ⟧ᵘᵉ
      utxoΓI = UTxOEnv ∋ ⟦ slot , pparams , treasury , reqObs , bdat , false , (getIsTop bdat tx) , bScripts ⟧ᵘᵉ
      certΓ = CertEnv ∋ ⟦ epoch slot , pparams , txvote , txwdrls ⟧ᶜ
      govΓ : CertState → GovEnv
      govΓ = ⟦ txid , epoch slot , pparams , ppolicy , enactState ,_⟧ᵍ

      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,SWAP⦈ s')
      computeProof = case valP ≟ true of λ where
        (yes p) → do
          (certSt' , certStep) ← computeCerts certΓ certSt txcerts
          (govSt'  , govStep)  ← computeGov (govΓ certSt') (govSt |ᵒ certSt') (txgov txb)
          (utxoSt' , utxoStep) ← computeUtxow utxoΓV utxoSt tx
          success (_ , SWAP-V⋯ p  certStep govStep utxoStep)
        (no ¬p) → do
          (utxoSt' , utxoStep) ← computeUtxow utxoΓI utxoSt tx
          success (_ , SWAP-I⋯ (¬-not ¬p) utxoStep)

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,SWAP⦈ s' → (proj₁ <$> computeProof) ≡ success s'
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (SWAP-V⋯ v certStep govStep utxoStep) 
        with valP ≟ true
      ... | no ¬v = contradiction v ¬v
      ... | yes refl
        with computeCerts certΓ certSt txcerts | complete _ _ _ _ certStep
      ... | success (certSt' , _) | refl
        with computeGov (govΓ certSt') (govSt |ᵒ certSt') (txgov txb) | complete {STS = _⊢_⇀⦇_,GOV⦈_} (govΓ certSt') _ _ _ govStep
      ... | success (govSt' , _) | refl 
        with computeUtxow utxoΓV utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl
      completeness ⟦ utxoSt' , govSt' , certState' ⟧ˡ (SWAP-I⋯ i utxoStep)
        with valP ≟ true
      ... | yes refl = case i of λ ()
      ... | no ¬v
        with computeUtxow utxoΓI utxoSt tx | complete _ _ _ _ utxoStep
      ... | success (utxoSt' , _) | refl = refl

Computational-SWAPS : Computational _⊢_⇀⦇_,SWAPS⦈_ String
Computational-SWAPS = it

