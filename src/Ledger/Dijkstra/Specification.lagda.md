---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification.lagda.md
---

This is the formal specification of the Cardano ledger for the Dijkstra era.
The Agda source code which formalizes the ledger specification in the Conway era
consists of the modules listed below.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification where
```
-->

## Addresses

```agda
import Ledger.Core.Specification.Address renaming (RewardAddress to RewardAddress)
```

## <span class="AgdaModule">Epoch</span>

```agda
import Ledger.Core.Specification.Epoch
```

## Certificates

```agda
import Ledger.Dijkstra.Specification.Certs
```

## Governance

```agda
import Ledger.Dijkstra.Specification.Gov.Base
import Ledger.Dijkstra.Specification.Gov.Actions
```

## Protocol Parameters

```agda
import Ledger.Dijkstra.Specification.PParams
```

## Scripts

```agda
import Ledger.Dijkstra.Specification.Script
import Ledger.Dijkstra.Specification.Script.Validation
```

## Token Algebras

```agda
import Ledger.Dijkstra.Specification.TokenAlgebra.Base
```

## Transactions

```agda
import Ledger.Dijkstra.Specification.Transaction
```

## <span class="AgdaModule">Utxo</span>

```agda
import Ledger.Dijkstra.Specification.Utxo
```

## <span class="AgdaModule">Utxow</span>

```agda
import Ledger.Dijkstra.Specification.Utxow
```
