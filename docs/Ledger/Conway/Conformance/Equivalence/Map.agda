{-# OPTIONS --allow-unsolved-metas #-}

module Ledger.Conway.Conformance.Equivalence.Map where

open import Ledger.Prelude
open import Axiom.Set.Properties th
open import Axiom.Set.Map.Dec

import Algebra as Alg
import Algebra.Definitions as AlgDefs
import Algebra.Structures as AlgStrucs

open import Data.List.Relation.Unary.Any using (Any)
open import Data.These as These using (These; this; that; these; fold)
open import Data.Product using (swap)
open import Data.Sum using () renaming (map to map-⊎)
import Relation.Binary.Reasoning.Setoid as SetoidReasoning
open import Relation.Binary using (IsEquivalence; _Preserves_⟶_)
open import Relation.Binary.Bundles
open module SetSetoid {A} = Setoid (≡ᵉ-Setoid {A}) using () renaming (refl to ≈-refl; trans to infixr 1 _⟨≈⟩_)
open import Data.Product.Properties using (×-≡,≡←≡; ×-≡,≡→≡)

open Any

import Axiom.Set
import Axiom.Set.Rel
{-# DISPLAY Axiom.Set.Theory._∈_ th a b = a ∈ b #-}
{-# DISPLAY Axiom.Set.Rel.dom th a = dom a #-}

module _  {A B : Type}
  (open AlgStrucs {A = B} _≡_)
  ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄
  ⦃ _ : CommutativeMonoid _ _ B ⦄
  ⦃ csg : IsCommutativeSemigroup _◇_ ⦄

  where
  private
    variable
      k : A
      v : B
      m m₁ m₂ : A ⇀ B

  ◇comm : Alg.Commutative {A = B} _≡_ _◇_
  ◇comm = IsCommutativeSemigroup.comm csg
  -- TODO: fix this (if possible)
  -- We should probably use the `◇-comm` property of the `⦃ _ : CommutativeMonoid _ _ B ⦄`
  -- instance here, but I don't see how to set the instance's `_≈_` to be `_≡_`, so here
  -- I instead use the standard library's commutative semigroup.

  open Equivalence

  -- Properties of domains of maps of type m₁ ∪⁺ m₂ ---------------------

  -- 1. If `k ∈ dom m₁ ∪ dom m₂` (for m₁, m₂ maps), then `(k , v) ∈ m₁ ∪⁺ m₂` for some `v`.
  dom∪-∃∪⁺ : {m₁ m₂ : A ⇀ B} → k ∈ dom m₁ ∪ dom m₂ → Σ B (λ • → (k , •) ∈ m₁ ∪⁺ m₂)
  dom∪-∃∪⁺ k∈ = from dom∈ (∪dom⊆dom∪⁺ k∈)

  -- 2. If `(k , v) ∈ m₁ ∪⁺ m₂`, then `k ∈ dom m₁ ∪ dom m₂`.
  ∪⁺-dom∪ : {m₁ m₂ : A ⇀ B}{k : A} {v : B} → (k , v) ∈ m₁ ∪⁺ m₂ → k ∈ dom m₁ ∪ dom m₂
  ∪⁺-dom∪ {v = v} kv∈ = dom∪⁺⊆∪dom (to dom∈ (v , kv∈))

  -- 3. The image of a key `k ∈ dom m₁ ∪ dom m₂` under the map `m₁ ∪⁺ m₂` is
  --    `fold id id _◇_ (unionThese m₁ m₂ k p)`.
  ∥_∪⁺_∥ : (m₁ m₂ : A ⇀ B) → k ∈ dom m₁ ∪ dom m₂ → B
  ∥_∪⁺_∥ {k} m₁ m₂ p = fold id id _◇_ (unionThese m₁ m₂ k p)

  -- 4. F[ m₁ , m₂ ] takes a key `k` and a proof of `k ∈ dom m₁ ∪ dom m₂` and returns
  --    the pair `(k , v)` where `v` is the unique image of `k` under `m₁ ∪⁺ m₂`.
  --    i.e., `(k , v) ∈ m₁ ∪⁺ m₂`.
  F[_,_] : (m₁ m₂ : A ⇀ B) → Σ A (_∈ dom m₁ ∪ dom m₂) → A × B
  F[ m₁ , m₂ ] (x , x∈) = x , ∥ m₁ ∪⁺ m₂ ∥ x∈

  -- 5. A simpler version of `lookupᵐ`; it doesn't require tactics.
  lookupᵐ∈ : (m : A ⇀ B) → k ∈ dom m → B
  lookupᵐ∈ _ = proj₁ ∘ (from dom∈)

  -- 6. Proof that the value you get from `lookupᵐ∈` is in the image of the map.
  ∈-lookupᵐ∈ : (m : A ⇀ B)(k∈ : k ∈ dom m) → (k , lookupᵐ∈ m k∈) ∈ m
  ∈-lookupᵐ∈ m k∈ = proj₂ (from dom∈ k∈)

  -- 7. Irrelevance of the proof of `k ∈ dom m` used in `lookupᵐ∈`.
  lookupᵐ∈-irrelevance : (m : A ⇀ B) {k∈ k∈′ : k ∈ dom m}
                       → lookupᵐ∈ m k∈ ≡ lookupᵐ∈ m k∈′
  lookupᵐ∈-irrelevance m {k∈} {k∈′} = m .proj₂ (∈-lookupᵐ∈ m k∈) (∈-lookupᵐ∈ m k∈′)

  -- 8. If `v` is the image of `k` under `m`, then it must be `lookupᵐ∈ m k∈m`!
  ∈-lookupᵐ≡ : (m : A ⇀ B) {k∈m : k ∈ dom m} → (k , v) ∈ m → v ≡ lookupᵐ∈ m k∈m
  ∈-lookupᵐ≡ m {k∈m} kv∈ = m .proj₂ kv∈ (∈-lookupᵐ∈ m k∈m)

  lookupᵐ∈≡ : (m : A ⇀ B) {k∈ : k ∈ dom m} → lookupᵐ∈ m k∈ ≡ lookupᵐ m k
  lookupᵐ∈≡ {k = k} _ {k∈} = refl

  opaque  -- unfolding List-Model List-Modelᵈ to-sp

    -- 0. The `∈-incl-set` lemma is useful for proving some properties of `_∪⁺_`.
    ∈-incl-set : {X : ℙ A} {a : A} (a∈X : a ∈ X) → Σ (a ∈ X) λ • → (a , •) ∈ incl-set X
    ∈-incl-set {X} {a} a∈X =
      Data.Product.map₂ (λ {a∈X′} eq → ∈-mapPartial {f = incl-set' X} .to (a , a∈X′ , eq))
                        lem
      where
        lem : Σ (a ∈ X) λ a∈X′ → incl-set' X a ≡ just (a , a∈X′)
        lem with a ∈? X
        ... | yes a∈X′ = a∈X′ , refl
        ... | no  a∉X  = ⊥-elim (a∉X a∈X)

    -- Properties of values of ∪⁺ --------------------------------------------------

    -- 1. If `k ∈ dom m₁ ∪ dom m₂` holds, then there is a particular proof `k∈′`
    --    of that fact such that `(k , ∥ m₁ ∪⁺ m₂ ∥ k∈′) ∈ m₁ ∪⁺ m₂`.
    -- k×∥∪⁺∥∈∪⁺  : {m₁ m₂ : A ⇀ B} → k ∈ dom m₁ ∪ dom m₂
    --             → Σ (k ∈ dom m₁ ∪ dom m₂) λ k∈′ → (k , ∥ m₁ ∪⁺ m₂ ∥ k∈′) ∈ m₁ ∪⁺ m₂
    -- k×∥∪⁺∥∈∪⁺ {k = k} k∈ with ∈-incl-set k∈
    -- ... | k∈′ , kk∈ = k∈′ , to ∈-map ((k , k∈′) , refl , kk∈)

    -- Actually, we won't use the general statement above; we only need the following
    -- version which picks a particular proof of the fact that `k ∈ dom m₁ ∪ dom m₂`.
    -- In fact, for computing the value, the proof is irrelevant (see property 3 below).

    -- 2. We can obtain the particular proof mentioned in 3. using `∈-incl-set`.
    k×∥∪⁺∥∈∪⁺'  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
                 → (k , ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set k∈ .proj₁)) ∈ m₁ ∪⁺ m₂
    k×∥∪⁺∥∈∪⁺' {k = k} {m₁} {m₂} k∈ = goal
      where
      k∈′ : k ∈ dom m₁ ∪ dom m₂
      k∈′ = ∈-incl-set k∈ .proj₁  --  <= the particular proof mentioned in 1 above.

      kk∈ : (k , ∈-incl-set k∈ .proj₁) ∈ incl-set (dom m₁ ∪ dom m₂)
      kk∈ = ∈-incl-set k∈ .proj₂

      goal : F[ m₁ , m₂ ] (k , ∈-incl-set k∈ .proj₁) ∈ mapˢ F[ m₁ , m₂ ] (incl-set (dom m₁ ∪ dom m₂))
                                                -- this ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ is `(m₁ ∪⁺ m₂)ˢ`
      goal = to ∈-map ((k , k∈′) , refl , kk∈)

    -- 3. The value associated with a key doesn't depend on the proof of key membership.
    fold-irrelevance : {m₁ m₂ : A ⇀ B} {k∈₁ k∈₂ : k ∈ (dom m₁ ∪ dom m₂)}
                     → ∥ m₁ ∪⁺ m₂ ∥ k∈₁ ≡ ∥ m₁ ∪⁺ m₂ ∥ k∈₂
    fold-irrelevance {k = k} {m₁ = m₁} {m₂} {k∈₁} with k ∈? dom m₁ | k ∈? dom m₂
    ... | yes k∈m₁ | yes k∈m₂ = refl
    ... | yes k∈m₁ | no k∉m₂  = refl
    ... | no k∉m₁  | yes k∈m₂ = refl
    ... | no k∉m₁  | no k∉m₂ with from ∈-∪ k∈₁
    ... | inj₁ k∈m₁ = ⊥-elim (k∉m₁ k∈m₁)
    ... | inj₂ k∈m₂ = ⊥-elim (k∉m₂ k∈m₂)

    -- 4. If `(k , v) ∈ m₁ ∪⁺ m₂`, then there is a particular proof `k∈′` of
    --    `k ∈ dom m₁ ∪ dom m₂` such that `v ≡ ∥ m₁ ∪⁺ m₂ ∥ k∈′`.
    ∪⁺-unique-val  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂) → (k , v) ∈ m₁ ∪⁺ m₂
                   → v ≡ ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set k∈ .proj₁)
    ∪⁺-unique-val {k = k} {m₁ = m₁} {m₂} k∈ kv∈ =
      (m₁ ∪⁺ m₂) .proj₂ kv∈ (to ∈-map ((k , ∈-incl-set k∈ .proj₁) , refl , ∈-incl-set k∈ .proj₂))

    -- 5. If `k ∈ dom m₁ ∪ dom m₂`, and `k ∈ dom m₁` and `k ∈ dom m₂`, then there's a
    --    proof `k∈′` of `k ∈ dom m₁ ∪ dom m₂` such that `∥ m₁ ∪⁺ m₂ ∥ k∈′`.
    ∥∪⁺∥≡lu◇lu  :  {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
                    {k∈m₁ : k ∈ dom m₁} {k∈m₂ : k ∈ dom m₂}
                 →  Σ (k ∈ dom m₁ ∪ dom m₂) λ k∈′ → ∥ m₁ ∪⁺ m₂ ∥ k∈′ ≡ lookupᵐ∈ m₁ k∈m₁ ◇ lookupᵐ∈ m₂ k∈m₂
    ∥∪⁺∥≡lu◇lu {k} {m₁} {m₂} k∈ {k∈m₁} {k∈m₂} with k ∈? dom m₁ | k ∈? dom m₂
    ... | no k∉m₁   | _       = ⊥-elim (k∉m₁ k∈m₁)
    ... | _         | no k∉m₂ = ⊥-elim (k∉m₂ k∈m₂)
    ... | yes k∈m₁′ | yes k∈m₂′ = k∈ , goal
      where
      open ≡-Reasoning
      goal : lookupᵐ∈ m₁ k∈m₁′ ◇ lookupᵐ∈ m₂ k∈m₂′ ≡ lookupᵐ∈ m₁ k∈m₁ ◇ lookupᵐ∈ m₂ k∈m₂
      goal = begin
        lookupᵐ∈ m₁ k∈m₁′ ◇ lookupᵐ∈ m₂ k∈m₂′  ≡⟨ cong (_◇ lookupᵐ∈ m₂ k∈m₂′) (lookupᵐ∈-irrelevance m₁) ⟩
        lookupᵐ∈ m₁ k∈m₁ ◇ lookupᵐ∈ m₂ k∈m₂′   ≡⟨ cong (lookupᵐ∈ m₁ k∈m₁ ◇_ ) (lookupᵐ∈-irrelevance m₂) ⟩
        lookupᵐ∈ m₁ k∈m₁ ◇ lookupᵐ∈ m₂ k∈m₂    ∎

    -- 5.' Again, we won't need the general statement (`∥∪⁺∥≡lu◇lu`), but instead the version below
    --     which picks a particular proof of `k ∈ dom m₁ ∪ dom m₂`.
    ∥∪⁺∥≡lu◇lu'  :  {m₁ m₂ : A ⇀ B} (kv∈ : (k , v) ∈ m₁ ∪⁺ m₂)
                     {k∈m₁ : k ∈ dom m₁} {k∈m₂ : k ∈ dom m₂}
                  →  ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set (∪⁺-dom∪ kv∈) .proj₁) ≡ lookupᵐ∈ m₁ k∈m₁ ◇ lookupᵐ∈ m₂ k∈m₂
    ∥∪⁺∥≡lu◇lu' kv∈ with ∥∪⁺∥≡lu◇lu (∪⁺-dom∪ kv∈)
    ... | k∈′ , v≡ = trans fold-irrelevance v≡


    ------------------------------------------------------------------------------------------------

    resᶜ-dom∉⁻ : ∀ m {ks}{a : A}{b : B} → (a , b) ∈ (m ∣ ks ᶜ) → (a , b) ∈ m × a ∉ ks
    resᶜ-dom∉⁻ m x = ex-⊆ x , (∈-resᶜ-dom⁻ $ ∈-dom x) .proj₁

    resᶜ-dom∉⁺ : ∀ m {ks}{a : A}{b : B} → (a , b) ∈ m × a ∉ ks → (a , b) ∈ (m ∣ ks ᶜ)
    resᶜ-dom∉⁺ m = to ∈-filter ∘ swap

    deconstruct-∪⁺  :  {m m₁ m₂ : A ⇀ B} {a : A}
                       {a∈₁ : a ∈ dom m ∪ dom m₁}
                       {a∈₂ : a ∈ dom m ∪ dom m₂}
                    →  m₁ ≡ᵐ m₂ → ∥ m ∪⁺ m₁ ∥ a∈₁ ≡ ∥ m ∪⁺ m₂ ∥ a∈₂

    deconstruct-∪⁺ {m} {m₁} {m₂} {a} {a∈₁} m₁≡m₂
      with a ∈? dom m | a ∈? dom m₁ | a ∈? dom m₂
    ... | yes a∈m | yes a∈m₁ | yes a∈m₂ =
      cong (λ (b : B) → lookupᵐ m a ◇ b)
           (proj₂ m₂
             (proj₁ m₁≡m₂ (proj₂ $ from dom∈ a∈m₁))  -- : (a , lookupᵐ m₁ a) ∈ (m₂ ˢ)
             (proj₂ (from dom∈ a∈m₂))                -- : (a , lookupᵐ m₂ a) ∈ (m₂ ˢ)
           )
    ... | no  a∉m | yes a∈m₁ | yes a∈m₂ =
      proj₂ m₂ (proj₁ m₁≡m₂ (proj₂ (from dom∈ a∈m₁))) (proj₂ (from dom∈ a∈m₂))
    ... | yes a∈m | no  a∉m₁ | no a∉m₂ = refl
    ... | _ | yes a∈m₁ | no a∉m₂ = ⊥-elim (a∉m₂ (dom⊆ (proj₁ m₁≡m₂) a∈m₁))
    ... | _ | no  a∉m₁ | yes a∈m₂ = ⊥-elim (a∉m₁ (dom⊆ (proj₂ m₁≡m₂) a∈m₂))
    ... | no  a∉m | no  a∉m₁ | no a∉m₂ with from ∈-∪ a∈₁
    ... | inj₁ a∈m = ⊥-elim (a∉m a∈m)
    ... | inj₂ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)


    fold-◇-union-comm  :  {m₁ m₂ : A ⇀ B} {a : A}
                          {a∈₁ : a ∈ dom m₁ ∪ dom m₂}
                          {a∈₂ : a ∈ dom m₂ ∪ dom m₁}
                       →  ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set a∈₁ .proj₁)
                       ≡  ∥ m₂ ∪⁺ m₁ ∥ (∈-incl-set a∈₂ .proj₁)

    fold-◇-union-comm {m₁} {m₂} {a} {a∈₁} with a ∈? dom m₁ | a ∈? dom m₂
    ... | yes a∈m₁ | yes a∈m₂ = ◇comm (lookupᵐ m₁ a) (lookupᵐ m₂ a)
    ... | no  a∉m₁ | yes a∈m₂ = refl
    ... | yes a∈m₁ | no  a∉m₂ = refl
    ... | no  a∉m₁ | no  a∉m₂ with from ∈-∪ a∈₁
    ... | inj₁ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)
    ... | inj₂ a∈m₂ = ⊥-elim (a∉m₂ a∈m₂)


    ∪⁺-comm-⊆ : {m₁ m₂ : A ⇀ B} → m₁ ∪⁺ m₂ ⊆ m₂ ∪⁺ m₁
    ∪⁺-comm-⊆ {m₁} {m₂} {a} {b} ab∈ with a ∈? dom m₁ | a ∈? dom m₂
    ... | yes a∈m₁ | _ = to ∈-map $ (a , ∈-incl-set a∈˘ .proj₁)
                                  , ×-≡,≡→≡ (refl , b≡) , ∈-incl-set a∈₂ .proj₂
      where
      a∈₂ : a ∈ unions (fromList (dom m₂ ∷ dom m₁ ∷ [])) .proj₁
      a∈₂ = to ∈-unions (dom m₁ , to ∈-fromList (there (here refl)) , a∈m₁)

      a∈˘ : a ∈ dom m₂ ∪ dom m₁
      a∈˘ = to ∈-∪ (inj₂ a∈m₁)

      b≡ : b ≡ fold id id _◇_ (unionThese m₂ m₁ a $ ∈-incl-set a∈˘ .proj₁)
      b≡ = trans (∪⁺-unique-val (to ∈-∪ $ inj₁ a∈m₁) ab∈) fold-◇-union-comm

    ... | no a∉m₁ | yes a∈m₂ = to ∈-map $ (a , ∈-incl-set a∈˘ .proj₁)
                                        , ×-≡,≡→≡ (refl , b≡) , ∈-incl-set a∈₂ .proj₂
      where
      a∈₂ : a ∈ unions (fromList (dom m₂ ∷ dom m₁ ∷ [])) .proj₁
      a∈₂ = to ∈-unions (dom m₂ , to ∈-fromList (here refl) , a∈m₂)

      a∈˘ : a ∈ dom m₂ ∪ dom m₁
      a∈˘ = to ∈-∪ $ inj₁ a∈m₂

      b≡ : b ≡ fold id id _◇_ (unionThese m₂ m₁ a (∈-incl-set a∈˘ .proj₁))
      b≡ = trans (∪⁺-unique-val (to ∈-∪ (inj₂ a∈m₂)) ab∈) fold-◇-union-comm

    ... | no  a∉m₁ | no a∉m₂ with from ∈-∪ (∪⁺-dom∪ ab∈)
    ... | inj₁ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)
    ... | inj₂ a∈m₂ = ⊥-elim (a∉m₂ a∈m₂)


    ∪⁺-comm : {m₁ m₂ : A ⇀ B} → m₁ ∪⁺ m₂ ≡ᵐ m₂ ∪⁺ m₁
    ∪⁺-comm = ∪⁺-comm-⊆ , ∪⁺-comm-⊆

    ∪⁺-comm-val  :  {m₁ m₂ : A ⇀ B}
                    {k∈m₁₂ : k ∈ dom m₁ ∪ dom m₂}
                    {k∈m₂₁ : k ∈ dom m₂ ∪ dom m₁}
                 →  ∥ m₁ ∪⁺ m₂ ∥ k∈m₁₂ ≡ ∥ m₂ ∪⁺ m₁ ∥ k∈m₂₁
    ∪⁺-comm-val {k = k} {m₁ = m₁}{m₂}{k∈m₁₂}{k∈m₂₁} = (m₁ ∪⁺ m₂) .proj₂ kv∈₁₂ (∪⁺-comm-⊆ kv∈₂₁)
      where
      kv∈₁₂ : (k , ∥ m₁ ∪⁺ m₂ ∥ k∈m₁₂) ∈ m₁ ∪⁺ m₂
      kv∈₁₂ = subst (λ • → (k , •) ∈ m₁ ∪⁺ m₂) fold-irrelevance (k×∥∪⁺∥∈∪⁺' k∈m₁₂)

      kv∈₂₁ : (k , ∥ m₂ ∪⁺ m₁ ∥ k∈m₂₁) ∈ m₂ ∪⁺ m₁
      kv∈₂₁ = subst (λ x → (k , x) ∈ m₂ ∪⁺ m₁) fold-irrelevance (k×∥∪⁺∥∈∪⁺' k∈m₂₁)


    ∪⁺-cong-⊆ˡ : {m m₁ m₂ : A ⇀ B} → m₁ ≡ᵐ m₂ → m ∪⁺ m₁ ⊆ m ∪⁺ m₂
    ∪⁺-cong-⊆ˡ {m}{m₁}{m₂} m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) {k} {v} kv∈ with from ∈-map kv∈
    ... | (.k , k∈) , refl , s =
      let k∈'' , ∈inclset = ∈-incl-set k∈'
          ≡F : (k , v) ≡ F[ m , m₂ ] (k , k∈'')
          ≡F = ×-≡,≡→≡ (refl , deconstruct-∪⁺ {a∈₁ = k∈} m₁≡m₂)
      in  to (∈-map {f = F[ m , m₂ ]}) ((k , k∈'') , ≡F , ∈inclset)
      where
      a∈-∪dom₁ : k ∈ dom m ∪ dom m₁
      a∈-∪dom₁ = dom∪⁺⊆∪dom (to dom∈ (v , kv∈))

      dom₁⊆dom₂ : dom m₁ ⊆ dom m₂
      dom₁⊆dom₂ = dom⊆ m₁⊆m₂

      k∈' : k ∈ dom m ∪ dom m₂
      k∈' = ∪-cong-⊆ id dom₁⊆dom₂ a∈-∪dom₁

    ∪⁺-cong-l : {m : A ⇀ B} → (m ∪⁺_ ) Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-l m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) = (∪⁺-cong-⊆ˡ m₁≡m₂) , ∪⁺-cong-⊆ˡ (m₂⊆m₁ , m₁⊆m₂)

    ∪⁺-cong-r : {m : A ⇀ B} → ( _∪⁺ m) Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-r m₁≡m₂ .proj₁ kv∈m₁m = proj₁ ∪⁺-comm (∪⁺-cong-⊆ˡ m₁≡m₂ (proj₁ ∪⁺-comm kv∈m₁m))
    ∪⁺-cong-r m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) .proj₂ kv∈m₂m =
      proj₁ ∪⁺-comm (∪⁺-cong-⊆ˡ (m₂⊆m₁ , m₁⊆m₂) (proj₁ ∪⁺-comm kv∈m₂m))

    ∪⁺-dom-id : (m : A ⇀ B) → dom m ≡ᵉ dom m ∪ dom (∅{A ⇀ B})
    ∪⁺-dom-id m = begin
      dom m ≈˘⟨ ∪-identityʳ (dom m) ⟩
      dom m ∪ ∅ ≈˘⟨ ∪-cong ≡ᵉ.refl dom∅ ⟩
      dom m ∪ dom (∅{A ⇀ B})
      ∎
      where
      open SetoidReasoning (≡ᵉ-Setoid{A})
      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {A})

    ∪⁺-id-dom∈ :  (m : A ⇀ B) → k ∈ dom m  ⇔  k ∈ dom m ∪ dom (∅{A ⇀ B})
    ∪⁺-id-dom∈ m = mk⇔ (∪⁺-dom-id m .proj₁) (∪⁺-dom-id m .proj₂)

    ∪⁺-id-lemma  :  (m : A ⇀ B)
                    (k∈m : k ∈ dom m)
                    (k∈ : k ∈ dom m ∪ dom (∅{A ⇀ B}))
                 →  lookupᵐ∈ m k∈m ≡ ∥ m ∪⁺ ∅{A ⇀ B} ∥ k∈

    ∪⁺-id-lemma {k} m k∈domm k∈domm∪ with k ∈? dom m | k ∈? dom (∅{A ⇀ B})
    ... | _ | yes  k∈∅ = ⊥-elim (⊥-elim (∉-dom∅ k∈∅))
    ... | no  k∉m | no  k∉∅ = case from ∈-∪ k∈domm∪ of λ where
      (inj₁ k∈m) → ⊥-elim (k∉m k∈m)
      (inj₂ k∈∅) → ⊥-elim (k∉∅ k∈∅)
    ... | yes k∈m | no  k∉∅ with from ∈-map k∈domm
    ... | (.k , v) , refl , kv∈m = m .proj₂ kv∈m (∈-lookupᵐ∈ m k∈m)
                                  -- goal : v ≡ lookupᵐ∈ m k∈m --

    ∪⁺-id-r : (m : A ⇀ B) → m ∪⁺ ∅{A ⇀ B} ≡ᵐ m
    ∪⁺-id-r m .proj₁ {(k , v)} kv∈m∅ with from ∈-map kv∈m∅
    ... | (.k , k∈) , refl , snd = subst  (λ • → (k , •) ∈ m)
                                          (∪⁺-id-lemma m (from (∪⁺-id-dom∈ m) k∈) k∈)
                                          (∈-lookupᵐ∈ m $ from (∪⁺-id-dom∈ m) k∈)

    ∪⁺-id-r m .proj₂ {(k , v)} kv∈m with to dom∈ (v , kv∈m)
    ... | k∈m =
      subst (λ • → (k , •) ∈ m ∪⁺ ∅{A ⇀ B}) (trans lu≡ v≡) (k×∥∪⁺∥∈∪⁺' k∈)
      where
      k∈ : k ∈ dom m ∪ dom (∅{A ⇀ B})
      k∈ = to (∪⁺-id-dom∈ m) k∈m

      lu≡ : ∥ m ∪⁺ (∅{A ⇀ B}) ∥ (∈-incl-set k∈ .proj₁) ≡ lookupᵐ∈ m (∈-incl-set k∈m .proj₁)
      lu≡ = sym $ ∪⁺-id-lemma m (∈-incl-set k∈m .proj₁) (∈-incl-set k∈ .proj₁)

      v≡ : lookupᵐ∈ m (∈-incl-set k∈m .proj₁) ≡ v
      v≡ = sym $ m .proj₂ kv∈m (∈-lookupᵐ∈ m (∈-incl-set k∈m .proj₁))

    restrict-cong : (m₁ m₂ : A ⇀ B) {ks : ℙ A} → m₁ ≡ᵐ m₂ → (m₁ ∣ ks ᶜ) ≡ᵐ (m₂ ∣ ks ᶜ)
    restrict-cong m₁ m₂ (m₁⊆m₂ , _) .proj₁ ab∈ with resᶜ-dom∉⁻ m₁ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₂ (m₁⊆m₂ ab∈ , a∉)
    restrict-cong m₁ m₂ (_ , m₂⊆m₁) .proj₂ ab∈ with resᶜ-dom∉⁻ m₂ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₁ (m₂⊆m₁ ab∈ , a∉)


  module _ {P : A → Type} ⦃ _ : P ⁇¹ ⦄ where

    P′ : A × B → Type
    P′ (k , _) = P k

    P→P′ : P k → ∀ b → P′ (k , b)
    P→P′ = λ z _ → z

    ∈-dom-filter-P : (m : A ⇀ B) → k ∈ dom (filterᵐ P′ m) → P k
    ∈-dom-filter-P _ k∈Pm = ∈-filter .from (dom∈ .from k∈Pm .proj₂) .proj₁

    ∈-dom-filter-dom : (m : A ⇀ B) → k ∈ dom (filterᵐ P′ m) → k ∈ dom m
    ∈-dom-filter-dom m k∈domf with from dom∈ k∈domf
    ... | b , kb∈filter = to dom∈ (b , proj₂ ((from ∈-filter) kb∈filter))

    dom-filter-⊆ : (m : A ⇀ B) → dom (filterᵐ P′ m) ⊆ dom m
    dom-filter-⊆ m k∈Pm = dom∈ .to (_ , filter-⊆ (dom∈ .from k∈Pm .proj₂))

    ∈-dom-filterˡ : (m : A ⇀ B) → k ∈ dom (filterᵐ P′ m) → P k × k ∈ dom m
    ∈-dom-filterˡ m h = ∈-dom-filter-P m h , ∈-dom-filter-dom m h

    ∈-dom-filterʳ : (m : A ⇀ B) → P k × k ∈ dom m → k ∈ dom (filterᵐ P′ m)
    ∈-dom-filterʳ m (pk , k∈) = dom∈ .to ( (from dom∈ k∈) .proj₁
                                         , to ∈-filter (pk , (from dom∈ k∈) .proj₂ ) )

    filterᵐ-∈ : (m : A ⇀ B) {k : A} {v : B} → P k → (k , v) ∈ m → (k , v) ∈ filterᵐ P′ m
    filterᵐ-∈ m = curry $ to ∈-filter

    cong-filterᵐ : (m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → filterᵐ P′ m₁ ≡ᵐ filterᵐ P′ m₂
    cong-filterᵐ m₁ m₂ eq .proj₁ ∈Pm₁ = filterᵐ-∈ m₂ (∈-dom-filterˡ m₁ (∈-dom ∈Pm₁) .proj₁) (eq .proj₁ (∈-filter .from ∈Pm₁ .proj₂))
    cong-filterᵐ m₁ m₂ eq .proj₂ ∈Pm₂ = filterᵐ-∈ m₁ (∈-dom-filterˡ m₂ (∈-dom ∈Pm₂) .proj₁) (eq .proj₂ (∈-filter .from ∈Pm₂ .proj₂))

    ∪⁺-filter-P′ : (m₁ m₂ : A ⇀ B) → (k , v) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂ → P′ (k , v)
    ∪⁺-filter-P′ {k = k}{v} m₁ m₂ kv∈ with (from ∈-∪ (∪⁺-dom∪ kv∈))
    ... | inj₁ k∈₁ = ∈-dom-filterˡ m₁ k∈₁ .proj₁
    ... | inj₂ k∈₂ = ∈-dom-filterˡ m₂ k∈₂ .proj₁

    lookup≡lookup-filter  : (m : A ⇀ B) (k∈ : k ∈ dom m) (k∈′ : k ∈ dom (filterᵐ P′ m))
                          → lookupᵐ∈ m k∈ ≡ lookupᵐ∈ (filterᵐ P′ m) k∈′
    lookup≡lookup-filter m k∈ k∈′ =
      (m .proj₂) (∈-lookupᵐ∈ m k∈) (proj₂ (from ∈-filter (∈-lookupᵐ∈ (filterᵐ P′ m) k∈′)))

    ∈-∪⁺-l'  : {m₁ m₂ : A ⇀ B} {k∈m₁ : k ∈ dom m₁} {k∈m₁m₂ : k ∈ dom m₁ ∪ dom m₂}
             → (k , v) ∈ m₁ ∪⁺ m₂ → k ∉ dom m₂
             → ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set k∈m₁m₂ .proj₁) ≡ lookupᵐ∈ m₁ k∈m₁
    ∈-∪⁺-l' {k = k} {m₁ = m₁} {m₂} {k∈m₁} {k∈m₁m₂} kv∈m₁m₂ k∉m₂ with k ∈? dom m₁ | k ∈? dom m₂
    ... | _ | yes k∈₂ = ⊥-elim (k∉m₂ k∈₂)
    ... | no k∉₁ | _ = ⊥-elim (k∉₁ k∈m₁)
    ... | yes k∈₁ | no k∉₂ with from ∈-map k∈m₁
    ... | (.k , v) , refl , kv∈m₁ = m₁ .proj₂ (∈-lookupᵐ∈ m₁ k∈₁) kv∈m₁

    ∈-∪⁺-l  : {m₁ m₂ : A ⇀ B} (k∈m₁ : k ∈ dom m₁)
            → (k , v) ∈ m₁ ∪⁺ m₂ → k ∉ dom m₂
            → v ≡ lookupᵐ∈ m₁ k∈m₁
    ∈-∪⁺-l k∈m₁ kv∈₁₂ k∉m₂ = trans (∪⁺-unique-val (∪⁺-dom∪ kv∈₁₂) kv∈₁₂) (∈-∪⁺-l' kv∈₁₂ k∉m₂)


    ∪⁺-filter  : (m₁ m₂ : A ⇀ B) {a : A} {b : B}
               → (a , b) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
               → a ∈ dom m₁ → a ∉ dom m₂ → (a , b) ∈ filterᵐ P′ m₁
    ∪⁺-filter m₁ m₂ {a} {b} ab∈' a∈ a∉ =
      subst (λ • → (a , •) ∈ filterᵐ P′ m₁) (sym $ ∈-∪⁺-l a∈f₁ ab∈' a∉f₂)
                                            (from dom∈ a∈f₁ .proj₂)
      where
      a∈f₁ : a ∈ dom (filterᵐ P′ m₁)
      a∈f₁ = ∈-dom-filterʳ m₁ (∪⁺-filter-P′ m₁ m₂ ab∈' , a∈)

      a∉f₂ : a ∉ dom (filterᵐ P′ m₂)
      a∉f₂ = a∉ ∘ (∈-dom-filter-dom m₂)

    ∪⁺-filter-lookup≡  : ∀ (m₁ m₂ : A ⇀ B) {a : A} {b : B}
                       → (a , b) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
                       → (a∈ : a ∈ dom m₁) → a ∉ dom m₂
                       → b ≡ lookupᵐ∈ m₁ a∈
    ∪⁺-filter-lookup≡ m₁ m₂ {a} {b} ab∈' a∈ a∉ =
      proj₂ m₁ (from ∈-filter (∪⁺-filter m₁ m₂ ab∈' a∈ a∉) .proj₂) (from dom∈ a∈ .proj₂)

    ∈-∪⁺-filterˡ  : {m₁ m₂ : A ⇀ B} → (k , v) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
                  → (k∈∪dom : k ∈ dom m₁ ∪ dom m₂) → k ∈ dom (m₁ ∪⁺ m₂)
                  → These (k ∈ dom(filterᵐ P′ m₁)) (k ∈ dom(filterᵐ P′ m₂))
                  → v ≡ ∥ m₁ ∪⁺ m₂ ∥ k∈∪dom

    ∈-∪⁺-filterˡ {k = k} {v} {m₁}{m₂} kv∈′ k∈∪dom k∈dom∪⁺ (this k∈m₁′) with k ∈? dom m₁ | k ∈? dom m₂
    ... | no ∉₁ | _ = ⊥-elim $ ∉₁ $ to dom∈ ( from dom∈ k∈m₁′ .proj₁
                                            , from ∈-filter (proj₂ $ from dom∈ k∈m₁′) .proj₂ )
    ... | yes ∈₁ | no  ∉₂ = trans (∪⁺-filter-lookup≡ m₁ m₂ kv∈′ ∈₁ ∉₂) (lookupᵐ∈≡ m₁)
    ... | yes ∈₁ | yes ∈₂ = begin
      v                                         ≡⟨ ∪⁺-unique-val (∪⁺-dom∪ kv∈′) kv∈′ ⟩
      ∥ m₁′ ∪⁺ m₂′ ∥ _                          ≡⟨ ∥∪⁺∥≡lu◇lu' kv∈′ ⟩
      lookupᵐ∈ m₁′ k∈m₁′ ◇ lookupᵐ∈ m₂′ k∈m₂′   ≡˘⟨ cong (lookupᵐ∈ m₁′ k∈m₁′ ◇_)
                                                         (lookup≡lookup-filter m₂ ∈₂ k∈m₂′) ⟩
      lookupᵐ∈ m₁′ k∈m₁′ ◇ lookupᵐ∈ m₂ ∈₂       ≡˘⟨ cong (_◇ lookupᵐ∈ m₂ ∈₂)
                                                         (lookup≡lookup-filter m₁ ∈₁ k∈m₁′) ⟩
      lookupᵐ∈ m₁ ∈₁ ◇ lookupᵐ∈ m₂ ∈₂           ∎
        where
        open ≡-Reasoning
        m₁′ m₂′ : A ⇀ B
        m₁′ = filterᵐ P′ m₁
        m₂′ = filterᵐ P′ m₂

        k∈m₂′ : k ∈ dom (filterᵐ P′ m₂)
        k∈m₂′ = ∈-dom-filterʳ m₂ (proj₁ (∈-dom-filterˡ m₁ k∈m₁′) , ∈₂)

    ∈-∪⁺-filterˡ {k = k} {v = v} {m₁ = m₁} {m₂} kv∈′ k∈∪dom₁₂ k∈dom∪₁₂ (that k∈m₂′)
      = trans v≡m₂m₁ ∪⁺-comm-val
        where
        v≡m₂m₁ : v ≡ ∥ m₂ ∪⁺ m₁ ∥ _
        v≡m₂m₁ = ∈-∪⁺-filterˡ (∪⁺-comm-⊆ kv∈′)
                              (proj₁ (∪-comm (dom m₁) (dom m₂)) k∈∪dom₁₂)
                              (dom⊆ ∪⁺-comm-⊆ k∈dom∪₁₂) (this k∈m₂′)

    ∈-∪⁺-filterˡ {k = k} {v = v} {m₁ = m₁} {m₂} kv∈′ k∈∪dom k∈dom∪⁺ (these k∈m₁′ k∈m₂′)
      with k ∈? dom m₁ | k ∈? dom m₂
    ... | no ∉₁ | _ = ⊥-elim $ ∉₁ $ to dom∈ ( from dom∈ k∈m₁′ .proj₁
                                            , from ∈-filter (proj₂ $ from dom∈ k∈m₁′) .proj₂ )
    ... | yes ∈₁ | no  ∉₂ = trans (∪⁺-filter-lookup≡ m₁ m₂ kv∈′ ∈₁ ∉₂) (lookupᵐ∈≡ m₁)
    ... | yes ∈₁ | yes ∈₂ = let open ≡-Reasoning; m₁′ = filterᵐ P′ m₁; m₂′ = filterᵐ P′ m₂ in
      begin
      v                                    ≡⟨ ∪⁺-unique-val (∪⁺-dom∪ kv∈′) kv∈′ ⟩
      ∥ m₁′ ∪⁺ m₂′ ∥ _                     ≡⟨ ∥∪⁺∥≡lu◇lu' kv∈′ ⟩
      lookupᵐ∈ m₁′ _ ◇ lookupᵐ∈ m₂′ k∈m₂′  ≡˘⟨ cong (lookupᵐ∈ m₁′ _ ◇_) (lookup≡lookup-filter m₂ ∈₂ _) ⟩
      lookupᵐ∈ m₁′ k∈m₁′ ◇ lookupᵐ∈ m₂ ∈₂  ≡˘⟨ cong (_◇ lookupᵐ∈ m₂ ∈₂) (lookup≡lookup-filter m₁ ∈₁ _) ⟩
      lookupᵐ∈ m₁ ∈₁ ◇ lookupᵐ∈ m₂ ∈₂      ∎


    opaque
      open Equivalence

      --------------------------------------------------------------------------------------------------
      -- filterᵐ-∪⁺-distr  -----------------------------------------------------------------------------
      -- Note: this property only holds because P′ is not looking at the value.
      -- Counter-example if it does look at the value:
      -- Suppose `m₁ˢ = m₂ˢ = {(0, 1)}`, `P′ (0, 1)`, and `¬ P′ (0, 2)`.
      -- Then `m₁ ∪⁺ m₂ ≡ {(0, 2)}` so (lhs) `filterᵐ P′ (m₁ ∪⁺ m₂)` is empty,
      -- but `(filterᵐ P′ m₁)ˢ ≡ (filterᵐ P′ m₂)ˢ = {(0, 1)}` so (rhs) `filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂` contains {(0, 2)}.

      filterᵐ-∪⁺-distr-⊇ : (m₁ m₂ : A ⇀ B) → filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂ ⊆ filterᵐ P′ (m₁ ∪⁺ m₂)
      filterᵐ-∪⁺-distr-⊇ m₁ m₂ {k} {v} kv∈Pm₁Pm₂ =
        case ¿ P k ¿ of λ where
          (yes pk) → yes-case pk
          (no ¬pk) → ⊥-elim (¬pk ([ ∈-dom-filter-P m₁ , ∈-dom-filter-P m₂ ]′ k∈Pm₁∨k∈Pm₂))
        where
          open ≡-Reasoning
          k∈Pm₁∨k∈Pm₂ : k ∈ dom (filterᵐ P′ m₁) ⊎ k ∈ dom (filterᵐ P′ m₂)
          k∈Pm₁∨k∈Pm₂ = ∈-∪ .from (dom∪⁺⊆∪dom (∈-map′ kv∈Pm₁Pm₂))

          k∈Pm₁⊕k∈Pm₂ : These (k ∈ dom (filterᵐ P′ m₁)) (k ∈ dom (filterᵐ P′ m₂))
          k∈Pm₁⊕k∈Pm₂ with k ∈? dom (filterᵐ P′ m₁) | k ∈? dom (filterᵐ P′ m₂) | k∈Pm₁∨k∈Pm₂
          ... | yes ∈₁ | yes ∈₂ | _       = these ∈₁ ∈₂
          ... | yes ∈₁ | no  _  | _       = this ∈₁
          ... | no  _  | yes ∈₂ | _       = that ∈₂
          ... | no  ∉₁ | no  _  | inj₁ ∈₁ = ⊥-elim (∉₁ ∈₁)
          ... | no  _  | no  ∉₂ | inj₂ ∈₂ = ⊥-elim (∉₂ ∈₂)

          yes-case : P k → (k , v) ∈ filterᵐ P′ (m₁ ∪⁺ m₂)
          yes-case pk = ∈-filter .to (pk , kv∈m₁m₂)
            where
              k∈m₁∨k∈m₂ : k ∈ dom m₁ ⊎ k ∈ dom m₂
              k∈m₁∨k∈m₂ = map-⊎ (dom-filter-⊆ m₁) (dom-filter-⊆ m₂) k∈Pm₁∨k∈Pm₂

              k∈m₁m₂ : k ∈ dom m₁ ∪ dom m₂
              k∈m₁m₂ = ∈-∪ .to k∈m₁∨k∈m₂

              k∈m₁m₂⁺ : k ∈ dom (m₁ ∪⁺ m₂)
              k∈m₁m₂⁺ = ∪dom⊆dom∪⁺ k∈m₁m₂

              [kv′∈m₁m₂] : Σ (k ∈ dom m₁ ∪ dom m₂) (λ k∈m₁m₂′ → (k , ∥ m₁ ∪⁺ m₂ ∥ k∈m₁m₂′) ∈ m₁ ∪⁺ m₂)
              [kv′∈m₁m₂] = _ , ∈-map′ (∈-incl-set k∈m₁m₂ .proj₂)

              k∈m₁m₂′ : k ∈ dom m₁ ∪ dom m₂
              k∈m₁m₂′  = [kv′∈m₁m₂] .proj₁

              k∈m₁∪⁺m₂ : k ∈ dom (m₁ ∪⁺ m₂)
              k∈m₁∪⁺m₂  = ∪dom⊆dom∪⁺ k∈m₁m₂′

              v′ : B
              v′ = ∥ m₁ ∪⁺ m₂ ∥ k∈m₁m₂′

              kv′∈m₁m₂ : (k , v′) ∈ m₁ ∪⁺ m₂
              kv′∈m₁m₂ = [kv′∈m₁m₂] .proj₂

              v=v′ : v ≡ v′
              v=v′ = ∈-∪⁺-filterˡ kv∈Pm₁Pm₂ k∈m₁m₂′ k∈m₁∪⁺m₂ k∈Pm₁⊕k∈Pm₂

              kv∈m₁m₂ : (k , v) ∈ m₁ ∪⁺ m₂
              kv∈m₁m₂ = subst (λ • → (k , •) ∈ m₁ ∪⁺ m₂) (sym v=v′) kv′∈m₁m₂

      filterᵐ-∪⁺-distr-⊆ : (m₁ m₂ : A ⇀ B) → filterᵐ P′ (m₁ ∪⁺ m₂) ⊆ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
      filterᵐ-∪⁺-distr-⊆ m₁ m₂ {k} {v} kv∈Pm₁m₂ with from ∈-filter kv∈Pm₁m₂
      ... | Pkv , kv∈ with k ∈? dom m₁ | k ∈? dom m₂
      ... | yes k∈₁ | yes k∈₂ =
        subst (λ • → (k , •) ∈ m₁′ ∪⁺ m₂′) ((m₁ ∪⁺ m₂) .proj₂ kb∈ kv∈) (∃b .proj₂)
          where
          open ≡-Reasoning
          m₁′ m₂′ : A ⇀ B; m₁′ = filterᵐ P′ m₁; m₂′ = filterᵐ P′ m₂

          k∈∪dom′ : k ∈ dom m₁′ ∪ dom m₂′
          k∈∪dom′ = to ∈-∪ $ inj₁ (∈-dom-filterʳ m₁ (Pkv , k∈₁))

          ∃b : Σ B λ • → (k , •) ∈ m₁′ ∪⁺ m₂′
          ∃b = ∥ m₁′ ∪⁺ m₂′ ∥ (∈-incl-set k∈∪dom′ .proj₁) , k×∥∪⁺∥∈∪⁺' k∈∪dom′

          b : B
          b = ∃b .proj₁

          kb∈′ : (k , b) ∈ filterᵐ P′ (m₁ ∪⁺ m₂)
          kb∈′ = filterᵐ-∪⁺-distr-⊇ m₁ m₂ (∃b .proj₂)

          kb∈ : (k , b) ∈ m₁ ∪⁺ m₂
          kb∈ = (from ∈-filter kb∈′) .proj₂

      ... | no k∉₁ | yes k∈₂ =
        subst (λ • → (k , •) ∈ m₁′ ∪⁺ m₂′) ((m₁ ∪⁺ m₂) .proj₂ kb∈ kv∈) (∃b .proj₂)
          where
          open ≡-Reasoning
          m₁′ m₂′ : A ⇀ B; m₁′ = filterᵐ P′ m₁; m₂′ = filterᵐ P′ m₂

          k∈∪dom′ : k ∈ dom m₁′ ∪ dom m₂′
          k∈∪dom′ = to ∈-∪ $ inj₂ (∈-dom-filterʳ m₂ (Pkv , k∈₂))

          ∃b : Σ B λ • → (k , •) ∈ m₁′ ∪⁺ m₂′
          ∃b = ∥ m₁′ ∪⁺ m₂′ ∥ (∈-incl-set k∈∪dom′ .proj₁) , k×∥∪⁺∥∈∪⁺' k∈∪dom′

          b : B
          b = ∃b .proj₁

          kb∈′ : (k , b) ∈ filterᵐ P′ (m₁ ∪⁺ m₂)
          kb∈′ = filterᵐ-∪⁺-distr-⊇ m₁ m₂ (∃b .proj₂)

          kb∈ : (k , b) ∈ m₁ ∪⁺ m₂
          kb∈ = (from ∈-filter kb∈′) .proj₂


      ... | yes k∈₁ | no k∉₂ =
        subst (λ • → (k , •) ∈ m₁′ ∪⁺ m₂′) ((m₁ ∪⁺ m₂) .proj₂ kb∈ kv∈) (∃b .proj₂)
          where
          open ≡-Reasoning
          m₁′ m₂′ : A ⇀ B; m₁′ = filterᵐ P′ m₁; m₂′ = filterᵐ P′ m₂

          k∈∪dom′ : k ∈ dom m₁′ ∪ dom m₂′
          k∈∪dom′ = to ∈-∪ $ inj₁ (∈-dom-filterʳ m₁ (Pkv , k∈₁))

          ∃b : Σ B λ • → (k , •) ∈ m₁′ ∪⁺ m₂′
          ∃b = ∥ m₁′ ∪⁺ m₂′ ∥ (∈-incl-set k∈∪dom′ .proj₁) , k×∥∪⁺∥∈∪⁺' k∈∪dom′

          b : B
          b = ∃b .proj₁

          kb∈′ : (k , b) ∈ filterᵐ P′ (m₁ ∪⁺ m₂)
          kb∈′ = filterᵐ-∪⁺-distr-⊇ m₁ m₂ (∃b .proj₂)

          kb∈ : (k , b) ∈ m₁ ∪⁺ m₂
          kb∈ = (from ∈-filter kb∈′) .proj₂

      ... | no k∉₁ | no k∉₂ with from ∈-∪ (∪⁺-dom∪ kv∈)
      ... | inj₁ k∈₁ = ⊥-elim (k∉₁ k∈₁)
      ... | inj₂ k∈₂ = ⊥-elim (k∉₂ k∈₂)


      -- MAIN LEMMA --
      filterᵐ-∪⁺-distr : (m₁ m₂ : A ⇀ B) → filterᵐ P′ (m₁ ∪⁺ m₂) ≡ᵐ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
      filterᵐ-∪⁺-distr m₁ m₂ = filterᵐ-∪⁺-distr-⊆ m₁ m₂ , filterᵐ-∪⁺-distr-⊇ m₁ m₂


      filterᵐ-singleton-true : P k → filterᵐ P′ ❴ k , v ❵ ≡ᵐ ❴ k , v ❵
      filterᵐ-singleton-true p .proj₁ = proj₂ ∘ (from ∈-filter)
      filterᵐ-singleton-true {k}{v} p .proj₂ {a} x = to ∈-filter (subst P′ (sym (from ∈-singleton x)) p , x)

      filterᵐ-singleton-false : ¬ P k → filterᵐ P′ ❴ k , v ❵ ≡ᵐ ∅
      filterᵐ-singleton-false ¬p .proj₁ x =
        ⊥-elim $ ¬p $ subst P′ (from ∈-singleton $ proj₂ (from ∈-filter x)) (proj₁ $ from ∈-filter x)
      filterᵐ-singleton-false _ .proj₂ = ⊥-elim ∘ ∉-∅

      filterᵐ-restrict : ∀ m {ks} → filterᵐ P′ (m ∣ ks ᶜ) ≡ᵐ filterᵐ P′ m ∣ ks ᶜ
      filterᵐ-restrict m {ks} .proj₁ {a , b} h with from ∈-filter h
      ... | Pa , ab∈m∖ks with resᶜ-dom∉⁻ m ab∈m∖ks
      ... | ab∈m , a∉ks = resᶜ-dom∉⁺ (filterᵐ P′ m) (to ∈-filter (Pa , ab∈m) , a∉ks)
      filterᵐ-restrict m {ks} .proj₂ {a , b} h with resᶜ-dom∉⁻ (filterᵐ P′ m) h
      ... | ab∈m′ , a∉ks = to ∈-filter (from ∈-filter ab∈m′ .proj₁
                                       , resᶜ-dom∉⁺ m (from ∈-filter ab∈m′ .proj₂ , a∉ks))

      ∈-filter-res- : {x : A × B} (m : A ⇀ B) → x ∈ filterᵐ P′ m ∣ ❴ k ❵ → P′ x × ∃[ b ] x ≡ (k , b)
      ∈-filter-res- m x∈ = proj₁ (from ∈-filter $ res-⊆ x∈) , res-singleton''{m = filterᵐ P′ m} x∈

      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Σ A (λ x → B)})
      open SetoidReasoning (≡ᵉ-Setoid{Σ A (λ x → B)})

      restrict-singleton-filterᵐ-false : ∀ m → ¬ P k → filterᵐ P′ m ∣ ❴ k ❵ ᶜ ≡ᵐ filterᵐ P′ m
      restrict-singleton-filterᵐ-false {k} m ¬p = ≡ᵉ.sym $
        begin
        filterᵐ P′ m ˢ                                        ≈⟨ ≡ᵉ.sym (res-ex-∪ Dec-∈-singleton) ⟩
        (filterᵐ P′ m ∣ ❴ k ❵) ˢ ∪ (filterᵐ P′ m ∣ ❴ k ❵ ᶜ)ˢ  ≈⟨ ∪-cong ¬P→res-∅ ≡ᵉ.refl ⟩
        ∅ ∪ (filterᵐ P′ m ∣ ❴ k ❵ ᶜ) ˢ                        ≈⟨ ∪-identityˡ _ ⟩
        (filterᵐ P′ m ∣ ❴ k ❵ ᶜ) ˢ                            ∎
          where
          ¬P→res-∅ :  (filterᵐ P′ m ∣ ❴ k ❵)ˢ ≡ᵉ ∅
          ¬P→res-∅ .proj₁ {a} x with ∈-filter-res- m x
          ... | px , b , refl = ⊥-elim (¬p px)
          ¬P→res-∅ .proj₂ = ⊥-elim ∘ ∉-∅


    opaque
      lem-add-included : P k → filterᵐ P′ (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P′ m ∪⁺ ❴ k , v ❵
      lem-add-included p =
        filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l (filterᵐ-singleton-true p)

      lem-add-excluded : ¬ P k → filterᵐ P′ (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P′ m
      lem-add-excluded p =
        filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l (filterᵐ-singleton-false p) ⟨≈⟩ ∪⁺-id-r _

      lem-del-excluded : ∀ m → ¬ P k → filterᵐ P′ (m ∣ ❴ k ❵ ᶜ) ≡ᵐ filterᵐ P′ m
      lem-del-excluded m ¬p = filterᵐ-restrict m ⟨≈⟩ restrict-singleton-filterᵐ-false m ¬p
