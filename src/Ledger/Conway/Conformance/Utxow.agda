
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Conway.Crypto
open import Ledger.Conway.Abstract
open import Ledger.Conway.Transaction

module Ledger.Conway.Conformance.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Script.Validation txs abs
open import Ledger.Conway.Certs govStructure

private
  module L where
    open import Ledger.Conway.Utxow txs abs public
    open import Ledger.Conway.Utxo txs abs public

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
        witsKeyHashes       = mapˢ hash (dom vkSigs)
        witsScriptHashes    = mapˢ hash scripts
        refScriptHashes     = mapˢ hash (refScripts tx utxo)
        neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo txb)
        neededVKeyHashes    = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo txb)
        txdatsHashes        = mapˢ hash txdats
        inputsDataHashes    = mapPartial (λ txout → if txOutToP2Script utxo tx txout
                                                     then txOutToDataHash txout
                                                     else nothing) (range (utxo ∣ txins))
        refInputsDataHashes = mapPartial txOutToDataHash (range (utxo ∣ refInputs))
        outputsDataHashes   = mapPartial txOutToDataHash (range txouts)
        nativeScripts       = mapPartial toP1Script (txscripts tx utxo)
    in
    ∙  ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ
    ∙  ∀[ s ∈ nativeScripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txvldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes - refScriptHashes ≡ᵉ witsScriptHashes
    ∙  inputsDataHashes ⊆ txdatsHashes
    ∙  txdatsHashes ⊆ inputsDataHashes ∪ outputsDataHashes ∪ refInputsDataHashes
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
