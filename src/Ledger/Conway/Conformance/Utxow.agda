
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_∘_) renaming (_∘₂_ to _∘_)
open import Ledger.Conway.Crypto
open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Conformance.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.ScriptValidation txs abs
open import Ledger.Conway.Certs govStructure

private
  module L where
    open import Ledger.Conway.Utxow txs abs public
    open import Ledger.Conway.Utxo txs abs public

open L using (scriptsNeeded; witsVKeyNeeded) public

data

  _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → Tx → UTxOState → Type

private variable
  Γ : UTxOEnv
  s s' : UTxOState
  tx : Tx

data _⊢_⇀⦇_,UTXOW⦈_ where

  UTXOW-inductive :
    let open Tx tx renaming (body to txb); open TxBody txb; open TxWitnesses wits
        open UTxOState s
        witsKeyHashes     = mapˢ hash (dom vkSigs)
        witsScriptHashes  = mapˢ hash scripts
        inputHashes       = L.getInputHashes tx utxo
        refScriptHashes   = mapˢ hash (refScripts tx utxo)
        neededHashes      = L.scriptsNeeded utxo txb
        txdatsHashes      = dom txdats
        allOutHashes      = L.getDataHashes (range txouts)
        nativeScripts     = mapPartial toP1Script (txscripts tx utxo)
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ nativeScripts ] (hash s ∈ neededHashes → validP1Script witsKeyHashes txvldt s)
    ∙  L.witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    ∙  neededHashes - refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputHashes ∪ allOutHashes ∪ L.getDataHashes (range (utxo ∣ refInputs))
    ∙  L.languages tx utxo ⊆ L.allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAD
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
       ────────────────────────────────
       Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'

pattern UTXOW-inductive⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ h
      = UTXOW-inductive (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , h)
pattern UTXOW⇒UTXO x = UTXOW-inductive⋯ _ _ _ _ _ _ _ _ x

unquoteDecl UTXOW-inductive-premises =
  genPremises UTXOW-inductive-premises (quote UTXOW-inductive)
