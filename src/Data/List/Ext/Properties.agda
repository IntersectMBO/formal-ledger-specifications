{-# OPTIONS --safe #-}

open import Prelude

import Data.List.Relation.Unary.All as All
import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using () renaming (map to lmap)
open import Data.List.Membership.Propositional
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Disjoint.Propositional
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.AllPairs
open import Data.List.Relation.Unary.Any
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
open import Function.Bundles
open import Class.DecEq

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
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (there b∈l) = inj₂ (inj₁ (All.lookup x b∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (here refl) = inj₂ (inj₂ (All.lookup x a∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l


-- Permutations of lists (used, e.g., in Ledger.Gov module) ---------------------------------

-- prepend a to every input list
_+++_ : ∀{ℓ}{A : Set ℓ} → A → List (List A) → List (List A)
a +++ [] = [ a ∷ [] ]
a +++ (l ∷ ls) = (a ∷ l) ∷ (a +++ ls)

-- return all sublists of the given list
sublists : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
sublists [] = []
sublists (x ∷ xs) =  x +++ sublists xs  -- sublists including x
                     ++ sublists xs     -- sublists omitting x
-- (sublists is tested in Gov.Properties)

-- insert a at every position of the given list
_inserts_ : ∀{ℓ}{A : Set ℓ} → List A → A → List (List A)
[] inserts a = (a ∷ []) ∷ []
(x ∷ xs) inserts a = (a ∷ x ∷ xs) ∷ lmap (λ l → x ∷ l) (xs inserts a)

-- insert a at every position of every input list
foreach_inserts_ : ∀{ℓ}{A : Set ℓ} → List (List A) → A → List (List A)
foreach [] inserts a = [] inserts a
foreach (l ∷ []) inserts a = l inserts a
foreach (l ∷ ls) inserts a = (l inserts a) ++ (foreach ls inserts a)

-- return all permutations of the given list
permutations : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
permutations [] = []
permutations (x ∷ xs) = foreach (permutations xs) inserts x
-- (permutations is tested in Gov.Properties)


-- return all permutations of every input list
allPermutations : ∀{ℓ}{A : Set ℓ} → List (List A) → List (List A)
allPermutations [] = []
allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

-- return all permutations of every sublist of the given list
subpermutations : ∀{ℓ}{A : Set ℓ} → List A → List (List A)
subpermutations = allPermutations ∘ sublists
-- (subpermutations is tested in Gov.Properties)


-- TESTS --
_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
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
