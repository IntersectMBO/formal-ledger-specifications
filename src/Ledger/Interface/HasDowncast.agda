{-# OPTIONS --safe #-}

open import Ledger.Transaction
open import Ledger.Abstract
open import Ledger.Types.GovStructure

module Ledger.Interface.HasDowncast
  (txs : _) (open TransactionStructure txs)
  (gs : _) (open GovStructure gs using (DocHash))
  where
open import Prelude
open import Ledger.Prelude

record HasDowncast {a b} (A : Set a) (B : Set b) : Type (a ⊔ˡ b) where
  field _↓ : A → B

open HasDowncast ⦃...⦄ public

instance 

  HasDowncast-HashProtected-PParams : HasDowncast (HashProtected PParams) PParams
  HasDowncast-HashProtected-PParams ._↓ = proj₁

  HasDowncast-HashProtected-MaybeScriptHash : HasDowncast (HashProtected (DocHash × Maybe ScriptHash)) (Maybe ScriptHash)
  HasDowncast-HashProtected-MaybeScriptHash ._↓ = proj₂ ∘ proj₁ 

  HasDowncast-A⇀B-RelAB : ∀ {A}{B} → HasDowncast (A ⇀ B) (Rel A B)
  HasDowncast-A⇀B-RelAB ._↓ = proj₁ 

    
