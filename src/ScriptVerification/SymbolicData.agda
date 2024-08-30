open import Ledger.Prelude hiding (fromList; ε); open Computational

module ScriptVerification.SymbolicData (SD : Set) {{DecEq-Data : DecEq SD}} where

open import ScriptVerification.Prelude SD

ScriptContext = STxInfo × SScriptPurpose
SData = SDatum ⊎ ScriptContext

open import ScriptVerification.LedgerImplementation SData SData
open import Ledger.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure

TxInToSymbolic : TxIn → STxIn
TxInToSymbolic x = x

AddrToSymbolic' : Addr → SAddr
AddrToSymbolic' (inj₁ R) = inj₁ (record { BaseAddr R })
AddrToSymbolic' (inj₂ record { net = net ; pay = pay ; attrsSize = attrsSize }) = inj₂ (record { net = net ; pay = pay ; attrsSize = attrsSize })

AddrToSymbolic : Addr → SAddr
AddrToSymbolic (inj₁ record { net = net ; pay = pay ; stake = stake }) = inj₁ (record { net = net ; pay = pay ; stake = stake })
AddrToSymbolic (inj₂ record { net = net ; pay = pay ; attrsSize = attrsSize }) = inj₂ (record { net = net ; pay = pay ; attrsSize = attrsSize })

RwdAddrToSymbolic : RwdAddr → SRwdAddr
RwdAddrToSymbolic record { net = net ; stake = stake } = record { net = net ; stake = stake }

DatumToSymbolic : Datum ⊎ DataHash → Maybe (SDatum ⊎ SDatum)
DatumToSymbolic (inj₁ (inj₁ x)) = just (inj₁ x)
DatumToSymbolic (inj₁ (inj₂ y)) = nothing
DatumToSymbolic (inj₂ (inj₁ x)) = just (inj₂ x)
DatumToSymbolic (inj₂ (inj₂ y)) = nothing

DatumToSymbolic' : Datum ⊎ DataHash → Maybe SDatum
DatumToSymbolic' (inj₁ (inj₁ x)) = just x
DatumToSymbolic' (inj₁ (inj₂ y)) = nothing
DatumToSymbolic' (inj₂ (inj₁ x)) = just x
DatumToSymbolic' (inj₂ (inj₂ y)) = nothing

DatumPairToSymbolic : Datum × DataHash → Maybe SDatum
DatumPairToSymbolic d = DatumToSymbolic' (inj₁ (proj₁ d))

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
