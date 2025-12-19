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
other subtransactions.

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

The type of transactions is defined as three mutually recursive
records parameterised by a value of type `TxLevel`{.agdatype}.

The fields that depend on the transaction level use the auxiliary functions
`InTopLevel` and `InSubLevel` defined in the section on [Transaction Levels][].

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
        collateralInputs     : InTopLevel txLevel (ℙ TxIn) -- only in top-level tx
        txOuts               : Ix ⇀ TxOut
        txId                 : TxId
        txCerts              : List DCert
        txFee                : InTopLevel txLevel Fees -- only in top-level tx
        txWithdrawals        : Withdrawals
        txVldt               : Maybe Slot × Maybe Slot
        txADhash             : Maybe ADHash
        txDonation           : Donations
        txGovVotes           : List GovVote
        txGovProposals       : List GovProposal
        txNetworkId          : Maybe Network
        currentTreasury      : Maybe Coin
        mint                 : Value
        reqSignerHashes      : ℙ KeyHash
        scriptIntegrityHash  : Maybe ScriptHash

        -- New in Dijkstra --
        txSubTransactions         : InTopLevel txLevel (List (Tx TxLevelSub)) -- only in top-level tx
        txGuards                  : ℙ Credential -- Dijkstra guards: credentials required by this tx (key or script).
        txRequiredTopLevelGuards  : InSubLevel txLevel (ScriptHash ⇀ Datum) -- only in sub-level tx
                                                     -- ^ TODO (CIP-0118): should be List (Credential × Maybe Datum)`
        ---------------------

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
    ScriptHashes = dom ∘ TxBody.txRequiredTopLevelGuards ∘ TxBodyOf

  getTxScripts : {ℓ : TxLevel} → Tx ℓ → ℙ (TxId × ScriptHash)
  getTxScripts {TxLevelSub} = getSubTxScripts
  getTxScripts {TxLevelTop} =
    concatMapˢ getSubTxScripts ∘ fromList ∘ TxBody.txSubTransactions ∘ TxBodyOf
```
-->

## Changes to Transaction Validity

As discussed in [Ledger.Conway.Specification.Properties][], transaction validity is
tricky, and this is as true in the Dijkstra era as it was in Conway, if not moreso.

Here are some key points about transaction validity in the Dijkstra era.

1.  Sub-transactions are not allowed to contain sub-transactions themselves.

2.  Sub-transactions are not allowed to contain collateral inputs.  Only a top-level
    transaction is allowed to (furthermore, obligated to) provide sufficient
    collateral for all scripts that are run as part of validating all transactions in
    that batch.  If any script in a batch fails, none of the transactions in the batch
    is applied; only the collateral is collected.

3.  Transactions using the new features of the Dijkstra era are not allowed to run
    PlutusV3 scripts (nor earlier Plutus version scripts).

4.  All scripts are shared across all transactions within a single batch, so
    attaching one script to either a sub- or a top-level-transaction allows other
    transactions to run it without also including it in its own scripts.  This
    includes references scripts that are sourced from the outputs to which reference
    inputs point in the UTxO.  These referenced UTxO entries could be outputs of
    preceding transactions in the batch.

    Datums (from reference inputs and from other transactions) are also shared in
    this way.  As before, only the datums fixed by the executing transaction are
    included in the `TxInfo`{.AgdaRecord} constructed for its scripts, however, now they don't
    necessarily have to be attached to that transaction.

5.  All inputs of all transactions in a single batch must be contained in the UTxO
    set before any of the batch transactions are applied.  This ensures that
    operation of scripts is not disrupted, for example, by temporarily duplicating
    thread tokens, or falsifying access to assets via flash loans.  In the future,
    this may be up for reconsideration.

6.  The batch must be balanced; i.e., preservation of value (POV) must hold.  The
    updated `produced` and `consumed` calculations sum up the appropriate quantities
    not for individual transactions, but for the entire batch, which includes the
    top-level transaction and all its sub-transactions.

7.  All transactions (sub- and top-level) may specify a non-zero fee.  The total fee
    summed up across all transactions in a batch is required to cover the minimum
    fees of all transactions.  The fees specified in all transactions are always
    collected.  Individual transactions in a batch do not need to meet the min-fee
    requirement.

8.  The total size of the top-level transaction (including all its sub-transactions)
    must be less than the `maxTxSize`{.AgdaField}.  This constraint is necessary to
    ensure efficient network operation since batches will be transmitted wholesale
    across the Cardano network.


[^1]:  See CIP 0118; once finalized and merged, CIP 0118 will appear in the
       main branch of [the CIP repository][CIPs]; until then, it can be found
       at <https://github.com/polinavino/CIPs/tree/polina/CIP0118/CIP-0118>.
