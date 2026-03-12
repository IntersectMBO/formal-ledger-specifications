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

      --------------------------------------------------------------------------
      -- computeProof for SubUTXO
      --------------------------------------------------------------------------
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


      --------------------------------------------------------------------------
      -- completeness for SubUTXO
      --------------------------------------------------------------------------
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
  Computational-UTXO = MkComputational computeProof completeness
    where
      open Computational Computational-UTXOS renaming  ( computeProof to computeProof-UTXOS
                                                       ; completeness to completeness-UTXOS)

      genErr-prem : (Γ×lm : UTxOEnv × Bool)(s₀ : UTxOState)(txTop : TopLevelTx)
        → ¬ (UTXO-Premises Γ×lm s₀ txTop) → String
      genErr-prem Γ×lm s₀ txTop ¬p = case dec-de-morgan ¬p of λ where
        (inj₁ _) → "¬ (SpendInputsOf txTop ≢ ∅)"
        (inj₂ b) → case dec-de-morgan b of λ where
          (inj₁ _) → "¬ (inInterval (SlotOf Γ) (ValidIntervalOf txTop))"
          (inj₂ b) → case dec-de-morgan b of λ where
              (inj₁ _) → "¬ (minfee (PParamsOf Γ) txTop (UTxOOf s₀) ≤ TxFeesOf txTop)"
              (inj₂ b) → case dec-de-morgan b of λ where
                (inj₁ _) → "¬ (consumedBatch (DepositsChangeOf Γ) txTop (UTxOOf Γ) ≡ producedBatch (DepositsChangeOf Γ) txTop)"
                (inj₂ b) → case dec-de-morgan b of λ where
                  (inj₁ _) →  "¬ (legacyMode ≡ true → consumed (DepositsChangeOf Γ) txTop (UTxOOf Γ) ≡ produced (DepositsChangeOf Γ) txTop)"
                  (inj₂ b) → case dec-de-morgan b of λ where
                    (inj₁ _) → "¬ (SizeOf txTop ≤ maxTxSize (PParamsOf Γ))"
                    (inj₂ b) → case dec-de-morgan b of λ where
                        (inj₁ _) → "¬ (refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx)"
                        (inj₂ b) → case dec-de-morgan b of λ where
                          (inj₁ _) → "¬ (allSpendInputs txTop ⊆ dom (UTxOOf Γ))"
                          (inj₂ b) → case dec-de-morgan b of λ where
                            (inj₁ _) → "¬ (allReferenceInputs txTop ⊆ dom (UTxOOf Γ))"
                            (inj₂ b) → case dec-de-morgan b of λ where
                              (inj₁ _) → "¬ (NoOverlappingSpendInputs txTop)"
                              (inj₂ b) → case dec-de-morgan b of λ where
                                (inj₁ _) → "¬ ((RedeemersOf txTop ˢ ≢ ∅) → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))"
                                (inj₂ b) → case dec-de-morgan b of λ where
                                  (inj₁ _) → "¬ (allMintedCoin txTop ≡ 0)"
                                  (inj₂ b) → case dec-de-morgan b of λ where
                                    (inj₁ _) → "¬ (∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] ( (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o) × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)) ))"
                                    (inj₂ b) → case dec-de-morgan b of λ where
                                        (inj₁ _) → "¬ (∀[ (a , _) ∈ range (TxOutsOf txTop) ] ( ((Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a) × (netId a ≡ NetworkId) ))"
                                        (inj₂ b) → case dec-de-morgan b of λ where
                                          (inj₁ _) → "¬ (∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId)"
                                          (inj₂ b) → case dec-de-morgan b of λ where
                                            (inj₁ _) → "¬ (MaybeNetworkIdOf txTop ~ just NetworkId)"
                                            (inj₂ b) → "¬ (CurrentTreasuryOf txTop ~ just (TreasuryOf Γ))"

      --------------------------------------------------------------------------
      -- computeProof for UTXO
      --------------------------------------------------------------------------
      computeProof : (Γ×lm : UTxOEnv × Bool) (s : UTxOState) (txTop : TopLevelTx)
        → ComputationResult String (∃[ s' ] Γ×lm ⊢ s ⇀⦇ txTop ,UTXO⦈ s')

      computeProof (Γ , lm) s txTop
        with IsValidFlagOf txTop in isValid | computeProof-UTXOS Γ tt txTop | ¿ UTXO-Premises (Γ , lm) s txTop ¿

      ... | true   | success (tt , utxosProof)  | yes prem = success ( ⟦ (UTxOOf s ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop
                                                                       , FeesOf s + TxFeesOf txTop
                                                                       , DonationsOf s + DonationsOf txTop
                                                                       ⟧
                                                                     , UTXO-valid (isValid , utxosProof , prem )
                                                                     )
      ... | false  | success (tt , utxosProof)  | yes prem = success ( ⟦ (UTxOOf s ∣ CollateralInputsOf txTop ᶜ)
                                                                       , FeesOf s + cbalance (UTxOOf s ∣ CollateralInputsOf txTop)
                                                                       , DonationsOf s
                                                                       ⟧
                                                                     , UTXO-invalid (isValid , utxosProof , prem)
                                                                     )
      ... | _      | _                          | no ¬prem  = failure (genErr-prem (Γ , lm) s txTop ¬prem)
      ... | _      | failure es                 | _         = failure es


      --------------------------------------------------------------------------
      -- completeness for UTXO
      --------------------------------------------------------------------------
      completeness : (Γ×lm : UTxOEnv × Bool) (s : UTxOState) (txTop : TopLevelTx)
        → ∀ s' → Γ×lm ⊢ s ⇀⦇ txTop ,UTXO⦈ s' → (map proj₁ $ computeProof Γ×lm s txTop) ≡ success s'

      completeness (Γ , lm) s txTop s' (UTXO-valid (refl , h-utxos , h-prem))
        with computeProof-UTXOS Γ tt txTop in eqU | ¿ UTXO-Premises (Γ , lm) s txTop  ¿
      ... | success (tt , utxosProof) | yes prem = refl
      ... | success (tt , utxosProof) | no ¬prem = ⊥-elim (¬prem h-prem)
      ... | failure es | _ = ⊥-elim $ case trans (sym (map-failure {f = proj₁} eqU))
                                                 (completeness-UTXOS Γ tt txTop tt h-utxos)
                                      of λ ()

      completeness (Γ , lm) s txTop s' (UTXO-invalid (refl , h-utxos , h-prem))
        with computeProof-UTXOS Γ tt txTop in eqU | ¿ UTXO-Premises (Γ , lm) s txTop ¿
      ... | success (tt , utxosProof) | yes prem = refl
      ... | success (tt , utxosProof) | no ¬prem = ⊥-elim (¬prem h-prem)
      ... | failure es                | _ = ⊥-elim $ case trans  (sym (map-failure {f = proj₁} eqU))
                                                                 (completeness-UTXOS Γ tt txTop tt h-utxos)
                                                     of λ ()
```
