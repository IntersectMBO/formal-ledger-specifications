---
source_branch: master
source_path: src/Ledger/Conway/Specification/Utxo/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.Computational
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
open import stdlib-meta.Tactic.GenError

open import Ledger.Conway.Specification.Utxo txs abs
open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Certs govStructure

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid
  _ = Functor-ComputationResult

instance
  Computational-UTXOS : Computational _⊢_⇀⦇_,UTXOS⦈_ String
  Computational-UTXOS = record {go} where
    module go (Γ : UTxOEnv) (s : UTxOState) (tx : Tx)
      (let open UTxOState s)
      (let H-Yes , ⁇ H-Yes? = Scripts-Yes-premises {Γ} {tx} {utxo} {deposits})
      (let H-No  , ⁇ H-No?  = Scripts-No-premises  {Γ} {tx} {utxo}) where
      open Tx tx renaming (body to txb); open TxBody txb
      open UTxOEnv Γ renaming (pparams to pp)
      sLst = collectP2ScriptsWithContext pp tx utxo

      computeProof =
        case H-Yes? ,′ H-No? of λ where
          (yes p , no _ ) → success (_ , (Scripts-Yes p))
          (no _  , yes p) → success (_ , (Scripts-No p))
          (_     , _    ) → failure "isValid check failed"

      completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXOS⦈ s' → map proj₁ computeProof ≡ success s'
      completeness _ (Scripts-Yes p) with H-No? | H-Yes?
      ... | yes (_ , refl) | _     = case proj₂ p of λ ()
      ... | no _           | yes _ = refl
      ... | no _           | no ¬p = case ¬p p of λ ()
      completeness _ (Scripts-No p) with H-Yes? | H-No?
      ... | yes (_ , _ , refl) | _     = case proj₂ p of λ ()
      ... | no _               | yes _ = refl
      ... | no _               | no ¬p = case ¬p p of λ ()

instance
  Computational-UTXO' : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO' = record {Go}
    where
      module Go Γ s tx (let H , ⁇ H? = UTXO-premises {Γ = Γ} {s = s} {tx = tx}) where

        open Computational Computational-UTXOS
          renaming (computeProof to computeProof'; completeness to completeness')

        computeProofH : Dec H → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProofH (yes (x , y , e , k , l , m , c , d , v , j , n , o , p , q , r , t , u)) =
            map₂′ (UTXO-inductive⋯ _ _ _ x y e k l m c d v j n o p q r t u) <$> computeProof' Γ s tx
        computeProofH (no ¬p) = failure $ genErrors ¬p

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProof = computeProofH H?

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (UTXO-inductive⋯ _ _ _ x y w k l m c d v j n o p q r t u h) with H?
        ... | no ¬p = ⊥-elim $ ¬p (x , y , w , k , l , m , c , d , v , j , n , o , p , q , r , t , u)
        ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
        ... | success _ | refl = refl

open Computational ⦃...⦄

opaque
  unfolding List-Model
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = Computational-UTXO'

private variable
  tx                    : Tx
  Γ                     : UTxOEnv
  utxoState utxoState'  : UTxOState

UTXO-step : UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState
UTXO-step = compute ⦃ Computational-UTXO ⦄

UTXO-step-computes-UTXO  :  UTXO-step Γ utxoState tx ≡ success utxoState'
                         ⇔  Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-success⇔STS ⦃ Computational-UTXO ⦄
```
