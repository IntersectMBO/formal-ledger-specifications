{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm.Properties {a}{A : Set a} where

open import Class.DecEq using (DecEq; _≟_)
open import Data.Empty
open import Data.List using (List; _∷_; [_]; []; _++_)
open import Data.List.Ext using (_⊆_; subpermutations; allPermutations; sublists; _+::_)
open import Data.List.Ext.Properties using (addhead⊆; ⊆⇔head∈tail⊆)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Relation.Unary.All using (all?; All; lookup)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax; ∃)
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

-- TODO: Prove the following to finish `allEnactable?` in `Ledger.Gov`.
--       Alternatively, prove `⊆⇔∈subpermutations` in Data.List.Ext.Properties`
--       and use that (since we have a proof of `(x ∷ xs) ⊆ l ⇔ Subperm (x ∷ xs) l`)
Subperm→∈subpermutations : {x : A}{xs L : List A} → Subperm (x ∷ xs) L → (x ∷ xs) ∈ subpermutations L
Subperm→∈subpermutations {x} {xs} (_∷ʳ_ {ys = ys} y Sp) = goal
  where
  goal : x ∷ xs ∈ allPermutations ((y +:: sublists ys) ++ sublists ys)
  goal = {!!}
Subperm→∈subpermutations {x} {xs = xs} {L} (x∈L ∷ SpxsL) = {!!}

∈subpermutations→Subperm : {x : A}{xs L : List A} → (x ∷ xs) ∈ subpermutations L → Subperm (x ∷ xs) L
∈subpermutations→Subperm {x} {[]} {L} ∈spL = x∈L ∷ Sp[]L
  where
  x∈L : x ∈ L
  x∈L = {!!}
  Sp[]L : Subperm [] L
  Sp[]L = {!!}
∈subpermutations→Subperm {x} {y ∷ xs} {L} ∈spL = x∈L ∷ SpxsL
  where
  x∈L : x ∈ L
  x∈L = {!!}
  xs∈spL : (y ∷ xs) ∈ subpermutations L
  xs∈spL = {!!}
  SpxsL : Subperm (y ∷ xs) L
  SpxsL = ∈subpermutations→Subperm xs∈spL

Subperm⇔∈subpermutations : {x : A}{xs L : List A} → Subperm (x ∷ xs) L ⇔ (x ∷ xs) ∈ subpermutations L
Subperm⇔∈subpermutations = mk⇔ Subperm→∈subpermutations ∈subpermutations→Subperm


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




  -- anySubpermOf? : {l : List A}{P : Pred (List A) p} → Decidable P → Dec(∃ P)
  -- anySubpermOf? {l = []} {P = P} P? with P? []
  -- ...| no ¬p = no goal
  --  where
  --  goal : ¬ (∃[ l ] P l)
  --  goal (l , Pl) = {!!}

  --  -- λ x → {!!} -- (λ (_ , p) → ¬p {!!})
  -- ...| yes p = yes ([] , p)
  -- anySubpermOf? {l = xs ∷ xss} {P = _} P? = {!!}
  -- [] = no λ()
  -- anySubpermOf? l P P? (xs ∷ xss) = map′ fromSum toSum ((P? xs ×-dec subperm? xs l) ⊎-dec (subperm? xs l ×-dec anySubpermOf? l P P? xss))
