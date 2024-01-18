{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm.Properties {a}{A : Set a} where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.List using (List; [_]; []; _++_; head; tail; length) renaming (map to mapˡ)
open import Data.Nat using (_<_)
open import Data.List.Properties using (∷-injective)
open import Data.List.Ext
open import Data.List.Ext.Properties -- using (addhead⊆; ⊆⇔head∈tail⊆; ∈⊆→∈; toAny; ∷⁻¹)
open import Data.List.Ext.Subperm
open import Data.List.Membership.Propositional using (_∈_; _∉_)
import Data.List.Membership.DecPropositional as Dec∈
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.Propositional.Properties using (drop⁺)
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

∈-perm+head : {l : List A}{xs : List A}{x : A} → xs ∈ permutations l → x ∷ xs ∈ permutations (x ∷ l)
∈-perm+head {y ∷ ys} {xs} {x} xs∈perml = ∈→∈insertAll xs∈perml

all∈⊧perm+head : {l : List A}{x y : A} → All (x ∈_) (permutations l) → ¬ l ≡ []
                 → All (x ∈_) (permutations (y ∷ l))
all∈⊧perm+head {[]} {x} {y} h p = ⊥-elim (p refl)
all∈⊧perm+head {z ∷ zs} {x} {y} h _ = insertInAll⁻¹'' {ls = permutations (z ∷ zs)} h


toAllPerm : {l : List A}{y : A} → y ∈ l → All (y ∈_) (permutations l)
toAllPerm {.(_ ∷ [])} (here {xs = []} refl) = here refl All.∷ All.[]
toAllPerm {.(_ ∷ x ∷ xs)} (here {xs = x ∷ xs} refl) = insertInAll⁻¹'{ls = permutations(x ∷ xs)}
toAllPerm {.(_ ∷ x ∷ xs)} (there {xs = x ∷ xs} p) = insertInAll⁻¹'' (toAllPerm p)

-- if x ∷ xs ∈ ls : List (List A), then x ∷ xs ∈ allPermutations ls --
∈-allPermutations : {ls : List (List A)}{xs : List A}{x : A} → x ∷ xs ∈ ls → x ∷ xs ∈ allPermutations ls
∈-allPermutations {.(_ ∷ _) ∷ ls}{xs}{x} (here refl) = ∈++ˡ {ll = permutations (x ∷ xs)} ∈-permutations
∈-allPermutations {l ∷ ls} {xs}{x} (there xxs∈ls) = ∈++ʳ {ll = permutations l} (∈-allPermutations xxs∈ls)

allPerm-addhead : {ls : List (List A)}{xs : List A}{x : A} → xs ∈ allPermutations ls → x ∷ xs ∈ allPermutations (x +∷ ls)
allPerm-addhead {l ∷ ls} {xs} {x} xs∈ with (++→⊎{ll = (permutations l)} xs∈)
...| inj₁ xs∈perml = ∈++ˡ  (∈-perm+head{l} xs∈perml)
...| inj₂ xs∈allPermls = ∈++ʳ {ll = permutations (x ∷ l)} (allPerm-addhead {ls} xs∈allPermls)

¬[]∈permutations : {l : List A} → ¬ [] ∈ permutations l
¬[]∈permutations {_ ∷ []} (here px) = ¬[]≡x∷xs px
¬[]∈permutations {_ ∷ []} (there ())
¬[]∈permutations {x ∷ y ∷ l} []∈ = ¬[]∈insertAll{ls = permutations (y ∷ l)}{x = x} []∈

¬[]∈allPermutations : {ls : List (List A)} → ¬ [] ∈ allPermutations ls
¬[]∈allPermutations {[]} = λ ()
¬[]∈allPermutations {l ∷ ls} []∈
  with (++→⊎{ll = permutations l} []∈)
...| inj₁ v = ¬[]∈permutations{l} v
...| inj₂ v = ¬[]∈allPermutations{ls} v


allPerm++ˡ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations ll → xs ∈ allPermutations (ll ++ lr)
allPerm++ˡ {ls ∷ ls₁} {ls'} xs∈allPerm with (++→⊎{ll = permutations ls} xs∈allPerm)
...| inj₁ v = ⊎→++ (inj₁ v)
...| inj₂ v = ⊎→++ (inj₂ (allPerm++ˡ{ll = ls₁} v))

allPerm++ʳ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations lr → xs ∈ allPermutations (ll ++ lr)
allPerm++ʳ {[]} xs∈allPerm = xs∈allPerm
allPerm++ʳ {ls ∷ ls₁} xs∈allPerm = ∈++ʳ {ll = permutations ls}(allPerm++ʳ{ll = ls₁} xs∈allPerm)


allPerm-++→⊎ : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations (ll ++ lr)
                     → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
allPerm-++→⊎ {[]} = inj₂
allPerm-++→⊎ {l' ∷ ls}{lr} {l = l} l∈ with ++→⊎{ll = permutations l'}{lr = allPermutations (ls ++ lr)} l∈
...| inj₁ v = inj₁ (⊎→++ (inj₁ v))
...| inj₂ v with (allPerm-++→⊎{ll = ls} v)
...| inj₁ w = inj₁ (∈++ʳ{ll = permutations l'} w)
...| inj₂ w = inj₂ w

allPerm-⊎→++ : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
                    → l ∈ allPermutations (ll ++ lr)
allPerm-⊎→++ {ll} (inj₁ x) = allPerm++ˡ{ll = ll} x
allPerm-⊎→++ {ll} (inj₂ y) = allPerm++ʳ{ll = ll} y

distrib-allPerms : {ll lr : List (List A)}{l : List A}
  → l ∈ allPermutations (ll ++ lr) ⇔ l ∈ (allPermutations ll) ++ (allPermutations lr)
distrib-allPerms {[]} = mk⇔ id id
distrib-allPerms {xs ∷ xss} {ys} {l} = mk⇔ i ii
  where -- TODO: clean up this proof
  i : l ∈ permutations xs ++ allPermutations (xss ++ ys)
      → l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
  i l∈
    with (++→⊎ l∈)
  ...| inj₁ v = ⊎→++ (inj₁ (⊎→++ (inj₁ v)))
  ...| inj₂ v
    with (++→⊎ (to (distrib-allPerms{ll = xss}) v))
  ...| inj₁ w = ⊎→++{ll = permutations xs ++ allPermutations xss} (inj₁ (⊎→++ (inj₂ w)))
  ...| inj₂ w = ⊎→++{ll = permutations xs ++ allPermutations xss} (inj₂ w)

  ii : l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
       → l ∈ permutations xs ++ allPermutations (xss ++ ys)
  ii l∈
    with (++→⊎{ll = permutations xs ++ allPermutations xss} l∈)
  ...| inj₂ v = ∈++ʳ (allPerm++ʳ{ll = xss} v)
  ...| inj₁ v
    with (++→⊎ v)
  ...| inj₁ w = ⊎→++ (inj₁ w)
  ...| inj₂ w = ⊎→++ {ll = permutations xs} (inj₂ (allPerm++ˡ{ll = xss} w))

allPerms-head⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ allPermutations(x +∷ ls) → x ∈ l
allPerms-head⁻¹ {[]} (here refl) = here refl
allPerms-head⁻¹ {l ∷ ls}{l'}{x} p with (++→⊎{ll = permutations (x ∷ l)} p)
...| inj₁ v = perms-head⁻¹{l = l} v
...| inj₂ v = allPerms-head⁻¹{ls = ls} v


----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------

¬[]∈subpermutations : {l : List A} → ¬ [] ∈ subpermutations l
¬[]∈subpermutations {[]} = λ ()
¬[]∈subpermutations {x ∷ xs} p = ¬[]∈allPermutations{ls = (x +∷ sublists xs ++ sublists xs)} p

subperm+head : {l xs : List A}{x : A} → xs ∈ subpermutations l → ¬ xs ≡ [] → xs ∈ subpermutations (x ∷ l)
subperm+head {l} {xs} {x} p ¬x[] = allPerm++ʳ{ll = x +∷ sublists l} p 

singleton∈subperm : {l : List A}{x : A} → x ∈ l → (x ∷ []) ∈ subpermutations l
singleton∈subperm {[]} x∈[] = ⊥-elim (¬Any[] x∈[])
singleton∈subperm {x ∷ ys}{.x} (here refl) = ∈-allPermutations (⊎→++{ll = x +∷ sublists ys} (inj₁ ∈-+∷))
singleton∈subperm {y ∷ ys}{x} (there x∈y∷ys) =
  from (distrib-allPerms{ll = (y +∷ sublists ys)}) (∈++ʳ (∈-allPermutations (x∷[]∈-sublists x∈y∷ys)))


singleton∈subperm' : {l xs : List A}{x : A} → x ∈ l → xs ≡ [] → (x ∷ xs) ∈ subpermutations l
singleton∈subperm' {l}{xs}{x} x∈l xs[] =
  subst (λ u → (x ∷ u) ∈ subpermutations l) (sym xs[]) (singleton∈subperm x∈l)


--------------------------------------------------------------------------------
----------- l ⊆ L ⇔ deduplicate≡ l ∈ subpermutations (deduplicate≡ L) ----------
--------------------------------------------------------------------------------

-- headswap : {l xs : List A}{x a : A} → a ∷ x ∷ xs ∈ subpermutations l → x ∷ a ∷ xs ∈ subpermutations l
-- headswap = {!!}

-- headdrop : {l xs : List A}{x : A} → x ∷ xs ∈ subpermutations l → ¬ xs ≡ [] → xs ∈ subpermutations l
-- headdrop = {!!}

imp→all : {ls : List (List A)}{y : A} → (∀ l → l ∈ ls → y ∈ l) → All (y ∈_ ) ls
imp→all {[]} {y} imph = All.[]
imp→all {l' ∷ ls} {y} imph = (imph l' (here refl)) All.∷ (imp→all (λ l z → imph l (there z)))

all→imp : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → (∀ l → l ∈ ls → y ∈ l)
all→imp {.(l ∷ _)} (y∈l All.∷ y∈ls) l (here refl) = y∈l
all→imp {.(_ ∷ _)} (px All.∷ y∈all) l (there l∈ls) = all→imp y∈all l l∈ls

headInAll' : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → All (y ∈_ ) (allPermutations ls)
headInAll' {.[]} {y} All.[] = All.[]
headInAll' {.(l ∷ ls)} {y} (All._∷_ {l} {ls} px p) = All++ {ll = permutations l} (toAllPerm px) (headInAll' p)

headInAll : {ls : List (List A)}{y : A} → (∀ l → l ∈ ls → y ∈ l) → (∀ l → l ∈ allPermutations ls → y ∈ l)
headInAll  {ls}  {y} imph p = all→imp (headInAll' (imp→all imph)) p

permhead' : {ys : List A}{y : A} → All (y ∈_ ) (allPermutations (y +∷ sublists ys))
permhead' {ys} {y} = headInAll'{ls = y +∷ sublists ys} +∷head∈all


permhead : {ys : List A}{y : A} → ∀ l → l ∈ allPermutations(y +∷ sublists ys) → y ∈ l
permhead {ys} {y} l l∈ = all→imp (permhead'{ys}) l l∈


subperm-head : {ys xs : List A}{y : A} → xs ∈ subpermutations (y ∷ ys) → ¬ y ∈ xs → xs ∈ subpermutations ys
subperm-head {ys}{xs} xs∈sp ¬y∈xs with (allPerm-++→⊎{ll = _ +∷ sublists ys} xs∈sp)
...| inj₁ v = ⊥-elim (¬y∈xs (permhead{ys} xs v))
...| inj₂ v = v


module _ ⦃ _ : DecEq A ⦄ where
  subperm+head+ : {ys xs : List A}{x : A} → xs ∈ subpermutations ys → x ∷ xs ∈ subpermutations (x ∷ ys)
  subperm+head+ {ys} {xs} {x} xs∈sp with (xs ≟ [])
  ...| yes xs[] = goal
    where
    ξ : x ∷ [] ∈ subpermutations (x ∷ ys)
    ξ = singleton∈subperm (here{xs = ys} refl)
    goal : x ∷ xs ∈ subpermutations (x ∷ ys)
    goal = subst (λ u → x ∷ u ∈ subpermutations (x ∷ ys)) (sym xs[]) ξ
  ...| no ¬xs[] = goal
    where
    ξ : xs ∈ subpermutations (x ∷ ys)
    ξ = subperm+head{l = ys}{xs} xs∈sp ¬xs[]
    goal : x ∷ xs ∈ subpermutations (x ∷ ys)
    goal = allPerm++ˡ{ll = x +∷ sublists ys} (allPerm-addhead{ls = sublists ys} xs∈sp)

  subperm+newhead : {ys xs : List A}{x : A} → xs ∈ subpermutations (x ∷ ys) → ¬ x ∈ xs
                  → x ∷ xs ∈ subpermutations (x ∷ ys)
  subperm+newhead {[]} (here refl) ¬x∈xs = ⊥-elim (¬x∈xs (here refl))
  subperm+newhead {y ∷ ys} xs∈sp ¬x∈xs = subperm+head+{y ∷ ys} (subperm-head{y ∷ ys} xs∈sp ¬x∈xs)

subperm+oldhead : {ys xs : List A}{x y : A} → xs ∈ subpermutations (y ∷ ys) → x ∈ ys → ¬ x ∈ xs
                  → x ∷ xs ∈ subpermutations (y ∷ ys)
subperm+oldhead {ys} {xs} {x} {y} xs∈sp x∈ys ¬x∈xs = {!!}

all≢x→¬any≡x : {ys : List A}{x : A} → All (λ z → ¬ x ≡ z) ys → ¬ Any (λ z → x ≡ z) ys
all≢x→¬any≡x (¬x≡y All.∷ all¬≡) (here x≡y) = ¬x≡y x≡y
all≢x→¬any≡x (px All.∷ all¬≡) (there any≡) = all≢x→¬any≡x all¬≡ any≡

all≢x→¬x∈ : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
all≢x→¬x∈ (all¬≡x AllPairs.∷ _) x∈xs = all≢x→¬any≡x all¬≡x x∈xs


-------------------------------------------------------------
------------  xs ⊆ ys  ⇔  xs ∈ subpermutations ys  ----------
-------------------------------------------------------------

module _ ⦃ _ : DecEq A ⦄ where
  ⊆→subperm : {xs ys : List A} → Unique xs → Unique ys → xs ⊆ ys → ¬ xs ≡ [] → xs ∈ subpermutations ys
  ⊆→subperm {[]} {ys} xsU ysU xs⊆ys ¬xs[] = ⊥-elim (¬xs[] refl)
  ⊆→subperm {x ∷ xs} {[]} xsU ysU (() All.∷ xs⊆ys) ¬xs[]
  ⊆→subperm {x ∷ xs} {.x ∷ ys} xsU ysU (here refl All.∷ xs⊆ys) _ with (xs ≟ [])
  ...| yes xs[] = singleton∈subperm' (here{xs = ys} refl) xs[]
  ...| no ¬xs[] = subperm+newhead {ys} (⊆→subperm (drop⁺ 1 xsU) ysU xs⊆ys ¬xs[]) (all≢x→¬x∈ xsU)
  ⊆→subperm {x ∷ xs} {y ∷ ys} xxsU yysU (there px All.∷ xs⊆ys) _ with (xs ≟ [])
  ...| yes xs[] = singleton∈subperm' (there{xs = ys} px) xs[]
  ...| no ¬xs[] = subperm+oldhead {ys} (⊆→subperm (drop⁺ 1 xxsU) yysU xs⊆ys ¬xs[]) px (all≢x→¬x∈ xxsU)


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
