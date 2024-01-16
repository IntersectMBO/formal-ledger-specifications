{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm.Properties {a}{A : Set a} where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.List using (List; [_]; []; _++_; head; tail; length) renaming (map to mapˡ)
open import Data.Nat using (_<_)
open import Data.List.Properties using (∷-injective)
open import Data.List.Ext
open import Data.List.Ext.Properties using (addhead⊆; ⊆⇔head∈tail⊆; ∈⊆→∈; toAny; ∷⁻¹)
open import Data.List.Ext.Subperm
open import Data.List.Membership.Propositional using (_∈_; _∉_)
import Data.List.Membership.DecPropositional as Dec∈
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.Maybe
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax)
open import Data.Sum.Base using (_⊎_; inj₁; inj₂)
open import Function using (_∘_; _⇔_; mk⇔; id; Equivalence)
open import Level using (Level)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using (Min) renaming (Decidable to Dec₂)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong; subst)
open import Relation.Nullary using (yes; no; ¬_)
open import Relation.Nullary.Decidable using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable)

private variable p : Level

open Equivalence
open List
-----------------------------------------
--------- Properties of Subperm ---------
-----------------------------------------

-- deconstructors --
∷ᴸ⁻ : {l : List A}{xs : List A}{x : A} → Subperm (x ∷ xs) l → x ∈ l
∷ᴸ⁻ (_ ∷ʳ p) = there (∷ᴸ⁻ p)
∷ᴸ⁻ (x∈ys ∷ _) = x∈ys

∷ᴿ⁻ : {l : List A}{xs : List A}{x : A} → Subperm (x ∷ xs) l → Subperm xs l
∷ᴿ⁻ (_ ∷ʳ p) = _ ∷ʳ (∷ᴿ⁻ p)
∷ᴿ⁻ (_ ∷ Spxsl) = Spxsl

minimum : Min (Subperm{A = A}) []
minimum []       = []
minimum (x ∷ xs) = _ ∷ʳ (minimum xs)

-- [] is a subperm of every list --
Subperm[] : ∀{l} → Subperm [] l
Subperm[] {l} = minimum l

-- no non-empty list is a subperm of [] --
¬Subperm[] : {x : A}{xs : List A} → ¬ Subperm (x ∷ xs) []
¬Subperm[](x∈[] ∷ p) = ⊥-elim (¬Any[] x∈[])

-- [] is a subperm of [] --
[]→Subperm[] : {xs : List A} → xs ≡ [] → Subperm xs []
[]→Subperm[] = λ xs≡[] → subst (λ x → Subperm x []) (sym xs≡[]) []

-- [] is the only subperm of [] --
Subperm[]→[] : {xs : List A} → Subperm xs [] → xs ≡ []
Subperm[]→[] {[]} _ = refl
Subperm[]→[] {x ∷ xs} spxs[] = ⊥-elim (¬Subperm[] spxs[])

-- Subperm xs [] iff xs ≡ [] --
Subperm[]⇔[] : {xs : List A} → Subperm xs [] ⇔ xs ≡ []
Subperm[]⇔[] = mk⇔ Subperm[]→[] []→Subperm[]

-- if (x ∷ xs) is a subperm of l, then x ∈ l and xs is a subperm of l --
Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
Subperm⁻¹ (x∈l ∷ xsSPl) = x∈l , xsSPl
Subperm⁻¹ (y ∷ʳ sp) = there (proj₁ SP) , y ∷ʳ(proj₂ SP)
  where SP = Subperm⁻¹ sp

----------------------------------------------------------------
------- a subset is a subperm and a subperm is a subset --------
----------------------------------------------------------------
⊆⇔Subperm : {l L : List A} → l ⊆ L ⇔ Subperm l L
⊆⇔Subperm {[]} = mk⇔ (λ _ → Subperm[]) λ x → All.[]
⊆⇔Subperm {x ∷ xs}{[]} = mk⇔ (λ l⊆[] → ⊥-elim (¬Any[] (lookup l⊆[] (here refl)))) λ Spl[] → ⊥-elim (¬Subperm[] Spl[])
⊆⇔Subperm {x ∷ xs}{y ∷ ys} = mk⇔ i ii
  where
  i : (x ∷ xs) ⊆ (y ∷ ys) → Subperm (x ∷ xs) (y ∷ ys)
  i p = (proj₁ (to ⊆⇔head∈tail⊆ p)) ∷ (to ⊆⇔Subperm (proj₂ (to ⊆⇔head∈tail⊆ p)))

  ii : Subperm (x ∷ xs) (y ∷ ys) → (x ∷ xs) ⊆ (y ∷ ys)
  ii (_ ∷ʳ p) = addhead⊆ (from ⊆⇔head∈tail⊆ (∷ᴸ⁻ p , from ⊆⇔Subperm (∷ᴿ⁻ p)))
  ii (x∈l ∷ p) = from ⊆⇔head∈tail⊆ (x∈l , from ⊆⇔Subperm p)


module _ {A : Set a} where
  ¬[]≡x∷xs : {xs : List A}{x : A} → ¬ [] ≡ x ∷ xs
  ¬[]≡x∷xs ()

  ¬[]∈x∷ls : {ls : List (List A)}{x : A} → ¬ ([] ∈ (mapˡ (List._∷_ x) ls))
  ¬[]∈x∷ls {_ ∷ _} (there p) = ¬[]∈x∷ls p

  xs≡[] : {xs : List A}{x : A} → x ∷ [] ≡ x ∷ xs → [] ≡ xs
  xs≡[] refl = refl

  insert-head : {l : List A}{x : A} → head (insert x everywhereIn l) ≡ just (x ∷ l)
  insert-head {[]} = refl
  insert-head {_ ∷ _} = refl

  ------------------------------------------------------
  ------- properties of list operations ++ and ⊎ -------
  ------------------------------------------------------
  ∈++ˡ : {ll lr : List A}{x : A} → x ∈ ll → x ∈ ll ++ lr
  ∈++ˡ (here refl) = here refl
  ∈++ˡ (there x∈ys) = there (∈++ˡ x∈ys)

  ∈++ʳ : {ll lr : List A}{x : A} → x ∈ lr → x ∈ ll ++ lr
  ∈++ʳ {[]} = id
  ∈++ʳ {_ ∷ _} p = there (∈++ʳ p)

  ⊎-elim-++ : {ll lr : List A}{x : A} → x ∈ ll ⊎ x ∈ lr → x ∈ ll ++ lr
  ⊎-elim-++ (inj₁ x∈ll) = ∈++ˡ x∈ll
  ⊎-elim-++ (inj₂ x∈lr) = ∈++ʳ x∈lr

  ∈++→∈⊎ : {ll lr : List A}{x : A} → x ∈ ll ++ lr → x ∈ ll ⊎ x ∈ lr
  ∈++→∈⊎ {[]} x∈[] = inj₂ x∈[]
  ∈++→∈⊎ {_ ∷ _} (here refl) = inj₁ (here refl)
  ∈++→∈⊎ {_ ∷ _} (there x∈ys) with (∈++→∈⊎ x∈ys)
  ...| inj₁ y∈ys = inj₁ (there y∈ys)
  ...| inj₂ x∈ll = inj₂ x∈ll

  ∈-++⇔∈⊎ : {ll lr : List A}{x : A} → (x ∈ ll ++ lr) ⇔ (x ∈ ll ⊎ x ∈ lr)
  ∈-++⇔∈⊎ = mk⇔ (λ x∈ → ∈++→∈⊎ x∈) ⊎-elim-++

  ++head : {l xs : List A}{x : A} → head ((x ∷ xs) ++ l) ≡ just x
  ++head = refl

  ++head¬[] : {ll lr : List A} → ¬ ll ≡ [] → head (ll ++ lr) ≡ head ll
  ++head¬[] {[]} ¬ll[] = ⊥-elim (¬ll[] refl)
  ++head¬[] {_ ∷ _} ¬ll[] = refl


  --------------------------------
  ------- properties of +∷ -------
  --------------------------------
  ∈-+∷[] : {x : A} → x ∷ [] ∈ x +∷ []
  ∈-+∷[] = here refl

  ∈-+∷ : {ls : List (List A)}{x : A} → x ∷ [] ∈ x +∷ ls
  ∈-+∷ {[]} = here refl
  ∈-+∷ {l ∷ ls} = there ∈-+∷

  ∈+∷→head≡ : {ls : List (List A)}{l : List A}{x y : A} → x ∷ l ∈ y +∷ ls → x ≡ y
  ∈+∷→head≡ {[]} (here refl) = refl
  ∈+∷→head≡ {_ ∷ _} (here refl) = refl
  ∈+∷→head≡ {_ ∷ _} (there xl∈) = ∈+∷→head≡ xl∈

  ∈+∷→tail∈ : {ls : List (List A)}{zs : List A}{x z : A} → x ∷ z ∷ zs ∈ x +∷ ls → z ∷ zs ∈ ls
  ∈+∷→tail∈ {[]} (here ())
  ∈+∷→tail∈ {l ∷ ls} (here refl) = here refl
  ∈+∷→tail∈ {l ∷ ls} (there xxs∈) = there (∈+∷→tail∈ xxs∈)

  ∈+∷→head×tail : {ls : List (List A)}{zs : List A}{x y z : A} → x ∷ z ∷ zs ∈ y +∷ ls → x ≡ y × z ∷ zs ∈ ls
  ∈+∷→head×tail {ls} {zs} {x}{y}{z} xzzs∈ =
    ∈+∷→head≡ xzzs∈ , ∈+∷→tail∈ (subst (λ u → x ∷ z ∷ zs ∈ (u +∷ ls)) (sym (∈+∷→head≡ xzzs∈)) xzzs∈)

  ∈+∷→tail∈' : {ls : List (List A)}{xs : List A}{x : A} → x ∷ xs ∈ x +∷ ls → ¬ xs ≡ [] → xs ∈ ls
  ∈+∷→tail∈' {[]} {.[]} {x} (here refl) ¬xs[] = ⊥-elim (¬xs[] refl)
  ∈+∷→tail∈' {l ∷ ls} (here refl) _ = here refl
  ∈+∷→tail∈' {l ∷ ls} (there xxs∈) ¬xs[] = there (∈+∷→tail∈' xxs∈ ¬xs[])

  ∈+∷→head×tail' : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ y +∷ ls → ¬ xs ≡ [] → x ≡ y × xs ∈ ls
  ∈+∷→head×tail' {ls} {xs} {x} xxs∈ ¬xs[] =
    ∈+∷→head≡ xxs∈ , ∈+∷→tail∈' (subst (λ u → x ∷ xs ∈ (u +∷ ls)) (sym (∈+∷→head≡ xxs∈)) xxs∈) ¬xs[]


  ∈→∈-+∷ : {ls : List (List A)}{l : List A}{x : A} → l ∈ ls → x ∷ l ∈ x +∷ ls
  ∈→∈-+∷ (here refl) = here refl
  ∈→∈-+∷ (there l∈ls') = there (∈→∈-+∷ l∈ls')

  ¬[]∈+∷ : {ls : List (List A)}{x : A} → ¬ [] ∈ x +∷ ls
  ¬[]∈+∷ {[]} (here ())
  ¬[]∈+∷ {[]} (there ())
  ¬[]∈+∷ {l ∷ ls} (there p) = ¬[]∈+∷ p

-- +∷distr++ : {ls ls' : List (List A)}{x : A}
--   → x +∷ (ls ++ ls') ≡ (x +∷ ls) ++ (x +∷ ls')
-- +∷distr++ {[]} {ls'} {l} {l'} {x} = {!!}
-- +∷distr++ {ls ∷ ls₁} {ls'} {l} {l'} {x} = {!!}

--------------------------------------------------
------- properties of insert_everywhereIn_ -------
--------------------------------------------------
¬insert[] : {l : List A}{x : A} → ¬ insert x everywhereIn l ≡ []
¬insert[] {[]} insert[] = ¬[]≡x∷xs (sym insert[])
¬insert[] {_ ∷ _} insert[] = ¬[]≡x∷xs (sym insert[])

¬[]∈insert : {l : List A}{x : A} → ¬ [] ∈ insert x everywhereIn l
¬[]∈insert {[]} (here px) = ¬[]≡x∷xs px
¬[]∈insert {y ∷ ys} (there p) = ¬[]∈x∷ls p

¬[]∈insertAll : {ls : List (List A)}{x : A} → ¬ [] ∈ insert x everywhereInAll ls
¬[]∈insertAll {[]} = λ ()
¬[]∈insertAll {l ∷ ls} []∈ with (∈++→∈⊎ []∈)
...| inj₁ v = ¬[]∈insert v
...| inj₂ v = ¬[]∈insertAll{ls} v

∈insert : {l : List A}{x : A} → x ∷ l ∈ insert x everywhereIn l
∈insert {[]} = here refl
∈insert {_ ∷ _} = here refl

∈→∈insertAll : {l : List A}{ls : List (List A)}{x : A} → l ∈ ls → x ∷ l ∈ insert x everywhereInAll ls
∈→∈insertAll {l} {.(l ∷ xs)} {x} (here {.l} {xs} refl) = ∈++ˡ {ll = insert x everywhereIn l} ∈insert
∈→∈insertAll {l} {.(l' ∷ _)} {x} (there {l'} l∈ls) = ∈++ʳ {ll = insert x everywhereIn l'} (∈→∈insertAll l∈ls)

insertInAll-head' : {ls : List (List A)}{x : A} →
                    head (insert x everywhereInAll ls) ≡ headM (insert x everywhereInM (head ls))
insertInAll-head' {[]} = refl
insertInAll-head' {_ ∷ _} = ++head¬[] ¬insert[]


-- tail-lem : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ mapˡ (_∷_ y) ls → x ≡ y × xs ∈ ls
-- tail-lem = {!!}

-- insert⁻¹ : {l xs : List A}{x : A} → l ∈ insert x everywhereIn xs → x ∈ l
-- insert⁻¹ {[]} {xs} {x} p = ⊥-elim (¬[]∈insert p)
-- insert⁻¹ {y ∷ .[]} {[]} {.y} (here refl) = here refl
-- insert⁻¹ {y ∷ .(x₁ ∷ xs)} {x₁ ∷ xs} {.y} (here refl) = here refl
-- insert⁻¹ {y ∷ ys} {x₁ ∷ xs} {x} (there p) = there (insert⁻¹ (proj₂ (tail-lem p)))


-- insertInAll⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ insert x everywhereInAll ls → x ∈ l
-- insertInAll⁻¹ {ls} {[]} {x} p = ⊥-elim (¬[]∈insertAll{ls} p)
-- insertInAll⁻¹ {l ∷ ls} {y ∷ ys} {x} p with (∈++→∈⊎{ll = insert x everywhereIn l} p)
-- ...| inj₁ v = insert⁻¹{y ∷ ys} v
-- ...| inj₂ v = insertInAll⁻¹{ls} v


-- allPerms-head⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ allPermutations(x +∷ ls) → x ∈ l
-- allPerms-head⁻¹ {[]} (here refl) = here refl
-- allPerms-head⁻¹ {l' ∷ ls}{l}{x} p with (∈++→∈⊎{ll = permutations (x ∷ l')} p)
-- -- permutations (x ∷ l') = insert a everywhereInAll (permutations as)
-- ...| inj₁ v = {!!}
-- ...| inj₂ v = {!!}


--------------------------------------
------- properties of sublists -------
--------------------------------------

x∷[]∈-sublists : {l : List A}{x : A} → x ∈ l → x ∷ [] ∈ sublists l
x∷[]∈-sublists {x ∷ xs} (here refl) = ⊎-elim-++ {ll = x +∷ sublists xs} (inj₁ ∈-+∷)
x∷[]∈-sublists {x = x}(there {y} x∈l) = ⊎-elim-++ (inj₂ (x∷[]∈-sublists x∈l))

sublists-head∈ : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → x ∈ l
sublists-head∈ {y ∷ ys} xxs∈ with (∈++→∈⊎{ll = y +∷ sublists ys} xxs∈)
...| inj₁ v = here (∈+∷→head≡ v)
...| inj₂ v = there (sublists-head∈ v)

sublists-head∈-contra : {l xs : List A}{x : A} → ¬ x ∈ l → ¬ x ∷ xs ∈ sublists l
sublists-head∈-contra ¬x∈l xxs∈sl = ¬x∈l (sublists-head∈ xxs∈sl)


+∷sublists : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → ¬ xs ≡ [] → x ≡ y × xs ∈ sublists ys
+∷sublists {xs} {ys} {x} {y} p ¬xs[] = (∈+∷→head≡ p) , proj₂ (∈+∷→head×tail' p ¬xs[])

+∷sublists' : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → x ≡ y × (xs ≡ [] ⊎ xs ∈ sublists ys)
+∷sublists' {[]} {ys} {x} {y} p = ∈+∷→head≡ p , inj₁ refl
+∷sublists' {z ∷ xs} {ys} {x} {y} p = ∈+∷→head≡ p , inj₂ (proj₂ (∈+∷→head×tail{ls = sublists ys} p))

sublists-tail∈ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → z ∷ zs ∈ sublists l
sublists-tail∈ {y ∷ ys} {zs} {x}{z} x∈ with (∈++→∈⊎{ll = y +∷ sublists ys} x∈)
...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈{l = ys} v)
...| inj₁ v = ∈++ʳ (∈+∷→tail∈ ξ)
  where
  ξ : x ∷ z ∷ zs ∈ x +∷ sublists ys
  ξ = subst (λ w → x ∷ z ∷ zs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

sublists-tail∈' : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → ¬ xs ≡ [] → xs ∈ sublists l
sublists-tail∈' {y ∷ ys} {xs} {x} x∈ ¬xs[] with (∈++→∈⊎{ll = y +∷ sublists ys} x∈)
...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈'{l = ys} v ¬xs[])
...| inj₁ v = ∈++ʳ (∈+∷→tail∈' ξ ¬xs[])
  where
  ξ : x ∷ xs ∈ x +∷ sublists ys
  ξ = subst (λ w → x ∷ xs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

sublists⁻¹ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → x ∈ l × z ∷ zs ∈ sublists l
sublists⁻¹ {l} xxs∈sl = sublists-head∈ xxs∈sl , (sublists-tail∈{l}) xxs∈sl

--------------------------------------------------------------
------- properties of permutations and allPermutations -------
--------------------------------------------------------------

-- x ∷ xs is a permutation of itself --
∈-permutations : {x : A} {xs : List A} → x ∷ xs ∈ permutations (x ∷ xs)
∈-permutations {x} {[]} = here refl
∈-permutations {x} {y ∷ ys} = ∈→∈insertAll ξ
  where
  ξ : y ∷ ys ∈ (permutations (y ∷ ys))
  ξ = ∈-permutations

∈-allPermutations : {ls : List (List A)}{xs : List A}{x : A} → x ∷ xs ∈ ls → x ∷ xs ∈ allPermutations ls
∈-allPermutations {.(_ ∷ _) ∷ ls}{xs}{x} (here refl) = ∈++ˡ {ll = permutations (x ∷ xs)} ∈-permutations
∈-allPermutations {l ∷ ls} {xs}{x} (there xxs∈ls) = ∈++ʳ {ll = permutations l} (∈-allPermutations xxs∈ls)

¬[]∈permutations : {l : List A} → ¬ [] ∈ permutations l
¬[]∈permutations {_ ∷ []} (here px) = ¬[]≡x∷xs px
¬[]∈permutations {_ ∷ []} (there ())
¬[]∈permutations {x ∷ y ∷ l} []∈ = ¬[]∈insertAll{ls = permutations (y ∷ l)}{x = x} []∈

¬[]∈allPermutations : {ls : List (List A)} → ¬ [] ∈ allPermutations ls
¬[]∈allPermutations {[]} = λ ()
¬[]∈allPermutations {l ∷ ls} []∈
  with (∈++→∈⊎{ll = permutations l} []∈)
...| inj₁ v = ¬[]∈permutations{l} v
...| inj₂ v = ¬[]∈allPermutations{ls} v

perm-head : {xs : List A}{x : A} → head (permutations (x ∷ xs)) ≡ just (x ∷ xs)
perm-head {[]} = refl
perm-head {y ∷ ys}{x} = trans (insertInAll-head'{ls = permutations (y ∷ ys)})
                           (cong (λ u → headM (insert x everywhereInM u)) perm-head)

allPerm++ˡ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations ll → xs ∈ allPermutations (ll ++ lr)
allPerm++ˡ {ls ∷ ls₁} {ls'} xs∈allPerm with (∈++→∈⊎{ll = permutations ls} xs∈allPerm)
...| inj₁ v = ⊎-elim-++ (inj₁ v)
...| inj₂ v = ⊎-elim-++ (inj₂ (allPerm++ˡ{ll = ls₁} v))

allPerm++ʳ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations lr → xs ∈ allPermutations (ll ++ lr)
allPerm++ʳ {[]} xs∈allPerm = xs∈allPerm
allPerm++ʳ {ls ∷ ls₁} xs∈allPerm = ∈++ʳ {ll = permutations ls}(allPerm++ʳ{ll = ls₁} xs∈allPerm)


allPerm-++-⊎-intro : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations (ll ++ lr)
                     → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
allPerm-++-⊎-intro {[]} = inj₂
allPerm-++-⊎-intro {l' ∷ ls}{lr} {l = l} l∈ with ∈++→∈⊎{ll = permutations l'}{lr = allPermutations (ls ++ lr)} l∈
...| inj₁ v = inj₁ (⊎-elim-++ (inj₁ v))
...| inj₂ v with (allPerm-++-⊎-intro{ll = ls} v)
...| inj₁ w = inj₁ (∈++ʳ{ll = permutations l'} w)
...| inj₂ w = inj₂ w

allPerm-++-⊎-elim : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
                    → l ∈ allPermutations (ll ++ lr)
allPerm-++-⊎-elim {ll} (inj₁ x) = allPerm++ˡ{ll = ll} x
allPerm-++-⊎-elim {ll} (inj₂ y) = allPerm++ʳ{ll = ll} y

distrib-allPerms : {ll lr : List (List A)}{l : List A}
  → l ∈ allPermutations (ll ++ lr) ⇔ l ∈ (allPermutations ll) ++ (allPermutations lr)
distrib-allPerms {[]} = mk⇔ id id
distrib-allPerms {xs ∷ xss} {ys} {l} = mk⇔ i ii
  where -- TODO: clean up this proof
  i : l ∈ permutations xs ++ allPermutations (xss ++ ys)
      → l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
  i l∈ with (∈++→∈⊎ l∈)
  ...| inj₁ v = ⊎-elim-++ (inj₁ (⊎-elim-++ (inj₁ v)))
  ...| inj₂ v with (∈++→∈⊎ (to (distrib-allPerms{ll = xss}) v))
  ...| inj₁ w = ⊎-elim-++{ll = permutations xs ++ allPermutations xss} (inj₁ (⊎-elim-++ (inj₂ w)))
  ...| inj₂ w = ⊎-elim-++{ll = permutations xs ++ allPermutations xss} (inj₂ w)

  ii : l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
       → l ∈ permutations xs ++ allPermutations (xss ++ ys)
  ii l∈
    with (∈++→∈⊎{ll = permutations xs ++ allPermutations xss} l∈)
  ...| inj₂ v = ∈++ʳ (allPerm++ʳ{ll = xss} v)
  ...| inj₁ v
    with (∈++→∈⊎ v)
  ...| inj₁ w = ⊎-elim-++ (inj₁ w)
  ...| inj₂ w = ⊎-elim-++ {ll = permutations xs} (inj₂ (allPerm++ˡ{ll = xss} w))


----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------

¬[]∈subpermutations : {l : List A} → ¬ [] ∈ subpermutations l
¬[]∈subpermutations {[]} = λ ()
¬[]∈subpermutations {x ∷ xs} p = ¬[]∈allPermutations{ls = (x +∷ sublists xs ++ sublists xs)} p


head-perms-sublists : {xs ys : List A}{x y : A} → (x ∷ xs) ∈ allPermutations(y +∷ sublists ys) → ¬ x ≡ y
                      → x ∷ [] ∈ sublists ys
head-perms-sublists {.[]} {[]} {x} {.x} (here refl) ¬x≡x = ⊥-elim (¬x≡x refl)
head-perms-sublists {xs} {z ∷ ys} {x} {y} p ¬x≡y = goal
  where
  goal : x ∷ [] ∈ (z +∷ sublists ys) ++ sublists ys
  goal = {!!}


module _ ⦃ _ : DecEq A ⦄ where
  subperm-head∈ : {l xs : List A}{x : A} → (x ∷ xs) ∈ subpermutations l → x ∈ l
  subperm-head∈ {[]} {xs} ()
  subperm-head∈ {y ∷ ys} {xs}{x} p
    with allPerm-++-⊎-intro{ll = y +∷ sublists ys} p
  ...| inj₂ v = there (subperm-head∈ {l = ys} v)
  ...| inj₁ v with (x ≟ y)
  ...| yes x≡y = here x≡y
  ...| no ¬x≡y = there (sublists-head∈ ξ)
    where
    ξ : x ∷ [] ∈ sublists ys
    ξ = head-perms-sublists{ys = ys} v ¬x≡y

tail∈subperm : {l xs : List A}{x : A} → (x ∷ xs) ∈ subpermutations l → ¬ xs ≡ [] → xs ∈ subpermutations l
tail∈subperm {y ∷ ys} {xs} {x} p ¬xs[] = {!!}

-- p  : x ∷ xs ∈ subpermutations (y ∷ ys)
--    ⇔ x ∷ xs ∈ allPermutations (y +∷ sublists ys ++ sublists ys)
--  claim 1:   if x ∷ xs ∈ allPermutations (y +∷ sublists ys),
--             then either x ≡ y or x ∈ sublists ys
--  claim 2:   allPermutations (y +∷ sublists ys) ≡ insert y everywhereInAll allPermutations (sublists ys)


singleton∈subperm : {l : List A}{x : A} → x ∈ l → (x ∷ []) ∈ subpermutations l
singleton∈subperm {[]} x∈[] = ⊥-elim (¬Any[] x∈[])
singleton∈subperm {x ∷ ys}{.x} (here refl) = ∈-allPermutations (⊎-elim-++{ll = x +∷ sublists ys} (inj₁ ∈-+∷))
singleton∈subperm {y ∷ ys}{x} (there x∈y∷ys) =
  from (distrib-allPerms{ll = (y +∷ sublists ys)}) (∈++ʳ (∈-allPermutations (x∷[]∈-sublists x∈y∷ys)))


---------------------------------------------------
------------ Subperm ⇔ subpermutations ------------
---------------------------------------------------

_subperm_∷ʳ_ : (xs : List A)(y : A)(ys : List A) → xs ∈ subpermutations ys → xs ∈ subpermutations (y ∷ ys)
(xs subperm a ∷ʳ (y ∷ ys)) xs∈sp =
  from (distrib-allPerms{ll = a +∷ ((y +∷ sublists ys) ++ sublists ys)}) (∈++ʳ xs∈sp)

subperm∷' : (xs : List A) {x : A}{ys : List A} → x ∈ ys → xs ∈ subpermutations ys
          → (x ∷ xs) ∈ subpermutations ys
subperm∷' = {!!}


-- TODO: Prove the following to finish `allEnactable?` in `Ledger.Gov`.
--       Alternatively, prove `⊆⇔∈subpermutations` in Data.List.Ext.Properties`
--       and use that (since we have a proof of `(x ∷ xs) ⊆ l ⇔ Subperm (x ∷ xs) l`)
Subperm→∈subperms : {xs ys : List A} → ¬ xs ≡ [] → Subperm xs ys → xs ∈ subpermutations ys
Subperm→∈subperms x [] = ⊥-elim (x refl)
Subperm→∈subperms {xs} ¬xs[] (_∷ʳ_ {ys = ys} y Sp) = (xs subperm y ∷ʳ ys) (Subperm→∈subperms ¬xs[] Sp)
Subperm→∈subperms x (_∷_ {xs = []} x∈ys Sp[]) = singleton∈subperm x∈ys
Subperm→∈subperms {ys = ys} ¬xzzs[] (_∷_ {x} {xs = z ∷ zs} x∈ys Sp) = goal
  where
  ξ : z ∷ zs ∈ subpermutations ys
  ξ = Subperm→∈subperms (λ ()) Sp
  goal : x ∷ z ∷ zs ∈ subpermutations ys
  goal = subperm∷' (z ∷ zs) x∈ys ξ

module _ ⦃ _ : DecEq A ⦄ where

  ∈subperms→Subperm : {l L : List A} → l ∈ subpermutations L → Subperm l L
  ∈subperms→Subperm {[]} {L} p = ⊥-elim (¬[]∈subpermutations{l = L} p)
  ∈subperms→Subperm {x ∷ []} {y ∷ ys} p = subperm-head∈ p ∷ Subperm[]
  ∈subperms→Subperm {x ∷ z ∷ xs} {y ∷ ys} p =
    subperm-head∈ p ∷ (∈subperms→Subperm{l = z ∷ xs} (tail∈subperm{l = y ∷ ys} p (λ ())))


  Subperm⇔∈subperms : {xs L : List A}{x : A} → Subperm (x ∷ xs) L ⇔ (x ∷ xs) ∈ subpermutations L
  Subperm⇔∈subperms = mk⇔ (Subperm→∈subperms λ()) ∈subperms→Subperm


module _ {l : List A}{P : Pred (List A) p} {xs : List A} {xss : List (List A)} where
  toSum : AnySubpermOf P l (xs ∷ xss) → (P xs × Subperm xs l) ⊎ (Subperm xs l × AnySubpermOf P l xss)
  toSum (here pxs Spxsl) = inj₁ (pxs , Spxsl)
  toSum (there sp pxss) = inj₂ (sp , pxss)

  fromSum : (P xs × Subperm xs l) ⊎ (Subperm xs l × AnySubpermOf P l xss) → AnySubpermOf P l (xs ∷ xss)
  fromSum (inj₁ (pxs , Spxsl))  = here pxs Spxsl
  fromSum (inj₂ (sp , pxss)) = there sp pxss

module _ ⦃ _ : DecEq A ⦄ where
  subperm? : Dec₂ (Subperm)
  subperm? [] _ = yes Subperm[]
  subperm? (_ ∷ _) [] = no λ where (() ∷ _)
  subperm? (x ∷ xs) (y ∷ ys)
    with any?ˡ (x ≟_) (y ∷ ys)
  ... | no  x∉ = no (x∉ ∘ proj₁ ∘ Subperm⁻¹)
  ... | yes x∈
    with subperm? xs (y ∷ ys)
  ... | no ¬p = no (¬p ∘ proj₂ ∘ Subperm⁻¹)
  ... | yes p = yes (x∈ ∷ p)

  anySubperm? : (l : List A)(P : Pred (List A) p) → Decidable P → Decidable(AnySubpermOf P l)
  anySubperm? l P P? [] = no λ()
  anySubperm? l P P? (xs ∷ xss) = map′ fromSum toSum ((P? xs ×-dec subperm? xs l) ⊎-dec (subperm? xs l ×-dec anySubperm? l P P? xss))

  satisfies? :  {l : List A}{P : Pred (List A) p} → Decidable P
                → (t : List A) → Dec (Subperm t l × P t)
  satisfies? {l = l} P? t with (subperm? t l)
  ...| no ¬p = no (λ (p , _) → ¬p p)
  ...| yes p with (P? t)
  ...| no ¬q = no (λ (_ , q) → ¬q q)
  ...| yes q = yes (p , q)

module _ {L : List A}{P : Pred (List A) p} where

  ∃⊆⇔∃Subperm : (∃[ l ](l ⊆ L × P l)) ⇔ (∃[ l ](Subperm l L × P l))
  ∃⊆⇔∃Subperm = mk⇔ (λ (l , l⊆L , Pl) → l , to ⊆⇔Subperm l⊆L , Pl) (λ (l , Sp , Pl) → l , from ⊆⇔Subperm Sp , Pl)
