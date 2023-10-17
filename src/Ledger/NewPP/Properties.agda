{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.NewPP.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.PPUp txs
open import Ledger.NewPP txs

instance
  Computational-NEWPP : Computational _⊢_⇀⦇_,NEWPP⦈_
  Computational-NEWPP = record {M} where module M Γ s (open NewPParamState s) where
    computeProof = λ where
      nothing → just (_ , NEWPP-Reject)
      (just upd) → let newpp = applyUpdate pparams upd in
        case ¿ viablePParams newpp ¿ of λ where
          (yes p) → just (_ , NEWPP-Accept p)
          (no _)  → nothing

    completeness : _
    completeness sig s' h with sig | h
    ... | nothing  | NEWPP-Reject   = refl
    ... | just upd | NEWPP-Accept p
      rewrite let newpp = applyUpdate pparams upd in
              dec-yes (¿ viablePParams newpp ¿) p .proj₂
              = refl
