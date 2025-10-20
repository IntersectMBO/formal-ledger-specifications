{-# OPTIONS --safe --no-import-sorts #-}
open import Axiom.Set using (Theory)

module abstract-set-theory.Axiom.Set.Properties {ℓ} (th : Theory {ℓ}) where

open import abstract-set-theory.Prelude hiding (isEquivalence; trans; map; map₂)
open Theory th

open import Axiom.Set.Properties th hiding (filter-⇒-⊆; filter-map )

import Function.Related.Propositional as R
open import Relation.Binary hiding (_⇔_)
open import Relation.Binary.Lattice
open import Relation.Binary.Morphism using (IsOrderHomomorphism)

open Equivalence

private variable
  A B C : Type ℓ
  X Y Z : Set A

module _ {P Q : A → Type} {sp-P : specProperty P} {sp-Q : specProperty Q} where

  import Relation.Unary as U

  filter-⇒ : (P⇒Q : U.Universal (P U.⇒ Q)) → filter sp-P (filter sp-Q X) ≡ᵉ filter sp-P X
  filter-⇒ P⇒Q = filter-⇒-⊆ , filter-⇒-⊇
    where
      filter-⇒-⊆ : filter sp-P (filter sp-Q X) ⊆ filter sp-P X
      filter-⇒-⊆ p with from ∈-filter p
      ... | (q , p) with from ∈-filter p
      ... | (_ , p) = to ∈-filter (q , p)

      filter-⇒-⊇ : filter sp-P X ⊆ filter sp-P (filter sp-Q X)
      filter-⇒-⊇ p with from ∈-filter p
      ... | (q , p) = to ∈-filter (q , (to ∈-filter (P⇒Q _ q , p)))

module _ {P : A → Type} {sp-P : specProperty P} {Q : B → Type} {sp-Q : specProperty Q} where

  import Relation.Unary as U

  module _ {f : A → B} (Qf⇒P : U.Universal ((Q ∘ f) U.⇒ P)) where

    filter-map : filter sp-Q (map f X) ≡ᵉ filter sp-Q (map f (filter sp-P X))
    filter-map = filter-map-⊆ , filter-map-⊇
      where
        filter-map-⊆ : filter sp-Q (map f X) ⊆ filter sp-Q (map f (filter sp-P X))
        filter-map-⊆ p with from ∈-filter p
        ... | Qa , p with from ∈-map p
        ... | (a , refl , p) = to ∈-filter (Qa , (to ∈-map (_ , (refl , (to ∈-filter (Qf⇒P a Qa , p))))))

        filter-map-⊇ : filter sp-Q (map f (filter sp-P X)) ⊆ filter sp-Q (map f X)
        filter-map-⊇ p with from ∈-filter p
        ... | Qfa , p with from ∈-map p
        ... | (a , refl , p) with from ∈-filter p
        ... | (Pa , p) = to ∈-filter (Qfa , (to ∈-map (a , (refl , p))))
