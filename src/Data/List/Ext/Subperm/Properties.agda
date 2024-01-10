{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm.Properties {a}{A : Set a} where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.Maybe
open import Data.List using (List; _∷_; [_]; []; _++_; head; tail)
open import Data.List.Properties using (++-identityˡ; ++-identityʳ)
open import Data.List.Ext
open import Data.List.Ext.Properties using (addhead⊆; ⊆⇔head∈tail⊆; ∈⊆→∈)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (↭-empty-inv)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax; ∃)
open import Data.Sum.Base using (_⊎_; inj₁; inj₂)
open import Level using (Level; _⊔_)
open import Function using (_∘_; _⇔_; mk⇔; id; Equivalence)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using (Min) renaming (Decidable to Dec₂)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; sym; trans; cong; subst)
open import Relation.Nullary using (yes; no; ¬_)
open import Relation.Nullary.Decidable using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable)
open import Data.List.Ext.Subperm

private variable p : Level

minimum : Min (Subperm{A = A}) []
minimum []       = []
minimum (x ∷ xs) = _ ∷ʳ (minimum xs)

Subperm[] : ∀{l} → Subperm [] l
Subperm[] {l} = minimum l

¬Subperm[] : {x : A}{xs : List A} → ¬ Subperm (x ∷ xs) []
¬Subperm[](x∈[] ∷ p) = ⊥-elim (¬Any[] x∈[])

Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
Subperm⁻¹ (x∈l ∷ xsSPl) = x∈l , xsSPl
Subperm⁻¹ (y ∷ʳ sp) = there (proj₁ SP) , y ∷ʳ(proj₂ SP)
  where SP = Subperm⁻¹ sp

Subperm[]→[] : {xs : List A} → Subperm xs [] → xs ≡ []
Subperm[]→[] {[]} _ = refl
Subperm[]→[] {x ∷ xs} spxs[] = ⊥-elim (¬Subperm[] spxs[])


module _ {x : A}{xs : List A} where
  -- deconstructors of Subperm
  ∷ᴸ⁻ : {l : List A} → Subperm (x ∷ xs) l → x ∈ l
  ∷ᴸ⁻ (_ ∷ʳ p) = there (∷ᴸ⁻ p)
  ∷ᴸ⁻ (x∈ys ∷ _) = x∈ys

  ∷ᴿ⁻ : {l : List A} → Subperm (x ∷ xs) l → Subperm xs l
  ∷ᴿ⁻ (_ ∷ʳ p) = _ ∷ʳ (∷ᴿ⁻ p)
  ∷ᴿ⁻ (_ ∷ Spxsl) = Spxsl

⊆⇔Subperm : {l L : List A} → l ⊆ L ⇔ Subperm l L
⊆⇔Subperm {[]} = mk⇔ (λ _ → Subperm[]) λ x → All.[]
⊆⇔Subperm {x ∷ xs}{[]} = mk⇔ (λ l⊆[] → ⊥-elim (¬Any[] (lookup l⊆[] (here refl)))) λ Spl[] → ⊥-elim (¬Subperm[] Spl[])
⊆⇔Subperm {x ∷ xs}{y ∷ ys} = mk⇔ i ii
  where
  open Equivalence
  i : (x ∷ xs) ⊆ (y ∷ ys) → Subperm (x ∷ xs) (y ∷ ys)
  i p = (proj₁ (to ⊆⇔head∈tail⊆ p)) ∷ (to ⊆⇔Subperm (proj₂ (to ⊆⇔head∈tail⊆ p)))

  ii : Subperm (x ∷ xs) (y ∷ ys) → (x ∷ xs) ⊆ (y ∷ ys)
  ii (_ ∷ʳ p) = addhead⊆ (from ⊆⇔head∈tail⊆ (∷ᴸ⁻ p , from ⊆⇔Subperm (∷ᴿ⁻ p)))
  ii (x∈l ∷ p) = from ⊆⇔head∈tail⊆ (x∈l , from ⊆⇔Subperm p)

subperm-head∈ : {x : A}{xs l : List A} → (x ∷ xs) ∈ subpermutations l → x ∈ l
subperm-head∈ {x} {xs} {[]} p = ⊥-elim (¬Any[] p)
subperm-head∈ {x} {xs} {y ∷ ys} p = {!!}

tail∈subperm : {x : A}{xs l : List A} → (x ∷ xs) ∈ subpermutations l → xs ∈ subpermutations l
tail∈subperm {x} {xs} {[]} p = ⊥-elim (¬Any[] p)
tail∈subperm {x} {xs} {y ∷ ys} p = {!!} -- proj₂ (⊆⇔head∈tail⊆ (fromAl∈-deduplproj₁ p))


module _ {A : Set a} where

  ∈++ˡ : {x : A}{ll lr : List A} → x ∈ ll → x ∈ ll ++ lr
  ∈++ˡ (here refl) = here refl
  ∈++ˡ (there x∈ys) = there (∈++ˡ x∈ys)

  ∈++ʳ : {x : A}{ll lr : List A} → x ∈ lr → x ∈ ll ++ lr
  ∈++ʳ {ll = []} = id
  ∈++ʳ {ll = _ ∷ _} p = there (∈++ʳ p)

  ⊎-elim-++ : {x : A}{l l' : List A} → x ∈ l ⊎ x ∈ l' → x ∈ l ++ l'
  ⊎-elim-++ (inj₁ x∈l) = ∈++ˡ x∈l
  ⊎-elim-++ (inj₂ x∈l') = ∈++ʳ x∈l'

  ∈++→∈⊎ : {x : A}{l l' : List A} → x ∈ l ++ l' → x ∈ l ⊎ x ∈ l'
  ∈++→∈⊎ {l = []} x∈[] = inj₂ x∈[]
  ∈++→∈⊎ {l = _ ∷ _} (here refl) = inj₁ (here refl)
  ∈++→∈⊎ {l = _ ∷ _} (there x∈ys) with (∈++→∈⊎ x∈ys)
  ...| inj₁ y∈ys = inj₁ (there y∈ys)
  ...| inj₂ x∈l' = inj₂ x∈l'

  ∈-++⇔∈⊎ : {x : A}{l l' : List A} → (x ∈ l ++ l') ⇔ (x ∈ l ⊎ x ∈ l')
  ∈-++⇔∈⊎ {x}{l}{l'} = mk⇔ (λ x∈ll' → ∈++→∈⊎ x∈ll') ⊎-elim-++

  ∈-+∷[] : {x : A} → (x ∷ []) ∈ x +∷ []
  ∈-+∷[] = here refl

  ∈-+∷ : {x : A}{l : List A}{ls : List (List A)} → l ∈ ls → (x ∷ l) ∈ x +∷ ls
  ∈-+∷ {x} (here px) = here (cong (λ z → x ∷ z) px)
  ∈-+∷ {x} (there l∈ls') = there (∈-+∷ l∈ls')

module _ {a}{A : Set a} where
  ++head : ∀{x : A}{xs l : List A} → head ((x ∷ xs) ++ l) ≡ just x
  ++head = refl

  insert-head : {x : A}{l : List A} → head (insert x everywhereIn l) ≡ just (x ∷ l)
  insert-head {x} {[]} = refl
  insert-head {x} {y ∷ ys} = refl

insertInAll-head' : ∀{x}{ls : List (List A)} →
                    head (insert x everywhereInAll ls) ≡
                    headM (insert x everywhereInM (head ls))
insertInAll-head' {x} {[]} = refl
insertInAll-head' {x} {ls ∷ ls₁} = {!!} -- ++head

perm-head : {x : A}{xs : List A} → head (permutations (x ∷ xs)) ≡ just (x ∷ xs)
perm-head {x} {[]} = refl
perm-head {x} {y ∷ ys} = trans ν ρ
  where
    ν : head(insert x everywhereInAll (permutations (y ∷ ys)))
          ≡ headM (insert x everywhereInM (head (permutations (y ∷ ys))))
    ν = insertInAll-head'{ls = permutations (y ∷ ys)}

    ρ : headM (insert x everywhereInM (head (permutations (y ∷ ys)))) ≡
        headM (insert x everywhereInM (just (y ∷ ys)))
    ρ = cong (λ u → headM (insert x everywhereInM u)) perm-head


singleton∈subperm : {x : A}{l : List A} → x ∈ l → (x ∷ []) ∈ subpermutations l
singleton∈subperm {x} {[]} x∈[] = ⊥-elim (¬Any[] x∈[])
singleton∈subperm {x} {y ∷ ys} (here px) = goal
  where
  ξ' : y ∷ [] ∈ allPermutations ((y +∷ sublists ys) ++ sublists ys)
  ξ' = singleton∈subperm (here{xs = ys} refl)
  goal : x ∷ [] ∈ allPermutations ((y +∷ sublists ys) ++ sublists ys)
  goal = {!!}
singleton∈subperm {x} {y ∷ ys} (there x∈y∷ys) = {!!}


distrib-allPerms : {l : List A} {xs ys : List (List A)} → l ∈ allPermutations (xs ++ ys) ⇔ l ∈ (allPermutations xs) ++ (allPermutations ys)
distrib-allPerms {l} {xs} {ys} = mk⇔ i ii
  where
  i : l ∈ allPermutations (xs ++ ys) → l ∈ (allPermutations xs) ++ (allPermutations ys)
  i = {!!}
  ii : l ∈ (allPermutations xs) ++ (allPermutations ys) → l ∈ allPermutations (xs ++ ys)
  ii = {!!}


_subperm_∷ʳ_ : (xs : List A)(y : A)(ys : List A) → xs ∈ subpermutations ys → xs ∈ subpermutations (y ∷ ys)
(xs subperm a ∷ʳ (y ∷ ys)) xs∈sp =
  from (distrib-allPerms {xs = (a +∷ ((y +∷ sublists ys) ++ sublists ys))}) (∈++ʳ xs∈sp)
  where open Equivalence

head+tail∈ : {x : A}{xs L : List A} → x ∈ L → xs ∈ subpermutations L → x ∷ xs ∈ subpermutations L
head+tail∈ {x} {xs} {.x ∷ ys} (here refl) xs∈spL = goal
  where
  goal : x ∷ xs ∈ allPermutations ((x +∷ sublists ys) ++ sublists ys)
  goal = {!!}

head+tail∈ {x} {xs} {y ∷ ys} (there x∈L) xs∈spL = {!!}

_subperm_∷_ : (xs : List A) {x : A}{ys : List A} → x ∈ ys → xs ∈ subpermutations ys → (x ∷ xs) ∈ subpermutations ys
_subperm_∷_ xs {x} {y ∷ ys} x∈ys Sp = head+tail∈ x∈ys Sp


-- TODO: Prove the following to finish `allEnactable?` in `Ledger.Gov`.
--       Alternatively, prove `⊆⇔∈subpermutations` in Data.List.Ext.Properties`
--       and use that (since we have a proof of `(x ∷ xs) ⊆ l ⇔ Subperm (x ∷ xs) l`)
Subperm→∈subperms : {xs ys : List A} → ¬ xs ≡ [] → Subperm xs ys → xs ∈ subpermutations ys
Subperm→∈subperms x [] = ⊥-elim (x refl)
Subperm→∈subperms {xs} ¬xs[] (_∷ʳ_ {ys = ys} y Sp) = (xs subperm y ∷ʳ ys) (Subperm→∈subperms ¬xs[] Sp)
Subperm→∈subperms {ys = ys} x (_∷_ {xs = []} x∈ys Sp[]) = singleton∈subperm x∈ys
Subperm→∈subperms {ys = ys} ¬xzzs[] (_∷_ {x} {xs = z ∷ zs} x∈ys Sp) = (z ∷ zs) subperm x∈ys ∷ (Subperm→∈subperms (λ ()) Sp)

∈subperms→Subperm : {x : A}{xs L : List A} → (x ∷ xs) ∈ subpermutations L → Subperm (x ∷ xs) L
∈subperms→Subperm {xs = []} ∈spL = (subperm-head∈ ∈spL) ∷ Subperm[]
∈subperms→Subperm {xs = _ ∷ _} {L} ∈spL =
  (subperm-head∈ ∈spL) ∷ (∈subperms→Subperm (tail∈subperm {l = L} ∈spL))

Subperm⇔∈subperms : {x : A}{xs L : List A} → Subperm (x ∷ xs) L ⇔ (x ∷ xs) ∈ subpermutations L
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
    where open Equivalence

