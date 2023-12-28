{-# OPTIONS --safe #-}

open import Prelude hiding (any; all; lookup)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Function.Bundles using (Inverse)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
open import Data.List.Properties -- == using (∷-injective)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Core using (Sublist; []; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Unary.All using (lookup; All)
open import Data.List.Relation.Unary.Any using (Any; any?; here; there)
open import Data.List.Relation.Unary.Any.Properties
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
  using (unique∧set⇒bag)

open import Data.List.Ext

module Data.List.Ext.Properties where

private variable
  a p : Level

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

open All
module _ {A : Set a}  -- properties of +++ --
  where
  headPrepend : {l : List A}{ls : List (List A)}{a : A} → l ∈ a ::: ls → l ≡ [] ⊎ head l ≡ just a
  headPrepend {[]} x = inj₁ refl
  headPrepend {_ ∷ _} {[]} (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  headPrepend {_ ∷ _} {_ ∷ _} (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  headPrepend {_ ∷ _} {_ ∷ _} (there h) = headPrepend h

  a∈+++ : {ls : List (List A)}{a : A} → All (a ∈_) (a ::: ls)
  a∈+++ {[]} = here refl ∷ []
  a∈+++ {_ ∷ ls}{a} = (here refl) ∷ a∈+++

  inl++ : {l l' : List A}{a : A} → a ∈ l → a ∈ l ++ l'
  inl++ (here px) = here px
  inl++ (there y) = there (inl++ y)

  prepend+++ : {l : List A}{ll : List (List A)}{a : A} → l ∈ ll → a ∷ l ∈ a ::: ll
  prepend+++ (here px) = here (cong (_ ∷_) px)
  prepend+++ (there l∈xs) = there (prepend+++ l∈xs)

  addhead⊆ : {l L : List A}{a : A} → l ⊆ L → l ⊆ (a ∷ L)
  addhead⊆ [] = []
  addhead⊆ (px ∷ pxs) = there px ∷ addhead⊆ pxs

module _ {A : Set a} -- properties of Sublist and sublists --
  where
  sublists-expansive : {xs : List A} → {x : A} → x ∷ xs ∈ sublists (x ∷ xs)
  sublists-expansive {[]} = here refl
  sublists-expansive {_ ∷ _} = inl++ $ prepend+++ sublists-expansive

  Sublist-expansive : {xs : List A} → Sublist _≡_ xs xs
  Sublist-expansive {[]} = []
  Sublist-expansive {_ ∷ _} = refl ∷ Sublist-expansive

  Sublist→⊆ : {xs : List A}{ys : List A} → Sublist _≡_ xs ys → xs ⊆ ys
  Sublist→⊆ [] = []
  Sublist→⊆ (_ Sublist.∷ʳ s) = addhead⊆ $ Sublist→⊆ s
  Sublist→⊆ (x≡y Sublist.∷ xsSLys) = (here x≡y) ∷ (addhead⊆ $ Sublist→⊆ xsSLys)

  toSum : {xs : List A}{ys : List A}{P : Pred A p} → Any P (xs ++ ys) → Any P xs ⊎ Any P ys
  toSum {xs = xs} = ++⁻ xs

  fromSum : {xs : List A}{ys : List A}{P : Pred A p} → Any P xs ⊎ Any P ys → Any P (xs ++ ys)
  fromSum = Inverse.to ++↔

-- module _ {A : Set a} -- properties of Sublist and sublists --
--   where
--   []∉sublists : {xs : List A} → ¬ [] ∈ sublists xs
--   []∉sublists {[]} = λ()
--   []∉sublists {x ∷ xs} p with (toSum{xs = x ::: sublists xs}{ys = sublists xs} p)
--   ... | inj₁ q with q
--   ... | here w = ?
--   ... | there w = ?
--   ... | inj₂ q = []∉sublists{xs = xs} q
-- p  : [] ∈ˡ (x +++ sublists xs) ++ sublists xs

-- TESTS --
_ : sublists (1 ∷ []) ≡ (1 ∷ []) ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl


_ : {a : Level}{A : Set a} → sublists{a}{A} [] ≡ []
_ = refl

_ : sublists (1 ∷ 2 ∷ 3 ∷ [])  ≡  (1 ∷ 2 ∷ 3 ∷ [])
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

-- TESTS --
_ : subpermutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ 3 ∷ [])  ≡  (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                         ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                         ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                         ∷ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
                                         ∷ (1 ∷ 3 ∷ []) ∷ (3 ∷ 1 ∷ [])
                                         ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ [])
                                         ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
_ = refl
