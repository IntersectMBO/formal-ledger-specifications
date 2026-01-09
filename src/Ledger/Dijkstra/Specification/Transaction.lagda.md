---
source_branch: master
source_path: src/Ledger/Dijkstra/Specification/Transaction.lagda.md
---

# Transactions {#sec:transactions}

A transaction in Dijkstra is very similar to a transaction in Conway
except that now, as described in CIP 0118[^1], it may include

+  other (sub)transactions as part of its body;
+  _guard_ scripts.

<!--
```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Dijkstra.Specification.Gov.Base

import Ledger.Core.Specification.Address renaming (RewardAddress to RewardAddress)
import Ledger.Dijkstra.Specification.Certs
import Ledger.Dijkstra.Specification.Gov.Actions
import Ledger.Dijkstra.Specification.PParams
import Ledger.Dijkstra.Specification.Script
import Ledger.Dijkstra.Specification.TokenAlgebra.Base

open import Tactic.Derive.DecEq
open import Relation.Nullary.Decidable using (⌊_⌋)
```
-->

## Transaction Levels {#sec:transaction-levels}

To differentiate between the two types of transactions (i.e. top-level
and sub-level), we define the type of transaction level.

```agda
data TxLevel : Type where
  TxLevelTop TxLevelSub : TxLevel
```

This type will be used, among other purposes, to provide a concise
definition of the types of top-level and sub transactions in the [Transaction Structure][]
section below.

Transactions cannot be arbitrarily nested. That is, a transaction (henceforth refered
as top-level transaction) can include subtransactions, but these cannot include
other subtransactions.  This will manifest in the types of transactions defined
below by constraining which fields are present in each level of transaction.
Specifically, only top-level transactions can include subtransactions
(the `txSubTransactions`{.AgdaField} field) and only sub-level transactions
can include required top-level guards (the `txRequiredTopLevelGuards`{.AgdaField} field).

To that end, we define two auxiliary functions that will aid in
specifying which record fields of a transaction body are present at
each `TxLevel`{.AgdaDatatype}:

```agda
InTopLevel : TxLevel → Type → Type
InTopLevel TxLevelTop X = X
InTopLevel TxLevelSub _ = ⊤

InSubLevel : TxLevel → Type → Type
InSubLevel TxLevelSub X = X
InSubLevel TxLevelTop _ = ⊤
```

These functions discriminate on an argument of type
`TxLevel`{.AgdaDatatype} and either act as the identity function on types
or as the constant function that returns the unit type.

<!--
```agda
unquoteDecl DecEq-TxLevel = derive-DecEq ((quote TxLevel , DecEq-TxLevel) ∷ [])

private
  variable
    txLevel : TxLevel

data Tag : TxLevel → Type where
  Spend Mint Cert Reward Vote Propose Guard : Tag txLevel
  SubGuard : Tag TxLevelSub

unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])
```
-->

## Transaction Structure {#sec:transaction-structure}

```agda
record TransactionStructure : Type₁ where
  field
    Ix TxId AuxiliaryData  : Type
    adHashingScheme        : isHashableSet AuxiliaryData
    globalConstants        : GlobalConstants
    crypto                 : CryptoStructure
    epochStructure         : EpochStructure
```
<!--
```agda
    ⦃ DecEq-Ix   ⦄ : DecEq Ix
    ⦃ DecEq-TxId ⦄ : DecEq TxId
  open isHashableSet adHashingScheme renaming (THash to ADHash) public
  open GlobalConstants globalConstants public
  open CryptoStructure crypto public
  open Ledger.Dijkstra.Specification.TokenAlgebra.Base ScriptHash public
  open Ledger.Core.Specification.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public
  open EpochStructure epochStructure public
  open Ledger.Dijkstra.Specification.Script crypto epochStructure public
  field
```
-->
```agda
    scriptStructure        : ScriptStructure
```
<!--
```agda
  open ScriptStructure scriptStructure public
  open Ledger.Dijkstra.Specification.PParams crypto epochStructure scriptStructure public
  field
```
-->
```agda
    govParams              : GovParams
    tokenAlgebra           : TokenAlgebra
    txidBytes              : TxId → Ser
```
<!--
```agda
  open GovParams govParams public
  open TokenAlgebra tokenAlgebra public
```
-->
```agda
  govStructure : GovStructure
  govStructure = record
    -- TODO: figure out what to do with the hash
    { TxId = TxId; DocHash = ADHash
    ; cryptoStructure = crypto
    ; epochStructure = epochStructure
    ; scriptStructure = scriptStructure
    ; govParams = govParams
    ; globalConstants = globalConstants
    }
```
<!--
```agda
  module GovernanceActions = Ledger.Dijkstra.Specification.Gov.Actions govStructure
  open GovernanceActions hiding (Vote; yes; no; abstain) public

  open import Ledger.Dijkstra.Specification.Certs govStructure
```
-->
```agda
  TxIn : Type
  TxIn = TxId × Ix

  TxOut : Type
  TxOut = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script

  UTxO : Type
  UTxO = TxIn ⇀ TxOut

  RedeemerPtr : TxLevel → Type
  RedeemerPtr txLevel  = Tag txLevel × Ix

  ProposedPPUpdates : Type
  ProposedPPUpdates = KeyHash ⇀ PParamsUpdate

  Update : Type
  Update = ProposedPPUpdates × Epoch

  record HasUTxO {a} (A : Type a) : Type a where
    field UTxOOf : A → UTxO
  open HasUTxO ⦃...⦄ public
```

## The Main Transaction Types

Transactions are represented as three mutually recursive record types that are
parameterised by a value of type `TxLevel`{.agdatype}.

The fields that depend on the transaction level use the auxiliary functions
`InTopLevel` and `InSubLevel` defined in the section on [Transaction Levels][].

Of particular note in the Dijkstra era are

+  `collateralInputs`{.AgdaField}: only present in top-level transactions,
   this field contains the collateral inputs provided to cover script execution
   costs in case of script failure;

+  `txFee`{.AgdaField}: only present in top-level transactions,
   this field contains the fee paid for processing the transaction;

+  `txSubTransactions`{.AgdaField}: only present in top-level transactions,
   this field contains a list of sub-transactions included in the top-level
   transaction;

+  `txGuards`{.AgdaField}: only present in top-level transactions,
   this field collects the guard scripts (credentials) required by this transaction;

+  `txRequiredTopLevelGuards`{.AgdaField}: only present in sub-level transactions,
   this field collects the top-level guards required by a subtransaction.

```agda
  mutual
    record Tx (txLevel : TxLevel) : Type where
      inductive
      field
        txBody       : TxBody txLevel
        txWitnesses  : TxWitnesses txLevel
        isValid      : InTopLevel txLevel Bool
        txAuxData    : Maybe AuxiliaryData

    record TxBody (txLevel : TxLevel) : Type where
      inductive
      field
        txIns                : ℙ TxIn
        refInputs            : ℙ TxIn
        collateralInputs     : InTopLevel txLevel (ℙ TxIn)
        txOuts               : Ix ⇀ TxOut
        txId                 : TxId
        txCerts              : List DCert
        txFee                : InTopLevel txLevel Fees
        txWithdrawals        : Withdrawals
        txVldt               : Maybe Slot × Maybe Slot
        txADhash             : Maybe ADHash
        txDonation           : Donations
        txGovVotes           : List GovVote
        txGovProposals       : List GovProposal
        txNetworkId          : Maybe Network
        currentTreasury      : Maybe Coin
        mint                 : Value
        scriptIntegrityHash  : Maybe ScriptHash

        -- New in Dijkstra --
        txSubTransactions         : InTopLevel txLevel (List (Tx TxLevelSub))
        txGuards                  : ℙ Credential
        txRequiredTopLevelGuards  : InSubLevel txLevel (ℙ (Credential × Maybe Datum))
        ---------------------

      reqSignerHashes : ℙ KeyHash
      reqSignerHashes = mapPartial isKeyHashObj txGuards


    record TxWitnesses (txLevel : TxLevel) : Type where
      inductive
      field
        vKeySigs     : VKey ⇀ Sig
        scripts      : ℙ Script
        txData       : DataHash ⇀ Datum
        txRedeemers  : RedeemerPtr txLevel ⇀ Redeemer × ExUnits

      scriptsP1 : ℙ P1Script
      scriptsP1 = mapPartial isInj₁ scripts
```

Using these types, we define the types of top-level and sub
transaction as follows:

```agda
  TopLevelTx : Type
  TopLevelTx = Tx TxLevelTop

  SubLevelTx : Type
  SubLevelTx = Tx TxLevelSub
```

In addition, we define the type of transactions in which its level
could be either of them.

```agda
  AnyLevelTx : Type
  AnyLevelTx = TopLevelTx ⊎ SubLevelTx
```

<!--
```agda
  record HasTxBody {txLevel} {a} (A : Type a) : Type a where
    field TxBodyOf : A → TxBody txLevel
  open HasTxBody  ⦃...⦄ public

  record HasTxId    {a} (A : Type a) : Type a where
    field TxIdOf    : A → TxId
  open HasTxId    ⦃...⦄ public

  record HasSpendInputs {a} (A : Type a) : Type a where
    field SpendInputsOf : A → ℙ TxIn
  open HasSpendInputs ⦃...⦄ public

  record HasReferenceInputs {a} (A : Type a) : Type a where
    field ReferenceInputsOf : A → ℙ TxIn
  open HasReferenceInputs ⦃...⦄ public

  record HasFees? {a} (A : Type a) : Type a where
    field FeesOf? : A → Maybe Fees
  open HasFees? ⦃...⦄ public

  record HasDCerts {a} (A : Type a) : Type a where
    field DCertsOf : A → List DCert
  open HasDCerts ⦃...⦄ public

  record HasData {a} (A : Type a) : Type a where
    field DataOf : A → ℙ Datum
  open HasData ⦃...⦄ public

  record HasTxWitnesses {txLevel} {a} (A : Type a) : Type a where
    field TxWitnessesOf : A → TxWitnesses txLevel
  open HasTxWitnesses ⦃...⦄ public

  record HasValue {a} (A : Type a) : Type a where
    field ValueOf : A → Value
  open HasValue ⦃...⦄ public

  record HasSubTransactions {txLevel} {a} (A : Type a) : Type a where
    field SubTransactionsOf : A → InTopLevel txLevel (List (Tx TxLevelSub))
  open HasSubTransactions ⦃...⦄ public

  record HasSpendInputs {a} (A : Type a) : Type a where
    field SpendInputsOf : A → ℙ TxIn
  open HasSpendInputs ⦃...⦄ public

  record HasReferenceInputs {a} (A : Type a) : Type a where
    field ReferenceInputsOf : A → ℙ TxIn
  open HasReferenceInputs ⦃...⦄ public

  record HasGovProposals {a} (A : Type a) : Type a where
    field GovProposalsOf : A → List GovProposal
  open HasGovProposals ⦃...⦄ public

  record HasGovVotes {a} (A : Type a) : Type a where
    field GovVotesOf : A → List GovVote
  open HasGovVotes ⦃...⦄ public

  instance
    HasTxBody-Tx : HasTxBody (Tx txLevel)
    HasTxBody-Tx .TxBodyOf = Tx.txBody

    HasTxWitnesses-Tx : HasTxWitnesses (Tx txLevel)
    HasTxWitnesses-Tx .TxWitnessesOf = Tx.txWitnesses

    HasDCerts-TxBody : HasDCerts (TxBody txLevel)
    HasDCerts-TxBody .DCertsOf = TxBody.txCerts

    HasWithdrawals-TxBody : HasWithdrawals (TxBody txLevel)
    HasWithdrawals-TxBody .WithdrawalsOf = TxBody.txWithdrawals

    HasWithdrawals-Tx : HasWithdrawals (Tx txLevel)
    HasWithdrawals-Tx .WithdrawalsOf = WithdrawalsOf ∘ TxBodyOf

    HasSpendInputs-TxBody : HasSpendInputs (TxBody txLevel)
    HasSpendInputs-TxBody .SpendInputsOf = TxBody.txIns

    HasSpendInputs-Tx : HasSpendInputs (Tx txLevel)
    HasSpendInputs-Tx .SpendInputsOf = SpendInputsOf ∘ TxBodyOf

    HasReferenceInputs-TxBody : HasReferenceInputs (TxBody txLevel)
    HasReferenceInputs-TxBody .ReferenceInputsOf = TxBody.refInputs

    HasReferenceInputs-Tx : HasReferenceInputs (Tx txLevel)
    HasReferenceInputs-Tx .ReferenceInputsOf = ReferenceInputsOf ∘ TxBodyOf

    HasValue-TxBody : HasValue (TxBody txLevel)
    HasValue-TxBody .ValueOf = TxBody.mint

    HasGovVotes-TxBody : HasGovVotes (TxBody txLevel)
    HasGovVotes-TxBody .GovVotesOf = TxBody.txGovVotes

    HasGovVotes-Tx : HasGovVotes (Tx txLevel)
    HasGovVotes-Tx .GovVotesOf = GovVotesOf ∘ TxBodyOf

    HasGovProposals-TxBody : HasGovProposals (TxBody txLevel)
    HasGovProposals-TxBody .GovProposalsOf = TxBody.txGovProposals

    HasGovProposals-Tx : HasGovProposals (Tx txLevel)
    HasGovProposals-Tx .GovProposalsOf = GovProposalsOf ∘ TxBodyOf

    HasFees?-TxBody : {ℓ : TxLevel} → HasFees? (TxBody ℓ)
    HasFees?-TxBody {TxLevelTop} .FeesOf? tbTop = just (TxBody.txFee tbTop)
    HasFees?-TxBody {TxLevelSub} .FeesOf? tbSub = nothing

    HasFees?-Tx : HasFees? (Tx txLevel)
    HasFees?-Tx .FeesOf? = FeesOf? ∘ TxBodyOf

    HasSubTransactions-TopLevelTx : HasSubTransactions TopLevelTx
    HasSubTransactions-TopLevelTx .SubTransactionsOf = TxBody.txSubTransactions ∘ TxBodyOf

    HasSpendInputs-TxBody : HasSpendInputs (TxBody txLevel)
    HasSpendInputs-TxBody .SpendInputsOf = TxBody.txIns

    HasSpendInputs-Tx : HasSpendInputs (Tx txLevel)
    HasSpendInputs-Tx .SpendInputsOf = SpendInputsOf ∘ TxBodyOf

    HasReferenceInputs-TxBody : HasReferenceInputs (TxBody txLevel)
    HasReferenceInputs-TxBody .ReferenceInputsOf = TxBody.refInputs

    HasReferenceInputs-Tx : HasReferenceInputs (Tx txLevel)
    HasReferenceInputs-Tx .ReferenceInputsOf = ReferenceInputsOf ∘ TxBodyOf

    HasTxId-Tx : HasTxId (Tx txLevel)
    HasTxId-Tx .TxIdOf = TxBody.txId ∘ TxBodyOf

    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂

    HasData-TxWitnesses : HasData (TxWitnesses txLevel)
    HasData-TxWitnesses .DataOf = range ∘ TxWitnesses.txData

    HasData-Tx : HasData (Tx txLevel)
    HasData-Tx .DataOf = DataOf ∘ TxWitnessesOf
```
-->

### Auxiliary Functions for Transaction Structures

This section collects some unimportant but useful helper and accessor functions.

```agda
  getValue : TxOut → Value
  getValue (_ , v , _) = v

  TxOutʰ : Type
  TxOutʰ = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe ScriptHash

  txOutHash : TxOut → TxOutʰ
  txOutHash (a , v , d , s) = a , (v , (d , M.map hash s))

  getValueʰ : TxOutʰ → Value
  getValueʰ (_ , v , _) = v

  txinsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txinsVKey txins utxo = txins ∩ dom (utxo ∣^' (isVKeyAddr ∘ proj₁))

  scriptOuts : UTxO → UTxO
  scriptOuts utxo = filter (λ (_ , addr , _) → isScriptAddr addr) utxo

  txinsScript : ℙ TxIn → UTxO → ℙ TxIn
  txinsScript txins utxo = txins ∩ dom (proj₁ (scriptOuts utxo))
```

In the Dijkstra era, *spending* inputs must exist in the initial UTxO snapshot, while
*reference* inputs may see earlier outputs, so we need two UTxO views:

+ `utxoSpend₀`{.AgdaBound}, the initial snapshot, used for `txIns`{.AgdaField},
+ `utxoRefView`{.AgdaBound}, the evolving view, used for `refInputs`{.AgdaField}.

Thus functions like `refScripts`{.AgdaFunction}, `txscripts`{.AgdaFunction},
and `lookupScriptHash`{.AgdaFunction} (defined below) will take *two* UTxO arguments.

```agda
  refScripts : Tx txLevel → UTxO → UTxO → List Script
  refScripts tx utxoSpend₀ utxoRefView =
    mapMaybe (proj₂ ∘ proj₂ ∘ proj₂) ( setToList (range (utxoSpend₀ ∣ txIns))
                                       ++ setToList (range (utxoRefView ∣ refInputs))
                                     )
    where open Tx tx; open TxBody (TxBodyOf tx)

  txscripts : Tx txLevel → UTxO → UTxO → ℙ Script
  txscripts tx utxoSpend₀ utxoRefView =
    scripts (tx .txWitnesses) ∪ fromList (refScripts tx utxoSpend₀ utxoRefView)
    where open Tx; open TxWitnesses

  lookupScriptHash : ScriptHash → Tx txLevel → UTxO → UTxO → Maybe Script
  lookupScriptHash sh tx utxoSpend₀ utxoRefView =
    if sh ∈ mapˢ proj₁ (m ˢ) then just (lookupᵐ m sh) else nothing
    where m = setToMap (mapˢ < hash , id > (txscripts tx utxoSpend₀ utxoRefView))

  -- TODO: implement the actual evolving `utxoRefView` (issue #1006)

  getSubTxScripts : SubLevelTx → ℙ (TxId × ScriptHash)
  getSubTxScripts subtx = mapˢ (λ hash → (TxIdOf subtx , hash)) (ScriptHashes subtx)
    where
    ScriptHashes : Tx TxLevelSub → ℙ ScriptHash
    ScriptHashes tx =                                   -- `txRequiredTopLevelGuards`
      mapPartial (isScriptObj ∘ proj₁)                  -- has key creds too, but only
        (TxBody.txRequiredTopLevelGuards (TxBodyOf tx)) -- `ScriptObj hash` contributes
                                                        -- a phase-2 script hash.

  getTxScripts : {ℓ : TxLevel} → Tx ℓ → ℙ (TxId × ScriptHash)
  getTxScripts {TxLevelSub} = getSubTxScripts
  getTxScripts {TxLevelTop} =
    concatMapˢ getSubTxScripts ∘ fromList ∘ TxBody.txSubTransactions ∘ TxBodyOf
```

CIP-0118 models "required top-level guards" as a list of requirements coming
from subtransaction bodies. The list can contain duplicates, and later logic
needs to run each distinct guard credential once while still providing it with
all arguments (and knowing which subtransaction required them).

Because they are new and their meaning may be slightly less obvious than that of the
functions defined above, we'll provide a one-line description for each of the
remaining helper functions of this section.

+  `TaggedTopLevelGuard`{.AgdaDatatype} is the type of "tagged"
   top-level guards (tagged by the id of the subtransaction requiring it);
   an inhabitant of `TaggedTopLevelGuard`{.AgdaDatatype} represents a guard as
   a triple comprised of *subtransaction id*, *guard credential*, and *optional datum
   argument*; *the subtransaction id should be that of the subtransaction requiring
   the guard*.

+  `GroupedTopLevelGuards`{.AgdaDatatype} is the type of lists of guard groups,
   grouped by credential; each element of such a list is a guard credential paired
   with a list of all subtransaction ids and optional datum arguments requiring that
   the guard with that credential. (We use a simple association list for now to avoid
   committing to a particular Map interface.)

+  `groupTopLevelGuards`{.AgdaFunction}: a function that takes a list of tagged
   top-level guards and groups them into `GroupedTopLevelGuards`{.AgdaDatatype} by
   folding an insertion function over the list.

+  `subTxTopLevelGuards`{.AgdaFunction}: a function that takes a
   subtransaction and produces a set of tagged top-level guards required by that
   subtransaction, by mapping over its `txRequiredTopLevelGuards` field and attaching
   the subtransaction's id to each guard.  (We attach the id of the subTx requiring
   the guard so later execution logic can attribute arguments to the right
   subtransaction.)

```agda
  TaggedTopLevelGuard : Type
  TaggedTopLevelGuard = TxId × Credential × Maybe Datum
                     -- (subTxId, guard credential, optional datum argument)

  GroupedTopLevelGuards : Type
  GroupedTopLevelGuards = List (Credential × List (TxId × Maybe Datum))

  groupTopLevelGuards : List TaggedTopLevelGuard → GroupedTopLevelGuards
  groupTopLevelGuards = foldr insertGuard []
    where
    -- Insert one tagged guard into an existing group:
    --   + if the credential already has a group, cons (subTxId, datum?) onto its list
    --   + otherwise create a new group for that credential.
    insertGuard : TaggedTopLevelGuard → GroupedTopLevelGuards → GroupedTopLevelGuards
    insertGuard (tid , cred , md) [] = (cred , (tid , md) ∷ []) ∷ []
    insertGuard (tid , cred , md) ((c , xs) ∷ rest) with c ≟ cred
    ... | yes _ = (c , (tid , md) ∷ xs) ∷ rest
    ... | no  _ = (c , xs) ∷ insertGuard (tid , cred , md) rest

  subTxTaggedGuards : SubLevelTx → ℙ TaggedTopLevelGuard
  subTxTaggedGuards subtx =
    mapˢ (λ (cred , md) → (TxIdOf subtx , cred , md))
      (TxBody.txRequiredTopLevelGuards (TxBodyOf subtx))

  -- Turn a subTx body's `txRequiredTopLevelGuards` into a set of guard credentials.
  subTxGuardCredentials : SubLevelTx → ℙ Credential
  subTxGuardCredentials = (mapˢ proj₁) ∘ (TxBody.txRequiredTopLevelGuards ∘ TxBodyOf)

  -- Phase-1 condition (CIP-0118):
  -- every credential required by a subTx body must appear in the top-level txGuards set.
  requiredTopLevelGuardsSatisfied : TopLevelTx → List SubLevelTx → Type
  requiredTopLevelGuardsSatisfied topTx subTxs = requiredCreds ⊆ TxBody.txGuards (TxBodyOf topTx)
    where
    concatMapˡ : {A B : Type} → (A → ℙ B) → List A → ℙ B
    concatMapˡ f as = proj₁ $ unions (fromList (map f as))
    -- (maybe move concatMapˡ to src-lib-exts or agda-sets)

    requiredCreds : ℙ Credential
    requiredCreds = concatMapˡ subTxGuardCredentials subTxs
```

## Changes to Transaction Validity

As discussed in [Ledger.Conway.Specification.Properties][], transaction validity is
tricky, and this remains true in the Dijkstra era.

The Dijkstra era introduces *nested transactions* (a single top-level transaction
that contains a list of sub-transactions) and *guards* (CIP-0112 / CIP-0118).  As a
result, several checks that were "per-transaction" in Conway become *batch-aware*.

**Design Note** (CIP-0118: spending inputs vs reference inputs).
For Dijkstra batches, we distinguish *spending inputs* from *reference inputs*.
All spending inputs across the whole batch must exist in the initial UTxO snapshot
(mempool safety).  Reference inputs may additionally point to outputs of **preceding
subtransactions in the batch order**.  Therefore reference-script/datum lookup is
performed against an *evolving, tentative UTxO view* (prefix-applied), used only for
lookup/validation, while *ledger state is committed only if the full batch succeeds*.

### Key points

1.  **No further nesting**

    Sub-transactions must not contain sub-transactions; only a
    top-level transaction may carry a list of sub-transactions.

2.  **Collateral is top-level only and mandatory**

    Sub-transactions do not carry
    collateral inputs.  A top-level transaction must provide sufficient collateral
    for all scripts that are run as part of validating all transactions in that
    batch.  If any script in the batch fails, then the collateral is collected and
    none of the transactions in the batch is applied.

3.  **Batch-wide phase-2 evaluation**

    Phase-2 (Plutus) validation is performed *once* for the whole batch (mempool
    safety), even though script inputs/contexts are constructed from both sub- and
    top-level components.

4.  **Guards are credentials**

    A transaction body may specify *guards* as a set of *credentials* (key or
    script).  This is distinct from the legacy "required signer" key hashes used for
    phase-1 key-witness checking and native/timelock scripts.

5.  **Required top-level guards are requests**

    Sub-transaction bodies may include a list of "required top-level guard" requests
    (credential plus optional datum).  Ledger phase-1 checks must ensure that the
    top-level `guards` includes all credentials required by sub-transactions before
    any of the batch transactions are applied.

6.  **The batch must be balanced**

    Preservation of value (POV) must hold.  The updated `produced` and `consumed`
    calculations sum up the appropriate quantities not for individual transactions,
    but for the entire batch, which includes the top-level transaction and all its
    sub-transactions.

7.  **Fees / preservation-of-value may become batch-wide**

    Several accounting checks (e.g. min-fee, preservation of value) are expected to
    be defined over the full batch rather than per sub-transaction.  The definitive
    statement lives in the Dijkstra UTxO transition once introduced.  (At present,
    Dijkstra keeps `txFee` on the top-level body.)

8.  **Size bounds apply to the whole batch**

    The size of the top-level transaction (including all its sub-transactions)
    must be less than `maxTxSize`{.AgdaField}.  This constraint is necessary to
    ensure efficient network operation and preserve performance.

9.  **Scripts/data availability is batch-scoped**

    The witness set (scripts, redeemers, datums) is considered at the level of the
    whole top-level transaction/batch.  (The exact constraints on what may be
    referenced are defined by the UTxO rules.)


[^1]:  See CIP 0118; once finalized and merged, CIP 0118 will appear in the
       main branch of [the CIP repository][CIPs]; until then, it can be found
       at <https://github.com/polinavino/CIPs/tree/polina/CIP0118/CIP-0118>.
