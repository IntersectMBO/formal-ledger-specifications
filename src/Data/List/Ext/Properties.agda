{-# OPTIONS --safe #-}

open import Prelude hiding (lookup)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List.Ext using (sublists; permutations; allPermutations; subpermutations; _⊆_)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
  using (∈-deduplicate⁻; ∈-deduplicate⁺; ∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK using (unique∧set⇒bag)

open AllPairs

module Data.List.Ext.Properties where

-- TODO: stdlib?
_×-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A × C) R.∼[ k ] (B × D)
h ×-cong h' = (h M.×-cong h')
  where open import Data.Product.Function.NonDependent.Propositional as M

_⊎-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A ⊎ C) R.∼[ k ] (B ⊎ D)
h ⊎-cong h' = (h M.⊎-cong h')
  where open import Data.Sum.Function.Propositional as M

module _ {a}{A : Set a} where

  addhead⊆ : {l L : List A}{a : A} → l ⊆ L → l ⊆ (a ∷ L)
  addhead⊆ All.[] = All.[]
  addhead⊆ (px All.∷ pxs) = there px All.∷ addhead⊆ pxs

  ⊆-id : {l : List A} → l ⊆ l
  ⊆-id {[]} = All.[]
  ⊆-id {x ∷ xs} = All._∷_ (here refl) (addhead⊆ ⊆-id)

  ⊆-[] : {l : List A} → l ⊆ [] → l ≡ []
  ⊆-[] {[]} _ = refl
  ⊆-[] {x ∷ xs} (px All.∷ l⊆[]) = ⊥-elim (¬Any[] px)

  ¬⊆-[] : {x : A}{xs : List A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆-[] {x} {xs} (px All.∷ h) = ¬Any[] px

  ⊆⇔head∈tail⊆ : {x : A}{xs l : List A} → (x ∷ xs) ⊆ l ⇔ (x ∈ l × xs ⊆ l)
  ⊆⇔head∈tail⊆  {x} {xs} {[]} = mk⇔ (⊥-elim ∘ ¬⊆-[]) (λ ())
  ⊆⇔head∈tail⊆  {x} {xs} {y ∷ ys} = mk⇔ i (λ (x∈yys , xs⊆yys) → x∈yys All.∷ xs⊆yys)
    where
    i : All (_∈ (y ∷ ys))(x ∷ xs) → (x ∈ˡ y ∷ ys) × (xs ⊆ (y ∷ ys))
    i (px All.∷ h) = (px , h)

module _ {a} {A : Set a} ⦃ _ : DecEq A ⦄ where
  open import Data.List.Relation.Unary.Unique.DecPropositional.Properties {A = A} _≟_

  deduplicate≡ : List A → List A
  deduplicate≡ = deduplicate _≟_

  disj-on-dedup : ∀ {l l'} → Disjoint l l' → Disjoint (deduplicate≡ l) (deduplicate≡ l')
  disj-on-dedup = _∘ Data.Product.map (∈-deduplicate⁻ _≟_ _) (∈-deduplicate⁻ _≟_ _)

  ∈-dedup : ∀ {l a} → a ∈ l ⇔ a ∈ deduplicate≡ l
  ∈-dedup = mk⇔ (∈-deduplicate⁺ _≟_) (∈-deduplicate⁻ _≟_ _)

  ¬∈-dedup[] : {x : A} → ¬ x ∈ˡ (deduplicate≡ [])
  ¬∈-dedup[] {x} p = ¬Any[] (Equivalence.from ∈-dedup p)

  ⊆-dedup : ∀{l l'} → l ⊆ l' ⇔ l ⊆ deduplicate≡ l'
  ⊆-dedup {[]} {l'} = mk⇔ (λ _ → All.[])(λ _ → All.[])
  ⊆-dedup {x ∷ xs} {[]} = mk⇔ (⊥-elim ∘ ¬⊆-[])(⊥-elim ∘ ¬⊆-[])
  ⊆-dedup {x ∷ xs} {y ∷ ys} = mk⇔ i ii
    where
    open Equivalence
    i : ((x ∷ xs) ⊆ (y ∷ ys)) → ((x ∷ xs) ⊆ deduplicate≡ (y ∷ ys))
    i h = to ∈-dedup (proj₁ (to ⊆⇔head∈tail⊆ h)) All.∷ to ⊆-dedup (proj₂ (to ⊆⇔head∈tail⊆ h))
    ii : ((x ∷ xs) ⊆ deduplicate≡ (y ∷ ys)) → ((x ∷ xs) ⊆ (y ∷ ys))
    ii h = (from ∈-dedup (proj₁ (to ⊆⇔head∈tail⊆ h))) All.∷ from ⊆-dedup (proj₂ (to ⊆⇔head∈tail⊆ h))

  -- TODO: stdlib?
  dedup-++-↭ : {l l' : List A} → Disjoint l l' → deduplicate≡ (l ++ l') ↭ deduplicate≡ l ++ deduplicate≡ l'
  dedup-++-↭ {l = l} {l'} disj = let dedup-unique = λ {l} → deduplicate-! l in ∼bag⇒↭ $
    unique∧set⇒bag dedup-unique (++⁺ dedup-unique dedup-unique (disj-on-dedup disj)) λ {a} →
      a ∈ deduplicate≡ (l ++ l')                 ∼⟨ R.SK-sym ∈-dedup ⟩
      a ∈ l ++ l'                                ∼⟨ helper ⟩
      (a ∈ l ⊎ a ∈ l')                           ∼⟨ ∈-dedup ⊎-cong ∈-dedup ⟩
      (a ∈ deduplicate≡ l ⊎ a ∈ deduplicate≡ l') ∼⟨ R.SK-sym helper ⟩
      a ∈ deduplicate≡ l ++ deduplicate≡ l'       ∎
    where open R.EquationalReasoning
          helper : ∀ {l l' a} → a ∈ l ++ l' ⇔ (a ∈ l ⊎ a ∈ l')
          helper = mk⇔ (∈-++⁻ _) Data.Sum.[ ∈-++⁺ˡ , ∈-++⁺ʳ _ ]

-- TODO: stdlib?
AllPairs⇒≡∨R∨Rᵒᵖ : ∀ {ℓ ℓ'} {A : Set ℓ} {R : A → A → Set ℓ'} {a b l}
                 → AllPairs R l → a ∈ˡ l → b ∈ˡ l → a ≡ b ⊎ R a b ⊎ R b a
AllPairs⇒≡∨R∨Rᵒᵖ [] = λ ()
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (here refl) = inj₁ refl
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (there b∈l) = inj₂ (inj₁ (lookup x b∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (here refl) = inj₂ (inj₂ (lookup x a∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l



-- TESTS --
_ : sublists (1 ∷ []) ≡ (1 ∷ []) ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : {a : Level}{A : Set a} → sublists{a}{A} [] ≡ []
_ = refl

_ : sublists (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ [])
                                ∷ (1 ∷ 2 ∷ []) ∷ (1 ∷ 3 ∷ [])
                                ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ [])
                                ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                    ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                    ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : allPermutations ((1 ∷ 2 ∷ []) ∷ (5 ∷ 6 ∷ []) ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
                                                         ∷ (5 ∷ 6 ∷ []) ∷ (6 ∷ 5 ∷ []) ∷ []
_ = refl

_ : allPermutations ((1 ∷ 2 ∷ 3 ∷ []) ∷ (4 ∷ 5 ∷ []) ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                                             ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                                             ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                                             ∷ (4 ∷ 5 ∷ []) ∷ (5 ∷ 4 ∷ []) ∷ []
_ = refl

_ : subpermutations{A = ℕ} [] ≡ [] ∷ []
_ = refl

_ : _∈ˡ_ {A = List ℕ} [] (subpermutations{A = ℕ} [])
_ = here refl

_ : _∈ˡ_ {A = List ℕ} [] ([] ∷ (2 ∷ []) ∷ [])
_ = here refl

_ : _∈ˡ_ {A = List ℕ} [] ((2 ∷ []) ∷ [] ∷ [])
_ = there (here refl)

_ : subpermutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                        ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                        ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                        ∷ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
                                        ∷ (1 ∷ 3 ∷ []) ∷ (3 ∷ 1 ∷ [])
                                        ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ [])
                                        ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
_ = refl
