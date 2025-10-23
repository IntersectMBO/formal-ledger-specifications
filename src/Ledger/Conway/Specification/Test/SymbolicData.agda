{-# OPTIONS --safe #-}

open import Ledger.Prelude

module Ledger.Conway.Specification.Test.SymbolicData
  (SD : Set) {{DecEq-Data : DecEq SD}} {{Show-Data : Show SD}} where

open import Ledger.Conway.Specification.Test.Prelude SD

ScriptContext : Type
ScriptContext = STxInfo × SScriptPurpose

SData : Type
SData = SDatum ⊎ ScriptContext

instance ShowSData : Show SData
         ShowSData = mkShow (λ x → "")

open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Script.ScriptPurpose SVTransactionStructure

open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure

open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure

TxInToSymbolic : TxIn → STxIn
TxInToSymbolic x = x

credToSymbolic : Credential → SCredential
credToSymbolic (KeyHashObj x) = KeyHashObj x
credToSymbolic (ScriptObj x) = ScriptObj x

AddrToSymbolic : Addr → SAddr
AddrToSymbolic (inj₁ record { net = net ; pay = pay ; stake = stake })
  = inj₁ (record { net = net ; pay = credToSymbolic pay ; stake = maybe (λ x → just (credToSymbolic x)) nothing stake })
AddrToSymbolic (inj₂ record { net = net ; pay = pay ; attrsSize = attrsSize })
  = inj₂ (record { net = net ; pay = credToSymbolic pay ; attrsSize = attrsSize })

RwdAddrToSymbolic : RwdAddr → SRwdAddr
RwdAddrToSymbolic record { net = net ; stake = stake } = record { net = net ; stake = credToSymbolic stake }

DatumToSymbolic : Datum → Maybe SDatum
DatumToSymbolic (inj₁ x) = just x
DatumToSymbolic (inj₂ y) = nothing

DatumPairToSymbolic : Datum ⊎ DataHash → Maybe (SDatum ⊎ SDatum)
DatumPairToSymbolic (inj₁ (inj₁ x)) = just (inj₁ x)
DatumPairToSymbolic (inj₁ (inj₂ y)) = nothing
DatumPairToSymbolic (inj₂ (inj₁ x)) = just (inj₂ x)
DatumPairToSymbolic (inj₂ (inj₂ y)) = nothing

TxOutToSymbolic : TxOut → STxOut
TxOutToSymbolic (a , v , d , s) = AddrToSymbolic a , v , maybe DatumPairToSymbolic nothing d

UTxOToSymbolic : UTxO → SUTxO
UTxOToSymbolic x = map (\ x → (proj₁ x , TxOutToSymbolic (proj₂ x))) (setToList (x ˢ))

txInfoToSymbolic : TxInfo → STxInfo
txInfoToSymbolic txinfo =
  let open TxInfo txinfo
  in
    record
      { realizedInputs = UTxOToSymbolic realizedInputs
      ; txouts = map (\ x → (proj₁ x , TxOutToSymbolic (proj₂ x))) (setToList (txOuts ˢ))
      ; fee = fee
      ; mint = mint
      ; txwdrls = map (\ x → (RwdAddrToSymbolic (proj₁ x) , proj₂ x)) (setToList (txWithdrawals ˢ))
      ; txvldt = txVldt
      ; vkey = vkKey
      ; txdats = mapMaybe DatumToSymbolic (setToList txdats) 
      ; txid = txId
      }

ScriptPurposeToSymbolic : ScriptPurpose → SScriptPurpose
ScriptPurposeToSymbolic (Cert x) = Empty
ScriptPurposeToSymbolic (Rwrd x) = Rwrd (RwdAddrToSymbolic x)
ScriptPurposeToSymbolic (Mint x) = Mint x
ScriptPurposeToSymbolic (Spend x) = Spend x
ScriptPurposeToSymbolic (Vote x) = Empty
ScriptPurposeToSymbolic (Propose x) = Empty

valContext : TxInfo → ScriptPurpose → Data
valContext txinfo sp = inj₂ ((txInfoToSymbolic txinfo) , (ScriptPurposeToSymbolic sp)) 
