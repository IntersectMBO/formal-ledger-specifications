---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/CertReorder.lagda.md
---

# Reordering the certificate state (Dijkstra) {#sec:dijkstra-cert-reorder}

Every field of the certificate state except `rewards` ends equal after two
permuted runs of pairwise-`Indep`, `GovDomStable` transactions, and after moving a
transaction to the front of a run of transactions it does not conflict with.  No postulates.

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.CertReorder
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs
  using (certOf; subTxs; isDRepCert; GovDomStable; Indep; module Indep; Indep-sym; certCreds)
open import Ledger.Dijkstra.Specification.Ledger.Properties.CertLemmas txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Footprints txs abs using (dregCreds; delegateeCreds)
open import Ledger.Prelude.Properties.GeneralLemmas
open import Ledger.Prelude.Properties.MapCommutativity using (local-comm; ∪⁺-sing-local; resᶜ-sing-local)
open import abstract-set-theory.Axiom.Set.Map.Extra using (∪⁺-cong-r)
open import Data.Nat.Properties using (+-isCommutativeSemigroup)
open import Data.List.Properties using (foldl-++; ++-assoc)
import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Unary.Any using (here; there)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (All-resp-↭)

instance
  Coin-Semigroup = +-isCommutativeSemigroup

private variable
  Γ : LedgerEnv
  s s′ s₁ s₂ : LedgerState
  l l₁ l₂ : List TopLevelTx
```
-->

## Generic plumbing

```agda
_≈ᵐ_ : ∀ {A B : Type} → (A ⇀ B) → (A ⇀ B) → Type
m ≈ᵐ m′ = m ˢ ≡ᵉ m′ ˢ

-- transport an equivalence along equations at both ends
≡≈≡ : ∀ {M : Type} (_≈_ : M → M → Type) {a a′ b b′} → a ≡ a′ → a′ ≈ b′ → b ≡ b′ → a ≈ b
≡≈≡ _ refl e refl = e

byDec : (P : Type) ⦃ _ : P ⁇ ⦄ {C : Type} → (P → C) → (¬ P → C) → C
byDec P f g with ¿ P ¿
... | yes p = f p
... | no ¬p = g ¬p

-- the transaction-level effect of a per-certificate update
txFold : {M : Type} → (M → DCert → M) → M → TopLevelTx → M
txFold f m t = if IsValidFlagOf t then foldl f m (allDCerts t) else m

txFold-v : ∀ {M} {f : M → DCert → M} {m t} → IsValidFlagOf t ≡ true → txFold f m t ≡ foldl f m (allDCerts t)
txFold-v v rewrite v = refl

txFold-i : ∀ {M} {f : M → DCert → M} {m t} → IsValidFlagOf t ≡ false → txFold f m t ≡ m
txFold-i i rewrite i = refl

-- certificates with distinct witnesses
DistinctWit : DCert → DCert → Type
DistinctWit c₁ c₂ = ∀ {k₁ k₂} → cwitness c₁ ≡ just k₁ → cwitness c₂ ≡ just k₂ → k₁ ≢ k₂

∈ˡ-mapMaybe⁺ : ∀ {A B : Type} {f : A → Maybe B} {x : A} {xs : List A} {y : B}
  → x ∈ˡ xs → f x ≡ just y → y ∈ˡ mapMaybe f xs
∈ˡ-mapMaybe⁺ {f = f} {xs = x′ ∷ xs} (here refl) eq rewrite eq = here refl
∈ˡ-mapMaybe⁺ {f = f} {xs = x′ ∷ xs} (there x∈) eq with f x′
... | just _  = there (∈ˡ-mapMaybe⁺ x∈ eq)
... | nothing = ∈ˡ-mapMaybe⁺ x∈ eq

Indep⇒Distinct : ∀ {t₁ t₂} → Indep t₁ t₂ → Allᴸ.All (λ c → Allᴸ.All (DistinctWit c) (allDCerts t₂)) (allDCerts t₁)
Indep⇒Distinct {t₁} {t₂} i = Allᴸ.tabulate λ c₁∈ → Allᴸ.tabulate λ c₂∈ e₁ e₂ k≡ →
  Indep.disjCertCreds i (Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ c₁∈ e₁))
    (subst (_∈ certCreds t₂) (sym k≡) (Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ c₂∈ e₂)))

-- a projection of the state through a fold of certificate steps
module Certs≡ {M : Type} (proj : CertState → M) (fstep : Epoch → PParams → M → DCert → M)
  (step≡ : ∀ e pp cs c → proj (certStep e pp cs c) ≡ fstep e pp (proj cs) c) where
  certs≡ : ∀ e pp cs cts → proj (foldl (certStep e pp) cs cts) ≡ foldl (fstep e pp) (proj cs) cts
  certs≡ e pp cs []        = refl
  certs≡ e pp cs (c ∷ cts) =
    trans (certs≡ e pp (certStep e pp cs c) cts) (cong (λ m → foldl (fstep e pp) m cts) (step≡ e pp cs c))
```

## Fields updated by certificates only

```agda
module Field {M : Type} (proj : CertState → M) (fstep : Epoch → PParams → M → DCert → M)
  (step≡ : ∀ e pp cs c → proj (certStep e pp cs c) ≡ fstep e pp (proj cs) c)
  (pre≡  : ∀ {ℓ} e pp (x : Tx ℓ) cs → proj (entPre e pp x cs) ≡ proj cs)
  (post≡ : ∀ {ℓ} (x : Tx ℓ) cs → proj (entPost x cs) ≡ proj cs)
  where
  open Certs≡ proj fstep step≡ public

  ent≡ : ∀ {ℓ} e pp (x : Tx ℓ) cs → proj (entOp e pp x cs) ≡ foldl (fstep e pp) (proj cs) (DCertsOf x)
  ent≡ e pp x cs =
    trans (cong proj (entOp≡ e pp x cs))
      (trans (post≡ x (foldl (certStep e pp) (entPre e pp x cs) (DCertsOf x)))
        (trans (certs≡ e pp (entPre e pp x cs) (DCertsOf x))
          (cong (λ m → foldl (fstep e pp) m (DCertsOf x)) (pre≡ e pp x cs))))

  members≡ : ∀ e pp cs (xs : List SubLevelTx)
    → proj (memberFold e pp cs xs) ≡ foldl (fstep e pp) (proj cs) (concatMap DCertsOf xs)
  members≡ e pp cs []       = refl
  members≡ e pp cs (x ∷ xs) =
    trans (members≡ e pp (entOp e pp x cs) xs)
      (trans (cong (λ m → foldl (fstep e pp) m (concatMap DCertsOf xs)) (ent≡ e pp x cs))
        (sym (foldl-++ (fstep e pp) (proj cs) (DCertsOf x) (concatMap DCertsOf xs))))

  tx≡ : ∀ e pp cs t → proj (certOpᵀ e pp cs t) ≡ txFold (fstep e pp) (proj cs) t
  tx≡ e pp cs t = byValidity t
    (λ v → trans (cong proj (certOpᵀ-v {e} {pp} {cs} {t} v))
      (trans (ent≡ e pp t (memberFold e pp cs (subTxs t)))
        (trans (cong (λ m → foldl (fstep e pp) m (DCertsOf t)) (members≡ e pp cs (subTxs t)))
          (trans (sym (foldl-++ (fstep e pp) (proj cs) (concatMap DCertsOf (subTxs t)) (DCertsOf t)))
            (sym (txFold-v {f = fstep e pp} {proj cs} {t} v))))))
    (λ i → trans (cong proj (certOpᵀ-i {e} {pp} {cs} {t} i)) (sym (txFold-i {f = fstep e pp} {proj cs} {t} i)))

  run≡ : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → proj (certOf s′) ≡ foldl (txFold (fstep (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ))) (proj (certOf s)) l
  run≡ (BS-base Id-nop) = refl
  run≡ {Γ = Γ} {s = s} {l = t ∷ ts} (BS-ind st rest) =
    trans (run≡ rest)
      (cong (λ m → foldl (txFold (fstep (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ))) m ts)
        (trans (cong proj (LEDGER⇒certΔ st)) (tx≡ (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ) (certOf s) t)))

  -- permuted and shifted runs agree on the field when R-related certificates commute on it
  module CommR (_≈_ : M → M → Type) (≈-refl : ∀ {m} → m ≈ m) (≈-trans : ∀ {a b c} → a ≈ b → b ≈ c → a ≈ c)
    (fstep-cong : ∀ e pp {a b} c → a ≈ b → fstep e pp a c ≈ fstep e pp b c)
    (R : DCert → DCert → Type)
    (fstep-comm : ∀ e pp {m x y} → R x y → fstep e pp (fstep e pp m x) y ≈ fstep e pp (fstep e pp m y) x)
    where
    private
      ≡⇒≈ : ∀ {a b} → a ≡ b → a ≈ b
      ≡⇒≈ refl = ≈-refl

    -- every certificate of x is R-related to every certificate of y
    TxR : TopLevelTx → TopLevelTx → Type
    TxR x y = Allᴸ.All (λ c → Allᴸ.All (R c) (allDCerts y)) (allDCerts x)

    txFold-cong : ∀ e pp t {a b} → a ≈ b → txFold (fstep e pp) a t ≈ txFold (fstep e pp) b t
    txFold-cong e pp t {a} {b} q = byValidity t
      (λ v → ≡≈≡ _≈_ (txFold-v {f = fstep e pp} {a} {t} v)
               (foldl-congᵃ _≈_ (fstep e pp) (fstep-cong e pp) (allDCerts t) q) (txFold-v {f = fstep e pp} {b} {t} v))
      (λ i → ≡≈≡ _≈_ (txFold-i {f = fstep e pp} {a} {t} i) q (txFold-i {f = fstep e pp} {b} {t} i))

    txFold-comm : ∀ e pp {m x y} → TxR x y
      → txFold (fstep e pp) (txFold (fstep e pp) m x) y ≈ txFold (fstep e pp) (txFold (fstep e pp) m y) x
    txFold-comm e pp {m} {x} {y} r = byValidity x
      (λ vx → byValidity y
        (λ vy → ≡≈≡ _≈_
          (trans (txFold-v {f = F} {txFold F m x} {y} vy) (cong (λ z → foldl F z (allDCerts y)) (txFold-v {f = F} {m} {x} vx)))
          (foldl-block-comm _≈_ ≈-refl ≈-trans R F (fstep-cong e pp) (fstep-comm e pp) (allDCerts x) (allDCerts y) r)
          (trans (txFold-v {f = F} {txFold F m y} {x} vx) (cong (λ z → foldl F z (allDCerts x)) (txFold-v {f = F} {m} {y} vy))))
        (λ iy → ≡⇒≈ (trans (txFold-i {f = F} {txFold F m x} {y} iy)
                           (cong (λ z → txFold F z x) (sym (txFold-i {f = F} {m} {y} iy))))))
      (λ ix → ≡⇒≈ (trans (cong (λ z → txFold F z y) (txFold-i {f = F} {m} {x} ix))
                         (sym (txFold-i {f = F} {txFold F m y} {x} ix))))
      where F = fstep e pp

    -- permuted runs, for a symmetric pairwise relation Q giving TxR on P-transactions
    LEDGERS-field≈ : (Q : TopLevelTx → TopLevelTx → Type) → (∀ {x y} → Q x y → Q y x) → (P : TopLevelTx → Type)
      → (∀ {x y} → Q x y → P x → P y → TxR x y)
      → Allᴸ.All P l₁ → AllPairs Q l₁ → l₁ ↭ l₂
      → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ → proj (certOf s₁) ≈ proj (certOf s₂)
    LEDGERS-field≈ {Γ = Γ} {s = s} Q Q-sym P Q⇒R ps ap p st₁ st₂ =
      ≡≈≡ _≈_ (run≡ st₁)
        (foldl-↭ _≈_ ≈-refl ≈-trans Q Q-sym P (txFold (fstep e pp))
          (λ t q → txFold-cong e pp t q) (λ {m} {x} {y} q px py → txFold-comm e pp {m} {x} {y} (Q⇒R q px py)) (proj (certOf s)) ps ap p)
        (run≡ st₂)
      where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ

    -- tx moved from the back to the front of a run of transactions it is TxR-related to
    LEDGERS-field-shift≈ : ∀ {tx txs2} → Allᴸ.All (TxR tx) txs2
      → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂ → proj (certOf s₂) ≈ proj (certOf s₁)
    LEDGERS-field-shift≈ {Γ = Γ} {s = s} {tx = tx} {txs2} rs st₁ st₂ =
      ≡≈≡ _≈_ (run≡ st₂)
        (foldl-push _≈_ ≈-refl ≈-trans TxR (txFold (fstep e pp)) (λ t q → txFold-cong e pp t q) (λ {m} {x} {y} r → txFold-comm e pp {m} {x} {y} r)
          {proj (certOf s)} tx txs2 rs)
        (trans (run≡ st₁) (foldl-++ (txFold (fstep e pp)) (proj (certOf s)) txs2 (tx ∷ [])))
      where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ

  -- the instance for fields on which any two distinct-witness certificates commute
  module Comm (_≈_ : M → M → Type) (≈-refl : ∀ {m} → m ≈ m) (≈-trans : ∀ {a b c} → a ≈ b → b ≈ c → a ≈ c)
    (fstep-cong : ∀ e pp {a b} c → a ≈ b → fstep e pp a c ≈ fstep e pp b c)
    (fstep-comm : ∀ e pp {m x y} → DistinctWit x y → fstep e pp (fstep e pp m x) y ≈ fstep e pp (fstep e pp m y) x)
    where
    private module C = CommR _≈_ ≈-refl ≈-trans fstep-cong DistinctWit fstep-comm

    LEDGERS-field≈ : AllPairs Indep l₁ → l₁ ↭ l₂
      → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ → proj (certOf s₁) ≈ proj (certOf s₂)
    LEDGERS-field≈ ap = C.LEDGERS-field≈ Indep Indep-sym (λ _ → ⊤) (λ i _ _ → Indep⇒Distinct i) (Allᴸ.tabulate (λ _ → tt)) ap

    -- tx moved from the back to the front of a run of transactions independent of it
    LEDGERS-field-shift≈ : ∀ {tx txs2} → Allᴸ.All (Indep tx) txs2
      → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂ → proj (certOf s₂) ≈ proj (certOf s₁)
    LEDGERS-field-shift≈ is = C.LEDGERS-field-shift≈ (Allᴸ.map Indep⇒Distinct is)
```

## Delegation-state fields

```agda
-- commutation of `dOp` updates from that of their two cases
module DOp {M : Type} (_≈_ : M → M → Type) (≈-refl : ∀ {m} → m ≈ m) (≈-sym : ∀ {a b} → a ≈ b → b ≈ a)
  (f : Credential → Maybe VDeleg → Maybe KeyHash → Coin → M → M) (g : Credential → M → M)
  (f-cong : ∀ {c mvd mkh d a b} → a ≈ b → f c mvd mkh d a ≈ f c mvd mkh d b)
  (g-cong : ∀ {c a b} → a ≈ b → g c a ≈ g c b)
  (ff : ∀ {m c₁ c₂ mvd₁ mvd₂ mkh₁ mkh₂ d₁ d₂} → c₁ ≢ c₂
      → f c₂ mvd₂ mkh₂ d₂ (f c₁ mvd₁ mkh₁ d₁ m) ≈ f c₁ mvd₁ mkh₁ d₁ (f c₂ mvd₂ mkh₂ d₂ m))
  (fg : ∀ {m c₁ c₂ mvd mkh d} → c₁ ≢ c₂ → g c₂ (f c₁ mvd mkh d m) ≈ f c₁ mvd mkh d (g c₂ m))
  (gg : ∀ {m c₁ c₂} → g c₂ (g c₁ m) ≈ g c₁ (g c₂ m))
  where
  dOp-cong : ∀ {a b} c → a ≈ b → dOp f g a c ≈ dOp f g b c
  dOp-cong (delegate _ _ _ _) e = f-cong e
  dOp-cong (dereg _ _)        e = g-cong e
  dOp-cong (regpool _ _)      e = e
  dOp-cong (retirepool _ _)   e = e
  dOp-cong (regdrep _ _ _)    e = e
  dOp-cong (deregdrep _ _)    e = e
  dOp-cong (ccreghot _ _)     e = e

  dOp-comm : ∀ {m x y} → DistinctWit x y → dOp f g (dOp f g m x) y ≈ dOp f g (dOp f g m y) x
  dOp-comm {x = delegate _ _ _ _} {delegate _ _ _ _} dw = ff (dw refl refl)
  dOp-comm {x = delegate _ _ _ _} {dereg _ _}        dw = fg (dw refl refl)
  dOp-comm {x = dereg _ _}        {delegate _ _ _ _} dw = ≈-sym (fg (dw refl refl ∘ sym))
  dOp-comm {x = dereg _ _}        {dereg _ _}        _  = gg
  dOp-comm {x = delegate _ _ _ _} {regpool _ _}      _  = ≈-refl
  dOp-comm {x = delegate _ _ _ _} {retirepool _ _}   _  = ≈-refl
  dOp-comm {x = delegate _ _ _ _} {regdrep _ _ _}    _  = ≈-refl
  dOp-comm {x = delegate _ _ _ _} {deregdrep _ _}    _  = ≈-refl
  dOp-comm {x = delegate _ _ _ _} {ccreghot _ _}     _  = ≈-refl
  dOp-comm {x = dereg _ _}        {regpool _ _}      _  = ≈-refl
  dOp-comm {x = dereg _ _}        {retirepool _ _}   _  = ≈-refl
  dOp-comm {x = dereg _ _}        {regdrep _ _ _}    _  = ≈-refl
  dOp-comm {x = dereg _ _}        {deregdrep _ _}    _  = ≈-refl
  dOp-comm {x = dereg _ _}        {ccreghot _ _}     _  = ≈-refl
  dOp-comm {x = regpool _ _}    _ = ≈-refl
  dOp-comm {x = retirepool _ _} _ = ≈-refl
  dOp-comm {x = regdrep _ _ _}  _ = ≈-refl
  dOp-comm {x = deregdrep _ _}  _ = ≈-refl
  dOp-comm {x = ccreghot _ _}   _ = ≈-refl

private
  resᶜ-cong : ∀ {B : Type} {c : Credential} {a b : Credential ⇀ B} → a ≈ᵐ b → resF c a ≈ᵐ resF c b
  resᶜ-cong e = Properties.filter-cong e

  res-comm : ∀ {B : Type} {m : Credential ⇀ B} {c₁ c₂} → resF c₂ (resF c₁ m) ≈ᵐ resF c₁ (resF c₂ m)
  res-comm {m = m} {c₁} {c₂} = resᶜ-comm {m = m} {X = ❴ c₁ ❵} {Y = ❴ c₂ ❵}

module VD = DOp {VoteDelegs} _≈ᵐ_ SetSetoid.refl SetSetoid.sym vdF resF
  (λ {c} {mvd} e → insertIfJust-cong c mvd e) (λ {c} {a} {b} e → resᶜ-cong {c = c} {a} {b} e)
  (λ {m} {c₁} {c₂} {mvd₁} {mvd₂} ne → insertIfJust-comm {m = m} {c₁ = c₁} {c₂ = c₂} {mv₁ = mvd₁} {mv₂ = mvd₂} ne)
  (λ {m} {c₁} {c₂} {mvd} ne → SetSetoid.sym (insertIfJust-del-comm {m = m} {c = c₁} {c' = c₂} {mv = mvd} ne))
  (λ {m} {c₁} {c₂} → res-comm {m = m} {c₁} {c₂})

module SD = DOp {StakeDelegs} _≈ᵐ_ SetSetoid.refl SetSetoid.sym sdF resF
  (λ {c} {_} {mkh} e → insertIfJust-cong c mkh e) (λ {c} {a} {b} e → resᶜ-cong {c = c} {a} {b} e)
  (λ {m} {c₁} {c₂} {_} {_} {mkh₁} {mkh₂} ne → insertIfJust-comm {m = m} {c₁ = c₁} {c₂ = c₂} {mv₁ = mkh₁} {mv₂ = mkh₂} ne)
  (λ {m} {c₁} {c₂} {_} {mkh} ne → SetSetoid.sym (insertIfJust-del-comm {m = m} {c = c₁} {c' = c₂} {mv = mkh} ne))
  (λ {m} {c₁} {c₂} → res-comm {m = m} {c₁} {c₂})

-- instances are passed explicitly: searching for them here is very slow
private
  dd-cong : ∀ {c mvd mkh d} {a b : Credential ⇀ Coin} → a ≈ᵐ b → ddF c mvd mkh d a ≈ᵐ ddF c mvd mkh d b
  dd-cong {c} {_} {_} {d} {a} {b} e =
    ∪⁺-cong-r {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄ {m = ❴ c , d ❵} {a} {b} e

  dd-ff : ∀ {m : Credential ⇀ Coin} {c₁ c₂ mvd₁ mvd₂ mkh₁ mkh₂ d₁ d₂} → c₁ ≢ c₂
    → ddF c₂ mvd₂ mkh₂ d₂ (ddF c₁ mvd₁ mkh₁ d₁ m) ≈ᵐ ddF c₁ mvd₁ mkh₁ d₁ (ddF c₂ mvd₂ mkh₂ d₂ m)
  dd-ff {m} {c₁} {c₂} {_} {_} {_} {_} {d₁} {d₂} ne =
    local-comm {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄
      (∪⁺-sing-local {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄ {k = c₁} {v = d₁})
      (∪⁺-sing-local {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄ {k = c₂} {v = d₂}) ne m

  dd-fg : ∀ {m : Credential ⇀ Coin} {c₁ c₂ mvd mkh d} → c₁ ≢ c₂
    → resF c₂ (ddF c₁ mvd mkh d m) ≈ᵐ ddF c₁ mvd mkh d (resF c₂ m)
  dd-fg {m} {c₁} {c₂} {_} {_} {d} ne =
    local-comm {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄
      (∪⁺-sing-local {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄ {k = c₁} {v = d})
      (resᶜ-sing-local {Credential} {Coin} ⦃ it ⦄ ⦃ it ⦄ ⦃ CommMonoid-ℕ-+ ⦄ ⦃ +-isCommutativeSemigroup ⦄ {k = c₂}) ne m

module DD = DOp {Credential ⇀ Coin} _≈ᵐ_ SetSetoid.refl SetSetoid.sym ddF resF
  (λ {c} {mvd} {mkh} {d} {a} {b} e → dd-cong {c} {mvd} {mkh} {d} {a} {b} e) (λ {c} {a} {b} e → resᶜ-cong {c = c} {a} {b} e)
  (λ {m} {c₁} {c₂} {mvd₁} {mvd₂} {mkh₁} {mkh₂} {d₁} {d₂} ne → dd-ff {m} {c₁} {c₂} {mvd₁} {mvd₂} {mkh₁} {mkh₂} {d₁} {d₂} ne)
  (λ {m} {c₁} {c₂} {mvd} {mkh} {d} ne → dd-fg {m} {c₁} {c₂} {mvd} {mkh} {d} ne)
  (λ {m} {c₁} {c₂} → res-comm {m = m} {c₁} {c₂})

module SDF = Field (DState.stakeDelegs ∘ CertState.dState) (λ _ _ → sdOp)
  (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)
module DDF = Field (DState.deposits ∘ CertState.dState) (λ _ _ → ddOp)
  (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)

LEDGERS-sd≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → DState.stakeDelegs (CertState.dState (certOf s₁)) ≈ᵐ DState.stakeDelegs (CertState.dState (certOf s₂))
LEDGERS-sd≈ = SDF.Comm.LEDGERS-field≈ _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → SD.dOp-cong c q) (λ _ _ dw → SD.dOp-comm dw)

LEDGERS-dd≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → DState.deposits (CertState.dState (certOf s₁)) ≈ᵐ DState.deposits (CertState.dState (certOf s₂))
LEDGERS-dd≈ = DDF.Comm.LEDGERS-field≈ _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → DD.dOp-cong c q) (λ _ _ dw → DD.dOp-comm dw)

module SDS = SDF.Comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → SD.dOp-cong c q) (λ _ _ dw → SD.dOp-comm dw)
module DDS = DDF.Comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → DD.dOp-cong c q) (λ _ _ dw → DD.dOp-comm dw)
```

## Pool state

```agda
record _≈ᵖ_ (p p′ : PState) : Type where
  field
    pl≈ : PState.pools    p ≈ᵐ PState.pools    p′
    fp≈ : PState.fPools   p ≈ᵐ PState.fPools   p′
    rt≈ : PState.retiring p ≈ᵐ PState.retiring p′
    pd≈ : PState.deposits p ≈ᵐ PState.deposits p′
open _≈ᵖ_

≈ᵖ-refl : ∀ {p} → p ≈ᵖ p
≈ᵖ-refl = record { pl≈ = SetSetoid.refl ; fp≈ = SetSetoid.refl ; rt≈ = SetSetoid.refl ; pd≈ = SetSetoid.refl }

≈ᵖ-trans : ∀ {p p′ p″} → p ≈ᵖ p′ → p′ ≈ᵖ p″ → p ≈ᵖ p″
≈ᵖ-trans e f = record { pl≈ = SetSetoid.trans (e .pl≈) (f .pl≈) ; fp≈ = SetSetoid.trans (e .fp≈) (f .fp≈)
                      ; rt≈ = SetSetoid.trans (e .rt≈) (f .rt≈) ; pd≈ = SetSetoid.trans (e .pd≈) (f .pd≈) }

private
  ∪ˡʳ-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m m′ : A ⇀ B} (n : A ⇀ B) → m ≈ᵐ m′ → (m ∪ˡ n) ≈ᵐ (m′ ∪ˡ n)
  ∪ˡʳ-cong {m = m} {m′} n e = ∪ˡ-cong {m = m} {m' = n} {m'' = m′} {m''' = n} e SetSetoid.refl

  ∪ˡˡ-cong : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m m′ : A ⇀ B} (n : A ⇀ B) → m ≈ᵐ m′ → (n ∪ˡ m) ≈ᵐ (n ∪ˡ m′)
  ∪ˡˡ-cong {m = m} {m′} n e = ∪ˡ-cong {m = n} {m' = m} {m'' = n} {m''' = m′} SetSetoid.refl e

  dom∪ˡ-in : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m : A ⇀ B} {k : A} (n : A ⇀ B) → k ∈ dom (m ˢ) → k ∈ dom ((m ∪ˡ n) ˢ)
  dom∪ˡ-in {m = m} n k∈ = dom-∪ˡ {m = m} {m' = n} .proj₂ (Equivalence.to ∈-∪ (inj₁ k∈))

  dom∪ˡ-out : ∀ {A B : Type} ⦃ _ : DecEq A ⦄ {m : A ⇀ B} {k k′ : A} {v : B}
    → k′ ≢ k → k′ ∉ dom (m ˢ) → k′ ∉ dom ((m ∪ˡ ❴ k , v ❵) ˢ)
  dom∪ˡ-out {m = m} {k} {k′} {v} ne k′∉ k′∈ with Equivalence.from ∈-∪ (dom-∪ˡ {m = m} {m' = ❴ k , v ❵} .proj₁ k′∈)
  ... | inj₁ h = k′∉ h
  ... | inj₂ h = ne (Equivalence.from ∈-dom-singleton-pair h)

  rereg-cong : ∀ {kh p a b} → a ≈ᵖ b → poolRereg kh p a ≈ᵖ poolRereg kh p b
  rereg-cong {kh} {p} {a} {b} e = record { pl≈ = e .pl≈ ; fp≈ = ∪ˡˡ-cong {m = PState.fPools a} {PState.fPools b} ❴ kh , p ❵ (e .fp≈)
                                 ; rt≈ = Properties.filter-cong (e .rt≈) ; pd≈ = e .pd≈ }

  reg-cong : ∀ {en pp kh p a b} → a ≈ᵖ b → poolReg en pp kh p a ≈ᵖ poolReg en pp kh p b
  reg-cong {en} {pp} {kh} {p} {a} {b} e = record
    { pl≈ = ∪ˡʳ-cong {m = PState.pools a} {PState.pools b} ❴ kh , mkStakePoolState en p ❵ (e .pl≈) ; fp≈ = e .fp≈ ; rt≈ = e .rt≈
    ; pd≈ = ∪ˡʳ-cong {m = PState.deposits a} {PState.deposits b} ❴ kh , PParams.poolDeposit pp ❵ (e .pd≈) }

pStep-cong : ∀ en pp {a b} c → a ≈ᵖ b → pStep en pp c a ≈ᵖ pStep en pp c b
pStep-cong en pp {a} {b} (regpool kh p) e = byDec (kh ∈ dom (PState.pools a ˢ))
  (λ ka → ≡≈≡ _≈ᵖ_ (pStep-yes {en} {pp} {kh} {p} {a} ka) (rereg-cong {kh} {p} e)
                   (pStep-yes {en} {pp} {kh} {p} {b} (dom-cong (e .pl≈) .proj₁ ka)))
  (λ ¬ka → ≡≈≡ _≈ᵖ_ (pStep-no {en} {pp} {kh} {p} {a} ¬ka) (reg-cong {en} {pp} {kh} {p} e)
                    (pStep-no {en} {pp} {kh} {p} {b} (λ (kb : kh ∈ dom (PState.pools b ˢ)) → ¬ka (dom-cong (e .pl≈) .proj₂ kb))))
pStep-cong en pp {a} {b} (retirepool kh ep) e = record
  { pl≈ = e .pl≈ ; fp≈ = e .fp≈ ; rt≈ = ∪ˡˡ-cong {m = PState.retiring a} {PState.retiring b} ❴ kh , ep ❵ (e .rt≈) ; pd≈ = e .pd≈ }
pStep-cong en pp (delegate _ _ _ _) e = e
pStep-cong en pp (dereg _ _)        e = e
pStep-cong en pp (regdrep _ _ _)    e = e
pStep-cong en pp (deregdrep _ _)    e = e
pStep-cong en pp (ccreghot _ _)     e = e

pStep-comm : ∀ en pp {ps x y} → DistinctWit x y → pStep en pp y (pStep en pp x ps) ≈ᵖ pStep en pp x (pStep en pp y ps)
pStep-comm en pp {ps} {regpool k₁ p₁} {regpool k₂ p₂} dw =
  byDec (k₁ ∈ dom (P ˢ))
    (λ y₁ → byDec (k₂ ∈ dom (P ˢ))
      (λ y₂ → ≡≈≡ _≈ᵖ_
        (trans (cong (pStep en pp (regpool k₂ p₂)) (pStep-yes {en} {pp} {k₁} {p₁} {ps} y₁)) (pStep-yes {en} {pp} {k₂} {p₂} {poolRereg k₁ p₁ ps} y₂))
        (record { pl≈ = SetSetoid.refl ; pd≈ = SetSetoid.refl
                ; fp≈ = insert-comm {m = PState.fPools ps} {c₁ = k₁} {c₂ = k₂} {v₁ = p₁} {v₂ = p₂} ne
                ; rt≈ = resᶜ-comm {m = PState.retiring ps} {X = ❴ k₁ ❵} {Y = ❴ k₂ ❵} })
        (trans (cong (pStep en pp (regpool k₁ p₁)) (pStep-yes {en} {pp} {k₂} {p₂} {ps} y₂)) (pStep-yes {en} {pp} {k₁} {p₁} {poolRereg k₂ p₂ ps} y₁)))
      (λ n₂ → ≡≈≡ _≈ᵖ_
        (trans (cong (pStep en pp (regpool k₂ p₂)) (pStep-yes {en} {pp} {k₁} {p₁} {ps} y₁)) (pStep-no {en} {pp} {k₂} {p₂} {poolRereg k₁ p₁ ps} n₂))
        ≈ᵖ-refl
        (trans (cong (pStep en pp (regpool k₁ p₁)) (pStep-no {en} {pp} {k₂} {p₂} {ps} n₂))
               (pStep-yes {en} {pp} {k₁} {p₁} {poolReg en pp k₂ p₂ ps} (dom∪ˡ-in {m = P} ❴ k₂ , mkStakePoolState en p₂ ❵ y₁)))))
    (λ n₁ → byDec (k₂ ∈ dom (P ˢ))
      (λ y₂ → ≡≈≡ _≈ᵖ_
        (trans (cong (pStep en pp (regpool k₂ p₂)) (pStep-no {en} {pp} {k₁} {p₁} {ps} n₁))
               (pStep-yes {en} {pp} {k₂} {p₂} {poolReg en pp k₁ p₁ ps} (dom∪ˡ-in {m = P} ❴ k₁ , mkStakePoolState en p₁ ❵ y₂)))
        ≈ᵖ-refl
        (trans (cong (pStep en pp (regpool k₁ p₁)) (pStep-yes {en} {pp} {k₂} {p₂} {ps} y₂)) (pStep-no {en} {pp} {k₁} {p₁} {poolRereg k₂ p₂ ps} n₁)))
      (λ n₂ → ≡≈≡ _≈ᵖ_
        (trans (cong (pStep en pp (regpool k₂ p₂)) (pStep-no {en} {pp} {k₁} {p₁} {ps} n₁))
               (pStep-no {en} {pp} {k₂} {p₂} {poolReg en pp k₁ p₁ ps} (dom∪ˡ-out {m = P} (ne ∘ sym) n₂)))
        (record { fp≈ = SetSetoid.refl ; rt≈ = SetSetoid.refl
                ; pl≈ = ∪ˡ-rsingleton-comm {m = P} {a = k₁} {b = k₂} {x = mkStakePoolState en p₁} {y = mkStakePoolState en p₂} ne
                ; pd≈ = ∪ˡ-rsingleton-comm {m = PState.deposits ps} {a = k₁} {b = k₂}
                          {x = PParams.poolDeposit pp} {y = PParams.poolDeposit pp} ne })
        (trans (cong (pStep en pp (regpool k₁ p₁)) (pStep-no {en} {pp} {k₂} {p₂} {ps} n₂))
               (pStep-no {en} {pp} {k₁} {p₁} {poolReg en pp k₂ p₂ ps} (dom∪ˡ-out {m = P} ne n₁)))))
  where
  P = PState.pools ps
  ne : k₁ ≢ k₂
  ne eq = dw refl refl (cong KeyHashObj eq)
pStep-comm en pp {ps} {regpool k₁ p₁} {retirepool k₂ e₂} dw =
  byDec (k₁ ∈ dom (PState.pools ps ˢ))
    (λ y₁ → ≡≈≡ _≈ᵖ_ (cong (pStep en pp (retirepool k₂ e₂)) (pStep-yes {en} {pp} {k₁} {p₁} {ps} y₁))
      (record { pl≈ = SetSetoid.refl ; fp≈ = SetSetoid.refl ; pd≈ = SetSetoid.refl
              ; rt≈ = insert-del-comm {m = PState.retiring ps} {c = k₂} {c' = k₁} {v = e₂} (ne ∘ sym) })
      (pStep-yes {en} {pp} {k₁} {p₁} {poolRetire k₂ e₂ ps} y₁))
    (λ n₁ → ≡≈≡ _≈ᵖ_ (cong (pStep en pp (retirepool k₂ e₂)) (pStep-no {en} {pp} {k₁} {p₁} {ps} n₁)) ≈ᵖ-refl
      (pStep-no {en} {pp} {k₁} {p₁} {poolRetire k₂ e₂ ps} n₁))
  where
  ne : k₁ ≢ k₂
  ne eq = dw refl refl (cong KeyHashObj eq)
pStep-comm en pp {ps} {retirepool k₁ e₁} {regpool k₂ p₂} dw =
  byDec (k₂ ∈ dom (PState.pools ps ˢ))
    (λ y₂ → ≡≈≡ _≈ᵖ_ (pStep-yes {en} {pp} {k₂} {p₂} {poolRetire k₁ e₁ ps} y₂)
      (record { pl≈ = SetSetoid.refl ; fp≈ = SetSetoid.refl ; pd≈ = SetSetoid.refl
              ; rt≈ = SetSetoid.sym (insert-del-comm {m = PState.retiring ps} {c = k₁} {c' = k₂} {v = e₁} ne) })
      (cong (pStep en pp (retirepool k₁ e₁)) (pStep-yes {en} {pp} {k₂} {p₂} {ps} y₂)))
    (λ n₂ → ≡≈≡ _≈ᵖ_ (pStep-no {en} {pp} {k₂} {p₂} {poolRetire k₁ e₁ ps} n₂) ≈ᵖ-refl
      (cong (pStep en pp (retirepool k₁ e₁)) (pStep-no {en} {pp} {k₂} {p₂} {ps} n₂)))
  where
  ne : k₁ ≢ k₂
  ne eq = dw refl refl (cong KeyHashObj eq)
pStep-comm en pp {ps} {retirepool k₁ e₁} {retirepool k₂ e₂} dw =
  record { pl≈ = SetSetoid.refl ; fp≈ = SetSetoid.refl ; pd≈ = SetSetoid.refl
         ; rt≈ = insert-comm {m = PState.retiring ps} {c₁ = k₁} {c₂ = k₂} {v₁ = e₁} {v₂ = e₂}
                   (λ eq → dw refl refl (cong KeyHashObj eq)) }
pStep-comm en pp {x = regpool _ _}    {delegate _ _ _ _} _ = ≈ᵖ-refl
pStep-comm en pp {x = regpool _ _}    {dereg _ _}        _ = ≈ᵖ-refl
pStep-comm en pp {x = regpool _ _}    {regdrep _ _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = regpool _ _}    {deregdrep _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = regpool _ _}    {ccreghot _ _}     _ = ≈ᵖ-refl
pStep-comm en pp {x = retirepool _ _} {delegate _ _ _ _} _ = ≈ᵖ-refl
pStep-comm en pp {x = retirepool _ _} {dereg _ _}        _ = ≈ᵖ-refl
pStep-comm en pp {x = retirepool _ _} {regdrep _ _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = retirepool _ _} {deregdrep _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = retirepool _ _} {ccreghot _ _}     _ = ≈ᵖ-refl
pStep-comm en pp {x = delegate _ _ _ _} _ = ≈ᵖ-refl
pStep-comm en pp {x = dereg _ _}        _ = ≈ᵖ-refl
pStep-comm en pp {x = regdrep _ _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = deregdrep _ _}    _ = ≈ᵖ-refl
pStep-comm en pp {x = ccreghot _ _}     _ = ≈ᵖ-refl

module PSF = Field CertState.pState (λ en pp ps c → pStep en pp c ps)
  (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)

LEDGERS-pstate≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → CertState.pState (certOf s₁) ≈ᵖ CertState.pState (certOf s₂)
LEDGERS-pstate≈ = PSF.Comm.LEDGERS-field≈ _≈ᵖ_ ≈ᵖ-refl ≈ᵖ-trans (λ en pp c q → pStep-cong en pp c q) (λ en pp dw → pStep-comm en pp dw)

module PSS = PSF.Comm _≈ᵖ_ ≈ᵖ-refl ≈ᵖ-trans (λ en pp c q → pStep-cong en pp c q) (λ en pp dw → pStep-comm en pp dw)
```

## Governance-certificate state

```agda
private
  ccOp-cong : ∀ {a b} c → a ≈ᵐ b → ccOp a c ≈ᵐ ccOp b c
  ccOp-cong {a} {b} (ccreghot c mc) e = ∪ˡˡ-cong {m = a} {b} ❴ c , mc ❵ e
  ccOp-cong (delegate _ _ _ _) e = e
  ccOp-cong (dereg _ _)        e = e
  ccOp-cong (regpool _ _)      e = e
  ccOp-cong (retirepool _ _)   e = e
  ccOp-cong (regdrep _ _ _)    e = e
  ccOp-cong (deregdrep _ _)    e = e

  ccOp-comm : ∀ {m x y} → DistinctWit x y → ccOp (ccOp m x) y ≈ᵐ ccOp (ccOp m y) x
  ccOp-comm {m} {ccreghot c₁ mc₁} {ccreghot c₂ mc₂} dw =
    insert-comm {m = m} {c₁ = c₁} {c₂ = c₂} {v₁ = mc₁} {v₂ = mc₂} (dw refl refl)
  ccOp-comm {x = ccreghot _ _} {delegate _ _ _ _} _ = SetSetoid.refl
  ccOp-comm {x = ccreghot _ _} {dereg _ _}        _ = SetSetoid.refl
  ccOp-comm {x = ccreghot _ _} {regpool _ _}      _ = SetSetoid.refl
  ccOp-comm {x = ccreghot _ _} {retirepool _ _}   _ = SetSetoid.refl
  ccOp-comm {x = ccreghot _ _} {regdrep _ _ _}    _ = SetSetoid.refl
  ccOp-comm {x = ccreghot _ _} {deregdrep _ _}    _ = SetSetoid.refl
  ccOp-comm {x = delegate _ _ _ _} _ = SetSetoid.refl
  ccOp-comm {x = dereg _ _}        _ = SetSetoid.refl
  ccOp-comm {x = regpool _ _}      _ = SetSetoid.refl
  ccOp-comm {x = retirepool _ _}   _ = SetSetoid.refl
  ccOp-comm {x = regdrep _ _ _}    _ = SetSetoid.refl
  ccOp-comm {x = deregdrep _ _}    _ = SetSetoid.refl

module CCF = Field (GState.ccHotKeys ∘ CertState.gState) (λ _ _ → ccOp)
  (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)

LEDGERS-cc≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → GState.ccHotKeys (CertState.gState (certOf s₁)) ≈ᵐ GState.ccHotKeys (CertState.gState (certOf s₂))
LEDGERS-cc≈ = CCF.Comm.LEDGERS-field≈ _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → ccOp-cong c q) (λ _ _ dw → ccOp-comm dw)

module CCS = CCF.Comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → ccOp-cong c q) (λ _ _ dw → ccOp-comm dw)

private
  gdOp-cong : ∀ {a b} c → a ≈ᵐ b → gdOp a c ≈ᵐ gdOp b c
  gdOp-cong {a} {b} (regdrep c d _) e = dd-cong {c} {nothing} {nothing} {d} {a} {b} e
  gdOp-cong {a} {b} (deregdrep c _) e = resᶜ-cong {c = c} {a} {b} e
  gdOp-cong (delegate _ _ _ _) e = e
  gdOp-cong (dereg _ _)        e = e
  gdOp-cong (regpool _ _)      e = e
  gdOp-cong (retirepool _ _)   e = e
  gdOp-cong (ccreghot _ _)     e = e

  gdOp-comm : ∀ {m x y} → DistinctWit x y → gdOp (gdOp m x) y ≈ᵐ gdOp (gdOp m y) x
  gdOp-comm {m} {regdrep c₁ d₁ _} {regdrep c₂ d₂ _} dw = dd-ff {m} {c₁} {c₂} {nothing} {nothing} {nothing} {nothing} {d₁} {d₂} (dw refl refl)
  gdOp-comm {m} {regdrep c₁ d₁ _} {deregdrep c₂ _}  dw = dd-fg {m} {c₁} {c₂} {nothing} {nothing} {d₁} (dw refl refl)
  gdOp-comm {m} {deregdrep c₁ _}  {regdrep c₂ d₂ _} dw = SetSetoid.sym (dd-fg {m} {c₂} {c₁} {nothing} {nothing} {d₂} (dw refl refl ∘ sym))
  gdOp-comm {m} {deregdrep c₁ _}  {deregdrep c₂ _}  _  = res-comm {m = m} {c₁} {c₂}
  gdOp-comm {x = regdrep _ _ _} {delegate _ _ _ _} _ = SetSetoid.refl
  gdOp-comm {x = regdrep _ _ _} {dereg _ _}        _ = SetSetoid.refl
  gdOp-comm {x = regdrep _ _ _} {regpool _ _}      _ = SetSetoid.refl
  gdOp-comm {x = regdrep _ _ _} {retirepool _ _}   _ = SetSetoid.refl
  gdOp-comm {x = regdrep _ _ _} {ccreghot _ _}     _ = SetSetoid.refl
  gdOp-comm {x = deregdrep _ _} {delegate _ _ _ _} _ = SetSetoid.refl
  gdOp-comm {x = deregdrep _ _} {dereg _ _}        _ = SetSetoid.refl
  gdOp-comm {x = deregdrep _ _} {regpool _ _}      _ = SetSetoid.refl
  gdOp-comm {x = deregdrep _ _} {retirepool _ _}   _ = SetSetoid.refl
  gdOp-comm {x = deregdrep _ _} {ccreghot _ _}     _ = SetSetoid.refl
  gdOp-comm {x = delegate _ _ _ _} _ = SetSetoid.refl
  gdOp-comm {x = dereg _ _}        _ = SetSetoid.refl
  gdOp-comm {x = regpool _ _}      _ = SetSetoid.refl
  gdOp-comm {x = retirepool _ _}   _ = SetSetoid.refl
  gdOp-comm {x = ccreghot _ _}     _ = SetSetoid.refl

module GDF = Field (GState.deposits ∘ CertState.gState) (λ _ _ → gdOp)
  (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)

LEDGERS-gd≈ : AllPairs Indep l₁ → l₁ ↭ l₂ → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → GState.deposits (CertState.gState (certOf s₁)) ≈ᵐ GState.deposits (CertState.gState (certOf s₂))
LEDGERS-gd≈ = GDF.Comm.LEDGERS-field≈ _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → gdOp-cong c q) (λ _ _ dw → gdOp-comm dw)

module GDS = GDF.Comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → gdOp-cong c q) (λ _ _ dw → gdOp-comm dw)

NoDRep⇒all : ∀ {t} → GovDomStable t → Allᴸ.All (λ c → ¬ isDRepCert c) (allDCerts t)
NoDRep⇒all (_ , (nds , nd)) = AllPropᴸ.++⁺ (All-concatMap⁺ DCertsOf nds) nd
```

## DReps: refreshed by votes only

```agda
drepsOf : CertState → DReps
drepsOf cs = GState.dreps (CertState.gState cs)

-- the DRep voters a batch member refreshes
voterSet : ∀ {ℓ} → Tx ℓ → ℙ Credential
voterSet x = mapPartial (isGovVoterDRep ∘ GovVote.voter) (fromList (ListOfGovVotesOf x))

refreshOp : Epoch → PParams → DReps → ℙ Credential → DReps
refreshOp e pp m X = mapValueRestricted (const (e + PParams.drepActivity pp)) m X

drSets : TopLevelTx → List (ℙ Credential)
drSets t = map voterSet (subTxs t) ++ voterSet t ∷ []

drTx : Epoch → PParams → DReps → TopLevelTx → DReps
drTx e pp m t = if IsValidFlagOf t then foldl (refreshOp e pp) m (drSets t) else m

private
  drTx-v : ∀ {e pp m t} → IsValidFlagOf t ≡ true → drTx e pp m t ≡ foldl (refreshOp e pp) m (drSets t)
  drTx-v v rewrite v = refl

  drTx-i : ∀ {e pp m t} → IsValidFlagOf t ≡ false → drTx e pp m t ≡ m
  drTx-i i rewrite i = refl

  drOp-id : ∀ {e pp m} c → ¬ isDRepCert c → drOp e pp m c ≡ m
  drOp-id (regdrep _ _ _)    ¬d = ⊥-elim (¬d tt)
  drOp-id (deregdrep _ _)    ¬d = ⊥-elim (¬d tt)
  drOp-id (delegate _ _ _ _) _  = refl
  drOp-id (dereg _ _)        _  = refl
  drOp-id (regpool _ _)      _  = refl
  drOp-id (retirepool _ _)   _  = refl
  drOp-id (ccreghot _ _)     _  = refl

  dr-certs : ∀ e pp cs cts → Allᴸ.All (λ c → ¬ isDRepCert c) cts → drepsOf (foldl (certStep e pp) cs cts) ≡ drepsOf cs
  dr-certs e pp cs []        _          = refl
  dr-certs e pp cs (c ∷ cts) (¬d ∷ h) = trans (dr-certs e pp (certStep e pp cs c) cts h) (drOp-id c ¬d)

  dr-ent : ∀ {ℓ} e pp (x : Tx ℓ) cs → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x)
    → drepsOf (entOp e pp x cs) ≡ refreshOp e pp (drepsOf cs) (voterSet x)
  dr-ent e pp x cs h = trans (cong drepsOf (entOp≡ e pp x cs)) (dr-certs e pp (entPre e pp x cs) (DCertsOf x) h)

  dr-members : ∀ e pp cs (xs : List SubLevelTx) → Allᴸ.All (λ x → Allᴸ.All (λ c → ¬ isDRepCert c) (DCertsOf x)) xs
    → drepsOf (memberFold e pp cs xs) ≡ foldl (refreshOp e pp) (drepsOf cs) (map voterSet xs)
  dr-members e pp cs []       _        = refl
  dr-members e pp cs (x ∷ xs) (h ∷ hs) =
    trans (dr-members e pp (entOp e pp x cs) xs hs)
      (cong (λ m → foldl (refreshOp e pp) m (map voterSet xs)) (dr-ent e pp x cs h))

dr-tx : ∀ e pp cs t → GovDomStable t → drepsOf (certOpᵀ e pp cs t) ≡ drTx e pp (drepsOf cs) t
dr-tx e pp cs t (_ , (nds , nd)) = byValidity t
  (λ v → trans (cong drepsOf (certOpᵀ-v {e} {pp} {cs} {t} v))
    (trans (dr-ent e pp t (memberFold e pp cs (subTxs t)) nd)
      (trans (cong (λ m → refreshOp e pp m (voterSet t)) (dr-members e pp cs (subTxs t) nds))
        (trans (sym (foldl-++ (refreshOp e pp) (drepsOf cs) (map voterSet (subTxs t)) (voterSet t ∷ [])))
          (sym (drTx-v {e} {pp} {drepsOf cs} {t} v))))))
  (λ i → trans (cong drepsOf (certOpᵀ-i {e} {pp} {cs} {t} i)) (sym (drTx-i {e} {pp} {drepsOf cs} {t} i)))

dr-run : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Allᴸ.All GovDomStable l
  → drepsOf (certOf s′) ≡ foldl (drTx (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ)) (drepsOf (certOf s)) l
dr-run (BS-base Id-nop) _ = refl
dr-run {Γ = Γ} {s = s} {l = t ∷ ts} (BS-ind st rest) (g ∷ gs) =
  trans (dr-run rest gs)
    (cong (λ m → foldl (drTx e pp) m ts)
      (trans (cong drepsOf (LEDGER⇒certΔ st)) (dr-tx e pp (certOf s) t g)))
  where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ

-- refreshes keep the domain
dom-refreshes : ∀ e pp (m : DReps) Xs → dom (foldl (refreshOp e pp) m Xs ˢ) ≡ᵉ dom (m ˢ)
dom-refreshes e pp m []       = SetSetoid.refl
dom-refreshes e pp m (X ∷ Xs) =
  SetSetoid.trans (dom-refreshes e pp (refreshOp e pp m X) Xs) (mVR-dom m X (const (e + PParams.drepActivity pp)))

dom-drTx : ∀ e pp (m : DReps) t → dom (drTx e pp m t ˢ) ≡ᵉ dom (m ˢ)
dom-drTx e pp m t = byValidity t
  (λ v → SetSetoid.trans (SetSetoid.reflexive (cong (λ z → dom (z ˢ)) (drTx-v {e} {pp} {m} {t} v))) (dom-refreshes e pp m (drSets t)))
  (λ i → SetSetoid.reflexive (cong (λ z → dom (z ˢ)) (drTx-i {e} {pp} {m} {t} i)))

private
  refresh-cong : ∀ e pp {a b} X → a ≈ᵐ b → refreshOp e pp a X ≈ᵐ refreshOp e pp b X
  refresh-cong e pp {a} {b} X eq = mVR-cong {m = a} {b} X (const (e + PParams.drepActivity pp)) eq

  refresh-comm : ∀ e pp {m X Y} → ⊤ → refreshOp e pp (refreshOp e pp m X) Y ≈ᵐ refreshOp e pp (refreshOp e pp m Y) X
  refresh-comm e pp {m} {X} {Y} _ = mVR-comm-const m Y X (e + PParams.drepActivity pp)

  drTx-cong : ∀ e pp t {a b} → a ≈ᵐ b → drTx e pp a t ≈ᵐ drTx e pp b t
  drTx-cong e pp t {a} {b} eq = byValidity t
    (λ v → ≡≈≡ _≈ᵐ_ (drTx-v {e} {pp} {a} {t} v)
             (foldl-congᵃ _≈ᵐ_ (refreshOp e pp) (λ {a′} {b′} X q → refresh-cong e pp {a′} {b′} X q) {a} {b} (drSets t) eq)
             (drTx-v {e} {pp} {b} {t} v))
    (λ i → ≡≈≡ _≈ᵐ_ (drTx-i {e} {pp} {a} {t} i) eq (drTx-i {e} {pp} {b} {t} i))

  drTx-comm : ∀ e pp {m x y} → drTx e pp (drTx e pp m x) y ≈ᵐ drTx e pp (drTx e pp m y) x
  drTx-comm e pp {m} {x} {y} = byValidity x
    (λ vx → byValidity y
      (λ vy → ≡≈≡ _≈ᵐ_
        (trans (drTx-v {e} {pp} {drTx e pp m x} {y} vy) (cong (λ z → foldl R z (drSets y)) (drTx-v {e} {pp} {m} {x} vx)))
        (foldl-block-comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ → ⊤) R
          (λ {a′} {b′} X q → refresh-cong e pp {a′} {b′} X q) (λ {m′} {X} {Y} _ → refresh-comm e pp {m′} {X} {Y} tt)
          (drSets x) (drSets y) (Allᴸ.tabulate (λ _ → Allᴸ.tabulate (λ _ → tt))))
        (trans (drTx-v {e} {pp} {drTx e pp m y} {x} vx) (cong (λ z → foldl R z (drSets x)) (drTx-v {e} {pp} {m} {y} vy))))
      (λ iy → SetSetoid.reflexive (cong (λ z → z ˢ)
        (trans (drTx-i {e} {pp} {drTx e pp m x} {y} iy) (cong (λ z → drTx e pp z x) (sym (drTx-i {e} {pp} {m} {y} iy)))))))
    (λ ix → SetSetoid.reflexive (cong (λ z → z ˢ)
      (trans (cong (λ z → drTx e pp z y) (drTx-i {e} {pp} {m} {x} ix)) (sym (drTx-i {e} {pp} {drTx e pp m y} {x} ix)))))
    where R = refreshOp e pp

LEDGERS-dr≈ : Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ → drepsOf (certOf s₁) ≈ᵐ drepsOf (certOf s₂)
LEDGERS-dr≈ {Γ = Γ} {s = s} ng ap p st₁ st₂ =
  ≡≈≡ _≈ᵐ_ (dr-run st₁ ng)
    (foldl-↭ _≈ᵐ_ SetSetoid.refl SetSetoid.trans Indep Indep-sym (λ _ → ⊤) (drTx e pp)
      (λ {a} {b} t eq → drTx-cong e pp t {a} {b} eq) (λ {m} {x} {y} _ _ _ → drTx-comm e pp {m} {x} {y})
      (drepsOf (certOf s)) (Allᴸ.tabulate (λ _ → tt)) ap p)
    (dr-run st₂ (All-resp-↭ p ng))
  where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ
```

## DReps across a shift: refreshes commute with DRep certificates

```agda
-- the DRep events of a batch member: its refresh, then its certificates
DrEv : Type
DrEv = ℙ Credential ⊎ DCert

drEvStep : Epoch → PParams → DReps → DrEv → DReps
drEvStep e pp m (inj₁ X) = refreshOp e pp m X
drEvStep e pp m (inj₂ c) = drOp e pp m c

memberEv : ∀ {ℓ} → Tx ℓ → List DrEv
memberEv x = inj₁ (voterSet x) ∷ map inj₂ (DCertsOf x)

drEvents : TopLevelTx → List DrEv
drEvents t = concatMap memberEv (subTxs t) ++ memberEv t

drEvTx : Epoch → PParams → DReps → TopLevelTx → DReps
drEvTx e pp m t = if IsValidFlagOf t then foldl (drEvStep e pp) m (drEvents t) else m

-- the events a `GovDomStable` transaction can produce
SuffixEv : DrEv → Type
SuffixEv (inj₁ _) = ⊤
SuffixEv (inj₂ c) = ¬ isDRepCert c

private
  drEvTx-v : ∀ {e pp m t} → IsValidFlagOf t ≡ true → drEvTx e pp m t ≡ foldl (drEvStep e pp) m (drEvents t)
  drEvTx-v v rewrite v = refl

  drEvTx-i : ∀ {e pp m t} → IsValidFlagOf t ≡ false → drEvTx e pp m t ≡ m
  drEvTx-i i rewrite i = refl

  dr-certs′ : ∀ e pp cs cts → drepsOf (foldl (certStep e pp) cs cts) ≡ foldl (drOp e pp) (drepsOf cs) cts
  dr-certs′ e pp cs []        = refl
  dr-certs′ e pp cs (c ∷ cts) = dr-certs′ e pp (certStep e pp cs c) cts

  ev-certs : ∀ e pp m cts → foldl (drEvStep e pp) m (map inj₂ cts) ≡ foldl (drOp e pp) m cts
  ev-certs e pp m []        = refl
  ev-certs e pp m (c ∷ cts) = ev-certs e pp (drOp e pp m c) cts

  dr-ent′ : ∀ {ℓ} e pp (x : Tx ℓ) cs → drepsOf (entOp e pp x cs) ≡ foldl (drEvStep e pp) (drepsOf cs) (memberEv x)
  dr-ent′ e pp x cs =
    trans (cong drepsOf (entOp≡ e pp x cs))
      (trans (dr-certs′ e pp (entPre e pp x cs) (DCertsOf x))
        (sym (ev-certs e pp (refreshOp e pp (drepsOf cs) (voterSet x)) (DCertsOf x))))

  dr-members′ : ∀ e pp cs (xs : List SubLevelTx)
    → drepsOf (memberFold e pp cs xs) ≡ foldl (drEvStep e pp) (drepsOf cs) (concatMap memberEv xs)
  dr-members′ e pp cs []       = refl
  dr-members′ e pp cs (x ∷ xs) =
    trans (dr-members′ e pp (entOp e pp x cs) xs)
      (trans (cong (λ m → foldl (drEvStep e pp) m (concatMap memberEv xs)) (dr-ent′ e pp x cs))
        (sym (foldl-++ (drEvStep e pp) (drepsOf cs) (memberEv x) (concatMap memberEv xs))))

  dr-tx′ : ∀ e pp cs t → drepsOf (certOpᵀ e pp cs t) ≡ drEvTx e pp (drepsOf cs) t
  dr-tx′ e pp cs t = byValidity t
    (λ v → trans (cong drepsOf (certOpᵀ-v {e} {pp} {cs} {t} v))
      (trans (dr-ent′ e pp t (memberFold e pp cs (subTxs t)))
        (trans (cong (λ m → foldl (drEvStep e pp) m (memberEv t)) (dr-members′ e pp cs (subTxs t)))
          (trans (sym (foldl-++ (drEvStep e pp) (drepsOf cs) (concatMap memberEv (subTxs t)) (memberEv t)))
            (sym (drEvTx-v {e} {pp} {drepsOf cs} {t} v))))))
    (λ i → trans (cong drepsOf (certOpᵀ-i {e} {pp} {cs} {t} i)) (sym (drEvTx-i {e} {pp} {drepsOf cs} {t} i)))

  dr-run′ : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
    → drepsOf (certOf s′) ≡ foldl (drEvTx (epoch (LedgerEnv.slot Γ)) (LedgerEnv.pparams Γ)) (drepsOf (certOf s)) l
  dr-run′ (BS-base Id-nop) = refl
  dr-run′ {Γ = Γ} {s = s} {l = t ∷ ts} (BS-ind st rest) =
    trans (dr-run′ rest)
      (cong (λ m → foldl (drEvTx e pp) m ts) (trans (cong drepsOf (LEDGER⇒certΔ st)) (dr-tx′ e pp (certOf s) t)))
    where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ

  drOp-cong : ∀ e pp {a b} c → a ≈ᵐ b → drOp e pp a c ≈ᵐ drOp e pp b c
  drOp-cong e pp {a} {b} (regdrep c _ _) eq = ∪ˡˡ-cong {m = a} {b} ❴ c , e + PParams.drepActivity pp ❵ eq
  drOp-cong e pp {a} {b} (deregdrep c _) eq = resᶜ-cong {c = c} {a} {b} eq
  drOp-cong e pp (delegate _ _ _ _) eq = eq
  drOp-cong e pp (dereg _ _)        eq = eq
  drOp-cong e pp (regpool _ _)      eq = eq
  drOp-cong e pp (retirepool _ _)   eq = eq
  drOp-cong e pp (ccreghot _ _)     eq = eq

  ev-cong : ∀ e pp {a b} ev → a ≈ᵐ b → drEvStep e pp a ev ≈ᵐ drEvStep e pp b ev
  ev-cong e pp {a} {b} (inj₁ X) eq = refresh-cong e pp {a} {b} X eq
  ev-cong e pp {a} {b} (inj₂ c) eq = drOp-cong e pp {a} {b} c eq

  -- any event commutes with a later suffix event
  ev-comm : ∀ e pp {m x y} → SuffixEv y → drEvStep e pp (drEvStep e pp m x) y ≈ᵐ drEvStep e pp (drEvStep e pp m y) x
  ev-comm e pp {m} {inj₁ X} {inj₁ Y} _ = refresh-comm e pp {m} {X} {Y} tt
  ev-comm e pp {m} {inj₂ (regdrep c _ _)} {inj₁ Y} _ = mVR-insert-const m Y c (e + PParams.drepActivity pp)
  ev-comm e pp {m} {inj₂ (deregdrep c _)} {inj₁ Y} _ = mVR-res m Y (const (e + PParams.drepActivity pp)) c
  ev-comm e pp {x = inj₂ (delegate _ _ _ _)} {inj₁ _} _ = SetSetoid.refl
  ev-comm e pp {x = inj₂ (dereg _ _)}        {inj₁ _} _ = SetSetoid.refl
  ev-comm e pp {x = inj₂ (regpool _ _)}      {inj₁ _} _ = SetSetoid.refl
  ev-comm e pp {x = inj₂ (retirepool _ _)}   {inj₁ _} _ = SetSetoid.refl
  ev-comm e pp {x = inj₂ (ccreghot _ _)}     {inj₁ _} _ = SetSetoid.refl
  ev-comm e pp {y = inj₂ (regdrep _ _ _)}    ¬d = ⊥-elim (¬d tt)
  ev-comm e pp {y = inj₂ (deregdrep _ _)}    ¬d = ⊥-elim (¬d tt)
  ev-comm e pp {y = inj₂ (delegate _ _ _ _)} _  = SetSetoid.refl
  ev-comm e pp {y = inj₂ (dereg _ _)}        _  = SetSetoid.refl
  ev-comm e pp {y = inj₂ (regpool _ _)}      _  = SetSetoid.refl
  ev-comm e pp {y = inj₂ (retirepool _ _)}   _  = SetSetoid.refl
  ev-comm e pp {y = inj₂ (ccreghot _ _)}     _  = SetSetoid.refl

  suffixEvents : ∀ {t} → GovDomStable t → Allᴸ.All SuffixEv (drEvents t)
  suffixEvents (_ , (nds , nd)) =
    AllPropᴸ.++⁺ (All-concatMap⁺ memberEv (Allᴸ.map (λ h → tt ∷ AllPropᴸ.map⁺ h) nds)) (tt ∷ AllPropᴸ.map⁺ nd)

  drEvTx-cong : ∀ e pp t {a b} → a ≈ᵐ b → drEvTx e pp a t ≈ᵐ drEvTx e pp b t
  drEvTx-cong e pp t {a} {b} eq = byValidity t
    (λ v → ≡≈≡ _≈ᵐ_ (drEvTx-v {e} {pp} {a} {t} v)
             (foldl-congᵃ _≈ᵐ_ (drEvStep e pp) (λ {a′} {b′} ev q → ev-cong e pp {a′} {b′} ev q) {a} {b} (drEvents t) eq)
             (drEvTx-v {e} {pp} {b} {t} v))
    (λ i → ≡≈≡ _≈ᵐ_ (drEvTx-i {e} {pp} {a} {t} i) eq (drEvTx-i {e} {pp} {b} {t} i))

  -- any transaction commutes with a later `GovDomStable` one
  drEvTx-comm : ∀ e pp {m x y} → GovDomStable y → drEvTx e pp (drEvTx e pp m x) y ≈ᵐ drEvTx e pp (drEvTx e pp m y) x
  drEvTx-comm e pp {m} {x} {y} g = byValidity x
    (λ vx → byValidity y
      (λ vy → ≡≈≡ _≈ᵐ_
        (trans (drEvTx-v {e} {pp} {drEvTx e pp m x} {y} vy) (cong (λ z → foldl S z (drEvents y)) (drEvTx-v {e} {pp} {m} {x} vx)))
        (foldl-block-comm _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ ev → SuffixEv ev) S
          (λ {a′} {b′} ev q → ev-cong e pp {a′} {b′} ev q) (λ {m′} {x′} {y′} h → ev-comm e pp {m′} {x′} {y′} h)
          (drEvents x) (drEvents y) (Allᴸ.tabulate (λ _ → suffixEvents {y} g)))
        (trans (drEvTx-v {e} {pp} {drEvTx e pp m y} {x} vx) (cong (λ z → foldl S z (drEvents x)) (drEvTx-v {e} {pp} {m} {y} vy))))
      (λ iy → SetSetoid.reflexive (cong (λ z → z ˢ)
        (trans (drEvTx-i {e} {pp} {drEvTx e pp m x} {y} iy) (cong (λ z → drEvTx e pp z x) (sym (drEvTx-i {e} {pp} {m} {y} iy)))))))
    (λ ix → SetSetoid.reflexive (cong (λ z → z ˢ)
      (trans (cong (λ z → drEvTx e pp z y) (drEvTx-i {e} {pp} {m} {x} ix)) (sym (drEvTx-i {e} {pp} {drEvTx e pp m y} {x} ix)))))
    where S = drEvStep e pp

-- tx moved to the front of a `GovDomStable` suffix: no condition on tx
LEDGERS-dr-shift≈ : ∀ {tx txs2} → Allᴸ.All GovDomStable txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂ → drepsOf (certOf s₂) ≈ᵐ drepsOf (certOf s₁)
LEDGERS-dr-shift≈ {Γ = Γ} {s = s} {tx = tx} {txs2} ngs st₁ st₂ =
  ≡≈≡ _≈ᵐ_ (dr-run′ st₂)
    (foldl-push _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ y → GovDomStable y) (drEvTx e pp)
      (λ {a} {b} t eq → drEvTx-cong e pp t {a} {b} eq) (λ {m} {x} {y} g → drEvTx-comm e pp {m} {x} {y} g)
      {drepsOf (certOf s)} tx txs2 ngs)
    (trans (dr-run′ st₁) (foldl-++ (drEvTx e pp) (drepsOf (certOf s)) txs2 (tx ∷ [])))
  where e = epoch (LedgerEnv.slot Γ) ; pp = LedgerEnv.pparams Γ
```

## Vote delegations: changed by certificates only

```agda
vdOf : CertState → VoteDelegs
vdOf cs = DState.voteDelegs (CertState.dState cs)

-- the DRep a certificate delegates votes to, and the DRep it deregisters
tgtCred dregOf : DCert → Maybe Credential
tgtCred (delegate _ (just (vDelegCredential c)) _ _) = just c
tgtCred _                                            = nothing
dregOf (deregdrep c _) = just c
dregOf _               = nothing

-- c does not deregister the DRep d delegates to
NoDregTgt : DCert → DCert → Type
NoDregTgt c d = ∀ {k} → dregOf c ≡ just k → tgtCred d ≢ just k

-- certificates whose vote-delegation updates commute
VdOK : DCert → DCert → Type
VdOK c d = DistinctWit c d × NoDregTgt c d × NoDregTgt d c

private
  -- the delegations a DRep deregistration removes
  dropᵛ : Credential → VoteDelegs → VoteDelegs
  dropᵛ k m = m ∣^ ❴ vDelegCredential k ❵ ᶜ

  vc-inj : ∀ {c c′} → vDelegCredential c ≡ vDelegCredential c′ → c ≡ c′
  vc-inj refl = refl

  vdOp-cong : ∀ {a b : VoteDelegs} c → a ≈ᵐ b → vdOp a c ≈ᵐ vdOp b c
  vdOp-cong (deregdrep _ _)          q = Properties.filter-cong q
  vdOp-cong {a} {b} (delegate c mvd mkh d) q = VD.dOp-cong {a} {b} (delegate c mvd mkh d) q
  vdOp-cong {a} {b} (dereg c d)        q = VD.dOp-cong {a} {b} (dereg c d) q
  vdOp-cong (regpool _ _)            q = q
  vdOp-cong (retirepool _ _)         q = q
  vdOp-cong (regdrep _ _ _)          q = q
  vdOp-cong (ccreghot _ _)           q = q

  -- a delegation to another DRep commutes with dropping one
  ins-drop : ∀ {m : VoteDelegs} {k c : Credential} {v : VDeleg} → v ∉ ❴ vDelegCredential k ❵ → insert (dropᵛ k m) c v ≈ᵐ dropᵛ k (insert m c v)
  ins-drop {m} {k} {c} {v} v∉ = ⊆₁ , ⊆₂
    where
    ⊆₁ : insert (dropᵛ k m) c v ˢ ⊆ dropᵛ k (insert m c v) ˢ
    ⊆₁ {a , w} h with ∈-insert⁻ {m = dropᵛ k m} {c} {v} h
    ... | inj₁ eq = Equivalence.to ∈-filter
                      (subst (λ z → z ∉ ❴ vDelegCredential k ❵) (sym (cong proj₂ eq)) v∉ , ∈-insert⁺ {m = m} {c} {v} (inj₁ eq))
    ... | inj₂ (a≢c , aw∈) = let (w∉ , aw∈m) = Equivalence.from ∈-filter aw∈
                             in Equivalence.to ∈-filter (w∉ , ∈-insert⁺ {m = m} {c} {v} (inj₂ (a≢c , aw∈m)))
    ⊆₂ : dropᵛ k (insert m c v) ˢ ⊆ insert (dropᵛ k m) c v ˢ
    ⊆₂ {a , w} h with Equivalence.from ∈-filter h
    ... | w∉ , aw∈ with ∈-insert⁻ {m = m} {c} {v} aw∈
    ...   | inj₁ eq          = ∈-insert⁺ {m = dropᵛ k m} {c} {v} (inj₁ eq)
    ...   | inj₂ (a≢c , aw∈m) = ∈-insert⁺ {m = dropᵛ k m} {c} {v} (inj₂ (a≢c , Equivalence.to ∈-filter (w∉ , aw∈m)))

  -- removing a credential and dropping a DRep's delegations commute, as do two drops
  res-drop : ∀ {m : VoteDelegs} {c k : Credential} → resF c (dropᵛ k m) ≈ᵐ dropᵛ k (resF c m)
  res-drop {m} {c} {k} = sw , sw′
    where
    sw : resF c (dropᵛ k m) ˢ ⊆ dropᵛ k (resF c m) ˢ
    sw h = let (a∉ , h₁) = Equivalence.from ∈-filter h ; (w∉ , h₂) = Equivalence.from ∈-filter h₁
           in Equivalence.to ∈-filter (w∉ , Equivalence.to ∈-filter (a∉ , h₂))
    sw′ : dropᵛ k (resF c m) ˢ ⊆ resF c (dropᵛ k m) ˢ
    sw′ h = let (w∉ , h₁) = Equivalence.from ∈-filter h ; (a∉ , h₂) = Equivalence.from ∈-filter h₁
            in Equivalence.to ∈-filter (a∉ , Equivalence.to ∈-filter (w∉ , h₂))

  drop-drop : ∀ {m : VoteDelegs} {k k′ : Credential} → dropᵛ k′ (dropᵛ k m) ≈ᵐ dropᵛ k (dropᵛ k′ m)
  drop-drop {m} {k} {k′} = sw {k} {k′} , sw {k′} {k}
    where
    sw : ∀ {k₁ k₂ : Credential} → dropᵛ k₂ (dropᵛ k₁ m) ˢ ⊆ dropᵛ k₁ (dropᵛ k₂ m) ˢ
    sw h = let (w∉₂ , h₁) = Equivalence.from ∈-filter h ; (w∉₁ , h₂) = Equivalence.from ∈-filter h₁
           in Equivalence.to ∈-filter (w∉₁ , Equivalence.to ∈-filter (w∉₂ , h₂))

  -- a DRep deregistration commutes with any update not delegating to that DRep
  drop-comm : ∀ {m : VoteDelegs} k y → tgtCred y ≢ just k → vdOp (dropᵛ k m) y ≈ᵐ dropᵛ k (vdOp m y)
  drop-comm {m} k (delegate c (just (vDelegCredential k′)) _ _) nt =
    ins-drop {m} {k} {c} (λ h → nt (cong just (vc-inj (Equivalence.from ∈-singleton h))))
  drop-comm {m} k (delegate c (just vDelegAbstain) _ _)      _ = ins-drop {m} {k} {c} (λ h → case Equivalence.from ∈-singleton h of λ ())
  drop-comm {m} k (delegate c (just vDelegNoConfidence) _ _) _ = ins-drop {m} {k} {c} (λ h → case Equivalence.from ∈-singleton h of λ ())
  drop-comm k (delegate _ nothing _ _) _ = SetSetoid.refl
  drop-comm {m} k (dereg c _)      _ = res-drop {m} {c} {k}
  drop-comm {m} k (deregdrep k′ _) _ = drop-drop {m} {k} {k′}
  drop-comm k (regpool _ _)    _ = SetSetoid.refl
  drop-comm k (retirepool _ _) _ = SetSetoid.refl
  drop-comm k (regdrep _ _ _)  _ = SetSetoid.refl
  drop-comm k (ccreghot _ _)   _ = SetSetoid.refl

  data DdView : DCert → Type where
    isDd  : ∀ k d → DdView (deregdrep k d)
    notDd : ∀ {c} → (∀ m → vdOp m c ≡ dOp vdF resF m c) → DdView c

  ddView : ∀ c → DdView c
  ddView (deregdrep k d)    = isDd k d
  ddView (delegate _ _ _ _) = notDd (λ _ → refl)
  ddView (dereg _ _)        = notDd (λ _ → refl)
  ddView (regpool _ _)      = notDd (λ _ → refl)
  ddView (retirepool _ _)   = notDd (λ _ → refl)
  ddView (regdrep _ _ _)    = notDd (λ _ → refl)
  ddView (ccreghot _ _)     = notDd (λ _ → refl)

  vdOp-comm : ∀ {m x y} → VdOK x y → vdOp (vdOp m x) y ≈ᵐ vdOp (vdOp m y) x
  vdOp-comm {m} {x} {y} ok with ddView x | ddView y
  ... | isDd k _ | _        = drop-comm {m} k y (proj₁ (proj₂ ok) refl)
  ... | notDd _  | isDd k _ = SetSetoid.sym (drop-comm {m} k x (proj₂ (proj₂ ok) refl))
  ... | notDd ex | notDd ey =
        ≡≈≡ _≈ᵐ_ (trans (ey (vdOp m x)) (cong (λ z → dOp vdF resF z y) (ex m)))
          (VD.dOp-comm {m} {x} {y} (proj₁ ok))
          (trans (ex (vdOp m y)) (cong (λ z → dOp vdF resF z x) (ey m)))

  -- certificates that are not DRep certificates deregister no DRep
  noDreg : ∀ {c} → ¬ isDRepCert c → ∀ {k} → dregOf c ≢ just k
  noDreg {deregdrep _ _}    ¬d _  = ¬d tt
  noDreg {delegate _ _ _ _} _  ()
  noDreg {dereg _ _}        _  ()
  noDreg {regpool _ _}      _  ()
  noDreg {retirepool _ _}   _  ()
  noDreg {regdrep _ _ _}    _  ()
  noDreg {ccreghot _ _}     _  ()

  dreg∈ : ∀ {t c k} → c ∈ˡ allDCerts t → dregOf c ≡ just k → k ∈ dregCreds t
  dreg∈ {c = deregdrep _ _} c∈ refl = Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ c∈ refl)
  dreg∈ {c = delegate _ _ _ _} _ ()
  dreg∈ {c = dereg _ _}        _ ()
  dreg∈ {c = regpool _ _}      _ ()
  dreg∈ {c = retirepool _ _}   _ ()
  dreg∈ {c = regdrep _ _ _}    _ ()
  dreg∈ {c = ccreghot _ _}     _ ()

  deleg∈ : ∀ {t d k} → d ∈ˡ allDCerts t → tgtCred d ≡ just k → k ∈ delegateeCreds t
  deleg∈ {d = delegate _ (just (vDelegCredential _)) _ _} d∈ refl = Equivalence.to ∈-fromList (∈ˡ-mapMaybe⁺ d∈ refl)
  deleg∈ {d = delegate _ (just vDelegAbstain) _ _}      _ ()
  deleg∈ {d = delegate _ (just vDelegNoConfidence) _ _} _ ()
  deleg∈ {d = delegate _ nothing _ _} _ ()
  deleg∈ {d = dereg _ _}        _ ()
  deleg∈ {d = regpool _ _}      _ ()
  deleg∈ {d = retirepool _ _}   _ ()
  deleg∈ {d = regdrep _ _ _}    _ ()
  deleg∈ {d = deregdrep _ _}    _ ()
  deleg∈ {d = ccreghot _ _}     _ ()

module VDF = Field vdOf (λ _ _ → vdOp) (λ _ _ _ _ → refl) (λ _ _ _ _ → refl) (λ _ _ → refl)
module VDR = VDF.CommR _≈ᵐ_ SetSetoid.refl SetSetoid.trans (λ _ _ c q → vdOp-cong c q) VdOK (λ _ _ {m} {x} {y} ok → vdOp-comm {m} {x} {y} ok)

private
  Indep⇒VdOK : ∀ {x y} → Indep x y → GovDomStable x → GovDomStable y → VDR.TxR x y
  Indep⇒VdOK {x} {y} i gx gy = Allᴸ.tabulate λ {c} c∈ → Allᴸ.tabulate λ {d} d∈ →
      (λ {k₁} {k₂} → Allᴸ.lookup (Allᴸ.lookup (Indep⇒Distinct i) c∈) d∈ {k₁} {k₂})
    , (λ {k} dc _ → noDreg {c} (Allᴸ.lookup (NoDRep⇒all {x} gx) c∈) dc)
    , (λ {k} dd _ → noDreg {d} (Allᴸ.lookup (NoDRep⇒all {y} gy) d∈) dd)

  shift⇒VdOK : ∀ {tx t} → GovDomStable t × Indep tx t × disjoint (dregCreds tx) (delegateeCreds t) → VDR.TxR tx t
  shift⇒VdOK {tx} {t} (gt , i , dj) = Allᴸ.tabulate λ {c} c∈ → Allᴸ.tabulate λ {d} d∈ →
      (λ {k₁} {k₂} → Allᴸ.lookup (Allᴸ.lookup (Indep⇒Distinct i) c∈) d∈ {k₁} {k₂})
    , (λ {k} dc dt → dj (dreg∈ {tx} c∈ dc) (deleg∈ {t} d∈ dt))
    , (λ {k} dd _ → noDreg {d} (Allᴸ.lookup (NoDRep⇒all {t} gt) d∈) dd)

LEDGERS-vd≈ : Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂ → vdOf (certOf s₁) ≈ᵐ vdOf (certOf s₂)
LEDGERS-vd≈ = VDR.LEDGERS-field≈ Indep Indep-sym GovDomStable Indep⇒VdOK

-- tx moved from the back to the front of a run, past GovDomStable transactions
-- it is independent of and whose delegatees it does not deregister
LEDGERS-vd-shift≈ : ∀ {tx txs2}
  → Allᴸ.All (λ t → GovDomStable t × Indep tx t × disjoint (dregCreds tx) (delegateeCreds t)) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂ → vdOf (certOf s₂) ≈ᵐ vdOf (certOf s₁)
LEDGERS-vd-shift≈ hs = VDR.LEDGERS-field-shift≈ (Allᴸ.map shift⇒VdOK hs)
```
