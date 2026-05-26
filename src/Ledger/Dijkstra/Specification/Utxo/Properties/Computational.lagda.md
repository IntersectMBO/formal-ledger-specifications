---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/Computational.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Prelude
open import Ledger.Prelude
open import stdlib-meta.Tactic.GenError using (genErrors)

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Relation.Binary.PropositionalEquality
import Data.Sum.Relation.Unary.All as Sum

open PParams

instance
  _ = Functor-ComputationResult

instance
```
-->

```agda
  Computational-SUBUTXO : Computational _⊢_⇀⦇_,SUBUTXO⦈_ String
```

<!--
```agda
  Computational-SUBUTXO = record {go} where
    module go (Γ : SubUTxOEnv) (s₀ : UTxOState) (txSub : SubLevelTx)
      (let H , ⁇ H? = SUBUTXO-premises {txSub = txSub} {Γ = Γ} {s₀ = s₀})
      where

      computeProof-aux
        : Dec H
        → ComputationResult String (∃[ s₁ ] Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁)
      computeProof-aux (no ¬p) = failure "SUBUTXO"
      computeProof-aux (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ ))
        = success (-, SUBUTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆))

      computeProof : ComputationResult String (Σ UTxOState (_⊢_⇀⦇_,SUBUTXO⦈_ Γ s₀ txSub))
      computeProof = computeProof-aux H?

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (SUBUTXO p)
        with H?
      ... | (yes p) = refl
      ... | (no ¬p) = ⊥-elim (¬p p)
```
-->

```agda
  Computational-UTXOS : Computational _⊢_⇀⦇_,UTXOS⦈_ String
```

<!--
```agda
  Computational-UTXOS = record {go} where
    module go (Γ : UTxOEnv) (_ : ⊤) (txTop : TopLevelTx)
      where

      computeProof-aux
        : Dec (evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop)
        → ComputationResult String (Σ ⊤ (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈_))
      computeProof-aux (yes p) = success (tt , UTXOS p)
      computeProof-aux (no ¬p) = failure (genErrors ¬p)

      computeProof :
        ComputationResult String (Σ ⊤ (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈_))
      computeProof = computeProof-aux ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿

      completeness
        : ∀ (_ : ⊤)
        → Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt
        → map proj₁ computeProof ≡ success tt
      completeness _ (UTXOS p)
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = refl
      ... | no ¬p = ⊥-elim (¬p p)

```
-->

```agda
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
```

<!--
```agda
  Computational-UTXO = record {go} where
    module go (Γ,legacyMode : UTxOEnv × Bool) (s₀ : UTxOState) (txTop : TopLevelTx)
      (let H , ⁇ H? = UTXO-premises {txTop = txTop} {Γ = proj₁ Γ,legacyMode} {s₀ = s₀} {legacyMode = proj₂ Γ,legacyMode})
      where

      module UTXOS = Computational Computational-UTXOS

      computeProof-aux
        : Dec H
        → ComputationResult String (∃[ s₁ ] (Γ,legacyMode .proj₁) ⊢ tt ⇀⦇ txTop ,UTXOS⦈ s₁)
        → ComputationResult String (∃[ s₁ ] Γ,legacyMode ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁)
      computeProof-aux d (failure x) = failure "UTXO" 
      computeProof-aux (no ¬p) (success x) = failure "UTXO"
      computeProof-aux (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , p₂₂)) (success h)
        = success (-, UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , p₂₂ , proj₂ h))

      computeProof : ComputationResult String (∃[ s₁ ] Γ,legacyMode ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁)
      computeProof = computeProof-aux H? (UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop)

      completeness : ∀ s₁ → Γ,legacyMode ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ p₁₈ p₁₉ p₂₀ p₂₁ p₂₂ h)
        with H?
      ... | no ¬p = ⊥-elim (¬p ((p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , p₂₂)))
      ... | yes _
        with UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop | UTXOS.completeness _ _ _ _ h
      ... | success h | refl = refl
```
