---
source_branch: master
source_path: src/Ledger/Prelude.lagda.md
---

```agda
{-# OPTIONS --safe #-}

--------------------------------------------------------------------------------
-- Ledger prelude
--
-- Re-exports modules relating to STS, set theory and other
-- miscellaneous things used to write the ledger rules. If something
-- is used in more than two Ledger.* modules, it should probably go
-- here.
--------------------------------------------------------------------------------

module Ledger.Prelude where

open import Prelude public
  hiding (∃⁇)
open import Prelude.Init public
  using (∃⁇)

open import Ledger.Prelude.Base public
import Data.List

open import Class.HasAdd public
open import stdlib-classes.Class.HasCast public
open import Class.HasOrder public
open import Class.ToBool public
open import Interface.ComputationalRelation public
open import Interface.TypeClasses.Hashable public
open import Interface.TypeClasses.HasSubset public
open import Interface.TypeClasses.HasSubtract public
open import Interface.TypeClasses.HasSubtract.Instances public
open import Ledger.Prelude.Instances public
open import Ledger.Prelude.HasCoin public
open import Tactic.Defaults public
open import Tactic.Derive.DecEq public
open import Tactic.Inline public
open import MyDebugOptions public
open import Prelude.STS.GenPremises public

open import abstract-set-theory.FiniteSetTheory public
  renaming (_⊆_ to _⊆ˢ_)
open import abstract-set-theory.Axiom.Set.Map.Extra public

import Data.Integer as ℤ
open import Data.Integer using (0ℤ) public
open import Data.Nat.Properties using (+-comm; +-assoc ; +-identityʳ)
import Data.Rational as ℚ
open import Data.Rational using (ℚ)

dec-de-morgan : ∀{P Q : Type} → ⦃ P ⁇ ⦄ → ¬ (P × Q) → ¬ P ⊎ ¬ Q
dec-de-morgan ⦃ ⁇ no ¬p ⦄ ¬pq = inj₁ ¬p
dec-de-morgan ⦃ ⁇ yes p ⦄ ¬pq = inj₂ λ q → ¬pq (p , q)

setToMap : ∀ {A B : Type} → ⦃ DecEq A ⦄ → ℙ (A × B) → A ⇀ B
setToMap = fromListᵐ ∘ setToList

-- division of natural numbers with completion by 0.
opaque
  _/₀_ : ℕ → ℕ → ℚ
  x /₀ 0 = ℚ.0ℚ
  x /₀ y@(suc _) = ℤ.+ x ℚ./ y

-- Division of rational numbers with completion by 0.
_÷₀_ : ℚ → ℚ → ℚ
_÷₀_ x y = case y ≟ ℚ.0ℚ of λ where
  (yes _) → ℚ.0ℚ
  (no y≢0) → let instance nonZero-y = ℚ.≢-nonZero y≢0 in x ℚ.÷ y

⟦_⟧ : ∀ {A B : Type} ⦃ f : HasCast A B ⦄ → A → B
⟦_⟧ ⦃ f = f ⦄ = f.cast
  where module f = HasCast f

∣_∣ : ∀ {A B : Type} ⦃ f : HasCast A B ⦄ → A → B
∣_∣ ⦃ f = f ⦄ = f.cast
  where module f = HasCast f

infix 5 ⟦_⟧
infix 6 ∣_∣

module Filter where
  filter : ∀ {a} {p} {A : Type a} → (P : Pred A p) → ⦃ P ⁇¹ ⦄ → List A → List A
  filter P = Data.List.filter ¿ P ¿¹

lookupHash : ∀ {T H : Type} ⦃ _ : DecEq H ⦄ ⦃ _ : Hashable T H ⦄ → H → ℙ T → Maybe T
lookupHash h s =
  if h ∈ mapˢ proj₁ (m ˢ) then just (lookupᵐ m h) else nothing
  where m = setToMap (mapˢ < hash , id > s)

Is-∅ : {A : Type} → ℙ A → Type
Is-∅ X = Is-[] (setToList X)

concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
concatMapˡ f as = proj₁ $ unions (fromList (map f as))

indexedSumL-proj₂-zero : ∀ {A : Type} (l : List (A × Coin))
  → (∀ {x} → x ∈ˡ l → proj₂ x ≡ 0)
  → indexedSumL {M = Coin} proj₂ l ≡ 0
indexedSumL-proj₂-zero [] _ = refl
indexedSumL-proj₂-zero ((a , v) ∷ xs) all-zero =
  trans (cong (_+ indexedSumL proj₂ xs) (all-zero (Prelude.Init.here refl)))
        (indexedSumL-proj₂-zero xs (all-zero ∘ Prelude.Init.there))

+-interleave : {a b c d : ℕ} → a + b + (c + d) ≡ a + c + (b + d)
+-interleave {a}{b}{c}{d} = begin
  a + b + (c + d)    ≡⟨ +-assoc a b (c + d) ⟩
  a + (b + (c + d))  ≡⟨ cong (a +_) (sym (+-assoc b c d)) ⟩
  a + (b + c + d)    ≡⟨ cong (λ y → a + (y + d)) (+-comm b c) ⟩
  a + (c + b + d)    ≡⟨ cong (a +_) (+-assoc c b d) ⟩
  a + (c + (b + d))  ≡⟨ sym (+-assoc a c (b + d)) ⟩
  a + c + (b + d)    ∎
  where open ≡-Reasoning

module _ {A : Type} ⦃ _ : DecEq A ⦄ where

  -- A coin singleton has the coin you expect.
  getCoin-singleton : {(a , c) : A × Coin} → indexedSumᵛ' id ❴ (a , c) ❵ ≡ c
  getCoin-singleton = indexedSum-singleton' {M = Coin} (finiteness _)

  ≡ᵉ-getCoin : (s s' : A ⇀ Coin) → s ˢ ≡ᵉ s' ˢ → getCoin s ≡ getCoin s'
  ≡ᵉ-getCoin s s' s≡s' = indexedSumᵛ'-cong {C = Coin} {x = s} {y = s'} s≡s'

  getCoin-cong : (s : A ⇀ Coin) (s' : ℙ (A × Coin))
    → s ˢ ≡ᵉ s' → indexedSum' proj₂ (s ˢ) ≡ indexedSum' proj₂ s'
  getCoin-cong s s' eq = indexedSum-cong {f = proj₂} {x = (s ˢ) ᶠˢ} {y = s' ᶠˢ} eq

  indexedSumᵛ'-∪ : (m m' : A ⇀ Coin) → disjoint (dom m) (dom m')
    → getCoin (m ∪ˡ m') ≡ getCoin m + getCoin m'
  indexedSumᵛ'-∪ m m' disj =
    trans (indexedSumᵐ-∪ˡ-∪ˡᶠ m m')
          (indexedSumᵐ-∪ {X = m ᶠᵐ} {m' ᶠᵐ} {f = proj₂} disj)

  open import Axiom.Set.Properties th
  open import Relation.Binary using (IsEquivalence)

  res-decomp : (m m' : A ⇀ Coin) → (m ∪ˡ m')ˢ ≡ᵉ (m ∪ˡ (m' ∣ dom (m ˢ) ᶜ))ˢ
  res-decomp m m' = ∪-cong (≡ᵉ.refl {x = m ˢ}) (≡ᵉ.sym (filterᵐ-idem {m = m'}))
    where module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {A × Coin})

  -- If a is already in domain of m, left-biased union with singleton at a
  -- leaves total unchanged (existing entry wins).
  ∪ˡsingleton∈dom : (m : A ⇀ Coin) {(a , c) : A × Coin}
    → a ∈ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵) ≡ getCoin m
  ∪ˡsingleton∈dom m {(a , c)} a∈dom =
    ≡ᵉ-getCoin (m ∪ˡ ❴ (a , c) ❵) m (singleton-∈-∪ˡ {m = m} a∈dom)

  -- If a is *not* in domain of m, left-biased union with singleton adds cleanly.
  ∪ˡsingleton∉dom : (m : A ⇀ Coin) {(a , c) : A × Coin}
    → a ∉ dom m → getCoin (m ∪ˡ ❴ (a , c) ❵ᵐ) ≡ getCoin m + c
  ∪ˡsingleton∉dom m {(a , c)} a∉dom =
    begin
    getCoin (m ∪ˡ ❴ a , c ❵ᵐ)
      ≡⟨ indexedSumᵛ'-∪ m ❴ a , c ❵ᵐ
         ( λ x y → a∉dom (subst (_∈ dom m) (from ∈-dom-singleton-pair y) x) ) ⟩
    getCoin m + getCoin ❴ a , c ❵ᵐ
      ≡⟨ cong (getCoin m +_) getCoin-singleton ⟩
    getCoin m + c
      ∎
    where open Equivalence ; open ≡-Reasoning

  -- The case-split corollary specialised to a zero-valued singleton.
  ∪ˡsingleton0≡ : (m : A ⇀ Coin) {a : A} → getCoin (m ∪ˡ ❴ (a , 0) ❵ᵐ) ≡ getCoin m
  ∪ˡsingleton0≡ m {a} with a ∈? dom m
  ... | yes a∈dom = ∪ˡsingleton∈dom m a∈dom
  ... | no a∉dom = trans (∪ˡsingleton∉dom m a∉dom) (+-identityʳ (getCoin m))


  open import Data.List.Membership.Propositional.Properties using (∈-deduplicate⁻)

  sumConstZero : {X : ℙ A} → getCoin (constMap X 0) ≡ 0
  sumConstZero {X} = indexedSumL-proj₂-zero (deduplicate _≟_ l) all-zero-dedup
    where
    open Equivalence

    fin : finite (mapˢ (_, 0) X)
    fin = finiteness (mapˢ (_, 0) X)

    l : List (A × Coin)
    l   = fin .proj₁

    h : ∀ {a} → a ∈ (mapˢ (_, 0) X) ⇔ a ∈ˡ l
    h   = fin .proj₂

    all-zero : ∀ {x} → x ∈ˡ l → proj₂ x ≡ 0
    all-zero x∈l with from ∈-map (from h x∈l)
    ... | (a , refl , _) = refl

    all-zero-dedup : ∀ {x} → x ∈ˡ deduplicate _≟_ l → proj₂ x ≡ 0
    all-zero-dedup x∈dedup = all-zero (∈-deduplicate⁻ (DecEq._≟_ DecEq-×′) l x∈dedup)

opaque
  unfolding setToList List-Model

  setToList-∈ : ∀ {A : Type} {a : A} {X : ℙ A} → a ∈ˡ setToList X → a ∈ X
  setToList-∈ = id

sum-map-+ : ∀ {A : Type} (f g : A → ℕ) (xs : List A)
  → sum (map (λ x → f x + g x) xs) ≡ sum (map f xs) + sum (map g xs)
sum-map-+ _ _ [] = refl
sum-map-+ f g (x ∷ xs) =
  begin
  f x + g x + sum (map (λ x → f x + g x) xs)    ≡⟨ cong (f x + g x +_) (sum-map-+ f g xs) ⟩
  f x + g x + (sum (map f xs) + sum (map g xs)) ≡⟨ +-interleave {f x} ⟩
  f x + sum (map f xs) + (g x + sum (map g xs)) ∎
  where open ≡-Reasoning

module _ {A B : Type} ⦃ _ : DecEq A ⦄ where

  open Equivalence

  -- The domain of a left-biased union with a singleton adds exactly the singleton's key.
  dom-∪ˡ-singleton : (m : A ⇀ B) {k : A} {v : B}
    → dom ((m ∪ˡ ❴ k , v ❵ᵐ) ˢ) ≡ᵉ dom (m ˢ) ∪ ❴ k ❵
  dom-∪ˡ-singleton m {k} {v} = ⊆-dir , ⊇-dir
    where
    ⊆-dir : ∀ {a} → a ∈ dom ((m ∪ˡ ❴ k , v ❵ᵐ) ˢ) → a ∈ dom (m ˢ) ∪ ❴ k ❵
    ⊆-dir {a} a∈ with from ∈-∪ (proj₁ dom∪ a∈)
    ... | inj₁ h = to ∈-∪ (inj₁ h)
    ... | inj₂ h with from dom∈ h
    ...   | b , ab∈f =
      to ∈-∪ (inj₂ (to ∈-singleton
        (from ∈-dom-singleton-pair (to dom∈ (b , proj₂ (from ∈-filter ab∈f))))))

    ⊇-dir : ∀ {a} → a ∈ dom (m ˢ) ∪ ❴ k ❵ → a ∈ dom ((m ∪ˡ ❴ k , v ❵ᵐ) ˢ)
    ⊇-dir {a} a∈ with from ∈-∪ a∈
    ... | inj₁ a∈m = proj₂ dom∪ (to ∈-∪ (inj₁ a∈m))
    ... | inj₂ a∈k with a ∈? dom (m ˢ)
    ...   | yes a∈m = proj₂ dom∪ (to ∈-∪ (inj₁ a∈m))
    ...   | no  a∉m = proj₂ dom∪ (to ∈-∪ (inj₂ (to dom∈
      (v , to ∈-filter (a∉m , to ∈-singleton (cong (_, v) (from ∈-singleton a∈k)))))))

module _ {A : Type} ⦃ _ : DecEq A ⦄ where

  open import Axiom.Set.Properties th
    using (∪-sym; disjoint-sym; Dec-∈-singleton; ≡ᵉ-isEquivalence)
  open import Relation.Binary using (IsEquivalence)
  import Algebra.Structures as AlgStructs
  open AlgStructs {A = Coin} _≡_ using (IsCommutativeSemigroup)
  open import Data.Nat.Properties using (+-isCommutativeSemigroup)
  open Equivalence

  private instance
    Coin-CommutativeSemigroup : IsCommutativeSemigroup _+_
    Coin-CommutativeSemigroup = +-isCommutativeSemigroup

  -- Removing an entry with known value from a map splits its coin total.
  getCoin-remove : (m : A ⇀ Coin) {c : A} {d : Coin}
    → (c , d) ∈ m ˢ
    → getCoin m ≡ getCoin (m ∣ ❴ c ❵ ᶜ) + d
  getCoin-remove m {c} {d} cd∈ = begin
    getCoin m
      ≡˘⟨ ≡ᵉ-getCoin ((m ∣ ❴ c ❵ ᶜ) ∪ˡ (m ∣ ❴ c ❵)) m decomp≡ᵉ ⟩
    getCoin ((m ∣ ❴ c ❵ ᶜ) ∪ˡ (m ∣ ❴ c ❵))
      ≡⟨ indexedSumᵛ'-∪ (m ∣ ❴ c ❵ ᶜ) (m ∣ ❴ c ❵) (disjoint-sym res-ex-disjoint) ⟩
    getCoin (m ∣ ❴ c ❵ ᶜ) + getCoin (m ∣ ❴ c ❵)
      ≡⟨ cong (getCoin (m ∣ ❴ c ❵ ᶜ) +_)
              (trans (≡ᵉ-getCoin (m ∣ ❴ c ❵) ❴ c , d ❵ᵐ (res-singleton' {m = m} cd∈))
                     getCoin-singleton) ⟩
    getCoin (m ∣ ❴ c ❵ ᶜ) + d ∎
    where
    open ≡-Reasoning
    module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {A × Coin})
    decomp≡ᵉ : ((m ∣ ❴ c ❵ ᶜ) ∪ˡ (m ∣ ❴ c ❵)) ˢ ≡ᵉ m ˢ
    decomp≡ᵉ = ≡ᵉ.trans (disjoint-∪ˡ-∪ (disjoint-sym res-ex-disjoint))
                        (≡ᵉ.trans ∪-sym (res-ex-∪ Dec-∈-singleton))

  -- Restricting away an absent key changes nothing.
  resᶜ-singleton-∉ : (m : A ⇀ Coin) {c : A}
    → c ∉ dom (m ˢ)
    → (m ∣ ❴ c ❵ ᶜ) ˢ ≡ᵉ m ˢ
  resᶜ-singleton-∉ m {c} c∉ = ex-⊆ , ⊇-dir
    where
    ⊇-dir : ∀ {x} → x ∈ m ˢ → x ∈ (m ∣ ❴ c ❵ ᶜ) ˢ
    ⊇-dir {(a , w)} aw∈ = resᶜ-dom∉⁺ m
      (aw∈ , λ a∈c → c∉ (subst (_∈ dom (m ˢ)) (from ∈-singleton a∈c) (to dom∈ (w , aw∈))))

  -- Value of an additive union at a key present in only one operand, or in both.
  private
    ∥∪⁺∥-∉ˡ : (m m' : A ⇀ Coin) {a : A} {v : Coin}
      → a ∉ dom (m ˢ) → (a , v) ∈ m' ˢ
      → (q : a ∈ dom (m ˢ) ∪ dom (m' ˢ))
      → ∥ m ∪⁺ m' ∥ q ≡ v
    ∥∪⁺∥-∉ˡ m m' {a} {v} a∉m av∈m' q with a ∈? dom (m ˢ) | a ∈? dom (m' ˢ)
    ... | yes a∈m | _        = ⊥-elim (a∉m a∈m)
    ... | no _    | yes a∈m' = proj₂ m' (proj₂ (from dom∈ a∈m')) av∈m'
    ... | no _    | no a∉m'  = ⊥-elim (a∉m' (to dom∈ (v , av∈m')))

    ∥∪⁺∥-∉ʳ : (m m' : A ⇀ Coin) {a : A} {v : Coin}
      → (a , v) ∈ m ˢ → a ∉ dom (m' ˢ)
      → (q : a ∈ dom (m ˢ) ∪ dom (m' ˢ))
      → ∥ m ∪⁺ m' ∥ q ≡ v
    ∥∪⁺∥-∉ʳ m m' {a} {v} av∈m a∉m' q with a ∈? dom (m ˢ) | a ∈? dom (m' ˢ)
    ... | _       | yes a∈m' = ⊥-elim (a∉m' a∈m')
    ... | yes a∈m | no _     = proj₂ m (proj₂ (from dom∈ a∈m)) av∈m
    ... | no a∉m  | no _     = ⊥-elim (a∉m (to dom∈ (v , av∈m)))

    ∥∪⁺∥-∈-both : (m m' : A ⇀ Coin) {a : A} {v w : Coin}
      → (a , v) ∈ m ˢ → (a , w) ∈ m' ˢ
      → (q : a ∈ dom (m ˢ) ∪ dom (m' ˢ))
      → ∥ m ∪⁺ m' ∥ q ≡ v + w
    ∥∪⁺∥-∈-both m m' {a} {v} {w} av∈m aw∈m' q with a ∈? dom (m ˢ) | a ∈? dom (m' ˢ)
    ... | yes a∈m | yes a∈m' = cong₂ _+_ (proj₂ m  (proj₂ (from dom∈ a∈m))  av∈m)
                                         (proj₂ m' (proj₂ (from dom∈ a∈m')) aw∈m')
    ... | yes _   | no a∉m'  = ⊥-elim (a∉m' (to dom∈ (w , aw∈m')))
    ... | no a∉m  | _        = ⊥-elim (a∉m (to dom∈ (v , av∈m)))

  -- Membership in an additive union with a singleton, value made explicit.
  ∈-∪⁺-singleton : (m : A ⇀ Coin) {c : A} {v d : Coin}
    → (c , v) ∈ m ˢ
    → (c , v + d) ∈ (m ∪⁺ ❴ c , d ❵ᵐ) ˢ
  ∈-∪⁺-singleton m {c} {v} {d} cv∈ =
    subst (λ z → (c , z) ∈ (m ∪⁺ ❴ c , d ❵ᵐ) ˢ)
          (∥∪⁺∥-∈-both m ❴ c , d ❵ᵐ cv∈ (to ∈-singleton refl) (∈-incl-set q .proj₁))
          (k×∥∪⁺∥∈∪⁺' q)
    where
    q : c ∈ dom (m ˢ) ∪ dom (❴ c , d ❵ᵐ ˢ)
    q = to ∈-∪ (inj₁ (to dom∈ (v , cv∈)))

  ∈-∪⁺-singleton-∉ : (m : A ⇀ Coin) {c : A} {d : Coin}
    → c ∉ dom (m ˢ)
    → (c , d) ∈ (m ∪⁺ ❴ c , d ❵ᵐ) ˢ
  ∈-∪⁺-singleton-∉ m {c} {d} c∉ =
    subst (λ z → (c , z) ∈ (m ∪⁺ ❴ c , d ❵ᵐ) ˢ)
          (∥∪⁺∥-∉ˡ m ❴ c , d ❵ᵐ c∉ (to ∈-singleton refl) (∈-incl-set q .proj₁))
          (k×∥∪⁺∥∈∪⁺' q)
    where
    q : c ∈ dom (m ˢ) ∪ dom (❴ c , d ❵ᵐ ˢ)
    q = to ∈-∪ (inj₂ (to dom∈ (d , to ∈-singleton refl)))

  -- Adding at a key does not disturb the restriction away from that key.
  ∪⁺-singleton-resᶜ : (m : A ⇀ Coin) {c : A} {d : Coin}
    → ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) ˢ ≡ᵉ (m ∣ ❴ c ❵ ᶜ) ˢ
  ∪⁺-singleton-resᶜ m {c} {d} = ⊆-dir , ⊇-dir
    where
    a∉sing-dom : ∀ {a} → a ∉ ❴ c ❵ → a ∉ dom (❴ c , d ❵ᵐ ˢ)
    a∉sing-dom a∉ a∈ = a∉ (to ∈-singleton (from ∈-dom-singleton-pair a∈))

    ⊆-dir : ∀ {x} → x ∈ ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) ˢ → x ∈ (m ∣ ❴ c ❵ ᶜ) ˢ
    ⊆-dir {(a , w)} x∈ with resᶜ-dom∉⁻ (m ∪⁺ ❴ c , d ❵ᵐ) x∈
    ... | aw∈m⁺ , a∉c with from ∈-∪ (∪⁺-dom∪ aw∈m⁺)
    ...   | inj₂ h = ⊥-elim (a∉sing-dom a∉c h)
    ...   | inj₁ a∈m = resᶜ-dom∉⁺ m
            (subst (λ z → (a , z) ∈ m ˢ) (sym w≡v) (proj₂ (from dom∈ a∈m)) , a∉c)
      where
      q : _ ∈ dom (m ˢ) ∪ dom (❴ c , d ❵ᵐ ˢ)
      q = to ∈-∪ (inj₁ a∈m)
      w≡v : w ≡ proj₁ (from dom∈ a∈m)
      w≡v = trans (proj₂ (m ∪⁺ ❴ c , d ❵ᵐ) aw∈m⁺ (k×∥∪⁺∥∈∪⁺' q))
                  (∥∪⁺∥-∉ʳ m ❴ c , d ❵ᵐ (proj₂ (from dom∈ a∈m)) (a∉sing-dom a∉c)
                           (∈-incl-set q .proj₁))

    ⊇-dir : ∀ {x} → x ∈ (m ∣ ❴ c ❵ ᶜ) ˢ → x ∈ ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) ˢ
    ⊇-dir {(a , w)} x∈ with resᶜ-dom∉⁻ m x∈
    ... | aw∈m , a∉c = resᶜ-dom∉⁺ (m ∪⁺ ❴ c , d ❵ᵐ)
            (subst (λ z → (a , z) ∈ (m ∪⁺ ❴ c , d ❵ᵐ) ˢ) v≡w (k×∥∪⁺∥∈∪⁺' q) , a∉c)
      where
      q : _ ∈ dom (m ˢ) ∪ dom (❴ c , d ❵ᵐ ˢ)
      q = to ∈-∪ (inj₁ (to dom∈ (w , aw∈m)))
      v≡w : ∥ m ∪⁺ ❴ c , d ❵ᵐ ∥ (∈-incl-set q .proj₁) ≡ w
      v≡w = ∥∪⁺∥-∉ʳ m ❴ c , d ❵ᵐ aw∈m (a∉sing-dom a∉c) (∈-incl-set q .proj₁)

  -- Additive union with a singleton adds its coin to the total.
  getCoin-∪⁺-singleton : (m : A ⇀ Coin) {c : A} {d : Coin}
    → getCoin (m ∪⁺ ❴ c , d ❵ᵐ) ≡ getCoin m + d
  getCoin-∪⁺-singleton m {c} {d} with c ∈? dom (m ˢ)
  ... | no c∉m = begin
        getCoin (m ∪⁺ ❴ c , d ❵ᵐ)
          ≡⟨ getCoin-remove (m ∪⁺ ❴ c , d ❵ᵐ) (∈-∪⁺-singleton-∉ m c∉m) ⟩
        getCoin ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) + d
          ≡⟨ cong (_+ d) (≡ᵉ-getCoin ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) (m ∣ ❴ c ❵ ᶜ)
                                     (∪⁺-singleton-resᶜ m)) ⟩
        getCoin (m ∣ ❴ c ❵ ᶜ) + d
          ≡⟨ cong (_+ d) (≡ᵉ-getCoin (m ∣ ❴ c ❵ ᶜ) m (resᶜ-singleton-∉ m c∉m)) ⟩
        getCoin m + d ∎
        where open ≡-Reasoning
  ... | yes c∈m = begin
        getCoin (m ∪⁺ ❴ c , d ❵ᵐ)
          ≡⟨ getCoin-remove (m ∪⁺ ❴ c , d ❵ᵐ) (∈-∪⁺-singleton m (proj₂ (from dom∈ c∈m))) ⟩
        getCoin ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) + (proj₁ (from dom∈ c∈m) + d)
          ≡⟨ cong (_+ (proj₁ (from dom∈ c∈m) + d))
                  (≡ᵉ-getCoin ((m ∪⁺ ❴ c , d ❵ᵐ) ∣ ❴ c ❵ ᶜ) (m ∣ ❴ c ❵ ᶜ)
                              (∪⁺-singleton-resᶜ m)) ⟩
        getCoin (m ∣ ❴ c ❵ ᶜ) + (proj₁ (from dom∈ c∈m) + d)
          ≡˘⟨ +-assoc (getCoin (m ∣ ❴ c ❵ ᶜ)) (proj₁ (from dom∈ c∈m)) d ⟩
        getCoin (m ∣ ❴ c ❵ ᶜ) + proj₁ (from dom∈ c∈m) + d
          ≡˘⟨ cong (_+ d) (getCoin-remove m (proj₂ (from dom∈ c∈m))) ⟩
        getCoin m + d ∎
        where open ≡-Reasoning
```
