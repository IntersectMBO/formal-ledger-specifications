\section{Structured Contracts}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

open import Ledger.Prelude; open Equivalence
open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.TokenAlgebra 
open import Ledger.TokenAlgebra.ValueSet

module Ledger.StructuredContracts
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Ledger txs abs
open import Ledger.ScriptValidation txs abs
open import Ledger.Utxo txs abs

-- open import Prelude hiding (id; _~ˢ_; _~ᵉ_)

SSRel : Type → Type → Type → Type₁
SSRel Env State Input = Env → State → Input → State → Type

record StrucSimulation S I (_⊢_⇀⦇_,STRUC⦈_ : SSRel ⊤ S I) : Type where
  field
    πˢ : LState → Maybe S
    πⁱ : TxInfo → I

  _~ˢ_ : LState → S → Type
  u ~ˢ s = πˢ u ≡ just s

    -- only for PlutusV3
  _~ᵉ_ : LEnv × Tx × LState → ⊤ × I → Type
  _~ᵉ_ = λ (le , tx , u) (tt , i) → πⁱ (txInfo PlutusV3 (le .LEnv.pparams) (u .LState.utxoSt .UTxOState.utxo) tx)  ≡ i

  field
    simulates : ∀ Γ Γ′ s u tx i′ u′ →
      ∙ Γ ⊢ u ⇀⦇ tx ,LEDGER⦈ u′
      ∙ (Γ , tx , u) ~ᵉ (Γ′ , i′)
      ∙ u ~ˢ s
      ────────────────────────────────
        ∃ λ s′ → u′ ~ˢ s′
               × Γ′ ⊢ s ⇀⦇ i′ ,STRUC⦈ s′


private variable
  v : Value
  txi : TxInfo
-- assume unspent origin for non-fungibility
  myNFTRef : TxIn

-- asset ID of NFT 
-- minting policy should require spending myNFTRef and minting quantity 1 with some specific TokenName
-- myNFTAssetId : AssetId
-- myNFTAssetId = ?

-- singleton NFT Value
myOneNFT : Value
myOneNFT = ?

-- get only tokens under policy in myNFTAssetId
filterNFT : Value → Value
filterNFT = ?
  
-- sum up total amount of tokens under policy in myNFTAssetId
-- return Nothing if (sum contains more than one token) OR (if sum contains more than 0 tokens AND myNFTRef is still in the UTxO set)
πN : LState → Maybe Value
πN = ?

data _⊢_⇀⦇_,NFT⦈_ : SSRel ⊤ Value TxInfo where
  UpdateNFTTotal :
    let
      i : Value
      i  = filterNFT (txi .TxInfo.mint)
      v′ : Value
      v′ = v + i
    in

    (v′ ≤ᵗ myOneNFT)
      ────────────────────────────────
    _ ⊢ v ⇀⦇ txi ,NFT⦈ v′

_ : StrucSimulation Value TxInfo _⊢_⇀⦇_,NFT⦈_
_ = record { πˢ = πN  ; πⁱ = id ; simulates = ? }
  where
  open ≡-Reasoning
  


\end{code}
