---
source_branch: master
source_path: src/Ledger/Conway/Specification/Ledger/Properties/GeneralLemmas.lagda.md
---

# General lemmas staged from the reordering development {#sec:reorder-general-lemmas}

This module collects the proofs and definitions used by the
[reordering development](Ledger.Conway.Specification.Ledger.Properties.Reorder.md)
that are **not** specific to transaction reordering: general finite-map/set
algebra (`_∪ˡ_`, `insert`, restrictions, `mapPartial`, set difference,
value-restriction `_∣^_`) and generic list/permutation lemmas (permutation-
invariant sums, `AllPairs` transport, and the locally-commuting-`foldl`
engine).  Nothing here mentions transactions or the ledger state.

It is a staging area: each item is a candidate for integration into the
appropriate upstream library (`agda-sets` / `stdlib` extensions).

<!--
```agda
{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Ledger.Properties.GeneralLemmas where

open import Ledger.Prelude
open import Data.Nat.Properties using (+-assoc; +-comm; +-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (All-resp-↭)
```
-->

## Finite-map algebra: `insert`, `_∪ˡ_`, restrictions

Membership characterizations and disjoint/distinct-key commutation lemmas for
the single-key map operations.

```agda
module _ {A B : Type} ⦃ _ : DecEq A ⦄ where
  ∈-insert⁻ : ∀ {m : A ⇀ B} {c v} {ab : A × B}
    → ab ∈ (insert m c v) ˢ
    → (ab ≡ (c , v)) ⊎ (proj₁ ab ≢ c × ab ∈ m ˢ)
  ∈-insert⁻ h with Equivalence.from ∈-∪ h
  ... | inj₁ h₁ = inj₁ (Equivalence.from ∈-singleton h₁)
  ... | inj₂ h₂ =
    let (k∉ , hm) = Equivalence.from ∈-filter h₂
    in  inj₂ ((λ k≡c → k∉ (Equivalence.to ∈-dom-singleton-pair k≡c)) , hm)

  ∈-insert⁺ : ∀ {m : A ⇀ B} {c v} {ab : A × B}
    → (ab ≡ (c , v)) ⊎ (proj₁ ab ≢ c × ab ∈ m ˢ)
    → ab ∈ (insert m c v) ˢ
  ∈-insert⁺ (inj₁ eq) = Equivalence.to ∈-∪ (inj₁ (Equivalence.to ∈-singleton eq))
  ∈-insert⁺ (inj₂ (k≢c , hm)) =
    Equivalence.to ∈-∪
      (inj₂ (Equivalence.to ∈-filter
        ((λ k∈ → k≢c (Equivalence.from ∈-dom-singleton-pair k∈)) , hm)))

  private
    -- `insert` is opaque to unification, so the implicits of `∈-insert⁻/⁺`
    -- are passed explicitly throughout.
    ins⊆ : ∀ {m : A ⇀ B} {c₁ c₂ v₁ v₂} → c₁ ≢ c₂
         → (insert (insert m c₁ v₁) c₂ v₂) ˢ ⊆ (insert (insert m c₂ v₂) c₁ v₁) ˢ
    ins⊆ {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ h
      with ∈-insert⁻ {m = insert m c₁ v₁} {c₂} {v₂} h
    ... | inj₁ refl =
          ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁}
            (inj₂ (c₁≢c₂ ∘ sym , ∈-insert⁺ {m = m} {c₂} {v₂} (inj₁ refl)))
    ... | inj₂ (k≢c₂ , h') with ∈-insert⁻ {m = m} {c₁} {v₁} h'
    ...   | inj₁ refl =
            ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁} (inj₁ refl)
    ...   | inj₂ (k≢c₁ , hm) =
            ∈-insert⁺ {m = insert m c₂ v₂} {c₁} {v₁}
              (inj₂ (k≢c₁ , ∈-insert⁺ {m = m} {c₂} {v₂} (inj₂ (k≢c₂ , hm))))

  insert-comm : ∀ {m : A ⇀ B} {c₁ c₂ v₁ v₂} → c₁ ≢ c₂
    → (insert (insert m c₁ v₁) c₂ v₂) ˢ ≡ᵉ (insert (insert m c₂ v₂) c₁ v₁) ˢ
  insert-comm {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ =
    ins⊆ {m} {c₁} {c₂} {v₁} {v₂} c₁≢c₂ , ins⊆ {m} {c₂} {c₁} {v₂} {v₁} (c₁≢c₂ ∘ sym)

  -- deregister-vs-deregister.
  resᶜ-comm : ∀ {m : A ⇀ B} {X Y : ℙ A}
    → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ≡ᵉ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
  resᶜ-comm {m} {X} {Y} = sw {m} {X} {Y} , sw {m} {Y} {X}
    where
      sw : ∀ {m : A ⇀ B} {X Y} → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ⊆ ((m ∣ Y ᶜ) ∣ X ᶜ) ˢ
      sw h =
        let (a∉Y , h₁) = Equivalence.from ∈-filter h
            (a∉X , hm) = Equivalence.from ∈-filter h₁
        in  Equivalence.to ∈-filter (a∉X , Equivalence.to ∈-filter (a∉Y , hm))

  insert-del-comm : ∀ {m : A ⇀ B} {c c' v} → c ≢ c'
    → (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ ≡ᵉ ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ
  insert-del-comm {m} {c} {c'} {v} c≢c' = ⊆₁ , ⊆₂
    where
      ⊆₁ : (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ ⊆ ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ
      ⊆₁ h with ∈-insert⁻ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v} h
      ... | inj₁ refl =
            Equivalence.to ∈-filter
              ((λ c∈ → c≢c' (Equivalence.from ∈-singleton c∈))
              , ∈-insert⁺ {m = m} {c} {v} (inj₁ refl))
      ... | inj₂ (a≢c , h') =
            let (a∉c' , hm) = Equivalence.from ∈-filter h'
            in  Equivalence.to ∈-filter
                  (a∉c' , ∈-insert⁺ {m = m} {c} {v} (inj₂ (a≢c , hm)))
      ⊆₂ : ((insert m c v) ∣ ❴ c' ❵ ᶜ) ˢ ⊆ (insert (m ∣ ❴ c' ❵ ᶜ) c v) ˢ
      ⊆₂ h =
        let (a∉c' , h') = Equivalence.from ∈-filter h
        in  case ∈-insert⁻ {m = m} {c} {v} h' of λ where
              (inj₁ refl)        → ∈-insert⁺ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v} (inj₁ refl)
              (inj₂ (a≢c , hm))  →
                ∈-insert⁺ {m = m ∣ ❴ c' ❵ ᶜ} {c} {v}
                  (inj₂ (a≢c , Equivalence.to ∈-filter (a∉c' , hm)))


  -- General membership for left-biased union (generalises `∈-insert`); the engine
  -- for the right-singleton unions used by `reg`/`regpool` (`m ∪ˡ ❴ k , v ❵ᵐ`).
  ∈-∪ˡ⁻ : ∀ {m m' : A ⇀ B} {ab : A × B}
    → ab ∈ (m ∪ˡ m') ˢ
    → ab ∈ m ˢ ⊎ (proj₁ ab ∉ dom (m ˢ) × ab ∈ m' ˢ)
  ∈-∪ˡ⁻ h with Equivalence.from ∈-∪ h
  ... | inj₁ h₁ = inj₁ h₁
  ... | inj₂ h₂ = inj₂ (Equivalence.from ∈-filter h₂)

  ∈-∪ˡ⁺ : ∀ {m m' : A ⇀ B} {ab : A × B}
    → ab ∈ m ˢ ⊎ (proj₁ ab ∉ dom (m ˢ) × ab ∈ m' ˢ)
    → ab ∈ (m ∪ˡ m') ˢ
  ∈-∪ˡ⁺ (inj₁ h) = Equivalence.to ∈-∪ (inj₁ h)
  ∈-∪ˡ⁺ (inj₂ p) = Equivalence.to ∈-∪ (inj₂ (Equivalence.to ∈-filter p))

  dom-∪ˡ : ∀ {m m' : A ⇀ B} → dom ((m ∪ˡ m') ˢ) ≡ᵉ dom (m ˢ) ∪ dom (m' ˢ)
  dom-∪ˡ {m} {m'} = ⊆₁ , ⊆₂
    where
      ⊆₁ : dom ((m ∪ˡ m') ˢ) ⊆ dom (m ˢ) ∪ dom (m' ˢ)
      ⊆₁ k∈ = let (q , kq∈) = Equivalence.from dom∈ k∈
              in case ∈-∪ˡ⁻ {m} {m'} kq∈ of λ where
                   (inj₁ kq∈m)        → Equivalence.to ∈-∪ (inj₁ (Equivalence.to dom∈ (q , kq∈m)))
                   (inj₂ (_ , kq∈m')) → Equivalence.to ∈-∪ (inj₂ (Equivalence.to dom∈ (q , kq∈m')))
      ⊆₂ : dom (m ˢ) ∪ dom (m' ˢ) ⊆ dom ((m ∪ˡ m') ˢ)
      ⊆₂ {k} k∈ = case Equivalence.from ∈-∪ k∈ of λ where
        (inj₁ k∈m)  →
          let (q , kq∈) = Equivalence.from dom∈ k∈m
          in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₁ kq∈))
        (inj₂ k∈m') → case ¿ k ∈ dom (m ˢ) ¿ of λ where
          (yes k∈m) →
            let (q , kq∈) = Equivalence.from dom∈ k∈m
            in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₁ kq∈))
          (no k∉m) →
            let (q , kq∈) = Equivalence.from dom∈ k∈m'
            in  Equivalence.to dom∈ (q , ∈-∪ˡ⁺ {m} {m'} (inj₂ (k∉m , kq∈)))

  private
    ∉dom-sing⁺ : ∀ {k k' : A} {v : B} → k ≢ k' → k ∉ dom (❴ k' , v ❵ᵐ ˢ)
    ∉dom-sing⁺ k≢k' k∈ = k≢k' (Equivalence.from ∈-dom-singleton-pair k∈)

    ∉dom-∪ˡ⁻ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom ((m ∪ˡ m') ˢ)
             → k ∉ dom (m ˢ) × k ∉ dom (m' ˢ)
    ∉dom-∪ˡ⁻ {m} {m'} k∉ =
        (λ k∈m  → k∉ (dom-∪ˡ {m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₁ k∈m))))
      , (λ k∈m' → k∉ (dom-∪ˡ {m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈m'))))

    ∉dom-∪ˡ⁺ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom (m ˢ) × k ∉ dom (m' ˢ)
             → k ∉ dom ((m ∪ˡ m') ˢ)
    ∉dom-∪ˡ⁺ {m} {m'} (k∉m , k∉m') k∈ =
      case Equivalence.from ∈-∪ (dom-∪ˡ {m} {m'} .proj₁ k∈) of λ where
        (inj₁ x) → k∉m x
        (inj₂ x) → k∉m' x

    rs⊆ : ∀ {m : A ⇀ B} {a b x y} → a ≢ b
        → ((m ∪ˡ ❴ a , x ❵ᵐ) ∪ˡ ❴ b , y ❵ᵐ) ˢ ⊆ ((m ∪ˡ ❴ b , y ❵ᵐ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
    rs⊆ {m} {a} {b} {x} {y} a≢b h
      with ∈-∪ˡ⁻ {m ∪ˡ ❴ a , x ❵ᵐ} {❴ b , y ❵ᵐ} h
    ... | inj₂ (p∉ , pq∈by) with Equivalence.from ∈-singleton pq∈by
    ...   | refl =
            let (b∉m , _) = ∉dom-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} p∉
            in  ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
                  (inj₁ (∈-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (inj₂ (b∉m , Equivalence.to ∈-singleton refl))))
    rs⊆ {m} {a} {b} {x} {y} a≢b h | inj₁ h₁
      with ∈-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} h₁
    ...   | inj₁ pq∈m =
            ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
              (inj₁ (∈-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (inj₁ pq∈m)))
    ...   | inj₂ (p∉m , pq∈ax) with Equivalence.from ∈-singleton pq∈ax
    ...     | refl =
              ∈-∪ˡ⁺ {m ∪ˡ ❴ b , y ❵ᵐ} {❴ a , x ❵ᵐ}
                (inj₂ ( ∉dom-∪ˡ⁺ {m} {❴ b , y ❵ᵐ} (p∉m , ∉dom-sing⁺ a≢b)
                      , Equivalence.to ∈-singleton refl))

  -- Right-singleton unions on distinct keys commute; covers `reg` (rewards) and
  -- `regpool` (pools), which use `m ∪ˡ ❴ k , v ❵ᵐ` (left-biased toward `m`).
  ∪ˡ-rsingleton-comm : ∀ {m : A ⇀ B} {a b x y} → a ≢ b
    → ((m ∪ˡ ❴ a , x ❵ᵐ) ∪ˡ ❴ b , y ❵ᵐ) ˢ ≡ᵉ ((m ∪ˡ ❴ b , y ❵ᵐ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
  ∪ˡ-rsingleton-comm {m} {a} {b} {x} {y} a≢b =
    rs⊆ {m} {a} {b} {x} {y} a≢b , rs⊆ {m} {b} {a} {y} {x} (a≢b ∘ sym)

  -- Right-singleton union vs distinct-key removal; covers `reg`/`delegate`
  -- (rewards `_∪ˡ ❴ c , 0 ❵`) vs `dereg` (rewards `_∣ ❴ c ❵ ᶜ`).
  rsingleton-del-comm : ∀ {m : A ⇀ B} {a b x} → a ≢ b
    → ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ ≡ᵉ ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
  rsingleton-del-comm {m} {a} {b} {x} a≢b = ⊆₁ , ⊆₂
    where
      ⊆₁ : ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ ⊆ ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ
      ⊆₁ h = let (p∉b , h') = Equivalence.from ∈-filter h
             in case ∈-∪ˡ⁻ {m} {❴ a , x ❵ᵐ} h' of λ where
                  (inj₁ pq∈m) →
                    ∈-∪ˡ⁺ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ}
                      (inj₁ (Equivalence.to ∈-filter (p∉b , pq∈m)))
                  (inj₂ (p∉m , pq∈ax)) →
                    ∈-∪ˡ⁺ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ}
                      (inj₂ ((λ p∈ → p∉m (res-comp-domᵐ p∈)) , pq∈ax))
      ⊆₂ : ((m ∣ ❴ b ❵ ᶜ) ∪ˡ ❴ a , x ❵ᵐ) ˢ ⊆ ((m ∪ˡ ❴ a , x ❵ᵐ) ∣ ❴ b ❵ ᶜ) ˢ
      ⊆₂ h with ∈-∪ˡ⁻ {m ∣ ❴ b ❵ ᶜ} {❴ a , x ❵ᵐ} h
      ... | inj₁ pq∈res =
            let (p∉b , pq∈m) = Equivalence.from ∈-filter pq∈res
            in  Equivalence.to ∈-filter (p∉b , ∈-∪ˡ⁺ {m} {❴ a , x ❵ᵐ} (inj₁ pq∈m))
      ... | inj₂ (p∉resdom , pq∈ax) with Equivalence.from ∈-singleton pq∈ax
      ...   | refl =
              Equivalence.to ∈-filter
                ( (λ a∈b → a≢b (Equivalence.from ∈-singleton a∈b))
                , ∈-∪ˡ⁺ {m} {❴ a , x ❵ᵐ}
                    (inj₂ ( (λ a∈dm → p∉resdom
                              (∈-resᶜ-dom⁺ ( (λ a∈b → a≢b (Equivalence.from ∈-singleton a∈b))
                                           , Equivalence.from dom∈ a∈dm)))
                          , Equivalence.to ∈-singleton refl)))

  -- Left-biased union of maps with disjoint domains is symmetric.
  ∪ˡ-sym-disjoint : {m m′ : A ⇀ B}
    → disjoint (dom (m ˢ)) (dom (m′ ˢ))
    → (m ∪ˡ m′) ˢ ≡ᵉ (m′ ∪ˡ m) ˢ
  ∪ˡ-sym-disjoint disj =
    SetSetoid.trans (disjoint-∪ˡ-∪ disj)
      (SetSetoid.trans Properties.∪-sym
        (SetSetoid.sym (disjoint-∪ˡ-∪ (Properties.disjoint-sym disj))))
  -- Restricting away a key-set disjoint from the domain is a no-op.
  res-comp-disjoint : {m : A ⇀ B} {X : ℙ A}
    → disjoint (dom (m ˢ)) X
    → (m ∣ X ᶜ) ˢ ≡ᵉ m ˢ
  res-comp-disjoint disj =
    ex-⊆ , λ ab∈m →
      Equivalence.to ∈-filter ((λ a∈X → disj (Equivalence.to dom∈ (-, ab∈m)) a∈X) , ab∈m)
  -- Two nested key-restrictions merge into one union-restriction.
  res-merge : {m : A ⇀ B} {X Y : ℙ A}
    → ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ≡ᵉ (m ∣ (X ∪ Y) ᶜ) ˢ
  res-merge {m} {X} {Y} = ⊆₁ , ⊆₂
    where
      ⊆₁ : ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ ⊆ (m ∣ (X ∪ Y) ᶜ) ˢ
      ⊆₁ h = let (a∉Y , h₁) = Equivalence.from ∈-filter h
                 (a∉X , hm) = Equivalence.from ∈-filter h₁
             in  Equivalence.to ∈-filter
                   ((λ a∈∪ → [ a∉X , a∉Y ]′ (Equivalence.from ∈-∪ a∈∪)) , hm)
      ⊆₂ : (m ∣ (X ∪ Y) ᶜ) ˢ ⊆ ((m ∣ X ᶜ) ∣ Y ᶜ) ˢ
      ⊆₂ h = let (a∉∪ , hm) = Equivalence.from ∈-filter h
             in  Equivalence.to ∈-filter
                   ( (λ a∈Y → a∉∪ (Equivalence.to ∈-∪ (inj₂ a∈Y)))
                   , Equivalence.to ∈-filter
                       ((λ a∈X → a∉∪ (Equivalence.to ∈-∪ (inj₁ a∈X))) , hm) )
  
  
  -- A key-restriction pushes across a left-union when the removed keys are
  -- disjoint from the added map's domain.
  res-∪ˡ-out : {u M : A ⇀ B} {X : ℙ A}
    → disjoint X (dom (M ˢ))
    → ((u ∣ X ᶜ) ∪ˡ M) ˢ ≡ᵉ ((u ∪ˡ M) ∣ X ᶜ) ˢ
  res-∪ˡ-out {u} {M} {X} disj = ⊆₁ , ⊆₂
    where
      ⊆₁ : ((u ∣ X ᶜ) ∪ˡ M) ˢ ⊆ ((u ∪ˡ M) ∣ X ᶜ) ˢ
      ⊆₁ h with ∈-∪ˡ⁻ {m = u ∣ X ᶜ} {M} h
      ... | inj₁ p∈uX =
              let (a∉X , p∈u) = Equivalence.from ∈-filter p∈uX
              in  Equivalence.to ∈-filter (a∉X , ∈-∪ˡ⁺ {m = u} {M} (inj₁ p∈u))
      ... | inj₂ (a∉domuX , p∈M) =
              let a∉X    = λ a∈X → disj a∈X (Equivalence.to dom∈ (-, p∈M))
                  a∉domu = λ a∈domu → a∉domuX (∈-resᶜ-dom⁺ (a∉X , Equivalence.from dom∈ a∈domu))
              in  Equivalence.to ∈-filter (a∉X , ∈-∪ˡ⁺ {m = u} {M} (inj₂ (a∉domu , p∈M)))
      ⊆₂ : ((u ∪ˡ M) ∣ X ᶜ) ˢ ⊆ ((u ∣ X ᶜ) ∪ˡ M) ˢ
      ⊆₂ h = let (a∉X , p∈uM) = Equivalence.from ∈-filter h
             in  case ∈-∪ˡ⁻ {m = u} {M} p∈uM of λ where
                   (inj₁ p∈u)            →
                     ∈-∪ˡ⁺ {m = u ∣ X ᶜ} {M} (inj₁ (Equivalence.to ∈-filter (a∉X , p∈u)))
                   (inj₂ (a∉domu , p∈M)) →
                     ∈-∪ˡ⁺ {m = u ∣ X ᶜ} {M}
                       (inj₂ ((λ a∈domuX → a∉domu (res-comp-domᵐ a∈domuX)) , p∈M))
  -- `_∪ˡ_` is right-unital and associative.
  ∪ˡ-∅ʳ : {m : A ⇀ B} → (m ∪ˡ ∅ᵐ) ˢ ≡ᵉ m ˢ
  ∪ˡ-∅ʳ {m} = ⊆₁ , λ p∈m → ∈-∪ˡ⁺ {m = m} {∅ᵐ} (inj₁ p∈m)
    where
      ⊆₁ : (m ∪ˡ ∅ᵐ) ˢ ⊆ m ˢ
      ⊆₁ h with ∈-∪ˡ⁻ {m = m} {∅ᵐ} h
      ... | inj₁ p∈m       = p∈m
      ... | inj₂ (_ , p∈∅) = ⊥-elim (Properties.∉-∅ p∈∅)
  ∪ˡ-assoc : {a b c : A ⇀ B} → ((a ∪ˡ b) ∪ˡ c) ˢ ≡ᵉ (a ∪ˡ (b ∪ˡ c)) ˢ
  ∪ˡ-assoc {a} {b} {c} = ⊆₁ , ⊆₂
    where
      ∉domˡ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom ((m ∪ˡ m') ˢ) → k ∉ dom (m ˢ)
      ∉domˡ {m} {m'} k∉ k∈ = k∉ (dom-∪ˡ {m = m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₁ k∈)))
      ∉domʳ : ∀ {m m' : A ⇀ B} {k} → k ∉ dom ((m ∪ˡ m') ˢ) → k ∉ dom (m' ˢ)
      ∉domʳ {m} {m'} k∉ k∈ = k∉ (dom-∪ˡ {m = m} {m'} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈)))
      ⊆₁ : ((a ∪ˡ b) ∪ˡ c) ˢ ⊆ (a ∪ˡ (b ∪ˡ c)) ˢ
      ⊆₁ h with ∈-∪ˡ⁻ {m = a ∪ˡ b} {c} h
      ... | inj₁ p∈ab with ∈-∪ˡ⁻ {m = a} {b} p∈ab
      ...   | inj₁ p∈a           = ∈-∪ˡ⁺ {m = a} {b ∪ˡ c} (inj₁ p∈a)
      ...   | inj₂ (p∉a , p∈b)   = ∈-∪ˡ⁺ {m = a} {b ∪ˡ c} (inj₂ (p∉a , ∈-∪ˡ⁺ {m = b} {c} (inj₁ p∈b)))
      ⊆₁ h | inj₂ (p∉ab , p∈c)  =
              ∈-∪ˡ⁺ {m = a} {b ∪ˡ c}
                (inj₂ (∉domˡ {a} {b} p∉ab , ∈-∪ˡ⁺ {m = b} {c} (inj₂ (∉domʳ {a} {b} p∉ab , p∈c))))
      ⊆₂ : (a ∪ˡ (b ∪ˡ c)) ˢ ⊆ ((a ∪ˡ b) ∪ˡ c) ˢ
      ⊆₂ h with ∈-∪ˡ⁻ {m = a} {b ∪ˡ c} h
      ... | inj₁ p∈a           = ∈-∪ˡ⁺ {m = a ∪ˡ b} {c} (inj₁ (∈-∪ˡ⁺ {m = a} {b} (inj₁ p∈a)))
      ... | inj₂ (p∉a , p∈bc) with ∈-∪ˡ⁻ {m = b} {c} p∈bc
      ...   | inj₁ p∈b         = ∈-∪ˡ⁺ {m = a ∪ˡ b} {c} (inj₁ (∈-∪ˡ⁺ {m = a} {b} (inj₂ (p∉a , p∈b))))
      ...   | inj₂ (p∉b , p∈c) =
                ∈-∪ˡ⁺ {m = a ∪ˡ b} {c}
                  (inj₂ ((λ p∈domab → [ p∉a , p∉b ]′ (Equivalence.from ∈-∪ (dom-∪ˡ {m = a} {b} .proj₁ p∈domab))) , p∈c))

  -- Complement-restriction respects `_≡ᵉ_` of the removed key-set.
  resᶜ-set-cong : {m : A ⇀ B} {X Y : ℙ A} → X ≡ᵉ Y → (m ∣ X ᶜ) ˢ ≡ᵉ (m ∣ Y ᶜ) ˢ
  resᶜ-set-cong {m} {X} {Y} X≡Y = ⊆₁ , ⊆₂
    where
      ⊆₁ : (m ∣ X ᶜ) ˢ ⊆ (m ∣ Y ᶜ) ˢ
      ⊆₁ h = let (a∉X , hm) = Equivalence.from ∈-filter h
             in  Equivalence.to ∈-filter ((λ a∈Y → a∉X (X≡Y .proj₂ a∈Y)) , hm)
      ⊆₂ : (m ∣ Y ᶜ) ˢ ⊆ (m ∣ X ᶜ) ˢ
      ⊆₂ h = let (a∉Y , hm) = Equivalence.from ∈-filter h
             in  Equivalence.to ∈-filter ((λ a∈X → a∉Y (X≡Y .proj₁ a∈X)) , hm)
```

## Generic congruences

```agda
utxoUpd-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {u u″ : A ⇀ B} {X : ℙ A} {o : A ⇀ B}
  → u ˢ ≡ᵉ u″ ˢ
  → ((u ∣ X ᶜ) ∪ˡ o) ˢ ≡ᵉ ((u″ ∣ X ᶜ) ∪ˡ o) ˢ
utxoUpd-cong {u = u} {u″} {X} {o} eq =
  ∪ˡ-cong {m = u ∣ X ᶜ} {m' = o} {m'' = u″ ∣ X ᶜ} {m''' = o}
    (Properties.filter-cong eq) SetSetoid.refl

lookupᵐ?-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ (m m′ : A ⇀ B) (k : A)
  → m ˢ ≡ᵉ m′ ˢ → lookupᵐ? m k ≡ lookupᵐ? m′ k
lookupᵐ?-cong m m′ k eq with ¿ k ∈ dom (m ˢ) ¿ | ¿ k ∈ dom (m′ ˢ) ¿
... | yes p | yes p′ = cong just (sym (∈-lookup m′ k p′ (eq .proj₁ (lookupᵐ-∈ m k p))))
... | yes p | no ¬p′ = ⊥-elim (¬p′ (dom-cong eq .proj₁ p))
... | no ¬p | yes p′ = ⊥-elim (¬p (dom-cong eq .proj₂ p′))
... | no ¬p | no ¬p′ = refl

insert-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m m′ : A ⇀ B} (c : A) (v : B)
  → m ˢ ≡ᵉ m′ ˢ → (insert m c v) ˢ ≡ᵉ (insert m′ c v) ˢ
insert-cong {m = m} {m′} c v eq = ⊆₁ , ⊆₂
  where
    ⊆₁ : (insert m c v) ˢ ⊆ (insert m′ c v) ˢ
    ⊆₁ h with ∈-insert⁻ {m = m} {c} {v} h
    ... | inj₁ eq'        = ∈-insert⁺ {m = m′} {c} {v} (inj₁ eq')
    ... | inj₂ (ne , p∈m) = ∈-insert⁺ {m = m′} {c} {v} (inj₂ (ne , eq .proj₁ p∈m))
    ⊆₂ : (insert m′ c v) ˢ ⊆ (insert m c v) ˢ
    ⊆₂ h with ∈-insert⁻ {m = m′} {c} {v} h
    ... | inj₁ eq'         = ∈-insert⁺ {m = m} {c} {v} (inj₁ eq')
    ... | inj₂ (ne , p∈m′) = ∈-insert⁺ {m = m} {c} {v} (inj₂ (ne , eq .proj₂ p∈m′))

∣^-idem : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ {m : A ⇀ B} {X : ℙ B}
  → ((m ∣^ X) ∣^ X) ˢ ≡ᵉ (m ∣^ X) ˢ
∣^-idem {m = m} {X} = ⊆₁ , ⊆₂
  where
    ⊆₁ : ((m ∣^ X) ∣^ X) ˢ ⊆ (m ∣^ X) ˢ
    ⊆₁ h = proj₂ (Equivalence.from ∈-filter h)
    ⊆₂ : (m ∣^ X) ˢ ⊆ ((m ∣^ X) ∣^ X) ˢ
    ⊆₂ h = Equivalence.to ∈-filter (proj₁ (Equivalence.from ∈-filter h) , h)

-- Absorption: an intermediate value-restriction before an `insert` is washed out by the
-- outer value-restriction (the core of `postCert`'s interaction with `delegate` inserts).
insert-∣^-absorb : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄ {m : A ⇀ B} {X : ℙ B} {c v}
  → (insert (m ∣^ X) c v ∣^ X) ˢ ≡ᵉ (insert m c v ∣^ X) ˢ
insert-∣^-absorb {m = m} {X} {c} {v} = ⊆₁ , ⊆₂
  where
    ⊆₁ : (insert (m ∣^ X) c v ∣^ X) ˢ ⊆ (insert m c v ∣^ X) ˢ
    ⊆₁ h with Equivalence.from ∈-filter h
    ... | v∈X , p∈ins with ∈-insert⁻ {m = m ∣^ X} {c} {v} p∈ins
    ...   | inj₁ eq'        = Equivalence.to ∈-filter (v∈X , ∈-insert⁺ {m = m} {c} {v} (inj₁ eq'))
    ...   | inj₂ (ne , p∈r) = Equivalence.to ∈-filter
                               (v∈X , ∈-insert⁺ {m = m} {c} {v} (inj₂ (ne , proj₂ (Equivalence.from ∈-filter p∈r))))
    ⊆₂ : (insert m c v ∣^ X) ˢ ⊆ (insert (m ∣^ X) c v ∣^ X) ˢ
    ⊆₂ h with Equivalence.from ∈-filter h
    ... | v∈X , p∈ins with ∈-insert⁻ {m = m} {c} {v} p∈ins
    ...   | inj₁ eq'        = Equivalence.to ∈-filter (v∈X , ∈-insert⁺ {m = m ∣^ X} {c} {v} (inj₁ eq'))
    ...   | inj₂ (ne , p∈m) = Equivalence.to ∈-filter
                               (v∈X , ∈-insert⁺ {m = m ∣^ X} {c} {v} (inj₂ (ne , Equivalence.to ∈-filter (v∈X , p∈m))))

module _ {A B : Type} where

  mapPartial-cong-fg : ∀ {f g : A → Maybe B} {X Y : ℙ A}
    → (∀ x → f x ≡ g x) → X ≡ᵉ Y → mapPartial f X ≡ᵉ mapPartial g Y
  mapPartial-cong-fg {f} {g} {X} {Y} f≗g (X⊆Y , Y⊆X) =
    (λ y∈ → let (x , x∈ , eq) = Equivalence.from (∈-mapPartial {X = X} {f = f}) y∈
            in Equivalence.to (∈-mapPartial {X = Y} {f = g}) (x , X⊆Y x∈ , trans (sym (f≗g x)) eq)) ,
    (λ y∈ → let (x , x∈ , eq) = Equivalence.from (∈-mapPartial {X = Y} {f = g}) y∈
            in Equivalence.to (∈-mapPartial {X = X} {f = f}) (x , Y⊆X x∈ , trans (f≗g x) eq))

  mapPartial-cong : ∀ {f : A → Maybe B} {X Y : ℙ A}
    → X ≡ᵉ Y → mapPartial f X ≡ᵉ mapPartial f Y
  mapPartial-cong {f} = mapPartial-cong-fg {f = f} {g = f} (λ _ → refl)

module _ {A : Type} ⦃ _ : DecEq A ⦄ where

  ＼-cong : ∀ {X X′ Y Y′ : ℙ A} → X ≡ᵉ X′ → Y ≡ᵉ Y′ → (X - Y) ≡ᵉ (X′ - Y′)
  ＼-cong (X⊆ , ⊆X) (Y⊆ , ⊆Y) =
    (λ a∈ → let (a∉Y , a∈X) = Equivalence.from ∈-filter a∈
            in Equivalence.to ∈-filter ((λ a∈Y′ → a∉Y (⊆Y a∈Y′)) , X⊆ a∈X)) ,
    (λ a∈ → let (a∉Y′ , a∈X′) = Equivalence.from ∈-filter a∈
            in Equivalence.to ∈-filter ((λ a∈Y → a∉Y′ (Y⊆ a∈Y)) , ⊆X a∈X′))

if-cong₂ : ∀ {A : Type} {c c′ : Type} ⦃ _ : c ⁇ ⦄ ⦃ _ : c′ ⁇ ⦄ {x x′ y y′ : A}
  → (c → c′) → (c′ → c) → x ≡ x′ → y ≡ y′
  → (if c then x else y) ≡ (if c′ then x′ else y′)
if-cong₂ {c = c} {c′} f g xe ye with ¿ c ¿ | ¿ c′ ¿
... | yes _ | yes _ = xe
... | no  _ | no  _ = ye
... | yes p | no ¬q = ⊥-elim (¬q (f p))
... | no ¬p | yes q = ⊥-elim (¬p (g q))
```

## Permutation-invariant folds and sums

```agda
module _ {X : Type} where
  ⋃map : ∀ {A : Type} ⦃ _ : DecEq A ⦄ → (X → ℙ A) → List X → ℙ A
  ⋃map f []       = ∅
  ⋃map f (t ∷ ts) = f t ∪ ⋃map f ts

  ⋃map-↭ : ∀ {A : Type} ⦃ _ : DecEq A ⦄ {f : X → ℙ A} {l₁ l₂ : List X}
    → l₁ ↭ l₂ → ⋃map f l₁ ≡ᵉ ⋃map f l₂
  ⋃map-↭ ↭-rfl              = SetSetoid.refl
  ⋃map-↭ {f = f} (prep x p) = Properties.∪-cong SetSetoid.refl (⋃map-↭ {f = f} p)
  ⋃map-↭ {f = f} (swap x y p) =
    SetSetoid.trans (SetSetoid.sym (Properties.∪-assoc _ _ _))
      (SetSetoid.trans (Properties.∪-cong Properties.∪-sym SetSetoid.refl)
        (SetSetoid.trans (Properties.∪-assoc _ _ _)
          (Properties.∪-cong SetSetoid.refl
            (Properties.∪-cong SetSetoid.refl (⋃map-↭ {f = f} p)))))
  ⋃map-↭ (↭-trans p q)     = SetSetoid.trans (⋃map-↭ p) (⋃map-↭ q)

  Σg : (X → ℕ) → List X → ℕ
  Σg g []       = 0
  Σg g (t ∷ ts) = g t + Σg g ts

  scalarᶠ : (X → ℕ) → ℕ → List X → ℕ
  scalarᶠ g a []       = a
  scalarᶠ g a (t ∷ ts) = scalarᶠ g (a + g t) ts

  scalarᶠ≡ : ∀ {g} a l → scalarᶠ g a l ≡ a + Σg g l
  scalarᶠ≡     a []       = sym (+-identityʳ a)
  scalarᶠ≡ {g} a (t ∷ ts) = trans (scalarᶠ≡ (a + g t) ts) (+-assoc a (g t) (Σg g ts))

  Σg-↭ : ∀ {g} {l₁ l₂} → l₁ ↭ l₂ → Σg g l₁ ≡ Σg g l₂
  Σg-↭ ↭-rfl                              = refl
  Σg-↭ {g} (prep x p)                     = cong (g x +_) (Σg-↭ {g} p)
  Σg-↭ {g} {l₁ = _ ∷ _ ∷ xs} (swap x y p) =
    trans (sym (+-assoc (g x) (g y) (Σg g xs)))
      (trans (cong (_+ Σg g xs) (+-comm (g x) (g y)))
        (trans (+-assoc (g y) (g x) (Σg g xs))
          (cong (λ z → g y + (g x + z)) (Σg-↭ {g} p))))
  Σg-↭ (↭-trans p q)                      = trans (Σg-↭ p) (Σg-↭ q)
```

`AllPairs` over a symmetric relation transports along permutations:

```agda
AllPairs-resp-↭ : ∀ {X : Type} {R : X → X → Type}
  → (∀ {x y} → R x y → R y x)
  → ∀ {l₁ l₂ : List X} → l₁ ↭ l₂ → AllPairs R l₁ → AllPairs R l₂
AllPairs-resp-↭ R-sym ↭-rfl          ap              = ap
AllPairs-resp-↭ R-sym (prep x p)     (a ∷ ap)        =
  All-resp-↭ p a ∷ AllPairs-resp-↭ R-sym p ap
AllPairs-resp-↭ R-sym (swap x y p)   ((axy ∷ ax) ∷ (ay ∷ ap)) =
  (R-sym axy ∷ All-resp-↭ p ay) ∷ (All-resp-↭ p ax ∷ AllPairs-resp-↭ R-sym p ap)
AllPairs-resp-↭ R-sym (↭-trans p q)  ap              =
  AllPairs-resp-↭ R-sym q (AllPairs-resp-↭ R-sym p ap)
```

## The locally-commuting `foldl` engine

Mazurkiewicz-style: given commutation of the fold operation on `R`-related,
`P`-satisfying elements and congruence in the accumulator, a left fold is
invariant under any permutation whose elements satisfy `All P` and
`AllPairs R`.

```agda
module _ {X M : Type} (_≈ᴹ_ : M → M → Type)
  (≈ᴹ-refl  : ∀ {m} → m ≈ᴹ m)
  (≈ᴹ-trans : ∀ {a b c} → a ≈ᴹ b → b ≈ᴹ c → a ≈ᴹ c)
  (R        : X → X → Type)
  (R-sym    : ∀ {x y} → R x y → R y x)
  (P        : X → Type)
  (op       : M → X → M)
  (op-congˡ : ∀ {a b} t → a ≈ᴹ b → op a t ≈ᴹ op b t)
  (op-comm  : ∀ {m x y} → R x y → P x → P y → op (op m x) y ≈ᴹ op (op m y) x)
  where
  private
    foldl-seed : ∀ {a b} l → a ≈ᴹ b → foldl op a l ≈ᴹ foldl op b l
    foldl-seed []       a≈b = a≈b
    foldl-seed (t ∷ ts) a≈b = foldl-seed ts (op-congˡ t a≈b)

  foldl-↭ : ∀ m {l₁ l₂} → Allᴸ.All P l₁ → AllPairs R l₁ → l₁ ↭ l₂
    → foldl op m l₁ ≈ᴹ foldl op m l₂
  foldl-↭ m _                    _                        ↭-rfl        = ≈ᴹ-refl
  foldl-↭ m (_ Allᴸ.∷ aP)        (_ ∷ ap)                 (prep x p)   = foldl-↭ (op m x) aP ap p
  foldl-↭ m {l₁ = _ ∷ _ ∷ xs} (px Allᴸ.∷ py Allᴸ.∷ aP) ((ixy ∷ _) ∷ (_ ∷ ap)) (swap x y p) =
    ≈ᴹ-trans (foldl-seed xs (op-comm ixy px py)) (foldl-↭ (op (op m y) x) aP ap p)
  foldl-↭ m aP                   ap                       (↭-trans p q) =
    ≈ᴹ-trans (foldl-↭ m aP ap p) (foldl-↭ m (All-resp-↭ p aP) (AllPairs-resp-↭ R-sym p ap) q)
```
