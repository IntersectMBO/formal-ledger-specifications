---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/Computational.lagda.md
---

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude
open import Ledger.Core.Specification.Crypto
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxow.Properties.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational txs abs

open import stdlib-meta.Tactic.GenError
import Data.String as S
import Data.Maybe as M

instance
```
-->

```agda
  Computational-SUBUTXOW : Computational _⊢_⇀⦇_,SUBUTXOW⦈_ String
  Computational-SUBUTXOW = record {go} where
    module go (Γ : SubUTxOEnv) (s₀ : UTxOState) (txSub : SubLevelTx)
      (let H , ⁇ H? = SUBUTXOW-premises {txSub = txSub} {Γ = Γ})
      where

      module SUBUTXO = Computational Computational-SUBUTXO

      lift-step : H → ∀ {s₁} → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁
           → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁
      lift-step (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁) h =
        SUBUTXOW {txSub = txSub} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , h)

      computeProof-aux : Dec H → ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁))
      computeProof-aux (no ¬p) = failure "SUBUTXOW"
      computeProof-aux (yes p) =
        map (map₂′ (lift-step p)) (SUBUTXO.computeProof Γ s₀ txSub)

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁))
      computeProof = computeProof-aux H?

      completeness-aux : (d : Dec H) (s₁ : UTxOState)
                       → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁
                       → map proj₁ (computeProof-aux d) ≡ success s₁
      completeness-aux (no ¬p) _ (SUBUTXOW-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ h) =
        ⊥-elim $ ¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁)
      completeness-aux (yes p) s₁ (SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ h) =
        trans (sym (fmap-∘ {f = proj₁} {g = map₂′ (lift-step p)}
                           (SUBUTXO.computeProof Γ s₀ txSub)))
              (SUBUTXO.completeness Γ s₀ txSub s₁ h)

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness = completeness-aux H?

  Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW = record {go} where
    module go (Γ : UTxOEnv) (s₀ : UTxOState) (txTop : TopLevelTx)
      (let H-normal , ⁇ H?-normal = UTXOW-normal-premises {txTop = txTop} {Γ = Γ}
           H-legacy , ⁇ H?-legacy = UTXOW-legacy-premises {txTop = txTop} {Γ = Γ})
      where

      module UTXO = Computational Computational-UTXO

      lift-legacy : H-legacy → ∀ {s₁} → Γ ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁
                  → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁
      lift-legacy (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅) h =
        UTXOW-legacy {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , h)

      lift-normal : H-normal → ∀ {s₁} → Γ ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁
                  → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁
      lift-normal (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄) h =
        UTXOW-normal {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , h)

      computeProof-aux : Dec H-legacy → Dec H-normal
                       → ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁))
      computeProof-aux (yes p) _ =
        map (map₂′ (lift-legacy p)) (UTXO.computeProof Γ s₀ txTop)
      computeProof-aux (no _) (yes p) =
        map (map₂′ (lift-normal p)) (UTXO.computeProof Γ s₀ txTop)
      computeProof-aux (no p) (no p') = failure "UTXOW"
      -- TODO: see https://github.com/IntersectMBO/formal-ledger-specifications/issues/1269
      -- computeProof-aux (no p) (no p') = failure $ genErrors p S.++ genErrors p'

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁))
      computeProof = computeProof-aux H?-legacy H?-normal

      completeness-aux : (dLeg : Dec H-legacy) (dNorm : Dec H-normal)
                         (s₁ : UTxOState)
                       → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁
                       → map proj₁ (computeProof-aux dLeg dNorm) ≡ success s₁
      completeness-aux (yes (q₀ , _)) _ _ (UTXOW-normal-⋯ p₀ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _) =
        case trans (sym q₀) p₀ of λ ()
      completeness-aux (yes p) _ s₁ (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) =
        trans (sym (fmap-∘ {f = proj₁} {g = map₂′ (lift-legacy p)}
                           (UTXO.computeProof Γ s₀ txTop)))
              (UTXO.completeness Γ s₀ txTop s₁ h)
      completeness-aux (no ¬p) _ _ (UTXOW-legacy-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ _) =
        ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅))
      completeness-aux (no _) (no ¬p) _ (UTXOW-normal-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ _) =
        ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ ))
      completeness-aux (no _) (yes p) s₁ (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h) =
        trans (sym (fmap-∘ {f = proj₁} {g = map₂′ (lift-normal p)}
                           (UTXO.computeProof Γ s₀ txTop)))
              (UTXO.completeness Γ s₀ txTop s₁ h)

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness = completeness-aux H?-legacy H?-normal
```
