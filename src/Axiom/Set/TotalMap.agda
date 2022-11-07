{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.TotalMap (th : Theory) where
open Theory th
open import Axiom.Set.Rel th hiding (_∣'_; _∣^'_)
open import Axiom.Set.Factor th
open import Axiom.Set.Properties th

open import Prelude hiding (filter)

open Equivalence

private variable A A' B : Type
                 R R' : Rel A B
                 X Y : Set A

left-unique : Rel A B → Type
left-unique R = ∀ {a b b'} → (a , b) ∈ R → (a , b') ∈ R → b ≡ b'

record IsLeftUnique (R : Rel A B) : Type where
  field isLeftUnique : left-unique R

instance
  ∅-left-unique : IsLeftUnique {A = A} {B = B} ∅
  ∅-left-unique .IsLeftUnique.isLeftUnique h h' = ⊥-elim $ ∉-∅ h

⊆-left-unique : R ⊆ R' → left-unique R' → left-unique R
⊆-left-unique R⊆R' h = R⊆R' -⟨ h ⟩- R⊆R' -- on isn't dependent enough

Map : Type → Type → Type
Map A B = Σ (Rel A B) left-unique

-- defines a total map for a given set
total-map : Set A → Rel A B → Type
total-map A R = ∀ {a} → a ∈ A → a ∈ map proj₁ R

TotalMap : (A : Type) → Type → (s : Set A) → Type
TotalMap A B set = Σ (Rel A B) (λ R → left-unique R × total-map set R)
