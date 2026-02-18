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
    module go where

      --------------------------------------------------------------------------
      -- computeProof for SubUTXO
      --------------------------------------------------------------------------
      computeProof : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx)
        → ComputationResult String (Σ UTxOState (_⊢_⇀⦇_,SUBUTXO⦈_ Γ s txSub))

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
      ... | (yes p) = success ( ⟦ (UTxOOf s ∣ SpendInputsOf txSub ᶜ) ∪ˡ outs txSub
                                , FeesOf s
                                , DonationsOf s + DonationsOf txSub
                                ⟧
                              , SUBUTXO {txSub = txSub} p
                              )
      ... | (no ¬p) = failure (genErrors ¬p)


      --------------------------------------------------------------------------
      -- completeness for SubUTXO
      --------------------------------------------------------------------------
      completeness : (Γ : SubUTxOEnv) (s : UTxOState) (txSub : SubLevelTx)
        → ∀ s' → Γ ⊢ s ⇀⦇ txSub ,SUBUTXO⦈ s' → map proj₁ (computeProof Γ s txSub) ≡ success s'

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

      genErr-prem : {Γ : UTxOEnv} {txTop : TopLevelTx} {utxo : UTxO} → ¬ (UTXO-Premises Γ txTop utxo) → String
      genErr-prem ¬p = case dec-de-morgan ¬p of λ where
        (inj₁ a₀) → "¬ (SpendInputsOf txTop ≢ ∅)"
        (inj₂ b₀) → case dec-de-morgan b₀ of λ where
          (inj₁ a₁) → "¬ (inInterval (SlotOf Γ) (ValidIntervalOf txTop))"
          (inj₂ b₁) → case dec-de-morgan b₁ of λ where
              (inj₁ a₂) → "¬ (minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop)"
              (inj₂ b₂) → case dec-de-morgan b₂ of λ where
                (inj₁ a₃) → "¬ (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ))"
                (inj₂ b₃) → case dec-de-morgan b₃ of λ where
                  (inj₁ a₄) → "¬ (SizeOf txTop ≤ maxTxSize (PParamsOf Γ))"
                  (inj₂ b₄) → case dec-de-morgan b₄ of λ where
                      (inj₁ a₅) → "¬ (refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx)"
                      (inj₂ b₅) → case dec-de-morgan b₅ of λ where
                        (inj₁ a₆) → "¬ (allSpendInputs txTop ⊆ dom (UTxOOf Γ))"
                        (inj₂ b₆) → case dec-de-morgan b₆ of λ where
                          (inj₁ a₇) → "¬ (allReferenceInputs txTop ⊆ dom (UTxOOf Γ))"
                          (inj₂ b₇) → case dec-de-morgan b₇ of λ where
                            (inj₁ a₈) → "¬ (NoOverlappingSpendInputs txTop)"
                            (inj₂ b₈) → case dec-de-morgan b₈ of λ where
                              (inj₁ a₉) → "¬ ((RedeemersOf txTop ˢ ≢ ∅) → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))"
                              (inj₂ b₉) → case dec-de-morgan b₉ of λ where
                                (inj₁ c₀) → "¬ (allMintedCoin txTop ≡ 0)"
                                (inj₂ d₀) → case dec-de-morgan d₀ of λ where
                                  (inj₁ c₁) → "¬ (∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] ( (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o) × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)) ))"
                                  (inj₂ d₁) → case dec-de-morgan d₁ of λ where
                                      (inj₁ c₂) → "¬ (∀[ (a , _) ∈ range (TxOutsOf txTop) ] ( ((Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a) × (netId a ≡ NetworkId) ))"
                                      (inj₂ d₂) → case dec-de-morgan d₂ of λ where
                                        (inj₁ c₃) → "¬ (∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId)"
                                        (inj₂ d₃) → case dec-de-morgan d₃ of λ where
                                          (inj₁ c₄) → "¬ (MaybeNetworkIdOf txTop ~ just NetworkId)"
                                          (inj₂ d₄) → "¬ (CurrentTreasuryOf txTop ~ just (TreasuryOf Γ))"

      --------------------------------------------------------------------------
      -- computeProof for UTXO
      --------------------------------------------------------------------------
      computeProof : (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
        → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')

      computeProof Γ s txTop
        with IsValidFlagOf txTop in isValid | computeProof-UTXOS Γ tt txTop | ¿ UTXO-Premises Γ txTop (UTxOOf s) ¿

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
      ... | _      | _                          | no ¬prem  = failure (genErr-prem {Γ} {txTop} {UTxOOf s} ¬prem)
      ... | _      | failure es                 | _         = failure es


      --------------------------------------------------------------------------
      -- completeness for UTXO
      --------------------------------------------------------------------------
      completeness : (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
        → ∀ s' → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s' → (map proj₁ $ computeProof Γ s txTop) ≡ success s'

      completeness Γ s txTop s' (UTXO-valid (refl , h-utxos , h-prem))
        with computeProof-UTXOS Γ tt txTop in eqU | ¿ UTXO-Premises Γ txTop (UTxOOf s) ¿
      ... | success (tt , utxosProof) | yes prem = refl
      ... | success (tt , utxosProof) | no ¬prem = ⊥-elim (¬prem h-prem)
      ... | failure es | _ = ⊥-elim $ case trans (sym (map-failure {f = proj₁} eqU))
                                                 (completeness-UTXOS Γ tt txTop tt h-utxos)
                                      of λ ()

      completeness Γ s txTop s' (UTXO-invalid (refl , h-utxos , h-prem))
        with computeProof-UTXOS Γ tt txTop in eqU | ¿ UTXO-Premises Γ txTop (UTxOOf s) ¿
      ... | success (tt , utxosProof) | yes prem = refl
      ... | success (tt , utxosProof) | no ¬prem = ⊥-elim (¬prem h-prem)
      ... | failure es                | _ = ⊥-elim $ case trans  (sym (map-failure {f = proj₁} eqU))
                                                                 (completeness-UTXOS Γ tt txTop tt h-utxos)
                                                     of λ ()
```
