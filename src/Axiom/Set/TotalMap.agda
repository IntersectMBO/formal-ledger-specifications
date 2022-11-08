{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.TotalMap (th : Theory) where
open Theory th
open import Axiom.Set.Rel th hiding (_∣'_; _∣^'_)

open import Prelude hiding (filter)

open Equivalence

open import Interface.DecEq

private variable A A' B : Type
                 R R' : Rel A B

open import Axiom.Set.Map th

open import Tactic.AnyOf
open import Tactic.Defaults
open import Axiom.Set.Properties th

-- Because of missing macro hygiene, we have to copy&paste this. https://github.com/agda/agda/issues/3819
private macro
  ∈⇒P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ [])
  P⇒∈ = anyOfⁿᵗ (quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])
  ∈⇔P = anyOfⁿᵗ (quote ∈-filter⁻' ∷ quote ∈-∪⁻ ∷ quote ∈-map⁻' ∷ quote ∈-fromList⁻ ∷ quote ∈-filter⁺' ∷ quote ∈-∪⁺ ∷ quote ∈-map⁺' ∷ quote ∈-fromList⁺ ∷ [])

-- defines a total map for a given set
total-map : Rel A B → Type
total-map R = ∀ {a} → a ∈ map proj₁ R

TotalMap : Type → Type → Type
TotalMap A B = Σ (Rel A B) (λ R → left-unique R × total-map R)

lookupMapᵗ : ∀{X Y} → TotalMap X Y → X → Y
lookupMapᵗ (fst , fst₁ , snd) x = proj₂ (proj₁ (∈⇔P ((snd {x}))))
