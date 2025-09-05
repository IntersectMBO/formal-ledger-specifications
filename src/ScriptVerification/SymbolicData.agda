open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.SymbolicData (SD : Set) {{DecEq-Data : DecEq SD}} {{Show-Data : Show SD}} where

open import ScriptVerification.Prelude SD

ScriptContext = STxInfo × SScriptPurpose
SData = SDatum ⊎ ScriptContext

instance asdf : Show SData
         asdf = mkShow (λ x → "")

open import ScriptVerification.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open import Ledger.Conway.Specification.ScriptPurpose SVTransactionStructure
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
      ; txouts = map (\ x → (proj₁ x , TxOutToSymbolic (proj₂ x))) (setToList (txouts ˢ))
      ; fee = fee
      ; mint = mint
      ; txwdrls = map (\ x → (RwdAddrToSymbolic (proj₁ x) , proj₂ x)) (setToList (txwdrls ˢ))
      ; txvldt = txvldt
      ; vkey = vkKey
      ; txdats = mapMaybe DatumToSymbolic (setToList txdats) 
      ; txid = txid
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
