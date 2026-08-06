---
source_branch: master
source_path: src/Ledger/Conway/Specification/Certs/Properties/VoteDelegsVDeleg.lagda.md
---

## Theorem: <span class="AgdaField">voteDelegs</span> values point at registered <span class="AgdaFunction">DReps</span> {#clm:VDelegsInRegDReps}

<!--
```agda

{-# OPTIONS --safe #-}

open import Ledger.Conway.Specification.Gov.Base

module Ledger.Conway.Specification.Certs.Properties.VoteDelegsVDeleg (gs : _) (open GovStructure gs) where

open import Ledger.Conway.Specification.Certs gs
open import Ledger.Prelude
open import Ledger.Conway.Specification.Gov.Actions gs

private variable
  Γ      : CertEnv
  s s'   : CertState
  certs  : List DCert
```
-->

*Informally*.

A `CertState`{.AgdaRecord} has a `DState`{.AgdaRecord}, a `PState`{.AgdaRecord}, and a
`GState`{.AgdaRecord}.  The `DState`{.AgdaRecord} contains a field
`voteDelegs`{.AgdaField}, a map sending the `Credential`{.AgdaDatatype} of a delegator to
the `VDeleg`{.AgdaDatatype} that receives its voting stake.  The `GState`{.AgdaRecord}
contains a field `dreps`{.AgdaField} whose domain is the set of registered
`DReps`{.AgdaFunction}.

`VDeleg`{.AgdaDatatype} has three constructors:
`vDelegCredential`{.AgdaInductiveConstructor}, which takes the
`Credential`{.AgdaDatatype} of a `DRep`, and the two constants
`vDelegAbstain`{.AgdaInductiveConstructor} and
`vDelegNoConfidence`{.AgdaInductiveConstructor}.

Call a `VDeleg`{.AgdaDatatype} *active* in a state if it is one of those two constants or
if it wraps the `Credential`{.AgdaDatatype} of a `DRep` registered in that state.  The
present property asserts that a `CERTS`{.AgdaDatatype} step leaves no other kind of
`VDeleg`{.AgdaDatatype} behind: every value of the `voteDelegs`{.AgdaField} map of the
resulting state is active in that state.  Nothing is assumed about the initial state,
because the `POST-CERT`{.AgdaDatatype} rule concluding every `CERTS`{.AgdaDatatype} step
corestricts `voteDelegs`{.AgdaField} to exactly the set of active
`VDelegs`{.AgdaDatatype}.

*Formally*.

```agda
activeVDelegs : CertState → ℙ VDeleg
activeVDelegs s = mapˢ vDelegCredential (dom (DRepsOf s))
                   ∪ fromList (vDelegNoConfidence ∷ vDelegAbstain ∷ [])

voteDelegsVDeleg : CertState → Type
voteDelegsVDeleg s = range (VoteDelegsOf s) ⊆ activeVDelegs s

CERTS-voteDelegsVDeleg : Γ ⊢ s ⇀⦇ certs ,CERTS⦈ s' → voteDelegsVDeleg s'
```

*Proof*.

A `CERTS`{.AgdaDatatype} step consists of a `PRE-CERT`{.AgdaDatatype} step followed by a
trace of `CERT`{.AgdaDatatype} steps that ends with a `POST-CERT`{.AgdaDatatype} step, so
it suffices to establish the property at the end of such a trace.  We do so in two
lemmas.

**Lemma (`POST-CERT`{.AgdaDatatype} establishes the property).** The single constructor
`CERT-post`{.AgdaInductiveConstructor} reveals the `voteDelegs`{.AgdaField} of its
resulting state to be a corestriction `vd`{.AgdaBound} `∣^`{.AgdaOperator}
`X`{.AgdaBound} of the incoming map `vd`{.AgdaBound}, and the range of a corestricted map
is contained in the corestricting set (`cores-range-⊆`{.AgdaFunction}).  The set
`X`{.AgdaBound} is read off the `GState`{.AgdaRecord}, which the rule leaves untouched, so
`X`{.AgdaBound} is `activeVDelegs`{.AgdaFunction} of the resulting state.

```agda
POST-CERT-voteDelegsVDeleg : Γ ⊢ s ⇀⦇ _ ,POST-CERT⦈ s' → voteDelegsVDeleg s'
POST-CERT-voteDelegsVDeleg (CERT-post {voteDelegs = vd}) = cores-range-⊆ vd
```

**Lemma (the property holds at the end of a `CERT`{.AgdaDatatype} trace).** Induct on the
trace.  The intermediate `CERT`{.AgdaDatatype} steps are irrelevant: only the final state
is constrained, and it is produced by the `POST-CERT`{.AgdaDatatype} step in the
`run-[]`{.AgdaInductiveConstructor} case.

```agda
CERT-trace-voteDelegsVDeleg :
  RunTraceAndThen _⊢_⇀⦇_,CERT⦈_ _⊢_⇀⦇_,POST-CERT⦈_ Γ s certs s' → voteDelegsVDeleg s'
CERT-trace-voteDelegsVDeleg (run-[] post)    = POST-CERT-voteDelegsVDeleg post
CERT-trace-voteDelegsVDeleg (run-∷ _ trace)  = CERT-trace-voteDelegsVDeleg trace
```

The theorem follows by inverting the `CERTS`{.AgdaDatatype} step and discarding its
`PRE-CERT`{.AgdaDatatype} component.

```agda
CERTS-voteDelegsVDeleg (run (_ , trace)) = CERT-trace-voteDelegsVDeleg trace
```
