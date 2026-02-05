---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Utxo/Properties/Computational.lagda.md
---

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

instance
  _ = Functor-ComputationResult

instance
  Computational-SUBUTXO : Computational _⊢_⇀⦇_,SUBUTXO⦈_ String
  Computational-SUBUTXO = record {go} where
    module go where

      computeProof : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx) → ComputationResult String (Σ UTxOState (_⊢_⇀⦇_,SUBUTXO⦈_ Γ s txSub))
      computeProof Γ s txSub
        with IsTopLevelValidFlagOf Γ | inspect IsTopLevelValidFlagOf Γ
      ... | false | [ refl ]
        with ¿ SpendInputsOf txSub ≢ ∅
             × inInterval (SlotOf Γ) (ValidIntervalOf txSub)
             × MaybeNetworkIdOf txSub ~ just NetworkId ¿
      ... | (yes p) = success (⟦ UTxOOf s , FeesOf s , DonationsOf s ⟧ , SUBUTXO {txSub = txSub} p)
      ... | (no ¬p) = failure (genErrors ¬p)
      computeProof Γ s txSub | true | [ refl ]
        with ¿ SpendInputsOf txSub ≢ ∅
             × inInterval (SlotOf Γ) (ValidIntervalOf txSub)
             × MaybeNetworkIdOf txSub ~ just NetworkId ¿
      ... | (yes p) = success (⟦ (UTxOOf s ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub , FeesOf s , DonationsOf s + DonationsOf txSub ⟧ , SUBUTXO {txSub = txSub} p)
      ... | (no ¬p) = failure (genErrors ¬p)


      completeness : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx) → ∀ s' → Γ ⊢ s ⇀⦇ txSub ,SUBUTXO⦈ s' → map proj₁ (computeProof Γ s txSub) ≡ success s'
      completeness Γ s txSub s' (SUBUTXO p)
        with IsTopLevelValidFlagOf Γ | inspect IsTopLevelValidFlagOf Γ
      ... | false | [ refl ]
        with ¿ SpendInputsOf txSub ≢ ∅
             × inInterval (SlotOf Γ) (ValidIntervalOf txSub)
             × MaybeNetworkIdOf txSub ~ just NetworkId ¿
      ... |  (yes p) = refl
      ... |  (no ¬p) = ⊥-elim (¬p p)
      completeness Γ s txSub s' (SUBUTXO p) | true  | [ refl ]
        with ¿ SpendInputsOf txSub ≢ ∅
             × inInterval (SlotOf Γ) (ValidIntervalOf txSub)
             × MaybeNetworkIdOf txSub ~ just NetworkId ¿
      ... |  (yes p) = refl
      ... |  (no ¬p) = ⊥-elim (¬p p)


  Computational-UTXOS : Computational _⊢_⇀⦇_,UTXOS⦈_ String
  Computational-UTXOS = MkComputational computeProof completeness
    where
      computeProof : (Γ : UTxOEnv) (s : ⊤) (txTop : TopLevelTx)
        → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ s')
      computeProof Γ s txTop
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = success (tt , UTXOS p)
      ... | no ¬p = failure (genErrors ¬p)

      completeness : (Γ : UTxOEnv) (s : ⊤) (txTop : TopLevelTx) (s' : ⊤)
        → Γ ⊢ s ⇀⦇ txTop ,UTXOS⦈ s'
        → (map proj₁ $ computeProof Γ s txTop) ≡ success s'
      completeness Γ s txTop s' (UTXOS p)
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = refl
      ... | no ¬p = ⊥-elim (¬p p)
```
