---
source_path: build-tools/static/md/mkdocs/docs/Definitions.md
---

# Definitions {#sec:definitions}

To keep this site somewhat self-contained, we define some technical
terms that arise when defining and describing the Cardano blockchain and ledger.
This is not meant to be comprehensive and the reader may wish to consult
online resources to fill in any gaps. Here are a few such resources that
might be helpful.

-  <https://docs.cardano.org/>;

-  <https://cardano.org/docs/glossary#cardano-glossary>;

-  <https://www.ledger.com/academy/glossary>;

-  <https://www.essentialcardano.io/glossary>;

-  [(Re)introduction to Cardano][], by Eduardo Garrido and the Cardano community;

-  [Ouroboros Chronos blog post][], by Olga Hryniuk;

-  [Cardano Staking: How To Stake ADA][].

---

## Cardano Time Handling {#sec:cardano-time-handling}

For more details, see the [Time handling on Cardano][] section of <https://docs.cardano.org>.

In Cardano, the Ouroboros proof-of-stake (PoS) consensus protocol models
the passage of physical time as an infinite sequence of time slots and
epochs.

-   The actual time interval between blocks, or *block time*, is the
    slot length (in seconds) divided by the block coefficient f, which
    is the expected block frequency (blocks per second). For example, if
    f is 0.05, then on average 5% of slots contain blocks. If the slot
    length is 1 second, then the block time is 20 seconds.

-   An *epoch* is a period of time, containing some number of slots,
    used to select block-producing nodes. For example, in Shelley and
    later eras, an epoch consists of roughly 432,000 slots (or five days
    if we assume a slot length of 1 second).

-   The *genesis block* of Cardano was created on the 23rd of
    September 2017. As the first block in the blockchain, it set the
    foundation for the network, it does not reference any previous
    blocks, and it generated the initial supply of Ada.

-   A *slot* is a discrete time interval in which a single block may be
    produced; it is the fundamental time unit within the blockchain's
    consensus protocol. Slots should be long enough for a new block to
    have a good chance to reach the next slot leader in time. For
    example, the slot length in the Byron era was 20 seconds, while in
    Shelley and later eras it is 1 second. Not every slot results in a
    new block. Indeed, in any given slot, one or more block-producing
    nodes are nominated (probabilistically based on stake distribution)
    to be *slot leaders* and given the opportunity to produce a new
    block. For example, in Shelley and later eras, on average only 0.05
    of slots will produce a block (resulting in 20-second intervals
    between blocks). *Slot number* may refer to a slot's position within
    the current epoch or it may mean the absolute slot count since the
    genesis block. The context should make clear which meaning is
    intended.

The parameter values mentioned in the examples above,

-   block time = 20 seconds,

-   slot length = 1 second,

-   block coefficient = 0.05,

-   slots/epoch = 432,000,

are unlikely to change in the short-term. However, the longer term plan
is to replace the current Ouroboros protocol with Ouroboros Chronos,
which addresses timekeeping challenges by providing the first
high-resilience cryptographic time source based on blockchain technology
(see the [Ouroboros Chronos blog post][]).

---

## Scripts in Cardano

Cardano uses *scripts* to express authorization conditions that are richer than a
single key signature.

At a high level, a script is a small program (or logical expression) that the ledger
can evaluate during transaction validation to decide whether some action is permitted.

In Cardano today, there are two main families of scripts:

+  **Native scripts** (a small, declarative language; used for things like *multisig*
   and *timelocks*).

   The Shelley ledger defines a "simple language" for multi-signature–style
   conditions. See the `Cardano.Ledger.Shelley.Scripts` module documentation and the
   ledger glossary entry for *Multisig*. [^1][^2]

+  **Plutus scripts** (smart contracts). Plutus V1 is described as the initial ledger
   language version, enabled at the Alonzo hard fork; later versions extend this.[^3]

These families coexist: the ledger can require key witnesses, native scripts, and/or
Plutus scripts depending on which *credentials* (key hashes vs script hashes) appear
in the transaction's inputs, withdrawals, certificates, minting policies, governance
actions, etc.


### Script purposes and witnessing

Ledger rules don't run "all scripts;" they run scripts for specific *purposes*
(sometimes called *script roles*).  For Plutus V1, for example, the documentation
describes purposes such as spending, minting, certifying, and rewarding, and explains
that the arguments a script receives depend on its purpose.[^3]

A transaction must normally *witness* the scripts it needs.

+  If a transaction spends an output protected by a script credential, the
   corresponding script must be available to validate that spend.
+  Similarly, if a transaction mints under a policy script hash, it must provide the
   policy script, etc.

"Witnessing" is the general idea that the transaction must make the needed scripts
available to the ledger at validation time (and supply any required redeemers/datums
depending on the era).


### Reference inputs (CIP-31)

**Reference inputs** are a special kind of transaction input introduced in [CIP-31][].

A reference input points to a UTxO entry *without consuming it*; it "looks at" an
existing output, but does not spend it.  [CIP-31][] summarizes this as allowing
access to information stored on-chain without the churn of spending and recreating
UTxOs.

Intuitively,

+  **Spending input** consumes the referenced output; its value contributes to
   balancing; spending conditions must be satisfied.
+  **Reference input** does *not* consume the output; its value does *not* contribute
   to balancing; the output is merely made available to be inspected during validation.

This is useful when a script needs to read some on-chain state (datum, value, script
hash) while leaving the referenced output untouched.


### Reference scripts (CIP-33)

**Reference scripts** are introduced in [CIP-33][] and are tightly coupled to
reference inputs.

[CIP-33][] extends transaction outputs so an output may *carry an actual script* (a
"reference script").  Then, instead of including the full script in every transaction
that needs it, a transaction can reference an output that already contains the
script.

In other words:

+  A *reference script* is a script stored inside an output.
+  A transaction can satisfy script witnessing requirements by referencing an output
   that contains the script, rather than providing the script bytes directly in the
   transaction.

This is mainly a scalability feature: it reduces transaction size when commonly used
scripts are shared via on-chain outputs.


### Referenced outputs vs reference-script outputs (terminology)

The phrase "reference output" is used informally in two different ways, so it helps
to be explicit:

1.  **Outputs referenced by reference inputs** ("referenced outputs"): these are the
    UTxO entries pointed to by a transaction's reference inputs ([CIP-31][]).
2.  **Outputs that carry a reference script** ("reference-script outputs"): these are
    outputs whose optional script field is populated ([CIP-33][]).

An output can be one, both, or neither.

+  An output can *carry* a reference script even if no transaction references it yet.
+  An output becomes *referenced* when some transaction includes it as a reference input.

(Agda/Haskell note: names like `referencedOuts` or `refInputOuts` will reduce ambiguity.)


### Reference scripts size limits (why ledger rules care)

Because reference scripts can be large, the ledger includes protocol parameters that
limit how much reference-script material a single transaction may rely on.  In
Conway-era rules, this appears as a premise comparing the *total size of reference
scripts available to that transaction* against a parameter such as
`maxRefScriptSizePerTx` (naming varies by formalization).

Conceptually, a "reference scripts size" check is about bounding the scripts that
become available via the *reference-script mechanism* ([CIP-33][]): scripts stored in
referenced outputs (and, depending on the era's exact definition/semantics,
sometimes also scripts available from spent outputs or the witness set).


### Batch scoping in the Dijkstra era (CIP-118)

The Dijkstra era (nested transactions / batches) introduces extra subtlety about
*which UTxO view* a subtransaction is allowed to inspect.  [CIP-118][] discusses
batch composition and validation, and (among other goals) aims to avoid dangerous
intra-batch interactions (e.g., creating temporary states that could confuse script
validation).  

When formalizing batch semantics, it is therefore important to document:

+  which inputs (spending vs reference) must come from the initial pre-batch
   snapshot, and
+  whether reference scripts/data may be sourced from outputs produced in the
   same batch.

Different choices here affect how we define "what scripts are available to a
transaction", and thus how we should interpret and enforce bounds like
`maxRefScriptSizePerTx`.


### Observe scripts (CIP-112)

[CIP-112][] proposes an additional Plutus script purpose (`Observe`; also called
"guard") whose intent is to decouple some validation logic from specific ledger
actions.

---


## Agda-facing Addendum: what is available to a transaction?

This addendum is meant to connect the ledger/CIP terminology (reference inputs,
reference scripts, etc.) to the *auxiliary functions* we use in the
`TransactionStructure` type, and to make explicit the exact UTxO helper that
parameterizes each helper function.


### Names we use and how they map to CIPs

**Reference inputs (CIP-31).**  
A transaction may include a set/collection `ReferenceInputsOf tx : ℙ TxIn` (name
varies by era/module).  These inputs *do not spend* UTxOs; they merely *point to*
UTxO entries that a transaction may inspect.

In our Agda code, the phrase "reference outputs" is often used informally to mean:

> the set of *outputs referenced by* `ReferenceInputsOf tx`.

To reduce ambiguity with "outputs that carry reference scripts" ([CIP-33][]), we
recommend using the phrase **referenced outputs** for the former.

**Reference scripts (CIP-33).**  
A `TxOut`{.AgdaDatatype} may carry an optional script field (often stored as a `Maybe
Script` or a `Maybe ScriptHash`, depending on how the model represents scripts).
[CIP-33][] calls such scripts stored inside outputs **reference scripts**. So,

+  a *reference input* is an input that points to an output ([CIP-31][]);
+  a *reference script* is a script living inside an output ([CIP-33][]);
+  a transaction can "see" a reference script by referencing the output that carries it.

### Core helper: resolving outputs from inputs

Given a UTxO map `utxo : UTxO` and a set of inputs `ins : ℙ TxIn`, we frequently use:

+  `utxo ∣ ins`     (UTxO restriction to the given inputs),
+  `range (utxo ∣ ins)` to obtain the corresponding outputs.

For reference inputs we typically define:

```agda
referencedOuts : Tx txLevel → UTxO → ℙ TxOut
referencedOuts tx utxo = range (utxo ∣ ReferenceInputsOf tx)
```


### Extracting scripts and datums from referenced outputs

We model the scripts/data become available from some set of outputs by mapping
partial projections over the set.  We have helpers,

+  `txOutToScript : TxOut → Maybe Script` (or equivalent)
+  `txOutToDatum  : TxOut → Maybe Datum`  (or equivalent)

which we use to define

```agda
referenceScripts : Tx txLevel → UTxO → ℙ Script
referenceScripts = mapPartial txOutToScript ∘₂ referencedOuts

referenceData : Tx txLevel → UTxO → ℙ Datum
referenceData = mapPartial txOutToDatum ∘₂ referencedOuts
```

This is how we formalize in Agda the scripts/datums available via
reference inputs ([CIP-31][]) and reference scripts ([CIP-33][]).


### Outputs of Spending Inputs ("spend outputs")

Spending inputs are resolved similarly, but from the spending-input selector:

```agda
spendOuts : Tx txLevel → UTxO → ℙ TxOut
spendOuts tx utxo = range (utxo ∣ SpendInputsOf tx)

spendScripts : Tx txLevel → UTxO → ℙ Script
spendScripts = mapPartial txOutToScript ∘₂ spendOut

spendData : Tx txLevel → UTxO → ℙ Datum
spendData = mapPartial txOutToDatum ∘₂ spendOut
```

This corresponds to the scripts/datums that are available because the transaction is
*consuming* script-locked outputs.


### Witness scripts/data (explicitly included in the transaction)

Witness sets (names vary) capture the scripts/datums provided directly by the
transaction:

```agda
witnessScripts : Tx txLevel → ℙ Script
witnessData    : Tx txLevel → ℙ Datum
```

These are "transaction-provided" scripts/datums, independent of any UTxO snapshot.


### Putting it together: scripts/data available to a transaction

For a given transaction `tx` and UTxO snapshot `utxo`, we define the *full
availability sets* as follows:

```agda
getTxScripts : Tx txLevel → UTxO → ℙ Script
getTxScripts tx utxo =  witnessScripts tx
                        ∪ spendScripts tx utxo
                        ∪ referenceScripts tx utxo
                        ∪ txOutScripts tx

getTxData : Tx txLevel → UTxO → ℙ Datum
getTxData tx utxo =  witnessData tx
                     ∪ spendData tx utxo
                     ∪ referenceData tx utxo
                     ∪ txOutData tx
```

**Interpretation.**
`getTxScripts tx utxo` is "the set of scripts that the ledger may use to resolve
script hashes while validating `tx`, given it is allowed to inspect `utxo` for its
inputs."


### Global scripts/data ("top-level batch helpers")

In Dijkstra, a top-level transaction `txTop` may contain a batch of subtransactions.
We compute a batch-scoped script pool and datum pool,

```agda
getAllScripts : TopLevelTx → UTxO → ℙ Script
getAllData    : TopLevelTx → UTxO → ℙ Datum
```

Typically:

```agda
getAllScripts txTop utxo =
  getTxScripts txTop utxo
  ∪ concatMapˢ (λ tx → getTxScripts tx utxo) (fromList (SubTransactionsOf txTop))

getAllData txTop utxo =
  getTxData txTop utxo
  ∪ concatMapˢ (λ tx → getTxData tx utxo) (fromList (SubTransactionsOf txTop))
```

**Interpretation.**
This is the "batch-scoped availability" view: a subtransaction may rely on
scripts/datums that are present anywhere in the batch (depending on the era's
intended semantics), rather than requiring each subtransaction to carry all its own
witness material.


### The key design choice: *which* UTxO snapshot is used?

Many of the above helpers take a parameter `utxo : UTxO`.  In the Dijkstra era we
must be explicit about *which* UTxO snapshot is used for each purpose:

+  **Pre-batch snapshot**: `utxo₀` (UTxO before any batch tx is applied).
+  **Batch output view**: `utxoView utxo₀ txTop` (often `utxo₀ ∪ batchOuts`, i.e.
   initial UTxO plus all outputs created by the batch).

The choice affects the meaning of `referenceScripts tx utxo` and `referenceData tx utxo`:

+  If we pass `utxo₀`, reference inputs can only point to pre-existing outputs.
+  If we pass `utxoView`, reference inputs may (depending on constraints) point to
   outputs created earlier in the batch (including possibly the transaction's own
   outputs if the view includes them).

[CIP-118][] discusses both batch-level sharing and restrictions intended to prevent
problematic intra-batch behavior; this is where the formalization must record the
adopted interpretation.


#### Current conservative assumption

If we adopt the conservative assumption,

> *reference inputs must come from the pre-batch snapshot `utxo₀`*

then we should consistently enforce:

+  `ReferenceInputsOf tx ⊆ dom utxo₀` for `txTop` and each `txSub`,
+  and compute `referenceScripts` / `referenceData` using `utxo₀` as the UTxO
   parameter.

This makes "inside-batch vs already in the UTxO" irrelevant *for reference inputs*,
because reference inputs cannot point to batch-created outputs.

#### Alternatives

If we *do* allow reference inputs to be checked against `utxoView`, then
`referenceScripts tx utxoView` may collect scripts from two conceptually different
sources:

1.  **Scripts from the initial UTxO** (`utxo₀`), i.e. already on-chain before the batch.
2.  **Scripts from outputs created in the batch** (`batchOuts`), i.e. introduced by transactions
    in the same batch.

In that case, it could be helpful to define these separately; e.g.,

```agda
referenceScripts₀ : Tx txLevel → UTxO → ℙ Script
referenceScripts₀ tx utxo₀ = referenceScripts tx utxo₀

referenceScriptsᵇ : Tx txLevel → UTxO → ℙ Script
referenceScriptsᵇ tx utxoView = referenceScripts tx utxoView ∖ referenceScripts tx utxo₀
```

This separation makes the formalization clearer and more future-proof when the origin
of "available reference scripts" is explicit.


### Size bounds: "reference scripts size" in the helpers

In Conway-era rules, `maxRefScriptSizePerTx` bounds the total size of reference
scripts available to a single transaction (as determined by the ledger's notion of
`refScripts`).  When porting this to Dijkstra, the most direct analogue is
**per-transaction**, using the same UTxO snapshot we allow reference inputs
to inspect:

```agda
refScriptsSize : Tx txLevel → UTxO → ℕ
refScriptsSize tx utxo =
  ∑ˡ[ s ← setToList (referenceScripts tx utxo) ] scriptSize s
```

Then, under the conservative assumption (`utxo = utxo₀`):

* In `UTXO`: `refScriptsSize txTop utxo₀ ≤ pp .maxRefScriptSizePerTx`
* In `SUBUTXO`: `refScriptsSize txSub utxo₀ ≤ pp .maxRefScriptSizePerTx`

If instead we adopt `utxoView` semantics, we must be explicit about whether the bound
applies to:

+  scripts referenced from `utxo₀` only,
+  scripts referenced from batch-created outputs only,
+  or the union (and if so, ensure the "origin split" above is clear and documented).

### Suggested naming conventions (to avoid ambiguity)

+  Prefer **`referencedOuts`** (or `refInputOuts`) over `referenceOut`.
+  Reserve "reference script" for the [CIP-33][] meaning: a script stored inside an output.
+  Use suffixes like `₀` / `ᵇ` when splitting "initial UTxO" vs "batch outputs".

These conventions make it easier to read our helper definitions and to spot
accidental mixing of UTxO snapshots when refactoring.

[^1]: https://cardano-ledger.cardano.intersectmbo.org/cardano-ledger-shelley/Cardano-Ledger-Shelley-Scripts.html
[^2]: https://cardano-ledger.readthedocs.io/en/latest/explanations/glossary.html
[^3]: https://plutus.cardano.intersectmbo.org/docs/working-with-scripts/ledger-language-version
