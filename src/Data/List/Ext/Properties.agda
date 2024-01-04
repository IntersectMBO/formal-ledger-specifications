{-# OPTIONS --safe #-}

open import Prelude

import Data.List.Relation.Unary.All as All
import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List.Ext
open import Data.List.Membership.Propositional
open import Data.List.Membership.Propositional.Properties
open import Data.List.Relation.Binary.BagAndSetEquality
open import Data.List.Relation.Binary.Disjoint.Propositional
open import Data.List.Relation.Binary.Permutation.Propositional
open import Data.List.Relation.Unary.AllPairs
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Relation.Unary.All using (all?; All)
open import Data.List.Relation.Unary.Unique.Propositional.Properties.WithK
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

module _ {a}{A : Set a} where
  ¬∈[] : ∀{x : A} → ¬ (x ∈ˡ [])
  ¬∈[] = λ ()

  _⊆ˡ_ : (l L : List A) → Set _
  l ⊆ˡ L = All (_∈ˡ L) l

  addhead⊆ : {l L : List A}{a : A} → l ⊆ˡ L → l ⊆ˡ (a ∷ L)
  addhead⊆ All.[] = All.[]
  addhead⊆ (px All.∷ pxs) = there px All.∷ addhead⊆ pxs

  ⊆ˡ-id : {l : List A} → l ⊆ˡ l
  ⊆ˡ-id {[]} = All.[]
  ⊆ˡ-id {x ∷ xs} = All._∷_ (here refl) (addhead⊆ ⊆ˡ-id)

  module _ ⦃ _ : DecEq A ⦄ where
    open import Data.List.Membership.DecPropositional {a} {A} _≟_ renaming (_∈?_ to _∈ˡ?_)
    _⊆ˡ?_ : (l L : List A) → Dec(l ⊆ˡ L)
    l ⊆ˡ? L = all? (_∈ˡ? L) l

  -- unused, but could be useful later:
  -- open import Data.List.Relation.Binary.Sublist.Heterogeneous using (Sublist)
  -- []⊆ : {l : List A} → Sublist _≡_ [] l
  -- []⊆ {[]} = ˢˡ[]
  -- []⊆ {_ ∷ _} = _ ˢˡ∷ʳ []⊆

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
