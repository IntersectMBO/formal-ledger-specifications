
{-# OPTIONS --safe #-}

open import Ledger.Prelude hiding (_∘_) renaming (_∘₂_ to _∘_)
open import Ledger.Crypto
open import Ledger.Abstract
open import Ledger.Transaction

module Ledger.Conway.Conformance.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Conformance.Utxo txs abs hiding (module L)
open import Ledger.ScriptValidation txs abs
open import Ledger.Certs govStructure

module L where
  open import Ledger.Utxow txs abs public
  open import Ledger.Utxo txs abs public

instance
  -- This is probably not the best place to introduce this instance,
  -- but it works. Probably better to put
  -- `open Hashable Hashable-P1Script public`
  -- after the `P1Script` field in the `P1ScriptStructure` record,
  -- but that conflicts with other things.
  r : Hashable P1Script ScriptHash
  r = Hashable-P1Script

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
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ mapPartial isInj₁ (txscripts tx utxo) ] (hash ⦃ r ⦄ s ∈ neededHashes → validP1Script witsKeyHashes txvldt s)
    ∙  L.witsVKeyNeeded utxo txb ⊆ witsKeyHashes
    ∙  neededHashes ＼ refScriptHashes ≡ᵉ witsScriptHashes
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
