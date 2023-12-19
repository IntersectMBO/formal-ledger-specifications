{-# OPTIONS --safe #-}

open import Prelude hiding (any; all; lookup)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R

open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
open import Data.List.Properties using (∷-injective)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Core
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Unary.All using (lookup; All; all?)
open import Data.List.Relation.Unary.Any using (any?; here; there)
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
  using (unique∧set⇒bag)

open import Data.List.Ext

module Data.List.Ext.Properties where

-- TODO: stdlib?
_×-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A × C) R.∼[ k ] (B × D)
h ×-cong h' = (h M.×-cong h')
  where open import Data.Product.Function.NonDependent.Propositional as M

_⊎-cong_ : ∀ {a b c d} {A : Set a} {B : Set b} {C : Set c} {D : Set d} {k} → A R.∼[ k ] B → C R.∼[ k ] D → (A ⊎ C) R.∼[ k ] (B ⊎ D)
h ⊎-cong h' = (h M.⊎-cong h')
  where open import Data.Sum.Function.Propositional as M

module _ {a} {A : Set a} ⦃ _ : DecEq A ⦄ where
  open import Data.List.Relation.Unary.Unique.DecPropositional.Properties {A = A} _≟_

  deduplicate≡ : List A → List A
  deduplicate≡ = deduplicate _≟_

  disj-on-dedup : ∀ {l l'} → Disjoint l l' → Disjoint (deduplicate≡ l) (deduplicate≡ l')
  disj-on-dedup = _∘ Data.Product.map (∈-deduplicate⁻ _≟_ _) (∈-deduplicate⁻ _≟_ _)

  ∈-dedup : ∀ {l a} → a ∈ l ⇔ a ∈ deduplicate≡ l
  ∈-dedup = mk⇔ (∈-deduplicate⁺ _≟_) (∈-deduplicate⁻ _≟_ _)

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


module _ {ℓ}{A : Set ℓ}  where
  open All
  -- some properties --
  headPrepend : {l : List A}{ls : List (List A)}{a : A} → l ∈ a +++ ls → l ≡ [] ⊎ head l ≡ just a
  headPrepend {[]} x = inj₁ refl
  headPrepend {_ ∷ _} {[]} (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  headPrepend {_ ∷ _} {_ ∷ _} (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  headPrepend {_ ∷ _} {_ ∷ _} (there h) = headPrepend h

  a∈+++ : {ls : List (List A)}{a : A} → All (a ∈_) (a +++ ls)
  a∈+++ {[]} = here refl ∷ []
  a∈+++ {_ ∷ ls}{a} = (here refl) ∷ a∈+++

  inllem : {l l' : List A}{x : A} → x ∈ l → x ∈ l ++ l'
  inllem (here px) = here px
  inllem (there y) = there (inllem y)

  prependlem : {l : List A}{ll : List (List A)}{a : A} → l ∈ ll → a ∷ l ∈ a +++ ll
  prependlem (here px) = here (cong (_ ∷_) px)
  prependlem (there l∈xs) = there (prependlem l∈xs)

  headlem : {l L : List A}{a : A} → l ⊆ L → l ⊆ (a ∷ L)
  headlem [] = []
  headlem (px ∷ pxs) = there px ∷ headlem pxs

module _ {ℓ}{A : Set ℓ}  where

  l∈sublists : {xs : List A}{x : A} → x ∷ xs ∈ sublists (x ∷ xs)
  l∈sublists {[]} = here refl
  l∈sublists {x ∷ l} = inllem (prependlem l∈sublists)

  Sublist-refl : {l : List A} → Sublist _≡_ l l
  Sublist-refl {[]} = []
  Sublist-refl {_ ∷ _} = refl ∷ Sublist-refl

  sublist→⊆ : {l L : List A} → Sublist _≡_ l L → l ⊆ L
  sublist→⊆ [] = All.[] -- []
  sublist→⊆ (y Sublist.∷ʳ s) = headlem (sublist→⊆ s)
  sublist→⊆ (x≡y Sublist.∷ xsSLys) = (here x≡y) All.∷ (headlem (sublist→⊆ xsSLys))



















-- TESTS --
-- _ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
-- _ = refl

-- _ : sublists (1 ∷ 2 ∷ 3 ∷ [])  ≡  (1 ∷ 2 ∷ 3 ∷ [])
--                                   ∷ (1 ∷ 2 ∷ []) ∷ (1 ∷ 3 ∷ [])
--                                   ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ [])
--                                   ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
-- _ = refl

-- _ : permutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ []
-- _ = refl

-- _ : permutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
--                                     ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
--                                     ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ []) ∷ []
-- _ = refl

-- -- TESTS --
-- _ : subpermutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
-- _ = refl

-- _ : subpermutations (1 ∷ 2 ∷ 3 ∷ [])  ≡  (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
--                                          ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
--                                          ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
--                                          ∷ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
--                                          ∷ (1 ∷ 3 ∷ []) ∷ (3 ∷ 1 ∷ [])
--                                          ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ [])
--                                          ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
-- _ = refl
