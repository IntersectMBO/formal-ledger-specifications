---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs/Properties/VoteDelegsVDeleg.lagda.md
---

## Claim: `voteDelegs` field values are `VDeleg`s constructed from their keys {#clm:VDelegsInRegDReps}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.VoteDelegsVDeleg (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Specification.Certs gs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Actions gs
```
-->

*Informally*.

A `CertState`{.AgdaRecord} has a `DState`{.AgdaDatatype}, a `PState`{.AgdaDatatype}, and a
`GState`{.AgdaDatatype}.  The `DState`{.AgdaDatatype} contains a field
`voteDelegs`{.AgdaField} which is a mapping from `Credential`{.AgdaDatatype} to
`VDeleg`{.AgdaDatatype}.

`VDeleg`{.AgdaDatatype} is a datatype with three constructors; the one of interest to
us here is `vDelegCredential{.AgdaInductiveConstructor}, which takes a `Credential`{.AgdaDatatype}.

Now suppose we have a collection `C`{.AgdaBound} of credentials—for instance, given
`d`{.AgdaBound} : `DState`{.AgdaDatatype}, take `C`{.AgdaBound} to be the domain of
the `voteDelegs`{.AgdaField} field of `d`{.AgdaBound}. We could then obtain a set of
`VDelegs`{.AgdaDatatype} by applying `vDelegCredential{.AgdaInductiveConstructor} to
each element of `C`{.AgdaBound}.

The present property asserts that the set of `VDelegs`{.AgdaDatatype} that results
from the application of `vDelegCredential`{.AgdaInductiveConstructor} to the
domain of the `voteDelegs`{.AgdaField} of `d`{.AgdaBound} contains the range
of the `voteDelegs`{.AgdaField} of `d`{.AgdaBound}.

*Formally*.

```agda
voteDelegsVDeleg :  DState → Type
voteDelegsVDeleg d = range (VoteDelegsOf d) ⊆ mapˢ vDelegCredential (dom (VoteDelegsOf d))
```

*Proof*. (coming soon)
