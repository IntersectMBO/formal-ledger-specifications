
{-# OPTIONS --safe #-}

open import Agda.Builtin.FromNat
open import Algebra; open import Algebra.Literals
import Data.Product.Properties as ×
import Data.Nat as ℕ; import Data.Nat.Properties as ℕ

open import Ledger.Prelude hiding (_*_)
open import Ledger.Transaction

module Ledger.Conway.Conformance.PPUp (txs : _) (open TransactionStructure txs) where

open Semiring Slotʳ using (_*_)
open Semiring-Lit Slotʳ

private variable m n : ℕ

GenesisDelegation = KeyHash ⇀ (KeyHash × KeyHash)

record PPUpdateState : Type where

  field

    pup   : ProposedPPUpdates
    fpup  : ProposedPPUpdates

record PPUpdateEnv : Type where

  field

    slot       : Slot
    pparams    : PParams
    genDelegs  : GenesisDelegation

viablePParams : PParams → Type
viablePParams pp = ⊤ -- TODO: block size check

isViableUpdate : PParams → PParamsUpdate → Type
isViableUpdate pp pup with applyUpdate pp pup
... | pp' = pvCanFollow (PParams.pv pp) (PParams.pv pp') × viablePParams pp'

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

data _⊢_⇀⦇_,PPUP⦈_ : PPUpdateEnv → PPUpdateState → Maybe Update → PPUpdateState → Type where

  PPUpdateEmpty : Γ ⊢ s ⇀⦇ nothing ,PPUP⦈ s

  PPUpdateCurrent : let open PPUpdateEnv Γ in
    dom pup ⊆ dom genDelegs
    → All (isViableUpdate pparams) (range pup)
    → slot + 2 * StabilityWindow < firstSlot (epoch slot + 1)
    → epoch slot ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pup ∪ˡ pupˢ ; fpup = fpupˢ }

  PPUpdateFuture : let open PPUpdateEnv Γ in
    dom pup ⊆ dom genDelegs
    → All (isViableUpdate pparams) (range pup)
    → firstSlot (epoch slot + 1) ≤ slot + 2 * StabilityWindow
    → epoch slot + 1 ≡ e
    ────────────────────────────────
    Γ ⊢ record { pup = pupˢ ; fpup = fpupˢ } ⇀⦇ just (pup , e) ,PPUP⦈
        record { pup = pupˢ ; fpup = pup ∪ˡ fpupˢ }
