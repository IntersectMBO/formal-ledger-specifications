\section{Update Proposal Mechanism}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Agda.Builtin.FromNat
open import Algebra; open import Algebra.Literals
import Data.Product.Properties as ×
import Data.Nat as ℕ; import Data.Nat.Properties as ℕ; import Data.Nat.Literals as ℕ

open import Ledger.Prelude hiding (_*_)
open import Ledger.Transaction

module Ledger.PPUp (txs : _) (open TransactionStructure txs) where

open Semiring Slotʳ using (_*_)
open Semiring-Lit Slotʳ

private variable m n : ℕ

instance _ = ℕ.number
\end{code}
\begin{figure*}[h]
\begin{code}
GenesisDelegation = KeyHash ⇀ (KeyHash × KeyHash)

record PPUpdateState : Set where
  field pup   : ProposedPPUpdates
        fpup  : ProposedPPUpdates

record PPUpdateEnv : Set where
  field slot       : Slot
        pparams    : PParams
        genDelegs  : GenesisDelegation
\end{code}
\caption{PPUP types}
\end{figure*}
\begin{figure*}[h]
\begin{code}
viablePParams : PParams → Set
viablePParams pp = ⊤ -- TODO: block size check

isViableUpdate : PParams → PParamsUpdate → Set
isViableUpdate pp pup with applyUpdate pp pup
... | pp' = pvCanFollow (PParams.pv pp) (PParams.pv pp') × viablePParams pp'
\end{code}
\caption{Definitions for PPUP}
\end{figure*}
\begin{code}[hide]
private variable
  Γ : PPUpdateEnv
  s : PPUpdateState
  e : Epoch
  pup pupˢ fpupˢ : ProposedPPUpdates

instance
  Dec-pvCanFollow : pvCanFollow ⁇²
  Dec-pvCanFollow {(m , n)} {pv} .dec with pv ≟ (m + 1 , 0) | pv ≟ (m , n + 1)
  ... | no ¬p    | no ¬p₁   = no $ λ where canFollowMajor → ¬p  refl
                                           canFollowMinor → ¬p₁ refl
  ... | no ¬p    | yes refl = yes canFollowMinor
  ... | yes refl | no ¬p    = yes canFollowMajor
  ... | yes refl | yes p    = ⊥-elim $ ℕ.m+1+n≢m m $ ×.×-≡,≡←≡ p .proj₁

data _⊢_⇀⦇_,PPUP⦈_ : PPUpdateEnv → PPUpdateState → Maybe Update → PPUpdateState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  PPUpdateEmpty : Γ ⊢ s ⇀⦇ nothing ,PPUP⦈ s

  PPUpdateCurrent : let open PPUpdateEnv Γ in
    dom pup ⊆ dom genDelegs
    → All (isViableUpdate pparams) (range pup)
    → slot + (2 * StabilityWindow) < firstSlot (sucᵉ (epoch slot))
    → epoch slot ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pup ∪ˡ pupˢ ; fpup = fpupˢ }

  PPUpdateFuture : let open PPUpdateEnv Γ in
    dom pup ⊆ dom genDelegs
    → All (isViableUpdate pparams) (range pup)
    → firstSlot (sucᵉ (epoch slot)) ≤ slot + (2 * StabilityWindow)
    → sucᵉ (epoch slot) ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pupˢ ; fpup = pup ∪ˡ fpupˢ }
\end{code}
\caption{PPUP inference rules}
\end{figure*}
