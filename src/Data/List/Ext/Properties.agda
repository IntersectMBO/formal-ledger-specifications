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

module _ {a}{A : Set a} ⦃ _ : DecEq A ⦄ where
  open import Data.List.Membership.DecPropositional {a} {A} _≟_ using (_∈?_)
  open Equivalence
  _⊆?_ : (l L : List A) → Dec(l ⊆ L)
  l ⊆? L = all? (_∈? L) l

  ¬[] : {x : A}{xs : List A} → ¬ ((x ∷ xs) ≡ [])
  ¬[] = λ ()

  -- add-head-subperm : {y : A}{l L : List A} → l ∈ subpermutations L → l ∈ subpermutations (y ∷ L)
  -- add-head-subperm = {!!}
  -- []∈subperm : {l : List A} → [] ∈ subpermutations l
  -- []∈subperm {[]} = here refl
  -- []∈subperm {x ∷ l} = there ([]∈subperm {l = l})

  -- unused, but could be useful later:
  -- subperm⇔⊆ : {l L : List A} → l ⊆ L ⇔ l ∈ subpermutations L
  -- subperm⇔⊆ {[]}{[]} = mk⇔ i ii
  --   where
  --   i : [] ⊆ [] → [] ∈ subpermutations []
  --   i = λ _ → here refl
  --   ii : [] ∈ subpermutations [] → [] ⊆ []
  --   ii = λ _ → All.[]
  -- subperm⇔⊆ {[]}{y ∷ ys} = mk⇔ i ii
  --   where
  --   i : All (_∈ (y ∷ ys)) [] → Any (_≡_ []) (subpermutations (y ∷ ys))
  --   i All.[] = []∈subperm{l = y ∷ ys}
  --   ii : Any (_≡_ []) (subpermutations (y ∷ ys)) → All (_∈ (y ∷ ys)) []
  --   ii x = All.[]
  -- subperm⇔⊆ {x ∷ xs} {[]} = mk⇔ {!!} {!!}
  -- subperm⇔⊆ {x ∷ xs} {y ∷ ys} = mk⇔ {!!} {!!}



  -- subperm⇔⊆ : {l L : List A} → (l ⊆ L) ⇔ l ∈ subpermutations L
  -- subperm⇔⊆ {x ∷ xs} {[]} = mk⇔ i ii
  --   where
  --   i : All (_∈ []) (x ∷ xs) → Any (_≡_ (x ∷ xs)) (subpermutations [])
  --   i l⊆L = ⊥-elim (¬Any[] (lookup l⊆L (here refl)))
  --   ii : Any (_≡_ (x ∷ xs)) (subpermutations []) → All (_∈ []) (x ∷ xs)
  --   ii (here px) = ⊥-elim (¬[] px)
  --   ii (there ())
  -- subperm⇔⊆ {[]}{[]} = {!!}
  -- subperm⇔⊆ {[]}{y ∷ ys} = mk⇔ i ii
  --   where
  --   i : [] ⊆ (y ∷ ys) → [] ∈ subpermutations (y ∷ ys)
  --   i = {!!}
  --   ii : [] ∈ subpermutations (y ∷ ys) → [] ⊆ (y ∷ ys)
  --   ii = {!!}

  -- subperm⇔⊆ {x ∷ xs} {y ∷ ys} = mk⇔ i ii
  --   where
  --   open Equivalence
  --   i : All (_∈ (y ∷ ys)) (x ∷ xs) → Any (_≡_ (x ∷ xs)) (subpermutations (y ∷ ys))
  --   i (px All.∷ h) = goal
  --     where
  --     ξ : xs ∈ˡ subpermutations (y ∷ ys)
  --     ξ = {!!}
  --     goal : (x ∷ xs) ∈ (subpermutations (y ∷ ys))
  --     goal = {!!}
  --   ii : Any (_≡_ (x ∷ xs)) (subpermutations (y ∷ ys)) → All (_∈ (y ∷ ys)) (x ∷ xs)
  --   ii = {!!}


  -- subperm⇔⊆ : {x : A}{xs L : List A} → ((x ∷ xs) ⊆ L) ⇔ x ∷ xs ∈ subpermutations L
  -- subperm⇔⊆ {x}{xs} {[]} = mk⇔ i ii
  --   where
  --   i : All (_∈ []) (x ∷ xs) → Any (_≡_ (x ∷ xs)) (subpermutations [])
  --   i l⊆L = ⊥-elim (¬Any[] (lookup l⊆L (here refl)))
  --   ii : Any (_≡_ (x ∷ xs)) (subpermutations []) → All (_∈ []) (x ∷ xs)
  --   ii (here px) = ⊥-elim (¬[] px)
  --   ii (there ())

  -- subperm⇔⊆ {x} {xs} {y ∷ ys} = mk⇔ i ii
  --   where
  --   open Equivalence
  --   i : All (_∈ (y ∷ ys)) (x ∷ xs) → Any (_≡_ (x ∷ xs)) (subpermutations (y ∷ ys))
  --   i (px All.∷ h) = goal
  --     where
  --     ξ : xs ∈ˡ subpermutations (y ∷ ys)
  --     ξ = {!!}
  --     goal : (x ∷ xs) ∈ (subpermutations (y ∷ ys))
  --     goal = {!!}
  --   ii : Any (_≡_ (x ∷ xs)) (subpermutations (y ∷ ys)) → All (_∈ (y ∷ ys)) (x ∷ xs)
  --   ii = {!!}

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
