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

      computeProof-aux : Dec H → ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁))
      computeProof-aux (no ¬p) = failure "SUBUTXOW"
      computeProof-aux (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁)) =
          map (map₂′ (λ h → SUBUTXOW {txSub = txSub} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , h)))
              (SUBUTXO.computeProof Γ s₀ txSub)

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁))
      computeProof = computeProof-aux H?

      completeness-aux : (d : Dec H) (s₁ : UTxOState)
                       → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁
                       → map proj₁ (computeProof-aux d) ≡ success s₁
      completeness-aux (no ¬p) _ (SUBUTXOW-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ h) =
        ⊥-elim $ ¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁)
      completeness-aux (yes _) _ (SUBUTXOW-⋯ _ _ _ _ _ _ _ _ _ _ _ _ h)
        with SUBUTXO.computeProof Γ s₀ txSub | SUBUTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txSub ,SUBUTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness = completeness-aux H?

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

      DecV3 = Dec (∃[ s ∈ p2ScriptsNeeded ] language s ∈ fromList (PlutusV1 ∷ PlutusV2 ∷ PlutusV3 ∷ []))

      computeProof-aux : DecV3 → Dec H-legacy → Dec H-normal
                       → ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁))
      computeProof-aux (yes _) (no _) _ = failure "UTXOW"
      computeProof-aux (yes _) (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ )) _ =
        map (map₂′ (λ h → UTXOW-legacy {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , h)))
            (UTXO.computeProof (Γ , true) s₀ txTop)
      computeProof-aux (no _) _ (no _) = failure "UTXOW"
      computeProof-aux (no _) _ (yes (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀)) =
        map (map₂′ (λ h → UTXOW-normal {txTop = txTop} {Γ = Γ} (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , h)))
            (UTXO.computeProof (Γ , false) s₀ txTop)

      computeProof : ComputationResult String (∃[ s₁ ] (Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁))
      computeProof = computeProof-aux ¿ _ ¿ H?-legacy H?-normal

      completeness-aux : (dV3 : DecV3) (dLeg : Dec H-legacy) (dNorm : Dec H-normal)
                         (s₁ : UTxOState)
                       → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁
                       → map proj₁ (computeProof-aux dV3 dLeg dNorm) ≡ success s₁
      completeness-aux (yes (s , p , q)) _ _ _ (UTXOW-normal-⋯ p₀ _ _ _ _ _ _ _ _ _ _ _) =
        ⊥-elim (Properties.∉-∅ (V1,V2,V3∩V4⊆∅ (∈-∩ .Equivalence.to (q , (p₀ p)))))
      completeness-aux (no ¬p) _ _ _ (UTXOW-legacy-⋯ p₀ _ _ _ _ _ _ _ _ _ _ _) =
        ⊥-elim (¬p p₀)
      completeness-aux (yes _) (no ¬p) _ _ (UTXOW-legacy-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ _) =
        ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ ))
      completeness-aux (yes _) (yes _) _ _ (UTXOW-legacy-⋯ _ _ _ _ _ _ _ _ _ _ _ h)
        with UTXO.computeProof (Γ , true) s₀ txTop | UTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl
      completeness-aux (no _) _ (no ¬p) _ (UTXOW-normal-⋯ p₀ p₁ p₂ p₃ p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ _) =
        ⊥-elim (¬p (p₀ , p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ ))
      completeness-aux (no _) _ (yes _) _ (UTXOW-normal-⋯ _ _ _ _ _ _ _ _ _ _ _ h)
        with UTXO.computeProof (Γ , false) s₀ txTop | UTXO.completeness _ _ _ _ h
      ... | success _ | refl = refl

      completeness : ∀ s₁ → Γ ⊢ s₀ ⇀⦇ txTop ,UTXOW⦈ s₁ → map proj₁ computeProof ≡ success s₁
      completeness = completeness-aux ¿ _ ¿ H?-legacy H?-normal
```
