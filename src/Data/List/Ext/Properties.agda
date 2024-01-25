{-# OPTIONS --safe #-}

open import Prelude hiding (lookup; map)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using (List; [_]; []; _++_; head; tail; length; map)
open import Data.List.Ext
open import Data.List.Properties using (++-identityʳ)
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
  maphead-decomp' {l ∷ ls} (here refl) = refl , (here refl)
  maphead-decomp' {l ∷ ls} (there xxs∈) = (proj₁ (maphead-decomp' xxs∈)) , there (proj₂ (maphead-decomp' xxs∈))

  maphead-decomp : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ map (y ∷_) ls → ∃[ ys ](ys ∈ ls × y ∷ ys ≡ xs)
  maphead-decomp {l ∷ _} {.(_ ∷ l)}(here refl) = l , ((here refl) , refl)
  maphead-decomp {l ∷ ls} {[]} {y} (there xs∈) = ⊥-elim (¬[]∈map xs∈)
  maphead-decomp {_ ∷ _} {x ∷ xs} (there xs∈) =
    xs , there (proj₂ (maphead-decomp' xs∈)) , subst (λ u → u ∷ xs ≡ x ∷ xs) (proj₁ (maphead-decomp' xs∈)) refl


  ∈-map+head : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ ls → y ∷ xs ∈ map (y ∷_) ls
  ∈-map+head {l ∷ ls} {.l} {y} (here refl) = here refl
  ∈-map+head {l ∷ ls} {xs} {y} (there p) = there (∈-map+head p)

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

  -- ++head-just : {l xs : List A}{x : A} → head ((x ∷ xs) ++ l) ≡ just x
  -- ++head-just = refl

  -- ++head : {l xs : List A}{x : A} → head ((x ∷ xs) ++ l) ≡ head (x ∷ xs)
  -- ++head = refl

  -- ++head' : {ll lr : List A} → ¬ ll ≡ [] → head (ll ++ lr) ≡ head ll
  -- ++head' {[]} ¬ll[] = ⊥-elim (¬ll[] refl)
  -- ++head' {_ ∷ _} ¬ll[] = refl


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

  head-insert : {ys : List A}{x : A} → x ∷ ys ∈ insert x ys
  head-insert {[]} = here refl
  head-insert {x ∷ ys} = here refl

  ------- properties of insert and flatMap-------

  ¬∷[]∈insert∘map : {ls : List (List A)}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y) (map (y' ∷_) ls)
  ¬∷[]∈insert∘map {[]} {y} {y'} {z} = λ ()
  ¬∷[]∈insert∘map {l ∷ ls} {y} {y'} {z} (there p) with ++→⊎ {ll = map (_∷_ y') (insert y l)} p
  ...| inj₁ v = ¬∷[]∈map∘insert v
  ...| inj₂ v = ¬∷[]∈insert∘map{ls} v

  ¬[]∈fmInsert : {ls : List (List A)}{y : A} → ¬ [] ∈ flatMap (insert y) ls
  ¬[]∈fmInsert {[]} ()
  ¬[]∈fmInsert {l ∷ ls}{y} p with ++→⊎{ll = insert y l} p
  ...| inj₁ v = ¬[]∈insert v
  ...| inj₂ v = ¬[]∈fmInsert{ls}{y} v

  ∷[]∈insert-decomp : {l : List A}{y z : A} → z ∷ [] ∈ (insert y) l → z ≡ y × l ≡ []
  ∷[]∈insert-decomp {[]} {y} {.y} (here refl) = <″-offset refl
  ∷[]∈insert-decomp {x ∷ l} {y} {z} (there p) = ⊥-elim (¬∷[]∈map∘insert p)

  ∷[]∈fmInsert-decomp : {ls : List (List A)}{y z : A} → z ∷ [] ∈ flatMap (insert y) ls → z ≡ y × [] ∈ ls
  ∷[]∈fmInsert-decomp{l ∷ ls} {y} {z} p with ++→⊎{ll = insert y l} p
  ...| inj₁ v = proj₁ (∷[]∈insert-decomp v) , here (sym (proj₂ (∷[]∈insert-decomp v)))
  ...| inj₂ v = (proj₁ (∷[]∈fmInsert-decomp{ls} v)) , (there (proj₂ (∷[]∈fmInsert-decomp v)))

  ¬∷[]∈insert∘insert : {ys : List A}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y') (insert y ys)
  ¬∷[]∈insert∘insert {[]} {y} {y'} {z} (there (here ()))
  ¬∷[]∈insert∘insert {[]} {y} {y'} {z} (there (there ()))
  ¬∷[]∈insert∘insert {y ∷ ys} {y'} {y''} {z} (there (there p)) with ++→⊎{ll = map (_∷_ y') (map (_∷_ y) (insert y'' ys))} p
  ...| inj₁ v = ¬∷[]∈map∘map {ls = insert y'' ys} v
  ...| inj₂ v = ¬∷[]∈insert∘map{insert y' ys} v

  ¬∷[]-insert∘insert' : {ls : List (List A)}{y y' z : A} → ¬ z ∷ [] ∈ flatMap (insert y') (flatMap (insert y) ls)
  ¬∷[]-insert∘insert' {ls}{y}{y'} {z} p = ¬[]∈fmInsert{ls}{y} (proj₂ (∷[]∈fmInsert-decomp p))

  ∈-fmInsert : {ls : List (List A)}{x : A} → All (x ∈_) (flatMap (insert x) ls)
  ∈-fmInsert {[]} = All.[]
  ∈-fmInsert {_ ∷ ls} = All++ ∈-insert (∈-fmInsert{ls})

  ∈-fmInsert' : {ls : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ls → x ∈ l
  ∈-fmInsert' {ls} = all→imp (∈-fmInsert{ls})

  ∈-insert-decomp : {xs : List A}{x : A} → ∀ ys → ys ∈ (insert x xs) → ys ⊆ (x ∷ xs)
  ∈-insert-decomp {[]} .(_ ∷ []) (here refl) = here refl All.∷ All.[]
  ∈-insert-decomp {x ∷ xs} .(_ ∷ x ∷ xs) (here refl) = (here refl) All.∷ (all∈-→all∈+head ⊆-id)
  ∈-insert-decomp {x ∷ xs} [] (there ys∈) = All.[]
  ∈-insert-decomp {x ∷ xs} {x'} (y ∷ ys) (there ys∈) = (there (here (proj₁ ξ))) All.∷ ⊆-swap (all∈-→all∈+head (∈-insert-decomp ys (proj₂ ξ)))
    where
    ξ : y ≡ x × ys ∈ insert x' xs
    ξ = maphead-decomp' ys∈

  ∈-fm-insert-decomp : {ls : List (List A)}{x : A} → ∀ ys → ys ∈ (flatMap (insert x) ls)
                       → ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
  ∈-fm-insert-decomp {xs ∷ _} ys ys∈ with ++→⊎ ys∈
  ...| inj₁ v = xs , here refl , ∈-insert-decomp ys v
  ...| inj₂ v with ∈-fm-insert-decomp ys v
  ...| l , l∈ls , ys⊆ = l , there l∈ls , ys⊆

  ∈-fm-insert-decomp' : {ls : List (List A)}{y : A} → ∀ xs → xs ∈ (flatMap (insert y) ls)
                       → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
  ∈-fm-insert-decomp' {zs ∷ _} xs xs∈ with ++→⊎ xs∈
  ...| inj₁ v = zs , here refl , v
  ...| inj₂ v with ∈-fm-insert-decomp' xs v
  ...| l , l∈ls , xs∈yl = l , there l∈ls , xs∈yl

  ∈→∷∈fmInsert : {ls : List (List A)}{x : A} → ∀ l → l ∈ ls → x ∷ l ∈ flatMap (insert x) ls
  ∈→∷∈fmInsert {[] ∷ ls} {x} .[] (here refl) = here refl
  ∈→∷∈fmInsert {(x₁ ∷ l) ∷ ls} {x} .(x₁ ∷ l) (here refl) = here refl
  ∈→∷∈fmInsert {l' ∷ ls} {x} l (there l∈ls) = ∈++ʳ {ll = insert x l'} (∈→∷∈fmInsert l l∈ls)

--------------------------------------
------- properties of sublists -------
--------------------------------------
module _ {a} {A : Set a} where
  []∈sublists : {l : List A} → [] ∈ sublists l
  []∈sublists {[]} = here refl
  []∈sublists {x ∷ l} = ∈++ʳ {ll = map (x ∷_) (sublists l)} ([]∈sublists{l})

  -- ∷[]∈-sublists : {l : List A}{x : A} → x ∈ l → x ∷ [] ∈ sublists l
  -- ∷[]∈-sublists {x ∷ xs} (here refl) = ⊎→++ {ll = x +∷ sublists xs} (inj₁ ∈-+∷)
  -- ∷[]∈-sublists (there x∈l) = ⊎→++ (inj₂ (∷[]∈-sublists x∈l))

  sublists→⊆ : {l' xs : List A} → xs ∈ sublists l' → xs ⊆ l'
  sublists→⊆ {[]} {.[]} (here refl) = All.[]
  sublists→⊆ {y ∷ ys} {[]} xs∈slyys = All.[]
  sublists→⊆ {y ∷ ys} {x ∷ xs} xs∈slyys with ++→⊎{ll = map (_∷_ y) (sublists ys)} xs∈slyys
  ...| inj₂ v = ⊆+∷ (sublists→⊆ v)
  ...| inj₁ v with maphead-decomp v
  ... | .xs , <″-offset sl∈slys = here refl All.∷ ⊆+∷ (sublists→⊆ sl∈slys)

  ⊆+∈sublists→⊆ : {l' xs ys : List A} → ys ⊆ xs → xs ∈ sublists l' → ys ⊆ l'
  ⊆+∈sublists→⊆ ys⊆ xs∈ = All-trans ys⊆ (sublists→⊆ xs∈)

  ∈-sublists+head : {ys : List A}{y : A}{xs : List A} → xs ∈ sublists ys → xs ∈ sublists (y ∷ ys)
  ∈-sublists+head {[]} = there
  ∈-sublists+head {z ∷ ys}{y} = ∈++ʳ {ll = map (_∷_ y) (sublists (z ∷ ys))}

  -- ∈-sublists+head' : {ys : List A}{y : A}{xs : List A} → xs ∈ sublists ys → y ∷ xs ∈ sublists (y ∷ ys)
  -- ∈-sublists+head' {[]} (here refl) = here refl
  -- ∈-sublists+head' {z ∷ ys}{y}{xs} p = ∈++ˡ {ll = map (_∷_ y) (sublists (z ∷ ys))} (∈-map+head {ls = sublists (z ∷ ys)} p)
  -- sublists⁻¹-head∈ : {ys xs : List A}{x : A} → x ∷ xs ∈ sublists ys → x ∈ ys
  -- sublists⁻¹-head∈ {y ∷ ys} xxs∈ = {!!}
  -- with (++→⊎{ll = y +∷ sublists ys} xxs∈)
  -- ...| inj₁ v = here (∈+∷→head≡ v)
  -- ...| inj₂ v = there (sublists⁻¹-head∈ v)

  -- sublists-head∈-contra : {ys xs : List A}{x : A} → ¬ x ∈ ys → ¬ x ∷ xs ∈ sublists ys
  -- sublists-head∈-contra ¬x∈l xxs∈sl = ¬x∈l (sublists⁻¹-head∈ xxs∈sl)

  -- +∷sublists : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → x ≡ y × (xs ≡ [] ⊎ xs ∈ sublists ys)
  -- +∷sublists {[]} {ys} {x} {y} p = ∈+∷→head≡ p , inj₁ refl
  -- +∷sublists {z ∷ xs} {ys} {x} {y} p = ∈+∷→head≡ p , inj₂ (proj₂ (∈+∷→head×tail{ls = sublists ys} p))

  -- +∷sublists' : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → ¬ xs ≡ [] → x ≡ y × xs ∈ sublists ys
  -- +∷sublists' {xs} {ys} {x} {y} p ¬xs[] = (∈+∷→head≡ p) , proj₂ (∈+∷→head×tail' p ¬xs[])

  -- sublists-tail∈ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → z ∷ zs ∈ sublists l
  -- sublists-tail∈ {y ∷ ys} {zs} {x}{z} x∈ with (++→⊎{ll = y +∷ sublists ys} x∈)
  -- ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈{l = ys} v)
  -- ...| inj₁ v = ∈++ʳ (∈+∷→tail∈ ξ)
  --   where
  --   ξ : x ∷ z ∷ zs ∈ x +∷ sublists ys
  --   ξ = subst (λ w → x ∷ z ∷ zs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  -- sublists-tail∈' : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → ¬ xs ≡ [] → xs ∈ sublists l
  -- sublists-tail∈' {y ∷ ys} {xs} {x} x∈ ¬xs[] with (++→⊎{ll = y +∷ sublists ys} x∈)
  -- ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈'{l = ys} v ¬xs[])
  -- ...| inj₁ v = ∈++ʳ (∈+∷→tail∈' ξ ¬xs[])
  --   where
  --   ξ : x ∷ xs ∈ x +∷ sublists ys
  --   ξ = subst (λ w → x ∷ xs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  -- sublists⁻¹ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → x ∈ l × z ∷ zs ∈ sublists l
  -- sublists⁻¹ {l} xxs∈sl = sublists⁻¹-head∈ xxs∈sl , (sublists-tail∈{l}) xxs∈sl

------------------------------------------
------- properties of permutations -------
------------------------------------------
module _ {a}{A : Set a} where
  []∈permutations[] : [] ∈ permutations{A = A} []
  []∈permutations[] = here refl

  ∈-perm-decomp : {xs : List A}{x : A} → ∀ l → l ∈ flatMap (insert x) (permutations xs) → l ⊆ (x ∷ xs)
  ∈-perm-decomp {[]} {x} .(x ∷ []) (here refl) = here refl All.∷ All.[]
  ∈-perm-decomp {x ∷ xs} {x'} ys ys∈ = ξ'' (proj₁ ξ) ((proj₂ (proj₂ ξ)) , (ξ' (proj₁ ξ) (proj₁ (proj₂ ξ))))
    where
    -- TODO: clean up this proof
    ξ : ∃[ l ] (l ∈ (flatMap (insert x) (permutations xs)) × ys ⊆ (x' ∷ l))
    ξ = ∈-fm-insert-decomp{ls = flatMap (insert x) (permutations xs)}{x'} ys ys∈
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
  ∈-permutions→⊆ {y ∷ ys} {[]} (here ())
  ∈-permutions→⊆ {y ∷ ys} {[]} (there ())
  ∈-permutions→⊆ {y ∷ ys} {x ∷ xs} ys∈ = ∈-perm-decomp (y ∷ ys) ys∈

  ∈sublists+perm→⊆ : {l' xs ys : List A} → xs ∈ sublists l' → ys ∈ permutations xs → ys ⊆ l'
  ∈sublists+perm→⊆ xs∈ ys∈ = ⊆+∈sublists→⊆ (∈-permutions→⊆ ys∈) xs∈

  -- x ∷ xs is a permutation of itself --
  -- ∈-permutations : {x : A} {xs : List A} → x ∷ xs ∈ permutations (x ∷ xs)
  -- ∈-permutations {x} {[]} = here refl
  -- ∈-permutations {x} {y ∷ ys} = ∈-insertInAll ξ
  --   where
  --   ξ : y ∷ ys ∈ (permutations (y ∷ ys))
  --   ξ = ∈-permutations

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

  ∈-subperm-drophead : {ys xs : List A}{x : A} → xs ∈ subpermutations (x ∷ ys) → ¬ x ∈ xs → xs ∈ subpermutations ys
  ∈-subperm-drophead {[]} {.(x ∷ [])} {x} (here refl) x∉xs = ⊥-elim (x∉xs (here refl))
  ∈-subperm-drophead {[]} {.[]} {x} (there (here refl)) x∉xs = here refl
  ∈-subperm-drophead {y ∷ ys} {xs} {x} xs∈sp x∉xs with ++→⊎{ll = flatMap (insert x) (flatMap (insert y) (subpermutations ys) ++ subpermutations ys)} xs∈sp
  ...| inj₁ v = ⊥-elim (x∉xs (∈-fmInsert'{ls = subpermutations (y ∷ ys)} xs v ))
  ...| inj₂ v = v

-------------------------------------------------------------
------------  xs ⊆ ys  ⇔  xs ∈ subpermutations ys  ----------
-------------------------------------------------------------

  subpermIfSubset : {ys xs : List A} → Unique xs → xs ⊆ ys → xs ∈ subpermutations ys
  subpermIfSubset {[]} {.[]} xsU All.[] = here refl
  subpermIfSubset {y ∷ ys} {[]} xsU xsys = ∈++ʳ{ll = flatMap(insert y) (subpermutations ys)} ([]∈subpermutations{ys})

  subpermIfSubset {x ∷ ys} {.x ∷ xs} (x∉xs ∷ lU) (here refl All.∷ xsys) = goal
    where
    ξ : xs ∈ˡ subpermutations (x ∷ ys)
    ξ = subpermIfSubset {ys = x ∷ ys}  lU xsys
    ξ' : xs ∈ˡ subpermutations ys
    ξ' = ∈-subperm-drophead{ys} ξ (Unique→¬hd∈tl (x∉xs ∷ lU))
    goal : x ∷ xs ∈ˡ flatMap (insert x) (subpermutations ys) ++ subpermutations ys
    goal = ∈++ˡ{ll = flatMap (insert x) (subpermutations ys)} (∈→∷∈fmInsert xs ξ')
   -- Proof sketch:  By uniqueness y ∉ xs, so xs ∈ subpermutations ys,
   --                so y ∷ xs ∈ map(y ∷_) (subpermutations ys) ∈ subpermutations (y ∷ ys)

  subpermIfSubset {y ∷ ys} {x ∷ .[]} (x∉xs ∷ xsU) (there x∈ys All.∷ All.[]) = ∈-subperm-head {ys = y ∷ ys} (there x∈ys)
  subpermIfSubset {y ∷ ys} {x ∷ .(x' ∷ xs)} (x∉xs ∷ xsU) (there x∈ys All.∷ All._∷_ {x'} {xs} px xsyys) = goal
    where
    x∈ys' : x ∈ ys
    x∈ys' = x∈ys
    xsyys' : xs ⊆ (y ∷ ys)
    xsyys' = xsyys
    -- x∉xs' : ¬ x ∈ xs
    -- x∉xs' = {!!}
    goal : x ∷ x' ∷ xs ∈ flatMap (insert y) (subpermutations ys) ++ subpermutations ys
    goal = {!!}

  -- Proof that if l is a subpermutation of l', then l ⊆ l'
  subsetIfSubperm : {l l' : List A} → l ∈ subpermutations l' → l ⊆ l'
  subsetIfSubperm {.[]} {[]} (here refl) = All.[]
  subsetIfSubperm {xs} {y ∷ ys} lsubpermOfl' with (++→⊎ {ll = flatMap (insert y) (subpermutations ys)} lsubpermOfl')
  ...| inj₂ v = All-trans (subsetIfSubperm{xs}{ys} v) (all∈-→all∈+head {ys = ys} {ys} {y} ⊆-id)
  ...| inj₁ v with ∈-fm-insert-decomp{ls = subpermutations ys} xs v
  ...| l , l∈sp , x⊆yl = All-trans x⊆yl (⊆→∷⊆∷{ys = ys}{l} (subsetIfSubperm {l}{ys} l∈sp))

