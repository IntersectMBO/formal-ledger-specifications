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

open import Algebra.Morphism              using (module MonoidMorphisms; IsMagmaHomomorphism)
open import Data.Integer as ℤ             using (ℤ)
open import Data.List.Relation.Unary.All  using (All)
import Data.Nat as ℕ
open import Data.Nat.Properties           hiding (_≟_)
open import Data.String.Base              using () renaming (_++_ to _+ˢ_)

open import Prelude; open Equivalence
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties

open import Tactic.Cong                 using (cong!)
open import Tactic.EquationalReasoning  using (module ≡-Reasoning)
open import stdlib-meta.Tactic.MonoidSolver.NonNormalising using (solve-macro)
open import stdlib-meta.Tactic.GenError using (genErrors)

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Relation.Binary.PropositionalEquality

instance
--   _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
--   _ = +-0-monoid
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
```
