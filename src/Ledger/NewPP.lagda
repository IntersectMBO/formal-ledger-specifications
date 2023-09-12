\section{Protocol Parameters Update}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Transaction

module Ledger.NewPP (⋯ : _) (open TransactionStructure ⋯) where

open import Ledger.PPUp ⋯

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
  with allᵇ (isViableUpdate? pparams) (range (fpup ˢ))
... | false  = record { pup = ∅ᵐ    ; fpup = ∅ᵐ }
... | true   = record { pup = fpup  ; fpup = ∅ᵐ }

votedValue : ProposedPPUpdates → PParams → ℕ → Maybe PParamsUpdate
votedValue pup pparams quorum =
  case any? (λ u → lengthˢ ((pup ↾ fromList [ u ]) ˢ) ≥? quorum) (range (pup ˢ)) of λ where
    (no  _)        → nothing
    (yes (u , _))  → just u
\end{code}
\caption{Types and functions for the NEWPP transition system}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : NewPParamEnv
  s s' : NewPParamState
  newpp : PParams
  upd : PParamsUpdate

data _⊢_⇀⦇_,NEWPP⦈_ : NewPParamEnv → NewPParamState → Maybe PParamsUpdate → NewPParamState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWPP-Accept : ∀ {Γ} → let open NewPParamState s; newpp = applyUpdate pparams upd in
    viablePParams newpp
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ just upd ,NEWPP⦈ ⟦ newpp , updatePPUp newpp ppup ⟧ⁿᵖ

  NEWPP-Reject : ∀ {Γ} → let open NewPParamState s in
    Γ ⊢ s ⇀⦇ nothing ,NEWPP⦈ ⟦ pparams , updatePPUp newpp ppup ⟧ⁿᵖ
\end{code}
\caption{NEWPP transition system}
\end{figure*}
