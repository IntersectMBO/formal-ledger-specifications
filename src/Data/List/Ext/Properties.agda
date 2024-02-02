{-# OPTIONS --safe #-}

open import Prelude hiding (lookup; map)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using (List; [_]; []; _++_; head; tail; length; map)
open import Data.List.Ext
open import Data.List.Properties using (++-identityʳ; ++-assoc; concat-++; map-++)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
  using (∈-deduplicate⁻; ∈-deduplicate⁺; ∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ; ∈-map⁺)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_; ↭-sym)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (¬x∷xs↭[])
open import Data.List.Relation.Binary.Subset.Propositional using (_⊆_)
open import Data.List.Relation.Binary.Subset.Propositional.Properties as P using (xs⊆ys++xs; xs⊆xs++ys) -- hiding (++⁺)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.All using (all?; All; lookup) renaming (tail to Alltail)
open import Data.List.Relation.Unary.All.Properties using () renaming (++⁺ to All++intro)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[]; map⁺; map⁻; concat⁺; concat⁻)
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

--------------------------------------------------
----- properties of concat and concatMap ---------
--------------------------------------------------
module _ {a} {A : Set a}  where

  concatMap⁺ : {ys xs : List A}{f : A → List A} → xs ⊆ ys → concatMap f xs ⊆ concatMap f ys
  concatMap⁺ = P.concat⁺ ∘ (P.map⁺ _)

  ⊆-concat⁺ : {ls : List (List A)}{xs : List A} → xs ∈ ls → xs ⊆ concat ls
  ⊆-concat⁺ = λ where
    (here refl) → ∈-++⁺ˡ
    (there xs∈) → ∈-++⁺ʳ _ ∘ ⊆-concat⁺ xs∈

  module _ {b} {B : Set b} (f : A → List B) where

    concatMap-++ : (xs ys : List A) → concatMap f (xs ++ ys) ≡ concatMap f xs ++ concatMap f ys
    concatMap-++ xs ys = begin
      concatMap f (xs ++ ys)           ≡⟨⟩
      concat (map f (xs ++ ys))        ≡⟨ cong concat $ map-++ f xs ys ⟩
      concat (map f xs ++ map f ys)    ≡˘⟨ concat-++ (map f xs) (map f ys) ⟩
      concatMap f xs ++ concatMap f ys ∎ where open ≡-Reasoning

    module _ {p} {P : Pred B p} where

      Any-concatMap : {xs : List A} → Any (Any P ∘ f) xs ⇔ Any P (concatMap f xs)
      Any-concatMap = mk⇔ (concat⁺ ∘ map⁺) (map⁻ ∘ concat⁻ _)

      ∈-concatMap⁺ : {xs : List A}{y : B} → Any ((y ∈_) ∘ f) xs → y ∈ (concatMap f xs)
      ∈-concatMap⁺ = concat⁺ ∘ map⁺

      ∈-concatMap⁻ : {xs : List A}{y : B} → y ∈ concatMap f xs → Any ((y ∈_) ∘ f) xs
      ∈-concatMap⁻ = map⁻ ∘ concat⁻ _

      ∈-concatMap : {xs : List A}{y : B} → Any ((y ∈_) ∘ f) xs ⇔ y ∈ concatMap f xs
      ∈-concatMap  = mk⇔ ∈-concatMap⁺ ∈-concatMap⁻

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

  ∈All-def : {ls : List (List A)}{y : A} → All (y ∈_ ) ls → (∀ l → l ∈ ls → y ∈ l)
  ∈All-def (y∈l All.∷ _) l (here refl) = y∈l
  ∈All-def (_ All.∷ y∈all) l (there l∈ls) = ∈All-def y∈all l l∈ls

-------------------------------
------ properties of map ------
-------------------------------
module _ {a} {A : Set a} where

  ¬[]∈map : {ls : List (List A)} {z : A} → ¬ [] ∈ map(z ∷_) ls
  ¬[]∈map {_ ∷ _} (there p) = ¬[]∈map p

  map∷decomp∈ : {ls : List (List A)} {xs : List A} {y x : A} → x ∷ xs ∈ map (y ∷_) ls → x ≡ y × xs ∈ ls
  map∷decomp∈ {_ ∷ _} (here refl) = refl , (here refl)
  map∷decomp∈ {_ ∷ _} (there xxs∈) = (proj₁ (map∷decomp∈ xxs∈)) , there (proj₂ (map∷decomp∈ xxs∈))

  map∷decomp : {ls : List (List A)} {xs : List A} {y : A} → xs ∈ map (y ∷_) ls → ∃[ ys ](ys ∈ ls × y ∷ ys ≡ xs)
  map∷decomp {l ∷ _} {.(_ ∷ l)} (here refl) = l , ((here refl) , refl)
  map∷decomp {_ ∷ _} {[]} {y} (there xs∈) = ⊥-elim (¬[]∈map xs∈)
  map∷decomp {_ ∷ _} {x ∷ xs} (there xs∈) =
    xs , there (proj₂ (map∷decomp∈ xs∈)) , subst (λ u → u ∷ xs ≡ x ∷ xs) (proj₁ (map∷decomp∈ xs∈)) refl

  module _ {b} {B : Set b} (f : List A → List B) where

    map++distr : (ll : List (List A)) {lr : List (List A)} → map f (ll ++ lr) ⊆ map f ll ++ map f lr
    map++distr [] h = h
    map++distr (_ ∷ _) (here refl) = here refl
    map++distr (_ ∷ lls) (there h) = there (map++distr lls h)

    map++distrˡ : (ll : List (List A)) {lr : List (List A)} → map f ll ⊆ map f (ll ++ lr)
    map++distrˡ (_ ∷ _) (here px) = here px
    map++distrˡ (_ ∷ lls) (there h) = there (map++distrˡ lls h)

    map++distrʳ : (ll : List (List A)) {lr : List (List A)} → map f lr ⊆ map f (ll ++ lr)
    map++distrʳ [] h = h
    map++distrʳ (_ ∷ lls) h = there (map++distrʳ lls h)

-----------------------------------------------
-------- Properties of list inclusion ---------
-----------------------------------------------
module _ {a}{A : Set a} where
  ⊆y∷∧y∉→⊆ys : {ys xs : List A}{y : A} → xs ⊆ y ∷ ys → ¬ y ∈ xs → xs ⊆ ys
  ⊆y∷∧y∉→⊆ys {ys} {xs} {y} xsyys y∉xs {x} x∈xs with (xsyys x∈xs)
  ... | here refl = ⊥-elim (y∉xs x∈xs)
  ... | there p = p

  ¬⊆[] : {xs : List A}{x : A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆[] {xs} {x} p = ¬x∈[] (p (here refl))
    where
    ¬x∈[] : ¬ x ∈ []
    ¬x∈[] = λ ()

  ∈∷∧⊆→∈ : {ys xs : List A}{y x : A} → x ∈ y ∷ xs → xs ⊆ ys → x ∈ y ∷ ys
  ∈∷∧⊆→∈ (here px) xs⊆ = here px
  ∈∷∧⊆→∈ (there x∈) xs⊆ = there (xs⊆ x∈)

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

------------------------------------
------- properties of insert -------
------------------------------------
module _ {a} {A : Set a} where
  x∈Allinsertx : {l : List A}{x : A} → All (x ∈_) ((insert x) l)
  x∈Allinsertx {[]} = here refl All.∷ All.[]
  x∈Allinsertx {_ ∷ _} = (here refl) All.∷ x∈All→∈Allmapy∷ x∈Allinsertx

  x∈All→x∈Allmap∷ : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  x∈All→x∈Allmap∷ {[]} = id
  x∈All→x∈Allmap∷ {_ ∷ _} (px All.∷ p) = there px All.∷ x∈All→x∈Allmap∷ p

  x∈→x∈Allinsert : {ys : List A}{y x : A} → x ∈ ys → All (x ∈_) (insert y ys)
  x∈→x∈Allinsert (here refl) = (there (here refl)) All.∷ x∈Allmapx∷
  x∈→x∈Allinsert (there x∈ys) = (there (there x∈ys)) All.∷ (x∈All→x∈Allmap∷ (x∈→x∈Allinsert x∈ys))

  x∈Allfm∘insertx : {ls : List (List A)}{x : A} → All (x ∈_) (concatMap (insert x) ls)
  x∈Allfm∘insertx {[]} = All.[]
  x∈Allfm∘insertx {_ ∷ ls} = All++intro x∈Allinsertx (x∈Allfm∘insertx{ls})

  l∈fm∘insertx→x∈l : {ls : List (List A)}{x : A} → ∀ l → l ∈ concatMap (insert x) ls → x ∈ l
  l∈fm∘insertx→x∈l {ls} = ∈All-def (x∈Allfm∘insertx{ls})

  x∈All→x∈Allfm∘insert : {ls : List (List A)}{y x : A} → All (x ∈_) ls → All (x ∈_) (concatMap (insert y) ls)
  x∈All→x∈Allfm∘insert {.[]} All.[] = All.[]
  x∈All→x∈Allfm∘insert {.(_ ∷ _)} (px All.∷ p) = All++intro (x∈→x∈Allinsert px) (x∈All→x∈Allfm∘insert p)

  l∈insert→l⊆∷ : {xs : List A}{x : A} → ∀ l → l ∈ (insert x xs) → l ⊆ (x ∷ xs)
  l∈insert→l⊆∷ {[]} {x} .(x ∷ []) (here refl) {z} z∈l = z∈l
  l∈insert→l⊆∷ {x' ∷ xs} {x} .(x ∷ x' ∷ xs) (here refl) {z} z∈l = z∈l
  l∈insert→l⊆∷ {x' ∷ xs} {x} (y ∷ ys) (there l∈) {.y} (here refl) = there (here (proj₁ (map∷decomp∈ l∈)))
  l∈insert→l⊆∷ {x' ∷ xs} {x} (y ∷ ys) (there l∈) {z} (there z∈yys) with (l∈insert→l⊆∷ ys (proj₂ (map∷decomp∈ l∈)) z∈yys)
  ...| here px = here px
  ...| there pxs = there (there pxs)

  l∈map∷→l∈fm∘insert : {ls : List (List A)}{y : A} → ∀ l → l ∈ map (y ∷_) ls → l ∈ concatMap (insert y) ls
  l∈map∷→l∈fm∘insert {[] ∷ ls} {y} l (here px) = here px
  l∈map∷→l∈fm∘insert {(_ ∷ _) ∷ _} l (here px) = here px
  l∈map∷→l∈fm∘insert {[] ∷ _} l (there l∈) = there (l∈map∷→l∈fm∘insert l l∈)
  l∈map∷→l∈fm∘insert {(_ ∷ _) ∷ _} l (there l∈) = xs⊆ys++xs _ _ (l∈map∷→l∈fm∘insert l l∈)

  l∈map³→l∈fm∘insert∘map² : {ls : List (List A)}{y' y z : A} → ∀ l
                            → l ∈ map (y' ∷_) (map (y ∷_) (map (z ∷_) ls))
                            → l ∈ concatMap (insert y) (map (y' ∷_) (map (z ∷_) ls))
  l∈map³→l∈fm∘insert∘map² {_ ∷ _} l (here px) = there (here px)
  l∈map³→l∈fm∘insert∘map² {_ ∷ _} l (there l∈) = xs⊆ys++xs _ _ (l∈map³→l∈fm∘insert∘map² l l∈)

  insert-decomp : {ls : List (List A)}{x : A} → ∀ ys → ys ∈ (concatMap (insert x) ls)
                  → ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
  insert-decomp {xs ∷ _} ys ys∈ with ∈-++⁻ _ ys∈
  ...| inj₁ v = xs , here refl , l∈insert→l⊆∷ ys v
  ...| inj₂ v with insert-decomp ys v
  ...| l , l∈ls , ys⊆ = l , there l∈ls , ys⊆

  insert-decomp∈ : {ls : List (List A)}{y : A} → ∀ xs → xs ∈ (concatMap (insert y) ls)
                   → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
  insert-decomp∈ {zs ∷ _} xs xs∈ with ∈-++⁻ _ xs∈
  ...| inj₁ v = zs , here refl , v
  ...| inj₂ v with insert-decomp∈ xs v
  ...| l , l∈ls , xs∈yl = l , there l∈ls , xs∈yl

  insert-decomp⁻¹ : {ls : List (List A)}{y : A} → ∀ xs → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
                         → xs ∈ (concatMap (insert y) ls)
  insert-decomp⁻¹ {l ∷ ls} {y} xs (.l , here refl , xs∈) = xs⊆xs++ys _ _ xs∈
  insert-decomp⁻¹ {l ∷ ls} {y} xs (l' , there l'∈ , xs∈) = xs⊆ys++xs _ _ (insert-decomp⁻¹ xs (l' , (l'∈ , xs∈)))

  insert++distr : {ll lr : List (List A)}{xs : List A}{x : A} → xs ∈ concatMap (insert x) (ll ++ lr)
                     → xs ∈ concatMap (insert x) ll ++ concatMap (insert x) lr

  insert++distr {[]} {lr} {xs} {x} xs∈xlr = xs∈xlr
  insert++distr {ll ∷ lls} {[]} {xs} {x} xs∈xlr with ∈-++⁻ (insert x ll) xs∈xlr
  ...| inj₁ v = xs⊆xs++ys _ _ (xs⊆xs++ys (insert x ll) _ v)
  ...| inj₂ v = xs⊆xs++ys _ _ (xs⊆ys++xs _ (insert x ll) (subst (λ u → xs ∈ˡ concatMap (insert x) u) (++-identityʳ lls) v))
  insert++distr {ll ∷ lls} {lr ∷ lrs} {xs} {x} xs∈xlr with ∈-++⁻ (insert x ll) xs∈xlr
  ...| inj₁ v = xs⊆xs++ys _ _ (xs⊆xs++ys (insert x ll) _  v)
  ...| inj₂ v with ∈-++⁻ (concatMap(insert x) lls) (insert++distr{lls} v)
  ...| inj₁ w = xs⊆xs++ys (insert x ll ++ concatMap (insert x) lls) _ (xs⊆ys++xs _ (insert x ll) w)
  ...| inj₂ w = xs⊆ys++xs _ (insert x ll ++ concatMap (insert x) lls) w

  insert++ʳ : {ll lr : List (List A)}{xs : List A}{x : A}
              → xs ∈ concatMap (insert x) lr → xs ∈ concatMap (insert x) (ll ++ lr)
  insert++ʳ {[]} {lr} {xs} xs∈xlr = xs∈xlr
  insert++ʳ {ll ∷ lls} {lr} {xs}{x} xs∈xlr = xs⊆ys++xs _ (insert x ll) (insert++ʳ{ll = lls} xs∈xlr)

  insert++distr⁻¹ : {ll lr : List (List A)}{x : A} → ∀ l
                       → l ∈ concatMap (insert x) ll ++ concatMap (insert x) lr → l ∈ concatMap (insert x) (ll ++ lr)
  insert++distr⁻¹ {[]} {lr} l l∈++ = l∈++
  insert++distr⁻¹ {ll ∷ lls} {lr}{x} l l∈++ with ∈-++⁻ (insert x ll ++ concatMap (insert x) lls) l∈++
  ...| inj₂ v = xs⊆ys++xs _ _ (insert++ʳ{ll = lls} v)
  ...| inj₁ v
    with ∈-++⁻ _ (subst (λ u → l ∈ˡ u) (++-assoc (insert x ll) (concatMap (insert x) lls) (concatMap (insert x) lr))
        (xs⊆xs++ys _ _ v))
  ...| inj₁ w = xs⊆xs++ys (insert x ll) _ w
  ...| inj₂ w = xs⊆ys++xs _ _ (insert++distr⁻¹{ll = lls} l w)

  ins∘map∷→map∷²++fm : {ls : List (List A)}{y' x : A} → ∀ l → l ∈ concatMap (insert x) (map (y' ∷_) ls)
                       → l ∈ map(x ∷_) (map(y' ∷_) ls) ++ map(y' ∷_) (concatMap (insert x) ls)
  ins∘map∷→map∷²++fm {_ ∷ _}  l (here px) = here px
  ins∘map∷→map∷²++fm {l' ∷ ls} {y'} {x} l (there l∈) with ∈-++⁻ _ l∈
  ...| inj₁ v = xs⊆ys++xs _ _ (map++distrˡ (y' ∷_) (insert x l') v)


  ...| inj₂ v with ∈-++⁻ _ (ins∘map∷→map∷²++fm {ls} l v)
  ...| inj₁ w = xs⊆xs++ys _ _ (there w)
  ...| inj₂ w = xs⊆ys++xs _ _(map++distrʳ (y' ∷_) (insert x l') w)

  map∷∘insert-comm : {ls : List (List A)} {y' y : A} → ∀ l
                     → l ∈ map(y' ∷_) (concatMap (insert y) ls)
                     → l ∈ concatMap (insert y) (map(y' ∷_) ls)
  map∷∘insert-comm {l' ∷ ls} {y'} {y} l l∈ with ∈-++⁻ (map (y' ∷_) (insert y l'))
                                                      (map++distr (y' ∷_) (insert y l') l∈)
  ...| inj₁ v = there (xs⊆xs++ys _ _ v)
  ...| inj₂ v = xs⊆ys++xs _ _ (map∷∘insert-comm {ls} l v)

  insert-map-swap : {ys : List A}{y' y x : A} → ∀ l
                    → l ∈ concatMap (insert x) (map (y' ∷_) (insert y ys))
                    → l ∈ (y ∷ x ∷ y' ∷ ys) ∷ (x ∷ y ∷ y' ∷ ys) ∷ map (x ∷_) (map (y' ∷_) (insert y ys))
                           ++ concatMap (insert y) (map (y' ∷_) (insert x ys))
  insert-map-swap {[]} _ (here px) = there (there (here px))
  insert-map-swap {[]} _ (there (here px)) = there (there (there (there (there (here px)))))
  insert-map-swap {[]} _ (there (there (here px))) = there (there (there (there (here px))))
  insert-map-swap {_ ∷ _} _ (here px) = there (there (here px))
  insert-map-swap {z ∷ ys} {y'} {y} {x} .(y' ∷ x ∷ y ∷ z ∷ ys) (there (here refl)) =
    xs⊆ys++xs _ ((y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))) (there (there (here refl)))
  insert-map-swap {z ∷ ys} {y'} {y} {x} l (there (there (here px))) =
    xs⊆ys++xs _ ((y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
               ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))) (there (here px))
  insert-map-swap {z ∷ ys} {y'} {y} {x} l (there (there (there l∈)))
    with ∈-++⁻ _ l∈
  ...| inj₁ v = xs⊆ys++xs _ ((y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                            ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys))))
                (xs⊆ys++xs _ _ (l∈map³→l∈fm∘insert∘map² {ls = insert x ys} l v))
  ...| inj₂ v
    with ∈-++⁻ _ (ins∘map∷→map∷²++fm{ls = map (z ∷_)(insert y ys)} l v)
  ...| inj₁ w = xs⊆xs++ys ((y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))) _ (there (there (there w)))
  ...| inj₂ w = xs⊆ys++xs _ ((y ∷ x ∷ y' ∷ z ∷ ys) ∷ (x ∷ y ∷ y' ∷ z ∷ ys) ∷ (x ∷ y' ∷ y ∷ z ∷ ys)
                           ∷ map (x ∷_) (map (y' ∷_) (map (z ∷_) (insert y ys)))) (there goal)
    where
    l' : List A
    l' = proj₁ (map∷decomp w)
    l'∈ : l' ∈ concatMap (insert x) (map (z ∷_) (insert y ys))
    l'∈ = proj₁ (proj₂ (map∷decomp w))
    y'l'l : y' ∷ l' ≡ l
    y'l'l = proj₂ (proj₂ (map∷decomp w))
    goal : l ∈ (y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
               ∷ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))
               ++ concatMap (insert y) (map(y' ∷_) (map(z ∷_) (insert x ys)))

    goal with ∈-++⁻ ((y ∷ x ∷ z ∷ ys) ∷ (x ∷ y ∷ z ∷ ys) ∷ map (x ∷_) (map (z ∷_) (insert y ys)))
                   (insert-map-swap l' l'∈)
    ... | inj₁ (here px) =
      xs⊆xs++ys ((y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
                 ∷ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))) _
           (here (sym (subst (λ r → y' ∷ r ≡ l) px y'l'l)))
    ... | inj₁ (there (here px)) = there (here (sym (subst (λ r → y' ∷ r ≡ l) px y'l'l)))
    ... | inj₁ (there (there u)) =
      xs⊆xs++ys ((y' ∷ y ∷ x ∷ z ∷ ys) ∷ (y' ∷ x ∷ y ∷ z ∷ ys)
                 ∷ map (y' ∷_) (map (x ∷_) (map (_∷_ z) (insert y ys)))) _
                 (there (there (subst (λ r → r ∈ map (y' ∷_) (map (x ∷_) (map (_∷_ z) (insert y ys)))) y'l'l γ)))
      where
      γ :  (y' ∷ l') ∈ map (y' ∷_) (map (x ∷_) (map (z ∷_) (insert y ys)))
      γ = ∈-map⁺ _ u
    ...| inj₂ u =
      xs⊆ys++xs _ _ (map∷∘insert-comm {ls = map (_∷_ z) (insert x ys)} l
               (subst (λ r → r ∈ map (y' ∷_) (concatMap (insert y) (map (_∷_ z) (insert x ys))))
                          y'l'l (∈-map⁺ _ u)))

  insert²-swap : {ys : List A}{y x : A} → ∀ l → l ∈ concatMap (insert x) (insert y ys)
                  → l ∈ concatMap (insert y) (insert x ys)
  insert²-swap {[]}  l (here px) = there (here px)
  insert²-swap {[]}  l (there (here px)) = here px
  insert²-swap {_ ∷ _} l (here px) = there (here px)
  insert²-swap {_ ∷ _} l (there (here px)) = here px
  insert²-swap {_ ∷ _} l (there (there l∈)) with ∈-++⁻ _ l∈
  ...| inj₁ v = xs⊆ys++xs _ _ (l∈map∷→l∈fm∘insert l v)
  ...| inj₂ v = insert-map-swap l v

  insert²-swap' : {ls : List (List A)}{y x : A} → ∀ l → l ∈ concatMap (insert x) (concatMap (insert y) ls)
                  → l ∈ concatMap (insert y) (concatMap (insert x) ls)
  insert²-swap' {l' ∷ ls} {y} {x} l l∈xyls with ∈-++⁻ _ (insert++distr {ll = insert y l'} l∈xyls)
  ...| inj₁ v = insert++distr⁻¹{ll = insert x l'} l (xs⊆xs++ys _ _ (insert²-swap{l'} l v))
  ...| inj₂ v = insert++distr⁻¹{ll = insert x l'} l (xs⊆ys++xs _ _ (insert²-swap'{ls} l v))

  ∈→∷∈insert : {ls : List (List A)}{x : A} → ∀ l → l ∈ ls → x ∷ l ∈ concatMap (insert x) ls
  ∈→∷∈insert {[] ∷ _} .[] (here refl) = here refl
  ∈→∷∈insert {(y ∷ _) ∷ _} .(y ∷ _) (here refl) = here refl
  ∈→∷∈insert {_ ∷ _} l (there l∈ls) = xs⊆ys++xs _ _ (∈→∷∈insert l l∈ls)

----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------
module _ {a}{A : Set a} where
  []∈subpermutations : {l : List A} → [] ∈ subpermutations l
  []∈subpermutations {[]} = here refl
  []∈subpermutations {x ∷ xs} = xs⊆ys++xs _ (concatMap (insert x) (subpermutations xs)) ([]∈subpermutations{l = xs})

  Unique→dropSubheadUnique : {xs : List A}{x y : A} → Unique (x ∷ y ∷ xs) →  Unique (x ∷ xs)
  Unique→dropSubheadUnique ((_ All.∷ xxsU) ∷ yxsU) = xxsU ∷ (drop⁺ 1 yxsU)

  Unique→head∉tail : {xs : List A}{x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  Unique→head∉tail ((px All.∷ _) ∷ _) (here refl) = px refl
  Unique→head∉tail xxsU (there p) = Unique→head∉tail (Unique→dropSubheadUnique xxsU) p

  ∈subperm→∈subpermOftail : {ys : List A}{x : A} → ∀ l → l ∈ subpermutations (x ∷ ys) → ¬ x ∈ l
                            → l ∈ subpermutations ys
  ∈subperm→∈subpermOftail {[]} .(_ ∷ []) (here refl) x∉xs = ⊥-elim (x∉xs (here refl))
  ∈subperm→∈subpermOftail {[]} .[] (there (here refl)) x∉xs = here refl
  ∈subperm→∈subpermOftail {y ∷ ys} l l∈sp x∉l with ∈-++⁻ _ l∈sp
  ...| inj₁ v = ⊥-elim (x∉l (l∈fm∘insertx→x∈l{ls = subpermutations (y ∷ ys)} l v ))
  ...| inj₂ v = v

  ∈-insert-cancelˡ : {ls : List (List A)}{xs : List A}{y : A} → ¬ y ∈ xs → xs ∈ concatMap (insert y) ls ++ ls → xs ∈ ls
  ∈-insert-cancelˡ {ls} {xs} y∉xs xs∈yls with ∈-++⁻ _ xs∈yls
  ...| inj₁ v = ⊥-elim (y∉xs (l∈fm∘insertx→x∈l{ls = ls} xs v))
  ...| inj₂ v = v

module _ {a} {A : Set a} where
  ∈-subperm-addhead : {ys xs : List A}{x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ subpermutations ys
                      → (x ∷ xs) ∈ subpermutations ys

  ∈insert→∷∈insert : {ys xs : List A}{y x : A} → x ∈ ys → ¬ x ∈ xs → xs ∈ concatMap (insert y) (subpermutations ys)
                     → (x ∷ xs) ∈ concatMap (insert y) (subpermutations ys)

  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {.y'} (here refl) y'∉xs xs∈yy'spys
    with ∈-++⁻ (concatMap (insert y)(concatMap (insert y') (subpermutations ys)))
              (insert++distr{ll = concatMap (insert y') (subpermutations ys)} xs∈yy'spys)
  ...| inj₁ v = ⊥-elim (y'∉xs (∈All-def (x∈All→x∈Allfm∘insert (x∈Allfm∘insertx{ls = subpermutations ys})) xs v))
  ...| inj₂ v = insert++distr⁻¹ {ll = concatMap (insert y') (subpermutations ys)} (y' ∷ xs)
                  (xs⊆xs++ys (concatMap (insert y) (concatMap (insert y') (subpermutations ys))) _
                  (insert²-swap' {ls = subpermutations ys} (y' ∷ xs) (∈→∷∈insert xs v)))
  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {x} (there x∈ys) x∉xs xs∈yspys
    with ∈-++⁻ _ (insert++distr{ll = concatMap (insert y') (subpermutations ys)} xs∈yspys)
  ...| inj₂ v = insert++distr⁻¹{ll = concatMap (insert y') (subpermutations ys)}
                  (x ∷ xs) (xs⊆ys++xs _ _ (∈insert→∷∈insert x∈ys x∉xs v))
  ...| inj₁ v with (insert-decomp∈ xs v)
  ...| l , l∈ , xs∈ = insert++distr⁻¹ {ll = concatMap (insert y') (subpermutations ys)}
    (x ∷ xs) (xs⊆xs++ys _ _ (insert-decomp⁻¹ (x ∷ xs) ((x ∷ l) , (xl∈ , there (∈-map⁺ _ xs∈)))))
    where
    x∉l : ¬ x ∈ l
    x∉l p = x∉xs (∈All-def (x∈→x∈Allinsert p) xs xs∈)
    xl∈ : x ∷ l ∈ concatMap (insert y') (subpermutations ys)
    xl∈ = ∈insert→∷∈insert x∈ys x∉l l∈

  ∈-subperm-addhead {_ ∷ ys} (here refl) y∉xs xs∈sp =
    xs⊆xs++ys _ _ (∈→∷∈insert _ (∈-insert-cancelˡ{ls = subpermutations ys} y∉xs xs∈sp))
  ∈-subperm-addhead {_ ∷ _} {xs}  (there x∈ys) x∉xs xs∈sp with ∈-++⁻ _ xs∈sp
  ...| inj₁ v = xs⊆xs++ys _ _ (∈insert→∷∈insert x∈ys x∉xs v)
  ...| inj₂ v = xs⊆ys++xs _ _ (∈-subperm-addhead x∈ys x∉xs v)


--------------------------------------------------------------------------
------------  l ⊆ ys  ⋀  l Unique   ⇔   l ∈ subpermutations ys  ----------
--------------------------------------------------------------------------
  -- If l ⊆ ys and l has no repeated elements, then l is a subpermutation of ys.

  uniqueSubset→subperm : {ys : List A} → ∀ l → Unique l → l ⊆ ys → l ∈ subpermutations ys
  uniqueSubset→subperm {[]} [] lU l⊆ = here refl
  uniqueSubset→subperm {[]} (x ∷ l) lU l⊆ = ⊥-elim (¬⊆[] l⊆)
  uniqueSubset→subperm {y ∷ ys} [] lU l⊆ = xs⊆ys++xs _ _ ([]∈subpermutations{l = ys})
  uniqueSubset→subperm {y ∷ ys} (x ∷ xs) lU l⊆ with (l⊆ (here refl))
  ... | here refl = xs⊆xs++ys _ _ (∈→∷∈insert xs (uniqueSubset→subperm{ys} xs (drop⁺ 1 lU) xs⊆ys))
    where
    xs⊆ys : xs ⊆ ys
    xs⊆ys = ⊆y∷∧y∉→⊆ys (l⊆ ∘ there) (Unique→head∉tail lU)
  ...| there p with ∈-++⁻ _ (uniqueSubset→subperm{y ∷ ys} xs ((drop⁺ 1 lU)) (l⊆ ∘ there))
  ...| inj₁ v = xs⊆xs++ys _ _ (∈insert→∷∈insert p (Unique→head∉tail lU) v)
  ...| inj₂ v = xs⊆ys++xs _ _ (∈-subperm-addhead p (Unique→head∉tail lU) v)

  -- If l is a subpermutation of ys, then l ⊆ ys.
  subperm→subset : {ys : List A} → ∀ l → l ∈ subpermutations ys → l ⊆ ys
  subperm→subset {[]} .[] (here refl) {x} ()
  subperm→subset {y ∷ ys} l l∈ {x} x∈l with ∈-++⁻ (concatMap (insert y) (subpermutations ys)) l∈
  ...| inj₂ v = there ((subperm→subset l v) x∈l)
  ...| inj₁ v with insert-decomp{ls = subpermutations ys} l v
  ...| l' , l'∈sp ,  l⊆yl' = ∈∷∧⊆→∈ (l⊆yl' x∈l) (subperm→subset l' l'∈sp)

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
