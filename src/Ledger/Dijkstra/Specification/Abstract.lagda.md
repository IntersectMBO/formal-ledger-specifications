```agda
{-# OPTIONS --safe #-}

open import Ledger.Dijkstra.Specification.Transaction

module Ledger.Dijkstra.Specification.Abstract (txs : TransactionStructure) where

open import Ledger.Prelude
open TransactionStructure txs
open import Ledger.Dijkstra.Specification.Certs govStructure
open import Ledger.Dijkstra.Specification.Script.ScriptPurpose txs
open import Ledger.Dijkstra.Specification.Leios.Types cryptoStructure leiosCryptoStructure using (EndorserBlock)
open import Ledger.Dijkstra.Specification.Crypto using (LeiosCryptoStructure)
open LeiosCryptoStructure leiosCryptoStructure using (TxRefHash)


record indexOf : Type where
  field
    indexOfDCert          : DCert          → List DCert        → Maybe Ix
    indexOfRewardAddress  : RewardAddress  → Withdrawals       → Maybe Ix
    indexOfTxIn           : TxIn           → ℙ TxIn            → Maybe Ix
    indexOfPolicyId       : ScriptHash     → ℙ ScriptHash      → Maybe Ix
    indexOfVote           : GovVoter       → List GovVoter     → Maybe Ix
    indexOfProposal       : GovProposal    → List GovProposal  → Maybe Ix
    indexOfGuard          : Credential     → List Credential   → Maybe Ix

record AbstractFunctions : Type where
  field txScriptFee     : Prices → ExUnits → Fees
        serializedSize  : Value → MemoryEstimate
        getLanguageView : PParams → Language → LangDepView
        indexOfImp      : indexOf
        scriptSize      : Script → ℕ
        valContext      : TxInfo → ScriptPurpose → Data
        txRefHash       : TopLevelTx → TxRefHash
        ebSize          : EndorserBlock → ℕ
```

The last two serve Leios: `txRefHash`{.AgdaField} is the hash of a transaction's
complete bytes, the identity an endorser block's references carry, and
`ebSize`{.AgdaField} the serialized size of an endorser block; both stay abstract
like `serializedSize`{.AgdaField}, since the specification pins no byte-exact
serialization.
