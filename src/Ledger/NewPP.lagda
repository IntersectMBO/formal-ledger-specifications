\section{Protocol Parameters Update}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.NewPP (txs : _) (open TransactionStructure txs) where

open import Ledger.PPUp txs

record NewPParamEnv : Set where
--  field
\end{code}
\begin{figure*}[h]
\begin{code}
record NewPParamState : Set where
  constructor ⟦_,_⟧ⁿᵖ
  field pparams  : PParams
        ppup     : PPUpdateState

updatePPUp : PParams → PPUpdateState → PPUpdateState
updatePPUp pparams record { fpup = fpup }
  with allᵇ (isViableUpdate? pparams) (range fpup)
... | false  = record { pup = ∅     ; fpup = ∅ }
... | true   = record { pup = fpup  ; fpup = ∅ }

votedValue : ProposedPPUpdates → PParams → ℕ → Maybe PParamsUpdate
votedValue pup pparams quorum =
  case any? (λ u → lengthˢ (pup ↾ fromList [ u ]) ≥? quorum) (range pup) of λ where
    (no  _)        → nothing
    (yes (u , _))  → just u
\end{code}
\caption{Types and functions for the NEWPP transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : NewPParamEnv
  s s' : NewPParamState
  upd : PParamsUpdate

data _⊢_⇀⦇_,NEWPP⦈_ : NewPParamEnv → NewPParamState → Maybe PParamsUpdate → NewPParamState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWPP-Accept : ∀ {Γ} → let open NewPParamState s; newpp = applyUpdate pparams upd in
    viablePParams newpp
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ just upd ,NEWPP⦈ ⟦ newpp , updatePPUp newpp ppup ⟧ⁿᵖ

  NEWPP-Reject : ∀ {Γ} →
    Γ ⊢ s ⇀⦇ nothing ,NEWPP⦈ s
\end{code}
\caption{NEWPP transition system}
\end{figure*}
