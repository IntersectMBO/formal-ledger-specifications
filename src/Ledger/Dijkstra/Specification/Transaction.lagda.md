# Transaction

```agda
{-# OPTIONS --safe #-}
module Ledger.Dijkstra.Specification.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Dijkstra.Specification.Crypto
open import Ledger.Dijkstra.Specification.Epoch
open import Ledger.Dijkstra.Specification.Gov.Base

import Ledger.Dijkstra.Specification.Address
import Ledger.Dijkstra.Specification.Certs
import Ledger.Dijkstra.Specification.Gov.Actions
import Ledger.Dijkstra.Specification.PParams
import Ledger.Dijkstra.Specification.Script
import Ledger.Dijkstra.Specification.TokenAlgebra.Base

open import Tactic.Derive.DecEq
open import Relation.Nullary.Decidable using (⌊_⌋)
```

A transaction in Dijkstra is very similar to a transaction in Conway
except that now it may include:

- other (sub)transactions as part of its body (TODO: cite CIP)
- _guard_ scripts (TODO: cite CIP)

Before continuing, we remark that transactions cannot be arbitrarily
nested. That is, a transaction (henceforth refered as top-level
transaction) can include subtransactions, but these cannot include
other subtransactions.

## Transaction levels

To differentiate between the two types of transactions (i.e. top-level
and sub), we define the type of transaction level:

```agda
data TxLevel : Type where
  TxLevelTop TxLevelSub : TxLevel
```

This type will be used, among other purposes, to provide a concise
definition of the types of top-level and sub transactions in (TODO:
add forward reference).

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

## Transactions

```agda
record TransactionStructure : Type₁ where
  field
    Ix TxId AuxiliaryData : Type

    ⦃ DecEq-Ix   ⦄ : DecEq Ix
    ⦃ DecEq-TxId ⦄ : DecEq TxId
    adHashingScheme : isHashableSet AuxiliaryData
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  field globalConstants : _
  open GlobalConstants globalConstants public

  field crypto : _
  open CryptoStructure crypto public
  open Ledger.Dijkstra.Specification.TokenAlgebra.Base ScriptHash public
  open Ledger.Dijkstra.Specification.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Dijkstra.Specification.Script crypto epochStructure public

  field scriptStructure : _
  open ScriptStructure scriptStructure public
  open Ledger.Dijkstra.Specification.PParams crypto epochStructure scriptStructure public

  field govParams : _
  open GovParams govParams public

  field tokenAlgebra : TokenAlgebra
  open TokenAlgebra tokenAlgebra public

  field txidBytes : TxId → Ser

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

  module GovernanceActions = Ledger.Dijkstra.Specification.Gov.Actions govStructure
  open GovernanceActions hiding (Vote; yes; no; abstain) public

  open import Ledger.Dijkstra.Specification.Certs govStructure

  TxIn : Type
  TxIn = TxId × Ix

  TxOut : Type
  TxOut = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script

  UTxO : Type
  UTxO = TxIn ⇀ TxOut

  Withdrawals : Type
  Withdrawals = RewardAddress ⇀ Coin

  Datums : Type
  Datums = DataHash ⇀ Datum

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
`InTopLevel` and `InSubLevel` defined in (TODO: add back ref)

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
        scriptIntegrityHash  : Maybe ScriptHash

        -- new in Dijkstra
        txSubTransactions         : InTopLevel txLevel (List (Tx TxLevelSub)) -- only in top-level tx
        txRequiredGuards          : ℙ Credential -- replaces reqSigHash : ℙ KeyHash
        txRequiredTopLevelGuards  : InSubLevel txLevel (ScriptHash ⇀ Datum) -- only in sub-level tx

    record TxWitnesses (txLevel : TxLevel) : Type where
      inductive
      field
        vKeySigs     : VKey ⇀ Sig
        scripts      : ℙ Script
        txDatums     : Datums
        txRedeemers  : RedeemerPtr txLevel ⇀ Redeemer × ExUnits

      scriptsP1 : ℙ P1Script
      scriptsP1 = mapPartial isInj₁ scripts
```

Using these types, we define the types of top-level and sub
transaction as:

```agda
  TopLevelTx : Type
  TopLevelTx = Tx TxLevelTop

  SubLevelTx : Type
  SubLevelTx = Tx TxLevelSub
```

In addition, we define the type of transactions in which its level
could be either of them:

```agda
  AnyLevelTx : Type
  AnyLevelTx = TopLevelTx ⊎ SubLevelTx
```

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

  instance
    HasTxBody-Tx : HasTxBody (Tx txLevel)
    HasTxBody-Tx .TxBodyOf = Tx.txBody

    HasWithdrawals-TxBody : HasWithdrawals (TxBody txLevel)
    HasWithdrawals-TxBody .WithdrawalsOf = TxBody.txWithdrawals

    HasWithdrawals-Tx : HasWithdrawals (Tx txLevel)
    HasWithdrawals-Tx .WithdrawalsOf = WithdrawalsOf ∘ TxBodyOf

    HasFees?-TxBody : {ℓ : TxLevel} → HasFees? (TxBody ℓ)
    HasFees?-TxBody {TxLevelTop} .FeesOf? tbTop = just (TxBody.txFee tbTop)
    HasFees?-TxBody {TxLevelSub} .FeesOf? tbSub = nothing

    HasFees?-Tx : HasFees? (Tx txLevel)
    HasFees?-Tx .FeesOf? = FeesOf? ∘ TxBodyOf

    HasTxId-Tx : HasTxId (Tx txLevel)
    HasTxId-Tx .TxIdOf = TxBody.txId ∘ TxBodyOf

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

  -- -- Already defined in, and imported from, Conway --
  -- isP2Script : Script → Type
  -- isP2Script = T ∘ is-just ∘ isInj₂
  --
  -- isP2Script? : ∀ {s} → isP2Script s ⁇
  -- isP2Script? {inj₁ x} .dec = no λ ()
  -- isP2Script? {inj₂ y} .dec = yes tt
  -- ----------------------------------------------------

  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
```
