open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude ⊤

module ScriptVerification.MultiSig where

PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

SData = ⊤ ⊎ (STxInfo × SScriptPurpose)

open import ScriptVerification.LedgerImplementation SData SData
open import Ledger.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure -- using (TxInfo; ScriptPurpose; Data)

TxInToSymbolic : TxIn → STxIn
TxInToSymbolic x = x

AddrToSymbolic : Addr → SAddr
AddrToSymbolic (inj₁ record { net = net ; pay = pay ; stake = stake }) = inj₁ (record { net = net ; pay = pay ; stake = stake })
AddrToSymbolic (inj₂ record { net = net ; pay = pay ; attrsSize = attrsSize }) = inj₂ (record { net = net ; pay = pay ; attrsSize = attrsSize })

RwdAddrToSymbolic : RwdAddr → SRwdAddr
RwdAddrToSymbolic record { net = net ; stake = stake } = record { net = net ; stake = stake }

DatumToSymbolic : Datum ⊎ DataHash → Maybe SDatum
DatumToSymbolic (inj₁ (inj₁ x)) = just x
DatumToSymbolic (inj₁ (inj₂ y)) = nothing
DatumToSymbolic (inj₂ (inj₁ x)) = just x
DatumToSymbolic (inj₂ (inj₂ y)) = nothing

DatumPairToSymbolic : Datum × DataHash → Maybe SDatum
DatumPairToSymbolic d = DatumToSymbolic (inj₁ (proj₁ d))

TxOutToSymbolic : TxOut → STxOut
TxOutToSymbolic (a , v , d , s) = AddrToSymbolic a , v , maybe DatumToSymbolic nothing d

UTxOToSymbolic : UTxO → SUTxO
UTxOToSymbolic x = map (\ x → (proj₁ x , TxOutToSymbolic (proj₂ x))) (setToList (x ˢ))

txInfoToSymbolic : TxInfo → STxInfo
txInfoToSymbolic txinfo =
  let open TxInfo txinfo
  in
    record
      { realizedInputs = UTxOToSymbolic realizedInputs
      ; txouts = map (\ x → (proj₁ x , TxOutToSymbolic (proj₂ x))) (setToList (txouts ˢ))
      ; fee = fee
      ; mint = mint
      ; txwdrls = map (\ x → (RwdAddrToSymbolic (proj₁ x) , proj₂ x)) (setToList (txwdrls ˢ))
      ; txvldt = txvldt
      ; vkey = vkKey
      ; txdats = mapMaybe DatumPairToSymbolic (setToList (txdats ˢ))
      ; txid = txid
      }

ScriptPurposeToSymbolic : ScriptPurpose → SScriptPurpose
ScriptPurposeToSymbolic (TransactionStructure.Cert x) = Empty
ScriptPurposeToSymbolic (TransactionStructure.Rwrd x) = Rwrd (RwdAddrToSymbolic x)
ScriptPurposeToSymbolic (TransactionStructure.Mint x) = Mint x
ScriptPurposeToSymbolic (TransactionStructure.Spend x) = Spend x
ScriptPurposeToSymbolic (TransactionStructure.Vote x) = Empty
ScriptPurposeToSymbolic (TransactionStructure.Propose x) = Empty

valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = inj₂ ((txInfoToSymbolic txinfo) , (ScriptPurposeToSymbolic sp))

open import ScriptVerification.AbstractImplementation SData SData valContext
open import ScriptVerification.Lib SData SData valContext
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions

-- Actions
-- Create MultiSig params
-- pay into multisig no validation needed
-- redeem requires signatories more than params

{-
Record TxInfo : Set where
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

data ScriptPurpose : Set where
  Cert     : DCert        → ScriptPurpose
  Rwrd     : RwdAddr      → ScriptPurpose
  Mint     : ScriptHash   → ScriptPurpose
  Spend    : TxIn         → ScriptPurpose
  Vote     : Voter        → ScriptPurpose
  Propose  : GovProposal  → ScriptPurpose
-}


-- valContext : TxInfo → ScriptPurpose → Data
-- valContext txinfo sp = toData (txinfo , sp)


-- params → redeemer → datum → script context
--
multiSigValidator : MultiSig → Maybe SData → Maybe SData → List SData → Bool
multiSigValidator = {!!}

multiSigScript : MultiSig → PlutusScript
multiSigScript p = 777 , applyScriptWithContext (multiSigValidator p)
