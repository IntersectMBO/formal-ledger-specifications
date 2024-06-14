open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.Prelude where

record ScriptImplementation (T D : Set) : Set₁ where
  field -- serialise : T → D
        -- deserialise : D → Maybe T
        ⦃ DecEq-Data  ⦄ : DecEq D
        -- valContext' : ScriptPurpose → TxInfo → D -- fix this

open import Tactic.Derive.DecEq

  -- Only implementing Rwd, Mint and Spend
  -- TODO: Implement Cert, Propose and Vote



SValue = ℕ
STxId = ℕ
SIx = ℕ
STxIn  = STxId × SIx

SCredential = ℕ ⊎ ℕ
SNetwork = ⊤

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


{-
record TxInfo : Set where
  field realizedInputs : UTxO
        txouts  : Ix ⇀ TxOut
        fee     : Value
        mint    : Value
        txcerts : List DCert
        txwdrls : Wdrl
        txvldt  : Maybe Slot × Maybe Slot
        vkKey   : ℙ KeyHash
        txdats  : DataHash ⇀ Datum
        txid    : TxId
-}

open import ScriptVerification.LedgerImplementation SScriptPurpose SScriptPurpose
