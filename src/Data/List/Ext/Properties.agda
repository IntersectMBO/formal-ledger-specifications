{-# OPTIONS --safe #-}

open import Prelude hiding (lookup; map)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using (List; [_]; []; _++_; head; tail; length; map)
open import Data.List.Ext
open import Data.List.Properties using (++-identityʳ; ++-assoc)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
  using (∈-deduplicate⁻; ∈-deduplicate⁺; ∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_; ↭-sym)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (¬x∷xs↭[])
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.All using (all?; All; lookup) renaming (tail to Alltail)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[])
open import Data.List.Relation.Unary.Unique.Propositional using (Unique)
open import Data.List.Relation.Unary.Unique.Propositional.Properties using (drop⁺)
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

-- TODO: stdlib?
AllPairs⇒≡∨R∨Rᵒᵖ : ∀ {ℓ ℓ'} {A : Set ℓ} {R : A → A → Set ℓ'} {a b l}
                 → AllPairs R l → a ∈ˡ l → b ∈ˡ l → a ≡ b ⊎ R a b ⊎ R b a
AllPairs⇒≡∨R∨Rᵒᵖ [] = λ ()
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (here refl) = inj₁ refl
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (here refl) (there b∈l) = inj₂ (inj₁ (lookup x b∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (here refl) = inj₂ (inj₂ (lookup x a∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l

--------------------------------------
------ miscellaneous properties ------
--------------------------------------
module _ {a}{A : Set a} where
  ¬[]≡x∷xs : {xs : List A}{x : A} → ¬ [] ≡ x ∷ xs
  ¬[]≡x∷xs ()

  []tail : {xs : List A}{x : A} → x ∷ [] ≡ x ∷ xs → [] ≡ xs
  []tail refl = refl

-------------------------------
------ properties of map ------
-------------------------------
module _ {a}{A : Set a} where
  ¬[]∈map : {ls : List (List A)}{z : A} → ¬ [] ∈ map(z ∷_) ls
  ¬[]∈map {_ ∷ _} (there p) = ¬[]∈map p

  ∈→∈∷ : {ys : List A}{y x : A} → x ∈ ys → x ∈ y ∷ ys
  ∈→∈∷ {y' ∷ ys} {y} {.y'} (here refl) = there (here refl)
  ∈→∈∷ {y' ∷ ys} {y} {x} (there p) = there (∈→∈∷ p)

  ¬∷[]∈map∘map : {ls : List (List A)}{y y' z : A} → ¬ z ∷ [] ∈ map(y ∷_) (map(y' ∷_) ls)
  ¬∷[]∈map∘map {l ∷ ls} {y} {y'} {z} (there p) = ¬∷[]∈map∘map{ls} p

  ∈-map' : {ls : List (List A)}{l : List A}{x : A} → l ∈ (map (x ∷_) ls) → x ∈ l
  ∈-map' {[]} = λ ()
  ∈-map' {_ ∷ _} (here refl) = here refl
  ∈-map' {_ ∷ _} (there p) = ∈-map' p

  ∈-puthead→≡×∈ : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ map (_∷_ y) ls → x ≡ y × xs ∈ ls
  ∈-puthead→≡×∈ {_ ∷ _} (here refl) = refl , (here refl)
  ∈-puthead→≡×∈ {_ ∷ _} (there p) = (proj₁ (∈-puthead→≡×∈ p)) , there (proj₂ (∈-puthead→≡×∈ p))

  maphead-decomp' : {ls : List (List A)}{xs : List A}{y x : A} → x ∷ xs ∈ map (y ∷_) ls → x ≡ y × xs ∈ ls
  maphead-decomp' {_ ∷ _} (here refl) = refl , (here refl)
  maphead-decomp' {_ ∷ _} (there xxs∈) = (proj₁ (maphead-decomp' xxs∈)) , there (proj₂ (maphead-decomp' xxs∈))

  maphead-decomp : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ map (y ∷_) ls → ∃[ ys ](ys ∈ ls × y ∷ ys ≡ xs)
  maphead-decomp {l ∷ _} {.(_ ∷ l)}(here refl) = l , ((here refl) , refl)
  maphead-decomp {_ ∷ _} {[]} {y} (there xs∈) = ⊥-elim (¬[]∈map xs∈)
  maphead-decomp {_ ∷ _} {x ∷ xs} (there xs∈) =
    xs , there (proj₂ (maphead-decomp' xs∈)) , subst (λ u → u ∷ xs ≡ x ∷ xs) (proj₁ (maphead-decomp' xs∈)) refl

  ∈-map+head : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ ls → y ∷ xs ∈ map (y ∷_) ls
  ∈-map+head {_ ∷ _} (here refl) = here refl
  ∈-map+head {_ ∷ _} (there p) = there (∈-map+head p)

  ∈-map-distr : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) (ll ++ lr) → l ∈ map(x ∷_) ll ++ map(x ∷_) lr
  ∈-map-distr {[]} {lr} {x} l l∈ = l∈
  ∈-map-distr {_ ∷ _} l (here px) = here px
  ∈-map-distr {_ ∷ lls} l (there l∈) = there (∈-map-distr{ll = lls} l l∈)


  ∈-map-distrˡ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) ll → l ∈ map(x ∷_) (ll ++ lr)
  ∈-map-distrˡ {_ ∷ _} _ (here px) = here px
  ∈-map-distrˡ {_ ∷ _} l (there l∈) = there (∈-map-distrˡ l l∈)

  ∈-map-distrʳ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) lr → l ∈ map(x ∷_) (ll ++ lr)
  ∈-map-distrʳ {[]} _ = id
  ∈-map-distrʳ {_ ∷ _} l l∈ = there (∈-map-distrʳ l l∈)


-------------------------------
------ properties of All ------
-------------------------------
module _ {a}{A : Set a} where
  -- TODO: check whether any of these already exist in the Agda std lib
  ∈all+head : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  ∈all+head {[]} x∈all = x∈all
  ∈all+head {_ ∷ _} (px All.∷ x∈all) = (there px) All.∷ (∈all+head x∈all)

  ∈-map : {ls : List (List A)}{x : A} → All (x ∈_) (map (x ∷_) ls)
  ∈-map {[]} = All.[]
  ∈-map {_ ∷ _} = here refl All.∷ ∈-map

  ∈-All-∈ : {ys xs : List A}{z : A} → z ∈ ys → All(_∈ xs) ys → z ∈ xs
  ∈-All-∈ (here refl) (px All.∷ ys∈) = px
  ∈-All-∈ (there z∈) (px All.∷ ys∈) = ∈-All-∈ z∈ ys∈

  All-trans : {zs ys xs : List A} → All(_∈ ys) zs → All (_∈ xs) ys → All (_∈ xs) zs
  All-trans {[]} p = λ _ → All.[]
  All-trans {_ ∷ _} (here refl All.∷ p) (px All.∷ q) = px All.∷ (All-trans p (px All.∷ q))
  All-trans {_ ∷ _} (there px All.∷ p) (px₁ All.∷ q) = (∈-All-∈ px q) All.∷ (All-trans p (px₁ All.∷ q))

  all∈-→all∈+head : {ys xs : List A}{x : A} → All(_∈ xs) ys → All(_∈ x ∷ xs) ys
  all∈-→all∈+head {[]} _ = All.[]
  all∈-→all∈+head {_ ∷ _} {.(_ ∷ _)} (here refl All.∷ p) = (there (here refl)) All.∷ (all∈-→all∈+head p)
  all∈-→all∈+head {_ ∷ _} {.(_ ∷ _)} (there px All.∷ p) = (there (there px)) All.∷ (all∈-→all∈+head p)

  ∈-All+head : {ys : List A}{x : A} → All(_∈ x ∷ ys) ys
  ∈-All+head {[]} = All.[]
  ∈-All+head {_ ∷ _} = all∈-→all∈+head ((here refl) All.∷ ∈-All+head)

  All++ : ∀ {p} {P : Pred A p} {ll lr : List A} → All P ll → All P lr → All P (ll ++ lr)
  All++ {ll = .[]} All.[] h2 = h2
  All++ {ll = .(_ ∷ _)} (px All.∷ h1) h2 = px All.∷ (All++ h1 h2)

  All++→∧ : ∀ {p} {P : Pred A p} {ll lr : List A} → All P (ll ++ lr) → All P ll × All P lr
  All++→∧ {ll = []} = _,_ All.[]
  All++→∧ {ll = _ ∷ _} {lr} (px All.∷ p) = (px All.∷ proj₁ (All++→∧ p)) , (proj₂ (All++→∧ p))

  imp→all : {ls : List (List A)}{y : A} → (∀ l → l ∈ ls → y ∈ l) → All (y ∈_ ) ls
  imp→all {[]} imph = All.[]
  imp→all {l' ∷ _} imph = (imph l' (here refl)) All.∷ (imp→all (λ l z → imph l (there z)))

  all→imp : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → (∀ l → l ∈ ls → y ∈ l)
  all→imp {.(l ∷ _)} (y∈l All.∷ _) l (here refl) = y∈l
  all→imp {.(_ ∷ _)} (_ All.∷ y∈all) l (there l∈ls) = all→imp y∈all l l∈ls

  all≢x→¬any≡x : {ys : List A}{x : A} → All (λ z → ¬ x ≡ z) ys → ¬ Any (λ z → x ≡ z) ys
  all≢x→¬any≡x (¬x≡y All.∷ _) (here x≡y) = ¬x≡y x≡y
  all≢x→¬any≡x (_ All.∷ all¬≡) (there any≡) = all≢x→¬any≡x all¬≡ any≡

  all≢x→¬x∈ : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  all≢x→¬x∈ (all¬≡x AllPairs.∷ _) x∈xs = all≢x→¬any≡x all¬≡x x∈xs

  all∈⊧addhead : {ls : List (List A)}{x y : A} → All(x ∈_) ls → All(x ∈_) (map (y ∷_) ls)
  all∈⊧addhead {[]} {x} {y} h = h
  all∈⊧addhead {ls ∷ ls₁} {x} {y} (px All.∷ h) = (there px) All.∷ (all∈⊧addhead h)

  x∈allmapx∷ : {ls : List (List A)}{x : A} → All(x ∈_) (map (x ∷_) ls)
  x∈allmapx∷ {[]} {x} = All.[]
  x∈allmapx∷ {ls ∷ ls₁} {x} = here refl All.∷ x∈allmapx∷

-------------------------------
------ properties of Any ------
-------------------------------
module _ {a}{A : Set a} where

  Any++ˡ : {ll lr : List (List A)}{x : A} → Any(x ∈_) ll → Any (x ∈_) (ll ++ lr)
  Any++ˡ (here px) = here px
  Any++ˡ (there p) = there (Any++ˡ p)

  Any++ʳ : {ll lr : List (List A)}{x : A} → Any(x ∈_) lr → Any (x ∈_) (ll ++ lr)
  Any++ʳ {[]} (here px) = here px
  Any++ʳ {[]} (there p) = there p
  Any++ʳ {_ ∷ _} (here px) = there (Any++ʳ (here px))
  Any++ʳ {_ ∷ _} (there p) = there (Any++ʳ (there p))

  Any++→∨ : {ll lr : List (List A)}{x : A} → Any (x ∈_) (ll ++ lr) → Any(x ∈_) ll ⊎ Any(x ∈_) lr
  Any++→∨ {[]} p = inj₂ p
  Any++→∨ {_ ∷ _} (here px) = inj₁ (here px)
  Any++→∨ {_ ∷ xs} (there p) with (Any++→∨{xs} p)
  ...| inj₁ v = inj₁ (there v)
  ...| inj₂ v = inj₂ v

-----------------------------------------------
-------- Properties of list inclusion ---------
-----------------------------------------------
module _ {a}{A : Set a} where
  ⊆-def : {ys xs : List A} → xs ⊆ ys → ∀ x → x ∈ xs → x ∈ ys
  ⊆-def (px All.∷ p) x (here refl) = px
  ⊆-def (px All.∷ p) x (there x∈) = ⊆-def p x x∈

  ⊆-def⁻¹ : {ys xs : List A} → (∀ x → x ∈ xs → x ∈ ys) → xs ⊆ ys
  ⊆-def⁻¹ {xs = []} def = All.[]
  ⊆-def⁻¹ {xs = x₂ ∷ _} def = def x₂ (here refl) All.∷ (⊆-def⁻¹ (λ x x∈l → def x (there x∈l)))

  ⊆-addhead : {ys xs : List A}{y : A} → xs ⊆ ys → xs ⊆ (y ∷ ys)
  ⊆-addhead All.[] = All.[]
  ⊆-addhead (px All.∷ pxs) = there px All.∷ ⊆-addhead pxs

  ⊆-drophead : {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys → xs ⊆ ys
  ⊆-drophead (here refl All.∷ p) = p
  ⊆-drophead (there _ All.∷ p) = p

  ⊆-id : {xs : List A} → xs ⊆ xs
  ⊆-id {[]} = All.[]
  ⊆-id {_ ∷ _} = (here refl) All.∷ (⊆-addhead ⊆-id)

  ⊆-[] : {xs : List A} → xs ⊆ [] → xs ≡ []
  ⊆-[] {[]} _ = refl
  ⊆-[] {_ ∷ _} (px All.∷ _) = ⊥-elim (¬Any[] px)

  ¬⊆[] : {xs : List A}{x : A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆[] (px All.∷ _) = ¬Any[] px

  toAny : {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys → x ∈ ys
  toAny (here refl All.∷ _) = here refl
  toAny (there px All.∷ _) = there px

  fromAny : {ys : List A}{x : A} → x ∈ ys → [ x ] ⊆ ys
  fromAny p = p All.∷ All.[]

  ∷⊆→∈×⊆ : ∀ {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys → x ∈ ys × xs ⊆ ys
  ∷⊆→∈×⊆ (px All.∷ p) = px , p

  ∈×⊆→∷⊆ : ∀ {ys xs : List A}{x : A} → x ∈ ys × xs ⊆ ys → (x ∷ xs) ⊆ ys
  ∈×⊆→∷⊆ (x∈ys , xs⊆ys) = x∈ys All.∷ xs⊆ys

  ∷⊆⇔∈×⊆ : {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys ⇔ (x ∈ ys × xs ⊆ ys)
  ∷⊆⇔∈×⊆ {[]} = mk⇔ (⊥-elim ∘ ¬⊆[]) (λ ())
  ∷⊆⇔∈×⊆ {y ∷ ys} = mk⇔ ∷⊆→∈×⊆ ∈×⊆→∷⊆

  ⊆+∷ : {l' xs : List A}{y : A} → xs ⊆ l' → xs ⊆ (y ∷ l')
  ⊆+∷ {l'} {.[]} All.[] = All.[]
  ⊆+∷ {.(_ ∷ xs)} {.(_ ∷ _)} (here {xs = xs} refl All.∷ xs⊆l') = (there (here refl)) All.∷ (⊆+∷ xs⊆l')
  ⊆+∷ {.(_ ∷ _)} {.(_ ∷ _)} (there px All.∷ xs⊆l') = (there (there px)) All.∷ (⊆+∷ xs⊆l')

  ⊆→∷⊆∷ : {ys xs : List A}{y : A} → xs ⊆ ys → (y ∷ xs) ⊆ (y ∷ ys)
  ⊆→∷⊆∷ {[]} {[]} {y} xsys = here refl All.∷ All.[]
  ⊆→∷⊆∷ {[]} {x ∷ xs} {y} (() All.∷ xsys)
  ⊆→∷⊆∷ {x ∷ ys} {.[]} {y} All.[] = here refl All.∷ All.[]
  ⊆→∷⊆∷ {y ∷ ys} {.(y ∷ xs)} {y'} (All._∷_ {.y} {xs} (here refl) xsys) = (here refl) All.∷ ((there (here refl)) All.∷ (⊆+∷ {l' = y ∷ ys} xsys))
  ⊆→∷⊆∷ {y ∷ ys} {.(x ∷ xs)} {y'} (All._∷_ {x} {xs} (there px) xsys) = (here refl) All.∷ ((there (there px)) All.∷ (⊆+∷ {l' = y ∷ ys} xsys))

  ∈⊆→∈ : {l l' : List A}{x : A} → x ∈ l → l ⊆ l' → x ∈ l'
  ∈⊆→∈ (here refl) (px All.∷ l⊆l') = px
  ∈⊆→∈ (there x∈l) l⊆l' = ∈⊆→∈ x∈l (proj₂ (∷⊆→∈×⊆ l⊆l'))

  xs≡[] : {xs : List A}{x : A} → x ∷ [] ≡ x ∷ xs → [] ≡ xs
  xs≡[] refl = refl

  ⊆-swap : {ll lr : List A}{x y : A} → ll ⊆ (x ∷ y ∷ lr) → ll ⊆ (y ∷ x ∷ lr)
  ⊆-swap {[]}  ll∈ = All.[]
  ⊆-swap {_ ∷ _}  (here px All.∷ ll∈) = there (here px) All.∷ ⊆-swap ll∈
  ⊆-swap {_ ∷ _}  (there (here px) All.∷ ll∈) = here px All.∷ ⊆-swap ll∈
  ⊆-swap {_ ∷ _}  (there (there px) All.∷ ll∈) = there (there px) All.∷ ⊆-swap ll∈

  ∈-putsubhead : {ls : List (List A)}{l l' xs : List A} → xs ∈ l ∷ ls → xs ∈ l ∷ l' ∷ ls
  ∈-putsubhead {ls} {l'} {xs} (here p) = here p
  ∈-putsubhead {ls} {l'} {xs} (there p) = there (there p)

--------------------------------------------------------------
------- duplicate entries in lists and deduplication ---------
--------------------------------------------------------------
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

  ⊆-dedup : ∀{l l'} → l ⊆ l' ⇔ l ⊆ deduplicate≡ l'
  ⊆-dedup {[]} {l'} = mk⇔ (λ _ → All.[])(λ _ → All.[])
  ⊆-dedup {x ∷ xs} {[]} = mk⇔ (⊥-elim ∘ ¬⊆[])(⊥-elim ∘ ¬⊆[])
  ⊆-dedup {x ∷ xs} {y ∷ ys} = mk⇔ i ii
    where
    open Equivalence
    i : ((x ∷ xs) ⊆ (y ∷ ys)) → ((x ∷ xs) ⊆ deduplicate≡ (y ∷ ys))
    i h = to ∈-dedup (proj₁ (to ∷⊆⇔∈×⊆ h)) All.∷ to ⊆-dedup (proj₂ (to ∷⊆⇔∈×⊆ h))
    ii : ((x ∷ xs) ⊆ deduplicate≡ (y ∷ ys)) → ((x ∷ xs) ⊆ (y ∷ ys))
    ii h = (from ∈-dedup (proj₁ (to ∷⊆⇔∈×⊆ h))) All.∷ from ⊆-dedup (proj₂ (to ∷⊆⇔∈×⊆ h))


-----------------------------------------------------------
-------- properties of concatenation and union ------------
-----------------------------------------------------------
module _ {a} {A : Set a} where
  ∈++ˡ : {ll lr : List A}{x : A} → x ∈ ll → x ∈ ll ++ lr
  ∈++ˡ (here refl) = here refl
  ∈++ˡ (there x∈ys) = there (∈++ˡ x∈ys)

  ∈++ʳ : {ll lr : List A}{x : A} → x ∈ lr → x ∈ ll ++ lr
  ∈++ʳ {[]} = id
  ∈++ʳ {_ ∷ _} p = there (∈++ʳ p)

  ⊆++ˡ : {ll lr : List A} → ll ⊆ (ll ++ lr)
  ⊆++ˡ = ⊆-def⁻¹ (λ x → ∈++ˡ{x = x})

  ⊆++ʳ : {ll lr : List A}{x : A} → lr ⊆ (ll ++ lr)
  ⊆++ʳ = ⊆-def⁻¹ (λ x → ∈++ʳ{x = x})

  ⊎→++ : {ll lr : List A}{x : A} → x ∈ ll ⊎ x ∈ lr → x ∈ ll ++ lr
  ⊎→++ (inj₁ x∈ll) = ∈++ˡ x∈ll
  ⊎→++ (inj₂ x∈lr) = ∈++ʳ x∈lr

  ++→⊎ : {ll lr : List A}{x : A} → x ∈ ll ++ lr → x ∈ ll ⊎ x ∈ lr
  ++→⊎ {[]} x∈[] = inj₂ x∈[]
  ++→⊎ {_ ∷ _} (here refl) = inj₁ (here refl)
  ++→⊎ {_ ∷ _} (there x∈ys) with (++→⊎ x∈ys)
  ...| inj₁ y∈ys = inj₁ (there y∈ys)
  ...| inj₂ x∈ll = inj₂ x∈ll

  ++⇔⊎ : {ll lr : List A}{x : A} → (x ∈ ll ++ lr) ⇔ (x ∈ ll ⊎ x ∈ lr)
  ++⇔⊎ = mk⇔ ++→⊎ ⊎→++

  ¬[]++ˡ : {ll : List A} → ¬ ll ≡ [] → ∀ lr → ¬ ll ++ lr ≡ []
  ¬[]++ˡ {[]} ¬p _ = ⊥-elim (¬p refl)
  ¬[]++ˡ {_ ∷ _} _ _ = λ ()

  ¬[]++ʳ : {lr : List A} → ¬ lr ≡ [] → ∀ ll → ¬ ll ++ lr ≡ []
  ¬[]++ʳ ¬p [] = ¬p
  ¬[]++ʳ _ (_ ∷ _) = λ ()

  all≢→∉ : {xs : List A}{x : A} → All (λ x' → x ≡ x' → ⊥) xs → ¬ x ∈ xs
  all≢→∉ {.(_ ∷ _)} (px All.∷ p) (here refl) = px refl
  all≢→∉ {.(_ ∷ _)} p (there q) = all≢→∉ (Alltail p) q


------------------------------------
------- properties of insert -------
------------------------------------
module _ {a}{A : Set a} where
  ¬[]∈insert : {ys : List A}{z : A} → ¬ [] ∈ (insert z ys)
  ¬[]∈insert {[]} (here ())
  ¬[]∈insert {[]} (there ())
  ¬[]∈insert {_ ∷ _} (there p) = ¬[]∈map p

  ¬∷[]∈map∘insert : {l : List A}{y y' z : A} → ¬ z ∷ [] ∈ map (y' ∷_) (insert y l)
  ¬∷[]∈map∘insert {[]} {y} {y'} {z} (here ())
  ¬∷[]∈map∘insert {[]} {y} {y'} {z} (there ())
  ¬∷[]∈map∘insert {x ∷ l} {y} {y'} {z} (there p) = ¬∷[]∈map∘map p


  ∈-insert : {l : List A}{x : A} → All (x ∈_) ((insert x) l)
  ∈-insert {[]} = here refl All.∷ All.[]
  ∈-insert {_ ∷ _} = (here refl) All.∷ ∈all+head ∈-insert


  ∈-map+insert : {ys xs : List A}{y z : A} → xs ∈ map (y ∷_) (insert z ys) → ys ⊆ xs
  ∈-map+insert {[]} _ = All.[]
  ∈-map+insert {_ ∷ _} (here refl) =
    (there (there (here refl))) All.∷ (All-trans ∈-All+head (All-trans ∈-All+head ∈-All+head))
  ∈-map+insert {_ ∷ _} {[]} (there p) = ⊥-elim (¬[]∈map p)
  ∈-map+insert {_ ∷ _} {_ ∷ _} (there p) =
    there (∈-map' (proj₂ (∈-puthead→≡×∈ p))) All.∷ all∈-→all∈+head (∈-map+insert (proj₂ (∈-puthead→≡×∈ p)))

  ∈-insert' : {ys xs : List A}{z : A} → xs ∈ (insert z ys) → ys ⊆ xs
  ∈-insert' {[]} p = All.[]
  ∈-insert' {_ ∷ _} (here refl) = (there (here refl)) All.∷ (All-trans ∈-All+head ∈-All+head)
  ∈-insert' {_ ∷ _} {[]} (there p) = ⊥-elim (¬[]∈map p)
  ∈-insert' {_ ∷ _} {_ ∷ _} (there p) = (∈-map' p) All.∷ ∈-map+insert p

  ∈-insert-head : {ys : List A}{x : A} → x ∷ ys ∈ insert x ys
  ∈-insert-head {[]} = here refl
  ∈-insert-head {x ∷ ys} = here refl


  ¬∷[]∈insert∘map : {ls : List (List A)}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y) (map (y' ∷_) ls)
  ¬∷[]∈insert∘map {[]}  = λ ()
  ¬∷[]∈insert∘map {l ∷ ls} {y} {y'} {z} (there p) with ++→⊎ {ll = map (y' ∷_) (insert y l)} p
  ...| inj₁ v = ¬∷[]∈map∘insert v
  ...| inj₂ v = ¬∷[]∈insert∘map{ls} v

  ¬[]∈fmInsert : {ls : List (List A)}{y : A} → ¬ [] ∈ flatMap (insert y) ls
  ¬[]∈fmInsert {[]} ()
  ¬[]∈fmInsert {l ∷ ls}{y} p with ++→⊎{ll = insert y l} p
  ...| inj₁ v = ¬[]∈insert v
  ...| inj₂ v = ¬[]∈fmInsert{ls}{y} v

  ∷[]∈insert-decomp : {l : List A}{y z : A} → z ∷ [] ∈ (insert y) l → z ≡ y × l ≡ []
  ∷[]∈insert-decomp {[]} (here refl) = <″-offset refl
  ∷[]∈insert-decomp {_ ∷ _} (there p) = ⊥-elim (¬∷[]∈map∘insert p)

  ∷[]∈fmInsert-decomp : {ls : List (List A)}{y z : A} → z ∷ [] ∈ flatMap (insert y) ls → z ≡ y × [] ∈ ls
  ∷[]∈fmInsert-decomp{_ ∷ ls} p with ++→⊎ p
  ...| inj₁ v = proj₁ (∷[]∈insert-decomp v) , here (sym (proj₂ (∷[]∈insert-decomp v)))
  ...| inj₂ v = (proj₁ (∷[]∈fmInsert-decomp{ls} v)) , (there (proj₂ (∷[]∈fmInsert-decomp v)))

  ¬∷[]∈insert∘insert : {ys : List A}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y') (insert y ys)
  ¬∷[]∈insert∘insert {[]} (there (here ()))
  ¬∷[]∈insert∘insert {[]} (there (there ()))
  ¬∷[]∈insert∘insert {_ ∷ ys} {y'} {y''} (there (there p)) with ++→⊎ p
  ...| inj₁ v = ¬∷[]∈map∘map {ls = insert y'' ys} v
  ...| inj₂ v = ¬∷[]∈insert∘map{insert y' ys} v

  ¬∷[]-insert∘insert' : {ls : List (List A)}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y') (flatMap (insert y) ls)
  ¬∷[]-insert∘insert' {ls}{y} p = ¬[]∈fmInsert{ls}{y} (proj₂ (∷[]∈fmInsert-decomp p))

  ∈-fmInsert : {ls : List (List A)}{x : A} → All (x ∈_) (flatMap (insert x) ls)
  ∈-fmInsert {[]} = All.[]
  ∈-fmInsert {_ ∷ ls} = All++ ∈-insert (∈-fmInsert{ls})

  ∈-fmInsert' : {ls : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ls → x ∈ l
  ∈-fmInsert' {ls} = all→imp (∈-fmInsert{ls})

  map-resp-∈ : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (_∷_ y) ls)
  map-resp-∈ {[]} = id
  map-resp-∈ {_ ∷ _} (px All.∷ p) = there px All.∷ map-resp-∈ p

  insert-resp-∈ : {ys : List A}{y x : A} → x ∈ ys → All (x ∈_) (insert y ys)
  insert-resp-∈ (here refl) = (there (here refl)) All.∷ ∈-map
  insert-resp-∈ (there x∈ys) = (there (there x∈ys)) All.∷ (map-resp-∈ (insert-resp-∈ x∈ys))

  map∘insert-reps-∈ : {z y x : A}(l : List A) → x ∈ l → All (x ∈_) (map (_∷_ z) (insert y l))
  map∘insert-reps-∈ [] ()
  map∘insert-reps-∈ (_ ∷ _) (here refl) = (there (there (here refl))) All.∷ (map-resp-∈ ∈-map)
  map∘insert-reps-∈ (_ ∷ _) (there x∈wws) = (there (there (there x∈wws)))
                                            All.∷ (map-resp-∈ (map-resp-∈ (insert-resp-∈ x∈wws)))

  ∈-insert'' : {l : List A}{y x : A} → x ∈ l → All(x ∈_) (insert y l)
  ∈-insert'' {.(_ ∷ _)} (here refl) = (there (here refl)) All.∷ ∈-map
  ∈-insert'' {.(_ ∷ xs)} (there {xs = xs} x∈l) = (there (there x∈l)) All.∷ map∘insert-reps-∈ xs x∈l

  fmInsert-resp-∈ : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (flatMap (insert y) ls)
  fmInsert-resp-∈ {.[]} All.[] = All.[]
  fmInsert-resp-∈ {.(_ ∷ _)} (px All.∷ p) = All++ (∈-insert'' px) (fmInsert-resp-∈ p)

  ∈-fmInsert'' : {y x : A} → ∀ l → x ∈ l → All (x ∈_) (insert y l)
  ∈-fmInsert'' .(_ ∷ _) (here refl) = (there (here refl)) All.∷ ∈-map
  ∈-fmInsert'' .(_ ∷ xs) (there {xs = xs} x∈l) = (there (there x∈l)) All.∷ (map∘insert-reps-∈ xs x∈l)

  ∈-fmInsert''' : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (flatMap (insert y) ls)
  ∈-fmInsert''' {[]} x∈all = x∈all
  ∈-fmInsert''' {l ∷ _} (px All.∷ x∈all) = All++ (∈-fmInsert'' l px) (∈-fmInsert''' x∈all)

  ∈-insert-decomp : {xs : List A}{x : A} → ∀ ys → ys ∈ (insert x xs) → ys ⊆ (x ∷ xs)
  ∈-insert-decomp {[]} .(_ ∷ []) (here refl) = here refl All.∷ All.[]
  ∈-insert-decomp {_ ∷ _} .(_ ∷ _ ∷ _) (here refl) = (here refl) All.∷ (all∈-→all∈+head ⊆-id)
  ∈-insert-decomp {_ ∷ _} [] (there ys∈) = All.[]
  ∈-insert-decomp {_ ∷ _} (y ∷ ys) (there ys∈) with maphead-decomp' ys∈
  ...| y≡x , ys∈x'xs = there (here y≡x) All.∷ ⊆-swap (all∈-→all∈+head (∈-insert-decomp ys ys∈x'xs))

  ∈-fmInsert-decomp : {ls : List (List A)}{x : A} → ∀ ys → ys ∈ (flatMap (insert x) ls)
                      → ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
  ∈-fmInsert-decomp {xs ∷ _} ys ys∈ with ++→⊎ ys∈
  ...| inj₁ v = xs , here refl , ∈-insert-decomp ys v
  ...| inj₂ v with ∈-fmInsert-decomp ys v
  ...| l , l∈ls , ys⊆ = l , there l∈ls , ys⊆

  ∈-fmInsert-decomp' : {ls : List (List A)}{y : A} → ∀ xs → xs ∈ (flatMap (insert y) ls)
                       → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
  ∈-fmInsert-decomp' {zs ∷ _} xs xs∈ with ++→⊎ xs∈
  ...| inj₁ v = zs , here refl , v
  ...| inj₂ v with ∈-fmInsert-decomp' xs v
  ...| l , l∈ls , xs∈yl = l , there l∈ls , xs∈yl

  ∈-fmInsert-decomp'⁻¹ : {ls : List (List A)}{y : A} → ∀ xs → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
                         → xs ∈ (flatMap (insert y) ls)
  ∈-fmInsert-decomp'⁻¹ {l ∷ ls} {y} xs (.l , here refl , xs∈) = ∈++ˡ xs∈
  ∈-fmInsert-decomp'⁻¹ {l ∷ ls} {y} xs (l' , there l'∈ , xs∈) = ∈++ʳ (∈-fmInsert-decomp'⁻¹ xs (l' , (l'∈ , xs∈)))

  ∈-fmInsert-distr : {ll lr : List (List A)}{xs : List A}{x : A} → xs ∈ flatMap (insert x) (ll ++ lr)
                     → xs ∈ flatMap (insert x) ll ++ flatMap (insert x) lr

  ∈-fmInsert-distr {[]} {lr} {xs} {x} xs∈xlr = xs∈xlr
  ∈-fmInsert-distr {ll ∷ lls} {[]} {xs} {x} xs∈xlr with ++→⊎{ll = insert x ll} xs∈xlr
  ...| inj₁ v = ∈++ˡ (∈++ˡ{ll = insert x ll} v)
  ...| inj₂ v = ∈++ˡ(∈++ʳ{ll = insert x ll} (subst (λ u → xs ∈ˡ flatMap (insert x) u) (++-identityʳ lls) v))
  ∈-fmInsert-distr {ll ∷ lls} {lr ∷ lrs} {xs} {x} xs∈xlr with ++→⊎{ll = insert x ll} xs∈xlr
  ...| inj₁ v = ∈++ˡ (∈++ˡ{ll = insert x ll} v)
  ...| inj₂ v with ++→⊎{ll = flatMap(insert x) lls}{lr = flatMap(insert x) (lr ∷ lrs)} (∈-fmInsert-distr{lls} v)
  ...| inj₁ w = ∈++ˡ{ll = (insert x ll ++ flatMap (insert x) lls)} (∈++ʳ{ll = insert x ll} w)
  ...| inj₂ w = ∈++ʳ{ll = (insert x ll ++ flatMap (insert x) lls)} w

  ∈-fmInsert++ˡ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ll → l ∈ flatMap (insert x) (ll ++ lr)
  ∈-fmInsert++ˡ {ll ∷ lls} {lr} {x} l xs∈xll with ++→⊎{ll = insert x ll} xs∈xll
  ...| inj₁ v = ∈++ˡ v
  ...| inj₂ v = ∈++ʳ (∈-fmInsert++ˡ{lls} l v)

  ∈-fmInsert++ʳ : {ll lr : List (List A)}{xs : List A}{x : A}
                   → xs ∈ flatMap (insert x) lr → xs ∈ flatMap (insert x) (ll ++ lr)
  ∈-fmInsert++ʳ {[]} {lr} {xs} xs∈xlr = xs∈xlr
  ∈-fmInsert++ʳ {ll ∷ lls} {lr} {xs}{x} xs∈xlr = ∈++ʳ {ll = insert x ll} (∈-fmInsert++ʳ{ll = lls} xs∈xlr)

  ∈-fmInsert-distr⁻¹ : {ll lr : List (List A)}{x : A} → ∀ l
                       → l ∈ flatMap (insert x) ll ++ flatMap (insert x) lr → l ∈ flatMap (insert x) (ll ++ lr)
  ∈-fmInsert-distr⁻¹ {[]} {lr} l l∈++ = l∈++
  ∈-fmInsert-distr⁻¹ {ll ∷ lls} {lr}{x} l l∈++ with ++→⊎{ll = insert x ll ++ flatMap (insert x) lls} l∈++
  ...| inj₂ v = ∈++ʳ (∈-fmInsert++ʳ{ll = lls} v)
  ...| inj₁ v
    with ++→⊎ (subst (λ u → l ∈ˡ u) (++-assoc (insert x ll) (flatMap (insert x) lls) (flatMap (insert x) lr)) (∈++ˡ  v))
  ...| inj₁ w = ∈++ˡ {ll = insert x ll} w
  ...| inj₂ w = ∈++ʳ (∈-fmInsert-distr⁻¹{ll = lls}{lr} l w)

  ∈-insert→∈-fm : {ls : List (List A)}{y' y : A} → ∀ l → l ∈ map (y ∷_) (map (y' ∷_) ls)
                  → l ∈ flatMap (insert y) (map (y' ∷_ ) ls)
  ∈-insert→∈-fm {_ ∷ _} l (here px) = here px
  ∈-insert→∈-fm {_ ∷ _} l (there l∈) = ∈++ʳ (∈-insert→∈-fm l l∈)

  easylem : {z y x : A} → ∀ l → x ∷ z ∷ y ∷ l ∈ map (x ∷_) (map (z ∷_) (insert y l))
  easylem  [] = here refl
  easylem (_ ∷ _) = here refl

  ∈-map→∈-fm : {ls : List (List A)}{y : A} → ∀ l → l ∈ map (y ∷_) ls → l ∈ flatMap (insert y) ls
  ∈-map→∈-fm {[] ∷ ls} {y} l (here px) = here px
  ∈-map→∈-fm {(_ ∷ _) ∷ _} l (here px) = here px
  ∈-map→∈-fm {[] ∷ _} l (there l∈) = there (∈-map→∈-fm l l∈)
  ∈-map→∈-fm {(_ ∷ _) ∷ _} l (there l∈) = ∈++ʳ (∈-map→∈-fm l l∈)


  ∈-map³→fm-map² : {ls : List (List A)}{y' y z : A} → ∀ l
                   → l ∈ map (y' ∷_) (map (y ∷_) (map (z ∷_) ls))
                   → l ∈ flatMap (insert y) (map (y' ∷_) (map (z ∷_) ls))
  ∈-map³→fm-map² {_ ∷ _} l (here px) = there (here px)
  ∈-map³→fm-map² {_ ∷ _} l (there l∈) = ∈++ʳ (∈-map³→fm-map² l l∈)

  ∈-map³→fm-map²' : {ls : List (List A)}{y' y z : A} → ∀ l
                    → l ∈ map (y' ∷_) (map (z ∷_) (map (y ∷_) ls))
                    → l ∈ flatMap (insert y) (map (y' ∷_) (map (z ∷_) ls))
  ∈-map³→fm-map²' {l' ∷ _} {.x} {y} {z} (x ∷ .(z ∷ y ∷ l')) (here refl) = ∈++ˡ (there (there (easylem l')))
  ∈-map³→fm-map²' {_ ∷ _} l (there l∈) = ∈++ʳ (∈-map³→fm-map²' l l∈)

  ∈-fm-ins : {ls : List (List A)}{y' x : A} → ∀ l → l ∈ flatMap (insert x) (map (y' ∷_) ls)
             → l ∈ map(x ∷_) (map(y' ∷_) ls) ++ map(y' ∷_) (flatMap (insert x) ls)
  ∈-fm-ins {_ ∷ _}  l (here px) = here px
  ∈-fm-ins {l' ∷ ls} {y'} {x} l (there l∈) with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ  (∈-map-distrˡ l v)
  ...| inj₂ v with ++→⊎ (∈-fm-ins {ls} l v)
  ...| inj₁ w = ∈++ˡ (there w)
  ...| inj₂ w = ∈++ʳ (∈-map-distrʳ {ll = insert x l'} l w)

  ∈-map-ins : {ls : List (List A)}{y : A} → ∀ l → l ∈ ls → y ∷ l ∈ map(y ∷_) ls
  ∈-map-ins {l' ∷ _} .l' (here refl) = here refl
  ∈-map-ins {_ ∷ _} l (there l∈) = there (∈-map-ins l l∈)

  map-fm-comm : {ls : List (List A)}{y' y : A}
                → ∀ l → l ∈ map(y' ∷_) (flatMap (insert y) ls) → l ∈ flatMap (insert y) (map(y' ∷_) ls)
  map-fm-comm {l' ∷ ls} {y'} {y} l l∈ with ++→⊎{ll = map (y' ∷_) (insert y l')} (∈-map-distr{ll = insert y l'} l l∈)
  ...| inj₁ v = there (∈++ˡ{ll = map (y' ∷_) (insert y l')} v)
  ...| inj₂ v = ∈++ʳ {ll = (y ∷ y' ∷ l') ∷ map (y' ∷_) (insert y l')} (map-fm-comm {ls} l v)

  ∈-fm-map-ins-swap : {ys : List A}{ y' y x : A} → ∀ l
                      → l ∈ flatMap (insert x) (map (y' ∷_) (insert y ys))
                      → l ∈ (y ∷ x ∷ y' ∷ ys) ∷ (x ∷ y ∷ y' ∷ ys) ∷ map (x ∷_) (map (y' ∷_) (insert y ys))
                            ++ flatMap (insert y) (map (y' ∷_) (insert x ys))
  ∈-fm-map-ins-swap {[]} _ (here px) = there (there (here px))
  ∈-fm-map-ins-swap {[]} _ (there (here px)) = there (there (there (there (there (here px)))))
  ∈-fm-map-ins-swap {[]} _ (there (there (here px))) = there (there (there (there (here px))))
  ∈-fm-map-ins-swap {_ ∷ _} _ (here px) = there (there (here px))
  ∈-fm-map-ins-swap {z ∷ ys} {y'} {y} {x} .(y' ∷ x ∷ y ∷ z ∷ ys) (there (here refl)) =
    ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (there (here refl)))
  ∈-fm-map-ins-swap {z ∷ ys} {y'} {y} {x} l (there (there (here px))) =
    ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (here px))
  ∈-fm-map-ins-swap {z ∷ ys} {y'} {y} {x} l (there (there (there l∈)))
    with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                            ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))}
                (∈++ʳ (∈-map³→fm-map² {ls = insert x ys} l v))
  ...| inj₂ v
    with ++→⊎ (∈-fm-ins{ls = map (z ∷_)(insert y ys)} l v)
  ...| inj₁ w = ∈++ˡ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (there (there w)))
  ...| inj₂ w = ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there goal)
    where
    ξ : ∀ l' → l' ∈ flatMap (insert x) (map (z ∷_) (insert y ys))
             → l' ∈ (y ∷ x ∷ z ∷ ys) ∷ (x ∷ y ∷ z ∷ ys) ∷ map (x ∷_) (map (z ∷_) (insert y ys))
                     ++ flatMap (insert y) (map (z ∷_) (insert x ys))
    ξ l' l'∈ = ∈-fm-map-ins-swap  l' l'∈
    ζ : ∃[ l' ] (l' ∈ flatMap (insert x) (map (z ∷_) (insert y ys)) × (y' ∷ l' ≡ l))
    ζ = maphead-decomp{ls = flatMap (insert x) (map (z ∷_) (insert y ys))}{l} w
    l' : List A
    l' = proj₁ ζ
    l'∈ : l' ∈ flatMap (insert x) (map (z ∷_) (insert y ys))
    l'∈ = proj₁ (proj₂ ζ)
    y'l'l : y' ∷ l' ≡ l
    y'l'l = proj₂ (proj₂ ζ)

    goal : l ∈ (y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
               ∷ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))
               ++ flatMap (insert y) (map(y' ∷_) (map(z ∷_) (insert x ys)))

    goal with ++→⊎{ll = (y ∷ x ∷ z ∷ ys) ∷ (x ∷ y ∷ z ∷ ys) ∷ map (x ∷_) (map (z ∷_) (insert y ys))} (ξ l' l'∈)
    ... | inj₁ (here px) =
      ∈++ˡ {ll = (y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
                 ∷ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))}
           (here (sym (subst (λ r → y' ∷ r ≡ l) px y'l'l)))
    ... | inj₁ (there (here px)) = there (here (sym (subst (λ r → y' ∷ r ≡ l) px y'l'l)))
    ... | inj₁ (there (there u)) =
      ∈++ˡ {ll = (y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
                 ∷ map (y' ∷_) (map (x ∷_) (map (_∷_ z) (insert y ys)))}
                 (there (there (subst (λ r → r ∈ map (y' ∷_) (map (x ∷_) (map (_∷_ z) (insert y ys)))) y'l'l γ)))
      where
      γ :  (y' ∷ l') ∈ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))
      γ = ∈-map-ins {ls = map (x ∷_) (map (z ∷_) (insert y ys))} l' u
    ...| inj₂ u =
      ∈++ʳ ( map-fm-comm {ls = map (_∷_ z) (insert x ys)} l
               (subst (λ r → r ∈ map (y' ∷_) (flatMap (insert y) (map (_∷_ z) (insert x ys))))
                          y'l'l (∈-map-ins {ls =(flatMap (insert y) (map (_∷_ z) (insert x ys)))} l' u)))

  ∈-insert-swap : {ys : List A}{y x : A} → ∀ l → l ∈ flatMap (insert x) (insert y ys)
                  → l ∈ flatMap (insert y) (insert x ys)
  ∈-insert-swap {[]}  l (here px) = there (here px)
  ∈-insert-swap {[]}  l (there (here px)) = here px
  ∈-insert-swap {_ ∷ _} l (here px) = there (here px)
  ∈-insert-swap {_ ∷ _} l (there (here px)) = here px
  ∈-insert-swap {_ ∷ _} l (there (there l∈)) with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ (∈-map→∈-fm l v)
  ...| inj₂ v = ∈-fm-map-ins-swap l v

  ∈-fmInsert-swap : {ls : List (List A)}{y x : A} → ∀ l → l ∈ flatMap (insert x) (flatMap (insert y) ls)
                     → l ∈ flatMap (insert y) (flatMap (insert x) ls)
  ∈-fmInsert-swap {l' ∷ ls} {y} {x} l l∈xyls with ++→⊎ (∈-fmInsert-distr {ll = insert y l'} l∈xyls)
  ...| inj₁ v = ∈-fmInsert-distr⁻¹{ll = insert x l'} l (∈++ˡ (∈-insert-swap{l'} l v))
  ...| inj₂ v = ∈-fmInsert-distr⁻¹{ll = insert x l'} l (∈++ʳ (∈-fmInsert-swap{ls} l v))

  ∈→∷∈fmInsert : {ls : List (List A)}{x : A} → ∀ l → l ∈ ls → x ∷ l ∈ flatMap (insert x) ls
  ∈→∷∈fmInsert {[] ∷ _} .[] (here refl) = here refl
  ∈→∷∈fmInsert {(y ∷ _) ∷ _} .(y ∷ _) (here refl) = here refl
  ∈→∷∈fmInsert {_ ∷ _} l (there l∈ls) = ∈++ʳ (∈→∷∈fmInsert l l∈ls)

--------------------------------------
------- properties of sublists -------
--------------------------------------
module _ {a} {A : Set a} where
  []∈sublists : {l : List A} → [] ∈ sublists l
  []∈sublists {[]} = here refl
  []∈sublists {x ∷ l} = ∈++ʳ {ll = map (x ∷_) (sublists l)} ([]∈sublists{l})

  sublists→⊆ : {l' xs : List A} → xs ∈ sublists l' → xs ⊆ l'
  sublists→⊆ {[]} {.[]} (here refl) = All.[]
  sublists→⊆ {_ ∷ _} {[]} xs∈slyys = All.[]
  sublists→⊆ {y ∷ ys} {_ ∷ xs} xs∈slyys with ++→⊎{ll = map (_∷_ y) (sublists ys)} xs∈slyys
  ...| inj₂ v = ⊆+∷ (sublists→⊆ v)
  ...| inj₁ v with maphead-decomp v
  ... | .xs , <″-offset sl∈slys = here refl All.∷ ⊆+∷ (sublists→⊆ sl∈slys)

  ⊆+∈sublists→⊆ : {l' xs ys : List A} → ys ⊆ xs → xs ∈ sublists l' → ys ⊆ l'
  ⊆+∈sublists→⊆ ys⊆ xs∈ = All-trans ys⊆ (sublists→⊆ xs∈)

  ∈-sublists+head : {ys : List A}{y : A}{xs : List A} → xs ∈ sublists ys → xs ∈ sublists (y ∷ ys)
  ∈-sublists+head {[]} = there
  ∈-sublists+head {z ∷ ys}{y} = ∈++ʳ {ll = map (_∷_ y) (sublists (z ∷ ys))}

------------------------------------------
------- properties of permutations -------
------------------------------------------
module _ {a}{A : Set a} where
  []∈permutations[] : [] ∈ permutations{A = A} []
  []∈permutations[] = here refl

  ∈-perm-decomp : {xs : List A}{x : A} → ∀ l → l ∈ flatMap (insert x) (permutations xs) → l ⊆ (x ∷ xs)
  ∈-perm-decomp {[]} .(_ ∷ []) (here refl) = here refl All.∷ All.[]
  ∈-perm-decomp {x ∷ xs} {x'} ys ys∈ = ξ'' (proj₁ ξ) ((proj₂ (proj₂ ξ)) , (ξ' (proj₁ ξ) (proj₁ (proj₂ ξ))))
    where
    -- TODO: clean up this proof
    ξ : ∃[ l ] (l ∈ (flatMap (insert x) (permutations xs)) × ys ⊆ (x' ∷ l))
    ξ = ∈-fmInsert-decomp{ls = flatMap (insert x) (permutations xs)}{x'} ys ys∈
    ξ' : ∀ l → l ∈ (flatMap (insert x) (permutations xs)) → l ⊆ (x ∷ xs)
    ξ' = ∈-perm-decomp{xs}
    ξ'' : ∀ l → ys ⊆ (x' ∷ l) × l ⊆ (x ∷ xs) → ys ⊆ (x' ∷ x ∷ xs)
    ξ'' l (All.[] , l⊆) = All.[]
    ξ'' l (All._∷_ {x'} {.[]} (here refl) All.[] , l⊆) = here refl All.∷ All.[]
    ξ'' l (All._∷_ {x''} {.(z ∷ zs)} (here refl) (All._∷_ {z} {zs} px ys⊆) , l⊆) =
      All-trans ((here refl) All.∷ (px All.∷ ys⊆)) ((here refl) All.∷ all∈-→all∈+head l⊆)
    ξ'' l (All._∷_ {z} {zs} (there px) ys⊆ , l⊆) =
      All-trans (there px All.∷ ys⊆) ((here refl) All.∷ (all∈-→all∈+head l⊆))

  ∈-permutions→⊆ : {ys xs : List A} → ys ∈ permutations xs → ys ⊆ xs
  ∈-permutions→⊆ {[]} {xs}  ys∈ = All.[]
  ∈-permutions→⊆ {_ ∷ _} {[]} (here ())
  ∈-permutions→⊆ {_ ∷ _} {[]} (there ())
  ∈-permutions→⊆ {y ∷ ys} {_ ∷ _} ys∈ = ∈-perm-decomp (y ∷ ys) ys∈

  ∈sublists+perm→⊆ : {l' xs ys : List A} → xs ∈ sublists l' → ys ∈ permutations xs → ys ⊆ l'
  ∈sublists+perm→⊆ xs∈ ys∈ = ⊆+∈sublists→⊆ (∈-permutions→⊆ ys∈) xs∈

  ∈-perm→∈-subperm : {ys : List A} → ∀ l → l ∈ permutations ys → l ∈ subpermutations ys
  ∈-perm→∈-subperm {[]} l l∈ = l∈
  ∈-perm→∈-subperm {y ∷ ys} l l∈ =
    ∈++ˡ (∈-fmInsert-decomp'⁻¹ l
            (proj₁ ξ , ∈-perm→∈-subperm{ys} (proj₁ ξ) (proj₁ (proj₂ ξ)) , (proj₂ (proj₂ ξ)))
         )
    where
    ξ : ∃[ l' ] (l' ∈ (permutations ys) × l ∈ (insert y) l')
    ξ = ∈-fmInsert-decomp'{ls = permutations ys} l l∈


----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------
module _ {a}{A : Set a} where
  ¬subpermutations[] : {l : List A} → ¬ subpermutations l ≡ []
  ¬subpermutations[] {[]} = λ ()
  ¬subpermutations[] {x ∷ l} n = ¬[]++ʳ{lr = subpermutations l} (¬subpermutations[]{l = l}) (flatMap (insert x) (subpermutations l)) n

  []∈subpermutations : {l : List A} → [] ∈ subpermutations l
  []∈subpermutations {[]} = here refl
  []∈subpermutations {x ∷ xs} = ∈++ʳ{ll = flatMap (insert x) (subpermutations xs)} ([]∈subpermutations{l = xs})

  ∈-subperm-head : {ys : List A}{x : A} → x ∈ ys → x ∷ [] ∈ subpermutations ys
  ∈-subperm-head {[]} ()
  ∈-subperm-head {y ∷ ys} (here refl) = ∈++ˡ {ll = flatMap (insert y) (subpermutations ys)} (∈→∷∈fmInsert{ls = subpermutations ys} [] ([]∈subpermutations{ys}))
  ∈-subperm-head {y ∷ ys} (there x∈yys) = ∈++ʳ {ll = flatMap (insert y) (subpermutations ys)} (∈-subperm-head x∈yys)

  ∷Unique→Unique : {xs : List A}{x : A} → Unique (x ∷ xs) →  Unique xs
  ∷Unique→Unique (_ ∷ xsU) = xsU

  Unique→-Unique-subhead : {xs : List A}{x y : A} → Unique (x ∷ y ∷ xs) →  Unique (x ∷ xs)
  Unique→-Unique-subhead ((_ All.∷ xxsU) ∷ yxsU) = xxsU ∷ (drop⁺ 1 yxsU)

  Unique→¬hd∈tl : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  Unique→¬hd∈tl ((px All.∷ _) ∷ _) (here refl) = px refl
  Unique→¬hd∈tl xxsU (there p) = Unique→¬hd∈tl (Unique→-Unique-subhead xxsU) p

  ∈-subperm-tail : {ys xs : List A}{x : A} → xs ∈ subpermutations (x ∷ ys) → ¬ x ∈ xs → xs ∈ subpermutations ys
  ∈-subperm-tail {[]} {.(_ ∷ [])} (here refl) x∉xs = ⊥-elim (x∉xs (here refl))
  ∈-subperm-tail {[]} {.[]} (there (here refl)) x∉xs = here refl
  ∈-subperm-tail {y ∷ ys} {xs} xs∈sp x∉xs with ++→⊎ xs∈sp
  ...| inj₁ v = ⊥-elim (x∉xs (∈-fmInsert'{ls = subpermutations (y ∷ ys)} xs v ))
  ...| inj₂ v = v


  ∈-fmInsertNew : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ ls → (y ∷ xs) ∈ flatMap (insert y) ls
  ∈-fmInsertNew (here refl) = ∈++ˡ ∈-insert-head
  ∈-fmInsertNew (there xs∈ls) = ∈++ʳ (∈-fmInsertNew xs∈ls)

  ∈-insert-cancelˡ : {ls : List (List A)}{xs : List A}{y : A} → ¬ y ∈ xs → xs ∈ flatMap (insert y) ls ++ ls → xs ∈ ls
  ∈-insert-cancelˡ {ls} {xs} y∉xs xs∈yls with ++→⊎ xs∈yls
  ...| inj₁ v = ⊥-elim (y∉xs (∈-fmInsert'{ls = ls} xs v))
  ...| inj₂ v = v


module _ {a} {A : Set a} where

  insertAll : List A → List A → List (List A)
  insertAll [] xs = xs ∷ []
  insertAll (y ∷ ys) xs = (insert y) xs ++ insertAll ys xs

  ∈-subperm-addhead : {ys xs : List A}{x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ subpermutations ys → (x ∷ xs) ∈ subpermutations ys

  ∈-fm-subperm-addhead : {ys xs : List A}{y x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ flatMap (insert y) (subpermutations ys)
                         → (x ∷ xs) ∈ flatMap (insert y) (subpermutations ys)
  ∈-fm-subperm-addhead {y' ∷ ys} {xs} {y} {.y'} (here refl) y'∉xs xs∈yy'spys
    with ++→⊎ {ll = flatMap (insert y)(flatMap (insert y') (subpermutations ys))}
              (∈-fmInsert-distr{ll = flatMap (insert y') (subpermutations ys)} xs∈yy'spys)
  ...| inj₁ v = ⊥-elim (y'∉xs (all→imp (fmInsert-resp-∈ (∈-fmInsert{ls = subpermutations ys})) xs v))
  ...| inj₂ v = ∈-fmInsert-distr⁻¹{ll = flatMap (insert y') (subpermutations ys)} (y' ∷ xs)
                (∈++ˡ (∈-fmInsert-swap{ls = (subpermutations ys)} (y' ∷ xs) (∈-fmInsertNew v)))
  ∈-fm-subperm-addhead {y' ∷ ys} {xs} {y} {x} (there x∈ys) x∉xs xs∈yspys
    with ++→⊎ (∈-fmInsert-distr{ll = flatMap (insert y') (subpermutations ys)} xs∈yspys)
  ...| inj₁ v = goal
    where
    ζ : ∃[ l ] (l ∈ (flatMap (insert y') (subpermutations ys)) × xs ∈ insert y l)
    ζ = ∈-fmInsert-decomp'{ls = flatMap (insert y') (subpermutations ys)} xs v
    l : List A
    l = proj₁ ζ
    l∈ : l ∈ flatMap (insert y') (subpermutations ys)
    l∈ = proj₁ (proj₂ ζ)
    x∉l : ¬ x ∈ l
    x∉l p = x∉xs (all→imp (∈-insert'' {l = l}{y}{x} p) xs (proj₂ (proj₂ ζ)))
    xl∈ : x ∷ l ∈ flatMap (insert y') (subpermutations ys)
    xl∈ = ∈-fm-subperm-addhead x∈ys x∉l l∈ 

    μ : x ∷ xs ∈ map (x ∷_) (insert y l)
    μ = ∈-map-ins{ls = insert y l}{x} xs (proj₂ (proj₂ ζ))

    ξ : (x ∷ xs) ∈ flatMap (insert y) (flatMap (insert y') (subpermutations ys))
    ξ = ∈-fmInsert-decomp'⁻¹
          {ls = flatMap (insert y') (subpermutations ys)} (x ∷ xs) ((x ∷ l) , (xl∈ , there μ))

    goal : (x ∷ xs) ∈ flatMap (insert y) (flatMap (insert y') (subpermutations ys) ++ subpermutations ys)
    goal = ∈-fmInsert-distr⁻¹ {ll = flatMap (insert y') (subpermutations ys)}
             (x ∷ xs) (∈++ˡ ξ)

  ...| inj₂ v = ∈-fmInsert-distr⁻¹{ll = flatMap (insert y') (subpermutations ys)} (x ∷ xs)
                         (∈++ʳ (∈-fm-subperm-addhead x∈ys x∉xs v))

  ∈-subperm-addhead {_ ∷ ys} (here refl) y∉xs xs∈sp = ∈++ˡ (∈-fmInsertNew (∈-insert-cancelˡ{ls = subpermutations ys} y∉xs xs∈sp))
  ∈-subperm-addhead {_ ∷ _} {xs}  (there x∈ys) x∉xs xs∈sp with ++→⊎ xs∈sp
  ...| inj₁ v = ∈++ˡ (∈-fm-subperm-addhead x∈ys x∉xs v)
  ...| inj₂ v = ∈++ʳ (∈-subperm-addhead x∈ys x∉xs v)


-------------------------------------------------------------
------------  xs ⊆ ys  ⇔  xs ∈ subpermutations ys  ----------
-------------------------------------------------------------
  subpermIfSubset : {ys xs : List A} → Unique xs → xs ⊆ ys → xs ∈ subpermutations ys
  subpermIfSubset {[]} {.[]} xsU All.[] = here refl
  subpermIfSubset {y ∷ ys} {[]} xsU xsys = ∈++ʳ{ll = flatMap(insert y) (subpermutations ys)} ([]∈subpermutations{l = ys})

  subpermIfSubset {x ∷ ys} {.x ∷ xs} (x∉xs ∷ lU) (here refl All.∷ xsys) =
    ∈++ˡ{ll = flatMap (insert x) (subpermutations ys)}
        (∈→∷∈fmInsert xs (∈-subperm-tail{ys = ys} (subpermIfSubset lU xsys) (Unique→¬hd∈tl (x∉xs ∷ lU))))

  subpermIfSubset {y ∷ ys} {x ∷ xs} (x∉xs ∷ xsU) (there x∈ys All.∷ b)
    with ++→⊎{ll = flatMap (insert y) (subpermutations ys)} (subpermIfSubset xsU b)
  ...| inj₁ v = ∈++ˡ (∈-fm-subperm-addhead x∈ys (all≢→∉ x∉xs) v)
  ...| inj₂ v = ∈++ʳ (∈-subperm-addhead x∈ys (all≢→∉ x∉xs) v)


  -- Proof that if l is a subpermutation of l', then l ⊆ l'
  subsetIfSubperm : {l l' : List A} → l ∈ subpermutations l' → l ⊆ l'
  subsetIfSubperm {.[]} {[]} (here refl) = All.[]
  subsetIfSubperm {xs} {_ ∷ _} lsubpermOfl' with ++→⊎ lsubpermOfl'
  ...| inj₂ v = All-trans (subsetIfSubperm v) (all∈-→all∈+head ⊆-id)
  ...| inj₁ v with ∈-fmInsert-decomp xs v
  ...| l , l∈sp , x⊆yl = All-trans x⊆yl (⊆→∷⊆∷ (subsetIfSubperm l∈sp))


-------------------
------ TESTS ------
-------------------
  _ : sublists{A = A} [] ≡ [] ∷ []
  _ = refl

  _ : [] ∈ sublists{A = A} []
  _ = here refl

_ : sublists (1 ∷ []) ≡ (1 ∷ []) ∷ [] ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ [] ∷ []
_ = refl

_ : {a : Level}{A : Set a} → sublists{a}{A} [] ≡ [] ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ 3 ∷ []) ≡    (1 ∷ 2 ∷ 3 ∷ [])
                                 ∷ (1 ∷ 2 ∷ [])
                                 ∷ (1 ∷ 3 ∷ [])
                                 ∷ (1 ∷ [])
                                 ∷ (2 ∷ 3 ∷ [])
                                 ∷ (2 ∷ [])
                                 ∷ (3 ∷ [])
                                 ∷ []
                                 ∷ []
_ = refl

_ : 1 ∷ [] ∈ 1 +∷ sublists (2 ∷ 3 ∷ [])
_ = there (there (there (here refl)))

_ : ∀{a}{A : Set a} → permutations{A = A} [] ≡ [] ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ 3 ∷ []) ≡   (1 ∷ 2 ∷ 3 ∷ [])
                                    ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                    ∷ (2 ∷ 3 ∷ 1 ∷ [])
                                    ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                    ∷ (3 ∷ 1 ∷ 2 ∷ [])
                                    ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                    ∷ []
_ = refl


_ : subpermutations{A = ℕ} [] ≡ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ []) ≡ (1 ∷ []) ∷ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ 1 ∷ []) ≡   (1 ∷ 1 ∷ [])
                                   ∷ (1 ∷ 1 ∷ [])
                                   ∷ (1 ∷ [])
                                   ∷ (1 ∷ [])
                                   ∷ []
                                   ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ []) ≡   (1 ∷ 2 ∷ [])
                                   ∷ (2 ∷ 1 ∷ [])
                                   ∷ (1 ∷ [])
                                   ∷ (2 ∷ [])
                                   ∷ []
                                   ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ 3 ∷ []) ≡   (1 ∷ 2 ∷ 3 ∷ [])
                                       ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                       ∷ (2 ∷ 3 ∷ 1 ∷ [])
                                       ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                       ∷ (3 ∷ 1 ∷ 2 ∷ [])
                                       ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                       ∷ (1 ∷ 2 ∷ [])
                                       ∷ (2 ∷ 1 ∷ [])
                                       ∷ (1 ∷ 3 ∷ [])
                                       ∷ (3 ∷ 1 ∷ [])
                                       ∷ (1 ∷ [])
                                       ∷ (2 ∷ 3 ∷ [])
                                       ∷ (3 ∷ 2 ∷ [])
                                       ∷ (2 ∷ [])
                                       ∷ (3 ∷ [])
                                       ∷ []
                                       ∷ []
_ = refl
