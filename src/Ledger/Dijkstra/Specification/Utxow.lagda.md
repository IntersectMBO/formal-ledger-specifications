---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow.lagda.md
---

# UTxOW (Dijkstra skeleton)

This is a **minimal skeleton** of the Dijkstra-era witnessing layer.

It currently acts as a wrapper around `UTXO`, mirroring Conway's shape, but without
committing to full witnessing checks yet.

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
data _⊢_⇀⦇_,SUBUTXOW⦈_ : UTxOEnv → UTxOState → SubLevelTx → UTxOState → Type where

  SUBUTXOW :
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
             ∪ Γ .allRefInputsScripts            -- (4) scripts from all reference inputs
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
                                                                     _  ← lookupᵐ? (setToMap (mapˢ < hash , id > p2Scripts)) sh
                                                                     d >>= isInj₂)
                                       (range (utxo₀ ∣ txIns))

    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededScriptHashes ⊆ mapˢ hash allScripts
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededDataHashes ⊆ dom (Γ .allData)
    -- ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAuxData
    -- ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```
