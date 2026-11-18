---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/CheckedInsertion.lagda.md
---

# Checked insertion: two validations plus footprint disjointness (Dijkstra) {#sec:dijkstra-ledgers-checked-insertion}

Insertion with no condition on the shape of the inserted transaction, only a
pairwise checkable `QueueCompat` against each (`GovDomStable`) suffix member.

<!--
```agda
open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.CheckedInsertion
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Entities txs
open import Ledger.Dijkstra.Specification.Gov govStructure using (GovEnv; GovState; _⊢_⇀⦇_,GOVS⦈_)
open import Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.Reorder txs abs
  using (Indep; GovDomStable; certCreds; certOf; govOf; LEDGERS-utxo≈; LEDGERS-fees≈; LEDGERS-don≈; rmO-idem)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Insertion txs abs using (LEDGER-cong)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Footprints txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.CertReorder txs abs
  using (_≈ᵐ_; vdOf; LEDGERS-dr-shift≈; LEDGERS-vd-shift≈; module SDS; module DDS; module PSS; module CCS; module GDS; module _≈ᵖ_)
open import Ledger.Dijkstra.Specification.Ledger.Properties.RewardsReorder txs abs using (LEDGERS-rewards-shift≈)
import Ledger.Prelude.Properties.TraceReorder as TR

open import Data.List.Properties using (++-identityʳ)
import Data.List.Relation.Unary.All as Allᴸ
open Allᴸ using ([]; _∷_)
open import Data.List.Relation.Binary.Permutation.Propositional
  using (_↭_; ↭-reflexive) renaming (trans to ↭-trans)
open import Data.List.Relation.Binary.Permutation.Propositional.Properties using (shift)

private variable
  Γ : LedgerEnv
  s s₀ s₁ s₂ s′ s″ : LedgerState
  tx t : TopLevelTx
  txs1 txs2 l : List TopLevelTx
```
-->

## The compatibility relation

```agda
record QueueCompat (tx t : TopLevelTx) : Type where
  field
    indep          : Indep tx t
    -- tx must not deregister a DRep that t votes with or delegates to
    disjDregVotes  : disjoint (dregCreds tx) (drepVoters t)
    disjDregDelegs : disjoint (dregCreds tx) (delegateeCreds t)
    -- account values and registration, in both directions
    disjRwd₁       : disjoint (wdrlCreds tx ∪ ddCreds tx) (wdrlCreds t ∪ intervalCreds t)
    disjRwd₂       : disjoint (wdrlCreds t ∪ ddCreds t) (wdrlCreds tx ∪ intervalCreds tx)
    disjRwdCert₁   : disjoint (rwdCreds tx) (certCreds t)
    disjRwdCert₂   : disjoint (rwdCreds t) (certCreds tx)
    -- t must not deregister a reward account tx's proposals require
    disjProps      : disjoint (propCreds tx) (certCreds t)
    -- CC hot-key registrations vs CC votes
    noCC₁          : ccRegs tx ≡ᵉ ∅ ⊎ ccVoters t ≡ᵉ ∅
    noCC₂          : ccRegs t ≡ᵉ ∅ ⊎ ccVoters tx ≡ᵉ ∅
    -- tx's consumption avoids t's non-consumption reads
    consCovered    : ∀ {i : TxIn} → i ∈ spends tx → i ∈ reads t → i ∈ consumed t
```

## Normalized states

```agda
-- no orphan DRep votes
record Normalized (s : LedgerState) : Type where
  field
    govNorm : rmOrphanDRepVotes (certOf s) (govOf s) ≈ᵍ govOf s

-- every step leaves a normalized state
LEDGER-Normalized : Normalized s → Γ ⊢ s ⇀⦇ tx ,LEDGER⦈ s′ → Normalized s′
LEDGER-Normalized _ (LEDGER-V (_ , _ , ents , govs , _)) = record { govNorm = rmO-idem (targetᶜ ents) (targetᵍ govs) }
  where targetᵍ : ∀ {Γᵍ : GovEnv} {g sig g′} → Γᵍ ⊢ g ⇀⦇ sig ,GOVS⦈ g′ → GovState
        targetᵍ {g′ = g′} _ = g′
        targetᶜ : ∀ {Γᵉ : EntitiesEnv} {cs t cs′} → Γᵉ ⊢ cs ⇀⦇ t ,ENTITIES⦈ cs′ → CertState
        targetᶜ {cs′ = cs′} _ = cs′
LEDGER-Normalized n (LEDGER-I _) = record { govNorm = n .Normalized.govNorm }
```

## The single-step obligation and the shift lemma

```agda
postulate
  -- crossing tx over a compatible suffix transaction t, both ways
  LEDGER-defer-checked :
      GovDomStable t → QueueCompat tx t
    → Γ ⊢ s  ⇀⦇ tx ,LEDGER⦈ s′
    → Γ ⊢ s  ⇀⦇ t ,LEDGER⦈ s″
    → Γ ⊢ s″ ⇀⦇ l ,LEDGERS⦈ s₁
    → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
    → (∃[ s₃ ] (Γ ⊢ s″ ⇀⦇ tx ,LEDGER⦈ s₃)) × (∃[ s₃ ] (Γ ⊢ s′ ⇀⦇ t ,LEDGER⦈ s₃))

  -- moving tx from the back to the front of a compatible suffix: governance state
  shift-govSt≈ :
      Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
    → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
    → govOf s₁ ≈ᵍ govOf s₂

-- the certificate fields: vote delegations also use `disjDregDelegs`, the others only `Indep tx t`
shift-cert≈ :
    Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
  → certOf s₁ ≈ᶜ certOf s₂
shift-cert≈ n ngs qcs st₁ st₂ = record
  { vd≈  = SetSetoid.sym (LEDGERS-vd-shift≈ (Allᴸ.map (λ {t} p → proj₁ p , QueueCompat.indep (proj₂ p)
                                , λ {a} → QueueCompat.disjDregDelegs (proj₂ p) {a}) (Allᴸ.zip (ngs , qcs))) st₁ st₂)
  ; rw≈  = SetSetoid.sym (LEDGERS-rewards-shift≈ is st₁ st₂)
  ; dr≈  = SetSetoid.sym (LEDGERS-dr-shift≈ ngs st₁ st₂)
  ; sd≈  = SetSetoid.sym (SDS.LEDGERS-field-shift≈ is st₁ st₂)
  ; dd≈  = SetSetoid.sym (DDS.LEDGERS-field-shift≈ is st₁ st₂)
  ; pl≈  = SetSetoid.sym (_≈ᵖ_.pl≈ pst) ; fp≈ = SetSetoid.sym (_≈ᵖ_.fp≈ pst)
  ; rt≈  = SetSetoid.sym (_≈ᵖ_.rt≈ pst) ; pd≈ = SetSetoid.sym (_≈ᵖ_.pd≈ pst)
  ; cck≈ = SetSetoid.sym (CCS.LEDGERS-field-shift≈ is st₁ st₂)
  ; gd≈  = SetSetoid.sym (GDS.LEDGERS-field-shift≈ is st₁ st₂) }
  where
  is  = Allᴸ.map QueueCompat.indep qcs
  pst = PSS.LEDGERS-field-shift≈ is st₁ st₂

LEDGERS-shift-≈ :
    Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s ⇀⦇ txs2 ++ tx ∷ [] ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ tx ∷ txs2 ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-shift-≈ {txs2 = txs2} {tx = tx} n ngs qcs st₁ st₂ = record
  { utxo≈      = LEDGERS-utxo≈ shiftPerm st₁ st₂
  ; fees≈      = LEDGERS-fees≈ shiftPerm st₁ st₂
  ; donations≈ = LEDGERS-don≈ shiftPerm st₁ st₂
  ; govSt≈     = shift-govSt≈ n ngs qcs st₁ st₂
  ; certs≈     = shift-cert≈ n ngs qcs st₁ st₂ }
  where
    shiftPerm : txs2 ++ tx ∷ [] ↭ tx ∷ txs2
    shiftPerm = ↭-trans (shift tx txs2 []) (↭-reflexive (cong (tx ∷_) (++-identityʳ txs2)))
```

## The checked insertion theorem

```agda
open TR.Cong.TwoValidations _⊢_⇀⦇_,LEDGER⦈_ _≈ˡ_ ≈ˡ-refl ≈ˡ-trans LEDGER-cong
  Normalized LEDGER-Normalized (λ _ → ⊤) (λ tx t → GovDomStable t × QueueCompat tx t)
  (λ _ (ng , qc) → LEDGER-defer-checked ng qc)
  (λ n _ (ng , qc) → LEDGERS-shift-≈ n (ng ∷ []) (qc ∷ []))

insert-checked :
    Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃)
insert-checked n ngs qcs = insert-2v n tt (Allᴸ.zip (ngs , qcs))

-- the inserted run is `_≈ˡ_`-equal to appending tx at the back
insert-checked-≈ :
    Normalized s → Allᴸ.All GovDomStable txs2 → Allᴸ.All (QueueCompat tx) txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′ → Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
insert-checked-≈ n ngs qcs = insert-2v-≈ n tt (Allᴸ.zip (ngs , qcs)) (λ n₀ → LEDGERS-shift-≈ n₀ ngs qcs)
```

## Per-lane packaging

```agda
-- the incoming urgent transaction: valid at its insertion point and at the
-- back of the standard queue, and compatible with every standard transaction
record Cpri (Γ : LedgerEnv) (s₀ s₁ s₂ : LedgerState) (tx : TopLevelTx) (txs2 : List TopLevelTx) : Type where
  field
    validMid   : ∃[ s′ ] (Γ ⊢ s₀ ⇀⦇ tx ,LEDGER⦈ s′)
    validEnd   : Γ ⊢ s₁ ⇀⦇ tx ,LEDGER⦈ s₂
    noConflict : Allᴸ.All (QueueCompat tx) txs2

-- the standard queue's invariant
record Cstd (txs : List TopLevelTx) : Type where
  field
    govDomStable : Allᴸ.All GovDomStable txs

reorder-urgent-≈ :
    Normalized s → Cpri Γ s₀ s₁ s₂ tx txs2 → Cstd txs2
  → Γ ⊢ s  ⇀⦇ txs1 ,LEDGERS⦈ s₀ → Γ ⊢ s₀ ⇀⦇ txs2 ,LEDGERS⦈ s₁
  → ∃[ s₃ ] (Γ ⊢ s ⇀⦇ txs1 ++ tx ∷ txs2 ,LEDGERS⦈ s₃ × s₂ ≈ˡ s₃)
reorder-urgent-≈ n cp cs pre suf =
  insert-checked-≈ n (cs .Cstd.govDomStable) (cp .Cpri.noConflict) pre suf
                   (cp .Cpri.validMid .proj₂) (cp .Cpri.validEnd)
```
