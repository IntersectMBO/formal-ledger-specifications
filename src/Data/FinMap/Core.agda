{-# OPTIONS --safe #-}

import Data.List.Relation.Unary.All as A

open import Data.Bool hiding (_≟_)
open import Data.List
open import Data.List.Relation.Unary.All.Properties
open import Data.List.Relation.Unary.AllPairs hiding (map) renaming (_∷_ to _::_ ; head to headPair)
open import Data.Product using (_×_; _,_; proj₁; proj₂)
open import Data.Product.Properties
open import FiniteSubset hiding (_∪_; _∩_; fromList)
open import Function
open import Interface.DecEq
open import Relation.Binary.Definitions
open import Relation.Nullary
open import Utilities.ListMonad renaming (return to return')
open import Utilities.ListProperties
open import Utilities.Logic hiding ([_]; DecEq)

module Data.FinMap.Core where

data FiniteMap (K : Set)(V : Set)(eq : DecEq K)(eq' : DecEq V) : Set where
  fs-nojunk : (els : List (K × V)) → {nd :  ∥ nodupDec (_≟_ {{eq}}) (Data.List.map proj₁ els) ∥}
            → FiniteMap K V eq eq'


remDupᵐ  : {K V : Set} → DecIn K → List (K × V) → List (K × V)
remDupᵐ ∈? xs = foldr (λ e res → if isYes (∈? (proj₁ e) (map proj₁ res))
                                 then res else e ∷ res) [] xs

remDupCorrectᵐ : {K V : Set} → (∈?M : DecIn K) → (xs : List (K × V)) → NoDup (map proj₁ (remDupᵐ ∈?M xs))
remDupCorrectᵐ ∈?M (x ∷ xs) x₁ x₂ with ∈?M (proj₁ x) (map proj₁ (remDupᵐ ∈?M xs))
... | yes p = remDupCorrectᵐ ∈?M xs x₁ x₂
remDupCorrectᵐ ∈?M (x ∷ xs) x₁ (here refl) | no ¬p = [] , (_ , (refl , (λ ()) , ¬p))
remDupCorrectᵐ ∈?M (x ∷ xs) x₁ (there x₂) | no ¬p with remDupCorrectᵐ ∈?M xs x₁ x₂  | in2eq ∈?M x₁ (proj₁ x)
... | o1 , o2 , o3 , o4 , o5 | yes refl rewrite o3 = ⊥-elim (¬p (++⁺ʳ o1 (here refl)))
remDupCorrectᵐ {K} ∈? (x ∷ xs) x₁ (there x₂)
  | no ¬p₁
  | o1 , o2 , o3 , o4 , o5
  | no ¬p
  = ((proj₁ x) ∷ o1) , (o2 , cong (_∷_ (proj₁ x)) o3 , h (proj₁ x) x₁ ¬p o4 , o5)
  where
   h : (x x₁ : K) → ¬ x₁ ≡ x → ¬ x₁ ∈ o1  → ¬ x₁ ∈ (x ∷ o1)
   h x1 .x1 pr1 pr2 (here refl) = pr1 refl
   h x1 x₃  pr1 pr2 (there pr) = pr2 pr

remDupCompleteᵐ : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs : List (K × V)) → x ∈ (remDupᵐ ∈? xs) → x ∈ xs
remDupCompleteᵐ ∈? x (x₁ ∷ xs) xin with ∈? (proj₁ x₁) (map proj₁ (remDupᵐ ∈? xs))
... | yes p = there (remDupCompleteᵐ ∈? x xs xin)
remDupCompleteᵐ ∈? x (x₁ ∷ xs) (here refl) | no ¬p = here refl
remDupCompleteᵐ ∈? x (x₁ ∷ xs) (there xin) | no ¬p = there (remDupCompleteᵐ ∈? x xs xin)

remDupSoundᵐ : {K V : Set} → (∈? : DecIn K) → (x : K × V) → (xs : List (K × V)) → x ∈ xs → (proj₁ x) ∈ map proj₁ (remDupᵐ ∈? xs)
remDupSoundᵐ ∈? x (.x ∷ xs) (here refl) with ∈? (proj₁ x) (map proj₁ (remDupᵐ ∈? xs))
... | no ¬p = here refl
... | yes p = p
remDupSoundᵐ ∈? x (x₁ ∷ xs) (there xin) with remDupSoundᵐ ∈? x xs xin
... | o with ∈? (proj₁ x₁) (map proj₁ (remDupᵐ ∈? xs))
... | no ¬p = there o
... | yes p = o

remDupᵐ⁻ : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs : List (K × V)) → proj₁ x ∈ map proj₁ (remDupᵐ ∈? xs) → proj₁ x ∈ (map proj₁ xs)
remDupᵐ⁻ ∈? x (x₁ ∷ xs) xin with ∈? (proj₁ x₁) (map proj₁ (remDupᵐ ∈? xs))
... | yes p = there (remDupᵐ⁻ ∈? x xs xin)
remDupᵐ⁻ ∈? x (x₁ ∷ xs) (here refl) | no ¬p = here refl
remDupᵐ⁻ ∈? x (x₁ ∷ xs) (there xin) | no ¬p = there (remDupᵐ⁻ ∈? x xs xin)

remDupᵐ⁺ : {K V : Set} → (∈? : DecIn K) → (x : K × V)
  → (xs xs' : List (K × V))
  → x .proj₁ ∉ map proj₁ xs'
  → x ∈ remDupᵐ ∈? (xs ++ x ∷ xs')
remDupᵐ⁺ ∈? (k , v) [] xs' h  with ∈? k (map proj₁ (remDupᵐ ∈? xs'))
... | no ¬p = here refl
... | yes p = ⊥-elim (h (remDupᵐ⁻ ∈? (k , v) xs' p))
remDupᵐ⁺ ∈? x ((k , v) ∷ xs) xs' h with ∈? k (map proj₁ (remDupᵐ ∈? (xs ++ x ∷ xs')))
... | no ¬p = there (remDupᵐ⁺ ∈? x xs xs' h)
... | yes p = remDupᵐ⁺ ∈? x xs xs' h

dup∈ʳ : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs ys : List (K × V))
                   → x ∈ xs
                   → NoDupInd (map proj₁ xs)
                   → x ∈ (remDupᵐ ∈? (ys ++ xs))
dup∈ʳ ∈? x (.x ∷ xs) ys (here refl) h = remDupᵐ⁺ ∈? x ys xs (All¬⇒¬Any (headPair h))
dup∈ʳ ∈? x (x₁ ∷ xs) ys (there xin) (h ∷ hs) with dup∈ʳ ∈? x xs (ys ++ x₁ ∷ []) xin hs
... | ans rewrite ++-assoc ys [ x₁ ] xs = ans

dup∈ : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs : List (K × V))
                   → x ∈ xs
                   → NoDupInd (map proj₁ xs)
                   → x ∈ (remDupᵐ ∈? xs)
dup∈ ∈? x xs x₁ x₂ = dup∈ʳ ∈? x xs [] x₁ x₂

∉-join : {K : Set} → {xs₁ xs₂ : List K} → {x : K}
 → (x ∉ xs₁) × (x ∉ xs₂)
 →  x ∉ (xs₁ ++ xs₂)
∉-join x = All¬⇒¬Any (++⁺ (¬Any⇒All¬ _ (proj₁ x)) (¬Any⇒All¬ _ (proj₂ x)))

dup∈ˡ' : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs ys zs : List (K × V))
                   → x ∈ ys
                   → proj₁ x ∉ map proj₁ xs
                   → NoDupInd (map proj₁ ys)
                   → x ∈ (remDupᵐ ∈? (zs ++ ys ++ xs))
dup∈ˡ' ∈? x xs (.x ∷ ys) zs (here refl) notin ndy with ∉-join ((All¬⇒¬Any (headPair ndy)) , notin)
... | ans rewrite sym (map-++-commute proj₁ ys xs) = remDupᵐ⁺ ∈? x zs (ys ++ xs) ans
dup∈ˡ' ∈? x xs (y ∷ ys) zs (there xinx) notin (h ∷ hs) with dup∈ˡ' ∈? x xs ys (zs ++ y ∷ []) xinx notin hs
... | ans rewrite ++-assoc zs [ y ] (ys ++ xs)  = ans

dup∈ˡ : {K V : Set} → (∈? : DecIn K) → (x : (K × V)) → (xs ys : List (K × V))
                   → x ∈ ys
                   → proj₁ x ∉ map proj₁ xs
                   → NoDupInd (map proj₁ ys)
                   → x ∈ (remDupᵐ ∈? (ys ++ xs))
dup∈ˡ ∈? x xs ys x₁ x₂ x₃ = dup∈ˡ' ∈? x xs ys [] x₁ x₂ x₃

eq2inᵐ : {K : Set} → (eq : DecEq K) → DecIn K
eq2inᵐ eq = eq2in (_≟_ {{eq}})

fromListᵐ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → List (K × V) → FiniteMap K V eq eq'
fromListᵐ {eq = eq} xs = fs-nojunk (remDupᵐ (eq2inᵐ eq) xs)  {∥-∥-prop2 (remDupCorrectᵐ (eq2inᵐ eq) xs) _}

listOfᵐ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → List (K × V)
listOfᵐ (fs-nojunk els) = els

bindᵐ : {K V K₁ V₁ : Set}{eq : DecEq K}{eq' : DecEq V}{eq₁ : DecEq K₁}{eq₁' : DecEq V₁}
          → FiniteMap K V eq eq'
          → (K × V → FiniteMap K₁ V₁ eq₁ eq₁')
          → FiniteMap K₁ V₁ eq₁ eq₁'
bindᵐ f c = fromListᵐ $ ((listOfᵐ f) >>= λ x → listOfᵐ $ c x)

returnᵐ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → K × V → FiniteMap K V eq eq'
returnᵐ x = fs-nojunk ((x ∷ [])) {_}

syntax bindᵐ A (λ x → t) = for x ∈ A , t

if_thenᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V}
  → Bool → FiniteMap K V eq eq'
  → FiniteMap K V eq eq'
if b thenᵐ c = if b then c else fs-nojunk []

infix 5 _∈ᵐ_
_∈ᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (K × V) → FiniteMap K V eq eq' → Set
a ∈ᵐ m = a ∈ (listOfᵐ m)

_∈ᵖᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (K × V) → FiniteMap K V eq eq' → Set
a ∈ᵖᵐ m = proj₁ a ∈ map proj₁ (listOfᵐ m)

_∉ᵖᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (K × V) → FiniteMap K V eq eq' → Set
a ∉ᵖᵐ m = proj₁ a ∉ map proj₁ (listOfᵐ m)

eqDec : {K V : Set} → (eq : DecEq K) → (eq' : DecEq V) → DecidableEquality (K × V) 
eqDec eq eq' = ≡-dec (_≟_ {{eq}}) (_≟_ {{eq'}})

eq2inᵖ : {K V : Set} → (eq : DecEq K) → (eq' : DecEq V) → DecIn (K × V)
eq2inᵖ eq eq' = eq2in (≡-dec (_≟_ {{eq}}) (_≟_ {{eq'}}))

_∈ᵐ?_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (a : (K × V)) → (m : FiniteMap K V eq eq') → Dec (a ∈ᵐ m)
_∈ᵐ?_ {k} {v} {eq} {eq'} a s = eq2inᵖ eq eq' a (listOfᵐ s)

_∈ᵐᵖ?_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (a : (K × V)) → (m : FiniteMap K V eq eq') → Dec ((proj₁ a) ∈ map proj₁ (listOfᵐ m))
_∈ᵐᵖ?_ {k} {v} {eq} {eq'} a s = (eq2in (_≟_ {{eq}})) (proj₁ a) (map proj₁ (listOfᵐ s))

infix 4 _≡ᵐ_
_≡ᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → FiniteMap K V eq eq' → Set
s ≡ᵐ s' = ∀ a → a ∈ᵐ s ⇔ a ∈ᵐ s'

_∪ᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → FiniteMap K V eq eq' → FiniteMap K V eq eq'
_∪ᵐ_ m n = fromListᵐ (listOfᵐ m ++ listOfᵐ n)

getValue : {K V : Set} → (k : K) → (xs : List (K × V)) → k ∈ (map proj₁ xs) → V
getValue k ((.k , v) ∷ xs) (here refl) = v
getValue k ((fst₁ , snd₁) ∷ xs) (there x) = getValue k xs x

getPair : {K V : Set} → (k : K) → (xs : List (K × V)) → (p : k ∈ (map proj₁ xs)) → (k , (getValue k xs p)) ∈ xs
getPair k ((.k , snd₁) ∷ xs) (here refl) = here refl
getPair k ((fst₁ , snd₁) ∷ xs) (there p) = there (getPair k xs p)

NoDupProjUnique : {K V : Set} → (k : K) → (v v₁ : V)
                              → (els : List (K × V)) → (k , v) ∈ els
                              → NoDupInd (map proj₁ els)
                              → ¬ v ≡ v₁
                              → (k , v₁) ∉ els
NoDupProjUnique k v .v .((k , v) ∷ _) (here refl) h₁ h₂ (here refl) = ⊥-elim (h₂ refl)
NoDupProjUnique k v v₁ .((k , v) ∷ _) (here refl) h₁ h₂ (there h₃) = ⊥-elim (All¬⇒¬Any (headPair h₁)
                  (∃-after-map (k , v₁) _ proj₁ h₃))
NoDupProjUnique k v v₁ (.(k , v₁) ∷ xs) (there h) h₁ h₂ (here refl) = ⊥-elim (All¬⇒¬Any (headPair h₁)
                                               (∃-after-map (k , v) xs proj₁ h))
NoDupProjUnique k v v₁ (x ∷ xs) (there h) (hx :: hs) h₂ (there h₃) = NoDupProjUnique k v v₁ xs h hs h₂ h₃

NoDupIndCons : {K : Set} → (xs : List K) → (x : K) → (x ∉ xs) → NoDupInd xs → NoDupInd (x ∷ xs)
NoDupIndCons xs x x₁ x₂ = ¬Any⇒All¬ xs x₁ :: x₂

NoDupProj=>NoDup : {K V : Set} → (∈? : DecIn (K × V)) → (xs : List (K × V)) → NoDup (map proj₁ xs) → NoDup xs
NoDupProj=>NoDup ∈? (x ∷ xs) p x₁ x₂ with ∈? x xs
... | yes p₁ with NoDupInd-corr2 (map proj₁ (x ∷ xs)) p
NoDupProj=>NoDup ∈? (x ∷ xs) p x₁ x₂ | yes p₁ | ans = ⊥-elim (All¬⇒¬Any (headPair ans) (∃-after-map x xs proj₁ p₁))
NoDupProj=>NoDup ∈? (x ∷ xs) p x₁ x₂ | no ¬p = NoDupInd-corr (x ∷ xs)
                                    (NoDupIndCons xs x ¬p
                                      (NoDupInd-corr2 xs (NoDupProj=>NoDup ∈? xs (NoDupInd-corr2' _ _ p))))
                                    x₁ x₂

FinMap=>FinSet : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (f : FiniteMap K V eq eq')
                                                          → FiniteSubSet (K × V) (eqDec eq eq') false
FinMap=>FinSet {K} {V} {eq} {eq'} (fs-nojunk els {nd}) = fs-nojunk els {∥-∥-prop2
     (NoDupProj=>NoDup (eq2inᵖ eq eq') els (∥-∥-prop3 _ nd)) _}


FinMap=>Keys : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (f : FiniteMap K V eq eq')
                                                          → FiniteSubSet K (_≟_ {{eq}}) false
FinMap=>Keys {K} {V} {eq} {eq'} (fs-nojunk els {prf}) = fs-nojunk (map proj₁ els) {prf}

∉Ind : {K V : Set}
                     → (x x₁ : (K × V))
                     → (xs : List (K × V))
                     → proj₁ x ∉ map proj₁ (x₁ ∷ xs)
                     → proj₁ x ∉ map proj₁ xs
∉Ind x x₁ xs x₂ x₃ with ¬Any⇒All¬ (map proj₁ (x₁ ∷ xs)) x₂
... | (px A.∷ ans) = All¬⇒¬Any ans x₃


filterPreserves∉ : {K V : Set} → {P : (K × V) → Set}
                     → (x : (K × V))
                     → (xs : List (K × V))
                     → proj₁ x ∉ map proj₁ xs
                     → (P? : (∀ a → Dec (P a)))
                     → (eq : DecidableEquality K)
                     → (proj₁ x ∉ map proj₁ (filter P? xs))
filterPreserves∉ x (x₁ ∷ xs) x∉xs P? eq x₂ with does (P? x₁)
filterPreserves∉ x (x₁ ∷ xs) x∉xs P? eq x₂ | false = filterPreserves∉ x xs (∉Ind x x₁ xs x∉xs) P? eq x₂
... | true with eq (proj₁ x) (proj₁ x₁)
... | yes refl = ⊥-elim (x∉xs (here refl))
filterPreserves∉ (.(proj₁ x₁) , snd₁) (x₁ ∷ xs) x∉xs P? eq (here refl) | true | no ¬p = ⊥-elim (x∉xs (here refl))
filterPreserves∉ x (x₁ ∷ xs) x∉xs P? eq (there x₂) | true | no ¬p = filterPreserves∉ x xs (∉Ind x x₁ xs x∉xs) P? eq x₂


filterPreservesNoDup : {K V : Set} → {P : (K × V) → Set}
                     → (xs : List (K × V))
                     → NoDupInd (map proj₁ xs)
                     → (P? : (∀ a → Dec (P a)))
                     → (eq : DecidableEquality K)
                     → NoDupInd (map proj₁ (filter P? xs))
filterPreservesNoDup [] h P? eq = h
filterPreservesNoDup (x ∷ xs) (h :: hs) P? eq with does (P? x)
... | false = filterPreservesNoDup xs hs P? eq
... | true = NoDupIndCons (map proj₁ (filter P? xs)) (proj₁ x)
                               (filterPreserves∉ x xs (All¬⇒¬Any h) P? eq)
                               (filterPreservesNoDup xs hs P? eq)


filterᵐ : {K V : Set}{eq : DecEq K}{eq' : DecEq V}{P : (K × V) → Set} → (∀ a → Dec (P a)) → FiniteMap K V eq eq' → FiniteMap K V eq eq'
filterᵐ {eq = eq} {eq'} P? (fs-nojunk els {prf}) = fs-nojunk (filter P? els)
         {∥-∥-prop2 (NoDupInd-corr _ (filterPreservesNoDup els (NoDupInd-corr2 _ (∥-∥-prop3 _ prf)) P? (DecEq._≟_ eq))) _}

_∩ᵐ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → FiniteMap K V eq eq' → FiniteMap K V eq eq'
_∩ᵐ_ {eq = eq} {eq'} K (fs-nojunk els) = filterᵐ (λ a → eq2inᵖ eq eq' a els) K

_∩ᵖ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → FiniteMap K V eq eq' → FiniteMap K V eq eq'
_∩ᵖ_ {eq = eq} {eq'} K (fs-nojunk els) = filterᵐ (λ (k , v) → eq2inᵐ eq k (map proj₁ els)) K

_∩ᵖᵏ_ : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → FiniteMap K V eq eq' → FiniteMap K V eq eq' → FiniteSubSet K (_≟_ {{eq}}) false
_∩ᵖᵏ_ {eq = eq} {eq'} K V = FinMap=>Keys $ K ∩ᵖ V

remDup-NoDup : {K V : Set} → (∈? : DecIn K) → (xs : List (K × V))
                   → NoDupInd (map proj₁ xs)
                   → (remDupᵐ ∈? xs) ≡ xs
remDup-NoDup ∈? [] h = refl
remDup-NoDup ∈? (x ∷ xs) (h :: hs) with ∈? (proj₁ x) (map proj₁ (remDupᵐ ∈? xs))
... | yes p = ⊥-elim (All¬⇒¬Any h (remDupᵐ⁻ ∈? x xs p))
... | no ¬p rewrite remDup-NoDup ∈? xs hs = refl


listOf-NoDupInd : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (m : FiniteMap K V eq eq') → NoDupInd (map proj₁ (listOfᵐ m))
listOf-NoDupInd (fs-nojunk els {nd}) = NoDupInd-corr2 _ (∥-∥-prop3 _ nd)

listOf-NoDupInd' : {K V : Set}{eq : DecEq K}{eq' : DecEq V} → (m : FiniteMap K V eq eq') → NoDupInd (listOfᵐ m)
listOf-NoDupInd' {eq = eq} {eq'} (fs-nojunk els {nd}) =
  NoDupInd-corr2 _ (NoDupProj=>NoDup (eq2inᵖ eq eq') els (∥-∥-prop3 _ nd))
