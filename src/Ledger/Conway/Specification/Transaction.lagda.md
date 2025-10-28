---
source_branch: master
source_path: src/Ledger/Conway/Specification/Transaction.lagda
---

# Transactions {#sec:transactions}

A transaction consists of a transaction body, a collection of witnesses
and some optional auxiliary data.

<!--
```agda
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Conway.Specification.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Conway.Specification.Gov.Base
import Ledger.Conway.Specification.PParams
import Ledger.Conway.Specification.Script.Base
import Ledger.Conway.Specification.Gov.Actions
import Ledger.Conway.Specification.Certs
import Ledger.Conway.Specification.TokenAlgebra.Base
import Ledger.Core.Specification.Address

open import Relation.Nullary.Decidable using (⌊_⌋)

data Tag : Type where
  Spend Mint Cert Rewrd Vote Propose : Tag
unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])
```
-->

Here are some key components of the transaction body.

+  `txIns`{.AgdaField} denotes a set of transaction inputs; each input consists of a
   transaction id and an index that points to a unique output from a previous transaction.

+  `txOuts`{.AgdaField} denotes an indexed collection of transaction outputs; each output
   consists of an address and a coin value.

+  `txFee`{.AgdaField} denotes a transaction fee to be added to the fee pot.

+  `txId`{.AgdaField} denotes the hash of the serialized form of the
   transaction—the form in which the transaction is included in a block.

In addition to these, the Conway era introduces some new fields to the transaction body.

+  `txGovVotes`{.AgdaField} denotes the list of votes for governance actions.

+  `txGovProposals`{.AgdaField} denotes the list of governance proposals.

+  `txDonation`{.AgdaField} denotes the amount of `Coin`{.AgdaFunction} to donate to
   treasury, e.g., to return funds to the treasury after a governance action.

+  `currentTreasury`{.AgdaField} denotes the current value of the treasury; this serves
   as a precondition to executing Plutus scripts that access the value of the treasury.


## Transaction Types

```agda
record TransactionStructure : Type₁ where
  field
```

*Abstract types*
```agda
    Ix TxId AuxiliaryData : Type
```

<!--
```agda
    ⦃ DecEq-Ix   ⦄ : DecEq Ix
    ⦃ DecEq-TxId ⦄ : DecEq TxId
    adHashingScheme : isHashableSet AuxiliaryData
  open isHashableSet adHashingScheme renaming (THash to ADHash) public

  field globalConstants : _
  open GlobalConstants globalConstants public

  field cryptoStructure : _
  open CryptoStructure cryptoStructure public
  open Ledger.Conway.Specification.TokenAlgebra.Base ScriptHash public
  open Ledger.Core.Specification.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Conway.Specification.Script.Base cryptoStructure epochStructure public

  field scriptStructure : _
  open ScriptStructure scriptStructure public
  open Ledger.Conway.Specification.PParams cryptoStructure epochStructure scriptStructure public

  field govParams : _
  open GovParams govParams public

  field tokenAlgebra : TokenAlgebra
  open TokenAlgebra tokenAlgebra public

  field txidBytes : TxId → Ser

  govStructure : GovStructure
  govStructure = record
    -- TODO: figure out what to do with the hash
    { TxId = TxId; DocHash = ADHash
    ; cryptoStructure = cryptoStructure
    ; epochStructure = epochStructure
    ; scriptStructure = scriptStructure
    ; govParams = govParams
    ; globalConstants = globalConstants
    }

  module GovActions = Ledger.Conway.Specification.Gov.Actions govStructure
  open GovActions hiding (Vote; yes; no; abstain) public

  open import Ledger.Conway.Specification.Certs govStructure
```
-->

*Derived types*
```agda
  TxIn               = TxId × Ix
  TxOut              = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe Script
  UTxO               = TxIn ⇀ TxOut
  RdmrPtr            = Tag × Ix
  ProposedPPUpdates  = KeyHash ⇀ PParamsUpdate
  Update             = ProposedPPUpdates × Epoch
```

<!--
```agda
  record HasUTxO {a} (A : Type a) : Type a where
    field UTxOOf : A → UTxO
  open HasUTxO ⦃...⦄ public
```
-->

*Transaction types*
```agda
  record TxBody : Type where
    field
      txIns                : ℙ TxIn
      refInputs            : ℙ TxIn
      collateralInputs     : ℙ TxIn
      txOuts               : Ix ⇀ TxOut
      txId                 : TxId
      txCerts              : List DCert
      txFee                : Fees
      txWithdrawals        : Withdrawals
      txVldt               : Maybe Slot × Maybe Slot
      txADhash             : Maybe ADHash
      txDonation           : Donations
      txGovVotes           : List GovVote
      txGovProposals       : List GovProposal
      txNetworkId          : Maybe Network
      currentTreasury      : Maybe Treasury
      mint                 : Value
      reqSignerHashes      : ℙ KeyHash
      scriptIntegrityHash  : Maybe ScriptHash
      -- txup              : Maybe Update   -- deprecated; leave for now
```

<!--
```agda
  record HasTxBody {a} (A : Type a) : Type a where
    field TxBodyOf : A → TxBody
  open HasTxBody  ⦃...⦄ public

  record HasDCerts {a} (A : Type a) : Type a where
    field DCertsOf : A → List DCert
  open HasDCerts ⦃...⦄ public

  record HasGovProposals {a} (A : Type a) : Type a where
    field GovProposalsOf  : A → List GovProposal
  open HasGovProposals ⦃...⦄ public

  record HasTxId {a} (A : Type a) : Type a where
    field TxIdOf    : A → TxId
  open HasTxId ⦃...⦄ public

  instance
    HasDonations-TxBody : HasDonations TxBody
    HasDonations-TxBody .DonationsOf = TxBody.txDonation
```
-->


```agda
  record TxWitnesses : Type where
    field
      vkSigs   : VKey ⇀ Sig
      scripts  : ℙ Script
      txdats   : ℙ Datum
      txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial toP1Script scripts

  record Tx : Type where
    field
      body     : TxBody
      wits     : TxWitnesses
      txsize   : ℕ
      isValid  : Bool
      txAD     : Maybe AuxiliaryData
```

<!--
```agda
  instance
    HasTxBody-Tx : HasTxBody Tx
    HasTxBody-Tx .TxBodyOf = Tx.body

    HasFees-Tx : HasFees Tx
    HasFees-Tx .FeesOf = TxBody.txFee ∘ TxBodyOf

    HasDCerts-Tx : HasDCerts Tx
    HasDCerts-Tx .DCertsOf = TxBody.txCerts ∘ TxBodyOf

    HasGovProposals-Tx : HasGovProposals Tx
    HasGovProposals-Tx .GovProposalsOf = TxBody.txGovProposals ∘ TxBodyOf

    HasWithdrawals-TxBody : HasWithdrawals TxBody
    HasWithdrawals-TxBody .WithdrawalsOf = TxBody.txWithdrawals

    HasWithdrawals-Tx : HasWithdrawals Tx
    HasWithdrawals-Tx .WithdrawalsOf = WithdrawalsOf ∘ TxBodyOf

    HasTxId-Tx : HasTxId Tx
    HasTxId-Tx .TxIdOf = TxBody.txId ∘ TxBodyOf

    HasDonations-Tx : HasDonations Tx
    HasDonations-Tx .DonationsOf = DonationsOf ∘ TxBodyOf
```
-->


## Transaction Functions


```agda
  getValue : TxOut → Value
  getValue (_ , v , _) = v

  TxOutʰ = Addr × Value × Maybe (Datum ⊎ DataHash) × Maybe ScriptHash

  txOutHash : TxOut → TxOutʰ
  txOutHash (a , v , d , s) = a , (v , (d , M.map hash s))

  getValueʰ : TxOutʰ → Value
  getValueʰ (_ , v , _) = v

  txInsVKey : ℙ TxIn → UTxO → ℙ TxIn
  txInsVKey txIns utxo = txIns ∩ dom (utxo ∣^' (isVKeyAddr ∘ proj₁))

  scriptOuts : UTxO → UTxO
  scriptOuts utxo = filter (λ (_ , addr , _) → isScriptAddr addr) utxo

  txInsScript : ℙ TxIn → UTxO → ℙ TxIn
  txInsScript txIns utxo = txIns ∩ dom (proj₁ (scriptOuts utxo))

  refScripts : Tx → UTxO → ℙ Script
  refScripts tx utxo =
    mapPartial (proj₂ ∘ proj₂ ∘ proj₂) (range (utxo ∣ (txIns ∪ refInputs)))
    where open Tx; open TxBody (tx .body)

  txscripts : Tx → UTxO → ℙ Script
  txscripts tx utxo = scripts (tx .wits) ∪ refScripts tx utxo
    where open Tx; open TxWitnesses

  lookupScriptHash : ScriptHash → Tx → UTxO → Maybe Script
  lookupScriptHash sh tx utxo = lookupᵐ? m sh
    where m = setToMap (mapˢ < hash , id > (txscripts tx utxo))
```

<!--
```agda
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
```
-->

