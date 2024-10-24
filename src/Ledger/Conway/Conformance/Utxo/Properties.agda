{-# OPTIONS --safe #-}

open import Ledger.Conway.Conformance.Abstract using (AbstractFunctions)
open import Ledger.Transaction using (TransactionStructure)

module Ledger.Conway.Conformance.Utxo.Properties
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Data.Nat.Properties hiding (_≟_)
open import Data.String.Base renaming (_++_ to _+ˢ_) using ()
open import Interface.ComputationalRelation
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All); open Properties
open import Ledger.Conway.Conformance.ScriptValidation txs abs
open import Ledger.Conway.Conformance.Utxo txs abs
open import Ledger.Conway.Conformance.Certs govStructure
open import Prelude
open import Tactic.GenError

open Equivalence

instance
  _ = TokenAlgebra.Value-CommutativeMonoid tokenAlgebra
  _ = +-0-monoid
  _ = Functor-ComputationResult

instance
  Computational-UTXOS : Computational _⊢_⇀⦇_,UTXOS⦈_ String
  Computational-UTXOS = record {go} where
    module go Γ s tx
      (let H-Yes , ⁇ H-Yes? = Scripts-Yes-premises {Γ} {s} {tx})
      (let H-No  , ⁇ H-No?  = Scripts-No-premises {Γ} {s} {tx}) where
      open Tx tx renaming (body to txb); open TxBody txb
      open UTxOEnv Γ renaming (pparams to pp)
      open UTxOState s
      sLst = collectPhaseTwoScriptInputs pp tx utxo

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
      ... | yes (_ , refl) | _     = case proj₂ p of λ ()
      ... | no _           | yes _ = refl
      ... | no _           | no ¬p = case ¬p p of λ ()

instance
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = record {Go}
    where
      module Go Γ s tx (let H , ⁇ H? = UTXO-premises {tx}{Γ}{s}) where

        open Computational Computational-UTXOS
          renaming (computeProof to computeProof'; completeness to completeness')

        computeProofH : Dec H → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProofH (yes (x , y , z , e , k , l , m , v , j , n , o , p , q , r , t , u)) =
            map₂′ (UTXO-inductive⋯ _ _ _ x y z e k l m v j n o p q r t u) <$> computeProof' Γ s tx
        computeProofH (no ¬p) = failure $ genErrors ¬p

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProof = computeProofH H?

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (UTXO-inductive⋯ _ _ _ x y z e k l m v j n o p q r t u h) with H?
        ... | no ¬p = ⊥-elim $ ¬p (x , y , z , e , k , l , m , v , j , n , o , p , q , r , t , u )
        ... | yes _ with computeProof' Γ s tx | completeness' _ _ _ _ h
        ... | success _ | refl = refl

open Computational ⦃...⦄

private variable
  tx                               : Tx
  utxo utxo'                       : UTxO
  Γ                                : UTxOEnv
  utxoState utxoState'             : UTxOState
  fees fees' donations donations'  : Coin
  deposits deposits'               : DepositPurpose ⇀ Coin

UTXO-step : UTxOEnv → UTxOState → Tx → ComputationResult String UTxOState
UTXO-step = compute ⦃ Computational-UTXO ⦄

UTXO-step-computes-UTXO  :  UTXO-step Γ utxoState tx ≡ success utxoState'
                         ⇔  Γ ⊢ utxoState ⇀⦇ tx ,UTXO⦈ utxoState'
UTXO-step-computes-UTXO = ≡-success⇔STS ⦃ Computational-UTXO ⦄
