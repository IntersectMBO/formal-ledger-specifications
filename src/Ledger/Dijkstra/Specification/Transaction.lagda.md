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
each `TxLevel`{.agdatype}:

```agda
InTopLevel : TxLevel → Type → Type
InTopLevel TxLevelTop X = X
InTopLevel TxLevelSub _ = ⊤

InSubLevel : TxLevel → Type → Type
InSubLevel TxLevelSub X = X
InSubLevel TxLevelTop _ = ⊤
```

These functions discriminate on an argument of type
`TxLevel`{.agdatype} and either act as the identity function on types
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
        txRequiredTopLevelGuards  : InSubLevel txLevel (ScriptHash ⇀ Datum)
                                                     -- ^ TODO (CIP-0118): change to ℙ (Credential × Maybe Datum)
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

    HasTxId-Tx : HasTxId (Tx txLevel)
    HasTxId-Tx .TxIdOf = TxBody.txId ∘ TxBodyOf

    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂

    HasData-TxWitnesses : HasData (TxWitnesses txLevel)
    HasData-TxWitnesses .DataOf = range ∘ TxWitnesses.txData

    HasData-Tx : HasData (Tx txLevel)
    HasData-Tx .DataOf = DataOf ∘ TxWitnessesOf

  getValue : TxOut → Value
  getValue (_ , v , _) = v

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

  refScripts : Tx txLevel → UTxO → List Script
  refScripts tx utxo =
    mapMaybe (proj₂ ∘ proj₂ ∘ proj₂) $ setToList (range (utxo ∣ (txIns ∪ refInputs)))
    where open Tx; open TxBody (TxBodyOf tx)

  txscripts : Tx txLevel → UTxO → ℙ Script
  txscripts tx utxo = scripts (tx .txWitnesses) ∪ fromList (refScripts tx utxo)
    where open Tx; open TxWitnesses

  lookupScriptHash : ScriptHash → Tx txLevel → UTxO → Maybe Script
  lookupScriptHash sh tx utxo =
    if sh ∈ mapˢ proj₁ (m ˢ) then
      just (lookupᵐ m sh)
    else
      nothing
    where m = setToMap (mapˢ < hash , id > (txscripts tx utxo))

  getSubTxScripts : SubLevelTx → ℙ (TxId × ScriptHash)
  getSubTxScripts subtx = mapˢ (λ hash → (TxIdOf subtx , hash)) (ScriptHashes subtx)
    where
    ScriptHashes : Tx TxLevelSub → ℙ ScriptHash
    -- ScriptHashes = dom ∘ TxBody.txRequiredTopLevelGuards ∘ TxBodyOf
    ScriptHashes tx = fromList (mapMaybe (isScriptObj ∘ proj₁) (TxBody.txRequiredTopLevelGuards (TxBodyOf tx)))
    -- `txRequiredTopLevelGuards` has key creds too, but only `ScriptObj hash` contributes a phase-2 script hash.

  getTxScripts : {ℓ : TxLevel} → Tx ℓ → ℙ (TxId × ScriptHash)
  getTxScripts {TxLevelSub} = getSubTxScripts
  getTxScripts {TxLevelTop} =
    concatMapˢ getSubTxScripts ∘ fromList ∘ TxBody.txSubTransactions ∘ TxBodyOf

  -- groupRequiredTopLevelGuards --
  -- CIP-0118 models "required top-level guards" as a list of requests coming from subTx bodies.
  -- The list can contain duplicates, and later logic needs to run each distinct guard credential
  -- once while still providing it with all arguments (and knowing which subTx requested them).
  -- The groupRequiredTopLevelGuards helper groups those per-subTx requests by credential.

  -- A single "required top-level guard" request, including the requesting subTx id.
  RequiredTopLevelGuardRequest : Type
  RequiredTopLevelGuardRequest = TxId × Credential × Maybe Datum
                             -- (subTxId, guard credential, optional datum argument)


  -- Grouped guard requests keyed by guard credential.
  -- Each credential maps to the list of (requesting subTx id, optional datum) pairs.
  -- We use an association list for now to avoid committing to a particular Map interface.
  GroupedRequests : Type
  GroupedRequests = List (Credential × List (TxId × Maybe Datum))

  -- Group a list of requests by credential (folding insertRequest over the list).
  -- Duplicates are preserved as multiple (subTxId, datum?) entries under the same credential.
  groupRequiredTopLevelGuards : List RequiredTopLevelGuardRequest → GroupedRequests
  groupRequiredTopLevelGuards = foldr insertRequest []
    where
    -- Insert one request into an existing grouping:
    --   + if the credential already has an entry, cons (subTxId, datum?) onto its list
    --   + otherwise create a new entry for that credential.
    insertRequest : RequiredTopLevelGuardRequest → GroupedRequests → GroupedRequests
    insertRequest (tid , cred , md) [] = (cred , (tid , md) ∷ []) ∷ []
    insertRequest (tid , cred , md) ((c , xs) ∷ rest) with c ≟ cred
    ... | yes _ = (c , (tid , md) ∷ xs) ∷ rest
    ... | no  _ = (c , xs) ∷ insertRequest (tid , cred , md) rest

  -- Turn a subTx body's `txRequiredTopLevelGuards` into explicit top-level guard requests.
  -- We attach the requesting subTx id so later grouping/execution can attribute arguments to the right subTx.
  subTxRequiredTopLevelGuardRequests : SubLevelTx → ℙ RequiredTopLevelGuardRequest
  subTxRequiredTopLevelGuardRequests subtx =
    mapˢ (λ (cred , md) → (TxIdOf subtx , cred , md))
      (TxBody.txRequiredTopLevelGuards (TxBodyOf subtx))
```
-->

## Changes to Transaction Validity

As discussed in [Ledger.Conway.Specification.Properties][], transaction validity is
tricky, and this is as true in the Dijkstra era as it was in Conway, if not moreso.

Here are some key points about transaction validity in the Dijkstra era.



## Changes to Transaction Validity

As discussed in [Ledger.Conway.Specification.Properties][], transaction validity is
tricky, and this remains true in the Dijkstra era.

The Dijkstra era introduces *nested transactions* (a single top-level transaction
that contains a list of sub-transactions) and *guards* (CIP-0112 / CIP-0118).  As a
result, several checks that were "per-transaction" in Conway become *batch-aware*.

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

    Phase-2 (Plutus) validation is performed **once**
    for the whole batch (mempool safety), even though script inputs/contexts are
    constructed from both sub- and top-level components.

4.  **Guards are credentials**

    A transaction body may specify *guards* as a set of *credentials* (key or
    script).  This is distinct from the legacy "required signer" key hashes used for
    phase-1 key-witness checking and native/timelock scripts.

5.  **Required top-level guards are requests (list-like)**

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


<!--
The following text previously appeared in item 4.

> All scripts are shared across all transactions within a single batch, so
> attaching one script to either a sub- or a top-level-transaction allows other
> transactions to run it without also including it in its own scripts.  This
> includes reference scripts that are sourced from the outputs to which reference
> inputs point in the UTxO.  These referenced UTxO entries could be outputs of
> preceding transactions in the batch.

> Datums (from reference inputs and from other transactions) are also shared in
> this way.  As before, only the datums fixed by the executing transaction are
> included in the `TxInfo`{.AgdaRecord} constructed for its scripts, however, now
> they don't necessarily have to be attached to that transaction.

I've removed these two paragraphs for now because I'm not sure they're accurate.
I've replaced them with an explanation that removes the contradiction between "ref
inputs may refer to earlier tx outputs in the batch" vs "all inputs must exist before
applying any tx in the batch," and punts the exact constraint to the UTxO rules
(where I think it belongs).
-->

[^1]:  See CIP 0118; once finalized and merged, CIP 0118 will appear in the
       main branch of [the CIP repository][CIPs]; until then, it can be found
       at <https://github.com/polinavino/CIPs/tree/polina/CIP0118/CIP-0118>.
