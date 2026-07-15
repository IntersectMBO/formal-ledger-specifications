-- Commutativity of single-key map operations at distinct keys.
--
-- This module provides a small "locality" framework: an operation
-- `O : (A ⇀ B) → (A ⇀ B)` is *local at key `k`* (`LocalOp O k`) if
--   (i)  it does not affect entries at any key `a ≢ k`, and
--   (ii) its output entries at `k` depend only on the input entries at `k`.
-- Any two operations that are local at *distinct* keys commute up to `≡ᵉ`
-- (`local-comm`).  We then show that the three singleton update operations
--   `_∪⁺ ❴ k , v ❵ᵐ`  (aggregating insert),
--   `_∪ˡ ❴ k , v ❵ᵐ`  (insert-if-absent),
--   `_∣ ❴ k ❵ ᶜ`      (delete)
-- are all local at `k`, so all nine pairings commute at distinct keys.
--
-- The value-level analysis of `_∪⁺_` builds on `Axiom.Set.Map.Extra`
-- (`∥_∪⁺_∥`, `∪⁺-unique-val`, `k×∥∪⁺∥∈∪⁺'`).  This module is a staging
-- area next to the reordering development: nothing here is ledger-specific,
-- and everything is a candidate for integration into `agda-sets`
-- (e.g. alongside `Axiom.Set.Map.Extra`).

{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Ledger.Properties.MapCommutativity where

open import abstract-set-theory.FiniteSetTheory
open import abstract-set-theory.Prelude
open import abstract-set-theory.Axiom.Set.Map.Extra
  using ( ∥_∪⁺_∥ ; lookupᵐ∈ ; ∈-lookupᵐ∈ ; ∈-lookupᵐ≡ ; lookupᵐ∈-irrelevance
        ; ∈-incl-set ; k×∥∪⁺∥∈∪⁺' ; ∪⁺-unique-val ; ∪⁺-dom∪
        ; resᶜ-dom∉⁻ ; resᶜ-dom∉⁺ )

import Algebra.Structures as AlgStrucs
open import Data.Product.Properties using (×-≡,≡←≡)

open Equivalence

module _ {A B : Type}
  (open AlgStrucs {A = B} _≡_)
  ⦃ _ : DecEq A ⦄ ⦃ _ : DecEq B ⦄
  ⦃ _ : CommutativeMonoid _ _ B ⦄
  ⦃ csg : IsCommutativeSemigroup _◇_ ⦄
  where

  private variable
    a k : A
    v w : B
    m m₁ m₂ m₃ : A ⇀ B

  -- Pointwise equality of two maps at a single key --------------------------
  --
  -- A record (rather than a function) so that the map arguments are inferable
  -- from a value's type (`_ˢ` is not injective).

  record _≈[_]_ (m₁ : A ⇀ B) (a : A) (m₂ : A ⇀ B) : Type where
    constructor mk≈[]
    field ent : (b : B) → ((a , b) ∈ m₁) ⇔ ((a , b) ∈ m₂)
  open _≈[_]_

  ≈[]-sym : m₁ ≈[ a ] m₂ → m₂ ≈[ a ] m₁
  ≈[]-sym e = mk≈[] λ b → mk⇔ (from (e .ent b)) (to (e .ent b))

  ≈[]-trans : m₁ ≈[ a ] m₂ → m₂ ≈[ a ] m₃ → m₁ ≈[ a ] m₃
  ≈[]-trans e f = mk≈[] λ b → mk⇔ (to (f .ent b) ∘ to (e .ent b))
                                  (from (e .ent b) ∘ from (f .ent b))

  ≈[]⇒dom : m₁ ≈[ a ] m₂ → a ∈ dom m₁ → a ∈ dom m₂
  ≈[]⇒dom e a∈ = let (b , ab∈) = from dom∈ a∈ in to dom∈ (b , to (e .ent b) ab∈)

  -- Maps that agree pointwise at every key are `≡ᵉ`-equal.
  ≈[]-everywhere : ((a : A) → m₁ ≈[ a ] m₂) → m₁ ˢ ≡ᵉ m₂ ˢ
  ≈[]-everywhere e .proj₁ {x} x∈ = to   (e (x .proj₁) .ent (x .proj₂)) x∈
  ≈[]-everywhere e .proj₂ {x} x∈ = from (e (x .proj₁) .ent (x .proj₂)) x∈

  -- Operations local at a single key ----------------------------------------

  record LocalOp (O : (A ⇀ B) → (A ⇀ B)) (k : A) : Type where
    field
      away : ∀ m {a} → a ≢ k → O m ≈[ a ] m
      at   : ∀ {m₁ m₂} → m₁ ≈[ k ] m₂ → O m₁ ≈[ k ] O m₂

  -- Two operations local at distinct keys commute (up to `≡ᵉ`).
  local-comm : {O₁ O₂ : (A ⇀ B) → (A ⇀ B)} {k₁ k₂ : A}
             → LocalOp O₁ k₁ → LocalOp O₂ k₂ → k₁ ≢ k₂
             → ∀ m → (O₂ (O₁ m)) ˢ ≡ᵉ (O₁ (O₂ m)) ˢ
  local-comm {O₁} {O₂} {k₁} {k₂} L₁ L₂ k₁≢k₂ m = ≈[]-everywhere pt
    where
    open LocalOp
    pt : (a : A) → O₂ (O₁ m) ≈[ a ] O₁ (O₂ m)
    pt a with a ≟ k₁ | a ≟ k₂
    ... | yes refl | yes refl = ⊥-elim (k₁≢k₂ refl)
    ... | yes refl | no a≢k₂ =
      ≈[]-trans (L₂ .away (O₁ m) a≢k₂) (L₁ .at (≈[]-sym (L₂ .away m a≢k₂)))
    ... | no a≢k₁ | yes refl =
      ≈[]-trans (L₂ .at (L₁ .away m a≢k₁)) (≈[]-sym (L₁ .away (O₂ m) a≢k₁))
    ... | no a≢k₁ | no a≢k₂ =
      ≈[]-trans (L₂ .away (O₁ m) a≢k₂) (≈[]-trans (L₁ .away m a≢k₁)
      (≈[]-trans (≈[]-sym (L₂ .away m a≢k₂)) (≈[]-sym (L₁ .away (O₂ m) a≢k₁))))

  -- Singleton-map helpers ----------------------------------------------------

  ∈-sing⁻ : (a , w) ∈ ❴ k , v ❵ᵐ → a ≡ k × w ≡ v
  ∈-sing⁻ = ×-≡,≡←≡ ∘ from ∈-singleton

  ∈-sing⁺ : (k , v) ∈ ❴ k , v ❵ᵐ
  ∈-sing⁺ = to ∈-singleton refl

  dom-sing⁻ : a ∈ dom ❴ k , v ❵ᵐ → a ≡ k
  dom-sing⁻ a∈ = let (b , ab∈) = from dom∈ a∈ in ∈-sing⁻ ab∈ .proj₁

  dom-sing⁺ : k ∈ dom ❴ k , v ❵ᵐ
  dom-sing⁺ {k = k} {v = v} = to dom∈ prf
    where
    prf : ∃[ b ] ((k , b) ∈ ❴ k , v ❵ᵐ)
    prf = v , ∈-sing⁺ {k = k} {v = v}

  lookupᵐ∈-sing : (k∈ : k ∈ dom ❴ k , v ❵ᵐ) → lookupᵐ∈ ❴ k , v ❵ᵐ k∈ ≡ v
  lookupᵐ∈-sing {k = k} {v = v} k∈ = ∈-sing⁻ (∈-lookupᵐ∈ ❴ k , v ❵ᵐ k∈) .proj₂

  -- Value-level view of `_∪⁺_` ------------------------------------------------
  --
  -- An entry `(a , w) ∈ m₁ ∪⁺ m₂` arises in exactly one of three ways:
  -- `a` is only in `dom m₁` (value copied from `m₁`), only in `dom m₂`
  -- (copied from `m₂`), or in both (values combined with `_◇_`).

  data ∪⁺-View (m₁ m₂ : A ⇀ B) (a : A) (w : B) : Type where
    inˡ : (a∈₁ : a ∈ dom m₁) → a ∉ dom m₂ → w ≡ lookupᵐ∈ m₁ a∈₁ → ∪⁺-View m₁ m₂ a w
    inʳ : a ∉ dom m₁ → (a∈₂ : a ∈ dom m₂) → w ≡ lookupᵐ∈ m₂ a∈₂ → ∪⁺-View m₁ m₂ a w
    inᵇ : (a∈₁ : a ∈ dom m₁) (a∈₂ : a ∈ dom m₂)
        → w ≡ lookupᵐ∈ m₁ a∈₁ ◇ lookupᵐ∈ m₂ a∈₂ → ∪⁺-View m₁ m₂ a w

  opaque
    -- The value `∥ m₁ ∪⁺ m₂ ∥ p` computed at a key, by cases on domain
    -- membership (mirrors `fold-irrelevance` in `Extra`).

    ∥∪⁺∥-this : (k∈₁ : k ∈ dom m₁) (k∉₂ : k ∉ dom m₂) {p : k ∈ dom m₁ ∪ dom m₂}
              → ∥ m₁ ∪⁺ m₂ ∥ p ≡ lookupᵐ∈ m₁ k∈₁
    ∥∪⁺∥-this {k = k} {m₁ = m₁} {m₂ = m₂} k∈₁ k∉₂ with k ∈? dom m₁ | k ∈? dom m₂
    ... | no k∉   | _      = ⊥-elim (k∉ k∈₁)
    ... | yes _   | yes k∈ = ⊥-elim (k∉₂ k∈)
    ... | yes _   | no _   = lookupᵐ∈-irrelevance m₁

    ∥∪⁺∥-that : (k∉₁ : k ∉ dom m₁) (k∈₂ : k ∈ dom m₂) {p : k ∈ dom m₁ ∪ dom m₂}
              → ∥ m₁ ∪⁺ m₂ ∥ p ≡ lookupᵐ∈ m₂ k∈₂
    ∥∪⁺∥-that {k = k} {m₁ = m₁} {m₂ = m₂} k∉₁ k∈₂ with k ∈? dom m₁ | k ∈? dom m₂
    ... | yes k∈  | _      = ⊥-elim (k∉₁ k∈)
    ... | no _    | no k∉  = ⊥-elim (k∉ k∈₂)
    ... | no _    | yes _  = lookupᵐ∈-irrelevance m₂

    ∥∪⁺∥-these : (k∈₁ : k ∈ dom m₁) (k∈₂ : k ∈ dom m₂) {p : k ∈ dom m₁ ∪ dom m₂}
               → ∥ m₁ ∪⁺ m₂ ∥ p ≡ lookupᵐ∈ m₁ k∈₁ ◇ lookupᵐ∈ m₂ k∈₂
    ∥∪⁺∥-these {k = k} {m₁ = m₁} {m₂ = m₂} k∈₁ k∈₂ with k ∈? dom m₁ | k ∈? dom m₂
    ... | no k∉   | _      = ⊥-elim (k∉ k∈₁)
    ... | yes _   | no k∉  = ⊥-elim (k∉ k∈₂)
    ... | yes _   | yes _  = cong₂ _◇_ (lookupᵐ∈-irrelevance m₁) (lookupᵐ∈-irrelevance m₂)

    -- Introduction rules for `_∪⁺_` membership.

    ∈-∪⁺⁺ˡ : (a , w) ∈ m₁ → a ∉ dom m₂ → (a , w) ∈ m₁ ∪⁺ m₂
    ∈-∪⁺⁺ˡ {a = a} {w = w} {m₁ = m₁} {m₂ = m₂} aw∈ a∉₂ =
      subst (λ • → (a , •) ∈ m₁ ∪⁺ m₂) v≡w (k×∥∪⁺∥∈∪⁺' p)
      where
      a∈₁ : a ∈ dom m₁
      a∈₁ = to dom∈ (w , aw∈)
      p : a ∈ dom m₁ ∪ dom m₂
      p = to ∈-∪ (inj₁ a∈₁)
      v≡w : ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set p .proj₁) ≡ w
      v≡w = trans (∥∪⁺∥-this a∈₁ a∉₂) (sym (∈-lookupᵐ≡ m₁ {k∈m = a∈₁} aw∈))

    ∈-∪⁺⁺ʳ : a ∉ dom m₁ → (a , w) ∈ m₂ → (a , w) ∈ m₁ ∪⁺ m₂
    ∈-∪⁺⁺ʳ {a = a} {m₁ = m₁} {w = w} {m₂ = m₂} a∉₁ aw∈ =
      subst (λ • → (a , •) ∈ m₁ ∪⁺ m₂) v≡w (k×∥∪⁺∥∈∪⁺' p)
      where
      a∈₂ : a ∈ dom m₂
      a∈₂ = to dom∈ (w , aw∈)
      p : a ∈ dom m₁ ∪ dom m₂
      p = to ∈-∪ (inj₂ a∈₂)
      v≡w : ∥ m₁ ∪⁺ m₂ ∥ (∈-incl-set p .proj₁) ≡ w
      v≡w = trans (∥∪⁺∥-that a∉₁ a∈₂) (sym (∈-lookupᵐ≡ m₂ {k∈m = a∈₂} aw∈))

    ∈-∪⁺⁺ᵇ : (a∈₁ : a ∈ dom m₁) (a∈₂ : a ∈ dom m₂)
           → (a , lookupᵐ∈ m₁ a∈₁ ◇ lookupᵐ∈ m₂ a∈₂) ∈ m₁ ∪⁺ m₂
    ∈-∪⁺⁺ᵇ {a = a} {m₁ = m₁} {m₂ = m₂} a∈₁ a∈₂ =
      subst (λ • → (a , •) ∈ m₁ ∪⁺ m₂) (∥∪⁺∥-these a∈₁ a∈₂)
            (k×∥∪⁺∥∈∪⁺' (to ∈-∪ (inj₁ a∈₁)))

    -- Elimination rule: every `_∪⁺_` entry is of one of the three shapes.

    ∈-∪⁺⁻ : (a , w) ∈ m₁ ∪⁺ m₂ → ∪⁺-View m₁ m₂ a w
    ∈-∪⁺⁻ {a = a} {w = w} {m₁ = m₁} {m₂ = m₂} aw∈ with a ∈? dom m₁ | a ∈? dom m₂
    ... | yes a∈₁ | no a∉₂ =
      inˡ a∈₁ a∉₂ (trans (∪⁺-unique-val (to ∈-∪ (inj₁ a∈₁)) aw∈) (∥∪⁺∥-this a∈₁ a∉₂))
    ... | no a∉₁ | yes a∈₂ =
      inʳ a∉₁ a∈₂ (trans (∪⁺-unique-val (to ∈-∪ (inj₂ a∈₂)) aw∈) (∥∪⁺∥-that a∉₁ a∈₂))
    ... | yes a∈₁ | yes a∈₂ =
      inᵇ a∈₁ a∈₂ (trans (∪⁺-unique-val (to ∈-∪ (inj₁ a∈₁)) aw∈) (∥∪⁺∥-these a∈₁ a∈₂))
    ... | no a∉₁ | no a∉₂ = ⊥-elim (case from ∈-∪ (∪⁺-dom∪ aw∈) of λ where
        (inj₁ a∈₁) → a∉₁ a∈₁
        (inj₂ a∈₂) → a∉₂ a∈₂)

    -- `_∪⁺ ❴ k , v ❵ᵐ` is local at `k` -----------------------------------------

    ∪⁺-sing-away : ∀ m {a} → a ≢ k → (m ∪⁺ ❴ k , v ❵ᵐ) ≈[ a ] m
    ∪⁺-sing-away {k = k} {v = v} m {a} a≢k .ent b = mk⇔ fwd bwd
      where
      a∉s : a ∉ dom ❴ k , v ❵ᵐ
      a∉s = a≢k ∘ dom-sing⁻
      fwd : (a , b) ∈ m ∪⁺ ❴ k , v ❵ᵐ → (a , b) ∈ m
      fwd ab∈ with ∈-∪⁺⁻ ab∈
      ... | inˡ a∈₁ _ eq = subst (λ • → (a , •) ∈ m) (sym eq) (∈-lookupᵐ∈ m a∈₁)
      ... | inʳ _ a∈₂ _  = ⊥-elim (a∉s a∈₂)
      ... | inᵇ _ a∈₂ _  = ⊥-elim (a∉s a∈₂)
      bwd : (a , b) ∈ m → (a , b) ∈ m ∪⁺ ❴ k , v ❵ᵐ
      bwd ab∈ = ∈-∪⁺⁺ˡ ab∈ a∉s

    private
      ∪⁺-sing-at-⊆ : (e : m₁ ≈[ k ] m₂) (b : B)
                   → (k , b) ∈ m₁ ∪⁺ ❴ k , v ❵ᵐ → (k , b) ∈ m₂ ∪⁺ ❴ k , v ❵ᵐ
      ∪⁺-sing-at-⊆ {m₁ = m₁} {k = k} {m₂ = m₂} {v = v} e b kb∈ with ∈-∪⁺⁻ kb∈
      ... | inˡ _ k∉s _ = ⊥-elim (k∉s dom-sing⁺)
      ... | inʳ k∉₁ k∈s eq =
        ∈-∪⁺⁺ʳ (k∉₁ ∘ ≈[]⇒dom (≈[]-sym e))
               (subst (λ • → (k , •) ∈ ❴ k , v ❵ᵐ)
                      (sym (trans eq (lookupᵐ∈-sing k∈s))) ∈-sing⁺)
      ... | inᵇ k∈₁ k∈s eq =
        subst (λ • → (k , •) ∈ m₂ ∪⁺ ❴ k , v ❵ᵐ) (sym b≡) (∈-∪⁺⁺ᵇ k∈₂ k∈s)
        where
        l₁∈₂ : (k , lookupᵐ∈ m₁ k∈₁) ∈ m₂
        l₁∈₂ = to (e .ent (lookupᵐ∈ m₁ k∈₁)) (∈-lookupᵐ∈ m₁ k∈₁)
        k∈₂ : k ∈ dom m₂
        k∈₂ = to dom∈ (_ , l₁∈₂)
        b≡ : b ≡ lookupᵐ∈ m₂ k∈₂ ◇ lookupᵐ∈ ❴ k , v ❵ᵐ k∈s
        b≡ = trans eq (cong (_◇ lookupᵐ∈ ❴ k , v ❵ᵐ k∈s)
                            (∈-lookupᵐ≡ m₂ {k∈m = k∈₂} l₁∈₂))

    ∪⁺-sing-local : LocalOp (_∪⁺ ❴ k , v ❵ᵐ) k
    ∪⁺-sing-local .LocalOp.away = ∪⁺-sing-away
    ∪⁺-sing-local .LocalOp.at e .ent b = mk⇔ (∪⁺-sing-at-⊆ e b) (∪⁺-sing-at-⊆ (≈[]-sym e) b)

    -- `_∪ˡ ❴ k , v ❵ᵐ` is local at `k` -----------------------------------------
    --
    -- `(m ∪ˡ m') ˢ` is definitionally `m ˢ ∪ (filter of m' ˢ away from dom m)`,
    -- so its membership splits by `∈-∪` / `∈-filter`.

    ∈-∪ˡ⁻ : (a , w) ∈ m₁ ∪ˡ m₂ → (a , w) ∈ m₁ ⊎ ((a , w) ∈ m₂ × a ∉ dom m₁)
    ∈-∪ˡ⁻ aw∈ with from ∈-∪ aw∈
    ... | inj₁ x = inj₁ x
    ... | inj₂ y = inj₂ (from ∈-filter y .proj₂ , from ∈-filter y .proj₁)

    ∈-∪ˡ⁺ˡ : (a , w) ∈ m₁ → (a , w) ∈ m₁ ∪ˡ m₂
    ∈-∪ˡ⁺ˡ = to ∈-∪ ∘ inj₁

    ∈-∪ˡ⁺ʳ : a ∉ dom m₁ → (a , w) ∈ m₂ → (a , w) ∈ m₁ ∪ˡ m₂
    ∈-∪ˡ⁺ʳ a∉₁ aw∈ = to ∈-∪ (inj₂ (to ∈-filter (a∉₁ , aw∈)))

    ∪ˡ-sing-away : ∀ m {a} → a ≢ k → (m ∪ˡ ❴ k , v ❵ᵐ) ≈[ a ] m
    ∪ˡ-sing-away {k = k} {v = v} m {a} a≢k .ent b = mk⇔ fwd bwd
      where
      fwd : (a , b) ∈ m ∪ˡ ❴ k , v ❵ᵐ → (a , b) ∈ m
      fwd ab∈ with ∈-∪ˡ⁻ {m₁ = m} {m₂ = ❴ k , v ❵ᵐ} ab∈
      ... | inj₁ x = x
      ... | inj₂ (ab∈s , _) = ⊥-elim (a≢k (∈-sing⁻ ab∈s .proj₁))
      bwd : (a , b) ∈ m → (a , b) ∈ m ∪ˡ ❴ k , v ❵ᵐ
      bwd = ∈-∪ˡ⁺ˡ {m₁ = m} {m₂ = ❴ k , v ❵ᵐ}

    private
      ∪ˡ-sing-at-⊆ : (e : m₁ ≈[ k ] m₂) (b : B)
                   → (k , b) ∈ m₁ ∪ˡ ❴ k , v ❵ᵐ → (k , b) ∈ m₂ ∪ˡ ❴ k , v ❵ᵐ
      ∪ˡ-sing-at-⊆ {m₁ = m₁} {k = k} {m₂ = m₂} {v = v} e b kb∈
        with ∈-∪ˡ⁻ {m₁ = m₁} {m₂ = ❴ k , v ❵ᵐ} kb∈
      ... | inj₁ x = ∈-∪ˡ⁺ˡ {m₁ = m₂} {m₂ = ❴ k , v ❵ᵐ} (to (e .ent b) x)
      ... | inj₂ (kb∈s , k∉₁) =
        ∈-∪ˡ⁺ʳ {m₁ = m₂} {m₂ = ❴ k , v ❵ᵐ} (k∉₁ ∘ ≈[]⇒dom (≈[]-sym e)) kb∈s

    ∪ˡ-sing-local : LocalOp (_∪ˡ ❴ k , v ❵ᵐ) k
    ∪ˡ-sing-local .LocalOp.away = ∪ˡ-sing-away
    ∪ˡ-sing-local .LocalOp.at e .ent b = mk⇔ (∪ˡ-sing-at-⊆ e b) (∪ˡ-sing-at-⊆ (≈[]-sym e) b)

    -- `_∣ ❴ k ❵ ᶜ` is local at `k` ---------------------------------------------

    resᶜ-sing-away : ∀ m {a} → a ≢ k → (m ∣ ❴ k ❵ ᶜ) ≈[ a ] m
    resᶜ-sing-away {k = k} m {a} a≢k .ent b = mk⇔ fwd bwd
      where
      a∉s : a ∉ ❴ k ❵
      a∉s = a≢k ∘ from ∈-singleton
      fwd : (a , b) ∈ (m ∣ ❴ k ❵ ᶜ) → (a , b) ∈ m
      fwd = proj₁ ∘ resᶜ-dom∉⁻ m
      bwd : (a , b) ∈ m → (a , b) ∈ (m ∣ ❴ k ❵ ᶜ)
      bwd ab∈ = resᶜ-dom∉⁺ m (ab∈ , a∉s)

    private
      resᶜ-sing-at-⊆ : (e : m₁ ≈[ k ] m₂) (b : B)
                     → (k , b) ∈ (m₁ ∣ ❴ k ❵ ᶜ) → (k , b) ∈ (m₂ ∣ ❴ k ❵ ᶜ)
      resᶜ-sing-at-⊆ {m₁ = m₁} {m₂ = m₂} e b kb∈ =
        let (kb∈₁ , k∉s) = resᶜ-dom∉⁻ m₁ kb∈
        in resᶜ-dom∉⁺ m₂ (to (e .ent b) kb∈₁ , k∉s)

    resᶜ-sing-local : LocalOp (_∣ ❴ k ❵ ᶜ) k
    resᶜ-sing-local .LocalOp.away = resᶜ-sing-away
    resᶜ-sing-local .LocalOp.at e .ent b = mk⇔ (resᶜ-sing-at-⊆ e b) (resᶜ-sing-at-⊆ (≈[]-sym e) b)
