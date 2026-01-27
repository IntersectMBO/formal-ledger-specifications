---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

import Data.Maybe as M

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational txs abs

instance
  Computational-SUBUTXOW : Computational _⊢_⇀⦇_,SUBUTXOW⦈_ String
  Computational-SUBUTXOW = record {go}
    where
      module go (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx)
                (let H , ⁇ H? = SUBUTXOW-premises {txSub = txSub} {Γ = Γ}) where

        open Computational Computational-SUBUTXO
          renaming (computeProof to computeProof'; completeness to completeness')

        genErr : ¬ H → String
        genErr  ¬p = case dec-de-morgan ¬p of λ where
          (inj₁ a) → "¬ ∀[ (vk , σ) ∈ vkSigs ] isSigned vk (txidBytes txid) σ"
          (inj₂ b) → case dec-de-morgan b of λ where
            (inj₁ a) → "∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)"
            (inj₂ b) → case dec-de-morgan b of λ where
              (inj₁ a) → "neededVKeyHashes ⊆ witsKeyHashes"
              (inj₂ b) → case dec-de-morgan b of λ where
                (inj₁ a) → "∀[ s ∈   p2Scripts ] (hash s ∈ neededScriptHashes → language s ≡ PlutusV4)"
                (inj₂ b) → case dec-de-morgan b of λ where
                  (inj₁ a) → "neededScriptHashes ⊆ mapˢ hash p1Scripts ∪ mapˢ hash p2Scripts"
                  (inj₂ b) → case dec-de-morgan b of λ where
                    (inj₁ a) → "neededDataHashes ⊆ dom (DataPoolOf Γ)"
                    (inj₂ b) → "txADhash ≡ map hash txAD"

        computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈_))
        computeProof =
          case H? of λ where
            (yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ )) →
              map (map₂′ (λ h → SUBUTXOW (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , h ))) (computeProof' Γ s txSub)
            (no ¬p) → failure $ genErr ¬p

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s'
                            → map proj₁ computeProof ≡ success s'
        completeness s' (SUBUTXOW-⋯ p₁ p₂ p₃ p₄ p₅ p₆ p₇ h ) with H?
        ... | no ¬p = ⊥-elim $ ¬p ((p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ ))
        ... | yes _ with computeProof' Γ s txSub | completeness' _ _ _ _ h
        ... | success _ | refl = refl
```
