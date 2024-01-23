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

module _ {a}{A : Set a} where
  -- TODO: All++ is probably already in stdlib---find it there and use that instead.
  All++ : ∀ {p} {P : Pred A p} {ll lr : List A} → All P ll → All P lr → All P (ll ++ lr)
  All++ {ll = .[]} All.[] h2 = h2
  All++ {ll = .(_ ∷ _)} (px All.∷ h1) h2 = px All.∷ (All++ h1 h2)


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

------------------------------------------------------
------- properties of deduplication of lists ---------
------------------------------------------------------
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

  ++head-just : {l xs : List A}{x : A} → head ((x ∷ xs) ++ l) ≡ just x
  ++head-just = refl

  ++head : {l xs : List A}{x : A} → head ((x ∷ xs) ++ l) ≡ head (x ∷ xs)
  ++head = refl

  ++head' : {ll lr : List A} → ¬ ll ≡ [] → head (ll ++ lr) ≡ head ll
  ++head' {[]} ¬ll[] = ⊥-elim (¬ll[] refl)
  ++head' {_ ∷ _} ¬ll[] = refl


--------------------------------
------- properties of +∷ -------
--------------------------------
module _ {a} {A : Set a} where
  ∈-+∷[] : {x : A} → x ∷ [] ∈ x +∷ []
  ∈-+∷[] = here refl

  ∈-+∷ : {ls : List (List A)}{x : A} → x ∷ [] ∈ x +∷ ls
  ∈-+∷ {[]} = here refl
  ∈-+∷ {l ∷ ls} = there ∈-+∷

  ∈+∷→head≡ : {ls : List (List A)}{l : List A}{x y : A} → x ∷ l ∈ y +∷ ls → x ≡ y
  ∈+∷→head≡ {[]} (here refl) = refl
  ∈+∷→head≡ {_ ∷ _} (here refl) = refl
  ∈+∷→head≡ {_ ∷ _} (there xl∈) = ∈+∷→head≡ xl∈

  ∈+∷→tail∈ : {ls : List (List A)}{zs : List A}{x z : A} → x ∷ z ∷ zs ∈ x +∷ ls → z ∷ zs ∈ ls
  ∈+∷→tail∈ {[]} (here ())
  ∈+∷→tail∈ {l ∷ ls} (here refl) = here refl
  ∈+∷→tail∈ {l ∷ ls} (there xxs∈) = there (∈+∷→tail∈ xxs∈)

  ∈+∷→head×tail : {ls : List (List A)}{zs : List A}{x y z : A} → x ∷ z ∷ zs ∈ y +∷ ls → x ≡ y × z ∷ zs ∈ ls
  ∈+∷→head×tail {ls} {zs} {x}{y}{z} xzzs∈ =
    ∈+∷→head≡ xzzs∈ , ∈+∷→tail∈ (subst (λ u → x ∷ z ∷ zs ∈ (u +∷ ls)) (sym (∈+∷→head≡ xzzs∈)) xzzs∈)

  ∈+∷→tail∈' : {ls : List (List A)}{xs : List A}{x : A} → x ∷ xs ∈ x +∷ ls → ¬ xs ≡ [] → xs ∈ ls
  ∈+∷→tail∈' {[]} {.[]} {x} (here refl) ¬xs[] = ⊥-elim (¬xs[] refl)
  ∈+∷→tail∈' {l ∷ ls} (here refl) _ = here refl
  ∈+∷→tail∈' {l ∷ ls} (there xxs∈) ¬xs[] = there (∈+∷→tail∈' xxs∈ ¬xs[])

  ∈+∷→head×tail' : {ls : List (List A)}{xs : List A}{x y : A} → x ∷ xs ∈ y +∷ ls → ¬ xs ≡ [] → x ≡ y × xs ∈ ls
  ∈+∷→head×tail' {ls} {xs} {x} xxs∈ ¬xs[] =
    ∈+∷→head≡ xxs∈ , ∈+∷→tail∈' (subst (λ u → x ∷ xs ∈ (u +∷ ls)) (sym (∈+∷→head≡ xxs∈)) xxs∈) ¬xs[]

  ∈→∈-+∷ : {ls : List (List A)}{l : List A}{x : A} → l ∈ ls → x ∷ l ∈ x +∷ ls
  ∈→∈-+∷ (here refl) = here refl
  ∈→∈-+∷ (there l∈ls') = there (∈→∈-+∷ l∈ls')

  ¬[]∈+∷ : {ls : List (List A)}{x : A} → ¬ [] ∈ x +∷ ls
  ¬[]∈+∷ {[]} (here ())
  ¬[]∈+∷ {[]} (there ())
  ¬[]∈+∷ {l ∷ ls} (there p) = ¬[]∈+∷ p

  +∷head∈all : {ls : List (List A)}{y : A} → All (y ∈_) (y +∷ ls)
  +∷head∈all {[]} = here refl All.∷ All.[]
  +∷head∈all {l ∷ ls} = here refl All.∷ +∷head∈all


--------------------------------------------------
------- properties of insert_everywhereIn_ -------
--------------------------------------------------
module _ {a} {A : Set a} where
  ∈-insertIn : {xs : List A}{x : A} → x ∷ xs ∈ insert x everywhereIn xs
  ∈-insertIn {[]} = here refl
  ∈-insertIn {_ ∷ _} = here refl

  ¬insertIn[] : {xs : List A}{x : A} → ¬ insert x everywhereIn xs ≡ []
  ¬insertIn[] {[]} insert[] = ¬[]≡x∷xs (sym insert[])
  ¬insertIn[] {_ ∷ _} insert[] = ¬[]≡x∷xs (sym insert[])

  ¬[]∈insertIn : {xs : List A}{x : A} → ¬ [] ∈ insert x everywhereIn xs
  ¬[]∈insertIn {[]} (here px) = ¬[]≡x∷xs px
  ¬[]∈insertIn {y ∷ ys} (there p) = ¬[]∈x∷ls p

  insertIn-head : {xs : List A}{x : A} → head (insert x everywhereIn xs) ≡ just (x ∷ xs)
  insertIn-head {[]} = refl
  insertIn-head {_ ∷ _} = refl

------------------------------------------------------
------- properties of insert_everywhereInAll_ --------
------------------------------------------------------
module _ {a} {A : Set a} where
  ∈-insertInAll : {ls : List (List A)}{l : List A}{x : A} → l ∈ ls → x ∷ l ∈ insert x everywhereInAll ls
  ∈-insertInAll {.(l ∷ xs)}{l}{x} (here {.l} {xs} refl) = ∈++ˡ {ll = insert x everywhereIn l} ∈-insertIn
  ∈-insertInAll {.(l' ∷ _)}{l}{x} (there {l'} l∈ls) = ∈++ʳ {ll = insert x everywhereIn l'} (∈-insertInAll l∈ls)

  ¬[]∈insertInAll : {ls : List (List A)}{x : A} → ¬ [] ∈ insert x everywhereInAll ls
  ¬[]∈insertInAll {[]} = λ ()
  ¬[]∈insertInAll {l ∷ ls} []∈ with (++→⊎ []∈)
  ...| inj₁ v = ¬[]∈insertIn v
  ...| inj₂ v = ¬[]∈insertInAll{ls} v

  insertInAll-head : {ls : List (List A)}{x : A} →
                     head (insert x everywhereInAll ls) ≡ headM (insert x everywhereInM (head ls))
  insertInAll-head {[]} = refl
  insertInAll-head {_ ∷ _} = ++head' ¬insertIn[]

  insert⁻¹ : {ys xs : List A}{x : A} → ys ∈ insert x everywhereIn xs → x ∈ ys
  insert⁻¹ {[]} {xs} {x} p = ⊥-elim (¬[]∈insertIn p)
  insert⁻¹ {_ ∷ .[]} {[]}  (here refl) = here refl
  insert⁻¹ {_ ∷ _} {_ ∷ _} (here refl) = here refl
  insert⁻¹ {_ ∷ _} {_ ∷ _} (there p) = there (insert⁻¹ (proj₂ (∈-puthead→≡×∈ p)))

  insert⁻¹' : {ys : List A}{x : A} → All(x ∈_) (insert x everywhereIn ys)
  insert⁻¹' {[]} = here refl All.∷ All.[]
  insert⁻¹' {y ∷ ys} = (here refl) All.∷ (all∈⊧addhead insert⁻¹')

  insert⁻¹'' : {ys : List A}{x y : A} → x ∈ ys → All(x ∈_) (insert y everywhereIn ys)
  insert⁻¹'' (here refl) = (there (here refl)) All.∷ x∈allmapx∷
  insert⁻¹'' (there x∈l) = (there (there x∈l)) All.∷ (all∈⊧addhead (insert⁻¹'' x∈l))


  insertInAll⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ insert x everywhereInAll ls → x ∈ l
  insertInAll⁻¹ {ls} {[]} p = ⊥-elim (¬[]∈insertInAll{ls = ls} p)
  insertInAll⁻¹ {l ∷ ls} {y ∷ ys} {x} p with (++→⊎{ll = insert x everywhereIn l} p)
  ...| inj₁ v = insert⁻¹{y ∷ ys} v
  ...| inj₂ v = insertInAll⁻¹{ls} v

  insertInAll⁻¹' : {ls : List (List A)}{x : A} → All (x ∈_) (insert x everywhereInAll ls)
  insertInAll⁻¹' {[]} = All.[]
  insertInAll⁻¹' {l ∷ ls} {x} = All++ {ll = insert x everywhereIn l} insert⁻¹' (insertInAll⁻¹'{ls})

  insertInAll⁻¹'' : {ls : List (List A)}{x y : A} → All (x ∈_) ls → All (x ∈_) (insert y everywhereInAll ls)
  insertInAll⁻¹'' {[]}  h = h
  insertInAll⁻¹'' {l ∷ _} {x} {y} (px All.∷ h)= All++{ll = insert y everywhereIn l} (insert⁻¹'' px) (insertInAll⁻¹'' h)

  perms-head⁻¹ : {l l' : List A}{x : A} → l' ∈ permutations (x ∷ l) → x ∈ l'
  perms-head⁻¹ {[]} {.(x ∷ [])} {x} (here refl) = here refl
  perms-head⁻¹ {x₁ ∷ l} {l'} {x} p = insertInAll⁻¹{ls = permutations (x₁ ∷ l)}{l'}{x} p

--------------------------------------
------- properties of sublists -------
--------------------------------------
module _ {a} {A : Set a} where
  ∷[]∈-sublists : {l : List A}{x : A} → x ∈ l → x ∷ [] ∈ sublists l
  ∷[]∈-sublists {x ∷ xs} (here refl) = ⊎→++ {ll = x +∷ sublists xs} (inj₁ ∈-+∷)
  ∷[]∈-sublists (there x∈l) = ⊎→++ (inj₂ (∷[]∈-sublists x∈l))

  sublists⁻¹-head∈ : {ys xs : List A}{x : A} → x ∷ xs ∈ sublists ys → x ∈ ys
  sublists⁻¹-head∈ {y ∷ ys} xxs∈ with (++→⊎{ll = y +∷ sublists ys} xxs∈)
  ...| inj₁ v = here (∈+∷→head≡ v)
  ...| inj₂ v = there (sublists⁻¹-head∈ v)

  sublists-head∈-contra : {ys xs : List A}{x : A} → ¬ x ∈ ys → ¬ x ∷ xs ∈ sublists ys
  sublists-head∈-contra ¬x∈l xxs∈sl = ¬x∈l (sublists⁻¹-head∈ xxs∈sl)

  +∷sublists : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → x ≡ y × (xs ≡ [] ⊎ xs ∈ sublists ys)
  +∷sublists {[]} {ys} {x} {y} p = ∈+∷→head≡ p , inj₁ refl
  +∷sublists {z ∷ xs} {ys} {x} {y} p = ∈+∷→head≡ p , inj₂ (proj₂ (∈+∷→head×tail{ls = sublists ys} p))

  +∷sublists' : {xs ys : List A}{x y : A} → x ∷ xs ∈ (y +∷ sublists ys) → ¬ xs ≡ [] → x ≡ y × xs ∈ sublists ys
  +∷sublists' {xs} {ys} {x} {y} p ¬xs[] = (∈+∷→head≡ p) , proj₂ (∈+∷→head×tail' p ¬xs[])

  sublists-tail∈ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → z ∷ zs ∈ sublists l
  sublists-tail∈ {y ∷ ys} {zs} {x}{z} x∈ with (++→⊎{ll = y +∷ sublists ys} x∈)
  ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈{l = ys} v)
  ...| inj₁ v = ∈++ʳ (∈+∷→tail∈ ξ)
    where
    ξ : x ∷ z ∷ zs ∈ x +∷ sublists ys
    ξ = subst (λ w → x ∷ z ∷ zs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  sublists-tail∈' : {l xs : List A}{x : A} → x ∷ xs ∈ sublists l → ¬ xs ≡ [] → xs ∈ sublists l
  sublists-tail∈' {y ∷ ys} {xs} {x} x∈ ¬xs[] with (++→⊎{ll = y +∷ sublists ys} x∈)
  ...| inj₂ v = ∈++ʳ {ll = y +∷ sublists ys} (sublists-tail∈'{l = ys} v ¬xs[])
  ...| inj₁ v = ∈++ʳ (∈+∷→tail∈' ξ ¬xs[])
    where
    ξ : x ∷ xs ∈ x +∷ sublists ys
    ξ = subst (λ w → x ∷ xs ∈ w +∷ sublists ys) (sym (∈+∷→head≡ v)) v

  sublists⁻¹ : {l zs : List A}{x z : A} → x ∷ z ∷ zs ∈ sublists l → x ∈ l × z ∷ zs ∈ sublists l
  sublists⁻¹ {l} xxs∈sl = sublists⁻¹-head∈ xxs∈sl , (sublists-tail∈{l}) xxs∈sl


--------------------------------------------------------------
------- properties of permutations and allPermutations -------
--------------------------------------------------------------

module _ {a}{A : Set a} where

  -- x ∷ xs is a permutation of itself --
  ∈-permutations : {x : A} {xs : List A} → x ∷ xs ∈ permutations (x ∷ xs)
  ∈-permutations {x} {[]} = here refl
  ∈-permutations {x} {y ∷ ys} = ∈-insertInAll ξ
    where
    ξ : y ∷ ys ∈ (permutations (y ∷ ys))
    ξ = ∈-permutations

  ∈-perm+head : {l : List A}{xs : List A}{x : A} → xs ∈ permutations l → x ∷ xs ∈ permutations (x ∷ l)
  ∈-perm+head {y ∷ ys} {xs} {x} xs∈perml = ∈-insertInAll xs∈perml

  toAllPerm : {l : List A}{y : A} → y ∈ l → All (y ∈_) (permutations l)
  toAllPerm {.(_ ∷ [])} (here {xs = []} refl) = here refl All.∷ All.[]
  toAllPerm {.(_ ∷ x ∷ xs)} (here {xs = x ∷ xs} refl) = insertInAll⁻¹'{ls = permutations(x ∷ xs)}
  toAllPerm {.(_ ∷ x ∷ xs)} (there {xs = x ∷ xs} p) = insertInAll⁻¹'' (toAllPerm p)

  -- if x ∷ xs ∈ ls : List (List A), then x ∷ xs ∈ allPermutations ls --
  ∈-allPermutations : {ls : List (List A)}{xs : List A}{x : A} → x ∷ xs ∈ ls → x ∷ xs ∈ allPermutations ls
  ∈-allPermutations {.(_ ∷ _) ∷ ls}{xs}{x} (here refl) = ∈++ˡ {ll = permutations (x ∷ xs)} ∈-permutations
  ∈-allPermutations {l ∷ ls} {xs}{x} (there xxs∈ls) = ∈++ʳ {ll = permutations l} (∈-allPermutations xxs∈ls)

  allPerm-addhead : {ls : List (List A)}{xs : List A}{x : A} → xs ∈ allPermutations ls → x ∷ xs ∈ allPermutations (x +∷ ls)
  allPerm-addhead {l ∷ ls} {xs} {x} xs∈ with (++→⊎{ll = (permutations l)} xs∈)
  ...| inj₁ xs∈perml = ∈++ˡ  (∈-perm+head{l} xs∈perml)
  ...| inj₂ xs∈allPermls = ∈++ʳ {ll = permutations (x ∷ l)} (allPerm-addhead {ls} xs∈allPermls)

  ¬[]∈permutations : {l : List A} → ¬ [] ∈ permutations l
  ¬[]∈permutations {_ ∷ []} (here px) = ¬[]≡x∷xs px
  ¬[]∈permutations {_ ∷ []} (there ())
  ¬[]∈permutations {x ∷ y ∷ l} []∈ = ¬[]∈insertInAll{ls = permutations (y ∷ l)}{x = x} []∈

  ¬[]∈allPermutations : {ls : List (List A)} → ¬ [] ∈ allPermutations ls
  ¬[]∈allPermutations {[]} = λ ()
  ¬[]∈allPermutations {l ∷ ls} []∈
    with (++→⊎{ll = permutations l} []∈)
  ...| inj₁ v = ¬[]∈permutations{l} v
  ...| inj₂ v = ¬[]∈allPermutations{ls} v

  allPerm++ˡ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations ll → xs ∈ allPermutations (ll ++ lr)
  allPerm++ˡ {ls ∷ ls₁} {ls'} xs∈allPerm with (++→⊎{ll = permutations ls} xs∈allPerm)
  ...| inj₁ v = ⊎→++ (inj₁ v)
  ...| inj₂ v = ⊎→++ (inj₂ (allPerm++ˡ{ll = ls₁} v))

  allPerm++ʳ : {ll lr : List (List A)}{xs : List A} → xs ∈ allPermutations lr → xs ∈ allPermutations (ll ++ lr)
  allPerm++ʳ {[]} xs∈allPerm = xs∈allPerm
  allPerm++ʳ {ls ∷ ls₁} xs∈allPerm = ∈++ʳ {ll = permutations ls}(allPerm++ʳ{ll = ls₁} xs∈allPerm)

  allPerm-++→⊎ : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations (ll ++ lr)
                 → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
  allPerm-++→⊎ {[]} = inj₂
  allPerm-++→⊎ {l' ∷ ls}{lr} {l = l} l∈ with ++→⊎{ll = permutations l'}{lr = allPermutations (ls ++ lr)} l∈
  ...| inj₁ v = inj₁ (⊎→++ (inj₁ v))
  ...| inj₂ v with (allPerm-++→⊎{ll = ls} v)
  ...| inj₁ w = inj₁ (∈++ʳ{ll = permutations l'} w)
  ...| inj₂ w = inj₂ w

  allPerm-⊎→++ : {ll lr : List (List A)}{l : List A} → l ∈ allPermutations ll ⊎ l ∈ allPermutations lr
                      → l ∈ allPermutations (ll ++ lr)
  allPerm-⊎→++ {ll} (inj₁ x) = allPerm++ˡ{ll = ll} x
  allPerm-⊎→++ {ll} (inj₂ y) = allPerm++ʳ{ll = ll} y

  distrib-allPerms : {ll lr : List (List A)}{l : List A}
    → l ∈ allPermutations (ll ++ lr) ⇔ l ∈ (allPermutations ll) ++ (allPermutations lr)
  distrib-allPerms {[]} = mk⇔ id id
  distrib-allPerms {xs ∷ xss} {ys} {l} = mk⇔ i ii
    where -- TODO: clean up this proof
    open Equivalence
    i : l ∈ permutations xs ++ allPermutations (xss ++ ys)
        → l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
    i l∈
      with (++→⊎ l∈)
    ...| inj₁ v = ⊎→++ (inj₁ (⊎→++ (inj₁ v)))
    ...| inj₂ v
      with (++→⊎ (to (distrib-allPerms{ll = xss}) v))
    ...| inj₁ w = ⊎→++{ll = permutations xs ++ allPermutations xss} (inj₁ (⊎→++ (inj₂ w)))
    ...| inj₂ w = ⊎→++{ll = permutations xs ++ allPermutations xss} (inj₂ w)

    ii : l ∈ (permutations xs ++ allPermutations xss) ++ allPermutations ys
         → l ∈ permutations xs ++ allPermutations (xss ++ ys)
    ii l∈
      with (++→⊎{ll = permutations xs ++ allPermutations xss} l∈)
    ...| inj₂ v = ∈++ʳ (allPerm++ʳ{ll = xss} v)
    ...| inj₁ v
      with (++→⊎ v)
    ...| inj₁ w = ⊎→++ (inj₁ w)
    ...| inj₂ w = ⊎→++ {ll = permutations xs} (inj₂ (allPerm++ˡ{ll = xss} w))

  allPerms-head⁻¹ : {ls : List (List A)}{l : List A}{x : A} → l ∈ allPermutations(x +∷ ls) → x ∈ l
  allPerms-head⁻¹ {[]} (here refl) = here refl
  allPerms-head⁻¹ {l ∷ ls}{l'}{x} p with (++→⊎{ll = permutations (x ∷ l)} p)
  ...| inj₁ v = perms-head⁻¹{l = l} v
  ...| inj₂ v = allPerms-head⁻¹{ls = ls} v

  headInAll' : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → All (y ∈_ ) (allPermutations ls)
  headInAll' {.[]} {y} All.[] = All.[]
  headInAll' {.(l ∷ ls)} {y} (All._∷_ {l} {ls} px p) = All++ {ll = permutations l} (toAllPerm px) (headInAll' p)

  headInAll : {ls : List (List A)}{y : A} → (∀ l → l ∈ ls → y ∈ l) → (∀ l → l ∈ allPermutations ls → y ∈ l)
  headInAll  {ls}  {y} imph p = all→imp (headInAll' (imp→all imph)) p

  permhead' : {ys : List A}{y : A} → All (y ∈_ ) (allPermutations (y +∷ sublists ys))
  permhead' {ys} {y} = headInAll'{ls = y +∷ sublists ys} +∷head∈all

  permhead : {ys : List A}{y : A} → ∀ l → l ∈ allPermutations(y +∷ sublists ys) → y ∈ l
  permhead {ys} {y} l l∈ = all→imp (permhead'{ys}) l l∈

----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------

module _ {a}{A : Set a} where

  ¬[]∈subpermutations : {l : List A} → ¬ [] ∈ subpermutations l
  ¬[]∈subpermutations {[]} = λ ()
  ¬[]∈subpermutations {x ∷ xs} p = ¬[]∈allPermutations{ls = (x +∷ sublists xs ++ sublists xs)} p

  subperm+head : {l xs : List A}{x : A} → xs ∈ subpermutations l → ¬ xs ≡ [] → xs ∈ subpermutations (x ∷ l)
  subperm+head {l} {xs} {x} p ¬x[] = allPerm++ʳ{ll = x +∷ sublists l} p

  singleton∈subperm : {l : List A}{x : A} → x ∈ l → (x ∷ []) ∈ subpermutations l
  singleton∈subperm {[]} x∈[] = ⊥-elim (¬Any[] x∈[])
  singleton∈subperm {x ∷ ys}{.x} (here refl) = ∈-allPermutations (⊎→++{ll = x +∷ sublists ys} (inj₁ ∈-+∷))
  singleton∈subperm {y ∷ ys}{x} (there x∈y∷ys) =
    from (distrib-allPerms{ll = (y +∷ sublists ys)}) (∈++ʳ (∈-allPermutations (∷[]∈-sublists x∈y∷ys)))
    where open Equivalence


  singleton∈subperm' : {l xs : List A}{x : A} → x ∈ l → xs ≡ [] → (x ∷ xs) ∈ subpermutations l
  singleton∈subperm' {l}{xs}{x} x∈l xs[] =
    subst (λ u → (x ∷ u) ∈ subpermutations l) (sym xs[]) (singleton∈subperm x∈l)


  subperm-head : {ys xs : List A}{y : A} → xs ∈ subpermutations (y ∷ ys) → ¬ y ∈ xs → xs ∈ subpermutations ys
  subperm-head {ys}{xs} xs∈sp ¬y∈xs with (allPerm-++→⊎{ll = _ +∷ sublists ys} xs∈sp)
  ...| inj₁ v = ⊥-elim (¬y∈xs (permhead{ys = ys} xs v))
  ...| inj₂ v = v


module _ {a}{A : Set a} ⦃ _ : DecEq A ⦄ where
  subperm+head+ : {ys xs : List A}{x : A} → xs ∈ subpermutations ys → x ∷ xs ∈ subpermutations (x ∷ ys)
  subperm+head+ {ys} {xs} {x} xs∈sp with (xs ≟ [])
  ...| yes xs[] = goal
    where
    ξ : x ∷ [] ∈ subpermutations (x ∷ ys)
    ξ = singleton∈subperm (here{xs = ys} refl)
    goal : x ∷ xs ∈ subpermutations (x ∷ ys)
    goal = subst (λ u → x ∷ u ∈ subpermutations (x ∷ ys)) (sym xs[]) ξ
  ...| no ¬xs[] = goal
    where
    ξ : xs ∈ subpermutations (x ∷ ys)
    ξ = subperm+head{l = ys}{xs} xs∈sp ¬xs[]
    goal : x ∷ xs ∈ subpermutations (x ∷ ys)
    goal = allPerm++ˡ{ll = x +∷ sublists ys} (allPerm-addhead{ls = sublists ys} xs∈sp)

  subperm+newhead : {ys xs : List A}{x : A} → xs ∈ subpermutations (x ∷ ys) → ¬ x ∈ xs
                  → x ∷ xs ∈ subpermutations (x ∷ ys)
  subperm+newhead {[]} (here refl) ¬x∈xs = ⊥-elim (¬x∈xs (here refl))
  subperm+newhead {y ∷ ys} xs∈sp ¬x∈xs = subperm+head+{y ∷ ys} (subperm-head{ys = y ∷ ys} xs∈sp ¬x∈xs)

  -- subperm+oldhead : {ys xs : List A}{x : A} → xs ∈ subpermutations ys → x ∈ ys → ¬ x ∈ xs
  --                   → x ∷ xs ∈ subpermutations ys
  -- subperm+oldhead {.(_ ∷ ys)} xs∈sp (here {xs = ys} refl) ¬x∈xs = subperm+newhead {ys = ys} xs∈sp ¬x∈xs
  -- subperm+oldhead {.(y ∷ ys)} {[]} []∈sp (there {y} {ys} x∈ys) ¬x∈xs = ⊥-elim (¬[]∈subpermutations{l = y ∷ ys} []∈sp)
  -- subperm+oldhead {.(y ∷ z ∷ xs₁)} {x ∷ xs} {z} xs∈sp (there {y} {.(z ∷ xs₁)} (here {.z} {xs₁} refl)) ¬x∈xs = {!!}
  -- subperm+oldhead {.(y ∷ _ ∷ _)} {x ∷ xs} xs∈sp (there {y} {.(_ ∷ _)} (there x∈ys)) ¬x∈xs = {!!}

module _ {a}{A : Set a} where
  -- drophead-head : {ys xs : List A} {x y z : A} → x ∷ xs ∈ subpermutations (x ∷ ys) → ¬ x ∈ xs → xs ∈ subpermutations ys
  -- drophead-head = {!!}
  -- drophead : {ys xs : List A} {x y z : A} → x ∷ z ∷ xs ∈ subpermutations (y ∷ ys) → z ∷ xs ∈ subpermutations (y ∷ ys)
  -- drophead {[]}  (here ())
  -- drophead {[]}  (there ())
  -- drophead {x₁ ∷ ys} {xs} {x} {y} {z} xzxs∈sp = {!!}

  -- drophead' : {ys xs : List A} {x z : A} → z ∷ x ∷ xs ∈ subpermutations ys → x ∷ xs ∈ subpermutations ys
  -- drophead' {y ∷ []} (here ())
  -- drophead' {y ∷ []} (there ())
  -- drophead' {w ∷ y ∷ ys} {xs} {x} {z} zxxs∈ = {!!}

  -- head∈subpermGenerators : {ys xs : List A}{x : A} → (x ∷ xs) ∈ subpermutations ys → x ∈ ys
  -- head∈subpermGenerators {y ∷ ys} {xs} {x} xs∈sp with (allPerm-++→⊎{ll = y +∷ sublists ys} xs∈sp)
  -- ...| inj₁ v = {!!}
  -- ...| inj₂ v = there (head∈subpermGenerators v)

  -- tail∈subpermGenerators : {ys xs : List A}{x : A} → (x ∷ xs) ∈ subpermutations ys → All (_∈ ys) xs
  -- tail∈subpermGenerators {_ ∷ _} {[]} xs∈sp = All.[]
  -- tail∈subpermGenerators {_ ∷ ys} {_ ∷ _} xs∈sp = {!!}
    -- (head∈subpermGenerators (drophead{ys} xs∈sp)) All.∷ tail∈subpermGenerators (drophead{ys} xs∈sp)


-------------------------------------------------------------
------------  xs ⊆ ys  ⇔  xs ∈ subpermutations ys  ----------
-------------------------------------------------------------

module _ {a}{A : Set a} ⦃ _ : DecEq A ⦄ where
  ⊆→subperm : {xs ys : List A} → Unique xs → Unique ys → xs ⊆ ys → ¬ xs ≡ [] → xs ∈ subpermutations ys
  ⊆→subperm {[]} {ys} xsU ysU xs⊆ys ¬xs[] = ⊥-elim (¬xs[] refl)
  ⊆→subperm {x ∷ xs} {[]} xsU ysU (() All.∷ xs⊆ys) ¬xs[]
  ⊆→subperm {x ∷ xs} {.x ∷ ys} xsU ysU (here refl All.∷ xs⊆ys) _ with (xs ≟ [])
  ...| yes xs[] = singleton∈subperm' (here{xs = ys} refl) xs[]
  ...| no ¬xs[] = subperm+newhead {ys = ys} (⊆→subperm (drop⁺ 1 xsU) ysU xs⊆ys ¬xs[]) (all≢x→¬x∈ xsU)
  ⊆→subperm {x ∷ xs} {y ∷ ys} xxsU yysU (there px All.∷ xs⊆ys) _ with (xs ≟ [])
  ...| yes xs[] = singleton∈subperm' (there{xs = ys} px) xs[]
  ...| no ¬xs[] = {!!} -- subperm+oldhead{ys = y ∷ ys} (⊆→subperm (drop⁺ 1 xxsU) yysU xs⊆ys ¬xs[]) (there px) (all≢x→¬x∈ xxsU)

  subperm→⊆ : {xs ys : List A} → Unique xs → Unique ys → xs ∈ subpermutations ys → xs ⊆ ys
  subperm→⊆ {[]} {ys} xsU ysU xs∈sp = ⊥-elim (¬[]∈subpermutations{l = ys} xs∈sp)
  subperm→⊆ {x ∷ xs} {ys} xsU ysU xs∈sp = head∈subpermGenerators xs∈sp All.∷ tail∈subpermGenerators xs∈sp




















-- TESTS --
_ : sublists (1 ∷ []) ≡ (1 ∷ []) ∷ []
_ = refl

_ : sublists (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : {a : Level}{A : Set a} → sublists{a}{A} [] ≡ []
_ = refl

_ : sublists (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ [])
                                ∷ (1 ∷ 2 ∷ []) ∷ (1 ∷ 3 ∷ [])
                                ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ [])
                                ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
_ = refl

_ : 1 ∷ [] ∈ 1 +∷ sublists (2 ∷ 3 ∷ [])
_ = there (there (there (here refl)))

_ : properSublists (1 ∷ []) ≡ []
_ = refl

_ : properSublists (1 ∷ 2 ∷ []) ≡ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : permutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                    ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                    ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ []) ∷ []
_ = refl

_ : allPermutations ((1 ∷ 2 ∷ []) ∷ (5 ∷ 6 ∷ []) ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
                                                         ∷ (5 ∷ 6 ∷ []) ∷ (6 ∷ 5 ∷ []) ∷ []
_ = refl

_ : allPermutations ((1 ∷ 2 ∷ 3 ∷ []) ∷ (4 ∷ 5 ∷ []) ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                                             ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                                             ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                                             ∷ (4 ∷ 5 ∷ []) ∷ (5 ∷ 4 ∷ []) ∷ []
_ = refl

_ : allPermutations (sublists (1 ∷ 2 ∷ [])) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : allSublists (permutations (1 ∷ 2 ∷ [])) ≡ (1 ∷ 2 ∷ []) ∷
                                                (1 ∷ []) ∷ (2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (2 ∷ []) ∷ (1 ∷ []) ∷ []
_ = refl

_ : subpermutations{A = ℕ} [] ≡ []
_ = refl

_ : subpermutations (1 ∷ []) ≡ (1 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 1 ∷ []) ≡ (1 ∷ 1 ∷ []) ∷ (1 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (1 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ []) ≡ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ []) ∷ (1 ∷ []) ∷ (2 ∷ []) ∷ []
_ = refl

_ : subpermutations (1 ∷ 2 ∷ 3 ∷ []) ≡ (1 ∷ 2 ∷ 3 ∷ []) ∷ (2 ∷ 1 ∷ 3 ∷ [])
                                        ∷ (2 ∷ 3 ∷ 1 ∷ []) ∷ (1 ∷ 3 ∷ 2 ∷ [])
                                        ∷ (3 ∷ 1 ∷ 2 ∷ []) ∷ (3 ∷ 2 ∷ 1 ∷ [])
                                        ∷ (1 ∷ 2 ∷ []) ∷ (2 ∷ 1 ∷ [])
                                        ∷ (1 ∷ 3 ∷ []) ∷ (3 ∷ 1 ∷ [])
                                        ∷ (1 ∷ []) ∷ (2 ∷ 3 ∷ []) ∷ (3 ∷ 2 ∷ [])
                                        ∷ (2 ∷ []) ∷ (3 ∷ []) ∷ []
_ = refl
