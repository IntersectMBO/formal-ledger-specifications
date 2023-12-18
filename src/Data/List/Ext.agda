{-# OPTIONS --safe #-}

module Data.List.Ext where

open import Ledger.Prelude hiding (All; all?) -- using (0ℓ; _⊆_; _∈_; fromList; ∈-fromList; proj₁; proj₂)
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List renaming (map to lmap) -- ; _∈_ to _∈ˡ_)
open import Data.List.Properties using (∷-injective)
-- open import Data.List.Relation.Binary.Subset.Setoid
--   {c ℓ} (S : Setoid c ℓ) where

open import Data.Maybe
open import Data.List.Relation.Unary.All using (All; all?)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Function using (_∘_)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Core

-- In Data.List.Relation.Unary.All:
--
-- data All {A : Set a} (P : Pred A p) : Pred (List A) (a ⊔ p) where
--   []  : All P []
--   _∷_ : ∀ {x xs} (px : P x) (pxs : All P xs) → All P (x ∷ xs)
-- return all sublists of the given list

-- In Data.List.Properties:
--
-- ≡-dec : DecidableEquality A → DecidableEquality (List A)
-- ≡-dec _≟_ []       []       = yes refl
-- ≡-dec _≟_ (x ∷ xs) []       = no λ()
-- ≡-dec _≟_ []       (y ∷ ys) = no λ()
-- ≡-dec _≟_ (x ∷ xs) (y ∷ ys) = ∷-dec (x ≟ y) (≡-dec _≟_ xs ys)

module _ {ℓ : Level}{A : Set ℓ} where
  -- prepend a to every input list
  _+++_ : A → List (List A) → List (List A)
  a +++ [] = [ a ∷ [] ]
  a +++ (l ∷ ls) = (a ∷ l) ∷ (a +++ ls)

  lem : (l : List A)(ls : List (List A))(a : A) → l ∈ˡ a +++ ls → l ≡ [] ⊎ head l ≡ just a
  lem [] ls a x = inj₁ refl
  lem (a' ∷ l) [] a (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  lem (a' ∷ l) (ls ∷ ls₁) a (here px) = inj₂ (cong just (proj₁ (∷-injective px)))
  lem (a' ∷ l) (ls ∷ ls₁) a (there h) = lem (a' ∷ l) ls₁ a h

  Lem:a∈+++ : (ls : List (List A))(a : A) → All (a ∈ˡ_) (a +++ ls)
  Lem:a∈+++ [] a = here refl All.∷ All.[]
  Lem:a∈+++ (l ∷ ls) a = (here refl) All.∷ (Lem:a∈+++ ls a)

  sublists : List A → List (List A)
  sublists [] = []
  sublists (x ∷ xs) =  x +++ sublists xs  -- sublists including x
                       ++ sublists xs     -- sublists omitting x
  -- sublists : List A → List (List A)
  -- sublists = Any (λ

  _⊆ˡ_ : (l l' : List A) → Set _
  l ⊆ˡ l' = All (_∈ˡ l') l

  emptylem : ∀ (l : List A) → [] ⊆ˡ l
  emptylem l = All.[]

-- data Sublist : REL (List A) (List B) (a ⊔ b ⊔ r) where
--   []   : Sublist [] []
--   _∷ʳ_ : ∀ {xs ys} → ∀ y → Sublist xs ys → Sublist xs (y ∷ ys)
--   _∷_  : ∀ {x xs y ys} → R x y → Sublist xs ys → Sublist (x ∷ xs) (y ∷ ys)

Lem:inl : ∀{ℓ}{A : Set ℓ} → (l l' : List A)(x : A) → x ∈ˡ l → x ∈ˡ l ++ l'
Lem:inl .(_ ∷ _) _ _ (here px) = here px
Lem:inl .(_ ∷ _) l' x (there y) = there (Lem:inl _ l' x y)

-- Lem:inr : ∀{ℓ}{A : Set ℓ} → (l l' : List A)(x : A) → x ∈ˡ l' → x ∈ˡ l ++ l'
-- Lem:inr {ℓ} {A} l .(_ ∷ _) x (here px) = {!!}
-- Lem:inr {ℓ} {A} l .(_ ∷ _) x (there x₁) = {!!}

-- Lem:empty' : [] ∈ˡ [ [] ]
-- Lem:empty' = here refl

module _ {ℓ : Level}{A : Set ℓ} ⦃ _ : DecEq A ⦄ where

  Lem:prepend : (l : List A)(ll : List (List A))(a : A) → l ∈ˡ ll → a ∷ l ∈ˡ a +++ ll
  Lem:prepend l .(_ ∷ _) a (here px) = here (cong (a ∷_) px)
  Lem:prepend l .(_ ∷ _) a (there l∈xs) = there (Lem:prepend l _ a l∈xs)

-- _∈ˡ_ : A → List A → Set _
-- x ∈ˡ xs = Any (x ≈_) xs


module _ {ℓ : Level}{A : Set ℓ} where

  -- open Sublist {A = A}{B = A}


  l∈sublists' : (l : List A) → Sublist _≡_ l l
  l∈sublists' [] = []
  l∈sublists' (x ∷ l) = refl ∷ l∈sublists' l

  -- sublists-trans : (l₁ l₂ l₃ : List A) → Sublist _≡_ l₁ l₂ → Sublist _≡_ l₂ l₃ → Sublist _≡_ l₁ l₃
  -- sublists-trans = {!!}

  allLem : {l L : List A}(a : A) → All (_∈ˡ L) l → All (_∈ˡ a ∷ L) l
  allLem {.[]} {L} a All.[] = All.[]
  allLem {.(_ ∷ _)} {L} a (px All.∷ x) = there px All.∷ allLem a x

  Lem:sublist⊆list : (l L : List A) → Sublist _≡_ l L → All (_∈ˡ L) l
  Lem:sublist⊆list .[] .[] [] = All.[]
  Lem:sublist⊆list l .(y ∷ _) (y Sublist.∷ʳ s) = allLem y (Lem:sublist⊆list l _ s)
  Lem:sublist⊆list .(_ ∷ _) .(_ ∷ _) (x ∷ s) = (here x) All.∷ (allLem _ (Lem:sublist⊆list _ _ s))

module _ {ℓ : Level}{A : Set ℓ} where

  -- insert a at every position of the given list
  _inserts_ : List A → A → List (List A)
  [] inserts a = (a ∷ []) ∷ []
  (x ∷ xs) inserts a = (a ∷ x ∷ xs) ∷ lmap (λ l → x ∷ l) (xs inserts a)

  -- insert a at every position of every input list
  foreach_inserts_ : List (List A) → A → List (List A)
  foreach [] inserts a = [] inserts a
  foreach (l ∷ []) inserts a = l inserts a
  foreach (l ∷ ls) inserts a = (l inserts a) ++ (foreach ls inserts a)

  -- return all permutations of the given list
  permutations : List A → List (List A)
  permutations [] = []
  permutations (x ∷ xs) = foreach (permutations xs) inserts x

  -- return all permutations of every input list
  allPermutations : List (List A) → List (List A)
  allPermutations [] = []
  allPermutations (l ∷ ls) = permutations l ++ allPermutations ls

  -- return all permutations of every sublist of the given list
  subpermutations : List A → List (List A)
  subpermutations = allPermutations ∘ sublists

  open import Relation.Binary.Core using (REL)

  -- sublists⊆subpermutations : (l : List A) → All (_∈ˡ subpermutations l) (sublists l)
  -- sublists⊆subpermutations [] = All.[]
  -- sublists⊆subpermutations (x ∷ l) = {!!}
  data Subperm : REL (List A) (List A) ℓ where
    []   : Subperm [] []
    _∷ₚʳ_ : ∀ {xs ys} → ∀ y → Subperm xs ys → Subperm xs (y ∷ ys)
    _∷ₚ_  : ∀ {x xs y ys} → x ∈ˡ y ∷ ys → Subperm (x ∷ xs) (y ∷ ys)

  open import Relation.Binary.Definitions
    using (Decidable)


  -- subperm? : Decidable (Subperm)
  -- subperm? = {!!}
  -- []       ys       = yes (minimum ys)
  -- sublist? (x ∷ xs) []       = no λ ()
  -- sublist? (x ∷ xs) (y ∷ ys) with R? x y
  -- ... | true  because  [r] =
  --   Dec.map (∷⁻¹  (invert  [r])) (sublist? xs ys)
  -- ... | false because [¬r] =
  --   Dec.map (∷ʳ⁻¹ (invert [¬r])) (sublist? (x ∷ xs) ys)


  sublists⊆subpermutations : (l x : List A) → Sublist _≡_ x l → Subperm x l
  sublists⊆subpermutations .[] .[] [] = []
  sublists⊆subpermutations .(y ∷ _) x (y Sublist.∷ʳ x⊆l) = y ∷ₚʳ sublists⊆subpermutations _ x x⊆l
  sublists⊆subpermutations .(_ ∷ _) .(_ ∷ _) (x ∷ x⊆l) = _∷ₚ_ (here x)


  -- sublists⊆subpermutations : (l x : List A) → Sublist _≡_ x l → x ∈ˡ subpermutations l
  -- sublists⊆subpermutations .[] .[] [] = {!!}
  -- sublists⊆subpermutations .(y ∷ _) x (y Sublist.∷ʳ x₁) = {!!}
  -- sublists⊆subpermutations .(_ ∷ _) .(_ ∷ _) (x ∷ x₁) = {!!}



  -- list⊆fromList : ∀{A : Set}{a : A}{l : List A} → a ∈ˡ l → a ∈ fromList l
  -- list⊆fromList {A} {a} {l} a∈l = {!!}

  -- ∈-fromList : ∀ {a} → a ∈ˡ l ⇔ a ∈ fromList l
  -- ∈-fromList = proj₂ $ listing _


-- subpermutation⊆list : ∀{A : Set}(l x : List A)
--   → x ∈ˡ subpermutations l → All (_∈ˡ l) x
-- subpermutation⊆list {A} l [] x∈perms = All.[]
-- subpermutation⊆list {A} l (a ∷ xs) x∈perms = {!!}

-- subpermutations⊆fromList : ∀{A : Set}(l x : List A)
--   → x ∈ˡ subpermutations l → fromList x ⊆ fromList l
-- subpermutations⊆fromList {A} l x x∈perms {a} a∈xset = goal
--   where
--   open Equivalence
--   ξ : a ∈ˡ l
--   ξ = {!!}
--   goal : a ∈ fromList l
--   goal = to ∈-fromList ξ


-- fromList⊆subpermutations : ∀{A : Set}(l x : List A)
--   → fromList x ⊆ fromList l → x ∈ˡ subpermutations l
-- fromList⊆subpermutations {A} [] [] xset⊆lset = {!!}
-- fromList⊆subpermutations {A} (x ∷ l) [] xset⊆lset = {!!}
-- fromList⊆subpermutations {A} l (x ∷ x₁) xset⊆lset = {!!}
  -- where
  -- goal : x ∈ˡ (subpermutations l)
  -- goal = {!!}

  -- ∈-fromList : ∀ {a} → a ∈ˡ l ⇔ a ∈ fromList l
  -- ∈-fromList = proj₂ $ listing _


  -- lem : (a : A)(l x : List A) → x ∈ˡ a +++ sublists l
  --   → head x ≡ just a
  -- lem a [] [] x∈ = {!!}
  -- lem a (x ∷ l) [] x∈ = {!!}
  -- lem a l (x ∷ x₁) x∈ = {!!}


  -- l∈sublists : (l : List A) → l ∈ˡ sublists l
  -- l∈sublists [] = here refl
  -- l∈sublists (x ∷ xs) = goal
  --   where
  --   γ : x ∷ xs ∈ˡ x +++ sublists xs
  --   γ = Lem:prepend xs (sublists xs) x (l∈sublists xs)

  --   goal : x ∷ xs ∈ˡ (x +++ sublists xs) ++ sublists xs
  --   goal = Lem:inl (x +++ sublists xs) (sublists xs) (x ∷ xs) γ
