---
source_branch: master
source_path: src/Ledger/Conway/Specification.lagda.md
---

This is the formal specification of the Cardano ledger for the Conway era.

The Agda source code which formalizes the ledger specification in the Conway era
consists of the modules listed below.  How these modules fit together to form a
collection of interdependent state transition systems is illustrated by the
[STS Diagram][] in the [Introduction][] section.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Conway.Specification where
```
-->

## <span class="AgdaModule">BlockBody</span>

The Block Body Transition updates the block body state which comprises the
ledger state and the map describing the produced blocks.

```agda
import Ledger.Conway.Specification.BlockBody
import Ledger.Conway.Specification.BlockBody.Properties
```


## Certificates

```agda
import Ledger.Conway.Specification.Certs
import Ledger.Conway.Specification.Certs.Properties
```


## <span class="AgdaModule">Chain</span>

```agda
import Ledger.Conway.Specification.Chain
import Ledger.Conway.Specification.Chain.Properties
```

## Enactment

These modules concern the enactment of governance proposals and actions.

```agda
import Ledger.Conway.Specification.Enact
import Ledger.Conway.Specification.Enact.Properties
```

## <span class="AgdaModule">Epoch</span>

```agda
import Ledger.Conway.Specification.Epoch
import Ledger.Conway.Specification.Epoch.Properties
```

## <span class="AgdaModule">Fees</span>

This module defines a function that calculates the fee for reference scripts in a
transaction.

```agda
import Ledger.Conway.Specification.Fees
```

## Governance

```agda
import Ledger.Conway.Specification.Gov
import Ledger.Core.Specification.Gov.Actions
import Ledger.Conway.Specification.Gov.Properties
import Ledger.Conway.Specification.Gov.Properties.ChangePPGroup
import Ledger.Conway.Specification.Types.GovStructure
```

## <span class="AgdaModule">Ledger</span>

The `Ledger`{.AgdaModule} module defines the ledger transition system where valid
transactions transform the ledger state.

```agda
import Ledger.Conway.Specification.Ledger
import Ledger.Conway.Specification.Ledger.Properties
```

## Protocol Parameters

The defines the adjustable protocol parameters of the Cardano ledger.

```agda
import Ledger.Conway.Specification.PParams
```

## Properties of the Ledger Specification

```agda
import Ledger.Conway.Specification.Properties
```

## Ratification

```agda
import Ledger.Conway.Specification.Ratify
import Ledger.Conway.Specification.Ratify.Properties
```

## <span class="AgdaModule">Rewards</span>

```agda
import Ledger.Conway.Specification.Rewards
import Ledger.Conway.Specification.RewardUpdate
import Ledger.Conway.Specification.RewardUpdate.Properties
```

## Scripts

```agda
import Ledger.Conway.Specification.Script
import Ledger.Conway.Specification.Script.Validation
```

## Token Algebras

```agda
import Ledger.Core.Specification.TokenAlgebra.Base
import Ledger.Core.Specification.TokenAlgebra.Coin
import Ledger.Core.Specification.TokenAlgebra.ValueSet
import Ledger.Core.Specification.TokenAlgebra.ValueVector
```

## Transactions

```agda
import Ledger.Conway.Specification.Transaction
```

## <span class="AgdaModule">Utxo</span>

```agda
import Ledger.Conway.Specification.Utxo
import Ledger.Conway.Specification.Utxo.Properties
```

## <span class="AgdaModule">Utxow</span>

```agda
import Ledger.Conway.Specification.Utxow
import Ledger.Conway.Specification.Utxow.Properties
```
