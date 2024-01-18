{-# OPTIONS --safe #-}

open import Prelude hiding (lookup; map)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using (List; [_]; []; _++_; head; tail; length; map)
open import Data.List.Ext
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
  using (∈-deduplicate⁻; ∈-deduplicate⁺; ∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_; ↭-sym)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (¬x∷xs↭[])
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

-- TODO: All++ is probably already in stdlib---find it there and use that instead.
All++ : ∀ {a p} {A : Set a} {P : Pred A p} {ll lr : List A} → All P ll → All P lr → All P (ll ++ lr)
All++ {ll = .[]} All.[] h2 = h2
All++ {ll = .(_ ∷ _)} (px All.∷ h1) h2 = px All.∷ (All++ h1 h2)

module _ {a}{A : Set a} where

  addhead⊆ : {l L : List A}{a : A} → l ⊆ L → l ⊆ (a ∷ L)
  addhead⊆ All.[] = All.[]
  addhead⊆ (px All.∷ pxs) = there px All.∷ addhead⊆ pxs

  drophead⊆ : {xs ys : List A}{x : A} → (x ∷ xs) ⊆ ys → xs ⊆ ys
  drophead⊆ (here refl All.∷ p) = p
  drophead⊆ (there px All.∷ p) = p

  ⊆-id : {l : List A} → l ⊆ l
  ⊆-id {[]} = All.[]
  ⊆-id {x ∷ xs} = All._∷_ (here refl) (addhead⊆ ⊆-id)

  ⊆-[] : {l : List A} → l ⊆ [] → l ≡ []
  ⊆-[] {[]} _ = refl
  ⊆-[] {x ∷ xs} (px All.∷ l⊆[]) = ⊥-elim (¬Any[] px)

  ¬⊆-[] : {x : A}{xs : List A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆-[] {x} {xs} (px All.∷ h) = ¬Any[] px

  toAny : {x : A}{xs l : List A} → (x ∷ xs) ⊆ l → x ∈ l
  toAny (here refl All.∷ p) = here refl
  toAny (there px All.∷ p) = there px

  fromAny : {x : A}{l : List A} → x ∈ l → [ x ] ⊆ l
  fromAny p = p All.∷ All.[]

  ∷⁻¹ : ∀ {xs ys}{x : A} → (x ∷ xs) ⊆ ys → x ∈ ys × xs ⊆ ys
  ∷⁻¹ (px All.∷ p) = px , p

  ∷curry : ∀ {xs ys}{x : A} → x ∈ ys × xs ⊆ ys → (x ∷ xs) ⊆ ys
  ∷curry (x∈ys , xs⊆ys) = x∈ys All.∷ xs⊆ys

  ⊆⇔head∈tail⊆ : {x : A}{xs l : List A} → (x ∷ xs) ⊆ l ⇔ (x ∈ l × xs ⊆ l)
  ⊆⇔head∈tail⊆  {x} {xs} {[]} = mk⇔ (⊥-elim ∘ ¬⊆-[]) (λ ())
  ⊆⇔head∈tail⊆  {x} {xs} {y ∷ ys} = mk⇔ ∷⁻¹ ∷curry

  ∈⊆→∈ : ∀{x : A}{l l' : List A} → x ∈ l → l ⊆ l' → x ∈ l'
  ∈⊆→∈ (here refl) (px All.∷ l⊆l') = px
  ∈⊆→∈ (there x∈l) l⊆l' = ∈⊆→∈ x∈l (proj₂ (∷⁻¹ l⊆l'))


module _ {a} {A : Set a} where
  ¬[]≡x∷xs : {xs : List A}{x : A} → ¬ [] ≡ x ∷ xs
  ¬[]≡x∷xs ()

  ¬[]∈x∷ls : {ls : List (List A)}{x : A} → ¬ ([] ∈ (map (List._∷_ x) ls))
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

  ⊎→++ : {ll lr : List A}{x : A} → x ∈ ll ⊎ x ∈ lr → x ∈ ll ++ lr
  ⊎→++ (inj₁ x∈ll) = ∈++ˡ x∈ll
  ⊎→++ (inj₂ x∈lr) = ∈++ʳ x∈lr

  ++→⊎ : {ll lr : List A}{x : A} → x ∈ ll ++ lr → x ∈ ll ⊎ x ∈ lr
  ++→⊎ {[]} x∈[] = inj₂ x∈[]
  ++→⊎ {_ ∷ _} (here refl) = inj₁ (here refl)
  ++→⊎ {_ ∷ _} (there x∈ys) with (++→⊎ x∈ys)
  ...| inj₁ y∈ys = inj₁ (there y∈ys)
  ...| inj₂ x∈ll = inj₂ x∈ll

  ∈-++⇔∈⊎ : {ll lr : List A}{x : A} → (x ∈ ll ++ lr) ⇔ (x ∈ ll ⊎ x ∈ lr)
  ∈-++⇔∈⊎ = mk⇔ (λ x∈ → ++→⊎ x∈) ⊎→++

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

  +∷head∈all : {ls : List (List A)}{y : A} → All (y ∈_) (y +∷ ls)
  +∷head∈all {[]} = here refl All.∷ All.[]
  +∷head∈all {l ∷ ls} = here refl All.∷ +∷head∈all


--------------------------------------------------
------- properties of insert_everywhereIn_ -------
--------------------------------------------------
module _ {a} {A : Set a} where
  ¬insert[] : {l : List A}{x : A} → ¬ insert x everywhereIn l ≡ []
  ¬insert[] {[]} insert[] = ¬[]≡x∷xs (sym insert[])
  ¬insert[] {_ ∷ _} insert[] = ¬[]≡x∷xs (sym insert[])

  ¬[]∈insert : {l : List A}{x : A} → ¬ [] ∈ insert x everywhereIn l
  ¬[]∈insert {[]} (here px) = ¬[]≡x∷xs px
  ¬[]∈insert {y ∷ ys} (there p) = ¬[]∈x∷ls p

  ¬[]∈insertAll : {ls : List (List A)}{x : A} → ¬ [] ∈ insert x everywhereInAll ls
  ¬[]∈insertAll {[]} = λ ()
  ¬[]∈insertAll {l ∷ ls} []∈ with (++→⊎ []∈)
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

  ∈putsubhead : {ls : List (List A)}{l l' xs : List A} → xs ∈ l ∷ ls → xs ∈ l ∷ l' ∷ ls
  ∈putsubhead {ls} {l'} {xs} (here p) = here p
  ∈putsubhead {ls} {l'} {xs} (there p) = there (there p)

  tail-lem : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ map (_∷_ y) ls → x ≡ y × xs ∈ ls
  tail-lem {l ∷ ls} {.l} {x} {.x} (here refl) = refl , (here refl)
  tail-lem {l ∷ ls} {xs} {x} {y} (there p) = (proj₁ (tail-lem p)) , there (proj₂ (tail-lem p))

  insert⁻¹ : {l xs : List A}{x : A} → l ∈ insert x everywhereIn xs → x ∈ l
  insert⁻¹ {[]} {xs} {x} p = ⊥-elim (¬[]∈insert p)
  insert⁻¹ {y ∷ .[]} {[]} {.y} (here refl) = here refl
  insert⁻¹ {y ∷ .(x₁ ∷ xs)} {x₁ ∷ xs} {.y} (here refl) = here refl
  insert⁻¹ {y ∷ ys} {x₁ ∷ xs} {x} (there p) = there (insert⁻¹ (proj₂ (tail-lem p)))

  all∈⊧addhead : {ls : List (List A)}{x y : A} → All(x ∈_) ls → All(x ∈_) (map (y ∷_) ls)
  all∈⊧addhead {[]} {x} {y} h = h
  all∈⊧addhead {ls ∷ ls₁} {x} {y} (px All.∷ h) = (there px) All.∷ (all∈⊧addhead h)

  x∈allmapx∷ : {ls : List (List A)}{x : A} → All(x ∈_) (map (x ∷_) ls)
  x∈allmapx∷ {[]} {x} = All.[]
  x∈allmapx∷ {ls ∷ ls₁} {x} = here refl All.∷ x∈allmapx∷

  insert⁻¹' : {l : List A}{x : A} → All(x ∈_) (insert x everywhereIn l)
  insert⁻¹' {[]} {x} = here refl All.∷ All.[]
  insert⁻¹' {y ∷ ys} {x} = (here refl) All.∷ goal
    where
    ξ : All (x ∈_ ) (insert x everywhereIn ys)
    ξ = insert⁻¹'
    goal : All (_∈_ x) (map (_∷_ y) (insert x everywhereIn ys))
    goal = all∈⊧addhead ξ

  insert⁻¹'' : {l : List A}{x y : A} → x ∈ l → All(x ∈_) (insert y everywhereIn l)
  insert⁻¹'' {z ∷ zs} {.z} {y} (here refl) = (there (here refl)) All.∷ x∈allmapx∷
  insert⁻¹'' {z ∷ zs} {x} {y} (there x∈l) = (there (there x∈l)) All.∷ (all∈⊧addhead (insert⁻¹'' x∈l))


  insertInAll⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ insert x everywhereInAll ls → x ∈ l
  insertInAll⁻¹ {ls} {[]} {x} p = ⊥-elim (¬[]∈insertAll{ls = ls} p)
  insertInAll⁻¹ {l ∷ ls} {y ∷ ys} {x} p with (++→⊎{ll = insert x everywhereIn l} p)
  ...| inj₁ v = insert⁻¹{y ∷ ys} v
  ...| inj₂ v = insertInAll⁻¹{ls} v


  insertInAll⁻¹' : {ls : List (List A)}{x : A} → All (x ∈_) (insert x everywhereInAll ls)
  insertInAll⁻¹' {[]} {x} = All.[]
  insertInAll⁻¹' {l ∷ ls} {x} = All++ {ll = insert x everywhereIn l} insert⁻¹' (insertInAll⁻¹'{ls})

  insertInAll⁻¹'' : {ls : List (List A)}{x y : A} → All (x ∈_) ls → All (x ∈_) (insert y everywhereInAll ls)
  insertInAll⁻¹'' {[]} {x}{y} h = h
  insertInAll⁻¹'' {l ∷ ls} {x} {y} (px All.∷ h)= All++{ll = insert y everywhereIn l} (insert⁻¹'' px) (insertInAll⁻¹'' h)

  perms-head⁻¹ : {l l' : List A}{x : A} → l' ∈ permutations (x ∷ l) → x ∈ l'
  perms-head⁻¹ {[]} {.(x ∷ [])} {x} (here refl) = here refl
  perms-head⁻¹ {x₁ ∷ l} {l'} {x} p = insertInAll⁻¹{ls = permutations (x₁ ∷ l)}{l'}{x} p

--------------------------------------
------- properties of sublists -------
--------------------------------------
module _ {a} {A : Set a} where
  x∷[]∈-sublists : {l : List A}{x : A} → x ∈ l → x ∷ [] ∈ sublists l
  x∷[]∈-sublists {x ∷ xs} (here refl) = ⊎→++ {ll = x +∷ sublists xs} (inj₁ ∈-+∷)
  x∷[]∈-sublists {x = x}(there {y} x∈l) = ⊎→++ (inj₂ (x∷[]∈-sublists x∈l))

  sublists-head∈ : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → x ∈ l
  sublists-head∈ {y ∷ ys} xxs∈ with (++→⊎{ll = y +∷ sublists ys} xxs∈)
  ...| inj₁ v = here (∈+∷→head≡ v)
  ...| inj₂ v = there (sublists-head∈ v)

  sublists-head∈-contra : {l xs : List A}{x : A} → ¬ x ∈ l → ¬ x ∷ xs ∈ sublists l
  sublists-head∈-contra ¬x∈l xxs∈sl = ¬x∈l (sublists-head∈ xxs∈sl)

  +∷sublists : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → x ≡ y × (xs ≡ [] ⊎ xs ∈ sublists ys)
  +∷sublists {[]} {ys} {x} {y} p = ∈+∷→head≡ p , inj₁ refl
  +∷sublists {z ∷ xs} {ys} {x} {y} p = ∈+∷→head≡ p , inj₂ (proj₂ (∈+∷→head×tail{ls = sublists ys} p))

  +∷sublists' : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → ¬ xs ≡ [] → x ≡ y × xs ∈ sublists ys
  +∷sublists' {xs} {ys} {x} {y} p ¬xs[] = (∈+∷→head≡ p) , proj₂ (∈+∷→head×tail' p ¬xs[])

  sublists-tail∈ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → z ∷ zs ∈ sublists l
  sublists-tail∈ {y ∷ ys} {zs} {x}{z} x∈ with (++→⊎{ll = y +∷ sublists ys} x∈)
  ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈{l = ys} v)
  ...| inj₁ v = ∈++ʳ (∈+∷→tail∈ ξ)
    where
    ξ : x ∷ z ∷ zs ∈ x +∷ sublists ys
    ξ = subst (λ w → x ∷ z ∷ zs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  sublists-tail∈' : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → ¬ xs ≡ [] → xs ∈ sublists l
  sublists-tail∈' {y ∷ ys} {xs} {x} x∈ ¬xs[] with (++→⊎{ll = y +∷ sublists ys} x∈)
  ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈'{l = ys} v ¬xs[])
  ...| inj₁ v = ∈++ʳ (∈+∷→tail∈' ξ ¬xs[])
    where
    ξ : x ∷ xs ∈ x +∷ sublists ys
    ξ = subst (λ w → x ∷ xs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  sublists⁻¹ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → x ∈ l × z ∷ zs ∈ sublists l
  sublists⁻¹ {l} xxs∈sl = sublists-head∈ xxs∈sl , (sublists-tail∈{l}) xxs∈sl


-- permutations-sublists-comm : {l xs : List A}{x : A} → x ∷ xs ∈ allPermutations (sublists l) → ¬ xs ≡ [] → xs ∈ sublists l

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

_ : 1 ∷ [] ∈ 1 +∷ sublists (2 ∷ 3 ∷ [])
_ = there (there (there (here refl)))

_ : properSublists (1 ∷ []) ≡ []
_ = refl

_ : properSublists (1 ∷ 2 ∷ []) ≡ (1 ∷ []) ∷ (2 ∷ []) ∷ []
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

_ : allPermutations (sublists (1 ∷ 2 ∷ [])) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : allSublists (permutations (1 ∷ 2 ∷ [])) ≡ (1 ∷ 2 ∷ []) ∷
                                                (1 ∷ []) ∷ (2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (2 ∷ []) ∷ (1 ∷ []) ∷ []
_ = refl

_ : subpermutations{A = ℕ} [] ≡ []
_ = refl

_ : subpermutations (1 ∷ []) ≡ (1 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 1 ∷ []) ≡ (1 ∷ 1 ∷ []) ∷ (1 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (1 ∷ []) ∷ []
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
