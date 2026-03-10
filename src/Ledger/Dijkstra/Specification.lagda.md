---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification.lagda.md
---

This is the formal specification of the Cardano ledger for the Dijkstra era.
The Agda source code which formalizes the ledger specification in the Dijkstra era
consists of the modules listed below.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification where
```
-->

## Abstract Functions

```agda
import Ledger.Dijkstra.Specification.Abstract
```

## Addresses

```agda
import Ledger.Core.Specification.Address renaming (RewardAddress to RewardAddress)
```

## Block Body

The Block Body Transition updates the block body state which comprises the
ledger state and the map describing the produced blocks.

```agda
import Ledger.Dijkstra.Specification.BlockBody
import Ledger.Dijkstra.Specification.BlockBody.Properties
```

## Certificates

```agda
import Ledger.Dijkstra.Specification.Certs
import Ledger.Dijkstra.Specification.Certs.Properties
```

## Chain

```agda
import Ledger.Dijkstra.Specification.Chain
import Ledger.Dijkstra.Specification.Chain.Properties
```

## Enactment

```agda
import Ledger.Dijkstra.Specification.Enact
import Ledger.Dijkstra.Specification.Enact.Properties
```

## <span class="AgdaModule">Epoch</span>

```agda
import Ledger.Core.Specification.Epoch
import Ledger.Dijkstra.Specification.Epoch
import Ledger.Dijkstra.Specification.Epoch.Properties
```

## Fees

```agda
import Ledger.Dijkstra.Specification.Fees
```

## Governance

```agda
import Ledger.Dijkstra.Specification.Gov
import Ledger.Dijkstra.Specification.Gov.Base
import Ledger.Dijkstra.Specification.Gov.Actions
import Ledger.Dijkstra.Specification.Gov.Properties
```

## Ledger

```agda
import Ledger.Dijkstra.Specification.Ledger
import Ledger.Dijkstra.Specification.Ledger.Properties
```

## Pool Reaping Transition

```agda
import Ledger.Dijkstra.Specification.PoolReap
import Ledger.Dijkstra.Specification.PoolReap.Properties
```

## Protocol Parameters

```agda
import Ledger.Dijkstra.Specification.PParams
```

## Ratification

```agda
import Ledger.Dijkstra.Specification.Ratify
import Ledger.Dijkstra.Specification.Ratify.Properties
```

## Rewards

```agda
import Ledger.Dijkstra.Specification.Rewards
import Ledger.Dijkstra.Specification.Rewards.Properties
import Ledger.Dijkstra.Specification.RewardUpdate
import Ledger.Dijkstra.Specification.RewardUpdate.Properties
```

## Scripts

```agda
import Ledger.Dijkstra.Specification.Script
import Ledger.Dijkstra.Specification.Script.Base
import Ledger.Dijkstra.Specification.Script.ScriptPurpose
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
import Ledger.Dijkstra.Specification.Utxo.Properties
```

## <span class="AgdaModule">Utxow</span>

```agda
import Ledger.Dijkstra.Specification.Utxow
import Ledger.Dijkstra.Specification.Utxow.Properties
```


