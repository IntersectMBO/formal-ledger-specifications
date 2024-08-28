open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.Prelude (D : Set) {{DecEq-Data : DecEq D}} where

open import Tactic.Derive.DecEq

-- Only implementing Rwd, Mint and Spend
-- TODO: Implement Cert, Propose and Vote
-- All maps become lists of pairs to ensure decidable equality

SDatum = D
SValue = ℕ
STxId = ℕ
SIx = ℕ
STxIn  = STxId × SIx
SCredential = ℕ ⊎ ℕ
SNetwork = ⊤
SSlot = ℕ
SKeyHash = ℕ

record SBaseAddr : Set where
  field net    : SNetwork
        pay    : SCredential
        stake  : SCredential
instance
  unquoteDecl DecEq-SBaseAddr = derive-DecEq
    ((quote SBaseAddr , DecEq-SBaseAddr) ∷ [])

record SBootstrapAddr : Set where
  field net        : SNetwork
        pay        : SCredential
        attrsSize  : ℕ
instance
  unquoteDecl DecEq-SBootstrapAddr = derive-DecEq
    ((quote SBootstrapAddr , DecEq-SBootstrapAddr) ∷ [])

SAddr = SBaseAddr ⊎ SBootstrapAddr

-- ScriptHash
STxOut = SAddr × SValue × Maybe (D ⊎ D) -- Assumes hash is identity for datums, dropping Maybe Script for now
SUTxO  = List (STxIn × STxOut)

record SRwdAddr : Set where
  field net    : SNetwork
        stake  : SCredential
instance
  unquoteDecl DecEq-SRwdAddr = derive-DecEq
    ((quote SRwdAddr , DecEq-SRwdAddr) ∷ [])

data SScriptPurpose : Set where
  -- network is tt so we can ignore it here
  Rwrd     : SRwdAddr → SScriptPurpose
  Mint     : SValue → SScriptPurpose
  Spend    : STxIn → SScriptPurpose
  Empty    : SScriptPurpose
instance
  unquoteDecl DecEq-SScriptPurpose = derive-DecEq
    ((quote SScriptPurpose , DecEq-SScriptPurpose) ∷ [])


record STxInfo : Set where
  field realizedInputs : SUTxO
        txouts         : List (SIx × STxOut)
        fee            : SValue
        mint           : SValue
        -- not adding txcerts as rarely used
        txwdrls        : List (SRwdAddr  × Coin)
        txvldt         : Maybe SSlot × Maybe SSlot
        vkey           : ℙ SKeyHash
        txdats         : List D -- Hash is id for datums therfore List D can replicate: DataHash ⇀ Datum
        txid           : STxId
instance
  unquoteDecl DecEq-STxInfo = derive-DecEq
    ((quote STxInfo , DecEq-STxInfo) ∷ [])

-- open import ScriptVerification.LedgerImplementation SScriptPurpose SScriptPurpose
