---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxow/Properties/Computational.lagda.md
---

<!--
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

import Data.List.Relation.Unary.Any as L
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Utxow txs abs
open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational txs abs

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

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁))
      computeProof with H?
      ... | no ¬p = failure "SUBUTXOW"
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉) =
          map (map₂′ (λ h → SUBUTXOW {txSub = txSub} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , h)))
              (SUBUTXO.computeProof Γ s₀ txSub)

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (SUBUTXOW-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ h) with H?
      ... | no ¬p = ⊥-elim $ ¬p ((p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉))
      ... | yes _ with SUBUTXO.computeProof Γ s₀ txSub | SUBUTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl

  Computational-UTXOW : Computational _⊢_⇀⦇_,UTXOW⦈_ String
  Computational-UTXOW = record {go} where
    module go (Γ : UTxOEnv) (s₀ : UTxOState) (txTop : TopLevelTx)
      (let H-normal , ⁇ H?-normal = UTXOW-normal-premises {txTop = txTop} {Γ = Γ}
           H-legacy , ⁇ H?-legacy = UTXOW-legacy-premises {txTop = txTop} {Γ = Γ}

           scriptsProvided = ScriptPoolOf Γ
           credentialsNeeded = mapˢ proj₂ (credsNeeded (UTxOOf Γ) txTop)
           scriptHashesNeeded = mapPartial isScriptObj credentialsNeeded
           scriptsNeeded = filterˢ (λ s → hash s ∈ scriptHashesNeeded) scriptsProvided
           p2ScriptsNeeded = mapPartial toP2Script scriptsNeeded)
      where

      private
        V1,V2,V3∩V4⊆∅ : fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ∩ fromList (PlutusV4 ∷ []) ⊆ ∅
        V1,V2,V3∩V4⊆∅ x with ∈-filter .Equivalence.from x
        ... | (a , b) with ∈-fromList .Equivalence.from a | ∈-fromList .Equivalence.from b
        V1,V2,V3∩V4⊆∅ x | (a , b) | L.here refl | L.there (L.here p)
          with fromPlutusLanguage .Injection.injective p
        ... | ()
        V1,V2,V3∩V4⊆∅ x | a , b | L.here refl | L.there (L.there (L.here p))
          with fromPlutusLanguage .Injection.injective p
        ... | ()
        V1,V2,V3∩V4⊆∅ x | a , b | L.here refl | L.here p
          with fromPlutusLanguage .Injection.injective p
        ... | ()

      module UTXO = Computational Computational-UTXO

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁))
      computeProof
        with ¿ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ¿
      ... | yes p with H?-legacy
      ... | no ¬p = failure "UTXOW"
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀) =
        map (map₂′ (λ h → UTXOW-legacy {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , h)))
            (UTXO.computeProof (Γ , true) s₀ txTop)
      computeProof | no ¬p with H?-normal
      ... | no ¬p = failure "UTXOW"
      ... | yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉) =
        map (map₂′ (λ h → UTXOW-normal {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , h)))
            (UTXO.computeProof (Γ , false) s₀ txTop)

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness s₁ (UTXOW-normal-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ h) 
        with ¿ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ¿
      ... | yes (s , p , q) = ⊥-elim (Properties.∉-∅ (V1,V2,V3∩V4⊆∅ (∈-∩ .Equivalence.to (q , (p₀ p)))))
      ... | no ¬p  with H?-normal
      ... | no ¬p = ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉))
      ... | yes _ with UTXO.computeProof (Γ , false) s₀ txTop | UTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl
      completeness s₁ (UTXOW-legacy-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ h)
        with ¿ ∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []) ¿
      ... | no ¬p  = ⊥-elim (¬p p₀)
      ... | yes p with H?-legacy
      ... | no ¬p = ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀))
      ... | yes _ with UTXO.computeProof (Γ , true) s₀ txTop | UTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl
```
