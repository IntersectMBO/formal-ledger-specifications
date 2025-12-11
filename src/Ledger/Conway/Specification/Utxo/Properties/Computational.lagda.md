---
source_branch: master
source_path: src/Ledger/Conway/Specification/Utxo/Properties/Computational.lagda.md
---

```agda
{-# OPTIONS --safe #-}

open import Ledger.Core.Specification.Abstract
open import Ledger.Conway.Specification.Transaction

module Ledger.Conway.Specification.Utxo.Properties.Computational
  (txs : TransactionStructure) (open TransactionStructure txs)
  (abs : AbstractFunctions txs)
  where

open import Algebra.Morphism using (module MonoidMorphisms; IsMagmaHomomorphism)
open import Data.Integer as ℤ using (ℤ)
open import Data.List.Relation.Unary.All using (All)
import Data.Nat as ℕ
open import Data.Nat.Properties hiding (_≟_)
open import Data.String.Base using () renaming (_++_ to _+ˢ_)

open import Tactic.Cong using (cong!)
open import Tactic.EquationalReasoning using (module ≡-Reasoning)
open import stdlib-meta.Tactic.MonoidSolver.NonNormalising using (solve-macro)

open import Prelude
open import Ledger.Prelude hiding (≤-trans; ≤-antisym; All)

open import Ledger.Conway.Specification.Certs govStructure
open import Ledger.Conway.Specification.Script.Validation txs abs
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Utxo txs abs

open Equivalence
open Properties

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

        genErr : ¬ H → String
        genErr  ¬p = case dec-de-morgan ¬p of λ where
          (inj₁ a) → "¬ TxBody.txIns (Tx.body tx) ≢ ∅"
          (inj₂ b) → case dec-de-morgan b of λ where
            (inj₁ a₁) → "¬ TxBody.txIns (Tx.body tx) ⊆ dom (UTxOOf s)"
            (inj₂ b₁) → case dec-de-morgan b₁ of λ where
                (inj₁ a₁') → "¬ refInputs ⊆ dom utxo "
                (inj₂ b₂') → case dec-de-morgan b₂' of λ where
                  (inj₁ a₂) → "¬ inInterval (UTxOEnv.slot Γ) (txvldt (Tx.body tx))"
                  (inj₂ b₂) → case dec-de-morgan b₂ of λ where
                    (inj₁ a₃) → "¬ feesOK pp tx utxo"
                    (inj₂ b₃) → case dec-de-morgan b₃ of λ where
                        (inj₁ a₄) →
                          let
                            pp = PParamsOf Γ
                            txb = TxBodyOf tx
                            con = consumed pp s txb
                            prod = produced pp s txb
                            showValue = show ∘ coin
                          in
                            ( "¬consumed (UTxOEnv.pparams Γ) s (Tx.body tx) ≡ produced (PParamsOf Γ) s (Tx.body tx)"
                            +ˢ "\n  consumed =\t\t" +ˢ showValue con
                            +ˢ "\n    ins  =\t\t" +ˢ showValue (balance (UTxOOf s ∣ txb .TxBody.txIns))
                            +ˢ "\n    mint =\t\t" +ˢ showValue (TxBody.mint txb)
                            +ˢ "\n    depositRefunds =\t" +ˢ showValue (inject (depositRefunds pp s txb))
                            +ˢ "\n  produced =\t\t" +ˢ showValue prod
                            +ˢ "\n    outs =\t\t" +ˢ showValue (balance $ outs txb)
                            +ˢ "\n    fee  =\t\t" +ˢ show (FeesOf tx)
                            +ˢ "\n    newDeposits  =\t" +ˢ show (newDeposits pp s txb)
                            +ˢ "\n    donation  =\t\t" +ˢ show (DonationsOf txb)
                            )
                        (inj₂ b₄) → case dec-de-morgan b₄ of λ where
                          (inj₁ a₅) → "¬ coin (TxBody.mint (Tx.body tx)) ≡ 0"
                          (inj₂ b₅) → case dec-de-morgan b₅ of λ where
                              (inj₁ a₆) → "¬((Tx.txsize tx) Data.Nat.Base.≤ maxTxSize (UTxOEnv.pparams Γ))"
                              (inj₂ b₆) → case dec-de-morgan b₆ of λ where
                                (inj₁ a₇) → "∀[ (_ , txout) ∈ txOuts .proj₁ ] inject (utxoEntrySize txout * coinsPerUTxOByte pp) ≤ᵗ getValue txout"
                                (inj₂ b₇) → case dec-de-morgan b₇ of λ where
                                    (inj₁ a₈) → "∀[ (_ , txout) ∈ txOuts .proj₁ ] serSize (getValue txout) ≤ maxValSize pp"
                                    (inj₂ b₈) → case dec-de-morgan b₈ of λ where
                                      (inj₁ a₉) → "∀[ (a , _) ∈ range txOuts ] Sum.All (const ⊤) (λ a → a .BootstrapAddr.attrsSize ≤ 64) a"
                                      (inj₂ _) → "something else broke"

        computeProofH : Dec H → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProofH (yes (x , y , z , e , k , l , m , c , v , j , n , o , p , q , r , t , u)) =
            map₂′ (UTXO-inductive⋯ _ _ _ x y z e k l m c v j n o p q r t u) <$> computeProof' Γ s tx
        computeProofH (no ¬p) = failure $ genErr ¬p

        computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s')
        computeProof = computeProofH H?

        completeness : ∀ s' → Γ ⊢ s ⇀⦇ tx ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
        completeness s' (UTXO-inductive⋯ _ _ _ x y z w k l m c v j n o p q r t u h) with H?
        ... | no ¬p = ⊥-elim $ ¬p (x , y , z , w , k , l , m , c , v , j , n , o , p , q , r , t , u)
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
