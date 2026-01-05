---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow.lagda.md
---

# UTxOW

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Script.Validation txs abs

private variable
  ℓ : TxLevel
  Γ  : UTxOEnv
  s s' : UTxOState
  tx : TopLevelTx
  stx : SubLevelTx
```
-->

```agda
languages : Tx ℓ → UTxO → ℙ Language
languages tx utxo = ∅ -- TODO

allowedLanguages : Tx ℓ → UTxO → ℙ Language
allowedLanguages tx utxo = ∅ -- TODO
```

```agda
data _⊢_⇀⦇_,SUBUTXOW⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOW :
    let
         open Tx tx
         open TxBody txBody
         open TxWitnesses txWitnesses
         open UTxOEnv

         utxo₀               = Γ .utxo₀
         utxo                = s .UTxOState.utxo

         witsKeyHashes       : ℙ KeyHash
         witsKeyHashes       = mapˢ hash (dom vKeySigs)

         allScripts : ℙ Script
         allScripts =
           ( scripts                             -- (1) scripts from witnesses
             ∪ mapPartial txOutToScript
                 ( range (utxo₀ ∣ txIns)         -- (2) scripts from transaction inputs
                   ∪ range (utxo ∣ refInputs)    -- (3) scripts from reference inputs
                 )
             ∪ Γ .globalRefInputsScripts         -- (4) scripts from global reference inputs
           )

         p1Scripts : ℙ P1Script
         p1Scripts = mapPartial toP1Script allScripts

         p2Scripts : ℙ P2Script
         p2Scripts = mapPartial toP2Script allScripts

         neededScriptHashes  : ℙ ScriptHash
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo₀ txBody)

         neededVKeyHashes : ℙ KeyHash
         neededVKeyHashes = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo₀ txBody)

         neededDataHashes : ℙ DataHash
         neededDataHashes = mapPartial (λ txOut@(a , _ , d , _) → do sh ← isScriptObj (payCred a)
                                                                     _  ← lookupHash sh p2Scripts
                                                                     d >>= isInj₂)
                                       (range (utxo₀ ∣ txIns))

    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes ⊆ mapˢ hash allScripts
    ∙  neededDataHashes ⊆ dom (Γ .globalData)
    ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAuxData
    ∙ Γ ⊢ s ⇀⦇ stx ,SUBUTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ stx ,SUBUTXOW⦈ s'

data _⊢_⇀⦇_,UTXOW⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXOW :
    let
         open Tx tx
         open TxBody txBody
         open TxWitnesses txWitnesses
         open UTxOEnv

         utxo₀               = Γ .utxo₀
         utxo                = s .UTxOState.utxo

         witsKeyHashes       : ℙ KeyHash
         witsKeyHashes       = mapˢ hash (dom vKeySigs)

         allScripts : ℙ Script
         allScripts =
           ( scripts                             -- (1) scripts from witnesses
             ∪ mapPartial txOutToScript
                 ( range (utxo₀ ∣ txIns)         -- (2) scripts from transaction inputs
                   ∪ range (utxo ∣ refInputs)    -- (3) scripts from reference inputs
                 )
             ∪ Γ .globalRefInputsScripts         -- (4) scripts from global reference inputs
           )

         p1Scripts : ℙ P1Script
         p1Scripts = mapPartial toP1Script allScripts

         p2Scripts : ℙ P2Script
         p2Scripts = mapPartial toP2Script allScripts

         neededScriptHashes  : ℙ ScriptHash
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo₀ txBody)

         neededVKeyHashes : ℙ KeyHash
         neededVKeyHashes = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo₀ txBody)

         neededDataHashes : ℙ DataHash
         neededDataHashes = mapPartial (λ txOut@(a , _ , d , _) → do sh ← isScriptObj (payCred a)
                                                                     _  ← lookupHash sh p2Scripts
                                                                     d >>= isInj₂)
                                       (range (utxo₀ ∣ txIns))

    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes ⊆ mapˢ hash allScripts
    ∙  neededDataHashes ⊆ dom (Γ .globalData)
    ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAuxData
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```
