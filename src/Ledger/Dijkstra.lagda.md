---
source_branch: master
source_path: src/Ledger/Dijkstra.lagda.md
---

```agda
module Ledger.Dijkstra where

--- Cardano ledger in the Dijkstra era
import Ledger.Dijkstra.Specification
import Ledger.Dijkstra.Foreign

--- Transaction reordering and insertion; these rest on postulates, so they are
--- imported here rather than from the --safe Ledger.Dijkstra.Specification
import Ledger.Dijkstra.Specification.Ledger.Properties.CheckedInsertion
import Ledger.Dijkstra.Specification.Ledger.Properties.Independence
```
