---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Computational.lagda.md
---

# Computational Instances {#sec:computational-instances}

This module checks that every ledger transition rule in the Dijkstra era has a
`Computational`{.AgdaRecord} instance.

It works by importing all `Properties.Computational`{.AgdaModule} modules and
then ascribing each instance to a named top-level value.  If any instance is missing,
this module will fail to type-check.

<!--
```agda
{-# OPTIONS --safe #-}
open import Ledger.Dijkstra.Specification.Abstract
open import Ledger.Dijkstra.Specification.Transaction
module Ledger.Dijkstra.Specification.Computational
  (txs : _) (open TransactionStructure txs)
  (abs : AbstractFunctions txs) (open AbstractFunctions abs)
  where

open import Ledger.Prelude
open import Interface.ComputationalRelation

-- ── Import all Computational instances ───────────────────────

open import Ledger.Dijkstra.Specification.BlockBody txs abs using (_⊢_⇀⦇_,BBODY⦈_)
open import Ledger.Dijkstra.Specification.BlockBody.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.Certs govStructure
  using (_⊢_⇀⦇_,CERT⦈_ ; _⊢_⇀⦇_,CERTS⦈_ ; _⊢_⇀⦇_,DELEG⦈_ ; _⊢_⇀⦇_,GOVCERT⦈_)
open import Ledger.Dijkstra.Specification.Certs.Properties.Computational govStructure

open import Ledger.Dijkstra.Specification.Enact govStructure
  using (_⊢_⇀⦇_,ENACT⦈_)
open import Ledger.Dijkstra.Specification.Enact.Properties.Computational govStructure

open import Ledger.Dijkstra.Specification.Epoch txs abs
  using (_⊢_⇀⦇_,EPOCH⦈_ ; _⊢_⇀⦇_,NEWEPOCH⦈_)
open import Ledger.Dijkstra.Specification.Epoch.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.Gov govStructure
  using (_⊢_⇀⦇_,GOV⦈_ ; _⊢_⇀⦇_,GOVS⦈_ )
open import Ledger.Dijkstra.Specification.Gov.Properties.Computational txs

open import Ledger.Dijkstra.Specification.Ledger txs abs
  using (_⊢_⇀⦇_,LEDGER⦈_ ; _⊢_⇀⦇_,LEDGERS⦈_ ; _⊢_⇀⦇_,SUBLEDGER⦈_ ; _⊢_⇀⦇_,SUBLEDGERS⦈_)
open import Ledger.Dijkstra.Specification.Ledger.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.PoolReap txs abs
  using (_⊢_⇀⦇_,POOLREAP⦈_)
open import Ledger.Dijkstra.Specification.PoolReap.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.Ratify govStructure
  using (_⊢_⇀⦇_,RATIFY⦈_ ; _⊢_⇀⦇_,RATIFIES⦈_)
open import Ledger.Dijkstra.Specification.Ratify.Properties.Computational txs

open import Ledger.Dijkstra.Specification.Rewards txs abs
  using (_⊢_⇀⦇_,SNAP⦈_)
open import Ledger.Dijkstra.Specification.Rewards.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.Utxo txs abs
  using (_⊢_⇀⦇_,UTXO⦈_ ; _⊢_⇀⦇_,UTXOS⦈_ ; _⊢_⇀⦇_,SUBUTXO⦈_)
open import Ledger.Dijkstra.Specification.Utxo.Properties.Computational txs abs

open import Ledger.Dijkstra.Specification.Utxow txs abs
  using (_⊢_⇀⦇_,UTXOW⦈_ ; _⊢_⇀⦇_,SUBUTXOW⦈_)
open import Ledger.Dijkstra.Specification.Utxow.Properties.Computational txs abs
```
-->

## Explicit Type Ascriptions

Each line below is a compile-time assertion: "there exists a Computational instance for rule X."
Adding a new rule requires adding an entry here.

```agda
_ = Computational _⊢_⇀⦇_,BBODY⦈_       String  ∋ it
_ = Computational _⊢_⇀⦇_,CERT⦈_        String  ∋ it
_ = Computational _⊢_⇀⦇_,CERTS⦈_       String  ∋ it
_ = Computational _⊢_⇀⦇_,DELEG⦈_       String  ∋ it
_ = Computational _⊢_⇀⦇_,ENACT⦈_       String  ∋ it
_ = Computational _⊢_⇀⦇_,EPOCH⦈_       ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,GOV⦈_         String  ∋ it
_ = Computational _⊢_⇀⦇_,GOVS⦈_        String  ∋ it
_ = Computational _⊢_⇀⦇_,GOVCERT⦈_     String  ∋ it
_ = Computational _⊢_⇀⦇_,LEDGER⦈_      String  ∋ it
_ = Computational _⊢_⇀⦇_,LEDGERS⦈_     String  ∋ it
_ = Computational _⊢_⇀⦇_,NEWEPOCH⦈_    ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,POOLREAP⦈_    ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,RATIFY⦈_      ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,RATIFIES⦈_    ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,SNAP⦈_        ⊥       ∋ it
_ = Computational _⊢_⇀⦇_,SUBLEDGER⦈_   String  ∋ it
_ = Computational _⊢_⇀⦇_,SUBLEDGERS⦈_  String  ∋ it
_ = Computational _⊢_⇀⦇_,SUBUTXO⦈_     String  ∋ it
_ = Computational _⊢_⇀⦇_,SUBUTXOW⦈_    String  ∋ it
_ = Computational _⊢_⇀⦇_,UTXO⦈_        String  ∋ it
_ = Computational _⊢_⇀⦇_,UTXOS⦈_       String  ∋ it
_ = Computational _⊢_⇀⦇_,UTXOW⦈_       String  ∋ it

-- ── Rules still TODO ─────────────────────────────────────────
-- Uncomment each line once the corresponding instance is proved:
--
-- open import Ledger.Dijkstra.Specification.RewardUpdate.Properties.Computational txs abs
-- _ = Computational _⊢_⇀⦇_,RUPD⦈_   ⊥ ∋ it
-- _ = Computational _⊢_⇀⦇_,TICK⦈_   ⊥ ∋ it
```
