---
source_branch: master
source_path: src/Ledger/Core.Specification.lagda.md
---


The submodules collected here, under the `Ledger.Core.Specification`{.AgdaModule}
module, define some of the core types of the ledger that remain unchanged across
ledger eras.

<!--
```agda
module Ledger.Core.Specification where
```
-->

## Addresses

The `Address`{.AgdaModule} module defines credentials and various address types.

```agda
import Ledger.Core.Specification.Address
```

## Cryptography

The `Crypto`{.AgdaModule} module defines cryptographic primitives and structures.

```agda
import Ledger.Core.Specification.Crypto
```


## Epoch

The `Epoch`{.AgdaModule} module defines epoch-related concepts and structures.

```agda
import Ledger.Core.Specification.Epoch
```
