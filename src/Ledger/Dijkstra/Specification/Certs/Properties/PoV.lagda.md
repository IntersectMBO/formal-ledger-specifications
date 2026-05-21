---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Certs/Properties/PoV.lagda.md
---

# Properties of `CERTS`: Preservation of Value {#thm:CERTS-PoV}

This module proves preservation of value for the `CERTS`{.AgdaDatatype} rule.  In the
Dijkstra era, `CERTS`{.AgdaDatatype} is the reflexive-transitive closure of
`CERT`{.AgdaDatatype} (withdrawal and direct-deposit handling having migrated to the
surrounding `ENTITIES`{.AgdaDatatype} rule in [CIP-159-11d][PR-1201]).  Consequently
the statement is the cleanest possible one: for any list of certificates
`dCerts`{.AgdaBound} and any `CertState`{.AgdaRecord}s `s`{.AgdaBound},
`s'`{.AgdaBound} related by `CERTS`{.AgdaDatatype}, we have

`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

The proof is a textbook induction on the reflexive-transitive closure using
`CERT-pov`{.AgdaFunction} (from `Certs.Properties.PoVLemmas`) at each inductive step.

`CERTS-pov`{.AgdaFunction} is the per-`CERTS`-step ingredient consumed by
`ENTITIES-pov`{.AgdaFunction} (in `Entities.Properties.PoV`), which combines it with
`applyWithdrawals-pov`{.AgdaFunction} and `applyDirectDeposits-pov`{.AgdaFunction} to
obtain the value-flow equation for the whole `ENTITIES`{.AgdaDatatype} rule.

[PR-1201]: https://github.com/IntersectMBO/formal-ledger-specifications/pull/1201

<!--
```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Gov.Base using (GovStructure)

module Ledger.Dijkstra.Specification.Certs.Properties.PoV
  (gs : GovStructure) (open GovStructure gs) where

open import Ledger.Prelude
open import Ledger.Dijkstra.Specification.Certs gs
open import Ledger.Dijkstra.Specification.Certs.Properties.PoVLemmas gs

open import Interface.STS

private variable
  A      : Type
  dCerts : List DCert
```
-->

## The `CERTS-pov` theorem

**Informally**. Let `dCerts`{.AgdaBound} be a list of `DCert`{.AgdaDatatype}s and let
`s`{.AgdaBound}, `s'`{.AgdaBound} be `CertState`{.AgdaRecord}s related by
`CERTS`{.AgdaDatatype}.  Then we have

`getCoin`{.AgdaFunction} `s`{.AgdaBound} ≡ `getCoin`{.AgdaFunction} `s'`{.AgdaBound}.

**Formally**.

```agda
CERTS-pov : {Γ : CertEnv} {s s' : CertState}
  → Γ ⊢ s ⇀⦇ dCerts ,CERTS⦈ s' → getCoin s ≡ getCoin s'
```

**Proof**. Induct on the structure of the reflexive-transitive closure.

+  Base case: `BS-base Id-nop`{.AgdaInductiveConstructor} forces the
   start and end states to coincide, so the goal is `refl`{.AgdaInductiveConstructor}.
+  Inductive case: chain `CERT-pov`{.AgdaFunction} on the head step with the
   inductive hypothesis on the tail.

```agda
CERTS-pov (BS-base Id-nop)    = refl
CERTS-pov (BS-ind step rest)  = trans (CERT-pov step) (CERTS-pov rest)
```
