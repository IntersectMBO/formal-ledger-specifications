-- File: src/Ledger/Dijkstra/Specification/Utxo/Properties/SmallTacticImpossible.agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Utxo.Properties.SmallTacticImpossible
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Prelude
open import Ledger.Prelude

open import Ledger.Dijkstra.Specification.Utxo txs abs hiding ( _⊢_⇀⦇_,UTXO⦈_ ; UTXO )
open import stdlib-meta.Tactic.GenError using (genErrors)

open PParams

private variable
  Γ : UTxOEnv
  txTop : TopLevelTx
  utxo : UTxO
  fees : Fees
  donations : Donations

open UTxOEnv

data _⊢_⇀⦇_,UTXO⦈_ : UTxOEnv → UTxOState → TopLevelTx → UTxOState → Type where

  UTXO :

    ∙ (SpendInputsOf txTop ≢ ∅)
    ∙ (inInterval (SlotOf Γ) (ValidIntervalOf txTop))
    ∙ (minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop)
    ∙ (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ))
      ────────────────────────────────
      Γ ⊢ ⟦ utxo , fees , donations ⟧ ⇀⦇ txTop ,UTXO⦈ ⟦ (utxo ∣ SpendInputsOf txTop ᶜ) ∪ˡ outs txTop , fees + TxFeesOf txTop , donations + DonationsOf txTop ⟧


unquoteDecl UTXO-prems = genPremises UTXO-prems (quote UTXO)
-- ^ this type-checks, but I can't seem to use it below,
-- e.g., in an expression like `¿ UTXO-prems {txTop} ... ¿`
-- so...
--   ...define premise function "by hand":
UTXO-premises : UTxOEnv → TopLevelTx → UTxO → Type
UTXO-premises Γ txTop utxo =
  (SpendInputsOf txTop ≢ ∅)
  × (inInterval (SlotOf Γ) (ValidIntervalOf txTop))
  × (minfee (PParamsOf Γ) txTop utxo ≤ TxFeesOf txTop)
  × (consumed txTop (DepositsChangeOf Γ) (UTxOOf Γ) ≡ produced txTop (DepositsChangeOf Γ))

instance
  Computational-UTXO : Computational _⊢_⇀⦇_,UTXO⦈_ String
  Computational-UTXO = MkComputational computeProof completeness
    where
    computeProof :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx)
      → ComputationResult String (∃[ s' ] Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s')
    computeProof Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop with ¿ UTXO-premises Γ txTop utxo ¿
    ... | no ¬h = failure (genErrors ¬h)
    ... | yes h = ?

    completeness :  (Γ : UTxOEnv) (s : UTxOState) (txTop : TopLevelTx) (s' : UTxOState)
                    → Γ ⊢ s ⇀⦇ txTop ,UTXO⦈ s'
                    → (map proj₁ $ computeProof Γ s txTop) ≡ success s'
    completeness Γ (⟦ utxo , fees , donations ⟧ᵘ) txTop s' (UTXO prem) = {!!}


