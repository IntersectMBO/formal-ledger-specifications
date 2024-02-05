{-# OPTIONS --safe #-}

module Data.List.Ext.Properties where

open import Prelude hiding (lookup; map)

import Data.Product
import Data.Sum
import Function.Related.Propositional as R
open import Data.List using (List; [_]; []; _++_; head; tail; length; map)
open import Data.List.Ext using (insert; subpermutations)
open import Data.List.Properties using (concat-++; map-++; ++-identityʳ; ++-assoc)
open import Data.List.Membership.Propositional using (_∈_)
open import Data.List.Membership.Propositional.Properties
  using (∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ; ∈-deduplicate⁻; ∈-deduplicate⁺; ∈-map⁺)
open import Data.List.Relation.Binary.BagAndSetEquality using (∼bag⇒↭)
open import Data.List.Relation.Binary.Disjoint.Propositional using (Disjoint)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Subset.Propositional using (_⊆_)
open import Data.List.Relation.Binary.Subset.Propositional.Properties as P
  using (xs⊆ys++xs; xs⊆xs++ys; ⊆-reflexive; ⊆-trans)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.All using (all?; All; lookup) renaming (tail to Alltail)
open import Data.List.Relation.Unary.All.Properties using () renaming (++⁺ to All++intro)
open import Data.List.Relation.Unary.Any using (Any; here; there)
open import Data.List.Relation.Unary.Any.Properties using (¬Any[]; map⁺; map⁻; concat⁺; concat⁻)
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
                 → AllPairs R l → a ∈ l → b ∈ l → a ≡ b ⊎ R a b ⊎ R b a
AllPairs⇒≡∨R∨Rᵒᵖ [] = λ ()
AllPairs⇒≡∨R∨Rᵒᵖ (_ ∷ _) (here refl) (here refl) = inj₁ refl
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ _) (here refl) (there b∈l) = inj₂ (inj₁ (lookup x b∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ _) (there a∈l) (here refl) = inj₂ (inj₂ (lookup x a∈l))
AllPairs⇒≡∨R∨Rᵒᵖ (x ∷ h) (there a∈l) (there b∈l) = AllPairs⇒≡∨R∨Rᵒᵖ h a∈l b∈l

-------------------------------
------ properties of All ------
-------------------------------
module _ {a} {A : Set a} where
  -- TODO: check whether any of these already exist in the Agda std lib
  ∈All→∈Allmap∷ : {ls : List (List A)} {y x : A} → All (x ∈_) ls → All (x ∈_) (map (y ∷_) ls)
  ∈All→∈Allmap∷ {[]} x∈all = x∈all
  ∈All→∈Allmap∷ {_ ∷ _} (px All.∷ x∈all) = (there px) All.∷ (∈All→∈Allmap∷ x∈all)

  ∈Allmap∷ : {ls : List (List A)} {x : A} → All (x ∈_) (map (x ∷_) ls)
  ∈Allmap∷ {[]} = All.[]
  ∈Allmap∷ {_ ∷ _} = here refl All.∷ ∈Allmap∷

  module _ {p} {P : Pred (List A) p} where

    All-def : {ls : List (List A)} → All P ls → (∀ l → l ∈ ls → P l)
    All-def All.[] = λ x ()
    All-def (px All.∷ _) _ (here refl) = px
    All-def (_ All.∷ p) x (there x∈) = All-def p x x∈

-------------------------------
------ properties of map ------
-------------------------------
module _ {a} {A : Set a} where

  ¬[]∈map : {ls : List (List A)} {z : A} → ¬ [] ∈ map(z ∷_) ls
  ¬[]∈map {_ ∷ _} (there p) = ¬[]∈map p

  ∈→∷∈insert : {ls : List (List A)} {x : A} → ∀ l → l ∈ ls → x ∷ l ∈ map (x ∷_) ls
  ∈→∷∈insert {l' ∷ _} .l' (here refl) = here refl
  ∈→∷∈insert {_ ∷ _} l (there l∈) = there (∈→∷∈insert l l∈)

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
module _ {a} {A : Set a} where
  ⊆y∷∧y∉→⊆ys : {ys xs : List A} {y : A} → xs ⊆ y ∷ ys → ¬ y ∈ xs → xs ⊆ ys
  ⊆y∷∧y∉→⊆ys {ys} {xs} {y} xsyys y∉xs {x} x∈xs with (xsyys x∈xs)
  ... | here refl = ⊥-elim (y∉xs x∈xs)
  ... | there p = p

  ¬⊆[] : {xs : List A} {x : A} → ¬ (x ∷ xs) ⊆ []
  ¬⊆[] {xs} {x} p = ¬x∈[] (p (here refl))
    where
    ¬x∈[] : ¬ x ∈ []
    ¬x∈[] = λ ()

  ∈∷∧⊆→∈ : {ys xs : List A} {y x : A} → x ∈ y ∷ xs → xs ⊆ ys → x ∈ y ∷ ys
  ∈∷∧⊆→∈ (here px) _ = here px
  ∈∷∧⊆→∈ (there x∈) xs⊆ = there (xs⊆ x∈)

  ⊆→∷⊆∷ : {ys xs : List A} {x : A} → xs ⊆ ys → x ∷ xs ⊆ x ∷ ys
  ⊆→∷⊆∷ _ (here px) = here px
  ⊆→∷⊆∷ h (there y∈) = there (h y∈)

  ⊆-swap : {xs : List A} {x y : A} → ∀ l → xs ⊆ x ∷ y ∷ l → xs ⊆ y ∷ x ∷ l
  ⊆-swap _ h (here refl) = case (h (here refl)) of λ where
      (here refl) → there (here refl)
      (there (here refl)) → here refl
      (there (there px)) → there (there px)
  ⊆-swap l h (there p) = ⊆-swap l (λ z → h (there z)) p

  All⊆-swap : {ls : List (List A)} {x y : A} → ∀ l → All(_⊆ x ∷ y ∷ l) ls → All(_⊆ y ∷ x ∷ l) ls
  All⊆-swap {[]} _ _ = All.[]
  All⊆-swap {_ ∷ _} l (px All.∷ p) = ⊆-swap l px All.∷ (All⊆-swap l p)

  All⊆→Allmap∷⊆∷ : {ls : List (List A)} {ys : List A} {y : A} → All (_⊆ ys) ls → All (_⊆ y ∷ ys) (map (y ∷_) ls)
  All⊆→Allmap∷⊆∷ {[]} _ = All.[]
  All⊆→Allmap∷⊆∷ {_ ∷ _} (px All.∷ ls∈) = ⊆→∷⊆∷ px All.∷ All⊆→Allmap∷⊆∷ ls∈

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

  ¬∈-dedup[] : {x : A} → ¬ x ∈ (deduplicate≡ [])
  ¬∈-dedup[] p = ¬Any[] (Equivalence.from ∈-dedup p)

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


module _ {a} {A : Set a}  where

  concatMap⁺ : {ys xs : List A} {f : A → List A} → xs ⊆ ys → concatMap f xs ⊆ concatMap f ys
  concatMap⁺ = P.concat⁺ ∘ (P.map⁺ _)

------------------------------------
------- properties of insert -------
------------------------------------
module _ {a} {A : Set a} where
  ∈→∷∈inserts : {ls : List (List A)} {x : A} → ∀ l → l ∈ ls → x ∷ l ∈ concatMap (insert x) ls
  ∈→∷∈inserts {[] ∷ _} .[] (here refl) = here refl
  ∈→∷∈inserts {(y ∷ _) ∷ _} .(y ∷ _) (here refl) = here refl
  ∈→∷∈inserts {_ ∷ _} l (there l∈ls) = xs⊆ys++xs _ _ (∈→∷∈inserts l l∈ls)

  ∈Allinsert : {l : List A} {x : A} → All (x ∈_) ((insert x) l)
  ∈Allinsert {[]} = here refl All.∷ All.[]
  ∈Allinsert {_ ∷ _} = (here refl) All.∷ ∈All→∈Allmap∷ ∈Allinsert

  ∈Allinserts : {ls : List (List A)} {x : A} → All (x ∈_) (concatMap (insert x) ls)
  ∈Allinserts {[]} = All.[]
  ∈Allinserts {_ ∷ ls} = All++intro ∈Allinsert (∈Allinserts{ls})

  ∈→∈Allinsert : {ys : List A} {y x : A} → x ∈ ys → All (x ∈_) (insert y ys)
  ∈→∈Allinsert (here refl) = (there (here refl)) All.∷ ∈Allmap∷
  ∈→∈Allinsert (there x∈ys) = (there (there x∈ys)) All.∷ (∈All→∈Allmap∷ (∈→∈Allinsert x∈ys))

  ∈All→∈Allinserts : {ls : List (List A)} {y x : A} → All (x ∈_) ls → All (x ∈_) (concatMap (insert y) ls)
  ∈All→∈Allinserts {.[]} All.[] = All.[]
  ∈All→∈Allinserts {.(_ ∷ _)} (px All.∷ p) = All++intro (∈→∈Allinsert px) (∈All→∈Allinserts p)

  Allinsert⊆∷ : {xs : List A} {x : A} → All(_⊆ (x ∷ xs)) (insert x xs)
  Allinsert⊆∷ {[]} = id All.∷ All.[]
  Allinsert⊆∷ {_ ∷ xs} = id All.∷ (All⊆-swap xs (All⊆→Allmap∷⊆∷ Allinsert⊆∷))

  insert-decomp : {ls : List (List A)} {x : A} → ∀ ys → ys ∈ (concatMap (insert x) ls)
                  → ∃[ l ] (l ∈ ls × ys ⊆ (x ∷ l))
  insert-decomp {xs ∷ _} ys ys∈ with ∈-++⁻ _ ys∈
  ...| inj₁ v = xs , here refl , All-def Allinsert⊆∷ ys v
  ...| inj₂ v with insert-decomp ys v
  ...| l , l∈ls , ys⊆ = l , there l∈ls , ys⊆

  insert-decomp∈ : {ls : List (List A)} {y : A} → ∀ xs → xs ∈ (concatMap (insert y) ls)
                   → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
  insert-decomp∈ {zs ∷ _} xs xs∈ with ∈-++⁻ _ xs∈
  ...| inj₁ v = zs , here refl , v
  ...| inj₂ v with insert-decomp∈ xs v
  ...| l , l∈ls , xs∈yl = l , there l∈ls , xs∈yl

  insert-decomp≡ : {ys : List A} {y : A} → ∀ xs → xs ∈ insert y ys
                   → ∃[ ll ] ∃[ lr ] (xs ≡ ll ++ [ y ] ++ lr × ys ≡ ll ++ lr)
  insert-decomp≡ {[]} _ (here refl) = [] , [] , <″-offset refl
  insert-decomp≡ {y ∷ ys} _ (here refl) = [] , y ∷ ys , refl , refl
  insert-decomp≡ {_ ∷ _} [] (there h) = ⊥-elim (¬[]∈map h)
  insert-decomp≡ {y' ∷ ys} {y} (z ∷ zs) (there {.(y ∷ y' ∷ ys)} h) =
    case insert-decomp≡ zs (proj₂ (map∷decomp∈ h)) , (proj₁ (map∷decomp∈ h)) of λ where
      ((ll , lr , zs≡llylr , ys≡lllr) , refl) → y' ∷ ll , lr , cong (y' ∷_) zs≡llylr , cong (y' ∷_) ys≡lllr

  insert-decomp≡' : {ls : List (List A)} {y : A} → ∀ xs → xs ∈ (concatMap (insert y) ls)
                    → ∃[ ll ] ∃[ lr ] (xs ≡ ll ++ [ y ] ++ lr × ll ++ lr ∈ ls)
  insert-decomp≡' {ls} xs l∈ = case (insert-decomp∈ xs l∈) of λ where
     (l , l∈ls , xs∈insyl) → case (insert-decomp≡ xs xs∈insyl) of λ where
       (ll , lr , xs≡ , l≡lllr) → ll , lr , xs≡ , subst (λ u → u ∈ ls) l≡lllr l∈ls

  insert-singleton : {y : A} → ∀ l → concatMap (insert y) [ l ] ≡ insert y l
  insert-singleton [] = refl
  insert-singleton {y} (x ∷ l) = ++-identityʳ ((y ∷ x ∷ l) ∷ map (_∷_ x) (insert y l))

  insert-decomp≡⁻¹ : {ll lr : List A} {y : A} → ll ++ [ y ] ++ lr ∈ insert y (ll ++ lr)
  insert-decomp≡⁻¹ {[]} {[]} = here refl
  insert-decomp≡⁻¹ {[]} {_ ∷ _} = here refl
  insert-decomp≡⁻¹ {_ ∷ ll} {[]} {y} = there (∈→∷∈insert (ll ++ y ∷ []) insert-decomp≡⁻¹)
  insert-decomp≡⁻¹ {_ ∷ ll} {v ∷ lr} {y} = there (∈→∷∈insert (ll ++ y ∷ v ∷ lr) insert-decomp≡⁻¹)

  insert⊆concat : {ls : List (List A)} {y : A} → ∀ l → l ∈ ls → insert y l ⊆ concatMap (insert y) ls
  insert⊆concat l l∈ = ⊆-trans (⊆-reflexive (sym (insert-singleton l)))
                               (concatMap⁺ {xs = l ∷ []} λ l'∈ → case l'∈ of λ where (here refl) → l∈)

  insert-decomp∈⁻¹' : {ls : List (List A)} {y : A} → ∀ xs
                      → ∃[ ll ] ∃[ lr ] (xs ≡ ll ++ [ y ] ++ lr × ll ++ lr ∈ ls)
                      → xs ∈ (concatMap (insert y) ls)
  insert-decomp∈⁻¹' {.(ll ++ lr) ∷ ls} {y} .(ll ++ [ y ] ++ lr) (ll , lr , refl , here refl) =
    insert⊆concat (ll ++ lr) (here{xs = ls} refl) insert-decomp≡⁻¹

  insert-decomp∈⁻¹' {_ ∷ ls} {y} .(ll ++ [ y ] ++ lr) (ll , lr , refl , there lllr∈) =
    concatMap⁺{xs = ls} there (insert-decomp∈⁻¹' (ll ++ y ∷ lr) (ll , lr , refl , lllr∈))


  insert-decomp∈⁻¹ : {ls : List (List A)} {y : A} → ∀ xs → ∃[ l ] (l ∈ ls × xs ∈ (insert y l))
                         → xs ∈ (concatMap (insert y) ls)
  insert-decomp∈⁻¹ {l ∷ _} xs (.l , here refl , xs∈) = xs⊆xs++ys _ _ xs∈
  insert-decomp∈⁻¹ {_ ∷ _} xs (l' , there l'∈ , xs∈) = xs⊆ys++xs _ _ (insert-decomp∈⁻¹ xs (l' , l'∈ , xs∈))

  insert++distr : {ll lr : List (List A)} {xs : List A} {x : A} → xs ∈ concatMap (insert x) (ll ++ lr)
                  → xs ∈ concatMap (insert x) ll ++ concatMap (insert x) lr

  insert++distr {[]} xs∈xlr = xs∈xlr
  insert++distr {ll ∷ lls} {[]} {xs} {x} xs∈xlr = case (∈-++⁻ (insert x ll) xs∈xlr) of λ where
    (inj₁ v) → xs⊆xs++ys _ _ (xs⊆xs++ys (insert x ll) _ v)
    (inj₂ v) → xs⊆xs++ys _ _ (xs⊆ys++xs _ (insert x ll)
                              (subst (λ u → xs ∈ concatMap (insert x) u) (++-identityʳ lls) v))
  insert++distr {ll ∷ lls} {lr ∷ lrs} {xs} {x} xs∈xlr = case (∈-++⁻ (insert x ll) xs∈xlr) of λ where
    (inj₁ v) → xs⊆xs++ys _ _ (xs⊆xs++ys (insert x ll) _  v)
    (inj₂ v) → case (∈-++⁻ (concatMap(insert x) lls) (insert++distr{lls} v)) of λ where
               (inj₁ w) → xs⊆xs++ys (insert x ll ++ concatMap (insert x) lls) _ (xs⊆ys++xs _ (insert x ll) w)
               (inj₂ w) → xs⊆ys++xs _ (insert x ll ++ concatMap (insert x) lls) w

  insert++ʳ : {ll lr : List (List A)} {xs : List A} {x : A}
              → xs ∈ concatMap (insert x) lr → xs ∈ concatMap (insert x) (ll ++ lr)
  insert++ʳ {[]} xs∈xlr = xs∈xlr
  insert++ʳ {ll ∷ lls} xs∈xlr = xs⊆ys++xs _ (insert _ ll) (insert++ʳ{ll = lls} xs∈xlr)

  insert++distr⁻¹ : {ll lr : List (List A)} {x : A} → ∀ l
                    → l ∈ concatMap (insert x) ll ++ concatMap (insert x) lr
                    → l ∈ concatMap (insert x) (ll ++ lr)
  insert++distr⁻¹ {[]} l l∈++ = l∈++
  insert++distr⁻¹ {ll ∷ lls} {lr} l l∈++ with ∈-++⁻ (insert _ ll ++ concatMap (insert _) lls) l∈++
  ...| inj₂ v = xs⊆ys++xs _ _ (insert++ʳ{ll = lls} v)
  ...| inj₁ v =
    case (∈-++⁻ _ (subst (λ u → l ∈ u)
                    (++-assoc (insert _ ll) (concatMap (insert _) lls) (concatMap (insert _) lr))
                    (xs⊆xs++ys _ _ v))) of λ where
      (inj₁ w) → xs⊆xs++ys (insert _ ll) _ w
      (inj₂ w) → xs⊆ys++xs _ _ (insert++distr⁻¹{ll = lls} l w)

----------------------------------------------
------- properties of subpermutations --------
----------------------------------------------
module _ {a} {A : Set a} where
  []∈subpermutations : {l : List A} → [] ∈ subpermutations l
  []∈subpermutations {[]} = here refl
  []∈subpermutations {x ∷ xs} = xs⊆ys++xs _ (concatMap (insert x) (subpermutations xs)) ([]∈subpermutations{l = xs})

  Unique→dropSubheadUnique : {xs : List A} {x y : A} → Unique (x ∷ y ∷ xs) →  Unique (x ∷ xs)
  Unique→dropSubheadUnique ((_ All.∷ xxsU) ∷ yxsU) = xxsU ∷ (drop⁺ 1 yxsU)

  Unique→head∉tail : {xs : List A} {x : A} → Unique (x ∷ xs) → ¬ x ∈ xs
  Unique→head∉tail ((px All.∷ _) ∷ _) (here refl) = px refl
  Unique→head∉tail xxsU (there p) = Unique→head∉tail (Unique→dropSubheadUnique xxsU) p

  ∈subperm→∈subpermOftail : {ys : List A} {x : A} → ∀ l → l ∈ subpermutations (x ∷ ys) → ¬ x ∈ l
                            → l ∈ subpermutations ys
  ∈subperm→∈subpermOftail {[]} .(_ ∷ []) (here refl) x∉xs = ⊥-elim (x∉xs (here refl))
  ∈subperm→∈subpermOftail {[]} .[] (there (here refl)) x∉xs = here refl
  ∈subperm→∈subpermOftail {y ∷ ys} l l∈sp x∉l with ∈-++⁻ _ l∈sp
  ...| inj₁ v = ⊥-elim (x∉l (All-def (∈Allinserts{ls = subpermutations (y ∷ ys)}) l v ))
  ...| inj₂ v = v

  ∈-insert-cancelˡ : {ls : List (List A)} {xs : List A} {y : A} → ¬ y ∈ xs → xs ∈ concatMap (insert y) ls ++ ls → xs ∈ ls
  ∈-insert-cancelˡ {ls} y∉xs xs∈yls = case (∈-++⁻ _ xs∈yls) of λ where
    (inj₁ v) → ⊥-elim (y∉xs (All-def (∈Allinserts{ls = ls}) _ v))
    (inj₂ v) → v

module _ {a} {A : Set a} where
  ∈-subperm-addhead : {ys xs : List A} {x : A} → x ∈ ys → ¬ x ∈ xs
                      → xs ∈ subpermutations ys → (x ∷ xs) ∈ subpermutations ys

  ∈insert→∷∈insert : {ys xs : List A} {y x : A} → x ∈ ys → ¬ x ∈ xs
                     → xs ∈ concatMap (insert y) (subpermutations ys)
                     → (x ∷ xs) ∈ concatMap (insert y) (subpermutations ys)

  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {.y'} (here refl) y'∉xs xs∈yy'spys
    with ∈-++⁻ (concatMap (insert y)(concatMap (insert y') (subpermutations ys)))
              (insert++distr{ll = concatMap (insert y') (subpermutations ys)} xs∈yy'spys)
  ...| inj₁ v = ⊥-elim (y'∉xs (All-def (∈All→∈Allinserts (∈Allinserts{ls = subpermutations ys})) xs v))
  ...| inj₂ v = case (insert-decomp≡' {ls = subpermutations ys} xs v) of λ where
    (ll , lr , xs≡ , lllr∈) →
      let
      y'xs∈ = subst (_∈ concatMap (insert y) (concatMap (insert y') (subpermutations ys)))
                    (sym (cong (y' ∷_) xs≡)) (insert-decomp∈⁻¹' (y' ∷ ll ++ [ y ] ++ lr)
                                               ((y' ∷ ll) , lr , refl , ∈→∷∈inserts (ll ++ lr) lllr∈))
      in insert++distr⁻¹ {ll = concatMap (insert y') (subpermutations ys)}
           (y' ∷ xs) (xs⊆xs++ys (concatMap (insert y) (concatMap (insert y') (subpermutations ys))) _ y'xs∈)

  ∈insert→∷∈insert {y' ∷ ys} {xs} {y} {x} (there x∈ys) x∉xs xs∈yspys
    with ∈-++⁻ _ (insert++distr{ll = concatMap (insert y') (subpermutations ys)} xs∈yspys)
  ...| inj₂ v = insert++distr⁻¹{ll = concatMap (insert y') (subpermutations ys)}
                  (x ∷ xs) (xs⊆ys++xs _ _ (∈insert→∷∈insert x∈ys x∉xs v))
  ...| inj₁ v = case (insert-decomp∈ xs v) of λ where
    (l , l∈ , xs∈) →
      let xl∈ = ∈insert→∷∈insert x∈ys (λ p → x∉xs (All-def (∈→∈Allinsert p) xs xs∈)) l∈ in
        insert++distr⁻¹ {ll = concatMap (insert y') (subpermutations ys)}
          (x ∷ xs) (xs⊆xs++ys _ _ (insert-decomp∈⁻¹ (x ∷ xs) ((x ∷ l) , (xl∈ , there (∈-map⁺ _ xs∈)))))

  ∈-subperm-addhead {_ ∷ ys} (here refl) y∉xs xs∈sp =
    xs⊆xs++ys _ _ (∈→∷∈inserts _ (∈-insert-cancelˡ{ls = subpermutations ys} y∉xs xs∈sp))
  ∈-subperm-addhead {_ ∷ _} {xs}  (there x∈ys) x∉xs xs∈sp = case (∈-++⁻ _ xs∈sp) of λ where
    (inj₁ v) → xs⊆xs++ys _ _ (∈insert→∷∈insert x∈ys x∉xs v)
    (inj₂ v) → xs⊆ys++xs _ _ (∈-subperm-addhead x∈ys x∉xs v)


--------------------------------------------------------------------------
------------  l ⊆ ys  ⋀  l Unique   ⇔   l ∈ subpermutations ys  ----------
--------------------------------------------------------------------------
  -- If l ⊆ ys and l has no repeated elements, then l is a subpermutation of ys.
  uniqueSubset→subperm : {ys : List A} → ∀ l → Unique l → l ⊆ ys → l ∈ subpermutations ys
  uniqueSubset→subperm {[]} [] lU l⊆ = here refl
  uniqueSubset→subperm {[]} (x ∷ l) lU l⊆ = ⊥-elim (¬⊆[] l⊆)
  uniqueSubset→subperm {y ∷ ys} [] lU l⊆ = xs⊆ys++xs _ _ ([]∈subpermutations{l = ys})
  uniqueSubset→subperm {y ∷ ys} (x ∷ xs) lU l⊆ = case (l⊆ (here refl)) of λ where
    (here refl) → let xs⊆ys = ⊆y∷∧y∉→⊆ys (l⊆ ∘ there) (Unique→head∉tail lU) in
      xs⊆xs++ys _ _ (∈→∷∈inserts xs (uniqueSubset→subperm{ys} xs (drop⁺ 1 lU) xs⊆ys))
    (there p) → case (∈-++⁻ _ (uniqueSubset→subperm{y ∷ ys} xs ((drop⁺ 1 lU)) (l⊆ ∘ there))) of λ where
      (inj₁ v) → xs⊆xs++ys _ _ (∈insert→∷∈insert p (Unique→head∉tail lU) v)
      (inj₂ v) → xs⊆ys++xs _ _ (∈-subperm-addhead p (Unique→head∉tail lU) v)

  -- If l is a subpermutation of ys, then l ⊆ ys.
  subperm→subset : {ys : List A} → ∀ l → l ∈ subpermutations ys → l ⊆ ys
  subperm→subset {[]} .[] (here refl) {x} ()
  subperm→subset {y ∷ ys} l l∈ x∈l = case (∈-++⁻ (concatMap (insert y) (subpermutations ys)) l∈) of λ where
    (inj₂ v) → there ((subperm→subset l v) x∈l)
    (inj₁ v) → case (insert-decomp{ls = subpermutations ys} l v) of λ where
      (l' , l'∈sp ,  l⊆yl') → ∈∷∧⊆→∈ (l⊆yl' x∈l) (subperm→subset l' l'∈sp)

module _ {a} {p} {A : Set a} {L : List A} {P : Pred (List A) p} where

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
