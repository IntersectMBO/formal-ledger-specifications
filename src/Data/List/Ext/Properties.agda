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

-------------------------------
------ properties of map ------
-------------------------------
module _ {a}{A : Set a} where
  ¬[]∈map : {ls : List (List A)}{z : A} → ¬ [] ∈ map(z ∷_) ls
  ¬[]∈map {_ ∷ _} (there p) = ¬[]∈map p

  ∈map∷→∈ : {ls : List (List A)}{l : List A}{x : A} → l ∈ (map (x ∷_) ls) → x ∈ l
  ∈map∷→∈ {[]} = λ ()
  ∈map∷→∈ {_ ∷ _} (here refl) = here refl
  ∈map∷→∈ {_ ∷ _} (there p) = ∈map∷→∈ p

  map∷decomp∈ : {ls : List (List A)}{xs : List A}{y x : A} → x ∷ xs ∈ map (y ∷_) ls → x ≡ y × xs ∈ ls
  map∷decomp∈ {_ ∷ _} (here refl) = refl , (here refl)
  map∷decomp∈ {_ ∷ _} (there xxs∈) = (proj₁ (map∷decomp∈ xxs∈)) , there (proj₂ (map∷decomp∈ xxs∈))

  map∷decomp : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ map (y ∷_) ls → ∃[ ys ](ys ∈ ls × y ∷ ys ≡ xs)
  map∷decomp {l ∷ _} {.(_ ∷ l)}(here refl) = l , ((here refl) , refl)
  map∷decomp {_ ∷ _} {[]} {y} (there xs∈) = ⊥-elim (¬[]∈map xs∈)
  map∷decomp {_ ∷ _} {x ∷ xs} (there xs∈) =
    xs , there (proj₂ (map∷decomp∈ xs∈)) , subst (λ u → u ∷ xs ≡ x ∷ xs) (proj₁ (map∷decomp∈ xs∈)) refl

  map∷distr++ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) (ll ++ lr) → l ∈ map(x ∷_) ll ++ map(x ∷_) lr
  map∷distr++ {[]} {lr} {x} l l∈ = l∈
  map∷distr++ {_ ∷ _} l (here px) = here px
  map∷distr++ {_ ∷ lls} l (there l∈) = there (map∷distr++{ll = lls} l l∈)

  map∷distr++ˡ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) ll → l ∈ map(x ∷_) (ll ++ lr)
  map∷distr++ˡ {_ ∷ _} _ (here px) = here px
  map∷distr++ˡ {_ ∷ _} l (there l∈) = there (map∷distr++ˡ l l∈)

  map∷distr++ʳ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ map(x ∷_) lr → l ∈ map(x ∷_) (ll ++ lr)
  map∷distr++ʳ {[]} _ = id
  map∷distr++ʳ {_ ∷ _} l l∈ = there (map∷distr++ʳ l l∈)

-------------------------------
------ properties of All ------
-------------------------------
module _ {a}{A : Set a} where
  -- TODO: check whether any of these already exist in the Agda std lib
  x∈All→∈Allmapy∷ : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  x∈All→∈Allmapy∷ {[]} x∈all = x∈all
  x∈All→∈Allmapy∷ {_ ∷ _} (px All.∷ x∈all) = (there px) All.∷ (x∈All→∈Allmapy∷ x∈all)

  x∈Allmapx∷ : {ls : List (List A)}{x : A} → All (x ∈_) (map (x ∷_) ls)
  x∈Allmapx∷ {[]} = All.[]
  x∈Allmapx∷ {_ ∷ _} = here refl All.∷ x∈Allmapx∷

  ∈×All∈→∈ : {ys xs : List A}{z : A} → z ∈ ys → All(_∈ xs) ys → z ∈ xs
  ∈×All∈→∈ (here refl) (px All.∷ ys∈) = px
  ∈×All∈→∈ (there z∈) (px All.∷ ys∈) = ∈×All∈→∈ z∈ ys∈

  Alltrans : {zs ys xs : List A} → All(_∈ ys) zs → All (_∈ xs) ys → All (_∈ xs) zs
  Alltrans {[]} p = λ _ → All.[]
  Alltrans {_ ∷ _} (here refl All.∷ p) (px All.∷ q) = px All.∷ (Alltrans p (px All.∷ q))
  Alltrans {_ ∷ _} (there px All.∷ p) (px₁ All.∷ q) = (∈×All∈→∈ px q) All.∷ (Alltrans p (px₁ All.∷ q))

  All∈→All∈∷ : {ys xs : List A}{x : A} → All(_∈ xs) ys → All(_∈ x ∷ xs) ys
  All∈→All∈∷ {[]} _ = All.[]
  All∈→All∈∷ {_ ∷ _} {.(_ ∷ _)} (here refl All.∷ p) = (there (here refl)) All.∷ (All∈→All∈∷ p)
  All∈→All∈∷ {_ ∷ _} {.(_ ∷ _)} (there px All.∷ p) = (there (there px)) All.∷ (All∈→All∈∷ p)

  All∈∷ : {ys : List A}{x : A} → All(_∈ x ∷ ys) ys
  All∈∷ {[]} = All.[]
  All∈∷ {_ ∷ _} = All∈→All∈∷ ((here refl) All.∷ All∈∷)

  All++intro : ∀ {p} {P : Pred A p} {ll lr : List A} → All P ll → All P lr → All P (ll ++ lr)
  All++intro {ll = .[]} All.[] h2 = h2
  All++intro {ll = .(_ ∷ _)} (px All.∷ h1) h2 = px All.∷ (All++intro h1 h2)

  ∈All-def : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → (∀ l → l ∈ ls → y ∈ l)
  ∈All-def {.(l ∷ _)} (y∈l All.∷ _) l (here refl) = y∈l
  ∈All-def {.(_ ∷ _)} (_ All.∷ y∈all) l (there l∈ls) = ∈All-def y∈all l l∈ls

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

  Any++→⊎ : {ll lr : List (List A)}{x : A} → Any (x ∈_) (ll ++ lr) → Any(x ∈_) ll ⊎ Any(x ∈_) lr
  Any++→⊎ {[]} p = inj₂ p
  Any++→⊎ {_ ∷ _} (here px) = inj₁ (here px)
  Any++→⊎ {_ ∷ xs} (there p) with (Any++→⊎{xs} p)
  ...| inj₁ v = inj₁ (there v)
  ...| inj₂ v = inj₂ v

  module _ {p}{P : Pred (List A) p} where
    ∃→Any : {ls : List (List A)} → ∃[ l ](l ∈ ls × P l) → Any P ls
    ∃→Any {l' ∷ ls} (.l' , here refl , Pl) = here Pl
    ∃→Any {l' ∷ ls} (l , there l∈ , Pl) = there (∃→Any (l , l∈ , Pl))

    Any→∃ : {ls : List (List A)} → Any P ls → ∃[ l ](l ∈ ls × P l)
    Any→∃ {.(l ∷ _)} (here {l} px) = l , here refl , px
    Any→∃ {.(l ∷ ls)} (there {l} {ls} h) with Any→∃ h
    ...| l' , l'∈ls , Pl' = l' , there l'∈ls , Pl'

    ∃⇔Any : {ls : List (List A)} → (∃[ l ](l ∈ ls × P l)) ⇔ Any P ls
    ∃⇔Any = mk⇔ ∃→Any Any→∃

-----------------------------------------------
-------- Properties of list inclusion ---------
-----------------------------------------------
module _ {a}{A : Set a} where
  ⊆-def : {ys xs : List A} → (∀ x → x ∈ xs → x ∈ ys) → xs ⊆ ys
  ⊆-def {xs = []} def = All.[]
  ⊆-def {xs = x₂ ∷ _} def = def x₂ (here refl) All.∷ (⊆-def (λ x x∈l → def x (there x∈l)))

  ⊆→⊆∷ : {ys xs : List A}{y : A} → xs ⊆ ys → xs ⊆ (y ∷ ys)
  ⊆→⊆∷ All.[] = All.[]
  ⊆→⊆∷ (px All.∷ pxs) = there px All.∷ ⊆→⊆∷ pxs

  ∷⊆→⊆ : {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys → xs ⊆ ys
  ∷⊆→⊆ (here refl All.∷ p) = p
  ∷⊆→⊆ (there _ All.∷ p) = p

  ⊆→∷⊆∷ : {ys xs : List A}{y : A} → xs ⊆ ys → (y ∷ xs) ⊆ (y ∷ ys)
  ⊆→∷⊆∷ {[]} {[]} xsys = here refl All.∷ All.[]
  ⊆→∷⊆∷ {[]} {_ ∷ _} (() All.∷ xsys)
  ⊆→∷⊆∷ {_ ∷ _} {.[]} All.[] = here refl All.∷ All.[]
  ⊆→∷⊆∷ {_ ∷ _} {.(_ ∷ _)} ((here refl) All.∷ xsys) = (here refl) All.∷ ((there (here refl)) All.∷ (⊆→⊆∷ xsys))
  ⊆→∷⊆∷ {_ ∷ _} {.(_ ∷ _)} ((there px) All.∷ xsys) = (here refl) All.∷ ((there (there px)) All.∷ (⊆→⊆∷ xsys))

  ⊆id : {xs : List A} → xs ⊆ xs
  ⊆id {[]} = All.[]
  ⊆id {_ ∷ _} = (here refl) All.∷ (⊆→⊆∷ ⊆id)

  ¬⊆[] : {xs : List A}{x : A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆[] (px All.∷ _) = ¬Any[] px

  ∷⊆→∈×⊆ : ∀ {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys → x ∈ ys × xs ⊆ ys
  ∷⊆→∈×⊆ (px All.∷ p) = px , p

  ∈×⊆→∷⊆ : ∀ {ys xs : List A}{x : A} → x ∈ ys × xs ⊆ ys → (x ∷ xs) ⊆ ys
  ∈×⊆→∷⊆ (x∈ys , xs⊆ys) = x∈ys All.∷ xs⊆ys

  ∷⊆⇔∈×⊆ : {ys xs : List A}{x : A} → (x ∷ xs) ⊆ ys ⇔ (x ∈ ys × xs ⊆ ys)
  ∷⊆⇔∈×⊆ {[]} = mk⇔ (⊥-elim ∘ ¬⊆[]) (λ ())
  ∷⊆⇔∈×⊆ {_ ∷ _} = mk⇔ ∷⊆→∈×⊆ ∈×⊆→∷⊆

  ⊆swap : {ll lr : List A}{x y : A} → ll ⊆ (x ∷ y ∷ lr) → ll ⊆ (y ∷ x ∷ lr)
  ⊆swap {[]}  ll∈ = All.[]
  ⊆swap {_ ∷ _} (here px All.∷ ll∈) = there (here px) All.∷ ⊆swap ll∈
  ⊆swap {_ ∷ _} (there (here px) All.∷ ll∈) = here px All.∷ ⊆swap ll∈
  ⊆swap {_ ∷ _} (there (there px) All.∷ ll∈) = there (there px) All.∷ ⊆swap ll∈

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
  ⊆++ˡ = ⊆-def (λ x → ∈++ˡ{x = x})

  ⊆++ʳ : {ll lr : List A}{x : A} → lr ⊆ (ll ++ lr)
  ⊆++ʳ = ⊆-def (λ x → ∈++ʳ{x = x})

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

  All≢x→x∉ : {xs : List A}{x : A} → All (λ x' → x ≡ x' → ⊥) xs → ¬ x ∈ xs
  All≢x→x∉ {.(_ ∷ _)} (px All.∷ p) (here refl) = px refl
  All≢x→x∉ {.(_ ∷ _)} p (there q) = All≢x→x∉ (Alltail p) q


------------------------------------
------- properties of insert -------
------------------------------------
module _ {a}{A : Set a} where
  ¬[]∈insert : {ys : List A}{z : A} → ¬ [] ∈ (insert z ys)
  ¬[]∈insert {[]} (here ())
  ¬[]∈insert {[]} (there ())
  ¬[]∈insert {_ ∷ _} (there p) = ¬[]∈map p

  x∈Allinsertx : {l : List A}{x : A} → All (x ∈_) ((insert x) l)
  x∈Allinsertx {[]} = here refl All.∷ All.[]
  x∈Allinsertx {_ ∷ _} = (here refl) All.∷ x∈All→∈Allmapy∷ x∈Allinsertx

  x∈All→x∈Allmap∷ : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  x∈All→x∈Allmap∷ {[]} = id
  x∈All→x∈Allmap∷ {_ ∷ _} (px All.∷ p) = there px All.∷ x∈All→x∈Allmap∷ p

  x∈→x∈Allinsert : {ys : List A}{y x : A} → x ∈ ys → All (x ∈_) (insert y ys)
  x∈→x∈Allinsert (here refl) = (there (here refl)) All.∷ x∈Allmapx∷
  x∈→x∈Allinsert (there x∈ys) = (there (there x∈ys)) All.∷ (x∈All→x∈Allmap∷ (x∈→x∈Allinsert x∈ys))

  x∈Allfm∘insertx : {ls : List (List A)}{x : A} → All (x ∈_) (flatMap (insert x) ls)
  x∈Allfm∘insertx {[]} = All.[]
  x∈Allfm∘insertx {_ ∷ ls} = All++intro x∈Allinsertx (x∈Allfm∘insertx{ls})

  l∈fm∘insertx→x∈l : {ls : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ls → x ∈ l
  l∈fm∘insertx→x∈l {ls} = ∈All-def (x∈Allfm∘insertx{ls})

  x∈All→x∈Allfm∘insert : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (flatMap (insert y) ls)
  x∈All→x∈Allfm∘insert {.[]} All.[] = All.[]
  x∈All→x∈Allfm∘insert {.(_ ∷ _)} (px All.∷ p) = All++intro (x∈→x∈Allinsert px) (x∈All→x∈Allfm∘insert p)

  l∈insert→l⊆∷ : {xs : List A}{x : A} → ∀ l → l ∈ (insert x xs) → l ⊆ (x ∷ xs)
  l∈insert→l⊆∷ {[]} .(_ ∷ []) (here refl) = here refl All.∷ All.[]
  l∈insert→l⊆∷ {_ ∷ _} .(_ ∷ _ ∷ _) (here refl) = (here refl) All.∷ (All∈→All∈∷ ⊆id)
  l∈insert→l⊆∷ {_ ∷ _} [] (there ys∈) = All.[]
  l∈insert→l⊆∷ {_ ∷ _} (y ∷ ys) (there ys∈) with map∷decomp∈ ys∈
  ...| y≡x , ys∈x'xs = there (here y≡x) All.∷ ⊆swap (All∈→All∈∷ (l∈insert→l⊆∷ ys ys∈x'xs))

  l∈map∷→l∈fm∘insert : {ls : List (List A)}{y : A} → ∀ l → l ∈ map (y ∷_) ls → l ∈ flatMap (insert y) ls
  l∈map∷→l∈fm∘insert {[] ∷ ls} {y} l (here px) = here px
  l∈map∷→l∈fm∘insert {(_ ∷ _) ∷ _} l (here px) = here px
  l∈map∷→l∈fm∘insert {[] ∷ _} l (there l∈) = there (l∈map∷→l∈fm∘insert l l∈)
  l∈map∷→l∈fm∘insert {(_ ∷ _) ∷ _} l (there l∈) = ∈++ʳ (l∈map∷→l∈fm∘insert l l∈)

  l∈map³→l∈fm∘insert∘map² : {ls : List (List A)}{y' y z : A} → ∀ l
                   → l ∈ map (y' ∷_) (map (y ∷_) (map (z ∷_) ls))
                   → l ∈ flatMap (insert y) (map (y' ∷_) (map (z ∷_) ls))
  l∈map³→l∈fm∘insert∘map² {_ ∷ _} l (here px) = there (here px)
  l∈map³→l∈fm∘insert∘map² {_ ∷ _} l (there l∈) = ∈++ʳ (l∈map³→l∈fm∘insert∘map² l l∈)

  insert-decomp : {ls : List (List A)}{x : A} → ∀ ys → ys ∈ (flatMap (insert x) ls)
                      → ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
  insert-decomp {xs ∷ _} ys ys∈ with ++→⊎ ys∈
  ...| inj₁ v = xs , here refl , l∈insert→l⊆∷ ys v
  ...| inj₂ v with insert-decomp ys v
  ...| l , l∈ls , ys⊆ = l , there l∈ls , ys⊆

  insert-decomp∈ : {ls : List (List A)}{y : A} → ∀ xs → xs ∈ (flatMap (insert y) ls)
                      → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
  insert-decomp∈ {zs ∷ _} xs xs∈ with ++→⊎ xs∈
  ...| inj₁ v = zs , here refl , v
  ...| inj₂ v with insert-decomp∈ xs v
  ...| l , l∈ls , xs∈yl = l , there l∈ls , xs∈yl

  insert-decomp⁻¹ : {ls : List (List A)}{y : A} → ∀ xs → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
                         → xs ∈ (flatMap (insert y) ls)
  insert-decomp⁻¹ {l ∷ ls} {y} xs (.l , here refl , xs∈) = ∈++ˡ xs∈
  insert-decomp⁻¹ {l ∷ ls} {y} xs (l' , there l'∈ , xs∈) = ∈++ʳ (insert-decomp⁻¹ xs (l' , (l'∈ , xs∈)))

  insert++distr : {ll lr : List (List A)}{xs : List A}{x : A} → xs ∈ flatMap (insert x) (ll ++ lr)
                     → xs ∈ flatMap (insert x) ll ++ flatMap (insert x) lr

  insert++distr {[]} {lr} {xs} {x} xs∈xlr = xs∈xlr
  insert++distr {ll ∷ lls} {[]} {xs} {x} xs∈xlr with ++→⊎{ll = insert x ll} xs∈xlr
  ...| inj₁ v = ∈++ˡ (∈++ˡ{ll = insert x ll} v)
  ...| inj₂ v = ∈++ˡ(∈++ʳ{ll = insert x ll} (subst (λ u → xs ∈ˡ flatMap (insert x) u) (++-identityʳ lls) v))
  insert++distr {ll ∷ lls} {lr ∷ lrs} {xs} {x} xs∈xlr with ++→⊎{ll = insert x ll} xs∈xlr
  ...| inj₁ v = ∈++ˡ (∈++ˡ{ll = insert x ll} v)
  ...| inj₂ v with ++→⊎{ll = flatMap(insert x) lls}{lr = flatMap(insert x) (lr ∷ lrs)} (insert++distr{lls} v)
  ...| inj₁ w = ∈++ˡ{ll = (insert x ll ++ flatMap (insert x) lls)} (∈++ʳ{ll = insert x ll} w)
  ...| inj₂ w = ∈++ʳ{ll = (insert x ll ++ flatMap (insert x) lls)} w

  insert++ˡ : {ll lr : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ll → l ∈ flatMap (insert x) (ll ++ lr)
  insert++ˡ {ll ∷ lls} {lr} {x} l xs∈xll with ++→⊎{ll = insert x ll} xs∈xll
  ...| inj₁ v = ∈++ˡ v
  ...| inj₂ v = ∈++ʳ (insert++ˡ{lls} l v)

  insert++ʳ : {ll lr : List (List A)}{xs : List A}{x : A}
                   → xs ∈ flatMap (insert x) lr → xs ∈ flatMap (insert x) (ll ++ lr)
  insert++ʳ {[]} {lr} {xs} xs∈xlr = xs∈xlr
  insert++ʳ {ll ∷ lls} {lr} {xs}{x} xs∈xlr = ∈++ʳ {ll = insert x ll} (insert++ʳ{ll = lls} xs∈xlr)

  insert++distr⁻¹ : {ll lr : List (List A)}{x : A} → ∀ l
                       → l ∈ flatMap (insert x) ll ++ flatMap (insert x) lr → l ∈ flatMap (insert x) (ll ++ lr)
  insert++distr⁻¹ {[]} {lr} l l∈++ = l∈++
  insert++distr⁻¹ {ll ∷ lls} {lr}{x} l l∈++ with ++→⊎{ll = insert x ll ++ flatMap (insert x) lls} l∈++
  ...| inj₂ v = ∈++ʳ (insert++ʳ{ll = lls} v)
  ...| inj₁ v
    with ++→⊎ (subst (λ u → l ∈ˡ u) (++-assoc (insert x ll) (flatMap (insert x) lls) (flatMap (insert x) lr)) (∈++ˡ  v))
  ...| inj₁ w = ∈++ˡ {ll = insert x ll} w
  ...| inj₂ w = ∈++ʳ (insert++distr⁻¹{ll = lls}{lr} l w)

  ins∘map∷→map∷²++fm : {ls : List (List A)}{y' x : A} → ∀ l → l ∈ flatMap (insert x) (map (y' ∷_) ls)
             → l ∈ map(x ∷_) (map(y' ∷_) ls) ++ map(y' ∷_) (flatMap (insert x) ls)
  ins∘map∷→map∷²++fm {_ ∷ _}  l (here px) = here px
  ins∘map∷→map∷²++fm {l' ∷ ls} {y'} {x} l (there l∈) with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ  (map∷distr++ˡ l v)
  ...| inj₂ v with ++→⊎ (ins∘map∷→map∷²++fm {ls} l v)
  ...| inj₁ w = ∈++ˡ (there w)
  ...| inj₂ w = ∈++ʳ (map∷distr++ʳ {ll = insert x l'} l w)

  ∷∈map∷ : {ls : List (List A)}{y : A} → ∀ l → l ∈ ls → y ∷ l ∈ map(y ∷_) ls
  ∷∈map∷ {l' ∷ _} .l' (here refl) = here refl
  ∷∈map∷ {_ ∷ _} l (there l∈) = there (∷∈map∷ l l∈)

  map∷∘insert-comm : {ls : List (List A)}{y' y : A}
                → ∀ l → l ∈ map(y' ∷_) (flatMap (insert y) ls) → l ∈ flatMap (insert y) (map(y' ∷_) ls)
  map∷∘insert-comm {l' ∷ ls} {y'} {y} l l∈ with ++→⊎{ll = map (y' ∷_) (insert y l')} (map∷distr++{ll = insert y l'} l l∈)
  ...| inj₁ v = there (∈++ˡ{ll = map (y' ∷_) (insert y l')} v)
  ...| inj₂ v = ∈++ʳ {ll = (y ∷ y' ∷ l') ∷ map (y' ∷_) (insert y l')} (map∷∘insert-comm {ls} l v)

  insert∘map-swap : {ys : List A}{ y' y x : A} → ∀ l
                      → l ∈ flatMap (insert x) (map (y' ∷_) (insert y ys))
                      → l ∈ (y ∷ x ∷ y' ∷ ys) ∷ (x ∷ y ∷ y' ∷ ys) ∷ map (x ∷_) (map (y' ∷_) (insert y ys))
                            ++ flatMap (insert y) (map (y' ∷_) (insert x ys))
  insert∘map-swap {[]} _ (here px) = there (there (here px))
  insert∘map-swap {[]} _ (there (here px)) = there (there (there (there (there (here px)))))
  insert∘map-swap {[]} _ (there (there (here px))) = there (there (there (there (here px))))
  insert∘map-swap {_ ∷ _} _ (here px) = there (there (here px))
  insert∘map-swap {z ∷ ys} {y'} {y} {x} .(y' ∷ x ∷ y ∷ z ∷ ys) (there (here refl)) =
    ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (there (here refl)))
  insert∘map-swap {z ∷ ys} {y'} {y} {x} l (there (there (here px))) =
    ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (here px))
  insert∘map-swap {z ∷ ys} {y'} {y} {x} l (there (there (there l∈)))
    with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                            ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))}
                (∈++ʳ (l∈map³→l∈fm∘insert∘map² {ls = insert x ys} l v))
  ...| inj₂ v
    with ++→⊎ (ins∘map∷→map∷²++fm{ls = map (z ∷_)(insert y ys)} l v)
  ...| inj₁ w = ∈++ˡ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there (there (there w)))
  ...| inj₂ w = ∈++ʳ {ll = (y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (_∷_ z) (insert y ys)))} (there goal)
    where
    l' : List A
    l' = proj₁ (map∷decomp w)
    l'∈ : l' ∈ flatMap (insert x) (map (z ∷_) (insert y ys))
    l'∈ = proj₁ (proj₂ (map∷decomp w))
    y'l'l : y' ∷ l' ≡ l
    y'l'l = proj₂ (proj₂ (map∷decomp w))
    goal : l ∈ (y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
               ∷ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))
               ++ flatMap (insert y) (map(y' ∷_) (map(z ∷_) (insert x ys)))

    goal with ++→⊎{ll = (y ∷ x ∷ z ∷ ys) ∷ (x ∷ y ∷ z ∷ ys) ∷ map (x ∷_) (map (z ∷_) (insert y ys))} (insert∘map-swap l' l'∈)
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
      γ = ∷∈map∷ {ls = map (x ∷_) (map (z ∷_) (insert y ys))} l' u
    ...| inj₂ u =
      ∈++ʳ ( map∷∘insert-comm {ls = map (_∷_ z) (insert x ys)} l
               (subst (λ r → r ∈ map (y' ∷_) (flatMap (insert y) (map (_∷_ z) (insert x ys))))
                          y'l'l (∷∈map∷ {ls =(flatMap (insert y) (map (_∷_ z) (insert x ys)))} l' u)))

  insert²-swap : {ys : List A}{y x : A} → ∀ l → l ∈ flatMap (insert x) (insert y ys)
                  → l ∈ flatMap (insert y) (insert x ys)
  insert²-swap {[]}  l (here px) = there (here px)
  insert²-swap {[]}  l (there (here px)) = here px
  insert²-swap {_ ∷ _} l (here px) = there (here px)
  insert²-swap {_ ∷ _} l (there (here px)) = here px
  insert²-swap {_ ∷ _} l (there (there l∈)) with ++→⊎ l∈
  ...| inj₁ v = ∈++ʳ (l∈map∷→l∈fm∘insert l v)
  ...| inj₂ v = insert∘map-swap l v

  insert²-swap' : {ls : List (List A)}{y x : A} → ∀ l → l ∈ flatMap (insert x) (flatMap (insert y) ls)
                     → l ∈ flatMap (insert y) (flatMap (insert x) ls)
  insert²-swap' {l' ∷ ls} {y} {x} l l∈xyls with ++→⊎ (insert++distr {ll = insert y l'} l∈xyls)
  ...| inj₁ v = insert++distr⁻¹{ll = insert x l'} l (∈++ˡ (insert²-swap{l'} l v))
  ...| inj₂ v = insert++distr⁻¹{ll = insert x l'} l (∈++ʳ (insert²-swap'{ls} l v))

  ∈→∷∈insert : {ls : List (List A)}{x : A} → ∀ l → l ∈ ls → x ∷ l ∈ flatMap (insert x) ls
  ∈→∷∈insert {[] ∷ _} .[] (here refl) = here refl
  ∈→∷∈insert {(y ∷ _) ∷ _} .(y ∷ _) (here refl) = here refl
  ∈→∷∈insert {_ ∷ _} l (there l∈ls) = ∈++ʳ (∈→∷∈insert l l∈ls)

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
  ...| inj₂ v = ⊆→⊆∷ (sublists→⊆ v)
  ...| inj₁ v with map∷decomp v
  ... | .xs , <″-offset sl∈slys = here refl All.∷ ⊆→⊆∷ (sublists→⊆ sl∈slys)

----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------
module _ {a}{A : Set a} where
  []∈subpermutations : {l : List A} → [] ∈ subpermutations l
  []∈subpermutations {[]} = here refl
  []∈subpermutations {x ∷ xs} = ∈++ʳ{ll = flatMap (insert x) (subpermutations xs)} ([]∈subpermutations{l = xs})

  Unique→dropSubheadUnique : {xs : List A}{x y : A} → Unique (x ∷ y ∷ xs) →  Unique (x ∷ xs)
  Unique→dropSubheadUnique ((_ All.∷ xxsU) ∷ yxsU) = xxsU ∷ (drop⁺ 1 yxsU)

  Unique→head∉tail : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  Unique→head∉tail ((px All.∷ _) ∷ _) (here refl) = px refl
  Unique→head∉tail xxsU (there p) = Unique→head∉tail (Unique→dropSubheadUnique xxsU) p

  ∈subperm→∈subpermOftail : {ys : List A}{x : A} → ∀ l → l ∈ subpermutations (x ∷ ys) → ¬ x ∈ l
                            → l ∈ subpermutations ys
  ∈subperm→∈subpermOftail {[]} .(_ ∷ []) (here refl) x∉xs = ⊥-elim (x∉xs (here refl))
  ∈subperm→∈subpermOftail {[]} .[] (there (here refl)) x∉xs = here refl
  ∈subperm→∈subpermOftail {y ∷ ys} l l∈sp x∉l with ++→⊎ l∈sp
  ...| inj₁ v = ⊥-elim (x∉l (l∈fm∘insertx→x∈l{ls = subpermutations (y ∷ ys)} l v ))
  ...| inj₂ v = v

  ∈-insert-cancelˡ : {ls : List (List A)}{xs : List A}{y : A} → ¬ y ∈ xs → xs ∈ flatMap (insert y) ls ++ ls → xs ∈ ls
  ∈-insert-cancelˡ {ls} {xs} y∉xs xs∈yls with ++→⊎ xs∈yls
  ...| inj₁ v = ⊥-elim (y∉xs (l∈fm∘insertx→x∈l{ls = ls} xs v))
  ...| inj₂ v = v

module _ {a} {A : Set a} where
  ∈-subperm-addhead : {ys xs : List A}{x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ subpermutations ys
                      → (x ∷ xs) ∈ subpermutations ys

  ∈insert→∷∈insert : {ys xs : List A}{y x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ flatMap (insert y) (subpermutations ys)
                     → (x ∷ xs) ∈ flatMap (insert y) (subpermutations ys)

  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {.y'} (here refl) y'∉xs xs∈yy'spys
    with ++→⊎ {ll = flatMap (insert y)(flatMap (insert y') (subpermutations ys))}
              (insert++distr{ll = flatMap (insert y') (subpermutations ys)} xs∈yy'spys)
  ...| inj₁ v = ⊥-elim (y'∉xs (∈All-def (x∈All→x∈Allfm∘insert (x∈Allfm∘insertx{ls = subpermutations ys})) xs v))
  ...| inj₂ v = insert++distr⁻¹{ll = flatMap (insert y') (subpermutations ys)} (y' ∷ xs)
                (∈++ˡ (insert²-swap'{ls = (subpermutations ys)} (y' ∷ xs) (∈→∷∈insert xs v)))
  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {x} (there x∈ys) x∉xs xs∈yspys
    with ++→⊎ (insert++distr{ll = flatMap (insert y') (subpermutations ys)} xs∈yspys)
  ...| inj₂ v = insert++distr⁻¹{ll = flatMap (insert y') (subpermutations ys)}
                  (x ∷ xs) (∈++ʳ (∈insert→∷∈insert x∈ys x∉xs v))
  ...| inj₁ v with (insert-decomp∈ xs v)
  ...| l , l∈ , xs∈ = insert++distr⁻¹ {ll = flatMap (insert y') (subpermutations ys)}
    (x ∷ xs) (∈++ˡ (insert-decomp⁻¹ (x ∷ xs) ((x ∷ l) , (xl∈ , there (∷∈map∷ xs xs∈)))))
    where
    x∉l : ¬ x ∈ l
    x∉l p = x∉xs (∈All-def (x∈→x∈Allinsert p) xs xs∈)
    xl∈ : x ∷ l ∈ flatMap (insert y') (subpermutations ys)
    xl∈ = ∈insert→∷∈insert x∈ys x∉l l∈

  ∈-subperm-addhead {_ ∷ ys} (here refl) y∉xs xs∈sp =
    ∈++ˡ (∈→∷∈insert _ (∈-insert-cancelˡ{ls = subpermutations ys} y∉xs xs∈sp))
  ∈-subperm-addhead {_ ∷ _} {xs}  (there x∈ys) x∉xs xs∈sp with ++→⊎ xs∈sp
  ...| inj₁ v = ∈++ˡ (∈insert→∷∈insert x∈ys x∉xs v)
  ...| inj₂ v = ∈++ʳ (∈-subperm-addhead x∈ys x∉xs v)

--------------------------------------------------------------------------
------------  l ⊆ ys  ⋀  l Unique   ⇔   l ∈ subpermutations ys  ----------
--------------------------------------------------------------------------
  -- If l ⊆ ys and l has no repeated elements, then l is a subpermutation of ys.
  uniqueSubset→subperm : {ys : List A} → ∀ l → Unique l → l ⊆ ys → l ∈ subpermutations ys
  uniqueSubset→subperm {[]} .[] _ All.[] = here refl
  uniqueSubset→subperm {_ ∷ ys} [] _ lys = ∈++ʳ ([]∈subpermutations{l = ys})
  uniqueSubset→subperm {x ∷ ys} (.x ∷ xs) (x∉xs ∷ xsU) (here refl All.∷ lys) =
    ∈++ˡ( ∈→∷∈insert xs ( ∈subperm→∈subpermOftail{ys = ys} xs (uniqueSubset→subperm xs xsU lys)
                          (Unique→head∉tail (x∉xs ∷ xsU))))
  uniqueSubset→subperm {_ ∷ _} (_ ∷ xs) (x∉xs ∷ xsU) (there x∈ys All.∷ b)
    with ++→⊎ (uniqueSubset→subperm xs xsU b)
  ...| inj₁ v = ∈++ˡ (∈insert→∷∈insert x∈ys (All≢x→x∉ x∉xs) v)
  ...| inj₂ v = ∈++ʳ (∈-subperm-addhead x∈ys (All≢x→x∉ x∉xs) v)

  -- If l is a subpermutation of ys, then l ⊆ ys.
  subperm→subset : {ys : List A} → ∀ l → l ∈ subpermutations ys → l ⊆ ys
  subperm→subset {[]} .[] (here refl) = All.[]
  subperm→subset {y ∷ ys} l l∈ with ++→⊎ l∈
  ...| inj₂ v = Alltrans (subperm→subset l v) (All∈→All∈∷ ⊆id)
  ...| inj₁ v with insert-decomp l v
  ...| l , l∈sp , x⊆yl = Alltrans x⊆yl (⊆→∷⊆∷ (subperm→subset l l∈sp))


module _ {a}{p}{A : Set a}{L : List A}{P : Pred (List A) p} where

  ∃uniqueSubset→∃subperm : ∃[ l ](l ⊆ L × Unique l × P l) → ∃[ l ](l ∈ subpermutations L × P l)
  ∃uniqueSubset→∃subperm (l , l⊆L , lU , Pl) = l , uniqueSubset→subperm l lU l⊆L , Pl
  ∃subperm→∃subset : ∃[ l ](l ∈ subpermutations L × P l) → ∃[ l ](l ⊆ L × P l)
  ∃subperm→∃subset (l , l∈spL , Pl) = l , subperm→subset l l∈spL , Pl

  ∃uniqueSubset→∃uniqueSubperm : ∃[ l ](l ⊆ L × Unique l × P l) → ∃[ l ](l ∈ subpermutations L × Unique l × P l)
  ∃uniqueSubset→∃uniqueSubperm (l , l⊆L , lU , Pl) = l , uniqueSubset→subperm l lU l⊆L , lU , Pl

  ∃uniqueSubperm→∃uniqueSubset : ∃[ l ](l ∈ subpermutations L × Unique l × P l) → ∃[ l ](l ⊆ L × Unique l × P l)
  ∃uniqueSubperm→∃uniqueSubset (l , l∈spL , lU , Pl) = l , subperm→subset l l∈spL , lU , Pl

  ∃uniqueSubset⇔∃uniqueSubperm : (∃[ l ](l ⊆ L × Unique l × P l)) ⇔ (∃[ l ](l ∈ subpermutations L × Unique l × P l))
  ∃uniqueSubset⇔∃uniqueSubperm = mk⇔ ∃uniqueSubset→∃uniqueSubperm ∃uniqueSubperm→∃uniqueSubset

----------------------------------------------------------------------------------

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
