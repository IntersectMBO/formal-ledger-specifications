---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Ledger/Properties/Reorder.lagda.md
---

# <span class="AgdaDatatype">LEDGERS</span>: Reordering Determinism for Dijkstra {#sec:dijkstra-ledgers-reorder}

Two permuted runs of pairwise-`Indep`, `GovDomStable` top-level transactions
end in `_≈ˡ_`-equal states.  The proofs are in
[ReorderLemmas](Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas.md) and
[CertReorder](Ledger.Dijkstra.Specification.Ledger.Properties.CertReorder.md) and
[RewardsReorder](Ledger.Dijkstra.Specification.Ledger.Properties.RewardsReorder.md);
this module states the assumed facts and assembles the theorem.

<!--
```agda
open import Ledger.Dijkstra.Specification.Transaction
open import Ledger.Dijkstra.Specification.Abstract

module Ledger.Dijkstra.Specification.Ledger.Properties.Reorder
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Ledger txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.StateEquiv txs abs
open import Ledger.Dijkstra.Specification.Ledger.Properties.ReorderLemmas txs abs public
open import Ledger.Dijkstra.Specification.Ledger.Properties.CertReorder txs abs
  using (LEDGERS-vd≈; LEDGERS-sd≈; LEDGERS-dd≈; LEDGERS-pstate≈; LEDGERS-dr≈; LEDGERS-cc≈; LEDGERS-gd≈; module _≈ᵖ_)
open import Ledger.Dijkstra.Specification.Ledger.Properties.RewardsReorder txs abs using (LEDGERS-rewards≈)

import Data.List.Relation.Unary.All as Allᴸ
open import Data.List.Relation.Unary.AllPairs using (AllPairs)
open import Data.List.Relation.Binary.Permutation.Propositional using (_↭_)

private variable
  Γ : LedgerEnv
  s s′ s₁ s₂ : LedgerState
  l l₁ l₂ : List TopLevelTx
```
-->

## Assumptions

```agda
postulate
  -- replay protection: along a run, applied transaction ids never repeat and are new to the UTxO
  txIds-unique : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → UniqueIds (utxoOf s) l

replay-outs-disjoint : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → DisjOuts (atoms l)
replay-outs-disjoint {s = s} {l = l} st = UniqueIds⇒DisjOuts {utxoOf s} {l} (txIds-unique st)

replay-outs-fresh : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′
  → Allᴸ.All (λ a → disjoint (dom (utxoOf s ˢ)) (dom (proj₂ (proj₂ a) ˢ))) (atoms l)
replay-outs-fresh {s = s} {l = l} st = UniqueIds⇒fresh {utxoOf s} {l} (txIds-unique st)

Ins#Outs-exec : Γ ⊢ s ⇀⦇ l ,LEDGERS⦈ s′ → Rem#Add (atoms l)
Ins#Outs-exec {s = s} {l = l} st = run-Rem#Add st (proj₁ (txIds-unique st)) (UniqueIds⇒Good {utxoOf s} {l} (txIds-unique st))

open Assuming replay-outs-disjoint replay-outs-fresh Ins#Outs-exec public

-- the certificate-state fields are proven in `CertReorder` and `RewardsReorder`
LEDGERS-cert≈ :
    Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → certOf s₁ ≈ᶜ certOf s₂
LEDGERS-cert≈ ng ap p st₁ st₂ = record
  { vd≈ = LEDGERS-vd≈ ng ap p st₁ st₂ ; sd≈ = LEDGERS-sd≈ ap p st₁ st₂
  ; rw≈ = LEDGERS-rewards≈ ap p st₁ st₂ ; dd≈ = LEDGERS-dd≈ ap p st₁ st₂
  ; pl≈ = _≈ᵖ_.pl≈ pst ; fp≈ = _≈ᵖ_.fp≈ pst ; rt≈ = _≈ᵖ_.rt≈ pst ; pd≈ = _≈ᵖ_.pd≈ pst
  ; dr≈ = LEDGERS-dr≈ ng ap p st₁ st₂ ; cck≈ = LEDGERS-cc≈ ap p st₁ st₂ ; gd≈ = LEDGERS-gd≈ ap p st₁ st₂ }
  where pst = LEDGERS-pstate≈ ap p st₁ st₂
```

## The theorem

```agda
LEDGERS-reorder :
    Allᴸ.All GovDomStable l₁ → AllPairs Indep l₁ → l₁ ↭ l₂
  → Γ ⊢ s ⇀⦇ l₁ ,LEDGERS⦈ s₁ → Γ ⊢ s ⇀⦇ l₂ ,LEDGERS⦈ s₂
  → s₁ ≈ˡ s₂
LEDGERS-reorder ng ap p st₁ st₂ = record
  { utxo≈      = LEDGERS-utxo≈ p st₁ st₂
  ; fees≈      = LEDGERS-fees≈ p st₁ st₂
  ; donations≈ = LEDGERS-don≈ p st₁ st₂
  ; govSt≈     = LEDGERS-govSt≈ ng ap p st₁ st₂
  ; certs≈     = LEDGERS-cert≈ ng ap p st₁ st₂ }
```
