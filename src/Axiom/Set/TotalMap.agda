{-# OPTIONS --safe --no-import-sorts #-}
{-# OPTIONS -v allTactics:100 #-}

open import Agda.Primitive renaming (Set to Type)
open import Axiom.Set

module Axiom.Set.TotalMap (th : Theory) where

open import Prelude

open Theory th
open import Axiom.Set.Map th
open import Axiom.Set.Properties th
open import Axiom.Set.Rel th
open import Tactic.AnyOf
open import Tactic.Defaults

private variable A B : Type

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

lookupMapᵗ : TotalMap A B → A → B
lookupMapᵗ (_ , _ , tot) a = proj₂ (proj₁ (∈⇔P (tot {a})))
