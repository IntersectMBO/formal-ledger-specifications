{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm where

open import Class.DecEq using (DecEq; _≟_)
open import Data.List hiding (_∷ʳ_; drop)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.Any using (there) renaming (any? to any?ˡ)
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax; Σ-syntax)
open import Data.Sum.Base as Sum using (_⊎_; inj₁; inj₂)
open import Level using (Level; _⊔_)
open import Function using (_∘_; _$_)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using () renaming (Decidable to Dec₂)
open import Relation.Nullary using (yes; no)
open import Relation.Nullary.Decidable.Core using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; subst)

private variable a p : Level

module _ {A : Set a} where

  data Subperm : Rel (List A) a where
    []    : Subperm [] []
    loose : ∀ {xs ys y} → Subperm xs ys → Subperm xs (y ∷ ys)
    tight : ∀ {x xs ys} → x ∈ ys → Subperm xs ys → Subperm (x ∷ xs) ys

  data SubpermOf (l : List A) : Pred (List A) a where
    empty : SubpermOf l []
    keep  : ∀ {xs} → Subperm xs l → SubpermOf l xs
    add   : ∀ {x xs} → x ∈ l → Subperm xs l → SubpermOf l (x ∷ xs)

  Subperm⁻¹ : {x : A}{xs l : List A} → Subperm (x ∷ xs) l → x ∈ l × Subperm xs l
  Subperm⁻¹ (tight x∈l xsSPl) = x∈l , xsSPl
  Subperm⁻¹ (loose sp) = there (proj₁ SP) , loose (proj₂ SP)
    where SP = Subperm⁻¹ sp

  Subperm[] : {l : List A} → Subperm [] l
  Subperm[] {[]} = []
  Subperm[] {_ ∷ _} = loose Subperm[]

  Subperms : List A → Pred (List A) a
  Subperms l = λ x → Subperm x l

  data AnySubpermOf (l : List A) (P : Pred (List A) p) : Pred (List(List A)) (a ⊔ p) where
    here  : ∀ {xs xss} (pxs  : P xs) → Subperm xs l → AnySubpermOf l P (xs ∷ xss)
    there : ∀ {xs xss} (pxss : AnySubpermOf l P xss) → AnySubpermOf l P (xs ∷ xss)

  -- data AnySubpermOf (l : List A) (P : Pred (List A) p) : Pred (Pred(List A) a) (a ⊔ p) where

  module _ {l : List A}{P : Pred (List A) p} {xs : List A} {xss : List (List A)} where
    toSum : AnySubpermOf l P (xs ∷ xss) → (P xs × Subperm xs l) ⊎ AnySubpermOf l P xss
    toSum (here pxs Spxsl) = inj₁ (pxs , Spxsl)
    toSum (there pxss) = inj₂ pxss

    fromSum : (P xs × Subperm xs l) ⊎ AnySubpermOf l P xss → AnySubpermOf l P (xs ∷ xss)
    fromSum (inj₁ (pxs , Spxsl))  = here pxs Spxsl
    fromSum (inj₂ pxss) = there pxss

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

  anyList? : ⦃ _ : DecEq A ⦄ → {l : List A}{P : Pred (List A) p} → Decidable P → Decidable(AnySubpermOf l P)
  anyList? P? [] = no λ()
  anyList? {l = l} P? (xs ∷ xss) = map′ fromSum toSum ((P? xs ×-dec subperm? xs l) ⊎-dec anyList? P? xss)

  satisfies? :  ⦃ _ : DecEq A ⦄{l : List A}{P : Pred (List A) p} → Decidable P
                → (t : List A) → Dec (Subperm t l × P t)
  satisfies? {l = l} P? t with (subperm? t l)
  ...| no ¬p = no (λ (p , _) → ¬p p)
  ...| yes p with (P? t)
  ...| no ¬q = no (λ (_ , q) → ¬q q)
  ...| yes q = yes (p , q)

  Subperm[]→[] : {xs : List A} → Subperm xs [] → xs ≡ []
  Subperm[]→[] [] = refl

  any? : ⦃ _ : DecEq A ⦄{l : List A}{P : Pred (List A) p} → Decidable P → Dec (∃[ t ](Subperm t l × P t))
  any? {l = []}{P} P?
    with P? []
  ...| no ¬p = no (λ (t , t⊆[] , p) → ¬p (subst P (Subperm[]→[] t⊆[]) p))
  ...| yes p = yes ([] , [] , p)
  any? {l = x ∷ xs} P?
    with any? {l = xs} P?
  ...| no ¬p = {!!}
  ...| yes (t , Sptxs , Pt) = yes (t , (loose Sptxs) , Pt)


  -- any? : ⦃ _ : DecEq A ⦄ → ∀{p}{l : List A}{P : Pred (List A) p} → Dec P → Dec (∃[ t ](Subperm t l × P t))
  -- any? {l = l} decP t
  --   with (subperm? t l)
  -- ... | no ¬p = no (λ (p , _) → ¬p p)
  -- ... | yes p
  --   with (decP t)
  -- ... | no ¬q = no (λ (_ , q) → ¬q q)
  -- ... | yes q = yes (p , q)
  -- data AllSubperms (ys : List A) : Set a where
  --   [] : AllSubperms ys
  --   drop : {x : A}{xs : List A} → Subperm (x ∷ xs) ys → AllSubperms ys
  --   keep : {x : A}{xs : List A} → x ∈ ys → Subperm xs ys → AllSubperms ys

  -- data AllSubperms' (ys : List A) : Pred (List A) a where
  --   [] : AllSubperms' ys []
  --   drop : {x : A}{xs : List A} → Subperm (x ∷ xs) ys → AllSubperms' ys xs
  --   keep : {x : A}{xs : List A} → x ∈ ys → Subperm xs ys → AllSubperms' ys (x ∷ xs)
  -- toList : {l : List A} → AllSubperms l → List A
  -- toList [] = []
  -- toList (drop{x}{xs} _) = xs
  -- toList (keep{x}{xs} _ _) = x ∷ xs

  -- IsSubperm : {l : List A}(t : AllSubperms l) → Subperm (toList t) l
  -- IsSubperm [] = Subperm[]
  -- IsSubperm (drop Spxxsl) = proj₂ (Subperm⁻¹ Spxxsl)
  -- IsSubperm (keep x∈l Spxsl) = tight x∈l Spxsl

  -- HaveAllSubperms : {xs ys : List A} → Subperm xs ys → Σ[ t ∈ AllSubperms ys ] (toList t) ≡ xs
  -- HaveAllSubperms {.[]} {.[]} [] = [] , refl
  -- HaveAllSubperms {[]} {.(_ ∷ _)} (loose Spxsys) = [] , refl
  -- HaveAllSubperms {x ∷ xs} {.(_ ∷ _)} (loose Spxsys) = {!!}
  -- HaveAllSubperms {.(_ ∷ _)} {ys} (tight x Spxsys) = {!!}
