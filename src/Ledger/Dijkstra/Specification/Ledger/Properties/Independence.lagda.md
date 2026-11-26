---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Independence.lagda.md
---

# Full independence: commutativity and insertion (Dijkstra) {#sec:dijkstra-ledgers-independence}

Fully independent `GovDomStable` transactions commute, a run of them can be
permuted given one execution, and insertion needs only one validation.

<!--
```agda
open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.Independence
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; Indep-sym; GovDomStable; LEDGERS-reorder; certCreds)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Insertion txs abs
  using (LEDGER-cong)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Footprints txs abs
import Ledger.Prelude.Properties.TraceReorder as TR

open import Data.List.Properties using (++-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
import Data.List.Relation.Unary.All.Properties as AllPropᴸ
import Data.List.Relation.Unary.AllPairs.Properties as APPropᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Unary.AllPairs using (AllPairs; []; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; swap; ↭-reflexive) renaming (refl to ↭-rfl; trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (shift)

private variable
  Γ : LedgerEnv
  s s₀ s₁ s₂ s′ : LedgerState
  tx t₁ t₂ : TopLevelTx
  txs1 txs2 : List TopLevelTx
```
-->

## Full independence

```agda
record FullIndep (t₁ t₂ : TopLevelTx) : Type where
  field
    indep        : Indep t₁ t₂
    -- account values: one's withdrawals/deposits vs the other's withdrawals/intervals
    disjRwd₁     : disjoint (wdrlCreds t₁ ∪ ddCreds t₁) (wdrlCreds t₂ ∪ intervalCreds t₂)
    disjRwd₂     : disjoint (wdrlCreds t₂ ∪ ddCreds t₂) (wdrlCreds t₁ ∪ intervalCreds t₁)
    -- account registration: certificates vs the other's account footprint
    disjRwdCert₁ : disjoint (rwdCreds t₁) (certCreds t₂)
    disjRwdCert₂ : disjoint (rwdCreds t₂) (certCreds t₁)
    -- a pool registration enables delegations to, and votes by, that pool
    disjPools₁   : disjoint (poolRegs t₁) (poolReads t₂)
    disjPools₂   : disjoint (poolRegs t₂) (poolReads t₁)
    -- pool registrations must use VRF and BLS keys no other pool has
    disjVRF      : disjoint (poolVRFs t₁) (poolVRFs t₂)
    disjBLS      : disjoint (poolBLSs t₁) (poolBLSs t₂)
    -- a CC hot-key registration may enable or disable any CC vote
    noCC₁        : ccRegs t₁ ≡ᵉ ∅ ⊎ ccVoters t₂ ≡ᵉ ∅
    noCC₂        : ccRegs t₂ ≡ᵉ ∅ ⊎ ccVoters t₁ ≡ᵉ ∅
    -- UTxO: nothing one reads is spent or created by the other
    disjSpends₁  : disjoint (reads t₁) (spends t₂)
    disjSpends₂  : disjoint (reads t₂) (spends t₁)
    disjOuts₁    : disjoint (reads t₁) (outsDom t₂)
    disjOuts₂    : disjoint (reads t₂) (outsDom t₁)

FullIndep-sym : FullIndep t₁ t₂ → FullIndep t₂ t₁
FullIndep-sym fi = record
  { indep        = Indep-sym (fi .indep)
  ; disjRwd₁     = fi .disjRwd₂     ; disjRwd₂     = fi .disjRwd₁
  ; disjRwdCert₁ = fi .disjRwdCert₂ ; disjRwdCert₂ = fi .disjRwdCert₁
  ; disjPools₁   = fi .disjPools₂   ; disjPools₂   = fi .disjPools₁
  ; disjVRF      = Properties.disjoint-sym (fi .disjVRF) ; disjBLS = Properties.disjoint-sym (fi .disjBLS)
  ; noCC₁        = fi .noCC₂        ; noCC₂        = fi .noCC₁
  ; disjSpends₁  = fi .disjSpends₂  ; disjSpends₂  = fi .disjSpends₁
  ; disjOuts₁    = fi .disjOuts₂    ; disjOuts₂    = fi .disjOuts₁ }
  where open FullIndep
```

## The frame rule

```agda
postulate
  -- a step of t₁ neither disables nor enables a fully independent t₂
  LEDGER-frame :
      GovDomStable t₁ → GovDomStable t₂ → FullIndep t₁ t₂
    → Γ ⊢ s ⇀⦇ t₁ ,LEDGER⦈ s′
    → (∀ {s″} → Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s₃))
    × (∀ {s″} → Γ ⊢ s′ ⇀⦇ t₂ ,LEDGER⦈ s″ → ∃[ s₃ ] (Γ ⊢ s  ⇀⦇ t₂ ,LEDGER⦈ s₃))

exch-indep : ∀ {Γ s s₁ s₂ t₁ t₂} → GovDomStable t₁ → GovDomStable t₂ → FullIndep t₁ t₂
  → Γ ⊢ s ⇀⦇ t₁ ∷ t₂ ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ t₂ ∷ t₁ ∷ [] ,LEDGERS⦈ s₂ → s₁ ≈ˡ s₂
exch-indep {t₁ = t₁} {t₂ = t₂} ng₁ ng₂ fi =
  LEDGERS-reorder (ng₁ ∷ ng₂ ∷ []) ((fi .FullIndep.indep ∷ []) ∷ ([] ∷ [])) (swap t₁ t₂ ↭-rfl)

open TR.Cong.Frame _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans LEDGER-cong
  GovDomStable FullIndep FullIndep-sym LEDGER-frame exch-indep public
  renaming (STEP-comm to LEDGER-comm; STEPS-permute to LEDGERS-permute; STEP-defers-run to LEDGER-defers-run)
  hiding (insert-indep-≈)
```

## Insertion, compared with appending at the back

```agda
insert-indep-≈ :
    GovDomStable tx → Allᴸ.All GovDomStable txs2 → Allᴸ.All (FullIndep tx) txs2 → AllPairs Indep txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁ → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′
  → ∃[ s₂ ] ∃[ s₃ ] (Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂ × Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-indep-≈ {tx = tx} {txs2 = txs2} ngx ngs fs ap =
  TR.Cong.Frame.insert-indep-≈ _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans LEDGER-cong
    GovDomStable FullIndep FullIndep-sym LEDGER-frame exch-indep ngx ngs fs
    (LEDGERS-reorder
      (AllPropᴸ.++⁺ ngs (ngx ∷ []))
      (APPropᴸ.++⁺ ap ([] ∷ []) (Allᴸ.map (λ f → Indep-sym (f .FullIndep.indep) ∷ []) fs))
      (↭-trans (shift tx txs2 []) (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2)))))
```
