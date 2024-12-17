{-# OPTIONS --allow-unsolved-metas #-}

module Ledger.Conway.Conformance.Equivalence.Map where

open import Ledger.Prelude  -- renaming (trans to infixr 1 _⟨≡⟩_)
open import Axiom.Set.Properties th
open import Axiom.Set.Map.Dec

import Algebra as Alg
import Algebra.Definitions as AlgDefs
import Algebra.Structures as AlgStrucs

-- Cancellative _•_ = (LeftCancellative _•_) × (RightCancellative _•_)
-- open import Class.Semigroup

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



module _  {A B : Type} -- {_◇_ : Alg.Op₂ B}
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
  -- TODO: fix this! (if possible)
  -- I should probably be using the `◇-comm` property of the instance
  -- `⦃ _ : CommutativeMonoid _ _ B ⦄` here, but I don't know how to specify that
  -- the instance's _≈_ is _≡_, so here I'm instead using the standard library's
  -- commutative semigroup (which I do know how to use).

  open Equivalence

  -- Properties of domains of maps of type m₁ ∪⁺ m₂ ---------------------

  dom∪-∃∪⁺ : {m₁ m₂ : A ⇀ B} → k ∈ dom m₁ ∪ dom m₂ → Σ B (λ v → (k , v) ∈ m₁ ∪⁺ m₂)
  dom∪-∃∪⁺ k∈ = from dom∈ (∪dom⊆dom∪⁺ k∈)

  ∪⁺-dom∪ : {m₁ m₂ : A ⇀ B}{k : A} {v : B} → (k , v) ∈ m₁ ∪⁺ m₂ → k ∈ dom m₁ ∪ dom m₂
  ∪⁺-dom∪ {v = v} kv∈ = dom∪⁺⊆∪dom (to dom∈ (v , kv∈))


  -- Values associated with a key k in the domain of `m₁ ∪⁺ m₂` can be computed in two ways:

  -- 1. from the property of a map (there must be a value associated with k in domain---look it up!)
  ∥_∪⁺_∥ : (m₁ m₂ : A ⇀ B) → k ∈ dom m₁ ∪ dom m₂ → B
  ∥ m₁ ∪⁺ m₂ ∥ k∈ = proj₁ (dom∪-∃∪⁺{m₁ = m₁}{m₂}  k∈)

  -- 2. from the definition of ∪⁺ (fold over the union of the two maps).
  ∥_∪⁺_∥ᵈᵉᶠ : (m₁ m₂ : A ⇀ B) → k ∈ dom m₁ ∪ dom m₂ → B
  ∥_∪⁺_∥ᵈᵉᶠ {k} m₁ m₂ p = fold id id _◇_ (unionThese m₁ m₂ k p)

  F[_,_] : (m₁ m₂ : A ⇀ B) → Σ A (λ x → x ∈ dom m₁ ∪ dom m₂) → A × B
  F[ m₁ , m₂ ] (x , x∈) = x , ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ x∈

  _⊕_ : (m₁ m₂ : A ⇀ B) → ℙ (A × B)
  m₁ ⊕ m₂ = mapˢ F[ m₁ , m₂ ] (incl-set (dom (m₁ ˢ) ∪ dom (m₂ ˢ)))

  ∪⁺-def : {m₁ m₂ : A ⇀ B} {x : A × B} → x ∈ (m₁ ∪⁺ m₂) ˢ ⇔ x ∈ m₁ ⊕ m₂
  ∪⁺-def = mk⇔ id id

  -- lookupᵐ∈ : (m : A ⇀ B) → k ∈ dom m → B
  -- lookupᵐ∈ _ p = ∈-map .from p .proj₁ .proj₂

  -- ∈-lookupᵐ∈ : (m : A ⇀ B)(k∈ : k ∈ dom m) → (k , lookupᵐ∈ m k∈) ∈ m
  -- ∈-lookupᵐ∈ m k∈ = {!!} -- proj₂ (from dom∈ k∈)

  lookupᵐ∈ : (m : A ⇀ B) → k ∈ dom m → B
  lookupᵐ∈ _ = proj₁ ∘ (from dom∈)

  ∈-lookupᵐ∈ : (m : A ⇀ B)(k∈ : k ∈ dom m) → (k , lookupᵐ∈ m k∈) ∈ m
  ∈-lookupᵐ∈ m k∈ = proj₂ (from dom∈ k∈)

  lookupᵐ∈≡ : (m : A ⇀ B) {k∈ : k ∈ dom m} → lookupᵐ∈ m k∈ ≡ lookupᵐ m k
  lookupᵐ∈≡ {k = k} _ {k∈} = refl

  ∈-lookupᵐ : {m : A ⇀ B} {k∈ : k ∈ dom m} → (k , lookupᵐ m k) ∈ m
  ∈-lookupᵐ {k = k}{m = m}{k∈}  = subst (λ x → (k , x) ∈ m) (lookupᵐ∈≡ m) (proj₂ (from dom∈ k∈))




  opaque  -- unfolding List-Model List-Modelᵈ to-sp

    -- Properties of values of ∪⁺ ----------------------

    -- 0. The following lemma (∈-incl-set) will be useful for proving some ∪⁺ properties.
    ∈-incl-set : {X : ℙ A} {a : A} (a∈X : a ∈ X) → Σ (a ∈ X) λ a∈X′ → (a , a∈X′) ∈ incl-set X
    ∈-incl-set {X} {a} a∈X =
      Data.Product.map₂ (λ {a∈X′} eq → ∈-mapPartial {f = incl-set' X} .to (a , a∈X′ , eq))
                        lem
      where
        lem : Σ (a ∈ X) λ a∈X′ → incl-set' X a ≡ just (a , a∈X′)
        lem with a ∈? X
        ... | yes a∈X′ = a∈X′ , refl
        ... | no  a∉X  = ⊥-elim (a∉X a∈X)

    -- 1. If v is the value obtained using the property of maps (i.e., v = ∥ m₁ ∪⁺ m₂ ∥ k∈)
    --    then (k , v) ∈ m₁ ∪⁺ m₂.
    k×∥∪⁺∥∈∪⁺ : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
              → (k , ∥ m₁ ∪⁺ m₂ ∥ k∈) ∈ m₁ ∪⁺ m₂
    k×∥∪⁺∥∈∪⁺ {m₁ = m₁} {m₂} k∈ = dom∪-∃∪⁺ k∈ .proj₂


    -- 2. If v is any value such that (k , v) ∈ m₁ ∪⁺ m₂, then v = ∥ m₁ ∪⁺ m₂ ∥ k∈.
    ∪⁺-val≡  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
             → (k , v) ∈ m₁ ∪⁺ m₂ → v ≡ ∥ m₁ ∪⁺ m₂ ∥ k∈
    ∪⁺-val≡ {m₁ = m₁} {m₂} k∈ kv∈ = (m₁ ∪⁺ m₂) .proj₂ kv∈ (k×∥∪⁺∥∈∪⁺ k∈)


    -- 3. If `k ∈ dom m₁ ∪ dom m₂` then there is a proof `k∈′` of `dom m₁ ∪ dom m₂`
    --    such that, if `v` is the val obtained using the def of `∪⁺` with `k∈′`
    --    (i.e., `v = ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′`), then `(k, v) ∈ m₁ ∪⁺ m₂`.
    k×∥∪⁺∥ᵈᵉᶠ∈∪⁺  : {m₁ m₂ : A ⇀ B} → k ∈ dom m₁ ∪ dom m₂
                 → Σ (k ∈ dom m₁ ∪ dom m₂) λ k∈′ → (k , ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′) ∈ m₁ ∪⁺ m₂
    k×∥∪⁺∥ᵈᵉᶠ∈∪⁺ {k = k} k∈ with ∈-incl-set k∈
    ... | k∈′ , kk∈ = k∈′ , to ∈-map ((k , k∈′) , refl , kk∈)

    k×∥∪⁺∥ᵈᵉᶠ∈∪⁺'  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
                 → (k , ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ (∈-incl-set k∈ .proj₁)) ∈ m₁ ∪⁺ m₂
    k×∥∪⁺∥ᵈᵉᶠ∈∪⁺' {k = k} k∈ = let
      k∈′ = ∈-incl-set k∈ .proj₁
      kk∈ = ∈-incl-set k∈ .proj₂
      in to ∈-map ((k , k∈′) , refl , kk∈)
      --  Another way to express the goal `(k , ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′) ∈ m₁ ∪⁺ m₂` above
      --  is `F[ m₁ , m₂ ] (k , k∈′) ∈ mapˢ F[ m₁ , m₂ ] (incl-set (dom m₁ ∪ dom m₂))`.


    -- 4. If (k , v) ∈ m₁ ∪⁺ m₂, then there is a proof `k∈′` of `dom m₁ ∪ dom m₂`
    --    such that `v ≡ ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′`.
    ∪⁺-def-val-lem  : {m₁ m₂ : A ⇀ B} → k ∈ dom m₁ ∪ dom m₂ → (k , v) ∈ m₁ ∪⁺ m₂
                    → Σ (k ∈ dom m₁ ∪ dom m₂) λ k∈′ → v ≡ ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′
    ∪⁺-def-val-lem {k = k} {m₁ = m₁} {m₂} k∈ kv∈ with ∈-incl-set k∈
    ... | k∈′ , kk∈ = k∈′ , (m₁ ∪⁺ m₂) .proj₂ kv∈ (to ∈-map ((k , k∈′) , refl , kk∈))

    ∪⁺-def-val-lem'  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂) → (k , v) ∈ m₁ ∪⁺ m₂
                     → v ≡ ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ (∈-incl-set k∈ .proj₁)
    ∪⁺-def-val-lem' {k = k} {m₁ = m₁} {m₂} k∈ kv∈ = let  k∈′ = ∈-incl-set k∈ .proj₁
                                                         kk∈ = ∈-incl-set k∈ .proj₂
      in (m₁ ∪⁺ m₂) .proj₂ kv∈ (to ∈-map ((k , k∈′) , refl , kk∈))


    -- 5. Vals obtained using the property of maps and the def of ∪⁺ are equal.
    ∥∪⁺∥ᵈᵉᶠ≡∥∪⁺∥  : {m₁ m₂ : A ⇀ B} (k∈ : k ∈ dom m₁ ∪ dom m₂)
                 → Σ (k ∈ dom m₁ ∪ dom m₂) λ k∈′ → ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈′ ≡ ∥ m₁ ∪⁺ m₂ ∥ k∈
    ∥∪⁺∥ᵈᵉᶠ≡∥∪⁺∥  {k = k} {m₁ = m₁} {m₂} k∈ with k×∥∪⁺∥ᵈᵉᶠ∈∪⁺{m₁ = m₁}{m₂} k∈
    ... | k∈′ , kk∈ = k∈′ , ∪⁺-val≡ k∈ kk∈


    ------------------------------------------------------------------------------------------------

    resᶜ-dom∉⁻ : ∀ m {ks}{a : A}{b : B} → (a , b) ∈ (m ∣ ks ᶜ) ˢ → ((a , b) ∈ m ˢ × a ∉ ks)
    resᶜ-dom∉⁻ m x = (ex-⊆ x) , proj₁ (∈-resᶜ-dom⁻ (∈-dom x))

    resᶜ-dom∉⁺ : ∀ m {ks}{a : A}{b : B} → ((a , b) ∈ m ˢ × a ∉ ks) → (a , b) ∈ (m ∣ ks ᶜ) ˢ
    resᶜ-dom∉⁺ m = to ∈-filter ∘ swap

    cong-⊆⇒congᵐ : {f : (A ⇀ B) → (A ⇀ B)} → f Preserves _⊆_ ⟶ _⊆_ → f Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    cong-⊆⇒congᵐ h m≡ᵐm' = h (proj₁ m≡ᵐm') , h (proj₂ m≡ᵐm')

    deconstruct-∪⁺ : {m m₁ m₂ : A ⇀ B} {a : A}
                     {a∈₁ : a ∈ dom (m ˢ) ∪ dom (m₁ ˢ)}
                     {a∈₂ : a ∈ dom (m ˢ) ∪ dom (m₂ ˢ)}
                     → m₁ ≡ᵐ m₂ → ∥ m ∪⁺ m₁ ∥ᵈᵉᶠ a∈₁ ≡ ∥ m ∪⁺ m₂ ∥ᵈᵉᶠ a∈₂

    deconstruct-∪⁺ {m} {m₁} {m₂} {a} {a∈₁} m₁≡m₂
      with a ∈? dom (m ˢ) | a ∈? dom (m₁ ˢ) | a ∈? dom (m₂ ˢ)
    ... | yes a∈m | yes a∈m₁ | yes a∈m₂ =
      cong (λ (u : B) → (lookupᵐ m a) ◇ u)
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

--   ∥_∪⁺_∥ᵈᵉᶠ {k} m₁ m₂ p = fold id id _◇_ (unionThese m₁ m₂ k p)

    fold-◇-union-comm : {m₁ m₂ : A ⇀ B} {a : A}
                        {a∈₁ : a ∈ dom (m₁ ˢ) ∪ dom (m₂ ˢ)}
                        {a∈₂ : a ∈ dom (m₂ ˢ) ∪ dom (m₁ ˢ)}

                      → ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ (∈-incl-set a∈₁ .proj₁)
                      ≡ ∥ m₂ ∪⁺ m₁ ∥ᵈᵉᶠ (∈-incl-set a∈₂ .proj₁)
    -- N.B.
    -- `∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ (∈-incl-set a∈₁ .proj₁)` is, by def,
    -- `fold id id _◇_ (unionThese m₁ m₂ a (∈-incl-set a∈₁ .proj₁))`

    fold-◇-union-comm {m₁} {m₂} {a} {a∈₁} {a∈₂} with a ∈? dom (m₁ ˢ) | a ∈? dom (m₂ ˢ)
    ... | yes a∈m₁ | yes a∈m₂ = ◇comm (lookupᵐ m₁ a) (lookupᵐ m₂ a)
    ... | no  a∉m₁ | yes a∈m₂ = refl
    ... | yes a∈m₁ | no  a∉m₂ = refl
    ... | no  a∉m₁ | no  a∉m₂ with from ∈-∪ a∈₁
    ... | inj₁ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)
    ... | inj₂ a∈m₂ = ⊥-elim (a∉m₂ a∈m₂)


    ∪⁺-comm-⊆ : {m₁ m₂ : A ⇀ B} → m₁ ∪⁺ m₂ ⊆ m₂ ∪⁺ m₁
    ∪⁺-comm-⊆ {m₁} {m₂} {a} {b} ab∈ with a ∈? dom (m₁ ˢ) | a ∈? dom (m₂ ˢ)
    ... | yes a∈m₁ | _ = to ∈-map $ (a , ∈-incl-set a∈˘ .proj₁)
                                  , ×-≡,≡→≡ (refl , b≡) , ∈-incl-set a∈₂ .proj₂
      where
      a∈₂ : a ∈ unions (fromList (dom m₂ ∷ dom m₁ ∷ [])) .proj₁
      a∈₂ = to ∈-unions (dom m₁ , to ∈-fromList (there (here refl)) , a∈m₁)

      a∈˘ : a ∈ dom (m₂ ˢ) ∪ dom (m₁ ˢ)
      a∈˘ = to ∈-∪ (inj₂ a∈m₁)

      b≡ : b ≡ fold id id _◇_ (unionThese m₂ m₁ a (∈-incl-set a∈˘ .proj₁))
      b≡ = trans (∪⁺-def-val-lem' (to ∈-∪ (inj₁ a∈m₁)) ab∈) fold-◇-union-comm

    ... | no a∉m₁ | yes a∈m₂ = to ∈-map $ (a , ∈-incl-set a∈˘ .proj₁)
                                        , ×-≡,≡→≡ (refl , b≡) , ∈-incl-set a∈₂ .proj₂
      where
      a∈₂ : a ∈ unions (fromList (dom m₂ ∷ dom m₁ ∷ [])) .proj₁
      a∈₂ = to ∈-unions (dom m₂ , to ∈-fromList (here refl) , a∈m₂)

      a∈˘ : a ∈ dom (m₂ ˢ) ∪ dom (m₁ ˢ)
      a∈˘ = to ∈-∪ (inj₁ a∈m₂)

      b≡ : b ≡ fold id id _◇_ (unionThese m₂ m₁ a (∈-incl-set a∈˘ .proj₁))
      b≡ = trans (∪⁺-def-val-lem' (to ∈-∪ (inj₂ a∈m₂)) ab∈) fold-◇-union-comm

    ... | no  a∉m₁ | no a∉m₂ with from ∈-∪ (∪⁺-dom∪ ab∈)
    ... | inj₁ a∈m₁ = ⊥-elim (a∉m₁ a∈m₁)
    ... | inj₂ a∈m₂ = ⊥-elim (a∉m₂ a∈m₂)


    ∪⁺-comm : {m₁ m₂ : A ⇀ B} → m₁ ∪⁺ m₂ ≡ᵐ m₂ ∪⁺ m₁
    ∪⁺-comm = ∪⁺-comm-⊆ , ∪⁺-comm-⊆

    ∪⁺-cong-⊆ˡ : {m m₁ m₂ : A ⇀ B} → m₁ ≡ᵐ m₂ → m ∪⁺ m₁ ⊆ m ∪⁺ m₂
    ∪⁺-cong-⊆ˡ {m}{m₁}{m₂} m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) {k} {v} kv∈ with from ∈-map kv∈
    ... | (.k , k∈) , refl , s =
      let k∈'' , ∈inclset = ∈-incl-set k∈'
          ≡F : (k , v) ≡ F[ m , m₂ ] (k , k∈'')
          ≡F = ×-≡,≡→≡ (refl , deconstruct-∪⁺ {a∈₁ = k∈} m₁≡m₂)
      in  to (∈-map {f = F[ m , m₂ ]}) ((k , k∈'') , ≡F , ∈inclset)
      where
      a∈-∪dom₁ : k ∈ dom (m ˢ) ∪ dom (m₁ ˢ)
      a∈-∪dom₁ = dom∪⁺⊆∪dom (to dom∈ (v , kv∈))

      dom₁⊆dom₂ : dom (m₁ ˢ) ⊆ dom (m₂ ˢ)
      dom₁⊆dom₂ = dom⊆ m₁⊆m₂

      k∈' : k ∈ dom (m ˢ) ∪ dom (m₂ ˢ)
      k∈' = ∪-cong-⊆ id dom₁⊆dom₂ a∈-∪dom₁

    ∪⁺-cong-l' : {m : A ⇀ B} → (λ m' → m ∪⁺ m') Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-l' m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) = (∪⁺-cong-⊆ˡ m₁≡m₂) , ∪⁺-cong-⊆ˡ (m₂⊆m₁ , m₁⊆m₂)

    ∪⁺-cong-l : {m m₁ m₂ : A ⇀ B} → m₁ ≡ᵐ m₂ → m ∪⁺ m₁ ≡ᵐ m ∪⁺ m₂
    ∪⁺-cong-l = ∪⁺-cong-l'

    ∪⁺-cong-r' : {m : A ⇀ B} → (λ m' → m' ∪⁺ m) Preserves _≡ᵐ_ ⟶ _≡ᵐ_
    ∪⁺-cong-r' m₁≡m₂ .proj₁ kv∈m₁m = proj₁ ∪⁺-comm (∪⁺-cong-⊆ˡ m₁≡m₂ (proj₁ ∪⁺-comm kv∈m₁m))
    ∪⁺-cong-r' m₁≡m₂@(m₁⊆m₂ , m₂⊆m₁) .proj₂ kv∈m₂m =
      proj₁ ∪⁺-comm (∪⁺-cong-⊆ˡ (m₂⊆m₁ , m₁⊆m₂) (proj₁ ∪⁺-comm kv∈m₂m))

    ∪⁺-cong-r : (m m₁ m₂ : A ⇀ B) → m₁ ≡ᵐ m₂ → m₁ ∪⁺ m ≡ᵐ m₂ ∪⁺ m
    ∪⁺-cong-r m m₁ m₂ = ∪⁺-cong-r'

    ∪⁺-dom-id : (m : A ⇀ B) → dom m ≡ᵉ dom m ∪ dom (∅{A ⇀ B} ˢ)
    ∪⁺-dom-id m = begin
      dom m ≈˘⟨ ∪-identityʳ (dom m) ⟩
      dom m ∪ ∅ ≈˘⟨ ∪-cong ≡ᵉ.refl dom∅ ⟩
      dom m ∪ dom (∅{A ⇀ B} ˢ)
      ∎
      where
      open SetoidReasoning (≡ᵉ-Setoid{A})
      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {A})

    ∪⁺-id-dom∈ :  (m : A ⇀ B) → k ∈ dom m  ⇔  k ∈ dom m ∪ dom(∅{A ⇀ B}ˢ)
    ∪⁺-id-dom∈ m = mk⇔ (proj₁ (∪⁺-dom-id m)) (proj₂ (∪⁺-dom-id m))


    ∪⁺-id-lemma  :  (m : A ⇀ B)
                    (k∈m : k ∈ dom m)
                    (k∈ : k ∈ dom m ∪ dom(∅{A ⇀ B}ˢ))
                 →  lookupᵐ∈ m k∈m ≡ ∥ m ∪⁺ ∅{A ⇀ B} ∥ᵈᵉᶠ k∈

    ∪⁺-id-lemma {k} m k∈domm k∈domm∪ with k ∈? dom (m ˢ) | k ∈? dom (∅{A ⇀ B} ˢ)
    ... | _ | yes  k∈∅ = ⊥-elim (⊥-elim (∉-dom∅ k∈∅))
    ... | no  k∉m | no  k∉∅ = case from ∈-∪ k∈domm∪ of λ where
      (inj₁ k∈m) → ⊥-elim (k∉m k∈m)
      (inj₂ k∈∅) → ⊥-elim (k∉∅ k∈∅)
    ... | yes k∈m | no  k∉∅ with from ∈-map k∈domm
    ... | (.k , v) , refl , kv∈m = m .proj₂ kv∈m (∈-lookupᵐ∈ m k∈m)
                                  -- goal : v ≡ lookupᵐ∈ m k∈m --

    ∪⁺-id-r : (m : A ⇀ B) → m ∪⁺ ∅{A ⇀ B} ≡ᵐ m
    ∪⁺-id-r m .proj₁ {(k , v)} kv∈m∅ with from ∈-map kv∈m∅
    ... | (.k , k∈) , refl , snd =
      subst (λ x → (k , x) ∈ m)
            (∪⁺-id-lemma m (from (∪⁺-id-dom∈ m) k∈) k∈)
            (∈-lookupᵐ∈ m (from (∪⁺-id-dom∈ m) k∈))

    ∪⁺-id-r m .proj₂ {(k , v)} kv∈m with to dom∈ (v , kv∈m)
    ... | k∈m =
      subst (λ x → (k , x) ∈ m ∪⁺ ∅{A ⇀ B}) (trans (sym lu≡) (sym v≡)) (k×∥∪⁺∥ᵈᵉᶠ∈∪⁺' k∈)
      where
      k∈ : k ∈ dom m ∪ dom(∅{A ⇀ B}ˢ)
      k∈ = to (∪⁺-id-dom∈ m) k∈m

      lu≡ : lookupᵐ∈ m (∈-incl-set k∈m .proj₁) ≡ ∥ m ∪⁺ (∅{A ⇀ B}) ∥ᵈᵉᶠ (∈-incl-set k∈ .proj₁)
      lu≡ = ∪⁺-id-lemma m (∈-incl-set k∈m .proj₁) (∈-incl-set k∈ .proj₁)

      v≡ : v ≡ lookupᵐ∈ m (∈-incl-set k∈m .proj₁)
      v≡ = m .proj₂ kv∈m (∈-lookupᵐ∈ m (∈-incl-set k∈m .proj₁))


    restrict-cong : (m₁ m₂ : A ⇀ B) (ks : ℙ A) → m₁ ≡ᵐ m₂ → (m₁ ∣ ks ᶜ) ≡ᵐ (m₂ ∣ ks ᶜ)
    restrict-cong m₁ m₂ ks (m₁⊆m₂ , _) .proj₁ ab∈ with resᶜ-dom∉⁻ m₁ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₂ (m₁⊆m₂ ab∈ , a∉)
    restrict-cong m₁ m₂ ks (m₁⊆m₂ , m₂⊆m₁) .proj₂ ab∈ with resᶜ-dom∉⁻ m₂ ab∈
    ... | ab∈ , a∉ = resᶜ-dom∉⁺ m₁ (m₂⊆m₁ ab∈ , a∉)


    -- lemma : ∀ (m₁ m₁′ m₂ m₂′ : A ⇀ B)
    --       → m₁′ ⊆ m₁ → m₂′ ⊆ m₂
    --       → (k , v) ∈ m₁′ ∪⁺ m₂′
    --       → (k∈m₁m₂ : k ∈ dom m₁ ∪ dom m₂)
    --       → These (k ∈ dom m₁′) (k ∈ dom m₂′)
    --       → v ≡ join-val m₁ m₂ (k , k∈m₁m₂)
    -- lemma {k = k} m₁ m₁′ m₂ m₂′ inc₁ inc₂ kv∈m₁m₂′ k∈m₁m₂ p with k ∈? dom m₁ | k ∈? dom m₂
    -- ... | no ∉₁ | no ∉₂ = ⊥-elim $ fold (λ ∈₁   → ∉₁ (dom⊆ inc₁ ∈₁))
    --                                     (λ ∈₂   → ∉₂ (dom⊆ inc₂ ∈₂))
    --                                     (λ ∈₁ _ → ∉₁ (dom⊆ inc₁ ∈₁))
    --                                     p
    -- ... | no  ∉₁ | yes ∈₂ = {!!}
    -- ... | yes ∈₁ | no  ∉₂ = {!!}
    -- ... | yes ∈₁ | yes ∈₂ = {!!}

  module _ {P : A → Type} ⦃ _ : P ⁇¹ ⦄ where

    P′ : A × B → Type
    P′ (k , _) = P k

    P→P′ : P k → ∀ b → P′ (k , b)
    P→P′ = λ z _ → z

    ∈-dom-filter-P : (m : A ⇀ B) → k ∈ dom (filterᵐ P′ m) → P k
    ∈-dom-filter-P _ k∈domf = proj₁ (from ∈-filter (proj₂ (from dom∈ k∈domf)))

    ∪⁺-filter-P′ : (m₁ m₂ : A ⇀ B) → (k , v) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂ → P′ (k , v)
    ∪⁺-filter-P′ {k = k}{v} m₁ m₂ kv∈ with (from ∈-∪ (∪⁺-dom∪ kv∈))
    ... | inj₁ k∈₁ = ∈-dom-filter-P m₁ k∈₁
    ... | inj₂ k∈₂ = ∈-dom-filter-P m₂ k∈₂

    ∈-dom-filter-dom : (m : A ⇀ B) → k ∈ dom (filterᵐ P′ m) → k ∈ dom m
    ∈-dom-filter-dom m k∈domf with from dom∈ k∈domf
    ... | b , kb∈filter = to dom∈ (b , proj₂ ((from ∈-filter) kb∈filter))

    lookup-filter-lookup  : (m : A ⇀ B) (k∈ : k ∈ dom m) (k∈′ : k ∈ dom (filterᵐ P′ m))
                          → lookupᵐ∈ m k∈ ≡ lookupᵐ∈ (filterᵐ P′ m) k∈′
    lookup-filter-lookup m k∈ k∈′ =
      (m .proj₂) (∈-lookupᵐ∈ m k∈) (proj₂ (from ∈-filter (∈-lookupᵐ∈ (filterᵐ P′ m) k∈′)))

    ∈-∪⁺-l  : (m₁ m₂ : A ⇀ B) {a : A} {b : B} (a∈₁ : a ∈ dom m₁)
            → (a , b) ∈ m₁ ∪⁺ m₂ → a ∉ dom m₂
            → b ≡ lookupᵐ∈ m₁ a∈₁
    ∈-∪⁺-l m₁ m₂ {a}{b} a∈₁ ab∈ a∉₂ with a ∈? dom m₁ | a ∈? dom (m₂ ˢ)

    ... | _ | yes a∈₂ = ⊥-elim (a∉₂ a∈₂)
    ... | no a∉₁ | _ = ⊥-elim (a∉₁ a∈₁)
    ... | yes a∈₁' | no a∉₂' = {!!}

    ∪⁺-filter-lem : ∀ (m₁ m₂ : A ⇀ B) {a : A} {b : B}
          → (a , b) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
          → (a∈ : a ∈ dom (m₁ ˢ))
          → a ∉ dom m₂
          → (a , b) ∈ filterᵐ P′ m₁
    ∪⁺-filter-lem m₁ m₂ {a} {b} ab∈' a∈ a∉ =
      subst (λ x → (a , x) ∈ filterᵐ P′ m₁) lu≡b (proj₂ ((from dom∈) a∈f₁))
      where
      ab∈₁ : Σ B (λ b → (a , b) ∈ m₁)
      ab∈₁ = from dom∈ a∈

      P′ab : P′ (a , b)
      P′ab = ∪⁺-filter-P′ m₁ m₂ ab∈'

      a∈f₁ : a ∈ dom (filterᵐ P′ m₁)
      a∈f₁ = to dom∈ (proj₁ ab∈₁ , (to ∈-filter (P→P′ P′ab b , proj₂ ab∈₁)))

      a∉f₂ : a ∉ dom (filterᵐ P′ m₂)
      a∉f₂ = a∉ ∘ (∈-dom-filter-dom m₂)

      lu≡b : lookupᵐ∈ (filterᵐ P′ m₁) a∈f₁ ≡ b
      lu≡b = sym (∈-∪⁺-l (filterᵐ P′ m₁) (filterᵐ P′ m₂) a∈f₁ ab∈' a∉f₂)

    lemma' : ∀ (m₁ m₂ : A ⇀ B) {a : A} {b : B}
          → (a , b) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
          → (a∈ : a ∈ dom (m₁ ˢ))
          → a ∉ dom m₂
          → b ≡ lookupᵐ∈ m₁ a∈
    lemma' m₁ m₂ {a} {b} ab∈' a∈ a∉ = proj₂ m₁ ζ (proj₂ (from dom∈ a∈))
      where
      ξ : (a , b) ∈ filterᵐ P′ m₁
      ξ = ∪⁺-filter-lem m₁  m₂ ab∈'  a∈  a∉

      ζ : (a , b) ∈ m₁
      ζ = proj₂ (from ∈-filter ξ)

    lemma : ∀ (m₁ m₂ : A ⇀ B)
          → (k , v) ∈ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
          → (k∈ : k ∈ dom m₁ ∪ dom m₂)
          → k ∈ dom (m₁ ∪⁺ m₂)
          → These (k ∈ dom(filterᵐ P′ m₁)) (k ∈ dom(filterᵐ P′ m₂))
          → v ≡ ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈

    lemma {k = k} {v} m₁ m₂ kv∈ k∈dom∪ k∈dom∪⁺ (this k∈m₁′) with k ∈? dom m₁ | k ∈? dom m₂
    ... | no ∉₁ | _ = ⊥-elim $ ∉₁ $ to dom∈ ( ( proj₁ (from dom∈ k∈m₁′))
                                              , proj₂ (from ∈-filter (proj₂ (from dom∈ k∈m₁′)))
                                            )
    ... | yes ∈₁ | no  ∉₂ = trans (lemma' m₁ m₂ kv∈ ∈₁ ∉₂) (lookupᵐ∈≡ m₁)

    ... | yes ∈₁ | yes ∈₂ = goal
      where
      ξ : v ≡ ∥ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂ ∥ᵈᵉᶠ (∈-incl-set (∪⁺-dom∪ kv∈) .proj₁)
      ξ = ∪⁺-def-val-lem' {m₁ = filterᵐ P′ m₁}{m₂ = filterᵐ P′ m₂} (∪⁺-dom∪ kv∈) kv∈

      b : ∃[ b ] (k , b) ∈ m₁ ∪⁺ m₂
      b = from dom∈ k∈dom∪⁺

      goal : v ≡ (lookupᵐ m₁ k) ◇ (lookupᵐ m₂ k)
      goal = {!!}


    lemma {k = k} {v = v} m₁ m₂ kv∈ k∈m₁m₂ k∈m₁∪⁺m₂ (that k∈m₂′) = {!!}
    lemma {k = k} {v = v} m₁ m₂ kv∈ k∈m₁m₂ k∈m₁∪⁺m₂ (these k∈m₁′ k∈m₂′) with k ∈? dom m₁ | k ∈? dom m₂
    ... | no ∉₁ | _ = ⊥-elim $ ∉₁ $ to dom∈ ( ( proj₁ (from dom∈ k∈m₁′))
                                              , proj₂ (from ∈-filter (proj₂ (from dom∈ k∈m₁′)))
                                            )
    ... | yes ∈₁ | no  ∉₂ = trans (lemma' m₁ m₂ kv∈ ∈₁ ∉₂) (lookupᵐ∈≡ m₁)

    ... | yes ∈₁ | yes ∈₂ = {!!}
      where
      open ≡-Reasoning
      goal' : (lookupᵐ∈ m₁ ∈₁) ◇ (lookupᵐ∈ m₂ ∈₂) ≡ (lookupᵐ∈ (filterᵐ P′ m₁) k∈m₁′) ◇ (lookupᵐ∈ (filterᵐ P′ m₂) k∈m₂′)
      goal' = begin
        (lookupᵐ∈ m₁ ∈₁) ◇ (lookupᵐ∈ m₂ ∈₂)
          ≡⟨ cong (_◇ (lookupᵐ∈ m₂ ∈₂)) (lookup-filter-lookup m₁ ∈₁ k∈m₁′) ⟩
        (lookupᵐ∈ (filterᵐ P′ m₁) k∈m₁′) ◇ (lookupᵐ∈ m₂ ∈₂)
          ≡⟨ cong ((lookupᵐ∈ (filterᵐ P′ m₁) k∈m₁′) ◇_) (lookup-filter-lookup m₂ ∈₂ k∈m₂′) ⟩
        (lookupᵐ∈ (filterᵐ P′ m₁) k∈m₁′) ◇ (lookupᵐ∈ (filterᵐ P′ m₂) k∈m₂′)
          ∎


    opaque
      open Equivalence

      dom-filter-P : ∀ m → k ∈ dom (filterᵐ P′ m) → P k
      dom-filter-P m k∈Pm = ∈-filter .from (dom∈ .from k∈Pm .proj₂) .proj₁

      dom-filter-inc : ∀ m → dom (filterᵐ P′ m) ⊆ dom m
      dom-filter-inc m k∈Pm = dom∈ .to (_ , filter-⊆ (dom∈ .from k∈Pm .proj₂))

      -- Note: this property only holds because P′ is not looking at the value.
      -- Counter-example if it does look at the value:
      -- Suppose `m₁ˢ = m₂ˢ = {(0, 1)}`, `P′ (0, 1)`, and `¬ P′ (0, 2)`.
      -- Then `m₁ ∪⁺ m₂ ≡ {(0, 2)}` so (lhs) `filterᵐ P′ (m₁ ∪⁺ m₂)` is empty,
      -- but `(filterᵐ P′ m₁)ˢ ≡ (filterᵐ P′ m₂)ˢ = {(0, 1)}` so (rhs) `filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂` contains {(0, 2)}.
      filterᵐ-∪⁺-distr : (m₁ m₂ : A ⇀ B) → filterᵐ P′ (m₁ ∪⁺ m₂) ≡ᵐ filterᵐ P′ m₁ ∪⁺ filterᵐ P′ m₂
      filterᵐ-∪⁺-distr m₁ m₂ .proj₁ kv∈Pm₁m₂  = {!!}
      filterᵐ-∪⁺-distr m₁ m₂ .proj₂ {a = k , v} kv∈Pm₁Pm₂ =
        case ¿ P k ¿ of λ where
          (yes pk) → yes-case pk
          (no ¬pk) → ⊥-elim (¬pk ([ dom-filter-P m₁ , dom-filter-P m₂ ]′ k∈Pm₁∨k∈Pm₂))
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
              k∈m₁∨k∈m₂ = map-⊎ (dom-filter-inc m₁) (dom-filter-inc m₂) k∈Pm₁∨k∈Pm₂

              k∈m₁m₂ : k ∈ dom m₁ ∪ dom m₂
              k∈m₁m₂ = ∈-∪ .to k∈m₁∨k∈m₂

              k∈m₁m₂⁺ : k ∈ dom (m₁ ∪⁺ m₂)
              k∈m₁m₂⁺ = ∪dom⊆dom∪⁺ k∈m₁m₂

              [kv′∈m₁m₂] : Σ (k ∈ dom m₁ ∪ dom m₂) (λ k∈m₁m₂′ → (k , ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈m₁m₂′) ∈ (m₁ ∪⁺ m₂)ˢ)
              [kv′∈m₁m₂] = _ , ∈-map′ (∈-incl-set k∈m₁m₂ .proj₂)

              k∈m₁m₂′ : k ∈ dom m₁ ∪ dom m₂
              k∈m₁m₂′  = [kv′∈m₁m₂] .proj₁

              k∈m₁∪⁺m₂ : k ∈ dom (m₁ ∪⁺ m₂)
              k∈m₁∪⁺m₂  = ∪dom⊆dom∪⁺ k∈m₁m₂′

              v′ : B
              v′ = ∥ m₁ ∪⁺ m₂ ∥ᵈᵉᶠ k∈m₁m₂′

              kv′∈m₁m₂ : (k , v′) ∈ m₁ ∪⁺ m₂
              kv′∈m₁m₂ = [kv′∈m₁m₂] .proj₂

              v=v′ : v ≡ v′
              v=v′ = lemma m₁ m₂ kv∈Pm₁Pm₂ k∈m₁m₂′ k∈m₁∪⁺m₂ k∈Pm₁⊕k∈Pm₂

              kv∈m₁m₂ : (k , v) ∈ m₁ ∪⁺ m₂
              kv∈m₁m₂ = subst (λ • → (k , •) ∈ m₁ ∪⁺ m₂) (sym v=v′) kv′∈m₁m₂

      filterᵐ-singleton-true : P k → filterᵐ P′ ❴ k , v ❵ ≡ᵐ ❴ k , v ❵
      filterᵐ-singleton-true p .proj₁ = proj₂ ∘ (from ∈-filter)
      filterᵐ-singleton-true {k}{v} p .proj₂ {a} x = to ∈-filter (subst P′ (sym (from ∈-singleton x)) p , x)

      filterᵐ-singleton-false : ¬ P k → filterᵐ P′ ❴ k , v ❵ ≡ᵐ ∅
      filterᵐ-singleton-false ¬p .proj₁ x =
        ⊥-elim $ ¬p $ subst P′ (from ∈-singleton $ proj₂ (from ∈-filter x)) (proj₁ $ from ∈-filter x)
      filterᵐ-singleton-false _ .proj₂ = ⊥-elim ∘ ∉-∅

      filterᵐ-restrict : ∀ m {ks} → filterᵐ P′ (m ∣ ks ᶜ) ≡ᵐ filterᵐ P′ m ∣ ks ᶜ

      -- I'm sure there's a slicker way to prove this; the proof here is straight-forward.
      filterᵐ-restrict m {ks} .proj₁ {a , b} h = Goal
        where
        ξ : P a × (a , b) ∈ (m ∣ ks ᶜ)ˢ
        ξ = from ∈-filter h

        ξ' : (a , b) ∈ m ˢ × a ∉ ks
        ξ' = resᶜ-dom∉⁻ m {ks}{a}{b} (proj₂ ξ)

        Goal : (a , b) ∈ (filterᵐ P′ m ∣ ks ᶜ) ˢ
        Goal = resᶜ-dom∉⁺ (filterᵐ P′ m) ((to ∈-filter ((proj₁ ξ) , (proj₁ ξ'))) , (proj₂ ξ'))

      filterᵐ-restrict m {ks} .proj₂ {a , b} h = Goal
        where
        ξ : (a , b) ∈ ((filterᵐ P′ m) ˢ) × a ∉ ks
        ξ = resᶜ-dom∉⁻ (filterᵐ P′ m) {ks}{a}{b} h

        ξ' : P a × (a , b) ∈ m ˢ
        ξ' = from ∈-filter (proj₁ ξ)

        Goal : (a , b) ∈ (filterᵐ P′ (m ∣ ks ᶜ))ˢ
        Goal = to ∈-filter ((proj₁ ξ') , (resᶜ-dom∉⁺ m ((proj₂ ξ') , (proj₂ ξ))))


      ∈-filter-res- : {x : A × B} (m : A ⇀ B) → x ∈ (filterᵐ P′ m ∣ ❴ k ❵ˢ) ˢ → P′ x × ∃[ b ] x ≡ (k , b)
      ∈-filter-res- m x∈ = (proj₁ (from ∈-filter (res-⊆ x∈))) , (res-singleton''{m = filterᵐ P′ m} x∈)

      module ≡ᵉ = IsEquivalence (≡ᵉ-isEquivalence {Σ A (λ x → B)})
      open SetoidReasoning (≡ᵉ-Setoid{Σ A (λ x → B)})

      restrict-singleton-filterᵐ-false : ∀ m → ¬ P k → filterᵐ P′ m ∣ ❴ k ❵ ᶜ ≡ᵐ filterᵐ P′ m
      restrict-singleton-filterᵐ-false {k} m ¬p = ≡ᵉ.sym (begin
        (filterᵐ P′ m)ˢ
          ≈⟨ ≡ᵉ.sym (res-ex-∪ Dec-∈-singleton) ⟩
        ((filterᵐ P′ m ∣ ❴ k ❵ˢ) ˢ) ∪ ((filterᵐ P′ m ∣ ❴ k ❵ˢ ᶜ) ˢ)
          ≈⟨ ∪-cong ¬P→res-∅ ≡ᵉ.refl ⟩
        (∅ ˢ) ∪ ((filterᵐ P′ m ∣ ❴ k ❵ˢ ᶜ) ˢ)
          ≈⟨ ∪-identityˡ _ ⟩
        (filterᵐ P′ m ∣ ❴ k ❵ˢ ᶜ) ˢ
          ∎)
          where
          ¬P→res-∅ :  (filterᵐ P′ m ∣ ❴ k ❵)ˢ ≡ᵉ (∅ᵐ ˢ)
          ¬P→res-∅ .proj₁ {a} x with ∈-filter-res- m x
          ... | px , b , refl = ⊥-elim (¬p px)
          ¬P→res-∅ .proj₂ = ⊥-elim ∘ ∉-∅

      filterᵐ-∈ : ∀ m {k} {v : B} → P k → (k , v) ∈ m → (k , v) ∈ filterᵐ P′ m
      filterᵐ-∈ m = curry $ to ∈-filter

      cong-filterᵐ : ∀ m₁ m₂ → m₁ ≡ᵐ m₂ → filterᵐ P′ m₁ ≡ᵐ filterᵐ P′ m₂
      cong-filterᵐ m₁ m₂ eq .proj₁ {a = k , v} ∈Pm₁ = filterᵐ-∈ m₂ (dom-filter-P m₁ (∈-dom ∈Pm₁)) (eq .proj₁ (∈-filter .from ∈Pm₁ .proj₂))
      cong-filterᵐ m₁ m₂ eq .proj₂ {a = k , v} ∈Pm₂ = filterᵐ-∈ m₁ (dom-filter-P m₂ (∈-dom ∈Pm₂)) (eq .proj₂ (∈-filter .from ∈Pm₂ .proj₂))

    opaque
      lem-add-included : P k → filterᵐ P′ (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P′ m ∪⁺ ❴ k , v ❵
      lem-add-included p =
        filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l (filterᵐ-singleton-true p)

      lem-add-excluded : ¬ P k → filterᵐ P′ (m ∪⁺ ❴ k , v ❵) ≡ᵐ filterᵐ P′ m
      lem-add-excluded p =
        filterᵐ-∪⁺-distr _ _ ⟨≈⟩ ∪⁺-cong-l {m₂ = ∅} (filterᵐ-singleton-false p) ⟨≈⟩ ∪⁺-id-r _

      lem-del-excluded : ∀ m → ¬ P k → filterᵐ P′ (m ∣ ❴ k ❵ ᶜ) ≡ᵐ filterᵐ P′ m
      lem-del-excluded m ¬p = filterᵐ-restrict m ⟨≈⟩ restrict-singleton-filterᵐ-false m ¬p
