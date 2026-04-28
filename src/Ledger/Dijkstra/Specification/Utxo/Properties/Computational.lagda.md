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

      computeProof : ComputationResult String (Σ UTxOState (_⊢_⇀⦇_,SUBUTXO⦈_ Γ s₀ txSub))
      computeProof
        with IsTopLevelValidFlagOf Γ | inspect IsTopLevelValidFlagOf Γ
      ... | false | [ refl ]
        with H?
      ... | (yes p) = success (⟦ UTxOOf s₀ , FeesOf s₀ , DonationsOf s₀ ⟧ , SUBUTXO {txSub = txSub} p)
      ... | (no ¬p) = failure "genErrors" -- (genErrors ¬p)
      computeProof | true | [ refl ]
        with H?
      ... | (yes p) = success ( ⟦ (UTxOOf s₀ ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub

                                , FeesOf s₀
                                , DonationsOf s₀ + DonationsOf txSub
                                ⟧
                              , SUBUTXO {txSub = txSub} p
                              )
      ... | (no ¬p) = failure "genErrors" -- (genErrors ¬p)


      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXO⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (SUBUTXO p)
        with IsTopLevelValidFlagOf Γ | inspect IsTopLevelValidFlagOf Γ
      ... | false | [ refl ]
        with H?
      ... | (yes p) = refl
      ... | (no ¬p) = ⊥-elim (¬p p)
      completeness s₁ (SUBUTXO p) | true  | [ refl ]
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
  Computational-UTXOS = MkComputational computeProof completeness
    where
      --------------------------------------------------------------------------
      -- computeProof for UTXOS
      --------------------------------------------------------------------------
      computeProof : (Γ : UTxOEnv) (_ : ⊤) (txTop : TopLevelTx)
        → ComputationResult String (Σ ⊤ (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈_))

      computeProof Γ _ txTop
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = success (tt , UTXOS p)
      ... | no ¬p = failure (genErrors ¬p)

      --------------------------------------------------------------------------
      -- completeness for UTXOS
      --------------------------------------------------------------------------
      completeness : (Γ : UTxOEnv) (_ : ⊤) (txTop : TopLevelTx) (_ : ⊤)
        → Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt
        → (map proj₁ $ computeProof Γ _ txTop) ≡ success tt

      completeness Γ _ txTop _ (UTXOS p)
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

      computeProof : ComputationResult String (∃[ s₁ ] Γ,legacyMode ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁)
      computeProof
        with IsValidFlagOf txTop | inspect IsValidFlagOf txTop
      ... | false | [ refl ]
        with H?
      ... | (no ¬p) = failure "UTXO" -- (genErrors ¬p)
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁)
        with UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop
      ... | success h = success (-, UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , proj₂ h))
      ... | failure ¬h = failure "UTXOS"
      computeProof | true | [ refl ]
        with H?
      ... | (no ¬p) = failure "UTXO" -- (genErrors ¬p)
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁)
        with UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop
      ... | success h = success (-, UTXO (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁ , proj₂ h))
      ... | failure ¬h = failure "UTXOS"

      completeness : ∀ s₁ → Γ,legacyMode ⊢ s₀ ⇀⦇ txTop ,UTXO⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (UTXO-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ p₁₈ p₁₉ p₂₀ p₂₁ h)
        with IsValidFlagOf txTop | inspect IsValidFlagOf txTop
      ... | false | [ refl ]
        with H?
      ... | no ¬p = ⊥-elim (¬p ((p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁)))
      ... | yes _
        with UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop | UTXOS.completeness _ _ _ _ h
      ... | success h | refl = refl
      completeness s₁ (UTXO-⋯ p₀  p₁  p₂  p₃  p₄  p₅  p₆  p₇  p₈  p₉  p₁₀  p₁₁  p₁₂  p₁₃  p₁₄  p₁₅  p₁₆  p₁₇  p₁₈ p₁₉ p₂₀ p₂₁ h) | true | [ refl ]
        with H?
      ... | no ¬p = ⊥-elim (¬p ((p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , p₁₈ , p₁₉ , p₂₀ , p₂₁)))
      ... | yes _
        with UTXOS.computeProof (Γ,legacyMode .proj₁) tt txTop | UTXOS.completeness _ _ _ _ h
      ... | success h | refl = refl
```
