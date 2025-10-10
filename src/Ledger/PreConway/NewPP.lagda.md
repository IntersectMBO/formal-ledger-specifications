\section{Protocol Parameters Update}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Relation.Nullary.Decidable

open import Ledger.Prelude
open import Ledger.Conway.Specification.Transaction

module Ledger.PreConway.NewPP (txs : _) (open TransactionStructure txs) where

open import Ledger.PreConway.PPUp txs

record NewPParamEnv : Type where
--  field
\end{code}
\begin{figure*}[h]
\begin{AgdaMultiCode}
\begin{code}
record NewPParamState : Type where
  field
    pparams  : PParams
    ppup     : PPUpdateState

updatePPUp : PParams → PPUpdateState → PPUpdateState
updatePPUp pparams record { fpup = fpup }
  with allᵇ ¿ isViableUpdate pparams ¿¹ (range fpup)
... | false  = record { pup = ∅ᵐ    ; fpup = ∅ᵐ }
... | true   = record { pup = fpup  ; fpup = ∅ᵐ }

votedValue : ProposedPPUpdates → PParams → ℕ → Maybe PParamsUpdate
votedValue pup pparams quorum =
  case any? (λ u → lengthˢ (pup ∣^ fromList [ u ]) ≥? quorum) (range pup) of
\end{code}
\begin{code}[hide]
    λ  where
\end{code}
\begin{code}
       (no  _)        → nothing
       (yes (u , _))  → just u
\end{code}
\end{AgdaMultiCode}
\caption{Types and functions for the NEWPP transition system}
\end{figure*}
\begin{code}[hide]
instance
  unquoteDecl HasCast-NewPParamState = derive-HasCast
    [ (quote NewPParamState , HasCast-NewPParamState) ]

private variable
  Γ : NewPParamEnv
  s s' : NewPParamState
  upd : PParamsUpdate

data _⊢_⇀⦇_,NEWPP⦈_ : NewPParamEnv → NewPParamState → Maybe PParamsUpdate → NewPParamState → Type where
\end{code}
\begin{figure*}[h]
\begin{code}
  NEWPP-Accept : ∀ {Γ} → let open NewPParamState s; newpp = applyUpdate pparams upd in
    viablePParams newpp
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ just upd ,NEWPP⦈ ⟦ newpp , updatePPUp newpp ppup ⟧

  NEWPP-Reject : ∀ {Γ} →
    Γ ⊢ s ⇀⦇ nothing ,NEWPP⦈ s
\end{code}
\caption{NEWPP transition system}
\end{figure*}
