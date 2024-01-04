{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.List hiding (_∷ʳ_; drop)
open import Data.List.Ext using (subpermutations)
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (↭-empty-inv; ¬x∷xs↭[])
open import Data.List.Relation.Binary.Sublist.Heterogeneous using (Sublist) renaming (minimum to minˡ)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax; Σ-syntax)
open import Data.Sum.Base as Sum using (_⊎_; inj₁; inj₂)
open import Level using (Level; _⊔_)
open import Function using (_∘_; _$_; _⇔_; mk⇔; id; Equivalence)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using () renaming (Decidable to Dec₂)
open import Relation.Binary.Definitions using (Min)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (yes; no; ¬_)
open import Relation.Nullary.Decidable.Core using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable; _∈_)

private variable a p : Level

module _ {A : Set a} where

  ¬x∈[] : {x : A} → ¬ x ∈ˡ []
  ¬x∈[] = λ()

  open Sublist
  Sublist[] : {l : List A} → Sublist _≡_ [] l
  Sublist[] {[]} = []
  Sublist[] {x ∷ xs} = x ∷ʳ Sublist[]

  Sublist-refl : {l : List A} → Sublist _≡_ l l
  Sublist-refl {[]} = []
  Sublist-refl {x ∷ l} = refl ∷ Sublist-refl

module Subperm {A : Set a} where

  data Subperm : Rel (List A) a where
    []    : Subperm [] []
    loose : ∀ {xs ys y} → Subperm xs ys → Subperm xs (y ∷ ys)
    tight : ∀ {x xs ys} → x ∈ˡ ys → Subperm xs ys → Subperm (x ∷ xs) ys

  Subperms : List A → Pred (List A) a
  Subperms l = λ x → Subperm x l

  minimum : Min (Subperm) []
  minimum []       = []
  minimum (x ∷ xs) = loose (minimum xs)

  Subperm[] : ∀{l} → Subperm [] l
  Subperm[] {l} = minimum l

  ¬Subperm[] : ∀{x xs} → ¬ Subperm (x ∷ xs) []
  ¬Subperm[](tight x∈[] p) = ⊥-elim (¬x∈[] x∈[])

  data SubpermOf (l : List A) : Pred (List A) a where
    empty : SubpermOf l []
    keep  : ∀ {xs} → Subperm xs l → SubpermOf l xs
    add   : ∀ {x xs} → x ∈ˡ l → Subperm xs l → SubpermOf l (x ∷ xs)

  Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ˡ l × Subperm xs l
  Subperm⁻¹ (tight x∈l xsSPl) = x∈l , xsSPl
  Subperm⁻¹ (loose sp) = there (proj₁ SP) , loose (proj₂ SP)
    where SP = Subperm⁻¹ sp

  ∈-Subperms : {l : List A}{xss : List (List A)}{x : List A} → x ∈ Subperms l ⇔ Subperm x l
  ∈-Subperms = mk⇔ id id

  subperm? : ⦃ _ : DecEq A ⦄ → Dec₂ (Subperm)
  subperm? [] _ = yes Subperm[]
  subperm? (_ ∷ _) [] = no λ where (tight () _)
  subperm? (x ∷ xs) (y ∷ ys)
    with any?ˡ (x ≟_) (y ∷ ys)
  ... | no  x∉ = no (x∉ ∘ proj₁ ∘ Subperm⁻¹)
  ... | yes x∈
    with subperm? xs (y ∷ ys)
  ... | no ¬p = no (¬p ∘ proj₂ ∘ Subperm⁻¹)
  ... | yes p = yes (tight x∈ p)


  data AnySubpermOf (l : List A) (P : Pred (List A) p) : Pred (List(List A)) (a ⊔ p) where
    here  : ∀ {xs xss} (pxs  : P xs) → Subperm xs l → AnySubpermOf l P (xs ∷ xss)
    there : ∀ {xs xss} (pxss : AnySubpermOf l P xss) → AnySubpermOf l P (xs ∷ xss)

  data AnySubpermOf' (l : List A) (P : Pred (List A) p) : Pred (Pred(List A) a) (a ⊔ p) where
    indeed : ∀ {xs} (_ : P xs) → Subperms l xs → AnySubpermOf' l P (Subperms l)

  module _ {l : List A}{P : Pred (List A) p} {xs : List A} {xss : List (List A)} where
    toSum : AnySubpermOf l P (xs ∷ xss) → (P xs × Subperm xs l) ⊎ AnySubpermOf l P xss
    toSum (here pxs Spxsl) = inj₁ (pxs , Spxsl)
    toSum (there pxss) = inj₂ pxss

    fromSum : (P xs × Subperm xs l) ⊎ AnySubpermOf l P xss → AnySubpermOf l P (xs ∷ xss)
    fromSum (inj₁ (pxs , Spxsl))  = here pxs Spxsl
    fromSum (inj₂ pxss) = there pxss


  anySubpermOf? : ⦃ _ : DecEq A ⦄ → (l : List A)(P : Pred (List A) p) → Decidable P → Decidable(AnySubpermOf l P)
  anySubpermOf? l P P? [] = no λ()
  anySubpermOf? l P P? (xs ∷ xss) = map′ fromSum toSum ((P? xs ×-dec subperm? xs l) ⊎-dec anySubpermOf? l P P? xss)

  satisfies? :  ⦃ _ : DecEq A ⦄{l : List A}{P : Pred (List A) p} → Decidable P
                → (t : List A) → Dec (Subperm t l × P t)
  satisfies? {l = l} P? t with (subperm? t l)
  ...| no ¬p = no (λ (p , _) → ¬p p)
  ...| yes p with (P? t)
  ...| no ¬q = no (λ (_ , q) → ¬q q)
  ...| yes q = yes (p , q)

  Subperm[]→[] : {xs : List A} → Subperm xs [] → xs ≡ []
  Subperm[]→[] {[]} _ = refl
  Subperm[]→[] {x ∷ xs} spxs[] = ⊥-elim (¬Subperm[] spxs[])

module SubPerm {A : Set a} where

  data SubPerm : Rel (List A) a where
    list   : ∀ {xs ys} → Sublist _≡_ xs ys → SubPerm xs ys
    perm   : ∀ {xs ys} → xs ↭ ys → SubPerm xs ys
    pl :  ∀ {xs ys zs} → xs ↭ ys → Sublist _≡_ ys zs → SubPerm xs zs
    lp :  ∀ {xs ys zs} → Sublist _≡_ xs ys → ys ↭ zs → SubPerm xs zs

  SubPerms : List A → Pred (List A) a
  SubPerms l = λ x → SubPerm x l

  SubPerm[] : ∀{l} → SubPerm [] l
  SubPerm[] {l} = list (minˡ l)

  ¬SubPerm[] : ∀{x xs} → ¬ SubPerm (x ∷ xs) []
  ¬SubPerm[] (perm p) = ¬x∷xs↭[] p
  ¬SubPerm[] (pl {ys = []} p q) = ¬x∷xs↭[] p
  ¬SubPerm[] (lp {ys = x ∷ ys} p q) = ¬x∷xs↭[] q

  SubPerm-empty-inv : ∀{l} → SubPerm l [] → l ≡ []
  SubPerm-empty-inv {[]} p = refl
  SubPerm-empty-inv {x ∷ l} p = ⊥-elim (¬SubPerm[] p)

module _ {A : Set a} where

  data Subperm' : Rel (List A) a where
    []    : Subperm' [] []
    incl : ∀ {xs ys y} → Subperm' xs ys → Subperm' xs (y ∷ ys)
    more : ∀ {x xs ys} → Subperm' xs ys → Subperm' (x ∷ xs) (x ∷ ys)

  Subperms' : List A → Pred (List A) a
  Subperms' l = λ x → Subperm' x l

  lemma' : ∀{x xs} → ¬ Subperm' (x ∷ xs) []
  lemma' = λ ()

  Subperm'[] : {l : List A} → Subperm' [] l
  Subperm'[] {[]} = []
  Subperm'[] {x ∷ l} = incl Subperm'[]

