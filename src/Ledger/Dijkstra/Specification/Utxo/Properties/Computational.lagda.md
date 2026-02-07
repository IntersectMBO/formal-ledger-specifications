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

  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = MkComputational computeProof completeness
    where
    open Computational Computational-UTXOS renaming  ( computeProof to computeProof-UTXOS
                                                     ; completeness to completeness-UTXOS)

    -- Premises 1, 2 and 3 are simple enough to bundle together, and they're all decidable.
    P123 : UTxOEnv → TopLevelTx → UTxO → Fees → Donations → Type
    P123 Γ txTop utxo fees donations =  SpendInputsOf txTop ≢ ∅
                                        × inInterval (SlotOf Γ) (ValidIntervalOf txTop)
                                        × minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop
    -- p₄
    ConsumedProduced : UTxOEnv → TopLevelTx → Type
    ConsumedProduced Γ txTop = consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ)
    dec-ConsumedProduced : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (ConsumedProduced Γ txTop)
    dec-ConsumedProduced Γ txTop = consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≟ produced txTop (DepositsChangeOf Γ)
    -- p₅
    MaxTxSize : UTxOEnv → TopLevelTx → Type
    MaxTxSize Γ txTop = SizeOf txTop ≤ maxTxSize (PParamsOf Γ)
    dec-MaxTxSize : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (MaxTxSize Γ txTop)
    dec-MaxTxSize Γ txTop = SizeOf txTop ≤? maxTxSize (PParamsOf Γ)
    -- p₆
    MaxRefScriptSize : UTxOEnv → TopLevelTx → Type
    MaxRefScriptSize  Γ txTop = refScriptsSize txTop (UTxOOf Γ) ≤ (PParamsOf Γ) .maxRefScriptSizePerTx
    dec-MaxRefScriptSize : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (MaxRefScriptSize Γ txTop)
    dec-MaxRefScriptSize Γ txTop = refScriptsSize txTop (UTxOOf Γ) ≤? (PParamsOf Γ) .maxRefScriptSizePerTx
    -- p₇
    SpendInputsInDom : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    SpendInputsInDom Γ txTop = allSpendInputs txTop ⊆ dom (UTxOOf Γ)
    dec-SpendInputsInDom : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (SpendInputsInDom Γ txTop)
    dec-SpendInputsInDom Γ txTop = ¿ SpendInputsInDom Γ txTop ¿
    -- p₈
    RefInputsInDom : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    RefInputsInDom Γ txTop = allReferenceInputs txTop ⊆ dom (UTxOOf Γ)
    dec-RefInputsInDom : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (RefInputsInDom Γ txTop)
    dec-RefInputsInDom Γ txTop = ¿ RefInputsInDom Γ txTop ¿
    -- p₉
    NoOverlappingSpends : (txTop : TopLevelTx) → Type
    NoOverlappingSpends txTop = NoOverlappingSpendInputs txTop
    dec-NoOverlappingSpends : (txTop : TopLevelTx) → Dec (NoOverlappingSpends txTop)
    dec-NoOverlappingSpends txTop = ¿ NoOverlappingSpends txTop ¿
    -- p₁₀
    ReqGuards : (txTop : TopLevelTx) → Type
    ReqGuards txTop = requiredGuardsInTopLevel txTop (SubTransactionsOf txTop)
    dec-ReqGuards : (txTop : TopLevelTx) → Dec (ReqGuards txTop)
    dec-ReqGuards txTop = ¿ ReqGuards txTop ¿
    -- p₁₁: we break this up because implication is a frequent source of trouble.
    -- ∙ p₁₁ antecendent
    RedeemersNonEmpty : (txTop : TopLevelTx) → Type
    RedeemersNonEmpty txTop = RedeemersOf txTop ˢ ≢ ∅
    dec-RedeemersNonEmpty : (txTop : TopLevelTx) → Dec (RedeemersNonEmpty txTop)
    dec-RedeemersNonEmpty txTop = ¿ RedeemersNonEmpty txTop ¿
    -- ∙ p₁₁ consequent
    CollateralOK : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    CollateralOK Γ txTop = collateralCheck (PParamsOf Γ) txTop (UTxOOf Γ)
    dec-CollateralOK : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (CollateralOK Γ txTop)
    dec-CollateralOK Γ txTop = ¿ CollateralOK Γ txTop ¿
    -- ∙ p₁₁
    CollateralImp : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    CollateralImp Γ txTop = RedeemersNonEmpty txTop → CollateralOK Γ txTop
    dec-CollateralImp : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (CollateralImp Γ txTop)
    dec-CollateralImp Γ txTop with dec-RedeemersNonEmpty txTop
    ... | no ¬A  = yes (λ a → ⊥-elim (¬A a))
    ... | yes a  with dec-CollateralOK Γ txTop
    ...   | yes b  = yes (λ _ → b)
    ...   | no ¬b  = no  (λ f → ¬b (f a))
    -- p₁₂
    MintedZero : (txTop : TopLevelTx) → Type
    MintedZero txTop = allMintedCoin txTop ≡ 0
    dec-MintedZero : (txTop : TopLevelTx) → Dec (MintedZero txTop)
    dec-MintedZero txTop = ¿ MintedZero txTop ¿
    -- p₁₃
    OutValueBounds : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    OutValueBounds Γ txTop =
      ∀[ (_ , o) ∈ ∣ TxOutsOf txTop ∣ ]
        ( (inject ((160 + utxoEntrySize o) * coinsPerUTxOByte (PParamsOf Γ)) ≤ᵗ txOutToValue o)
          × (serializedSize (txOutToValue o) ≤ maxValSize (PParamsOf Γ)))
    dec-OutValueBounds : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (OutValueBounds Γ txTop)
    dec-OutValueBounds Γ txTop = ¿ OutValueBounds Γ txTop ¿
    -- p₁₄
    OutAddrBounds : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    OutAddrBounds Γ txTop =
      ∀[ (a , _) ∈ range (TxOutsOf txTop) ]
        (Sum.All (const ⊤) (λ a → AttrSizeOf a ≤ 64)) a × (netId a ≡ NetworkId)
    dec-OutAddrBounds : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (OutAddrBounds Γ txTop)
    dec-OutAddrBounds Γ txTop = ¿ OutAddrBounds Γ txTop ¿
    -- p₁₅
    WithdrawalsNetId : (txTop : TopLevelTx) → Type
    WithdrawalsNetId txTop = ∀[ a ∈ dom (WithdrawalsOf txTop)] NetworkIdOf a ≡ NetworkId
    dec-WithdrawalsNetId : (txTop : TopLevelTx) → Dec (WithdrawalsNetId txTop)
    dec-WithdrawalsNetId txTop = ¿ WithdrawalsNetId txTop ¿
    -- p₁₆
    MaybeNetIdOK : (txTop : TopLevelTx) → Type
    MaybeNetIdOK txTop = MaybeNetworkIdOf txTop ~ just NetworkId
    dec-MaybeNetIdOK : (txTop : TopLevelTx) → Dec (MaybeNetIdOK txTop)
    dec-MaybeNetIdOK txTop = ¿ MaybeNetIdOK txTop ¿
    -- p₁₇
    TreasuryOK : (Γ : UTxOEnv) (txTop : TopLevelTx) → Type
    TreasuryOK Γ txTop = CurrentTreasuryOf txTop ~ just (TreasuryOf Γ)
    dec-TreasuryOK : (Γ : UTxOEnv) (txTop : TopLevelTx) → Dec (TreasuryOK Γ txTop)
    dec-TreasuryOK Γ txTop = ¿ TreasuryOK Γ txTop ¿

    --------------------------------------------------------------------------
    -- computeProof for UTXO
    --------------------------------------------------------------------------

    computeProof : (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')

    computeProof Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop
      with ¿ P123 Γ txTop utxo fees donations ¿
    ... | no ¬hs = failure (genErrors ¬hs)
    ... | yes hs
      with dec-ConsumedProduced Γ txTop
    ... | no ¬p₄ = failure (genErrors ¬p₄)
    ... | yes p₄
      with dec-MaxTxSize Γ txTop
    ... | no ¬p₅ = failure (genErrors ¬p₅)
    ... | yes p₅
      with dec-MaxRefScriptSize Γ txTop
    ... | no ¬p₆ = failure (genErrors ¬p₆)
    ... | yes p₆
      with dec-SpendInputsInDom Γ txTop
    ... | no ¬p₇ = failure (genErrors ¬p₇)
    ... | yes p₇
      with dec-RefInputsInDom Γ txTop
    ... | no ¬p₈ = failure (genErrors ¬p₈)
    ... | yes p₈
      with dec-NoOverlappingSpends txTop
    ... | no ¬p₉ = failure (genErrors ¬p₉)
    ... | yes p₉
      with dec-ReqGuards txTop
    ... | no ¬p₁₀ = failure (genErrors ¬p₁₀)
    ... | yes p₁₀
      with dec-CollateralImp Γ txTop
    ... | no ¬p₁₁ = failure (genErrors ¬p₁₁)
    ... | yes p₁₁
      with dec-MintedZero txTop
    ... | no ¬p₁₂ = failure (genErrors ¬p₁₂)
    ... | yes p₁₂
      with dec-OutValueBounds Γ txTop
    ... | no ¬p₁₃ = failure (genErrors ¬p₁₃)
    ... | yes p₁₃
      with dec-OutAddrBounds Γ txTop
    ... | no ¬p₁₄ = failure (genErrors ¬p₁₄)
    ... | yes p₁₄
      with dec-WithdrawalsNetId txTop
    ... | no ¬p₁₅ = failure (genErrors ¬p₁₅)
    ... | yes p₁₅
      with dec-MaybeNetIdOK txTop
    ... | no ¬p₁₆ = failure (genErrors ¬p₁₆)
    ... | yes p₁₆
      with dec-TreasuryOK Γ txTop
    ... | no ¬p₁₇ = failure (genErrors ¬p₁₇)
    ... | yes p₁₇
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

        assemblePremises :  P123 Γ txTop utxo fees donations
                            → ConsumedProduced     Γ txTop
                            → MaxTxSize            Γ txTop
                            → MaxRefScriptSize     Γ txTop
                            → SpendInputsInDom     Γ txTop
                            → RefInputsInDom       Γ txTop
                            → NoOverlappingSpends    txTop
                            → ReqGuards              txTop
                            → CollateralImp        Γ txTop
                            → MintedZero             txTop
                            → OutValueBounds       Γ txTop
                            → OutAddrBounds        Γ txTop
                            → WithdrawalsNetId       txTop
                            → MaybeNetIdOK           txTop
                            → TreasuryOK           Γ txTop
                            → (Γ ⊢ tt ⇀⦇ txTop ,UTXOS⦈ tt)
                            → UTXO-Premises Γ txTop s₁ utxo fees donations

        assemblePremises (p₁ , p₂ , p₃) p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ utxosProof =
          p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , utxosProof , refl

        premises : UTXO-Premises Γ txTop s₁ utxo fees donations
        premises = assemblePremises hs p₄ p₅ p₆ p₇ p₈ p₉ p₁₀ p₁₁ p₁₂ p₁₃ p₁₄ p₁₅ p₁₆ p₁₇ utxosProof


    --------------------------------------------------------------------------
    -- completeness (mirrors computeProof)
    --------------------------------------------------------------------------

    completeness : (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) (s' : UTxOState)
      → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s' → (map proj₁ $ computeProof Γ s txTop) ≡ success s'

    completeness Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop s' (UTXO prem)
      with prem
    ... | ( p₁ , p₂ , p₃ , p₄ , p₅ , p₆ , p₇ , p₈ , p₉ , p₁₀ , p₁₁ , p₁₂ , p₁₃ , p₁₄ , p₁₅ , p₁₆ , p₁₇ , utxosProof , eqS₁ )
      with ¿ P123 Γ txTop utxo fees donations ¿
    ... | no ¬hs = ⊥-elim (¬hs (p₁ , p₂ , p₃))
    ... | yes _
      with dec-ConsumedProduced Γ txTop
    ... | no ¬p₄ = ⊥-elim (¬p₄ p₄)
    ... | yes _
      with dec-MaxTxSize Γ txTop
    ... | no ¬p₅ = ⊥-elim (¬p₅ p₅)
    ... | yes _
      with dec-MaxRefScriptSize Γ txTop
    ... | no ¬p₆ = ⊥-elim (¬p₆ p₆)
    ... | yes _
      with dec-SpendInputsInDom Γ txTop
    ... | no ¬p₇ = ⊥-elim (¬p₇ p₇)
    ... | yes _
      with dec-RefInputsInDom Γ txTop
    ... | no ¬p₈ = ⊥-elim (¬p₈ p₈)
    ... | yes _
      with dec-NoOverlappingSpends txTop
    ... | no ¬p₉ = ⊥-elim (¬p₉ p₉)
    ... | yes _
      with dec-ReqGuards txTop
    ... | no ¬p₁₀ = ⊥-elim (¬p₁₀ p₁₀)
    ... | yes _
      with dec-CollateralImp Γ txTop
    ... | no ¬p₁₁ = ⊥-elim (¬p₁₁ p₁₁)
    ... | yes _
      with dec-MintedZero txTop
    ... | no ¬p₁₂ = ⊥-elim (¬p₁₂ p₁₂)
    ... | yes _
      with dec-OutValueBounds Γ txTop
    ... | no ¬p₁₃ = ⊥-elim (¬p₁₃ p₁₃)
    ... | yes _
      with dec-OutAddrBounds Γ txTop
    ... | no ¬p₁₄ = ⊥-elim (¬p₁₄ p₁₄)
    ... | yes _
      with dec-WithdrawalsNetId txTop
    ... | no ¬p₁₅ = ⊥-elim (¬p₁₅ p₁₅)
    ... | yes _
      with dec-MaybeNetIdOK txTop
    ... | no ¬p₁₆ = ⊥-elim (¬p₁₆ p₁₆)
    ... | yes _
      with dec-TreasuryOK Γ txTop
    ... | no ¬p₁₇ = ⊥-elim (¬p₁₇ p₁₇)
    ... | yes _
      with computeProof-UTXOS Γ tt txTop | completeness-UTXOS Γ tt txTop tt utxosProof
    ... | failure es | ()
    ... | success (tt , _) | refl rewrite sym eqS₁ = refl
```
