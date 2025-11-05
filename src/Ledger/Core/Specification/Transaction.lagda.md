---
source_branch: master
source_path: src/Ledger/Core/Specification/Transaction.lagda
---

# Transactions {#sec:transactions}

A transaction consists of a transaction body, a collection of witnesses
and some optional auxiliary data.

This section collects the **era-independent** types and functions that are used across
eras to define transactions.

<!--
```agda
{-# OPTIONS --safe #-}
--------------------------------------------------------------------------------
-- NOTE: Everything in this module is part of TransactionStructure
--------------------------------------------------------------------------------
module Ledger.Core.Specification.Transaction where

import Data.Maybe.Base as M

open import Ledger.Prelude renaming (filterᵐ to filter)

open import Ledger.Core.Specification.Crypto
open import Ledger.Core.Specification.Epoch
open import Ledger.Core.Specification.Gov.Base
import Ledger.Core.Specification.Gov.Actions
import Ledger.Core.Specification.Script.Base
import Ledger.Core.Specification.TokenAlgebra.Base
import Ledger.Core.Specification.Address
import Ledger.Conway.Specification.PParams

data Tag : Type where
  Spend Mint Cert Rewrd Vote Propose : Tag
unquoteDecl DecEq-Tag = derive-DecEq ((quote Tag , DecEq-Tag) ∷ [])
```
-->

We won't formally define a transaction body here, since that is era-dependent.
However, we will define some of the key components that go into a transaction body,
no matter the era.

+  `TxIn`{.AgdaDatatype} denotes a transaction input, which will consist of a
   transaction id and an index that points to a unique output from a previous transaction.

+  `TxOut`{.AgdaField} denotes a transaction outputs, which consists of an address and a coin value.

+  `TxId`{.AgdaField} denotes the hash of the serialized form of the
   transaction—the form in which the transaction is included in a block.

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
  open Ledger.Core.Specification.TokenAlgebra.Base ScriptHash public
  open Ledger.Core.Specification.Address Network KeyHash ScriptHash ⦃ it ⦄ ⦃ it ⦄ ⦃ it ⦄ public

  field epochStructure : _
  open EpochStructure epochStructure public
  open Ledger.Core.Specification.Script.Base cryptoStructure epochStructure public

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

  module GovActions = Ledger.Core.Specification.Gov.Actions govStructure
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

```agda
  record TxWitnesses : Type where
    field
      vkSigs   : VKey ⇀ Sig
      scripts  : ℙ Script
      txdats   : ℙ Datum
      txrdmrs  : RdmrPtr  ⇀ Redeemer × ExUnits

    scriptsP1 : ℙ P1Script
    scriptsP1 = mapPartial toP1Script scripts
```

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
```

<!--
```agda
  instance
    HasCoin-TxOut : HasCoin TxOut
    HasCoin-TxOut .getCoin = coin ∘ proj₁ ∘ proj₂
```
-->

