{-# OPTIONS --safe #-}

open import Data.List using (List; []; head; map; _++_; foldr; _∷_)
open import Data.Maybe hiding (map)
open import Data.Product using (_×_; _,_; proj₁; proj₂; curry; uncurry)
open import Data.Product.Function.NonDependent.Propositional
open import Data.Bool using (false; not)
open import Level
open import Algebra
open import Function hiding (Inverse)
open import Function.Equivalence as Eq using (_⇔_; ⇔-setoid; equivalence)
open import Data.Sum using (_⊎_; fromDec; toDec)
open import Data.Sum.Algebra using (⊎-comm)
open import Data.Sum.Function.Propositional
open import Relation.Nullary
open import Relation.Nullary.Negation
open import Data.Product.Algebra
import Function.Inverse as Inv
open import Data.Empty.Polymorphic
open import Function.Related using (fromRelated; toRelated)
import Relation.Binary.Reasoning.Preorder as P-Reasoning
open import Interface.DecEq
open import FiniteSubset hiding (_∪_; _∩_)
open import Relation.Binary using (IsEquivalence)
open import Relation.Binary.PropositionalEquality
open import Function.Related.Propositional
open import Data.FinSet hiding (∅; map; indexedSum)
open import Function.Properties.Inverse
open import Data.Product.Function.NonDependent.Propositional
open import Utilities.ListProperties using (eq2in)
open import Relation.Nullary.Negation
open import Relation.Binary.PropositionalEquality
open import Data.List.Relation.Unary.AllPairs.Properties
open import Data.List.Relation.Unary.All hiding (map)
open import Utilities.ListProperties renaming (_∈_ to _∈l_) hiding (++⁻)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Data.List.Relation.Binary.Permutation.Propositional
open import Algebra.Properties.CommutativeSemigroup

module Data.FinMap.Properties {K : Set}{V : Set}{{eq : DecEq K}}{{eq' : DecEq V}} where

open import Data.FinMap
open import Data.FinMap.Core
open import Data.FinMap.Properties.Membership {K} {V} {{eq}} {{eq'}}
open import Data.FinMap.Properties.Algebra {K} {V} {{eq}} {{eq'}}
open import Data.FinMap.Properties.Equality {K} {V} {{eq}} {{eq'}}

private
  variable
    a b : K × V
    l : List (K × V)
    s s' : FinSet K {{eq}}
    m m' m''  : FinMap K V {{eq}} {{eq'}}

symHelpʳ : (¬ proj₁ a ∈ s) × (a ∉ᵖᵐ (s ◃ m)) → (¬ proj₁ a ∈ s)
symHelpʳ (fst , snd) x₁ = fst x₁

symHelpˡ : (¬ proj₁ a ∈ s) → (¬ proj₁ a ∈ s) × (a ∉ᵖᵐ (s ◃ m))
symHelpˡ {a} {s} {m} x with (eq2in ((_≟_ {{eq}}))) (proj₁ a) (map proj₁ (listOfᵐ (s ◃ m)))
... | no ¬p = x , ¬p
... | yes p with filter→∈ {m = m} (λ x → proj₁ x ∈? s) _ (getPair (proj₁ a) (listOfᵐ (s ◃ m)) p)
... | fst , snd = contradiction snd x

symHelp : Function._⇔_ (¬ proj₁ a ∈ s) ((¬ proj₁ a ∈ s) × (a ∉ᵖᵐ (s ◃ m)))
symHelp {a} {s} {m} = mk⇔ (symHelpˡ {a} {s} {m}) (symHelpʳ {a} {s} {m})

assocProduct : {A B C : Set} → Function._⇔_ (A × (B × C)) ((A × B) × C)
assocProduct = mk⇔ Data.Product.assocˡ′ Data.Product.assocʳ′

dom-res-ex-∪ : (s ⋪ m) ∪ᵐ (s ◃ m) ≡ᵐ m
dom-res-ex-∪ {s} {m} = ∈-⊎↔∪≡ {m = s ⋪ m} {m' = s ◃ m} {m'' = m} λ a →
              (a ∈ᵐ (s ⋪ m) × (a ∉ᵖᵐ (s ◃ m)) ⊎ a ∈ᵐ (s ◃ m))
                ∼⟨ SK-sym ((fromRelated (toRelated (fromRelated
                   (_×-cong_ (toRelated ((∈filter {m = m} (λ x → ¬? (proj₁ x ∈? s)) a))) Eq.id)) ⊎-cong
                      toRelated (∈filter {m = m} (λ x → proj₁ x ∈? s) a)))) ⟩
              ((a ∈ᵐ m × (¬ proj₁ a ∈ s)) × (a ∉ᵖᵐ (s ◃ m)) ⊎ (a ∈ᵐ m × proj₁ a ∈ s))
                ∼⟨ SK-sym (fromRelated (toRelated (assocProduct {(a ∈ᵐ m)} {(¬ proj₁ a ∈ s)} {(a ∉ᵖᵐ (s ◃ m))}) ⊎-cong Eq.id)) ⟩
              ((a ∈ᵐ m) × (¬ proj₁ a ∈ s) × (a ∉ᵖᵐ (s ◃ m)) ⊎ (a ∈ᵐ m × proj₁ a ∈ s))
                ∼⟨ SK-sym (fromRelated ((_×-cong_ Eq.id (toRelated (symHelp {a} {s} {m})) ) ⊎-cong Eq.id)) ⟩
              ((a ∈ᵐ m × (¬ proj₁ a ∈ s)) ⊎ (a ∈ᵐ m × proj₁ a ∈ s))
                ⤖⟨ SK-sym (↔⇒⤖ (×-distribˡ-⊎ 0ℓ (a ∈ᵐ m) (¬ proj₁ a ∈ s) (proj₁ a ∈ s))) ⟩
              (a ∈ᵐ m × (¬ proj₁ a ∈ s ⊎ proj₁ a ∈ s))
                ⤖⟨ fromRelated (_×-cong_ Inv.id (toRelated (↔⇒⤖ (⊎-comm (¬ proj₁ a ∈ s) (proj₁ a ∈ s))))) ⟩
              (a ∈ᵐ m × (proj₁ a ∈ s ⊎ ¬ proj₁ a ∈ s))
                ∼⟨ fromRelated (_×-cong_ Eq.id (Eq.equivalence toDec fromDec)) ⟩
              (a ∈ᵐ m × Dec (proj₁ a ∈ s))
                ∼⟨ mk⇔ proj₁ (λ h → (h , proj₁ a ∈? s)) ⟩
              (a ∈ᵐ m)
              ∎
              where open EquationalReasoning


dom-res-ex-∩ : ∀ s m → (s ⋪ m) ∩ᵐ (s ◃ m) ≡ᵐ ∅
dom-res-ex-∩ keys m = ∈-×↔∩≡ {m = keys ⋪ m} {m' = keys ◃ m} {m'' = ∅} λ a →
    (a ∈ᵐ keys ⋪ m × a ∈ᵐ keys ◃ m)
    ∼⟨ SK-sym (fromRelated (_×-cong_ (toRelated $ ∈filter {m = m} (λ x → ¬? (proj₁ x ∈? keys)) a)
                                    (toRelated $ ∈filter {m = m} (λ x → proj₁ x ∈? keys) a))) ⟩
    ((a ∈ᵐ m × (¬ proj₁ a ∈ keys)) × (a ∈ᵐ m × proj₁ a ∈ keys))
      ∼⟨ mk⇔ (λ { ((a₁ , a₂) , (a₃ , a₄)) → (a₁ , a₂ , a₄)}) (λ { (a₁ , a₂ , a₃) → ((a₁ , a₂) , a₁ , a₃)}) ⟩
    (a ∈ᵐ m × ¬ proj₁ a ∈ keys × proj₁ a ∈ keys)
      ∼⟨ fromRelated (_×-cong_ Eq.id (Eq.equivalence (uncurry (λ x y → case x y of λ ())) ⊥-elim)) ⟩
    (a ∈ᵐ m × ⊥)
      ↔⟨ ×-zeroʳ 0ℓ (a ∈ᵐ m) ⟩
    ⊥
      ∼⟨ mk⇔ ⊥-elim (λ ()) ⟩
    (a ∈ᵐ ∅) ∎
    where open EquationalReasoning 

dom-res-ex-∩ᵖ : (s ⋪ m) ∩ᵖ (s ◃ m) ≡ᵐ ∅
dom-res-ex-∩ᵖ {keys} m@{fs-nojunk els} a = projEmpty← {(keys ⋪ m) ∩ᵖ (keys ◃ m)}
    (∈-×↔∩≡ᵏ {m =  keys ⋪ m} {m' =  keys ◃ m} {m'' = ∅}
      λ k →
      (k ∈ FinMap=>Keys (keys ⋪ m) × k ∈ FinMap=>Keys (keys ◃ m))
        ∼⟨ SK-sym (fromRelated (_×-cong_
           (toRelated $ equivKey {m} ((λ x → ¬? (proj₁ x ∈? keys))) k)
           (toRelated $ equivKey {m} ((λ x → proj₁ x ∈? keys)) k))) ⟩
      ((k ∈ FinMap=>Keys m × (¬ k ∈ keys)) × (k ∈ FinMap=>Keys m × k ∈ keys))
        ∼⟨ mk⇔ (λ { ((a₁ , a₂) , (a₃ , a₄)) → (a₁ , a₂ , a₄)}) (λ { (a₁ , a₂ , a₃) → ((a₁ , a₂) , a₁ , a₃)}) ⟩
      (k ∈ FinMap=>Keys m × ¬ k ∈ keys × k ∈ keys)
        ∼⟨ fromRelated (_×-cong_ Eq.id (Eq.equivalence (uncurry (λ x y → case x y of λ ())) ⊥-elim)) ⟩
      (k ∈ FinMap=>Keys m × ⊥)
        ↔⟨ ×-zeroʳ 0ℓ (k ∈ FinMap=>Keys m) ⟩
      ⊥
        ∼⟨ mk⇔ ⊥-elim (λ ()) ⟩
      (k ∈ fs-nojunk []) ∎) a
      where open EquationalReasoning

⋪⇒⊆ : (s ⋪ m) ⊆ᵐ m
⋪⇒⊆ {s} {m} a∈s⋪m = proj₁ $ filter→∈ {m = m} (λ x → ¬? (proj₁ x ∈? s)) _ a∈s⋪m

dom-res-∩-empty : ∀ s m → m ∩ᵐ m' ≡ᵐ ∅ → (s ⋪ m) ∩ᵐ m' ≡ᵐ ∅
dom-res-∩-empty {m'} s m h with ∩ᵐ-OrderHomomorphismˡ {m = m'}
... | record { cong = _ ; mono = mono } = ∅-least {m = (s ⋪ m) ∩ᵐ m'} (begin
    ((s ⋪ m) ∩ᵐ m') ∼⟨ mono {s ⋪ m} {m} (⋪⇒⊆ {s} {m})⟩
    (m ∩ᵐ m') ≈⟨ h ⟩
    ∅ ∎)
    where open P-Reasoning (⊆ᵐ-Preorder')

open import Data.FinSet.Properties.Algebra renaming (∅-least to ∅-leastᵏ)

dom-res-∩ᵖᵏ-empty : (m ∩ᵖᵏ m') ≡ᵉ (fs-nojunk [])
                                → ((s ⋪ m) ∩ᵖᵏ m') ≡ᵉ (fs-nojunk [])
dom-res-∩ᵖᵏ-empty {m} {m'} {s} h with ∩ᵖᵏ-OrderHomomorphismˡ {m'}
... | record { cong = cong ; mono = mono } = ∅-leastᵏ {s = ((s ⋪ m) ∩ᵖᵏ m')} (begin
    ((s ⋪ m) ∩ᵖᵏ m') ∼⟨ mono {s ⋪ m} {m} (⋪⇒⊆ {s} {m}) ⟩
    (m ∩ᵖᵏ m') ≈⟨ h ⟩
    fs-nojunk [] ∎)
    where open P-Reasoning (⊆-Preorder')

dom-res-∩ᵖ-empty : m ∩ᵖ m' ≡ᵐ ∅ → (s ⋪ m) ∩ᵖ m' ≡ᵐ ∅
dom-res-∩ᵖ-empty {m} {m'} {s} h a = projEmpty← {(s ⋪ m) ∩ᵖ m'}
                                    (dom-res-∩ᵖᵏ-empty {m} {m'} {s}
                                        (projEmpty→ {m ∩ᵖ m'} h)) a

noDupCommute : NoDupInd (map proj₁ (listOfᵐ m) ++ map proj₁ (listOfᵐ m')) ≡ NoDupInd (map proj₁ (listOfᵐ m ++ listOfᵐ m'))
noDupCommute {fs-nojunk els} {fs-nojunk els'} rewrite sym (map-++-commute proj₁ els els') = refl

noDupCommute' : (map proj₁ (listOfᵐ m) ++ map proj₁ (listOfᵐ m')) ≡ (map proj₁ (listOfᵐ m ++ listOfᵐ m'))
noDupCommute' {fs-nojunk els} {fs-nojunk els'} rewrite sym (map-++-commute proj₁ els els') = refl

open import Data.List.Properties

listOf-∪-++-noDup : m ∩ᵖ m' ≡ᵐ ∅ → NoDupInd ((map proj₁ (listOfᵐ m)) ++ (map proj₁ (listOfᵐ m')))
listOf-∪-++-noDup {m} {m'} h = ++⁺ (listOf-NoDupInd m) (listOf-NoDupInd m')
                  (tabulate (λ x∈s → ¬Any⇒All¬ (map proj₁ (listOfᵐ m')) (helper x∈s)))
  where
    helper : ∀ {x} → x ∈l map proj₁ (listOfᵐ m) → ¬ x ∈l map proj₁ (listOfᵐ m')
    helper {x} x∈s x∈m' =
      ∈-∅ᵖ {x , (getValue x _ x∈m')}
        (≡ᵖᵐ-∈ { m ∩ᵖ m'} {∅} {x , ((getValue x _ x∈m'))} h (∈×⇒∈∩ᵖ {m} {m'} {x} (x∈s , x∈m')))

listOf-∪-++-noDup' : m ∩ᵖ m' ≡ᵐ ∅ → NoDupInd (map proj₁ (listOfᵐ m ++ listOfᵐ m'))
listOf-∪-++-noDup' {m} {m'} h rewrite map-++-commute proj₁ (listOfᵐ m) (listOfᵐ m') = listOf-∪-++-noDup {m} {m'} h

listOf-∪-++ : m ∩ᵖ m' ≡ᵐ ∅ → listOfᵐ (m ∪ᵐ m') ≡ listOfᵐ m ++ listOfᵐ m'
listOf-∪-++ {m} {m'} h rewrite sym (map-++-commute proj₁ (listOfᵐ m) (listOfᵐ m')) = remDup-NoDup (eq2in _≟_) _ (listOf-∪-++-noDup' {m} {m'} h)

module _ {q : Level} {{M : CommutativeMonoid 0ℓ q}} {f : (K × V) → CommutativeMonoid.Carrier M} where
  open CommutativeMonoid M
  open SetoidReasoning (CommutativeMonoid.setoid M)

  fold-cong↭ : {l l' : List (K × V)} → l ↭ l' → indexedSumLᵐ f l ≈ indexedSumLᵐ f l'
  fold-cong↭ refl = begin _ ∎
  fold-cong↭ (prep x h) = ∙-congˡ (fold-cong↭ h)
  fold-cong↭ (swap {xs} {ys} x y h) = begin
    f x ∙ (f y ∙ indexedSumLᵐ f xs) ≈⟨ x∙yz≈y∙xz commutativeSemigroup (f x) (f y) (indexedSumLᵐ f xs) ⟩
    f y ∙ (f x ∙ indexedSumLᵐ f xs) ≈⟨ ∙-congˡ (∙-congˡ (fold-cong↭ h)) ⟩
    f y ∙ (f x ∙ indexedSumLᵐ f ys) ∎
  fold-cong↭ (trans {l} {l''} {l'} h h₁) = begin
    indexedSumLᵐ f l   ≈⟨ fold-cong↭ h ⟩
    indexedSumLᵐ f l'' ≈⟨ fold-cong↭ h₁ ⟩
    indexedSumLᵐ f l'  ∎

  indexedSum-cong : m ≡ᵐ m' → indexedSumᵐ f m ≈ indexedSumᵐ f m'
  indexedSum-cong s@{fs-nojunk els} s'@{fs-nojunk els₁} h =
    fold-cong↭ {els} {els₁} (≡ᵐ⇒↭ {m = s} {m' = s'} h)

  private
    helper : ∀ m l → foldr (λ x → f x ∙_) m l ≈ indexedSumLᵐ f l ∙ m
    helper m [] = begin m ≈˘⟨ identityˡ m ⟩ ε ∙ m ∎
    helper m (x ∷ l) = begin
      f x ∙ foldr (λ y → f y ∙_) m l ≈⟨ ∙-congˡ (helper m l) ⟩
      f x ∙ (indexedSumLᵐ f l ∙ m)    ≈˘⟨ assoc _ _ _ ⟩
      f x ∙ indexedSumLᵐ f l ∙ m      ∎

  indexedSum-listOf : indexedSumᵐ f m ≡ indexedSumL f (listOfᵐ m)
  indexedSum-listOf {fs-nojunk els} = _≡_.refl

  indexedSumL-++ : {l l' : List (K × V)} → indexedSumLᵐ f (l ++ l') ≈ indexedSumLᵐ f l ∙ indexedSumLᵐ f l'
  indexedSumL-++ {l} {l'} = begin
    indexedSumLᵐ f (l ++ l')                   ≡⟨ foldr-++ (λ x → f x ∙_) ε l l' ⟩
    foldr (λ x → f x ∙_) (indexedSumLᵐ f l') l ≈⟨ helper (indexedSumLᵐ f l') l ⟩
    indexedSumLᵐ f l ∙ indexedSumLᵐ f l'  ∎

  indexedSum-∪ : m ∩ᵖ m' ≡ᵐ ∅ → indexedSumᵐ f (m ∪ᵐ m') ≈ indexedSumᵐ f m ∙ indexedSumᵐ f m'
  indexedSum-∪ {m} {m'} h = begin
    indexedSumᵐ f (m ∪ᵐ m')                                ≡⟨ indexedSum-listOf {m = m ∪ᵐ m'} ⟩
    indexedSumLᵐ f (listOfᵐ (m ∪ᵐ m'))                      ≡⟨ cong (indexedSumLᵐ f) (listOf-∪-++ {m = m} {m' = m'} h) ⟩
    indexedSumLᵐ f (listOfᵐ m ++ listOfᵐ m')                ≈⟨ indexedSumL-++ {l = listOfᵐ m} {l' = listOfᵐ m'} ⟩
    indexedSumLᵐ f (listOfᵐ m) ∙ indexedSumLᵐ f (listOfᵐ m') ≡˘⟨ cong₂ _∙_ (indexedSum-listOf {m}) (indexedSum-listOf {m'}) ⟩
    indexedSumᵐ f m ∙ indexedSumᵐ f m' ∎
