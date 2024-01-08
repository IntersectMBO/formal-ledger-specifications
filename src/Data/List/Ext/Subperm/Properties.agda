{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm.Properties {a}{A : Set a} where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.List using (List; _∷_; [_]; [])
open import Data.List.Ext using (_⊆_)
open import Data.List.Ext.Properties using (addhead⊆; ⊆⇔head∈tail⊆)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax)
open import Data.Sum.Base using (_⊎_; inj₁; inj₂)
open import Level using (Level; _⊔_)
open import Function using (_∘_; _⇔_; mk⇔; id; Equivalence)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using (Min) renaming (Decidable to Dec₂)
open import Relation.Binary.PropositionalEquality using (_≡_; refl)
open import Relation.Nullary using (yes; no; ¬_)
open import Relation.Nullary.Decidable using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable)
open import Data.List.Ext.Subperm

private variable p : Level

minimum : Min (Subperm{A = A}) []
minimum []       = []
minimum (x ∷ xs) = loose (minimum xs)

Subperm[] : ∀{l} → Subperm [] l
Subperm[] {l} = minimum l

¬Subperm[] : {x : A}{xs : List A} → ¬ Subperm (x ∷ xs) []
¬Subperm[](tight x∈[] p) = ⊥-elim (¬Any[] x∈[])

Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
Subperm⁻¹ (tight x∈l xsSPl) = x∈l , xsSPl
Subperm⁻¹ (loose sp) = there (proj₁ SP) , loose (proj₂ SP)
  where SP = Subperm⁻¹ sp

Subperm[]→[] : {xs : List A} → Subperm xs [] → xs ≡ []
Subperm[]→[] {[]} _ = refl
Subperm[]→[] {x ∷ xs} spxs[] = ⊥-elim (¬Subperm[] spxs[])

tight⁻¹₁ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l
tight⁻¹₁ (loose p) = there (tight⁻¹₁ p)
tight⁻¹₁ (tight h _) = h

tight⁻¹₂ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → Subperm xs l
tight⁻¹₂ (loose p) = loose (tight⁻¹₂ p)
tight⁻¹₂ (tight _ Spxsl) = Spxsl

⊆⇔Subperm : {l L : List A} → l ⊆ L ⇔ Subperm l L
⊆⇔Subperm {[]} = mk⇔ (λ _ → Subperm[]) λ x → All.[]
⊆⇔Subperm {x ∷ xs}{[]} = mk⇔ (λ l⊆[] → ⊥-elim (¬Any[] (lookup l⊆[] (here refl)))) λ Spl[] → ⊥-elim (¬Subperm[] Spl[])
⊆⇔Subperm {x ∷ xs}{y ∷ ys} = mk⇔ i ii
  where
  open Equivalence
  i : (x ∷ xs) ⊆ (y ∷ ys) → Subperm (x ∷ xs) (y ∷ ys)
  i p = tight (proj₁ (to ⊆⇔head∈tail⊆ p)) (to ⊆⇔Subperm (proj₂ (to ⊆⇔head∈tail⊆ p)))

  ii : Subperm (x ∷ xs) (y ∷ ys) → (x ∷ xs) ⊆ (y ∷ ys)
  ii (loose p) = addhead⊆ (from ⊆⇔head∈tail⊆ (tight⁻¹₁ p , from ⊆⇔Subperm (tight⁻¹₂ p)))
  ii (tight x∈l p) = from ⊆⇔head∈tail⊆ (x∈l , from ⊆⇔Subperm p)


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
  subperm? (_ ∷ _) [] = no λ where (tight () _)
  subperm? (x ∷ xs) (y ∷ ys)
    with any?ˡ (x ≟_) (y ∷ ys)
  ... | no  x∉ = no (x∉ ∘ proj₁ ∘ Subperm⁻¹)
  ... | yes x∈
    with subperm? xs (y ∷ ys)
  ... | no ¬p = no (¬p ∘ proj₂ ∘ Subperm⁻¹)
  ... | yes p = yes (tight x∈ p)

  anySubpermOf? : (l : List A)(P : Pred (List A) p) → Decidable P → Decidable(AnySubpermOf P l)
  anySubpermOf? l P P? [] = no λ()
  anySubpermOf? l P P? (xs ∷ xss) = map′ fromSum toSum ((P? xs ×-dec subperm? xs l) ⊎-dec (subperm? xs l ×-dec anySubpermOf? l P P? xss))

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

