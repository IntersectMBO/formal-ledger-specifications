---
source_branch: master
source_path: src/Ledger/Prelude/Properties/NetEffect.lagda.md
---

# Net effect of a sequence of remove-then-add map updates {#sec:net-effect}

Era-independent closed form of a sequence of UTxO-style updates, used by the
reordering developments of the Conway and Dijkstra eras.

<!--
```agda
{-# OPTIONS --safe #-}

module Ledger.Prelude.Properties.NetEffect where

open import Ledger.Prelude
open import Ledger.Prelude.Properties.GeneralLemmas
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Unary.Any using (here; there) renaming (Any to Anyˡ)
open import Data.List.Relation.Binary.Pointwise using (Pointwise; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans)
```
-->

```agda
-- An update `a` removes `rem a` and, when `ok a`, then adds `add a`.
module Updates {K V A : Type} ⦃ _ : DecEq K ⦄
  (ok : A → Bool) (rem : A → ℙ K) (add : A → K ⇀ V) where

  added : A → K ⇀ V
  added a = if ok a then add a else ∅ᵐ

  step : A → K ⇀ V → K ⇀ V
  step a u = if ok a then (u ∣ rem a ᶜ) ∪ˡ add a else u ∣ rem a ᶜ

  addedAll : List A → K ⇀ V
  addedAll []       = ∅ᵐ
  addedAll (a ∷ as) = added a ∪ˡ addedAll as

  stepAll : K ⇀ V → List A → K ⇀ V
  stepAll u []       = u
  stepAll u (a ∷ as) = stepAll (step a u) as

  -- the closed form: everything ever added, minus everything ever removed
  net : K ⇀ V → List A → K ⇀ V
  net u l = (u ∪ˡ addedAll l) ∣ ⋃map rem l ᶜ

  -- each update's removed keys avoid its own and all later additions
  Rem#Add : List A → Type
  Rem#Add []       = ⊤
  Rem#Add (a ∷ as) = disjoint (rem a) (dom ((added a ∪ˡ addedAll as) ˢ)) × Rem#Add as

  DisjAdd DisjOuts : List A → Type
  DisjAdd  = AllPairs (λ a a′ → disjoint (dom (added a ˢ)) (dom (added a′ ˢ)))
  DisjOuts = AllPairs (λ a a′ → disjoint (dom (add a ˢ)) (dom (add a′ ˢ)))

  stepAll-++ : ∀ u xs ys → stepAll u (xs ++ ys) ≡ stepAll (stepAll u xs) ys
  stepAll-++ u []       ys = refl
  stepAll-++ u (x ∷ xs) ys = stepAll-++ (step x u) xs ys

  stepAll-net : ∀ {u} l → Rem#Add l → (stepAll u l) ˢ ≡ᵉ (net u l) ˢ
  stepAll-net {u} []       _           = SetSetoid.sym (SetSetoid.trans res-∅ᶜ (∪ˡ-∅ʳ {m = u}))
  stepAll-net {u} (a ∷ as) (hd , rest) with ok a | hd
  ... | true | hdv =
    SetSetoid.trans (stepAll-net {(u ∣ rem a ᶜ) ∪ˡ add a} as rest)
      (SetSetoid.trans (Properties.filter-cong (∪ˡ-assoc {a = u ∣ rem a ᶜ} {b = add a} {c = addedAll as}))
        (SetSetoid.trans (Properties.filter-cong (res-∪ˡ-out {u = u} {M = add a ∪ˡ addedAll as} {X = rem a} hdv))
          (res-merge {m = u ∪ˡ (add a ∪ˡ addedAll as)} {X = rem a} {Y = ⋃map rem as})))
  ... | false | hdi =
    SetSetoid.trans (stepAll-net {u ∣ rem a ᶜ} as rest)
      (SetSetoid.trans (Properties.filter-cong (res-∪ˡ-out {u = u} {M = addedAll as} {X = rem a} hd′))
        (SetSetoid.trans (res-merge {m = u ∪ˡ addedAll as} {X = rem a} {Y = ⋃map rem as})
          (Properties.filter-cong
            (∪ˡ-cong {m = u} {m' = addedAll as} {m'' = u} {m''' = ∅ᵐ ∪ˡ addedAll as}
              SetSetoid.refl (SetSetoid.sym (∪ˡ-∅ˡ {m = addedAll as}))))))
    where
    hd′ : disjoint (rem a) (dom ((addedAll as) ˢ))
    hd′ k∈R k∈O = hdi k∈R (dom-∪ˡ {m = ∅ᵐ} {m' = addedAll as} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈O)))

  added-dom⊆ : ∀ a {k : K} → k ∈ dom (added a ˢ) → k ∈ dom (add a ˢ)
  added-dom⊆ a with ok a
  ... | true  = id
  ... | false = λ k∈ → ⊥-elim (Properties.∉-∅ (proj₂ (Equivalence.from dom∈ k∈)))

  DisjOuts⇒Add : ∀ {l} → DisjOuts l → DisjAdd l
  DisjOuts⇒Add []       = []
  DisjOuts⇒Add (d ∷ ds) =
    Allᴸ.map (λ {a′} e {k} k∈ k∈′ → e (added-dom⊆ _ k∈) (added-dom⊆ a′ k∈′)) d ∷ DisjOuts⇒Add ds

  addedAll-↭ : ∀ {l₁ l₂} → l₁ ↭ l₂ → DisjAdd l₁ → (addedAll l₁) ˢ ≡ᵉ (addedAll l₂) ˢ
  addedAll-↭ ↭-rfl _ = SetSetoid.refl
  addedAll-↭ {_ ∷ xs} {_ ∷ ys} (prep x p) (_ ∷ ap) =
    ∪ˡ-cong {m = added x} {m' = addedAll xs} {m'' = added x} {m''' = addedAll ys}
      SetSetoid.refl (addedAll-↭ p ap)
  addedAll-↭ {_ ∷ _ ∷ xs} {_ ∷ _ ∷ ys} (swap x y p) ((axy ∷ _) ∷ (_ ∷ ap)) =
    SetSetoid.trans (SetSetoid.sym (∪ˡ-assoc {a = added x} {b = added y} {c = addedAll xs}))
      (SetSetoid.trans
        (∪ˡ-cong {m = added x ∪ˡ added y} {m' = addedAll xs}
                 {m'' = added y ∪ˡ added x} {m''' = addedAll xs}
          (∪ˡ-sym-disjoint {m = added x} {m′ = added y} axy) SetSetoid.refl)
        (SetSetoid.trans (∪ˡ-assoc {a = added y} {b = added x} {c = addedAll xs})
          (∪ˡ-cong {m = added y} {m' = added x ∪ˡ addedAll xs}
                   {m'' = added y} {m''' = added x ∪ˡ addedAll ys} SetSetoid.refl
            (∪ˡ-cong {m = added x} {m' = addedAll xs}
                     {m'' = added x} {m''' = addedAll ys} SetSetoid.refl (addedAll-↭ p ap)))))
  addedAll-↭ (↭-trans p q) ap =
    SetSetoid.trans (addedAll-↭ p ap) (addedAll-↭ q (AllPairs-resp-↭ Properties.disjoint-sym p ap))

  net-↭ : ∀ {u l₁ l₂} → l₁ ↭ l₂ → DisjAdd l₁ → (net u l₁) ˢ ≡ᵉ (net u l₂) ˢ
  net-↭ {u} {l₁} {l₂} p disj =
    SetSetoid.trans
      (Properties.filter-cong
        (∪ˡ-cong {m = u} {m' = addedAll l₁} {m'' = u} {m''' = addedAll l₂}
          SetSetoid.refl (addedAll-↭ p disj)))
      (resᶜ-set-cong {m = u ∪ˡ addedAll l₂} (⋃map-↭ {f = rem} p))

  -- two runs of permuted update lists end in the same map
  stepAll-↭ : ∀ {u l₁ l₂} → l₁ ↭ l₂ → Rem#Add l₁ → Rem#Add l₂ → DisjOuts l₁
    → (stepAll u l₁) ˢ ≡ᵉ (stepAll u l₂) ˢ
  stepAll-↭ {u} {l₁} {l₂} p r₁ r₂ d =
    SetSetoid.trans (stepAll-net l₁ r₁)
      (SetSetoid.trans (net-↭ {u} p (DisjOuts⇒Add d)) (SetSetoid.sym (stepAll-net l₂ r₂)))

  -- an entry of a member's added map embeds into `addedAll`
  ∈-addedAll : ∀ {l : List A} {a k w} → a ∈ˡ l → DisjAdd l
    → (k , w) ∈ added a ˢ → (k , w) ∈ addedAll l ˢ
  ∈-addedAll {a′ ∷ as} (here refl) _ kw∈ = ∈-∪ˡ⁺ {m = added a′} {m' = addedAll as} (inj₁ kw∈)
  ∈-addedAll {a′ ∷ as} {a} {k} {w} (there a∈) (d ∷ ds) kw∈ =
    ∈-∪ˡ⁺ {m = added a′} {m' = addedAll as}
      (inj₂ ( (λ k∈d′ → Allᴸ.lookup d a∈ k∈d′ (Equivalence.to dom∈ (w , kw∈)))
            , ∈-addedAll a∈ ds kw∈))

  -- the added maps of the members sit inside the valuation `u₀ ∪ˡ addedAll l`
  added⊆V : ∀ {u₀ : K ⇀ V} {l : List A} {a} → a ∈ˡ l → DisjAdd l
    → Allᴸ.All (λ a′ → disjoint (dom (u₀ ˢ)) (dom (add a′ ˢ))) l
    → added a ˢ ⊆ (u₀ ∪ˡ addedAll l) ˢ
  added⊆V {u₀} {l} {a} a∈ disj fr {(k , w)} kw∈ =
    ∈-∪ˡ⁺ {m = u₀} {m' = addedAll l}
      (inj₂ ( (λ k∈u₀ → Allᴸ.lookup fr a∈ k∈u₀ (added-dom⊆ a (Equivalence.to dom∈ (w , kw∈))))
            , ∈-addedAll a∈ disj kw∈))

  -- a step/stepAll stays inside any extension containing the state and the added maps
  resᶜ-⊆ : ∀ {u : K ⇀ V} {X : ℙ K} → (u ∣ X ᶜ) ˢ ⊆ u ˢ
  resᶜ-⊆ kw∈ = proj₂ (Equivalence.from ∈-filter kw∈)

  step-⊆ : ∀ {u W : K ⇀ V} {a} → u ˢ ⊆ W ˢ → added a ˢ ⊆ W ˢ → (step a u) ˢ ⊆ W ˢ
  step-⊆ {u} {W} {a} u⊆ a⊆ with ok a | a⊆
  ... | true | a⊆′ = λ kw∈ → case ∈-∪ˡ⁻ {m = u ∣ rem a ᶜ} {m' = add a} kw∈ of λ where
    (inj₁ kw∈r)       → u⊆ (resᶜ-⊆ {u} {rem a} kw∈r)
    (inj₂ (_ , kw∈o)) → a⊆′ kw∈o
  ... | false | _ = λ kw∈ → u⊆ (resᶜ-⊆ {u} {rem a} kw∈)

  stepAll-⊆ : ∀ {u W : K ⇀ V} {l} → u ˢ ⊆ W ˢ → Allᴸ.All (λ a → added a ˢ ⊆ W ˢ) l → (stepAll u l) ˢ ⊆ W ˢ
  stepAll-⊆ u⊆ []         = u⊆
  stepAll-⊆ {u} {W} {a ∷ as} u⊆ (a⊆ ∷ as⊆) = stepAll-⊆ {step a u} {W} {as} (step-⊆ {u} {W} {a} u⊆ a⊆) as⊆

  -- a step only keeps old keys or adds its own
  dom-step : ∀ a {u : K ⇀ V} {k : K} → k ∈ dom (step a u ˢ) → k ∈ dom (u ˢ) ⊎ k ∈ dom (added a ˢ)
  dom-step a {u} {k} k∈ with ok a
  ... | true  = case Equivalence.from ∈-∪ (dom-∪ˡ {m = u ∣ rem a ᶜ} {m' = add a} .proj₁ k∈) of λ where
                  (inj₁ h) → inj₁ (res-comp-domᵐ h)
                  (inj₂ h) → inj₂ h
  ... | false = inj₁ (res-comp-domᵐ k∈)

  dom-stepAll : ∀ {u : K ⇀ V} l {k : K} → k ∈ dom (stepAll u l ˢ) → k ∈ dom (u ˢ) ⊎ k ∈ dom (addedAll l ˢ)
  dom-stepAll []       k∈ = inj₁ k∈
  dom-stepAll {u} (a ∷ as) k∈ with dom-stepAll {step a u} as k∈
  ... | inj₂ h = inj₂ (dom-∪ˡ {m = added a} {m' = addedAll as} .proj₂ (Equivalence.to ∈-∪ (inj₂ h)))
  ... | inj₁ h with dom-step a {u} h
  ...   | inj₁ h′ = inj₁ h′
  ...   | inj₂ h′ = inj₂ (dom-∪ˡ {m = added a} {m' = addedAll as} .proj₂ (Equivalence.to ∈-∪ (inj₁ h′)))

  -- the keys added by a list come from its members
  dom-addedAll : ∀ {B : Type} {Q : K → B → Type} {as : List A} {bs : List B}
    → Pointwise (λ a b → ∀ {k : K} → k ∈ dom (add a ˢ) → Q k b) as bs
    → ∀ {k : K} → k ∈ dom (addedAll as ˢ) → Anyˡ (Q k) bs
  dom-addedAll [] k∈ = ⊥-elim (Properties.∉-∅ (proj₂ (Equivalence.from dom∈ k∈)))
  dom-addedAll {as = a ∷ as} (p ∷ ps) k∈ with Equivalence.from ∈-∪ (dom-∪ˡ {m = added a} {m' = addedAll as} .proj₁ k∈)
  ... | inj₁ h = here (p (added-dom⊆ a h))
  ... | inj₂ h = there (dom-addedAll ps h)

  -- removed keys outside `P` and added keys inside `P` settle a prefix
  Rem#Add-prefix : ∀ (P : K → Type) xs ys → Allᴸ.All (λ a → ∀ {k} → k ∈ rem a → ¬ P k) xs
    → (∀ {k} → k ∈ dom (addedAll (xs ++ ys) ˢ) → P k) → Rem#Add ys → Rem#Add (xs ++ ys)
  Rem#Add-prefix P []       ys _        _   r = r
  Rem#Add-prefix P (x ∷ xs) ys (h ∷ hs) inP r =
      (λ k∈r k∈a → h k∈r (inP k∈a))
    , Rem#Add-prefix P xs ys hs
        (λ k∈ → inP (dom-∪ˡ {m = added x} {m' = addedAll (xs ++ ys)} .proj₂ (Equivalence.to ∈-∪ (inj₂ k∈)))) r
```
