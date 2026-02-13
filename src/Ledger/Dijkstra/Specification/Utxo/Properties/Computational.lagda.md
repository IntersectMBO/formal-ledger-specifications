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
import Data.Sum.Relation.Unary.All as Sum

open PParams

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
      computeProof : (Γ : UTxOEnv) (_ : ⊤) (txTop : TopLevelTx) → ComputationResult String (Σ ⊤ (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈_))
      computeProof Γ _ txTop
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = success (tt , UTXOS p)
      ... | no ¬p = failure (genErrors ¬p)

      completeness : (Γ : UTxOEnv) (_ : ⊤) (txTop : TopLevelTx) (_ : ⊤)
        → Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt
        → (map proj₁ $ computeProof Γ _ txTop) ≡ success tt
      completeness Γ _ txTop _ (UTXOS p)
        with ¿ evalP2Scripts (allP2ScriptsWithContext Γ txTop) ≡ IsValidFlagOf txTop ¿
      ... | yes p = refl
      ... | no ¬p = ⊥-elim (¬p p)


instance
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = record {go} where
    module go (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
      (let H-Yes , ⁇ H-Yes? = UTXO-valid-premises {txTop} {Γ} {UTxOOf s})
      (let H-No  , ⁇ H-No?  = UTXO-invalid-premises  {txTop} {Γ} {UTxOOf s}) where
      open Computational Computational-UTXOS renaming  ( computeProof to computeProof-UTXOS
                                                     ; completeness to completeness-UTXOS)

      utxo-valid-prems : Ledger.Prelude.∃⁇
      utxo-valid-prems = UTXO-valid-premises {txTop} {Γ} {UTxOOf s}

      utxo-invalid-prems : Ledger.Prelude.∃⁇
      utxo-invalid-prems = UTXO-invalid-premises {txTop} {Γ} {UTxOOf s}

      --------------------------------------------------------------------------
      -- computeProof for UTXO
      --------------------------------------------------------------------------
      computeProof : ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')
      computeProof with computeProof-UTXOS Γ tt txTop
      ... | failure es = failure es
      ... | success (tt , utxosProof) =
        case H-Yes? ,′ H-No? of λ where
          (yes (p₁ , p₂) , no _ ) → success (_ , (UTXO-valid (p₁ , utxosProof , p₂)))
          (no _  , yes (p₁ , p₂)) → success (_ , (UTXO-invalid (p₁ , utxosProof , p₂)))
          (_     , _    ) → failure "isValid check failed"

      --------------------------------------------------------------------------
      -- completeness for UTXO
      --------------------------------------------------------------------------
      completeness : ∀ s' → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s' → map proj₁ computeProof ≡ success s'
      completeness s' (UTXO-valid {utxo = utxo₁} {fees₁} {donations₁} (refl , utxosProof , q₂)) = Goal
        where
        Goal : map proj₁ computeProof
             ≡ success ⟦ (utxo₁ ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop
                       , fees₁ + TxFeesOf txTop
                       , donations₁ + DonationsOf txTop ⟧

        Goal with H-No? in eqNo | H-Yes? in eqYes
        ... | yes ()    | _  -- impossible: would require isValid ≡ false
        ... | no _      | no ¬q = ⊥-elim (¬q (refl , q₂))
        ... | no _      | yes premises with computeProof-UTXOS Γ tt txTop in eqU
        ... | success (tt , _) rewrite eqNo | eqYes = refl  -- force the internal `case H-Yes? ,′ H-No?`
                                                            -- to reduce (and keep the UTXOS success branch)
        ... | failure es =  -- contradict UTXOS completeness:
                            -- map proj₁ can't be both failure and success
          ⊥-elim $ case trans (sym (map-failure {f = proj₁} eqU))
                              (completeness-UTXOS Γ tt txTop tt utxosProof) of λ ()

      completeness _ (UTXO-invalid {utxo = utxo₁} {fees₁} {donations₁} (refl , utxosProof , q₂)) = Goal
        where
        Goal : map proj₁ computeProof
             ≡ success ⟦ utxo₁ ∣ CollateralInputsOf txTop ᶜ
                       , fees₁ + cbalance (utxo₁ ∣ CollateralInputsOf txTop)
                       , donations₁ ⟧ᵘ

        Goal with H-Yes? in eqYes | H-No? in eqNo
        ... | yes () | _
        ... | no _  | no ¬q = ⊥-elim (¬q (refl , q₂))
        ... | no _  | yes premises with computeProof-UTXOS Γ tt txTop in eqU
        ... | success (tt , _) rewrite eqYes | eqNo = refl
        ... | failure es =
          ⊥-elim $
            case
              trans (sym (map-failure {f = proj₁} eqU))
                    (completeness-UTXOS Γ tt txTop tt utxosProof)
            of λ ()
```
