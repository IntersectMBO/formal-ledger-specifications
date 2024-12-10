\section{Structured Contracts}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Data.Nat.Properties using (+-0-monoid)

import Data.List as L
open import Ledger.Prelude                         hiding (lookup ; update ; isMagma ; isEquivalence) renaming (TotalMap to _⇒_)
open _⇒_
open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.Ledger
open import Ledger.Utxo


module ScriptVerification.NFTExample
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  (PolicyId AssetName : Type)
  (size : (PolicyId × AssetName) ⇒ ℕ → ℕ)
  (specialPolicy : PolicyId)
  (specialAsset : AssetName)
  (X : ℙ (PolicyId × AssetName))
  (⋁A : isMaximal X)
  ⦃ DecEq-PolicyId  : DecEq PolicyId ⦄
  ⦃ DecEq-AssetName : DecEq AssetName ⦄
  ⦃ DecEq-Tot : DecEq ((PolicyId × AssetName) ⇒ ℕ) ⦄
  (Dec-lookup≤ : ∀ {u v : (PolicyId × AssetName) ⇒ ℕ}
    → (∀ {a p q} → lookup u (a , p) ≤ lookup v (a , q)) ⁇)
  where 

open import Ledger.Ledger txs abs
open import Ledger.ScriptValidation txs abs
open import Ledger.Utxo txs abs
open import Ledger.StructuredContracts txs abs
open import Ledger.TokenAlgebra.ValueSet PolicyId AssetName 

instance
  _ = Value-TokenAlgebra Dec-lookup≤ specialPolicy specialAsset size 

getIOValues : List (TxIn × TxOut) → List Value
getIOValues = map (getValue ∘ proj₂)

getUTxO : Ledger.Ledger.LState txs abs → List (TxIn × TxOut)
getUTxO l = setToList (proj₁ ((l .LState.utxoSt) .UTxOState.utxo))

-- getNFT : Value → AssetId → Quantity
-- getNFT = {! lookup  !}

-- nftAssumptions : AssetId → Ledger.Ledger.LEnv txs abs → Ledger.Ledger.LState txs abs → Tx → Type
-- nftAssumptions m e l tx = (getNFT (sumᵛ (getIOValues (getUTxO l))) m ≤ 1) × (0 ≤ getNFT (sumᵛ (getIOValues (getUTxO l))) m)

module _
  (myNFTAID : AssetId) 
  -- extra assumptions that can be used to prove uniqueness
  (extraNFTAssumptions : Ledger.Ledger.LEnv txs abs → Ledger.Ledger.LState txs abs → Tx → Type)

  where






-- myExtraAssmp : Ledger.Ledger.LEnv txs abs → Ledger.Ledger.LState txs abs → Tx → Type
-- myExtraAssmp l e tx = (nftAssumptions l e tx) × (extraNFTAssumptions l e tx)

-- πN : Ledger.Ledger.LState txs abs → Maybe Value
-- πN l = just (sumᵛ (getIOValues (getUTxO l)))

-- private variable
--   txi : TxInfo
--   v v′ : Value


-- data _⊢_⇀⦇_,NFT⦈_ : SSRel ⊤ Value TxInfo where
--   UpdateNFTTotal :
--     let 
--       v′ : Value
--       v′ = v + filterNFT (txi .TxInfo.mint)
--     in
--     ∙ (inject 0 ≤ᵗ v′)
--     ∙ (v′ ≤ᵗ myNFT)
--       ────────────────────────────────
--     _ ⊢ v ⇀⦇ txi ,NFT⦈ v′

-- _ : StrucSimulation Value TxInfo _⊢_⇀⦇_,NFT⦈_
-- _ = record 
--   { πˢ = πN  
--   ; πⁱ = id 
--   ; extraAssmp = myExtraAssmp
--   ; simulates = {!   !} }
--   where
--   open ≡-Reasoning
  


\end{code}
