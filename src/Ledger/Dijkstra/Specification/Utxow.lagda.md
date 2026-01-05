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

         utxo₀               = Γ .UTxOEnv.utxo₀
         utxo                = s .UTxOState.utxo
         witsKeyHashes       = mapˢ hash (dom vKeySigs)
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo₀ txBody)
         neededVKeyHashes    = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo₀ txBody)
         -- txdatsHashes        = mapˢ hash txdats
         -- inputsDataHashes    = mapPartial (λ txout →  if txOutToP2Script utxo tx txout
         --                                              then txOutToDataHash txout
         --                                              else nothing) (range (utxo ∣ txIns))
         -- refInputsDataHashes = mapPartial txOutToDataHash (range (utxo ∣ refInputs))
         -- outputsDataHashes   = mapPartial txOutToDataHash (range txOuts)
         p1Scripts       = mapPartial toP1Script
           ( scripts                             -- (1) scripts from witnesses
             ∪ mapPartial txOutScript
                 ( range (utxo₀ ∣ txIns)         -- (2) scripts from transaction inputs
                   ∪ range (utxo ∣ refInputs)    -- (3) scripts from reference inputs
                 )
             ∪ Γ .UTxOEnv.refInputsScripts       -- (4) scripts from all reference inputs
           )
    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    -- ∙  inputsDataHashes ⊆ txdatsHashes
    -- ∙  txdatsHashes ⊆ inputsDataHashes ∪ outputsDataHashes ∪ refInputsDataHashes
    -- ∙  languages tx utxo ⊆ allowedLanguages tx utxo
    -- ∙  txADhash ≡ map hash txAD
    -- ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```
