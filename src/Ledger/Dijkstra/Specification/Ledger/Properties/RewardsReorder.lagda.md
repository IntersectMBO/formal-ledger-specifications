---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/RewardsReorder.lagda.md
---

# Reordering account balances (Dijkstra) {#sec:dijkstra-rewards-reorder}

Account balances end equal after two permuted runs of pairwise-`Indep`
transactions, and after moving a transaction past independent ones.  No postulates.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.RewardsReorder
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs
  using (certOf; subTxs; Indep; module Indep; Indep-sym; certCreds; batch∪; wdrlCreds; ddCreds)
open import Ledger.Dijkstra.Specification.Ledger.Properties.CertLemmas txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.CertReorder txs abs
  using (_≈ᵐ_; ≡≈≡; byDec; DistinctWit; ∈ˡ-mapMaybe⁺; module Certs≡; module DOp)
open import Ledger.Prelude.Properties.GeneralLemmas
open import Data.Nat.Properties using (+-assoc; +-comm; ∸-+-assoc; 0∸n≡0)
open import Data.List.Properties using (foldl-++)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Membership.Propositional.Properties using (∈-map⁻; ∈-++⁻; ∈-++⁺ˡ; ∈-++⁺ʳ)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open RewardAddress

private variable
  Γ : LedgerEnv
  s s′ s₁ s₂ : LedgerState
  l l₁ l₂ : List TopLevelTx
```
-->

## Account-balance events

```agda
rewardsOf : CertState → Rewards
rewardsOf cs = DState.rewards (CertState.dState cs)

-- the balance update of an existing account (opaque: unfolding it is slow)
opaque
  adjust : (Coin → Coin) → Credential → Rewards → Rewards
  adjust f c m = maybe (λ bal → ❴ c , f bal ❵ ∪ˡ m) m (lookupᵐ? m c)

opaque
  unfolding adjust

  adjust≡ : ∀ f c m → adjust f c m ≡ maybe (λ bal → ❴ c , f bal ❵ ∪ˡ m) m (lookupᵐ? m c)
  adjust≡ _ _ _ = refl

-- what a batch member does to account balances
data RwEv : Type where
  wdrl : RewardAddress → Coin → RwEv
  cert : DCert → RwEv
  ddep : RewardAddress → Coin → RwEv

rwStep : Rewards → RwEv → Rewards
rwStep m (wdrl a v) = adjust (_∸ v) (stake a) m
rwStep m (cert c)   = rwOp m c
rwStep m (ddep a v) = adjust (_+ v) (stake a) m

toW toD : RewardAddress × Coin → RwEv
toW p = wdrl (proj₁ p) (proj₂ p)
toD p = ddep (proj₁ p) (proj₂ p)

-- withdrawals, then certificates, then direct deposits
memberRw : ∀ {ℓ} → Tx ℓ → List RwEv
memberRw x = map toW (setToList (WithdrawalsOf x ˢ)) ++ map cert (DCertsOf x) ++ map toD (setToList (DirectDepositsOf x ˢ))

rwEvents : TopLevelTx → List RwEv
rwEvents t = concatMap memberRw (subTxs t) ++ memberRw t

rwTx : Rewards → TopLevelTx → Rewards
rwTx m t = if IsValidFlagOf t then foldl rwStep m (rwEvents t) else m
```

## Extraction from the rules

```agda
private
  rwTx-v : ∀ {m t} → IsValidFlagOf t ≡ true → rwTx m t ≡ foldl rwStep m (rwEvents t)
  rwTx-v v rewrite v = refl

  rwTx-i : ∀ {m t} → IsValidFlagOf t ≡ false → rwTx m t ≡ m
  rwTx-i i rewrite i = refl

  foldl-map≡ : ∀ {A B C : Type} {g : C → A → C} {h : C → B → C} {k : A → B}
    → (∀ c a → g c a ≡ h c (k a)) → ∀ c xs → foldl g c xs ≡ foldl h c (map k xs)
  foldl-map≡ eq c []       = refl
  foldl-map≡ {g = g} eq c (a ∷ as) = trans (cong (λ z → foldl g z as) (eq c a)) (foldl-map≡ eq _ as)

  w-fold : ∀ (W : Withdrawals) r → applyWithdrawals W r ≡ foldl rwStep r (map toW (setToList (W ˢ)))
  w-fold W r = foldl-map≡ (λ c a → sym (adjust≡ (_∸ proj₂ a) (stake (proj₁ a)) c)) r (setToList (W ˢ))

  d-fold : ∀ (D : DirectDeposits) r → applyDirectDeposits D r ≡ foldl rwStep r (map toD (setToList (D ˢ)))
  d-fold D r = foldl-map≡ (λ c a → sym (adjust≡ (_+ proj₂ a) (stake (proj₁ a)) c)) r (setToList (D ˢ))

  c-fold : ∀ r cts → foldl rwOp r cts ≡ foldl rwStep r (map cert cts)
  c-fold r cts = foldl-map≡ (λ _ _ → refl) r cts

  module RWC = Certs≡ rewardsOf (λ _ _ → rwOp) (λ _ _ _ _ → refl)

  rw-ent : ∀ {ℓ} e pp (x : Tx ℓ) cs → rewardsOf (entOp e pp x cs) ≡ foldl rwStep (rewardsOf cs) (memberRw x)
  rw-ent e pp x cs =
    trans (cong rewardsOf (entOp≡ e pp x cs))
      (trans (d-fold (DirectDepositsOf x) (rewardsOf Y))
        (trans (cong (λ z → foldl rwStep z DL)
                 (trans (RWC.certs≡ e pp (entPre e pp x cs) (DCertsOf x))
                   (trans (cong (λ z → foldl rwOp z (DCertsOf x)) (w-fold (WithdrawalsOf x) (rewardsOf cs)))
                     (c-fold _ (DCertsOf x)))))
          (trans (sym (foldl-++ rwStep (foldl rwStep (rewardsOf cs) WL) CL DL))
                 (sym (foldl-++ rwStep (rewardsOf cs) WL (CL ++ DL))))))
    where
    Y  = foldl (certStep e pp) (entPre e pp x cs) (DCertsOf x)
    WL = map toW (setToList (WithdrawalsOf x ˢ))
    CL = map cert (DCertsOf x)
    DL = map toD (setToList (DirectDepositsOf x ˢ))

  rw-members : ∀ e pp cs (xs : List SubLevelTx)
    → rewardsOf (memberFold e pp cs xs) ≡ foldl rwStep (rewardsOf cs) (concatMap memberRw xs)
  rw-members e pp cs []       = refl
  rw-members e pp cs (x ∷ xs) =
    trans (rw-members e pp (entOp e pp x cs) xs)
      (trans (cong (λ m → foldl rwStep m (concatMap memberRw xs)) (rw-ent e pp x cs))
        (sym (foldl-++ rwStep (rewardsOf cs) (memberRw x) (concatMap memberRw xs))))

  rw-tx : ∀ e pp cs t → rewardsOf (certOpᵀ e pp cs t) ≡ rwTx (rewardsOf cs) t
  rw-tx e pp cs t = byValidity t
    (λ v → trans (cong rewardsOf (certOpᵀ-v {e} {pp} {cs} {t} v))
      (trans (rw-ent e pp t (memberFold e pp cs (subTxs t)))
        (trans (cong (λ m → foldl rwStep m (memberRw t)) (rw-members e pp cs (subTxs t)))
          (trans (sym (foldl-++ rwStep (rewardsOf cs) (concatMap memberRw (subTxs t)) (memberRw t)))
            (sym (rwTx-v {rewardsOf cs} {t} v))))))
    (λ i → trans (cong rewardsOf (certOpᵀ-i {e} {pp} {cs} {t} i)) (sym (rwTx-i {rewardsOf cs} {t} i)))

rw-run : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → rewardsOf (certOf s′) ≡ foldl rwTx (rewardsOf (certOf s)) l
rw-run (BS-base Id-nop) = refl
rw-run {Γ = Γ} {s = s} {l = t ∷ ts} (BS-ind st rest) =
  trans (rw-run rest)
    (cong (λ m → foldl rwTx m ts)
      (trans (cong rewardsOf (LEDGER⇒certΔ st)) (rw-tx (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ) (certOf s) t)))
```

## Adjusting a balance

```agda
private
  lookup-no : ∀ {m : Rewards} {k : Credential} → k ∉ dom (m ˢ) → ⦃ i : (k ∈ dom (m ˢ)) ⁇ ⦄ → lookupᵐ? m k ⦃ i ⦄ ≡ nothing
  lookup-no k∉ ⦃ ⁇ yes p ⦄ = ⊥-elim (k∉ p)
  lookup-no k∉ ⦃ ⁇ no _ ⦄  = refl

  adjust-yes : ∀ {f : Coin → Coin} {k : Credential} {m : Rewards} {y} → (k , y) ∈ m ˢ → adjust f k m ≡ ❴ k , f y ❵ ∪ˡ m
  adjust-yes {f} {k} {m} ky∈ = trans (adjust≡ f k m) (cong (maybe (λ bal → ❴ k , f bal ❵ ∪ˡ m) m) (∈⇒lookup≡just m k ky∈))

  adjust-no : ∀ {f : Coin → Coin} {k : Credential} {m : Rewards} → k ∉ dom (m ˢ) → adjust f k m ≡ m
  adjust-no {f} {k} {m} k∉ = trans (adjust≡ f k m) (cong (maybe (λ bal → ❴ k , f bal ❵ ∪ˡ m) m) (lookup-no k∉))

  -- membership in an adjusted map
  ∈-adjust⁻ : ∀ {f : Coin → Coin} {k : Credential} {m : Rewards} {a b} → (a , b) ∈ adjust f k m ˢ
    → (a ≡ k × ∃[ x ] ((k , x) ∈ m ˢ × b ≡ f x)) ⊎ (a ≢ k × (a , b) ∈ m ˢ)
  ∈-adjust⁻ {f} {k} {m} {a} {b} h = byDec (k ∈ dom (m ˢ))
    (λ k∈ → let (y , ky∈) = Equivalence.from dom∈ k∈
                h′ = subst (λ M → (a , b) ∈ M ˢ) (adjust-yes {f} {k} {m} ky∈) h
            in case ∈-insert⁻ {m = m} {c = k} {v = f y} h′ of λ where
                 (inj₁ eq)          → inj₁ (cong proj₁ eq , y , ky∈ , cong proj₂ eq)
                 (inj₂ (a≢k , ab∈)) → inj₂ (a≢k , ab∈))
    (λ k∉ → let h′ = subst (λ M → (a , b) ∈ M ˢ) (adjust-no {f} {k} {m} k∉) h
            in byDec (a ≡ k) (λ a≡k → ⊥-elim (k∉ (subst (λ z → z ∈ dom (m ˢ)) a≡k (Equivalence.to dom∈ (b , h′)))))
                             (λ a≢k → inj₂ (a≢k , h′)))

  ∈-adjust⁺ : ∀ {f : Coin → Coin} {k : Credential} {m : Rewards} {a b}
    → (a ≡ k × ∃[ x ] ((k , x) ∈ m ˢ × b ≡ f x)) ⊎ (a ≢ k × (a , b) ∈ m ˢ) → (a , b) ∈ adjust f k m ˢ
  ∈-adjust⁺ {f} {k} {m} (inj₁ (refl , x , kx∈ , refl)) =
    subst (λ M → (k , f x) ∈ M ˢ) (sym (adjust-yes {f} {k} {m} kx∈)) (∈-insert⁺ {m = m} {c = k} {v = f x} (inj₁ refl))
  ∈-adjust⁺ {f} {k} {m} {a} {b} (inj₂ (a≢k , ab∈)) = byDec (k ∈ dom (m ˢ))
    (λ k∈ → let (y , ky∈) = Equivalence.from dom∈ k∈
            in subst (λ M → (a , b) ∈ M ˢ) (sym (adjust-yes {f} {k} {m} ky∈)) (∈-insert⁺ {m = m} {c = k} {v = f y} (inj₂ (a≢k , ab∈))))
    (λ k∉ → subst (λ M → (a , b) ∈ M ˢ) (sym (adjust-no {f} {k} {m} k∉)) ab∈)

  adjust-dom : ∀ {f k} {m : Rewards} {a} → a ∈ dom (adjust f k m ˢ) → a ∈ dom (m ˢ)
  adjust-dom {f} {k} {m} a∈ with Equivalence.from dom∈ a∈
  ... | b , ab∈ with ∈-adjust⁻ {f} {k} {m} ab∈
  ...   | inj₁ (refl , x , kx∈ , _) = Equivalence.to dom∈ (x , kx∈)
  ...   | inj₂ (_ , ab∈m)           = Equivalence.to dom∈ (b , ab∈m)

  adjust-cong : ∀ {f k} {m m′ : Rewards} → m ≈ᵐ m′ → adjust f k m ≈ᵐ adjust f k m′
  adjust-cong {f} {k} {m} {m′} (m⊆ , ⊆m) = sw {m} {m′} m⊆ , sw {m′} {m} ⊆m
    where
    sw : ∀ {a b : Rewards} → a ˢ ⊆ b ˢ → adjust f k a ˢ ⊆ adjust f k b ˢ
    sw {a} {b} a⊆ h with ∈-adjust⁻ {f} {k} {a} h
    ... | inj₁ (e , x , kx∈ , b≡) = ∈-adjust⁺ {f} {k} {b} (inj₁ (e , x , a⊆ kx∈ , b≡))
    ... | inj₂ (ne , ab∈)         = ∈-adjust⁺ {f} {k} {b} (inj₂ (ne , a⊆ ab∈))

  -- two adjustments commute when, at a shared key, their updates do
  adjust-comm⊆ : ∀ {f g k k′} {m : Rewards} → (k ≡ k′ → ∀ x → f (g x) ≡ g (f x))
    → adjust f k (adjust g k′ m) ˢ ⊆ adjust g k′ (adjust f k m) ˢ
  adjust-comm⊆ {f} {g} {k} {k′} {m} hyp {a , b} h with ∈-adjust⁻ {f} {k} {adjust g k′ m} h
  ... | inj₁ (refl , x , kx∈ , refl) with ∈-adjust⁻ {g} {k′} {m} kx∈
  ...   | inj₁ (refl , y , ky∈ , refl) =
          ∈-adjust⁺ {g} {k′} {adjust f k m} (inj₁ (refl , f y , ∈-adjust⁺ {f} {k} {m} (inj₁ (refl , y , ky∈ , refl)) , hyp refl y))
  ...   | inj₂ (k≢k′ , kx∈m) =
          ∈-adjust⁺ {g} {k′} {adjust f k m} (inj₂ (k≢k′ , ∈-adjust⁺ {f} {k} {m} (inj₁ (refl , x , kx∈m , refl))))
  adjust-comm⊆ {f} {g} {k} {k′} {m} hyp {a , b} h | inj₂ (a≢k , ab∈) with ∈-adjust⁻ {g} {k′} {m} ab∈
  ...   | inj₁ (refl , y , ky∈ , refl) =
          ∈-adjust⁺ {g} {k′} {adjust f k m} (inj₁ (refl , y , ∈-adjust⁺ {f} {k} {m} (inj₂ (a≢k , ky∈)) , refl))
  ...   | inj₂ (a≢k′ , ab∈m) =
          ∈-adjust⁺ {g} {k′} {adjust f k m} (inj₂ (a≢k′ , ∈-adjust⁺ {f} {k} {m} (inj₂ (a≢k , ab∈m))))

  adjust-comm : ∀ {f g k k′} {m : Rewards} → (k ≡ k′ → ∀ x → f (g x) ≡ g (f x))
    → adjust f k (adjust g k′ m) ≈ᵐ adjust g k′ (adjust f k m)
  adjust-comm {f} {g} {k} {k′} {m} hyp =
    adjust-comm⊆ {f} {g} {k} {k′} {m} hyp , adjust-comm⊆ {g} {f} {k′} {k} {m} (λ e x → sym (hyp (sym e) x))

  dom-adjust⁺ : ∀ {f k} {m : Rewards} {a} → a ∈ dom (m ˢ) → a ∈ dom (adjust f k m ˢ)
  dom-adjust⁺ {f} {k} {m} {a} a∈ with Equivalence.from dom∈ a∈
  ... | b , ab∈m = byDec (a ≡ k)
        (λ e → Equivalence.to dom∈ (f b , ∈-adjust⁺ {f} {k} {m} (inj₁ (e , b , subst (λ z → (z , b) ∈ m ˢ) e ab∈m , refl))))
        (λ a≢k → Equivalence.to dom∈ (b , ∈-adjust⁺ {f} {k} {m} (inj₂ (a≢k , ab∈m))))

  -- an adjustment and an insert-if-absent of 0, which it fixes if at the same key
  adjust-∪ˡ⊆ : ∀ {f k c} {m : Rewards} → (k ≡ c → f 0 ≡ 0)
    → adjust f k (m ∪ˡ ❴ c , 0 ❵) ˢ ⊆ (adjust f k m ∪ˡ ❴ c , 0 ❵) ˢ
  adjust-∪ˡ⊆ {f} {k} {c} {m} hyp {a , b} h with ∈-adjust⁻ {f} {k} {m ∪ˡ ❴ c , 0 ❵} h
  ... | inj₁ (refl , x , kx∈ , refl) with ∈-∪ˡ⁻ {m = m} {m' = ❴ c , 0 ❵} kx∈
  ...   | inj₁ kx∈m = ∈-∪ˡ⁺ {m = adjust f k m} {m' = ❴ c , 0 ❵} (inj₁ (∈-adjust⁺ {f} {k} {m} (inj₁ (refl , x , kx∈m , refl))))
  ...   | inj₂ (k∉ , kx∈s) =
          let eq = Equivalence.from ∈-singleton kx∈s ; x≡0 = cong proj₂ eq
          in subst (λ z → (k , z) ∈ (adjust f k m ∪ˡ ❴ c , 0 ❵) ˢ) (sym (trans (cong f x≡0) (hyp (cong proj₁ eq))))
               (∈-∪ˡ⁺ {m = adjust f k m} {m' = ❴ c , 0 ❵}
                 (inj₂ ((λ k∈ → k∉ (adjust-dom {f} {k} {m} k∈)) , subst (λ z → (k , z) ∈ ❴ c , 0 ❵ᵐ ˢ) x≡0 kx∈s)))
  adjust-∪ˡ⊆ {f} {k} {c} {m} hyp {a , b} h | inj₂ (a≢k , ab∈) with ∈-∪ˡ⁻ {m = m} {m' = ❴ c , 0 ❵} ab∈
  ...   | inj₁ ab∈m = ∈-∪ˡ⁺ {m = adjust f k m} {m' = ❴ c , 0 ❵} (inj₁ (∈-adjust⁺ {f} {k} {m} (inj₂ (a≢k , ab∈m))))
  ...   | inj₂ (a∉ , ab∈s) = ∈-∪ˡ⁺ {m = adjust f k m} {m' = ❴ c , 0 ❵} (inj₂ ((λ a∈ → a∉ (adjust-dom {f} {k} {m} a∈)) , ab∈s))

  adjust-∪ˡ⊇ : ∀ {f k c} {m : Rewards} → (k ≡ c → f 0 ≡ 0)
    → (adjust f k m ∪ˡ ❴ c , 0 ❵) ˢ ⊆ adjust f k (m ∪ˡ ❴ c , 0 ❵) ˢ
  adjust-∪ˡ⊇ {f} {k} {c} {m} hyp {a , b} h with ∈-∪ˡ⁻ {m = adjust f k m} {m' = ❴ c , 0 ❵} h
  ... | inj₁ ab∈adj with ∈-adjust⁻ {f} {k} {m} ab∈adj
  ...   | inj₁ (refl , x , kx∈m , refl) =
          ∈-adjust⁺ {f} {k} {m ∪ˡ ❴ c , 0 ❵} (inj₁ (refl , x , ∈-∪ˡ⁺ {m = m} {m' = ❴ c , 0 ❵} (inj₁ kx∈m) , refl))
  ...   | inj₂ (a≢k , ab∈m) = ∈-adjust⁺ {f} {k} {m ∪ˡ ❴ c , 0 ❵} (inj₂ (a≢k , ∈-∪ˡ⁺ {m = m} {m' = ❴ c , 0 ❵} (inj₁ ab∈m)))
  adjust-∪ˡ⊇ {f} {k} {c} {m} hyp {a , b} h | inj₂ (a∉ , ab∈s) =
    let eq = Equivalence.from ∈-singleton ab∈s ; a≡c = cong proj₁ eq ; b≡0 = cong proj₂ eq
    in byDec (a ≡ k)
         (λ a≡k → ∈-adjust⁺ {f} {k} {m ∪ˡ ❴ c , 0 ❵}
            (inj₁ (a≡k , 0
                  , ∈-∪ˡ⁺ {m = m} {m' = ❴ c , 0 ❵}
                      (inj₂ ( (λ k∈ → a∉ (subst (λ z → z ∈ dom (adjust f k m ˢ)) (sym a≡k) (dom-adjust⁺ {f} {k} {m} k∈)))
                            , subst (λ z → z ∈ ❴ c , 0 ❵ᵐ ˢ) (cong₂ _,_ a≡k b≡0) ab∈s))
                  , trans b≡0 (sym (hyp (trans (sym a≡k) a≡c))))))
         (λ a≢k → ∈-adjust⁺ {f} {k} {m ∪ˡ ❴ c , 0 ❵}
            (inj₂ (a≢k , ∈-∪ˡ⁺ {m = m} {m' = ❴ c , 0 ❵}
                           (inj₂ ((λ a∈ → a∉ (dom-adjust⁺ {f} {k} {m} a∈)) , ab∈s)))))

  adjust-∪ˡ : ∀ {f k c} {m : Rewards} → (k ≡ c → f 0 ≡ 0)
    → adjust f k (m ∪ˡ ❴ c , 0 ❵) ≈ᵐ (adjust f k m ∪ˡ ❴ c , 0 ❵)
  adjust-∪ˡ {f} {k} {c} {m} hyp = adjust-∪ˡ⊆ {f} {k} {c} {m} hyp , adjust-∪ˡ⊇ {f} {k} {c} {m} hyp

  -- an adjustment commutes with removing a key
  adjust-res : ∀ {f k c} {m : Rewards} → adjust f k (resF c m) ≈ᵐ resF c (adjust f k m)
  adjust-res {f} {k} {c} {m} = ⊆₁ , ⊆₂
    where
    ⊆₁ : adjust f k (resF c m) ˢ ⊆ resF c (adjust f k m) ˢ
    ⊆₁ {a , b} h with ∈-adjust⁻ {f} {k} {resF c m} h
    ... | inj₁ (refl , x , kx∈ , refl) =
          let (k∉ , kx∈m) = Equivalence.from ∈-filter kx∈
          in Equivalence.to ∈-filter (k∉ , ∈-adjust⁺ {f} {k} {m} (inj₁ (refl , x , kx∈m , refl)))
    ... | inj₂ (a≢k , ab∈) =
          let (a∉ , ab∈m) = Equivalence.from ∈-filter ab∈
          in Equivalence.to ∈-filter (a∉ , ∈-adjust⁺ {f} {k} {m} (inj₂ (a≢k , ab∈m)))
    ⊆₂ : resF c (adjust f k m) ˢ ⊆ adjust f k (resF c m) ˢ
    ⊆₂ {a , b} h with Equivalence.from ∈-filter h
    ... | a∉ , ab∈ with ∈-adjust⁻ {f} {k} {m} ab∈
    ...   | inj₁ (refl , x , kx∈m , refl) =
            ∈-adjust⁺ {f} {k} {resF c m} (inj₁ (refl , x , Equivalence.to ∈-filter (a∉ , kx∈m) , refl))
    ...   | inj₂ (a≢k , ab∈m) = ∈-adjust⁺ {f} {k} {resF c m} (inj₂ (a≢k , Equivalence.to ∈-filter (a∉ , ab∈m)))
```

## Commutation of events

```agda
-- the cross-transaction event pairs that need a disjointness
RwOK : RwEv → RwEv → Type
RwOK (wdrl a _) (ddep a′ _) = stake a ≢ stake a′
RwOK (ddep a _) (wdrl a′ _) = stake a ≢ stake a′
RwOK (ddep a _) (cert c)    = ∀ {k} → cwitness c ≡ just k → stake a ≢ k
RwOK (cert c)   (ddep a _)  = ∀ {k} → cwitness c ≡ just k → k ≢ stake a
RwOK (cert c)   (cert c′)   = DistinctWit c c′
RwOK _          _           = ⊤

private
  resᶜ-cong′ : ∀ {c : Credential} {a b : Rewards} → a ≈ᵐ b → resF c a ≈ᵐ resF c b
  resᶜ-cong′ e = Properties.filter-cong e

  module RW = DOp {Rewards} _≈ᵐ_ SetSetoid.refl SetSetoid.sym rwF resF
    (λ {c} {_} {_} {_} {a} {b} e → ∪ˡ-cong {m = a} {m' = ❴ c , 0 ❵} {m'' = b} {m''' = ❴ c , 0 ❵} e SetSetoid.refl)
    (λ {c} {a} {b} e → resᶜ-cong′ {c} {a} {b} e)
    (λ {m} {c₁} {c₂} ne → ∪ˡ-rsingleton-comm {m = m} {a = c₁} {b = c₂} {x = 0} {y = 0} ne)
    (λ {m} {c₁} {c₂} ne → rsingleton-del-comm {m = m} {a = c₁} {b = c₂} {x = 0} ne)
    (λ {m} {c₁} {c₂} → resᶜ-comm {m = m} {X = ❴ c₁ ❵} {Y = ❴ c₂ ❵})

  ∸-swap : ∀ x v v′ → (x ∸ v) ∸ v′ ≡ (x ∸ v′) ∸ v
  ∸-swap x v v′ = trans (∸-+-assoc x v v′) (trans (cong (x ∸_) (+-comm v v′)) (sym (∸-+-assoc x v′ v)))

  +-swap : ∀ x v v′ → (x + v) + v′ ≡ (x + v′) + v
  +-swap x v v′ = trans (+-assoc x v v′) (trans (cong (x +_) (+-comm v v′)) (sym (+-assoc x v′ v)))

rwStep-cong : ∀ {a b} e → a ≈ᵐ b → rwStep a e ≈ᵐ rwStep b e
rwStep-cong {a} {b} (wdrl x v) eq = adjust-cong {_∸ v} {stake x} {a} {b} eq
rwStep-cong {a} {b} (ddep x v) eq = adjust-cong {_+ v} {stake x} {a} {b} eq
rwStep-cong {a} {b} (cert c)   eq = RW.dOp-cong {a} {b} c eq

rwStep-comm : ∀ {m x y} → RwOK x y → rwStep (rwStep m x) y ≈ᵐ rwStep (rwStep m y) x
rwStep-comm {m} {wdrl a v} {wdrl a′ v′} _ = adjust-comm {_∸ v′} {_∸ v} {stake a′} {stake a} {m} (λ _ x → ∸-swap x v v′)
rwStep-comm {m} {ddep a v} {ddep a′ v′} _ = adjust-comm {_+ v′} {_+ v} {stake a′} {stake a} {m} (λ _ x → +-swap x v v′)
rwStep-comm {m} {wdrl a v} {ddep a′ v′} ne = adjust-comm {_+ v′} {_∸ v} {stake a′} {stake a} {m} (λ e → ⊥-elim (ne (sym e)))
rwStep-comm {m} {ddep a v} {wdrl a′ v′} ne = adjust-comm {_∸ v′} {_+ v} {stake a′} {stake a} {m} (λ e → ⊥-elim (ne (sym e)))
rwStep-comm {m} {wdrl a v} {cert (delegate c _ _ _)} _ = SetSetoid.sym (adjust-∪ˡ {_∸ v} {stake a} {c} {m} (λ _ → 0∸n≡0 v))
rwStep-comm {m} {wdrl a v} {cert (dereg c _)}        _ = SetSetoid.sym (adjust-res {_∸ v} {stake a} {c} {m})
rwStep-comm {_} {wdrl _ _} {cert (regpool _ _)}    _ = SetSetoid.refl
rwStep-comm {_} {wdrl _ _} {cert (retirepool _ _)} _ = SetSetoid.refl
rwStep-comm {_} {wdrl _ _} {cert (regdrep _ _ _)}  _ = SetSetoid.refl
rwStep-comm {_} {wdrl _ _} {cert (deregdrep _ _)}  _ = SetSetoid.refl
rwStep-comm {_} {wdrl _ _} {cert (ccreghot _ _)}   _ = SetSetoid.refl
rwStep-comm {m} {cert (delegate c _ _ _)} {wdrl a v} _ = adjust-∪ˡ {_∸ v} {stake a} {c} {m} (λ _ → 0∸n≡0 v)
rwStep-comm {m} {cert (dereg c _)}        {wdrl a v} _ = adjust-res {_∸ v} {stake a} {c} {m}
rwStep-comm {_} {cert (regpool _ _)}    {wdrl _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (retirepool _ _)} {wdrl _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (regdrep _ _ _)}  {wdrl _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (deregdrep _ _)}  {wdrl _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (ccreghot _ _)}   {wdrl _ _} _ = SetSetoid.refl
rwStep-comm {m} {ddep a v} {cert (delegate c _ _ _)} ok =
  SetSetoid.sym (adjust-∪ˡ {_+ v} {stake a} {c} {m} (λ e → ⊥-elim (ok refl e)))
rwStep-comm {m} {ddep a v} {cert (dereg c _)} _ = SetSetoid.sym (adjust-res {_+ v} {stake a} {c} {m})
rwStep-comm {_} {ddep _ _} {cert (regpool _ _)}    _ = SetSetoid.refl
rwStep-comm {_} {ddep _ _} {cert (retirepool _ _)} _ = SetSetoid.refl
rwStep-comm {_} {ddep _ _} {cert (regdrep _ _ _)}  _ = SetSetoid.refl
rwStep-comm {_} {ddep _ _} {cert (deregdrep _ _)}  _ = SetSetoid.refl
rwStep-comm {_} {ddep _ _} {cert (ccreghot _ _)}   _ = SetSetoid.refl
rwStep-comm {m} {cert (delegate c _ _ _)} {ddep a v} ok = adjust-∪ˡ {_+ v} {stake a} {c} {m} (λ e → ⊥-elim (ok refl (sym e)))
rwStep-comm {m} {cert (dereg c _)} {ddep a v} _ = adjust-res {_+ v} {stake a} {c} {m}
rwStep-comm {_} {cert (regpool _ _)}    {ddep _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (retirepool _ _)} {ddep _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (regdrep _ _ _)}  {ddep _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (deregdrep _ _)}  {ddep _ _} _ = SetSetoid.refl
rwStep-comm {_} {cert (ccreghot _ _)}   {ddep _ _} _ = SetSetoid.refl
rwStep-comm {m} {cert c} {cert c′} dw = RW.dOp-comm {m} {c} {c′} dw
```

## Events of independent transactions

```agda
private
  wdrl-inj : ∀ {a a′ v v′} → wdrl a v ≡ wdrl a′ v′ → a ≡ a′
  wdrl-inj refl = refl

  ddep-inj : ∀ {a a′ v v′} → ddep a v ≡ ddep a′ v′ → a ≡ a′
  ddep-inj refl = refl

  cert-inj : ∀ {c c′} → cert c ≡ cert c′ → c ≡ c′
  cert-inj refl = refl

  ∈-⋃map⁺ : ∀ {Y : Type} ⦃ _ : DecEq Y ⦄ {f : SubLevelTx → ℙ Y} {xs : List SubLevelTx} {x : SubLevelTx} {c : Y}
    → x ∈ˡ xs → c ∈ f x → c ∈ ⋃map f xs
  ∈-⋃map⁺ (here refl) h = Equivalence.to ∈-∪ (inj₁ h)
  ∈-⋃map⁺ (there x∈)  h = Equivalence.to ∈-∪ (inj₂ (∈-⋃map⁺ x∈ h))

  ∈-concatMap⁻ : ∀ {A B : Type} (f : A → List B) (xs : List A) {y} → y ∈ˡ concatMap f xs → ∃[ x ] (x ∈ˡ xs × y ∈ˡ f x)
  ∈-concatMap⁻ f [] ()
  ∈-concatMap⁻ f (x ∷ xs) y∈ with ∈-++⁻ (f x) y∈
  ... | inj₁ h = x , here refl , h
  ... | inj₂ h = let (x′ , x′∈ , h′) = ∈-concatMap⁻ f xs h in x′ , there x′∈ , h′

  ∈-concatMap⁺ : ∀ {A B : Type} (f : A → List B) {xs : List A} {x y} → x ∈ˡ xs → y ∈ˡ f x → y ∈ˡ concatMap f xs
  ∈-concatMap⁺ f (here refl) h = ∈-++⁺ˡ h
  ∈-concatMap⁺ f {_ ∷ _} (there x∈) h = ∈-++⁺ʳ _ (∈-concatMap⁺ f x∈ h)

  ∈-acct : ∀ {M : Type} {W : RewardAddress ⇀ M} {p} → p ∈ˡ setToList (W ˢ) → stake (proj₁ p) ∈ mapˢ stake (dom (W ˢ))
  ∈-acct {p = p} p∈ = Equivalence.to ∈-map (proj₁ p , refl , Equivalence.to dom∈ (proj₂ p , setToList-∈ p∈))

  mem-w : ∀ {ℓ} {x : Tx ℓ} {a v} → wdrl a v ∈ˡ memberRw x → stake a ∈ mapˢ stake (dom (WithdrawalsOf x ˢ))
  mem-w {x = x} e∈ with ∈-++⁻ (map toW (setToList (WithdrawalsOf x ˢ))) e∈
  ... | inj₁ h = let (p , p∈ , eq) = ∈-map⁻ toW h in subst (λ z → stake z ∈ _) (sym (wdrl-inj eq)) (∈-acct {W = WithdrawalsOf x} p∈)
  ... | inj₂ h with ∈-++⁻ (map cert (DCertsOf x)) h
  ...   | inj₁ h′ = case proj₂ (proj₂ (∈-map⁻ cert h′)) of λ ()
  ...   | inj₂ h′ = case proj₂ (proj₂ (∈-map⁻ toD h′)) of λ ()

  mem-d : ∀ {ℓ} {x : Tx ℓ} {a v} → ddep a v ∈ˡ memberRw x → stake a ∈ mapˢ stake (dom (DirectDepositsOf x ˢ))
  mem-d {x = x} e∈ with ∈-++⁻ (map toW (setToList (WithdrawalsOf x ˢ))) e∈
  ... | inj₁ h = case proj₂ (proj₂ (∈-map⁻ toW h)) of λ ()
  ... | inj₂ h with ∈-++⁻ (map cert (DCertsOf x)) h
  ...   | inj₁ h′ = case proj₂ (proj₂ (∈-map⁻ cert h′)) of λ ()
  ...   | inj₂ h′ = let (p , p∈ , eq) = ∈-map⁻ toD h′ in subst (λ z → stake z ∈ _) (sym (ddep-inj eq)) (∈-acct {W = DirectDepositsOf x} p∈)

  mem-c : ∀ {ℓ} {x : Tx ℓ} {c} → cert c ∈ˡ memberRw x → c ∈ˡ DCertsOf x
  mem-c {x = x} e∈ with ∈-++⁻ (map toW (setToList (WithdrawalsOf x ˢ))) e∈
  ... | inj₁ h = case proj₂ (proj₂ (∈-map⁻ toW h)) of λ ()
  ... | inj₂ h with ∈-++⁻ (map cert (DCertsOf x)) h
  ...   | inj₁ h′ = let (c′ , c′∈ , eq) = ∈-map⁻ cert h′ in subst (_∈ˡ DCertsOf x) (sym (cert-inj eq)) c′∈
  ...   | inj₂ h′ = case proj₂ (proj₂ (∈-map⁻ toD h′)) of λ ()

  ev-member : ∀ {t e} → e ∈ˡ rwEvents t → (∃[ x ] (x ∈ˡ subTxs t × e ∈ˡ memberRw x)) ⊎ e ∈ˡ memberRw t
  ev-member {t} e∈ with ∈-++⁻ (concatMap memberRw (subTxs t)) e∈
  ... | inj₁ h = inj₁ (∈-concatMap⁻ memberRw (subTxs t) h)
  ... | inj₂ h = inj₂ h

  wdrl∈ : ∀ {t a v} → wdrl a v ∈ˡ rwEvents t → stake a ∈ wdrlCreds t
  wdrl∈ {t} e∈ with ev-member {t} e∈
  ... | inj₁ (x , x∈ , h) = Equivalence.to ∈-∪ (inj₂ (∈-⋃map⁺ x∈ (mem-w {x = x} h)))
  ... | inj₂ h            = Equivalence.to ∈-∪ (inj₁ (mem-w {x = t} h))

  ddep∈ : ∀ {t a v} → ddep a v ∈ˡ rwEvents t → stake a ∈ ddCreds t
  ddep∈ {t} e∈ with ev-member {t} e∈
  ... | inj₁ (x , x∈ , h) = Equivalence.to ∈-∪ (inj₂ (∈-⋃map⁺ x∈ (mem-d {x = x} h)))
  ... | inj₂ h            = Equivalence.to ∈-∪ (inj₁ (mem-d {x = t} h))

  certW∈ : ∀ {t c k} → cert c ∈ˡ rwEvents t → cwitness c ≡ just k → k ∈ certCreds t
  certW∈ {t} e∈ cw with ev-member {t} e∈
  ... | inj₁ (x , x∈ , h) = Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ (∈-++⁺ˡ (∈-concatMap⁺ DCertsOf x∈ (mem-c {x = x} h))) cw)
  ... | inj₂ h            = Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ (∈-++⁺ʳ (concatMap DCertsOf (subTxs t)) (mem-c {x = t} h)) cw)

Indep⇒RwOK : ∀ {t₁ t₂} → Indep t₁ t₂ → Allᴸ.All (λ e → Allᴸ.All (RwOK e) (rwEvents t₂)) (rwEvents t₁)
Indep⇒RwOK {t₁} {t₂} i = Allᴸ.tabulate λ {e₁} h₁ → Allᴸ.tabulate λ {e₂} h₂ → ok e₁ e₂ h₁ h₂
  where
  ok : ∀ e₁ e₂ → e₁ ∈ˡ rwEvents t₁ → e₂ ∈ˡ rwEvents t₂ → RwOK e₁ e₂
  ok (wdrl a _) (ddep a′ _) h₁ h₂ eq = Indep.disjWdrlDD i (wdrl∈ {t₁} h₁) (subst (_∈ ddCreds t₂) (sym eq) (ddep∈ {t₂} h₂))
  ok (ddep a _) (wdrl a′ _) h₁ h₂ eq = Indep.disjDDWdrl i (ddep∈ {t₁} h₁) (subst (_∈ wdrlCreds t₂) (sym eq) (wdrl∈ {t₂} h₂))
  ok (ddep a _) (cert c)    h₁ h₂ cw eq = Indep.disjDDCert i (ddep∈ {t₁} h₁) (subst (_∈ certCreds t₂) (sym eq) (certW∈ {t₂} h₂ cw))
  ok (cert c)   (ddep a _)  h₁ h₂ cw eq = Indep.disjCertDD i (certW∈ {t₁} h₁ cw) (subst (_∈ ddCreds t₂) (sym eq) (ddep∈ {t₂} h₂))
  ok (cert c)   (cert c′)   h₁ h₂ cw cw′ eq =
    Indep.disjCertCreds i (certW∈ {t₁} h₁ cw) (subst (_∈ certCreds t₂) (sym eq) (certW∈ {t₂} h₂ cw′))
  ok (wdrl _ _) (wdrl _ _) _ _ = tt
  ok (wdrl _ _) (cert _)   _ _ = tt
  ok (ddep _ _) (ddep _ _) _ _ = tt
  ok (cert _)   (wdrl _ _) _ _ = tt
```

## The theorems

```agda
private
  rwTx-cong : ∀ t {a b} → a ≈ᵐ b → rwTx a t ≈ᵐ rwTx b t
  rwTx-cong t {a} {b} eq = byValidity t
    (λ v → ≡≈≡ _≈ᵐ_ (rwTx-v {a} {t} v)
             (foldl-congᵃ _≈ᵐ_ rwStep (λ {a′} {b′} e q → rwStep-cong {a′} {b′} e q) {a} {b} (rwEvents t) eq)
             (rwTx-v {b} {t} v))
    (λ i → ≡≈≡ _≈ᵐ_ (rwTx-i {a} {t} i) eq (rwTx-i {b} {t} i))

  rwTx-comm : ∀ {m x y} → Indep x y → rwTx (rwTx m x) y ≈ᵐ rwTx (rwTx m y) x
  rwTx-comm {m} {x} {y} i = byValidity x
    (λ vx → byValidity y
      (λ vy → ≡≈≡ _≈ᵐ_
        (trans (rwTx-v {rwTx m x} {y} vy) (cong (λ z → foldl rwStep z (rwEvents y)) (rwTx-v {m} {x} vx)))
        (foldl-block-comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans RwOK rwStep
          (λ {a′} {b′} e q → rwStep-cong {a′} {b′} e q) (λ {m′} {x′} {y′} h → rwStep-comm {m′} {x′} {y′} h)
          (rwEvents x) (rwEvents y) (Indep⇒RwOK i))
        (trans (rwTx-v {rwTx m y} {x} vx) (cong (λ z → foldl rwStep z (rwEvents x)) (rwTx-v {m} {y} vy))))
      (λ iy → SetSetoid.reflexive (cong (λ z → z ˢ)
        (trans (rwTx-i {rwTx m x} {y} iy) (cong (λ z → rwTx z x) (sym (rwTx-i {m} {y} iy)))))))
    (λ ix → SetSetoid.reflexive (cong (λ z → z ˢ)
      (trans (cong (λ z → rwTx z y) (rwTx-i {m} {x} ix)) (sym (rwTx-i {rwTx m y} {x} ix)))))

LEDGERS-rewards≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → rewardsOf (certOf s₁) ≈ᵐ rewardsOf (certOf s₂)
LEDGERS-rewards≈ {s = s} ap p st₁ st₂ =
  ≡≈≡ _≈ᵐ_ (rw-run st₁)
    (foldl-↭ _≈ᵐ_ SetSetoid.refl SetSetoid.trans Indep Indep-sym (λ _ → ⊤) rwTx
      (λ {a} {b} t eq → rwTx-cong t {a} {b} eq) (λ {m} {x} {y} i _ _ → rwTx-comm {m} {x} {y} i)
      (rewardsOf (certOf s)) (Allᴸ.tabulate (λ _ → tt)) ap p)
    (rw-run st₂)

-- tx moved from the back to the front of a run, past transactions independent of it
LEDGERS-rewards-shift≈ : ∀ {tx txs2} → Allᴸ.All (Indep tx) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
  → rewardsOf (certOf s₂) ≈ᵐ rewardsOf (certOf s₁)
LEDGERS-rewards-shift≈ {s = s} {tx = tx} {txs2} is st₁ st₂ =
  ≡≈≡ _≈ᵐ_ (rw-run st₂)
    (foldl-push _≈ᵐ_ SetSetoid.refl SetSetoid.trans Indep rwTx
      (λ {a} {b} t eq → rwTx-cong t {a} {b} eq) (λ {m} {x} {y} i → rwTx-comm {m} {x} {y} i)
      {rewardsOf (certOf s)} tx txs2 is)
    (trans (rw-run st₁) (foldl-++ rwTx (rewardsOf (certOf s)) txs2 (tx ∷ [])))
```
