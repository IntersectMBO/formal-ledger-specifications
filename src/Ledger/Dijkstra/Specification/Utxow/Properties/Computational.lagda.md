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
            (inj₁ a₁) → "∀[ s ∈ p1Scripts ] (hash s ∈ neededScriptHashes → validP1Script witsKeyHashes txVldt s)"
            (inj₂ b₁) → case dec-de-morgan b₁ of λ where
              (inj₁ a₂) → "neededVKeyHashes ⊆ witsKeyHashes"
              (inj₂ b₂) → case dec-de-morgan b₂ of λ where
                (inj₁ a₃) → "neededScriptHashes ⊆ mapˢ hash p1Scripts ∪ mapˢ hash p2Scripts"
                (inj₂ b₃) → case dec-de-morgan b₃ of λ where
                  (inj₁ a₄) → "neededDataHashes ⊆ dom (DataPoolOf Γ)"
                  (inj₂ b₄) → "txADhash ≡ map hash txAD"

        computeProof : ComputationResult String (∃ (Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈_))
        computeProof =
          case H? of λ where
            (yes (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ )) →
              map (map₂′ (λ h → SUBUTXOW (p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , h ))) (computeProof' Γ s txSub)
            (no ¬p) → failure $ genErr ¬p

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ txSub ,SUBUTXOW⦈ s'
                            → map proj₁ computeProof ≡ success s'
        completeness s' (SUBUTXOW-⋯ p₁ p₂ p₃ p₄ p₅ p₆ h ) with H?
        ... | no ¬p = ⊥-elim $ ¬p ((p₁ , p₂ , p₃ , p₄ , p₅ , p₆ ))
        ... | yes _ with computeProof' Γ s txSub | completeness' _ _ _ _ h
        ... | success _ | refl = refl
```
