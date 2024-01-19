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

-- Subperm deconstructors --
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

-- [] is the only subperm of [] --
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
------- a subset is a Subperm and a Subperm is a subset --------
----------------------------------------------------------------
⊆⇔Subperm : {l L : List A} → l ⊆ L ⇔ Subperm l L
⊆⇔Subperm {[]} = mk⇔ (λ _ → Subperm[]) λ x → All.[]
⊆⇔Subperm {x ∷ xs}{[]} = mk⇔ (λ l⊆[] → ⊥-elim (¬Any[] (lookup l⊆[] (here refl)))) λ Spl[] → ⊥-elim (¬Subperm[] Spl[])
⊆⇔Subperm {x ∷ xs}{y ∷ ys} = mk⇔ i ii
  where
  i : (x ∷ xs) ⊆ (y ∷ ys) → Subperm (x ∷ xs) (y ∷ ys)
  i p = proj₁ (to ∷⊆⇔∈×⊆ p) ∷ to ⊆⇔Subperm (proj₂ (to ∷⊆⇔∈×⊆ p))

  ii : Subperm (x ∷ xs) (y ∷ ys) → (x ∷ xs) ⊆ (y ∷ ys)
  ii (_ ∷ʳ p) = ⊆-addhead (from ∷⊆⇔∈×⊆ (∷ᴸ⁻ p , from ⊆⇔Subperm (∷ᴿ⁻ p)))
  ii (x∈l ∷ p) = from ∷⊆⇔∈×⊆ (x∈l , from ⊆⇔Subperm p)

module _ {a}{p}{A : Set a} {l : List A}{P : Pred (List A) p} {xs : List A} {xss : List (List A)} where
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
