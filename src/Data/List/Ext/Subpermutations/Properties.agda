{-# OPTIONS --safe #-}

module Data.List.Ext.Subpermutations.Properties where

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

module _ {a}{A : Set a} where
  -- TODO: check whether any of these little lemmas already exist in stdlib

  All++ : ∀ {p} {P : Pred A p} {ll lr : List A} → All P ll → All P lr → All P (ll ++ lr)
  All++ {ll = .[]} All.[] h2 = h2
  All++ {ll = .(_ ∷ _)} (px All.∷ h1) h2 = px All.∷ (All++ h1 h2)

  Any++ˡ : {ll lr : List (List A)}{x : A} → Any(x ∈_) ll → Any (x ∈_) (ll ++ lr)
  Any++ˡ (here px) = here px
  Any++ˡ (there p) = there (Any++ˡ p)

  Any++ʳ : {ll lr : List (List A)}{x : A} → Any(x ∈_) lr → Any (x ∈_) (ll ++ lr)
  Any++ʳ {[]} (here px) = here px
  Any++ʳ {[]} (there p) = there p
  Any++ʳ {_ ∷ _} (here px) = there (Any++ʳ (here px))
  Any++ʳ {_ ∷ _} (there p) = there (Any++ʳ (there p))

  All++→∧ : ∀ {p} {P : Pred A p} {ll lr : List A} → All P (ll ++ lr) → All P ll × All P lr
  All++→∧ {ll = []} = _,_ All.[]
  All++→∧ {ll = _ ∷ _} {lr} (px All.∷ p) = (px All.∷ proj₁ (All++→∧ p)) , (proj₂ (All++→∧ p))

  Any++→∨ : {ll lr : List (List A)}{x : A} → Any (x ∈_) (ll ++ lr) → Any(x ∈_) ll ⊎ Any(x ∈_) lr
  Any++→∨ {[]} p = inj₂ p
  Any++→∨ {_ ∷ _} (here px) = inj₁ (here px)
  Any++→∨ {_ ∷ xs} (there p) with (Any++→∨{xs} p)
  ...| inj₁ v = inj₁ (there v)
  ...| inj₂ v = inj₂ v

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

  ∈-puthead→≡×∈ : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ map (_∷_ y) ls → x ≡ y × xs ∈ ls
  ∈-puthead→≡×∈ {_ ∷ _} (here refl) = refl , (here refl)
  ∈-puthead→≡×∈ {_ ∷ _} (there p) = (proj₁ (∈-puthead→≡×∈ p)) , there (proj₂ (∈-puthead→≡×∈ p))


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

  ∈⊆→∈ : {l l' : List A}{x : A} → x ∈ l → l ⊆ l' → x ∈ l'
  ∈⊆→∈ (here refl) (px All.∷ l⊆l') = px
  ∈⊆→∈ (there x∈l) l⊆l' = ∈⊆→∈ x∈l (proj₂ (∷⊆→∈×⊆ l⊆l'))

  ¬[]≡x∷xs : {xs : List A}{x : A} → ¬ [] ≡ x ∷ xs
  ¬[]≡x∷xs ()

  ¬[]∈x∷ls : {ls : List (List A)}{x : A} → ¬ ([] ∈ (map (x ∷_) ls))
  ¬[]∈x∷ls {_ ∷ _} (there p) = ¬[]∈x∷ls p

  xs≡[] : {xs : List A}{x : A} → x ∷ [] ≡ x ∷ xs → [] ≡ xs
  xs≡[] refl = refl

  ∈-putsubhead : {ls : List (List A)}{l l' xs : List A} → xs ∈ l ∷ ls → xs ∈ l ∷ l' ∷ ls
  ∈-putsubhead {ls} {l'} {xs} (here p) = here p
  ∈-putsubhead {ls} {l'} {xs} (there p) = there (there p)

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

  ∈-⊎→++ : {ll lr : List A}{x : A} → x ∈ ll ⊎ x ∈ lr → x ∈ ll ++ lr
  ∈-⊎→++ (inj₁ x∈ll) = ∈++ˡ x∈ll
  ∈-⊎→++ (inj₂ x∈lr) = ∈++ʳ x∈lr

  ∈-++→⊎ : {ll lr : List A}{x : A} → x ∈ ll ++ lr → x ∈ ll ⊎ x ∈ lr
  ∈-++→⊎ {[]} x∈[] = inj₂ x∈[]
  ∈-++→⊎ {_ ∷ _} (here refl) = inj₁ (here refl)
  ∈-++→⊎ {_ ∷ _} (there x∈ys) with (∈-++→⊎ x∈ys)
  ...| inj₁ y∈ys = inj₁ (there y∈ys)
  ...| inj₂ x∈ll = inj₂ x∈ll

  ++⇔⊎ : {ll lr : List A}{x : A} → (x ∈ ll ++ lr) ⇔ (x ∈ ll ⊎ x ∈ lr)
  ++⇔⊎ = mk⇔ ∈-++→⊎ ∈-⊎→++

  ⊆-swap : {ll lr : List A}{x y : A} → ll ⊆ (x ∷ y ∷ lr) → ll ⊆ (y ∷ x ∷ lr)
  ⊆-swap {[]}  ll∈ = All.[]
  ⊆-swap {_ ∷ _}  (here px All.∷ ll∈) = there (here px) All.∷ ⊆-swap ll∈
  ⊆-swap {_ ∷ _}  (there (here px) All.∷ ll∈) = here px All.∷ ⊆-swap ll∈
  ⊆-swap {_ ∷ _}  (there (there px) All.∷ ll∈) = there (there px) All.∷ ⊆-swap ll∈

module _ {a}{A : Set a} where

  []∈sublists : {l : List A} → [] ∈ sublists l
  []∈sublists {[]} = here refl
  []∈sublists {x ∷ l} = ∈++ʳ {ll = map (x ∷_) (sublists l)} ([]∈sublists{l})

  []∈permutations[] : [] ∈ permutations{A = A} []
  []∈permutations[] = here refl

  ¬[]++ˡ : {ll : List A} → ¬ ll ≡ [] → ∀ lr → ¬ ll ++ lr ≡ []
  ¬[]++ˡ {[]} ¬p _ = ⊥-elim (¬p refl)
  ¬[]++ˡ {_ ∷ _} _ _ = λ ()

  ¬[]++ʳ : {lr : List A} → ¬ lr ≡ [] → ∀ ll → ¬ ll ++ lr ≡ []
  ¬[]++ʳ ¬p [] = ¬p
  ¬[]++ʳ _ (_ ∷ _) = λ ()

module _ {a}{A : Set a} where
  ¬subpermutations[] : {l : List A} → ¬ subpermutations l ≡ []
  ¬subpermutations[] {[]} = λ ()
  ¬subpermutations[] {x ∷ l} n = ¬[]++ʳ{lr = subpermutations l} (¬subpermutations[]{l = l}) (flatMap (insert x) (subpermutations l)) n

  []∈subpermutations : {l : List A} → [] ∈ subpermutations l
  []∈subpermutations {[]} = here refl
  []∈subpermutations {x ∷ xs} = ∈++ʳ{ll = flatMap (insert x) (subpermutations xs)} ([]∈subpermutations{l = xs})


module _ {a}{A : Set a} where

  ¬[]∈map : {ls : List (List A)}{z : A} → ¬ [] ∈ map(z ∷_) ls
  ¬[]∈map {[]} = λ ()
  ¬[]∈map {_ ∷ _} (there p) = ¬[]∈map p

  ¬[]∈insert : {ys : List A}{z : A} → ¬ [] ∈ (insert z ys)
  ¬[]∈insert {[]} (here ())
  ¬[]∈insert {[]} (there ())
  ¬[]∈insert {_ ∷ _} (there p) = ¬[]∈map p

  ∈all+head : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  ∈all+head {[]} x∈all = x∈all
  ∈all+head {_ ∷ _} (px All.∷ x∈all) = (there px) All.∷ (∈all+head x∈all)

  ∈-map : {ls : List (List A)}{x : A} → All (x ∈_) (map (x ∷_) ls)
  ∈-map {[]} = All.[]
  ∈-map {_ ∷ _} = here refl All.∷ ∈-map

  ∈-map' : {ls : List (List A)}{l : List A}{x : A} → l ∈ (map (x ∷_) ls) → x ∈ l
  ∈-map' {[]} = λ ()
  ∈-map' {_ ∷ _} (here refl) = here refl
  ∈-map' {_ ∷ _} (there p) = ∈-map' p

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

  ∈-fmInsert : {ls : List (List A)}{x : A} → All (x ∈_) (flatMap (insert x) ls)
  ∈-fmInsert {[]} = All.[]
  ∈-fmInsert {_ ∷ ls} = All++ ∈-insert (∈-fmInsert{ls})

  fm-insert→head∈ : {ls : List (List A)}{x : A} → ∀ l → l ∈ flatMap (insert x) ls → x ∈ l
  fm-insert→head∈ {ls} = all→imp (∈-fmInsert{ls})

  maphead-decomp' : {ls : List (List A)}{xs : List A}{y x : A} → x ∷ xs ∈ map (y ∷_) ls → x ≡ y × xs ∈ ls
  maphead-decomp' {l ∷ ls} (here refl) = refl , (here refl)
  maphead-decomp' {l ∷ ls} (there xxs∈) = (proj₁ (maphead-decomp' xxs∈)) , there (proj₂ (maphead-decomp' xxs∈))

  maphead-decomp : {ls : List (List A)}{xs : List A}{y : A} → xs ∈ map (y ∷_) ls → ∃[ ys ](ys ∈ ls × y ∷ ys ≡ xs)
  maphead-decomp {l ∷ _} {.(_ ∷ l)}(here refl) = l , ((here refl) , refl)
  maphead-decomp {l ∷ ls} {[]} {y} (there xs∈) = ⊥-elim (¬[]∈map xs∈)
  maphead-decomp {_ ∷ _} {x ∷ xs} (there xs∈) =
    xs , there (proj₂ (maphead-decomp' xs∈)) , subst (λ u → u ∷ xs ≡ x ∷ xs) (proj₁ (maphead-decomp' xs∈)) refl

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
  ∈-fm-insert-decomp {xs ∷ ls}{x} ys ys∈ with (∈-++→⊎{ll = insert x xs}) ys∈
  ...| inj₁ v = xs , ((here refl) , ∈-insert-decomp ys v)
  ...| inj₂ v = (proj₁ ξ) , ((there (proj₁ (proj₂ ξ))) , (proj₂ (proj₂ ξ)))
    where
    ξ : ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
    ξ = ∈-fm-insert-decomp ys v

  ∈-perm-decomp : {xs : List A}{x : A} → ∀ l → l ∈ flatMap (insert x) (permutations xs) → l ⊆ (x ∷ xs)
  ∈-perm-decomp {[]} {x} .(x ∷ []) (here refl) = here refl All.∷ All.[]
  ∈-perm-decomp {x ∷ xs} {x'} ys ys∈ = ξ'' (proj₁ ξ) ((proj₂ (proj₂ ξ)) , (ξ' (proj₁ ξ) (proj₁ (proj₂ ξ))))
    where
    -- TODO: clean up this proof
    ξ : ∃[ l ] (l ∈ (flatMap (insert x) (permutations xs)) × ys ⊆ (x' ∷ l))
    ξ = ∈-fm-insert-decomp{flatMap (insert x) (permutations xs)}{x'} ys ys∈
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

  sublists→⊆ : {l' xs : List A} → xs ∈ sublists l' → xs ⊆ l'
  sublists→⊆ {[]} {.[]} (here refl) = All.[]
  sublists→⊆ {y ∷ ys} {[]} xs∈slyys = All.[]
  sublists→⊆ {y ∷ ys} {x ∷ xs} xs∈slyys with ∈-++→⊎{ll = map (_∷_ y) (sublists ys)} xs∈slyys
  ...| inj₂ v = ⊆+∷ (sublists→⊆ v)
  ...| inj₁ v with maphead-decomp v
  ... | .xs , <″-offset sl∈slys = here refl All.∷ ⊆+∷ (sublists→⊆ sl∈slys)

  ⊆+∈sublists→⊆ : {l' xs ys : List A} → ys ⊆ xs → xs ∈ sublists l' → ys ⊆ l'
  ⊆+∈sublists→⊆ ys⊆ xs∈ = All-trans ys⊆ (sublists→⊆ xs∈)

  ∈sublists+perm→⊆ : {l' xs ys : List A} → xs ∈ sublists l' → ys ∈ permutations xs → ys ⊆ l'
  ∈sublists+perm→⊆ xs∈ ys∈ = ⊆+∈sublists→⊆ (∈-permutions→⊆ ys∈) xs∈

  ∈-flatMap : {ls : List (List A)}{x : A} → ∀ l → l ∈ ls → x ∷ l ∈ flatMap (insert x) ls
  ∈-flatMap {[] ∷ ls} {x} .[] (here refl) = here refl
  ∈-flatMap {(x₁ ∷ l) ∷ ls} {x} .(x₁ ∷ l) (here refl) = here refl
  ∈-flatMap {l' ∷ ls} {x} l (there l∈ls) = ∈++ʳ {ll = insert x l'} (∈-flatMap l l∈ls)

  ∈-subperm-decomp : {l' ys : List A} → ys ∈ subpermutations l' → ∃[ xs ] (xs ∈ sublists l' × ys ∈ permutations xs)
  ∈-subperm-decomp = {!!}

  ∷∈subperm∷ : {ys xs : List A}{x : A} → ¬ x ∈ xs
              → xs ∈ subpermutations ys → x ∷ xs ∈ subpermutations (x ∷ ys)
  ∷∈subperm∷ {[]} {xs} {x} ¬x∈xs (here px) = here (subst (λ u → x ∷ xs ≡ x ∷ u) px refl)
  ∷∈subperm∷ {y ∷ ys} {xs} {x} ¬x∈xs xs∈sp =
    (∈++ˡ{ll = flatMap (insert x) (flatMap (insert y) (subpermutations ys) ++ subpermutations ys)}) (∈-flatMap xs xs∈sp)

  ∷∈subperm : {l' xs : List A}{x : A} → x ∈ l' → ¬ x ∈ xs
              → xs ∈ subpermutations l' → x ∷ xs ∈ subpermutations l'
  ∷∈subperm {.x ∷ ys} {xs} {x} (here refl) ¬x∈xs xs∈spyys with (∈-++→⊎{ll = flatMap (insert x) (subpermutations ys)} xs∈spyys)
  ...| inj₁ v = ⊥-elim (¬x∈xs (fm-insert→head∈{ls = subpermutations ys} xs v))
  ...| inj₂ v = ∷∈subperm∷ {ys} {xs} {x} ¬x∈xs v


  ∷∈subperm {y ∷ ys} {xs}{x} (there x∈yys) ¬x∈xs xs∈spyys with ∈-++→⊎ xs∈spyys
  ...| inj₁ v = ∈++ˡ{ll = flatMap (insert y) (subpermutations ys)} {!!}
  ...| inj₂ v = ∈++ʳ (∷∈subperm x∈yys ¬x∈xs v)

  Unique→-Unique-subhead : {xs : List A}{x y : A} → Unique (x ∷ y ∷ xs) →  Unique (x ∷ xs)
  Unique→-Unique-subhead ((_ All.∷ xxsU) ∷ yxsU) = xxsU ∷ (drop⁺ 1 yxsU)

  Unique→¬hd∈tl : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  Unique→¬hd∈tl ((px All.∷ _) ∷ _) (here refl) = px refl
  Unique→¬hd∈tl xxsU (there p) = Unique→¬hd∈tl (Unique→-Unique-subhead xxsU) p

  subpermIfSubset : {l l' : List A} → Unique l → l ⊆ l' → l ∈ subpermutations l'
  subpermIfSubset {[]} {l'} _ l⊆l' = []∈subpermutations{l = l'}
  subpermIfSubset {x ∷ xs} {l'} (x₁ ∷ lU) (px All.∷ pxs) = ∷∈subperm px (Unique→¬hd∈tl (x₁ ∷ lU)) (subpermIfSubset lU pxs)

  -- Proof that if l is a subpermutation of l', then l ⊆ l'
  subsetIfSubperm : {l l' : List A} → l ∈ subpermutations l' → l ⊆ l'
  subsetIfSubperm {l} {l'} lsubpermOfl' with ∈-subperm-decomp{l'} lsubpermOfl'
  ...| (xs , xs∈sll' , ys∈xs) = ∈sublists+perm→⊆ xs∈sll' ys∈xs


-- TESTS --
  _ : sublists{A = A} [] ≡ [] ∷ [] -- [] ∷ (1 ∷ []) ∷ []
  _ = refl

  _ : [] ∈ sublists{A = A} [] -- [] ∷ (1 ∷ []) ∷ []
  _ = here refl

_ : sublists (1 ∷ []) ≡ (1 ∷ []) ∷ [] ∷ [] -- [] ∷ (1 ∷ []) ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ [] ∷ [] -- [] ∷ (2 ∷ []) ∷ (1 ∷ []) ∷ (1 ∷ 2 ∷ []) ∷ []
_ = refl

_ : {a : Level}{A : Set a} → sublists{a}{A} [] ≡ [] ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷
                                  (1 ∷ 2 ∷ []) ∷
                                  (1 ∷ 3 ∷ []) ∷
                                  (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ [] ∷ []
_ = refl

_ : 1 ∷ [] ∈ 1 +∷ sublists (2 ∷ 3 ∷ [])
_ = there (there (there (here refl)))

_ : ∀{a}{A : Set a} → permutations{A = A} [] ≡ [] ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷
                                      (2 ∷ 1 ∷ 3 ∷ []) ∷
                                      (2 ∷ 3 ∷ 1 ∷ []) ∷
                                      (1 ∷ 3 ∷ 2 ∷ []) ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ []) ∷ []
_ = refl


_ : subpermutations{A = ℕ} [] ≡ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ []) ≡ (1 ∷ []) ∷ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ 1 ∷ []) ≡ (1 ∷ 1 ∷ []) ∷ (1 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (1 ∷ []) ∷ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ [] ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ []) ∷ (2 ∷ 3 ∷ 1 ∷ [])
                                       ∷ (1 ∷ 3 ∷ 2 ∷ []) ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                       ∷ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ []) ∷ (3 ∷ 1 ∷ [])
                                       ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ []) ∷ (2 ∷ []) ∷ (3 ∷ [])
                                       ∷ [] ∷ []
_ = refl
