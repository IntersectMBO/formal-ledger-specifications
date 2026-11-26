---
source_branch: master
source_path: src/Ledger/Prelude/Properties/TraceReorder.lagda.md
---

# Trace-level reordering and insertion, for any transition system {#sec:trace-reorder}

Era-independent plumbing shared by the Conway and Dijkstra insertion and
independence developments: everything here is stated for an arbitrary step
relation and state equivalence, with the era-specific single-step facts as
module parameters.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Prelude

module Ledger.Prelude.Properties.TraceReorder
  {Env S Sig : Type}
  (_⊢_⇀⦇_,STEP⦈_ : Env → S → Sig → S → Type)
  (_≈_     : S → S → Type)
  (≈-refl  : ∀ {s} → s ≈ s)
  (≈-trans : ∀ {s₁ s₂ s₃} → s₁ ≈ s₂ → s₂ ≈ s₃ → s₁ ≈ s₃)
  where

open import Ledger.Prelude.Properties.GeneralLemmas using (AllPairs-resp-↭)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; prep; swap)
  renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties
  using (All-resp-↭)

private variable
  Γ : Env
  s s₀ s₁ s₂ s′ : S
  tx t t₁ t₂ : Sig
  txs1 txs2 l l₁ l₂ : List Sig
```
-->

```agda
_⊢_⇀⦇_,STEPS⦈_ : Env → S → List Sig → S → Type
_⊢_⇀⦇_,STEPS⦈_ = ReflexiveTransitiveClosure {sts = _⊢_⇀⦇_,STEP⦈_}

STEPS-++ : Γ ⊢ s ⇀⦇ l₁ ,STEPS⦈ s′ → Γ ⊢ s′ ⇀⦇ l₂ ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ l₁ ++ l₂ ,STEPS⦈ s₁
STEPS-++ (BS-base Id-nop) r = r
STEPS-++ (BS-ind st rest) r = BS-ind st (STEPS-++ rest r)

-- a two-element run, from two steps
STEPS-2 : Γ ⊢ s ⇀⦇ t₁ ,STEP⦈ s₁ → Γ ⊢ s₁ ⇀⦇ t₂ ,STEP⦈ s₂ → Γ ⊢ s ⇀⦇ t₁ ∷ t₂ ∷ [] ,STEPS⦈ s₂
STEPS-2 st₁ st₂ = BS-ind st₁ (BS-ind st₂ (BS-base Id-nop))
```

## Everything below assumes the step relation respects `_≈_`

```agda
module Cong
  (STEP-cong : ∀ {Γ s s′ s″ t} → Γ ⊢ s ⇀⦇ t ,STEP⦈ s′ → s ≈ s″
             → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ t ,STEP⦈ s‴ × s′ ≈ s‴))
  where

  STEPS-cong : ∀ {s′ s″} → Γ ⊢ s ⇀⦇ l ,STEPS⦈ s′ → s ≈ s″
             → ∃[ s‴ ] (Γ ⊢ s″ ⇀⦇ l ,STEPS⦈ s‴ × s′ ≈ s‴)
  STEPS-cong (BS-base Id-nop) s≈ = -, BS-base Id-nop , s≈
  STEPS-cong (BS-ind st rest) s≈ =
    let (_ , st′   , m≈) = STEP-cong st s≈
        (_ , rest′ , r≈) = STEPS-cong rest m≈
    in  -, BS-ind st′ rest′ , r≈
```

### Insertion from two validations

`Inv` is a state invariant preserved by every step, `P` the condition on the
inserted signal and `Q tx t` the one on each suffix signal `t`; `defer` gives
both crossings of one suffix signal, and `exch` compares the two orders.

```agda
  module TwoValidations
    (Inv : S → Type)
    (inv-step : ∀ {Γ s s′ t} → Inv s → Γ ⊢ s ⇀⦇ t ,STEP⦈ s′ → Inv s′)
    (P : Sig → Type) (Q : Sig → Sig → Type)
    (defer : ∀ {Γ s s′ s″ s₁ s₂ tx t l} → P tx → Q tx t
           → Γ ⊢ s  ⇀⦇ tx ,STEP⦈ s′ → Γ ⊢ s ⇀⦇ t ,STEP⦈ s″
           → Γ ⊢ s″ ⇀⦇ l ,STEPS⦈ s₁ → Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂
           → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,STEP⦈ s₃)) × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t ,STEP⦈ s₃)))
    (exch : ∀ {Γ s s₁ s₂ tx t} → Inv s → P tx → Q tx t
          → Γ ⊢ s ⇀⦇ t ∷ tx ∷ [] ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ t ∷ [] ,STEPS⦈ s₂ → s₁ ≈ s₂)
    where

    inv-steps : Inv s → Γ ⊢ s ⇀⦇ l ,STEPS⦈ s′ → Inv s′
    inv-steps i (BS-base Id-nop) = i
    inv-steps i (BS-ind st rest) = inv-steps (inv-step i st) rest

    -- the suffix re-runs after tx
    hoist : Inv s → P tx → Allᴸ.All (Q tx) txs2
      → Γ ⊢ s ⇀⦇ txs2 ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ,STEP⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂
      → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ txs2 ,STEPS⦈ s₃)
    hoist _ _ _ (BS-base Id-nop) _ _ = -, BS-base Id-nop
    hoist i px (q ∷ qs) (BS-ind t-step rest) tx-mid tx-end =
      let ((_ , tx-step₂) , (_ , t-step₂)) = defer px q tx-mid t-step rest tx-end
          e = exch i px q (STEPS-2 t-step tx-step₂) (STEPS-2 tx-mid t-step₂)
          (_ , ts-run)      = hoist (inv-step i t-step) px qs rest tx-step₂ tx-end
          (_ , ts-run′ , _) = STEPS-cong ts-run e
      in -, BS-ind t-step₂ ts-run′

    insert-2v : Inv s → P tx → Allᴸ.All (Q tx) txs2
      → Γ ⊢ s ⇀⦇ txs1 ,STEPS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,STEPS⦈ s₁
      → Γ ⊢ s₀ ⇀⦇ tx ,STEP⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂
      → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,STEPS⦈ s₃)
    insert-2v i px qs pre suf tx-mid tx-end =
      let (_ , suf′) = hoist (inv-steps i pre) px qs suf tx-mid tx-end
      in -, STEPS-++ pre (BS-ind tx-mid suf′)

    -- given a comparison of "tx at the back" with "tx at the front"
    insert-2v-≈ : Inv s → P tx → Allᴸ.All (Q tx) txs2
      → (Inv s₀ → ∀ {s₃} → Γ ⊢ s₀ ⇀⦇ txs2 ++ tx ∷ [] ,STEPS⦈ s₂ → Γ ⊢ s₀ ⇀⦇ tx ∷ txs2 ,STEPS⦈ s₃ → s₂ ≈ s₃)
      → Γ ⊢ s ⇀⦇ txs1 ,STEPS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,STEPS⦈ s₁
      → Γ ⊢ s₀ ⇀⦇ tx ,STEP⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂
      → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,STEPS⦈ s₃ × s₂ ≈ s₃)
    insert-2v-≈ i px qs cmp pre suf tx-mid tx-end =
      let i₀ = inv-steps i pre
          (s₃ , suf′) = hoist i₀ px qs suf tx-mid tx-end
          full = BS-ind tx-mid suf′
      in s₃ , STEPS-++ pre full , cmp i₀ (STEPS-++ suf (BS-ind tx-end (BS-base Id-nop))) full
```

### Commutation and insertion from a frame rule

`P` is a global condition on signals, `F` a symmetric pairwise one; `frame`
says a step of `t₁` neither disables nor enables `t₂`.

```agda
  module Frame
    (P : Sig → Type) (F : Sig → Sig → Type) (F-sym : ∀ {t₁ t₂} → F t₁ t₂ → F t₂ t₁)
    (frame : ∀ {Γ s s′ t₁ t₂} → P t₁ → P t₂ → F t₁ t₂ → Γ ⊢ s ⇀⦇ t₁ ,STEP⦈ s′
           → (∀ {s″} → Γ ⊢ s  ⇀⦇ t₂ ,STEP⦈ s″ → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t₂ ,STEP⦈ s₃))
           × (∀ {s″} → Γ ⊢ s′ ⇀⦇ t₂ ,STEP⦈ s″ → ∃[ s₃ ] (Γ ⊢ s  ⇀⦇ t₂ ,STEP⦈ s₃)))
    (exch : ∀ {Γ s s₁ s₂ t₁ t₂} → P t₁ → P t₂ → F t₁ t₂
          → Γ ⊢ s ⇀⦇ t₁ ∷ t₂ ∷ [] ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ t₂ ∷ t₁ ∷ [] ,STEPS⦈ s₂ → s₁ ≈ s₂)
    where

    STEP-comm : P t₁ → P t₂ → F t₁ t₂
      → Γ ⊢ s ⇀⦇ t₁ ,STEP⦈ s₁ → Γ ⊢ s₁ ⇀⦇ t₂ ,STEP⦈ s₂
      → ∃[ s₁′ ] ∃[ s₂′ ] (Γ ⊢ s ⇀⦇ t₂ ,STEP⦈ s₁′ × Γ ⊢ s₁′ ⇀⦇ t₁ ,STEP⦈ s₂′ × s₂ ≈ s₂′)
    STEP-comm p₁ p₂ f st₁ st₂ =
      let (s₁′ , st₂′) = frame p₁ p₂ f st₁ .proj₂ st₂
          (s₂′ , st₁′) = frame p₂ p₁ (F-sym f) st₂′ .proj₁ st₁
      in s₁′ , s₂′ , st₂′ , st₁′ , exch p₁ p₂ f (STEPS-2 st₁ st₂) (STEPS-2 st₂′ st₁′)

    -- one run of a pairwise-F list can be permuted arbitrarily
    STEPS-permute : Allᴸ.All P l₁ → AllPairs F l₁ → l₁ ↭ l₂
      → Γ ⊢ s ⇀⦇ l₁ ,STEPS⦈ s₁ → ∃[ s₂ ] (Γ ⊢ s ⇀⦇ l₂ ,STEPS⦈ s₂ × s₁ ≈ s₂)
    STEPS-permute _ _ ↭-rfl r = -, r , ≈-refl
    STEPS-permute (_ ∷ ps) (_ ∷ ap) (prep x p) (BS-ind st rest) =
      let (_ , rest′ , e) = STEPS-permute ps ap p rest
      in -, BS-ind st rest′ , e
    STEPS-permute (p₁ ∷ p₂ ∷ ps) ((f ∷ _) ∷ _ ∷ ap) (swap x y p) (BS-ind st₁ (BS-ind st₂ rest)) =
      let (_ , _ , st₂′ , st₁′ , e) = STEP-comm p₁ p₂ f st₁ st₂
          (_ , rest′ , e₁) = STEPS-cong rest e
          (_ , rest″ , e₂) = STEPS-permute ps ap p rest′
      in -, BS-ind st₂′ (BS-ind st₁′ rest″) , ≈-trans e₁ e₂
    STEPS-permute ps ap (↭-trans p q) r =
      let (_ , r′ , e₁) = STEPS-permute ps ap p r
          (_ , r″ , e₂) = STEPS-permute (All-resp-↭ p ps) (AllPairs-resp-↭ F-sym p ap) q r′
      in -, r″ , ≈-trans e₁ e₂

    -- tx defers past a whole F-independent run
    STEP-defers-run : P tx → Allᴸ.All P l → Allᴸ.All (F tx) l
      → Γ ⊢ s ⇀⦇ l ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ,STEP⦈ s′ → ∃[ s₂ ] (Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂)
    STEP-defers-run _ _ _ (BS-base Id-nop) st = -, st
    STEP-defers-run px (pt ∷ ps) (f ∷ fs) (BS-ind t-step rest) st =
      let (_ , st′) = frame pt px (F-sym f) t-step .proj₁ st
      in STEP-defers-run px ps fs rest st′

    private
      hoistᶠ : P tx → Allᴸ.All P txs2 → Allᴸ.All (F tx) txs2
        → Γ ⊢ s ⇀⦇ txs2 ,STEPS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ,STEP⦈ s′
        → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ txs2 ,STEPS⦈ s₃)
      hoistᶠ _ _ _ (BS-base Id-nop) _ = -, BS-base Id-nop
      hoistᶠ px (pt ∷ ps) (f ∷ fs) (BS-ind t-step rest) tx-mid =
        let (_ , t-step₂)  = frame px pt f tx-mid .proj₁ t-step
            (_ , tx-step₂) = frame pt px (F-sym f) t-step .proj₁ tx-mid
            e = exch pt px (F-sym f) (STEPS-2 t-step tx-step₂) (STEPS-2 tx-mid t-step₂)
            (_ , ts-run)      = hoistᶠ px ps fs rest tx-step₂
            (_ , ts-run′ , _) = STEPS-cong ts-run e
        in -, BS-ind t-step₂ ts-run′

    -- insertion from a single validation at the insertion point
    insert-indep : P tx → Allᴸ.All P txs2 → Allᴸ.All (F tx) txs2
      → Γ ⊢ s ⇀⦇ txs1 ,STEPS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,STEPS⦈ s₁ → Γ ⊢ s₀ ⇀⦇ tx ,STEP⦈ s′
      → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,STEPS⦈ s₃)
    insert-indep px ps fs pre suf tx-mid =
      let (_ , suf′) = hoistᶠ px ps fs suf tx-mid
      in -, STEPS-++ pre (BS-ind tx-mid suf′)

    -- the end validation is derived and the result compared with it
    insert-indep-≈ : P tx → Allᴸ.All P txs2 → Allᴸ.All (F tx) txs2
      → (∀ {s₂ s₃} → Γ ⊢ s₀ ⇀⦇ txs2 ++ tx ∷ [] ,STEPS⦈ s₂ → Γ ⊢ s₀ ⇀⦇ tx ∷ txs2 ,STEPS⦈ s₃ → s₂ ≈ s₃)
      → Γ ⊢ s ⇀⦇ txs1 ,STEPS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,STEPS⦈ s₁ → Γ ⊢ s₀ ⇀⦇ tx ,STEP⦈ s′
      → ∃[ s₂ ] ∃[ s₃ ] ( Γ ⊢ s₁ ⇀⦇ tx ,STEP⦈ s₂
                        × Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,STEPS⦈ s₃
                        × s₂ ≈ s₃ )
    insert-indep-≈ px ps fs cmp pre suf tx-mid =
      let (s₂ , tx-end) = STEP-defers-run px ps fs suf tx-mid
          (s₃ , suf′)   = hoistᶠ px ps fs suf tx-mid
          full = BS-ind tx-mid suf′
      in s₂ , s₃ , tx-end , STEPS-++ pre full
         , cmp (STEPS-++ suf (BS-ind tx-end (BS-base Id-nop))) full
```
