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

      -- All UTXO premises *except* the UTXOS premise and the final s₁≡... equality.
      H₁ H₂ H₃ H₄ H₅ H₆ H₇ H₈ H₉ H₁₀ H₁₁ H₁₂ H₁₃ H₁₄ H₁₅ H₁₆ H₁₇ :
        UTxOEnv → TopLevelTx → UTxO → Fees → Donations → Type

      H₁ Γ txTop utxo fees donations = (SpendInputsOf txTop ≢ ∅)
      H₂ Γ txTop utxo fees donations  = H₁ Γ txTop utxo fees donations  × (inInterval (SlotOf Γ) (ValidIntervalOf txTop))
      H₃ Γ txTop utxo fees donations  = H₂ Γ txTop utxo fees donations  × (minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop)
      H₄ Γ txTop utxo fees donations  = H₃ Γ txTop utxo fees donations  × (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ))
      H₅ Γ txTop utxo fees donations  = H₄ Γ txTop utxo fees donations  × (SizeOf txTop ≤ maxTxSize (PParamsOf Γ))
      H₆ Γ txTop utxo fees donations  = H₅ Γ txTop utxo fees donations  × (refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx)
      H₇ Γ txTop utxo fees donations  = H₆ Γ txTop utxo fees donations  × (allSpendInputs txTop ⊆ dom (UTxOOf Γ))
      H₈ Γ txTop utxo fees donations  = H₇ Γ txTop utxo fees donations  × (allReferenceInputs txTop ⊆ dom (UTxOOf Γ))
      H₉ Γ txTop utxo fees donations  = H₈ Γ txTop utxo fees donations  × (NoOverlappingSpendInputs txTop)
      H₁₀ Γ txTop utxo fees donations = H₉ Γ txTop utxo fees donations  × (requiredGuardsInTopLevel txTop (SubTransactionsOf txTop))
      H₁₁ Γ txTop utxo fees donations = H₁₀ Γ txTop utxo fees donations × ((RedeemersOf txTop ˢ ≢ ∅) → collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ))
      H₁₂ Γ txTop utxo fees donations = H₁₁ Γ txTop utxo fees donations × (allMintedCoin txTop ≡ 0)
      H₁₃ Γ txTop utxo fees donations = H₁₂ Γ txTop utxo fees donations × (∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ] (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o) × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)))
      H₁₄ Γ txTop utxo fees donations = H₁₃ Γ txTop utxo fees donations × (∀[ (a , _) ∈ range (TxOutsOf txTop) ] (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a × (netId a ≡ NetworkId))
      H₁₅ Γ txTop utxo fees donations = H₁₄ Γ txTop utxo fees donations × (∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId)
      H₁₆ Γ txTop utxo fees donations = H₁₅ Γ txTop utxo fees donations × (MaybeNetworkIdOf txTop ~ just NetworkId)
      H₁₇ Γ txTop utxo fees donations = H₁₆ Γ txTop utxo fees donations × (CurrentTreasuryOf txTop  ~ just (TreasuryOf Γ))


      takeH₃ :  {Γ : UTxOEnv} {txTop : TopLevelTx} {s₁ : UTxOState} {utxo : UTxO} {fees : Fees} {donations : Donations}
                → UTXO-Premises Γ txTop s₁ utxo fees donations
                → H₃ Γ txTop utxo fees donations
      takeH₃ prem = ((prem .proj₁) , (prem .proj₂ .proj₁)) , (prem .proj₂ .proj₂ .proj₁)

      ConsumedProduced : UTxOEnv → TopLevelTx → Type
      ConsumedProduced Γ txTop = consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ)

      dec-ConsumedProduced : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (ConsumedProduced Γ txTop)
      dec-ConsumedProduced Γ txTop = (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≟ produced txTop (DepositsChangeOf Γ))

      computeProof :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
                      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')

      computeProof Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop
        with ¿ H₃ Γ txTop utxo fees donations ¿
      ... | no ¬h₃ = failure (genErrors ¬h₃)
      ... | yes h₃
        with dec-ConsumedProduced Γ txTop
      ... | no ¬eq = failure (genErrors ¬eq)
      ... | yes eq
        with computeProof-UTXOS Γ tt txTop
      ... | failure es = failure es
      ... | success (tt , utxosProof) = success (s₁ , UTXO-step premises)
        where
          s₁ : UTxOState
          s₁ = if IsValidFlagOf txTop
               then ⟦ (utxo ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop
                    , fees + TxFeesOf txTop
                    , donations + DonationsOf txTop ⟧ᵘ
               else ⟦ utxo ∣ (CollateralInputsOf txTop) ᶜ
                    , fees + cbalance (utxo ∣ CollateralInputsOf txTop)
                    , donations ⟧ᵘ

          p5 : SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
          p5 = {!!}

          premises : UTXO-Premises Γ txTop s₁ utxo fees donations
          premises = h₃ .proj₁ .proj₁ , h₃ .proj₁ .proj₂ , h₃ .proj₂ , eq , p5 , {!!}


      completeness :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) (s' : UTxOState)
                      → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
                      → (map proj₁ $ computeProof Γ s txTop) ≡ success s'

      completeness Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop s' (UTXO premises)
        with premises
      ... | (h , utxosProof , eqS₁)
        with ¿ H₃ Γ txTop utxo fees donations ¿
      ... | no ¬h₃ = ⊥-elim (¬h₃ (takeH₃ {utxo = utxo} premises))
      ... | yes h₃'
        with dec-ConsumedProduced Γ txTop
      ... | no ¬eq = ⊥-elim (¬eq (premises .proj₂ .proj₂ .proj₂ .proj₁))
      ... | yes eq'
        with computeProof-UTXOS Γ tt txTop |  completeness-UTXOS Γ tt txTop tt
                                              (premises .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂
                                                        .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₂ .proj₁)
      ... | failure es | ()   -- impossible: would imply failure ≡ success tt
      ... | success (tt , _) | refl = {!!}
-- --}
```
