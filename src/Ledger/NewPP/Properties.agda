

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.NewPP.Properties (txs : _) (open TransactionStructure txs) where

open import Ledger.PPUp txs
open import Ledger.NewPP txs

open Computational ⦃...⦄

instance
  Computational-NEWPP : Computational _⊢_⇀⦇_,NEWPP⦈_
  Computational-NEWPP .computeProof Γ s (just upd) =
    let open NewPParamState s; newpp = applyUpdate pparams upd in
    case ¿ viablePParams newpp ¿ of λ where
      (yes p) → just (_ , NEWPP-Accept p)
      (no _)  → nothing
  Computational-NEWPP .computeProof Γ s nothing = just (_ , NEWPP-Reject)
  Computational-NEWPP .completeness Γ s (just upd) s' (NEWPP-Accept p)
    rewrite (let open NewPParamState s; newpp = applyUpdate pparams upd in
             dec-yes (¿ viablePParams newpp ¿) p .proj₂) = refl
  Computational-NEWPP .completeness Γ s nothing s' NEWPP-Reject = refl
