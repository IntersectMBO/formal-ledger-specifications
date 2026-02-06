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

getS₁ : (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) → UTxOState
getS₁ Γ s txTop = if IsValidFlagOf txTop
  then ⟦ (UTxOOf s ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , FeesOf s + TxFeesOf txTop , DonationsOf s + DonationsOf txTop ⟧
  else ⟦ UTxOOf s ∣ (CollateralInputsOf txTop) ᶜ , FeesOf s + cbalance (UTxOOf s ∣ CollateralInputsOf txTop) , DonationsOf s ⟧

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


{--
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = MkComputational computeProof completeness
    where
      open Computational Computational-UTXOS
        renaming (computeProof to computeProof-UTXOS
                 ; completeness to completeness-UTXOS)

      -- All UTXO premises except the UTXOS premise and the final s₁≡... equality.
      H : (Γ : UTxOEnv) (txTop : TopLevelTx) (utxo : UTxO) (fees : Fees) (donations : Donations) → Type
      H Γ txTop utxo fees donations =
            (SpendInputsOf txTop ≢ ∅)
          × (inInterval (SlotOf Γ) (ValidIntervalOf txTop))
          × (minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop)
          × (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ))
          × (SizeOf txTop ≤ maxTxSize (PParamsOf Γ))
          × (refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx)
          × (allSpendInputs txTop ⊆ dom (UTxOOf Γ))
          × (allReferenceInputs txTop ⊆ dom (UTxOOf Γ))
          × (NoOverlappingSpendInputs txTop)
          × (requiredGuardsInTopLevel txTop (SubTransactionsOf txTop))
          × ((RedeemersOf txTop ˢ ≢ ∅) → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))
          × (allMintedCoin txTop ≡ 0)
          × (∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
                (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
              × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)))
          × (∀[ (a , _) ∈ range (TxOutsOf txTop) ]
                (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a × (netId a ≡ NetworkId))
          × (∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId)
          × (MaybeNetworkIdOf txTop ~ just NetworkId)
          × (CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ))

      computeProof :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
                      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')
      computeProof Γ s txTop with ¿ H Γ txTop (UTxOOf s) (FeesOf s) (DonationsOf s) ¿
      ... | no ¬h = failure (genErrors ¬h)
      ... | yes h = Goal h
        where
        Goal : H Γ txTop (UTxOOf s) (FeesOf s) (DonationsOf s) → ComputationResult String (∃-syntax (_⊢_⇀⦇_,UTXO⦈_ Γ s txTop))
        Goal h with (computeProof-UTXOS Γ tt txTop)
        ... | (failure es) = failure es
        ... | (success p) = success (getS₁ Γ s txTop , UTXO-step (h , proj₂ p , refl))

      completeness :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) (s' : UTxOState)
                      → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
                      → (map proj₁ $ computeProof Γ s txTop) ≡ success s'
      completeness Γ s txTop s' (UTXO premises) = ?
--}
```
