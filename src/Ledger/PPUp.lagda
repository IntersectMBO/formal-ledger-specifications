\section{Update Proposal Mechanism}

\begin{code}[hide]
{-# OPTIONS --safe #-}

open import Algebra
open import Algebra.Literals
import Data.Unit.Polymorphic
open import Agda.Builtin.FromNat
import Data.Nat as ℕ
open import Data.Nat.Properties using (m+1+n≢m)
open import Data.Nat.Literals
open import Data.Product.Properties

open import Ledger.Prelude hiding (_*_)
open import Ledger.Transaction

module Ledger.PPUp (⋯ : _) (open TransactionStructure ⋯) where

open Semiring Slotʳ using (_*_)
open Semiring-Lit Slotʳ

private variable m n : ℕ

instance
  _ = Data.Nat.Literals.number
  _ = Data.Unit.Polymorphic.tt
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
data pvCanFollow : ProtVer → ProtVer → Set where
  canFollowMajor : pvCanFollow (m , n) (m + 1 , 0)
  canFollowMinor : pvCanFollow (m , n) (m , n + 1)

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

viablePParams? : Decidable¹ viablePParams
viablePParams? pp = yes _

pvCanFollow? : ∀ pv pv' → Dec (pvCanFollow pv pv')
pvCanFollow? (m , n) pv with pv ≟ (m + 1 , 0) | pv ≟ (m , n + 1)
... | no ¬p    | no ¬p₁   = no $ λ where canFollowMajor → ¬p  refl
                                         canFollowMinor → ¬p₁ refl
... | no ¬p    | yes refl = yes canFollowMinor
... | yes refl | no ¬p    = yes canFollowMajor
... | yes refl | yes p    = ⊥-elim $ m+1+n≢m m $ ×-≡,≡←≡ p .proj₁


instance
  Dec-pvCanFollow : ∀ {pv pv'} → Dec (pvCanFollow pv pv')
  Dec-pvCanFollow = pvCanFollow? _ _

isViableUpdate? : ∀ pparams → Decidable¹ (isViableUpdate pparams)
isViableUpdate? pp pup with applyUpdate pp pup
... | pp' = pvCanFollow? (PParams.pv pp) (PParams.pv pp') ×-dec viablePParams? pp'

data _⊢_⇀⦇_,PPUP⦈_ : PPUpdateEnv → PPUpdateState → Maybe Update → PPUpdateState → Set where
\end{code}
\begin{figure*}[h]
\begin{code}
  PPUpdateEmpty : Γ ⊢ s ⇀⦇ nothing ,PPUP⦈ s

  PPUpdateCurrent : let open PPUpdateEnv Γ in
    dom (pup ˢ) ⊆ dom (genDelegs ˢ)
    → All (isViableUpdate pparams) (range (pup ˢ))
    → (slot + (2 * StabilityWindow)) <ˢ firstSlot (sucᵉ (epoch slot))
    → epoch slot ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pup ∪ᵐˡ pupˢ ; fpup = fpupˢ }

  PPUpdateFuture : let open PPUpdateEnv Γ in
    dom (pup ˢ) ⊆ dom (genDelegs ˢ)
    → All (isViableUpdate pparams) (range (pup ˢ))
    → firstSlot (sucᵉ (epoch slot)) ≤ˢ (slot + (2 * StabilityWindow))
    → sucᵉ (epoch slot) ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pupˢ ; fpup = pup ∪ᵐˡ fpupˢ }
\end{code}
\caption{PPUP inference rules}
\end{figure*}
