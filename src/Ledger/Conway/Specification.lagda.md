---
source_branch: master
source_path: src/Ledger/Conway/Specification.lagda.md
---

```agda
{-# OPTIONS --safe #-}
module Ledger.Conway.Specification where

import Ledger.Conway.Specification.BlockBody
import Ledger.Conway.Specification.BlockBody.Properties
import Ledger.Conway.Specification.Certs
import Ledger.Conway.Specification.Certs.Properties
import Ledger.Conway.Specification.Chain
import Ledger.Conway.Specification.Chain.Properties
import Ledger.Conway.Specification.Enact
import Ledger.Conway.Specification.Enact.Properties
import Ledger.Conway.Specification.Epoch
import Ledger.Conway.Specification.Epoch.Properties
import Ledger.Conway.Specification.Fees
import Ledger.Conway.Specification.Gov
import Ledger.Conway.Specification.Gov.Actions
import Ledger.Conway.Specification.Gov.Properties
import Ledger.Conway.Specification.Gov.Properties.ChangePPGroup
import Ledger.Conway.Specification.Ledger
import Ledger.Conway.Specification.Ledger.Properties
import Ledger.Conway.Specification.PParams
import Ledger.Conway.Specification.Properties
import Ledger.Conway.Specification.Ratify
import Ledger.Conway.Specification.Ratify.Properties
import Ledger.Conway.Specification.Rewards
import Ledger.Conway.Specification.RewardUpdate
import Ledger.Conway.Specification.RewardUpdate.Properties
import Ledger.Conway.Specification.Script
import Ledger.Conway.Specification.Script.Validation
import Ledger.Conway.Specification.Test.Examples
import Ledger.Conway.Specification.Test.StructuredContracts
import Ledger.Conway.Specification.TokenAlgebra.Base
import Ledger.Conway.Specification.TokenAlgebra.Coin
import Ledger.Conway.Specification.TokenAlgebra.ValueSet
import Ledger.Conway.Specification.TokenAlgebra.ValueVector
import Ledger.Conway.Specification.Transaction
import Ledger.Conway.Specification.Types.GovStructure
import Ledger.Conway.Specification.Utxo
import Ledger.Conway.Specification.Utxo.Properties
import Ledger.Conway.Specification.Utxow
import Ledger.Conway.Specification.Utxow.Properties
```
