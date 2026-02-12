-- File: src/Ledger/Dijkstra/Specification/Utxo/Properties/TacticImpossible.agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.TacticImpossible
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Prelude
open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Utxo txs abs
open import Ledger.Dijkstra.Specification.Script.Validation txs abs
open import stdlib-meta.Tactic.GenError using (genErrors)
import Data.Sum.Relation.Unary.All as Sum

open PParams

instance
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

  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = MkComputational computeProof completeness
    where
    open Computational Computational-UTXOS renaming  ( computeProof to computeProof-UTXOS
                                                     ; completeness to completeness-UTXOS )

    module _ {txTop : TopLevelTx} where

      P₁ P₉ P₁₀-antecendent P₁₁ P₁₄ P₁₅ : Type
      P₁ = SpendInputsOf txTop ≢ ∅
      P₉ = NoOverlappingSpendInputs txTop
      P₁₀-antecendent = RedeemersOf txTop ˢ ≢ ∅
      P₁₁ = allMintedCoin txTop ≡ 0
      P₁₄ = ∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId
      P₁₅ = MaybeNetworkIdOf txTop ~ just NetworkId

      dec-P₉ : Dec P₉
      dec-P₉ = ¿ P₉ ¿
      dec-P₁₀-antecendent : Dec P₁₀-antecendent
      dec-P₁₀-antecendent = ¿ P₁₀-antecendent ¿
      dec-P₁₁ : Dec P₁₁
      dec-P₁₁ = ¿ P₁₁ ¿
      dec-P₁₄ : Dec P₁₄
      dec-P₁₄ = ¿ P₁₄ ¿
      dec-P₁₅ : Dec P₁₅
      dec-P₁₅ = ¿ P₁₅ ¿

      module _ {Γ : UTxOEnv} where

        P₂ P₄ P₅ P₆ P₇ P₈ P₁₀-consequent P₁₀ P₁₂ P₁₃ P₁₆ : Type
        P₂ = inInterval (SlotOf Γ) (ValidIntervalOf txTop)
        P₄ = consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ)
        P₅ = SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
        P₆ = refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx
        P₇ = allSpendInputs txTop ⊆ dom (UTxOOf Γ)
        P₈ = allReferenceInputs txTop ⊆ dom (UTxOOf Γ)
        P₁₀-consequent = collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ)
        P₁₀ = P₁₀-antecendent → P₁₀-consequent
        P₁₂ = ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
              ( (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
                × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)) )
        P₁₃ = ∀[ (a , _) ∈ range (TxOutsOf txTop) ]
               (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a × (netId a ≡ NetworkId)
        P₁₆ = CurrentTreasuryOf txTop ~ just (TreasuryOf Γ)

        dec-P₄ : Dec P₄
        dec-P₄ = consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≟ produced txTop (DepositsChangeOf Γ)
        dec-P₅ : Dec P₅
        dec-P₅ = SizeOf txTop ≤? maxTxSize (PParamsOf Γ)
        dec-P₆ : Dec P₆
        dec-P₆ = refScriptsSize txTop (UTxOOf Γ) ≤? (PParamsOf Γ) .maxRefScriptSizePerTx
        dec-P₇ : Dec P₇
        dec-P₇ = ¿ P₇ ¿
        dec-P₈ : Dec P₈
        dec-P₈ = ¿ P₈ ¿
        dec-P₁₀-consequent : Dec P₁₀-consequent
        dec-P₁₀-consequent = ¿ P₁₀-consequent ¿
        dec-P₁₀ : Dec P₁₀
        dec-P₁₀ with dec-P₁₀-antecendent
        ... | no ¬A  = yes (λ a → ⊥-elim (¬A a))
        ... | yes a  with dec-P₁₀-consequent
        ...   | yes b  = yes (λ _ → b)
        ...   | no ¬b  = no  (λ f → ¬b (f a))
        dec-P₁₂ : Dec P₁₂
        dec-P₁₂ = ¿ P₁₂ ¿
        dec-P₁₃ : Dec P₁₃
        dec-P₁₃ = ¿ P₁₃ ¿
        dec-P₁₆ : Dec P₁₆
        dec-P₁₆ = ¿ P₁₆ ¿

        module _ {utxo : UTxO} where

          P₃ : Type
          P₃ = minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop

          H₃ H₄ H₅ H₆ H₇ H₈ H₉ H₁₀ H₁₁ H₁₂ H₁₃ H₁₄ H₁₅ H₁₆ : Type
          H₃ = P₁ × P₂ × P₃
          H₄ = P₄
          H₅ = P₅
          H₆ = H₅ × P₆
          H₇ = H₆ × P₇
          H₈ = H₇ × P₈
          H₉ = H₈ × P₉
          H₁₀ = H₉ × P₁₀
          H₁₁ = H₁₀ × P₁₁
          H₁₂ = H₁₁ × P₁₂
          H₁₃ = H₁₂ × P₁₃
          H₁₄ = H₁₃ × P₁₄
          H₁₅ = H₁₄ × P₁₅
          H₁₆ = H₁₅ × P₁₆

    computeProof :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
                    → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')
    computeProof Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop
      with ¿ H₃ ¿
    ... | no ¬hs = failure (genErrors ¬hs)
    ... | yes hs
      with dec-P₄
    ... | no ¬p₄ = failure (genErrors ¬p₄)
    ... | yes p₄
      with dec-P₅
    ... | no ¬p₅ = failure (genErrors ¬p₅)
    ... | yes p₅
      with dec-P₆
    ... | no ¬p₆ = failure (genErrors ¬p₆)
    ... | yes p₆
      with dec-P₇
    ... | no ¬p₇ = failure (genErrors ¬p₇)
    ... | yes p₇
      with dec-P₈
    ... | no ¬p₈ = failure (genErrors ¬p₈)
    ... | yes p₈
      with dec-P₉
    ... | no ¬p₉ = failure (genErrors ¬p₉)
    ... | yes p₉
      with dec-P₁₀
    ... | no ¬p₁₀ = failure (genErrors ¬p₁₀)
    ... | yes p₁₀
      with dec-P₁₁
    ... | no ¬p₁₁ = failure (genErrors ¬p₁₁)
    ... | yes p₁₁
      with dec-P₁₂
    ... | no ¬p₁₂ = failure (genErrors ¬p₁₂)
    ... | yes p₁₂
      with dec-P₁₃
    ... | no ¬p₁₃ = failure (genErrors ¬p₁₃)
    ... | yes p₁₃
      with dec-P₁₄
    ... | no ¬p₁₄ = failure (genErrors ¬p₁₄)
    ... | yes p₁₄
      with dec-P₁₅
    ... | no ¬p₁₅ = failure (genErrors ¬p₁₅)
    ... | yes p₁₅
      with dec-P₁₆
    ... | no ¬p₁₆ = failure (genErrors ¬p₁₆)
    ... | yes p₁₆
      with computeProof-UTXOS Γ tt txTop
    ... | failure es = failure es
    ... | success (tt , utxosProof) = success (s₁ , UTXO-step premises)
      where
      s₁ : UTxOState
      s₁ = if IsValidFlagOf txTop
        then ⟦ (utxo ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , fees + TxFeesOf txTop , donations + DonationsOf txTop ⟧ᵘ
        else ⟦ utxo ∣ (CollateralInputsOf txTop) ᶜ , fees + cbalance (utxo ∣ CollateralInputsOf txTop) , donations ⟧ᵘ

      -- assemblePremises : H₃ → H₄ → H₁₆ → (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt) → UTXO-Premises Γ txTop s₁ utxo fees donations
      -- assemblePremises ( h₁ , h₂ , h₃ ) h₄ (h₅ , h₆ , h₇ , h₈ , h₉ , h₁₀ , h₁₁ , h₁₂ , h₁₃ , h₁₄ , h₁₅ , h₁₆ ) utxosProof =
      --   h₁ , h₂ , h₃ , h₄ , h₅ , h₆ , h₇ , h₈ , h₉ , h₁₀ , h₁₁ , h₁₂ , h₁₃ , h₁₄ , h₁₅ , h₁₆ , utxosProof , refl

      assemblePremises' : H₃ → P₄ → P₅ → P₆ → P₇ → P₈ → P₉ → P₁₀ → P₁₁ → P₁₂ → P₁₃ → P₁₄ → P₁₅ → P₁₆
        → (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt) → UTXO-Premises Γ txTop s₁ utxo fees donations
      assemblePremises' ( h₁ , h₂ , h₃ ) h₄ h₅ h₆ h₇ h₈ h₉ h₁₀ h₁₁ h₁₂ h₁₃ h₁₄ h₁₅ h₁₆ utxosProof =
        h₁ , h₂ , h₃ , h₄ , h₅ , h₆ , h₇ , h₈ , h₉ , h₁₀ , h₁₁ , h₁₂ , h₁₃ , h₁₄ , h₁₅ , h₁₆ , utxosProof , refl

      premises : UTXO-Premises Γ txTop s₁ utxo fees donations
      premises = assemblePremises' hs p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ utxosProof


    completeness :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) (s' : UTxOState)
                    → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
                    → (map proj₁ $ computeProof Γ s txTop) ≡ success s'
    completeness Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop s' (UTXO prem)
      with prem
    ... | ( P₁ , P₂ , P₃ , P₄ , P₅ , P₆ , P₇ , P₈ , P₉ , P₁₀ , P₁₁ , P₁₂ , P₁₃ , P₁₄ , P₁₅ , P₁₆ , utxosProof , eqS₁ )
      with ¿ H₃ ¿
    ... | no ¬hs = ⊥-elim (¬hs (P₁ , P₂ , P₃))
    ... | yes _
      with dec-P₄
    ... | no ¬p₄ = ⊥-elim (¬p₄ P₄)
    ... | yes _
      with dec-P₅
    ... | no ¬p₅ = ⊥-elim (¬p₅ P₅)
    ... | yes _
      with dec-P₆
    ... | no ¬p₆ = ⊥-elim (¬p₆ P₆)
    ... | yes _
      with dec-P₇
    ... | no ¬p₇ = ⊥-elim (¬p₇ P₇)
    ... | yes _
      with dec-P₈
    ... | no ¬p₈ = ⊥-elim (¬p₈ P₈)
    ... | yes _
      with dec-P₉
    ... | no ¬p₉ = ⊥-elim (¬p₉ P₉)
    ... | yes _
      with dec-P₁₀
    ... | no ¬p₁₀ = ⊥-elim (¬p₁₀ P₁₀)
    ... | yes _
      with dec-P₁₁
    ... | no ¬p₁₁ = ⊥-elim (¬p₁₁ P₁₁)
    ... | yes _
      with dec-P₁₂
    ... | no ¬p₁₂ = ⊥-elim (¬p₁₂ P₁₂)
    ... | yes _
      with dec-P₁₃
    ... | no ¬p₁₃ = ⊥-elim (¬p₁₃ P₁₃)
    ... | yes _
      with dec-P₁₄
    ... | no ¬p₁₄ = ⊥-elim (¬p₁₄ P₁₄)
    ... | yes _
      with dec-P₁₅
    ... | no ¬p₁₅ = ⊥-elim (¬p₁₅ P₁₅)
    ... | yes _
      with dec-P₁₆
    ... | no ¬p₁₆ = ⊥-elim (¬p₁₆ P₁₆)
    ... | yes _
      with computeProof-UTXOS Γ tt txTop | completeness-UTXOS Γ tt txTop tt utxosProof
    ... | failure es | ()
    ... | success (tt , _) | refl rewrite sym eqS₁ = refl

