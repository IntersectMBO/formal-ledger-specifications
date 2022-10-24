\section{Update Proposal Mechanism}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Ledger.Transaction

module Ledger.PPUp (Slot : Set) (txs : TransactionStructure) where
open import Prelude hiding (_≥_)
open import Ledger.Prelude hiding (_≥_)

open TransactionStructure txs

open import Ledger.PParams Epoch
open import Relation.Binary
open import Algebra
import Data.Nat as ℕ

module _ (epoch : Slot → Epoch) (firstSlot : Epoch → Slot) (_<_ : Slot → Slot → Set)
         (_+_ : Slot → Slot → Slot) (_*_ : Slot → Slot → Slot) (-_ : Slot → Slot) (0e : Slot) (1e : Slot)
         (Slot-STO : IsStrictTotalOrder _≡_ _<_) (Slot-Ring : IsRing _≡_ _+_ _*_ -_ 0e 1e)
         (StabilityWindow : Slot) (sucᵉ : Epoch → Epoch) where
\end{code}
\begin{code}
  GenesisDelegation = KeyHash ↛ (KeyHash × KeyHash)

  record PPUpdateState : Set where
    field pup  : ProposedPPUpdates
          fpup : ProposedPPUpdates

  record PPUpdateEnv : Set where
    field slot      : Slot
          pp        : PParams
          genDelegs : GenesisDelegation

  data pvCanFollow : ProtVer → ProtVer → Set where
    canFollowMajor : ∀ {m n} → pvCanFollow (m , n) (m ℕ.+ 1 , 0)
    canFollowMinor : ∀ {m n} → pvCanFollow (m , n) (m , n ℕ.+ 1)
\end{code}
\begin{code}[hide]
  private variable
    Γ : PPUpdateEnv
    s s' : PPUpdateState
    e : Epoch
    pup pupˢ fpupˢ : ProposedPPUpdates

  _≥_ : Slot → Slot → Set
  _≥_ = ¬_ ∘₂ _<_

  data _⊢_⇀⦇_,PPUP⦈_ : PPUpdateEnv → PPUpdateState → Maybe Update → PPUpdateState → Set where
\end{code}
\begin{code}
    PPUpdateEmpty : Γ ⊢ s ⇀⦇ nothing ,PPUP⦈ s

    PPUpdateCurrent : let open PPUpdateEnv Γ in
        dom (pup ˢ) ⊆ dom (genDelegs ˢ)
        → All (λ ps → pvCanFollow (PParams.pv pp) (PParams.pv (applyUpdate pp ps))) (range (pup ˢ))
        → slot < ((firstSlot (sucᵉ (epoch slot))) + (- ((1e + 1e) * StabilityWindow)))
        → epoch slot ≡ e
        ────────────────────────────────
        Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈ record { pup = pup ∪ᵐˡ pupˢ ; fpup = fpupˢ }

    PPUpdateFuture : let open PPUpdateEnv Γ in
        dom (pup ˢ) ⊆ dom (genDelegs ˢ)
        → All (λ ps → pvCanFollow (PParams.pv pp) (PParams.pv (applyUpdate pp ps))) (range (pup ˢ))
        → slot ≥ ((firstSlot (sucᵉ (epoch slot))) + (- ((1e + 1e) * StabilityWindow)))
        → sucᵉ (epoch slot) ≡ e
        ────────────────────────────────
        Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈ record { pup = pupˢ ; fpup = pup ∪ᵐˡ fpupˢ }
\end{code}
