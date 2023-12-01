{-# OPTIONS --safe #-}
open import Prelude
  hiding (_<ᵇ_; _∧_; dec)
  renaming (_×_ to _∧_)

open import Interface.HasAdd
open import Interface.HasAdd.Instance
open import Interface.Hashable
open import Interface.ComputationalRelation

open import Tactic.Premises

module MidnightExample.Ledger
  (Hash : Set)
  ⦃ _ : DecEq Hash ⦄
  ⦃ _ : Hashable ℤ Hash ⦄
  ⦃ _ : Hashable₁ List Hash ⦄
  ⦃ _ : Hashable₂ _∧_ Hash ⦄
  where

import Data.Integer.Properties as ℤ
open import Relation.Nullary

instance
  _ = ℤ.+-0-commutativeMonoid

  Hashable-ℕ : Hashable ℕ Hash
  Hashable-ℕ .hash n = hash (+ n)
  Hashable-ℕ .hashInj = ℤ.+-injective ∘ hashInj

_<ᵇ_ : Maybe ℕ → Maybe ℕ → Bool
just a  <ᵇ just b  = a Prelude.<ᵇ b
just a  <ᵇ nothing = false
nothing <ᵇ just b  = true
nothing <ᵇ nothing = false

record Point : Set where
  field  slot       : Maybe ℕ
         blockHash  : Hash

slotsInEpoch : ℕ
slotsInEpoch = 50

epochOf : Maybe ℕ → Maybe ℕ
epochOf nothing  = nothing
epochOf (just s) = just (s / slotsInEpoch)

data Tx : Set where
  inc  : Tx
  dec  : Tx

txDelta : Tx → ℤ
txDelta inc  = 1ℤ
txDelta dec  = -1ℤ

txDelta-injective : Injective _≡_ _≡_ txDelta
txDelta-injective {inc} {inc} refl = refl
txDelta-injective {dec} {dec} refl = refl
instance
  Hashable-Tx : Hashable Tx Hash
  Hashable-Tx .hash = hash ∘ txDelta
  Hashable-Tx .hashInj = txDelta-injective ∘ hashInj

record Header : Set where
  field  slotNo     : ℕ
         blockNo    : ℕ
         blockHash  : Hash
         prev       : ℕ
         nodeId     : ℕ

record Block : Set where
  field  header  : Header
         body    : List Tx

  open Header header public

blockPoint : Block → Point
blockPoint b = record { slot = just slotNo ; blockHash = blockHash }
  where open Block b

computeBlockHash : Block → Hash
computeBlockHash b = hash (slotNo , blockNo , prev , body)
  where open Block b

addBlockHash : Block → Block
addBlockHash b = record b
  { header = record header { blockHash = computeBlockHash b } }
  where open Block b

record LedgerState : Set where
  field  tip                  : Point
         count                : ℤ
         snapshot1 snapshot2  : ℤ

open LedgerState

tickLedgerState : ℕ → LedgerState → LedgerState
tickLedgerState newSlot st = if isNewEpoch
  then record st { snapshot1 = count st ; snapshot2 = snapshot1 st }
  else st
  where isNewEpoch = epochOf (Point.slot (tip st)) <ᵇ epochOf (just newSlot)

data _⊢_⇀⦇_,LEDGER⦈_ : ⊤ → LedgerState → Block → LedgerState → Set where
  LEDGER-inductive : ∀ {Γ} {s} {b} →
    let open Block b
        acc = ∑ˡ[ x ← body ] txDelta x
        s'  = tickLedgerState slotNo s
    in ∙ acc ≢ 0ℤ        ∙ computeBlockHash b ≡ blockHash
    ────────────────────────────────
    Γ ⊢ s ⇀⦇ b ,LEDGER⦈
      record s' { tip = blockPoint b ; count = count s + acc }

pattern LEDGER-inductive⋯ x y = LEDGER-inductive (x , y)
unquoteDecl LEDGER-inductive-premises =
  genPremises LEDGER-inductive-premises (quote LEDGER-inductive)

instance
  Computational-LEDGER : Computational _⊢_⇀⦇_,LEDGER⦈_
  Computational-LEDGER = record {Go}
    where module Go Γ s b (let H , ⁇ H? = LEDGER-inductive-premises {b}) where
      computeProof = case H? of λ where
        (yes p) → just (-, LEDGER-inductive p)
        (no _)  → nothing

      completeness : _
      completeness s' (LEDGER-inductive p) rewrite dec-yes H? p .proj₂ = refl

open Computational ⦃...⦄

LEDGER-step : ⊤ → LedgerState → Block → Maybe LedgerState
LEDGER-step = compute

applyBlockTo : Block → LedgerState → Maybe LedgerState
applyBlockTo b st = let acc = ∑ˡ[ x ← Block.body b ] txDelta x in
  ifᵈ acc ≢ 0ℤ ∧ computeBlockHash b ≡ Block.blockHash b
    then just record st { tip = blockPoint b ; count = count st + acc }
    else nothing

private variable
  s s' : LedgerState
  b : Block

open import Algebra.Properties.AbelianGroup ℤ.+-0-abelianGroup

lemma : ∀ {x y} → y ≢ 0ℤ → x ≢ x + y
lemma y≢0 eq = y≢0 (identityʳ-unique _ _ (sym eq))

LEDGER-property₁ : _ ⊢ s ⇀⦇ b ,LEDGER⦈ s' → count s ≢ count s'
LEDGER-property₁ (LEDGER-inductive⋯ acc≢0 _) = lemma acc≢0

LEDGER-property₂ : LEDGER-step _ s b ≡ just s' → count s ≢ count s'
LEDGER-property₂ {s} {b} eq
  = LEDGER-property₁
  $ Equivalence.to (≡-just⇔STS {s = s} {sig = b}) eq

LEDGER-property₃ : applyBlockTo b s ≡ just s' → count s ≢ count s'
LEDGER-property₃ {b = b} h with
  (∑ˡ[ x ← Block.body b ] txDelta x) ≟ 0ℤ | computeBlockHash b ≟ Block.blockHash b | h
... | no acc≢0 | yes _ | refl = lemma acc≢0
... | no _     | no _  | ()
... | yes _    | _     | ()
