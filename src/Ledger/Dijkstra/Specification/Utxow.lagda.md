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

## Witnessing Functions {#sec:witnessing-functions}

```agda
module _ (tx : TopLevelTx) where
  open Tx tx
  open TxBody txBody

  module _ (utxo : UTxO) where
    UsesBootstrapAddress : Type
    UsesBootstrapAddress = ∃[ o ∈ (range txOuts) ∪ range (utxo ∣ (txIns ∪ refInputs)) ] isBootstrapAddr (proj₁ o)

    HasInlineDatum : TxOut → Type
    HasInlineDatum txout = Is-just (txOutToDatum txout)

    UsesV2Features : Type
    UsesV2Features = ∃[ o ∈ (range txOuts) ∪ range (utxo ∣ (txIns ∪ refInputs)) ] HasInlineDatum o

  data UsesV3Features : Set where
    hasVotes     : ¬ (Is-[] txGovVotes)     → UsesV3Features
    hasProposals : ¬ (Is-[] txGovProposals) → UsesV3Features
    hasDonation  : NonZero txDonation       → UsesV3Features
    hasTreasure  : Is-just currentTreasury  → UsesV3Features

  data UsesV4Features : Set where
    hasSubtransactions  : ¬ (Is-[] txSubTransactions) → UsesV4Features
    hasGuards           : ¬ (Is-∅ txGuards)           → UsesV4Features
```

<!--
```agda
module _ {tx : TopLevelTx} where
  open Tx tx
  open TxBody txBody

  instance
    Dec-UsesV3Features : UsesV3Features tx ⁇
    Dec-UsesV3Features .dec
      with ¿ ¬ (Is-[] txGovVotes) ¿ | ¿ ¬ (Is-[] txGovProposals) ¿
         | ¿ NonZero txDonation   ¿ | ¿ Is-just currentTreasury  ¿
    ... | yes p | _ | _ | _ = yes (hasVotes p)
    ... | _ | yes p | _ | _ = yes (hasProposals p)
    ... | _ | _ | yes p | _ = yes (hasDonation p)
    ... | _ | _ | _ | yes p = yes (hasTreasure p)
    ... | no p₁ | no p₂ | no p₃ | no p₄
      = no λ { (hasVotes x) → p₁ x ; (hasProposals x) → p₂ x ; (hasDonation x) → p₃ x ; (hasTreasure x) → p₄ x}

module _ {tx : TopLevelTx} where
  open Tx tx
  open TxBody txBody

  instance
    Dec-UsesV4Features : UsesV4Features tx ⁇
    Dec-UsesV4Features .dec
      with ¿ ¬ (Is-[] txSubTransactions) ¿ | ¿ ¬ (Is-∅ txGuards) ¿
    ... | yes p | _ = yes (hasSubtransactions p)
    ... | _ | yes p = yes (hasGuards p)
    ... | no p₁ | no p₂
      = no λ { (hasSubtransactions x) → p₁ x ; (hasGuards x) → p₂ x}
```
-->

```agda
languages :  ℙ P2Script → ℙ Language
languages p2Scripts = mapˢ language p2Scripts

allowedLanguages : TopLevelTx → UTxO → ℙ Language
allowedLanguages tx utxo =
  if UsesBootstrapAddress tx utxo
    then ∅
    else
  if UsesV4Features tx
    then fromList (PlutusV4 ∷ [])
    else
  if UsesV3Features tx
    then fromList (PlutusV4 ∷ PlutusV3 ∷ [])
    else
  if UsesV2Features tx utxo
    then fromList (PlutusV4 ∷ PlutusV3 ∷ PlutusV2 ∷ [])
    else fromList (PlutusV4 ∷ PlutusV3 ∷ PlutusV2 ∷ PlutusV1 ∷ [])
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

         p1Scripts : ℙ P1Script
         p1Scripts = mapPartial toP1Script (GlobalScriptsOf Γ)

         p2Scripts : ℙ P2Script
         p2Scripts = mapPartial toP2Script (GlobalScriptsOf Γ)

         neededScriptHashes  : ℙ ScriptHash
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo₀ tx)

         neededVKeyHashes : ℙ KeyHash
         neededVKeyHashes = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo₀ tx)

         neededDataHashes : ℙ DataHash
         neededDataHashes = mapPartial (λ txOut@(a , _ , d , _) → do sh ← isScriptObj (payCred a)
                                                                     _  ← lookupHash sh p2Scripts
                                                                     d >>= isInj₂)
                                       (range (utxo₀ ∣ txIns))

    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes ⊆ mapˢ hash p1Scripts ∪ mapˢ hash p2Scripts
    ∙  neededDataHashes ⊆ dom (Γ .globalData)
    ∙  languages p2Scripts ⊆ allowedLanguages tx utxo -- Redundant? Superseded by same in UTXOW?
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

         p1Scripts : ℙ P1Script
         p1Scripts = mapPartial toP1Script (GlobalScriptsOf Γ)

         p2Scripts : ℙ P2Script
         p2Scripts = mapPartial toP2Script (GlobalScriptsOf Γ)

         neededScriptHashes  : ℙ ScriptHash
         neededScriptHashes  = mapPartial (isScriptObj  ∘ proj₂) (credsNeeded utxo₀ tx)

         neededVKeyHashes : ℙ KeyHash
         neededVKeyHashes = mapPartial (isKeyHashObj ∘ proj₂) (credsNeeded utxo₀ tx)

         neededDataHashes : ℙ DataHash
         neededDataHashes = mapPartial (λ txOut@(a , _ , d , _) → do sh ← isScriptObj (payCred a)
                                                                     _  ← lookupHash sh p2Scripts
                                                                     d >>= isInj₂)
                                       (range (utxo₀ ∣ txIns))

    in
    ∙  ∀[ (vk , σ) ∈ vKeySigs ] isSigned vk (txidBytes txId) σ
    ∙  ∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)
    ∙  neededVKeyHashes ⊆ witsKeyHashes
    ∙  neededScriptHashes ⊆ mapˢ hash p1Scripts ∪ mapˢ hash p2Scripts
    ∙  neededDataHashes ⊆ dom (Γ .globalData)
    ∙  languages p2Scripts ⊆ allowedLanguages tx utxo
    ∙  txADhash ≡ map hash txAuxData
    ∙  Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s'
      ────────────────────────────────
      Γ ⊢ s ⇀⦇ tx ,UTXOW⦈ s'
```
