{-# OPTIONS --safe #-}

module Data.List.Ext.Subperm where

open import Class.DecEq using (DecEq; _≟_)
open import Data.List hiding (_∷ʳ_; drop)
open import Data.List.Membership.Propositional using () renaming (_∈_ to _∈ˡ_)
open import Data.List.Relation.Unary.Any using (Any; here; there) renaming (any? to any?ˡ)
open import Data.List.Ext using (subpermutations)
open import Data.Product using (_×_; _,_; proj₁; proj₂; ∃-syntax; Σ-syntax)
open import Data.Sum.Base as Sum using (_⊎_; inj₁; inj₂)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (↭-empty-inv)
open import Level using (Level; _⊔_)
open import Function using (_∘_; _$_; _⇔_; mk⇔; id; Equivalence)
open import Data.List.Relation.Binary.Sublist.Heterogeneous -- using (Sublist; _∷ʳ_)
  renaming (minimum to minˡ) -- using (drop-Sublist)
open import Data.List.Relation.Binary.Sublist.Heterogeneous.Properties hiding (refl)
open import Relation.Binary.Core using (Rel)
open import Relation.Binary.Definitions using () renaming (Decidable to Dec₂)
open import Relation.Binary.Definitions using (_⟶_Respects_; Min)
open import Relation.Nullary using (yes; no; ¬_)
open import Data.Empty
open import Relation.Nullary.Decidable.Core using (Dec; map′; _⊎-dec_; _×-dec_)
open import Relation.Unary using (Pred; Decidable; _∈_)
open import Relation.Binary.PropositionalEquality using (_≡_; refl; subst; trans; sym)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
open import Data.List.Relation.Binary.Permutation.Propositional

private variable a p : Level

module _ {A : Set a} where

  ¬x∈[] : {x : A} → ¬ x ∈ˡ []
  ¬x∈[] = λ()

  Sublist[] : {l : List A} → Sublist _≡_ [] l
  Sublist[] {[]} = []
  Sublist[] {x ∷ xs} = x ∷ʳ Sublist[]

  Sublist-refl : {l : List A} → Sublist _≡_ l l
  Sublist-refl {[]} = []
  Sublist-refl {x ∷ l} = refl ∷ Sublist-refl

-- open Equivalence
-- Slrefl : ∀ {l : List A} → Sublist _≡_ l l
-- Slrefl {[]} = []
-- Slrefl {x ∷ l} = refl ∷ Slrefl


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


  -- Sublist-↭-comm : ∀{xs ys zs : List A} → Sublist _≡_ xs ys → ys ↭ zs
  --                  → ∃[ sl ](xs ↭ sl × Sublist _≡_ sl zs)
  -- Sublist-↭-comm {xs} {ys} {zs} Sl yszs = {!!}

  -- subperms? : ⦃ _ : DecEq A ⦄ → {l xs : List A} → Dec (Subperms l xs)
  -- subperms? {l}{xs} = {!!}

  data AnySubpermOf (l : List A) (P : Pred (List A) p) : Pred (List(List A)) (a ⊔ p) where
    here  : ∀ {xs xss} (pxs  : P xs) → Subperm xs l → AnySubpermOf l P (xs ∷ xss)
    there : ∀ {xs xss} (pxss : AnySubpermOf l P xss) → AnySubpermOf l P (xs ∷ xss)

  data AnySubpermOf' (l : List A) (P : Pred (List A) p) : Pred (Pred(List A) a) (a ⊔ p) where
    indeed : ∀ {xs} (_ : P xs) → Subperms l xs → AnySubpermOf' l P (Subperms l)

  -- anySubpermOf'? : ⦃ _ : DecEq A ⦄ → (l : List A)(P : Pred (List A) p) → Decidable P → Decidable(AnySubpermOf' l P)
  -- anySubpermOf'? l P P? pred = {!!}

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

  -- any? : ⦃ _ : DecEq A ⦄{l : List A}{P : Pred (List A) p} → Decidable P → Dec (∃[ t ](Subperm t l × P t))
  -- any? {l = []}{P} P?
  --   with P? []
  -- ...| no ¬p = no (λ (t , t⊆[] , p) → ¬p (subst P (Subperm[]→[] t⊆[]) p))
  -- ...| yes p = yes ([] , [] , p)
  -- any? {l = x ∷ xs} P?
  --   with any? {l = xs} P?
  -- ...| no ¬p = no (λ x₁ → {!!})
  -- ...| yes (t , Sptxs , Pt) = yes (t , (loose Sptxs) , Pt)


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
  --   keep : {x : A}{xs : List A} → x ∈ˡ ys → Subperm xs ys → AllSubperms ys

  -- data AllSubperms' (ys : List A) : Pred (List A) a where
  --   [] : AllSubperms' ys []
  --   drop : {x : A}{xs : List A} → Subperm (x ∷ xs) ys → AllSubperms' ys xs
  --   keep : {x : A}{xs : List A} → x ∈ˡ ys → Subperm xs ys → AllSubperms' ys (x ∷ xs)
  -- toList : {l : List A} → AllSubperms l → List A
  -- toList [] = []
  -- toList (drop{x}{xs} _) = xs
  -- toList (keep{x}{xs} _ _) = x ∷ xs

  -- IsSubperm : {l : List A}(t : AllSubperms l) → Subperm (toList t) l
  -- IsSubperm [] = Subperm[]
  -- IsSubperm (drop Spxxsl) = proj₂ (Subperm⁻¹ Spxxsl)
  -- IsSubperm (keep x∈l Spxsl) = tight x∈l Spxsl

  -- HaveAllSubperms : {xs ys : List A} → Subperm xs ys → Σ[ t ∈ˡ AllSubperms ys ] (toList t) ≡ xs
  -- HaveAllSubperms {.[]} {.[]} [] = [] , refl
  -- HaveAllSubperms {[]} {.(_ ∷ _)} (loose Spxsys) = [] , refl
  -- HaveAllSubperms {x ∷ xs} {.(_ ∷ _)} (loose Spxsys) = {!!}
  -- HaveAllSubperms {.(_ ∷ _)} {ys} (tight x Spxsys) = {!!}


module SubPerm {A : Set a} where

  data SubPerm : Rel (List A) a where
    list   : ∀ {xs ys} → Sublist _≡_ xs ys → SubPerm xs ys
    perm   : ∀ {xs ys} → xs ↭ ys → SubPerm xs ys
    -- tran  : ∀ {x xs y ys z zs} → SubPerm (x ∷ xs) (y ∷ ys) → SubPerm (y ∷ ys) (z ∷ zs) → SubPerm (x ∷ xs)(z ∷ zs)
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


  -- data SubpermOf' (l : List A) : Set a where
  --   Nil : SubpermOf' l
  --   Cons : ∀ {x} → x ∈ˡ l → SubpermOf' l → SubpermOf' l
  -- data SubpermOf' (l : List A) : Pred(List A) a where
  --   Nil : SubpermOf' l []
  --   Cons : ∀ {x xs} → x ∈ˡ l → SubpermOf' l xs → SubpermOf' l (x ∷ xs)

  -- ∈-↭ : {l : List A}{xs : List A} → SubPerm xs l ⇔ (∃[ sl ] (xs ↭ sl × Sublist _≡_ sl l))
  -- ∈-↭ {[]} {[]} = mk⇔ (λ x → [] , (_↭_.refl , Sublist.[])) λ x → list Sublist.[]
  -- ∈-↭ {[]} {xs ∷ xxs} = mk⇔ (⊥-elim ∘ ¬SubPerm[] ) ⇐
  --   where
  --   ⇐ : ∃[ sl ] (xs ∷ xxs ↭ sl × Sublist _≡_ sl []) → SubPerm (xs ∷ xxs) []
  --   ⇐ (.[] , h , []) = ⊥-elim (¬x∷xs↭[] h)

  -- ∈-↭ {l ∷ ls} {[]} = mk⇔ ⇒ (λ _ → SubPerm[])
  --   where
  --   ⇒ : SubPerm [] (l ∷ ls) → ∃[ sl ]([] ↭ sl × Sublist _≡_ sl (l ∷ ls))
  --   ⇒ (list x) = [] , refl , x
  --   ⇒ (perm x) = ⊥-elim (¬x∷xs↭[] (↭-sym x))
  --   ⇒ (pl {ys = ys} p q) = ys , p , q
  --   ⇒ (lp x x₁) = [] , (refl , Sublist[])
  -- ∈-↭ {l ∷ ls} {xs ∷ xxs} = mk⇔ ⇒ ⇐
  --   where
  --   ⇒ : SubPerm (xs ∷ xxs) (l ∷ ls) → ∃[ sl ](xs ∷ xxs ↭ sl × Sublist _≡_ sl (l ∷ ls))
  --   ⇒ (list x) = xs ∷ xxs , refl , x
  --   ⇒ (perm x) = (l ∷ ls) , (x , Sublist-refl)
  --   ⇒ (pl {ys = ys} x x₁) = ys , x , x₁
  --   ⇒ (lp {ys = y ∷ ys} u v) = {!!}

  --   ⇐ : ∃[ sl ](xs ∷ xxs ↭ sl × Sublist _≡_ sl (l ∷ ls)) → SubPerm (xs ∷ xxs) (l ∷ ls)
  --   ⇐ (.(xs ∷ xxs) , refl , Sl) = list Sl
  --   ⇐ (.(xs ∷ _) , prep .xs x↭s , Sl) = pl (prep xs x↭s) Sl
  --   ⇐ (.(y ∷ xs ∷ _) , swap .xs y x↭s , Sl) = pl (swap xs y x↭s) Sl
  --   ⇐ (sl , _↭_.trans x↭s x↭s₁ , Sl) = pl (_↭_.trans x↭s x↭s₁) Sl

  -- ∈-↭' : {l : List A}{xs : List A} → xs ∈ Subperms' l ⇔ (∃[ sl ] (xs ↭ sl × Sublist _≡_ sl l))
  -- ∈-↭' {l}{xxs} = mk⇔ ⇒ ⇐
  --   where
  --   ⇒ : xxs ∈ Subperms' l → ∃[ sl ] (xxs ↭ sl × Sublist _≡_ sl l)
  --   ⇒ [] = [] , _↭_.refl , Sublist.[]
  --   ⇒ (incl Spxsys) = proj₁ (to ∈-↭' Spxsys) , proj₁ (proj₂ (to ∈-↭' Spxsys)) , _ ∷ʳ proj₂ (proj₂ (to ∈-↭' Spxsys))
  --   ⇒ (more Spxsys) = _ ∷ proj₁ (to ∈-↭' Spxsys)
  --                   , _↭_.prep _ (proj₁ (proj₂ (to ∈-↭' Spxsys)))
  --                   , refl Sublist.∷ proj₂ (proj₂ (to ∈-↭' Spxsys))

  --   ⇐ : ∃[ sl ](xxs ↭ sl × Sublist _≡_ sl l) → xxs ∈ Subperms' l
  --   ⇐ ([] , _↭_.refl , Slsll) = Subperm'[]
  --   ⇐ ([] , _↭_.trans xxs↭ys ys↭[] , Slsll) =
  --     subst (λ x → Subperm' x l) (sym $ ↭-empty-inv $ _↭_.trans xxs↭ys ys↭[]) Subperm'[]
  --   ⇐ (x ∷ sl , _↭_.refl , _∷ʳ_ _ Slsll) = incl $ from ∈-↭' (x ∷ sl , _↭_.refl , Slsll)
  --   ⇐ (x ∷ xs , _↭_.refl , Sublist._∷_ refl Slxsys) = more (from ∈-↭' (xs , (_↭_.refl , Slxsys)))
  --   ⇐ (x ∷ sl , _↭_.prep{xs}{sl} .x xs↭sl , Slsll) = goal
  --     where
  --     ξ : Sublist _≡_ sl l
  --     ξ = drop-Sublist 1 Slsll
  --     ξ' : xs ∈ Subperms' l
  --     ξ' = from ∈-↭' (sl , (xs↭sl , ξ))

  --     goal : x ∷ xs ∈ Subperms' l
  --     goal = {!!}

  --   ⇐ (x ∷ .(z ∷ _) , _↭_.swap {xs}{ys} z .x xs↭ys , Slxzysl) = Goal
  --     where
  --     ξ : z ∷ x ∷ xs ↭ x ∷ z ∷ ys
  --     ξ = _↭_.swap z x xs↭ys
  --     Goal : z ∷ x ∷ xs ∈ Subperms' l
  --     Goal = {!!}

  --   ⇐ (x ∷ xs , _↭_.trans xxs↭ys ys↭xxs , Slxxsl) = {!!}

  -- ∈-subpermutations : {l : List A}{x : A}{xs : List A} → x ∷ xs ∈ Subperms l ⇔ x ∷ xs ∈ˡ subpermutations l
  -- ∈-subpermutations {[]} {x}{xs} = {!!}
  -- ∈-subpermutations {y ∷ ys} {x}{xs} = {!!}

