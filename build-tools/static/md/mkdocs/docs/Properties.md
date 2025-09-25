---
source_path: build-tools/static/md/common/src/Properties.md
---


## Properties

This section presents the properties of the ledger that we have formally proved in
Agda or plan to do so in the near future.  We indicate in which Agda module each
property is formally stated and (possibly) proved. A "Claim" is a property that is
not yet proved, while a "Theorem" is one for which we have a formal proof.


### Preservation of Value

There are several "preservation of value" proofs throughout this formal
specificaition.  These can be found in the following modules:

+  [Ledger.Properties.PoV][]
+  [Utxo.Properties.PoV][]
+  [Certs.Properties.PoV][]
+  [Certs.Properties.PoVLemmas][]


### Invariance Properties

To say that a predicate `P`{.AgdaBound} is an *invariant* of a transition rule
`R`{.AgdaBound} means the following: if the rule `R`{.AgdaBound} relates states
`s`{.AgdaBound} and `s'`{.AgdaBound} and if `P`{.AgdaBound} holds at state
`s`{.AgdaBound}, then `P`{.AgdaBound} holds at state `s'`{.AgdaBound}.

Examples of invariance properties are found in

+  [Chain.Properties.CredDepsEqualDomRwds][]
+  [Chain.Properties.PParamsWellFormed][]


### Matching Governance Action Deposits

[ChainGovDepsMatch][thm:ChainGovDepsMatch], [LedgerGovDepsMatch][lem:LedgerGovDepsMatch], and [EpochGovDepsMatch][lem:EpochGovDepsMatch]
assert that a certain predicate is an invariant of the `CHAIN`{.AgdaDatatype},
`LEDGER`{.AgdaDatatype}, and `EPOCH`{.AgdaDatatype} rules, respectively.

Given a ledger state `s`{.AgdaBound}, we focus on deposits in the
`UTxOState`{.AgdaRecord} of `s`{.AgdaBound} that are
`GovActionDeposit`{.AgdaInductiveConstructor}s and we compare that set of
deposits with the `GovActionDeposit`{.AgdaInductiveConstructor}s of the
`GovState`{.AgdaDatatype} of `s`{.AgdaBound}.
When these two sets are the same, we write
`govDepsMatch`{.AgdaFunction} `s`{.AgdaBound} and say the
`govDepsMatch`{.AgdaFunction} relation holds for `s`{.AgdaBound}.
The formal definition of `govDepsMatch`{.AgdaFunction} is given
in [Ledger.Properties][].

The assertion, "the `govDepsMatch`{.AgdaFunction} relation is an invariant of the
`LEDGER`{.AgdaDatatype} rule," means the following:
if `govDepsMatch`{.AgdaFunction} `s`{.AgdaBound} and
`s`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `tx`{.AgdaBound} `,LEDGER⦈`{.AgdaDatatype} `s'`{.AgdaBound},
then `govDepsMatch`{.AgdaFunction} `s'`{.AgdaBound}.

The following are examples of this assertion:

+ [Chain.Properties.GovDepsMatch][]
+ [Ledger.Properties.GovDepsMatch][]
+ [Epoch.Properties.GovDepsMatch][]


### Minimum Spending Conditions

A *minimum spending condition* is proved in [Utxo.Properties.MinSpend][].

### Other Miscellaneous Properties

+  [Certs.Properties.VoteDelegsVDeleg][]: The set of `VDeleg`{.AgdaDatatype}s
   resulting from the application of
   `credVoter`{.AgdaInductiveConstructor} `DRep`{.AgdaInductiveConstructor} to the
   domain of the `voteDelegs`{.AgdaField} of a `DState`{.AgdaRecord} contains the
   range of the `voteDelegs`{.AgdaField} of that `DState`{.AgdaRecord}.

+  [Chain.Properties.EpochStep][]:
   If `cs`{.AgdaBound} `⇀⦇`{.AgdaDatatype} `b`{.AgdaBound} `,CHAIN⦈`{.AgdaDatatype} `cs'`{.AgdaBound} and
   if the enact states of `cs`{.AgdaBound} and `cs'`{.AgdaBound} differ, then the
   epoch of the slot of `b`{.AgdaBound} is the successor of the last epoch of `cs`{.AgdaBound}.

+  [Epoch.Properties.ConstRwds][]: The `NEWEPOCH`{.AgdaOperator} rule leaves rewards unchanged.

+  [Epoch.Properties.NoPropSameDReps][]:
   If `es`{.AgdaBound} is a `NewEpochState`{.AgdaRecord}, and if the
   `GovState`{.AgdaFunction} of `es`{.AgdaBound} contains no governance proposals,
   then the set of `activeDReps`{.AgdaField} of `es`{.AgdaBound} in
   `Epoch`{.AgdaDatatype} `e`{.AgdaBound} is equal to the set of
   `activeDReps`{.AgdaField} of `es` in the next epoch.

+  [Gov.Properties.ChangePPGroup][]: `PParam`{.AgdaRecord} updates have non-empty groups.
