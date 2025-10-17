{-# OPTIONS --safe #-}

-- Validator for the MultiSig contract from the EUTxO paper adapted from Agda2hs version

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.DEx.Datum
open import Relation.Binary using (REL; Decidable)
open import Level using (Level; _⊔_; suc)
open import Data.Maybe renaming (map to maybeMap)
open import Data.List using (filter)

open import Data.Bool.Base renaming (_∧_ to _&&_) hiding (if_then_else_)
--open import Interface.ToBool
import Agda.Builtin.Nat as N
import Data.Rational.Base as Q


open import Ledger.Conway.Specification.Test.Prelude DExData

module Ledger.Conway.Specification.Test.Examples.DEx.Validator where

PubKeyHash = ℕ

open import Ledger.Conway.Specification.Test.SymbolicData DExData

--TODO: Implement show properly
instance
  ShowAccountSimData : Show DExData
  ShowAccountSimData = mkShow (λ x → "")

open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open import Ledger.Conway.Specification.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure
open import Ledger.Conway.Specification.Test.AbstractImplementation SData SData valContext
open import Ledger.Conway.Specification.Test.Lib SData SData valContext
open import Ledger.Conway.Specification.Script.Validation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Conway.Specification.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Transaction
open import Ledger.Core.Specification.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Conway.Specification.Utxo.Properties.Computational SVTransactionStructure SVAbstractFunctions
open import Ledger.Conway.Specification.Utxow.Properties.Computational SVTransactionStructure SVAbstractFunctions


emptyValue : Value
emptyValue = 0

feeValue : Value
feeValue = 10000000000

startValue : Value
startValue = 1000000000000

scriptValue : Value
scriptValue = 30000000000

minValue : Value
minValue = 3000000

adaValueOf : ℕ -> Value
adaValueOf n = n 


geq : Value -> Value -> Bool
geq v1 v2 =  ⌊ v1 ≥? v2 ⌋

subVal : Value -> Value -> Value
subVal v1 v2 = v1 - v2

instance ValueSub : HasSubtract Value Value
         ValueSub = record { _-_ = λ x y → subVal x y } --subVal



record Params : Set where
  field
    sellC : ℕ
    buyC : ℕ


getInlineOutputDatum : STxOut → List DExData → Maybe Datum
getInlineOutputDatum (a , b , just (inj₁ (inj₁ x))) dats = just (inj₁ (inj₁ x))
getInlineOutputDatum (a , b , just (inj₁ (inj₂ y))) dats = nothing
getInlineOutputDatum (a , b , just (inj₂ y)) dats = nothing
getInlineOutputDatum (a , b , nothing) dats = nothing

newLabel : ScriptContext -> Maybe Label
newLabel (record { realizedInputs = realizedInputs ; txouts = txouts ; fee = fee ; mint = mint ; txwdrls = txwdrls ; txvldt = txvldt ; vkey = vkey ; txdats = txdats ; txid = txid } , snd) with
  mapMaybe (λ x → getInlineOutputDatum x txdats) (map proj₂ txouts)
... | [] = nothing
... | inj₁ (inj₁ x) ∷ [] = just x
... | _ = nothing

continuing : ScriptContext -> Bool
continuing (record { realizedInputs = realizedInputs ; txouts = txouts ; fee = fee ; mint = mint ; txwdrls = txwdrls ; txvldt = txvldt ; vkey = vkey ; txdats = txdats ; txid = txid } , snd) with
  mapMaybe (λ x → getInlineOutputDatum x txdats) (map proj₂ txouts)
... | [] = false
... | _ = true

getPaymentCredential : STxOut → ℕ
getPaymentCredential (inj₁ record { net = net ; pay = (KeyHashObj x) ; stake = stake } , snd) = x
getPaymentCredential (inj₁ record { net = net ; pay = (ScriptObj x) ; stake = stake } , snd) = x
getPaymentCredential (inj₂ record { net = net ; pay = (KeyHashObj x) ; attrsSize = attrsSize } , snd) = x
getPaymentCredential (inj₂ record { net = net ; pay = (ScriptObj x) ; attrsSize = attrsSize } , snd) = x

getScriptCredential' : ℕ → SUTxO → Maybe ℕ
getScriptCredential' ix [] = nothing
getScriptCredential' ix (((txid' , ix') , txout) ∷ utxos) with ix ≟ ix'
... | no ¬a = getScriptCredential' ix utxos
... | yes a = just (getPaymentCredential txout)

getScriptCredential : ScriptContext → Maybe ℕ
getScriptCredential (fst , Rwrd x) = nothing
getScriptCredential (fst , Mint x) = nothing
getScriptCredential (txinfo , Spend (txid , ix)) = getScriptCredential' ix (STxInfo.realizedInputs txinfo)
getScriptCredential (fst , Empty) = nothing

balanceSTxOut : List STxOut → Value
balanceSTxOut txout = foldr (_+_ {{addValue}}) emptyValue (map (λ {(_ , v , _) → v}) txout)

matchIx : ℕ → SAddr → Set
matchIx n (inj₁ record { net = net ; pay = (KeyHashObj x) ; stake = stake }) = n ≡ x
matchIx n (inj₁ record { net = net ; pay = (ScriptObj y) ; stake = stake }) = n ≡ y
matchIx n (inj₂ record { net = net ; pay = (KeyHashObj x) ; attrsSize = attrsSize }) = n ≡ x
matchIx n (inj₂ record { net = net ; pay = (ScriptObj y) ; attrsSize = attrsSize }) = n ≡ y

matchIx? : (n : ℕ) → (a : SAddr) → Dec (matchIx n a)
matchIx? n (inj₁ record { net = net ; pay = (KeyHashObj x) ; stake = stake }) = n ≟ x
matchIx? n (inj₁ record { net = net ; pay = (ScriptObj y) ; stake = stake }) = n ≟ y
matchIx? n (inj₂ record { net = net ; pay = (KeyHashObj x) ; attrsSize = attrsSize }) = n ≟ x
matchIx? n (inj₂ record { net = net ; pay = (ScriptObj y) ; attrsSize = attrsSize }) = n ≟ y


totalOuts : ScriptContext → PubKeyHash → Value
totalOuts (txinfo , _) ph  = balanceSTxOut (filter (λ { (fst , snd) → matchIx? ph fst}) (map proj₂ (STxInfo.txouts txinfo)))

totalIns : ScriptContext → PubKeyHash → Value
totalIns (txinfo , _) ph  = balanceSTxOut (filter (λ { (fst , snd) → matchIx? ph fst}) (map proj₂ (STxInfo.realizedInputs txinfo)))

newValue : ScriptContext → Maybe Value
newValue sc@(txinfo , sp) with getScriptCredential sc
... | nothing = nothing
... | just sh = just (totalOuts sc sh)

oldValue : ScriptContext → Maybe Value
oldValue sc@(txinfo , sp) with getScriptCredential sc
... | nothing = nothing
... | just sh = just (totalIns sc sh)


open import Relation.Nullary.Decidable

checkSigned : PubKeyHash → ScriptContext → Bool
checkSigned ph (txinfo , _) = ⌊ (ph ∈? (STxInfo.vkey txinfo)) ⌋


checkRational : Q.ℚ -> Bool
checkRational (Q.mkℚ (ℤ.pos n) denominator-1 isCoprime) = ⌊ n ≥? 0 ⌋
checkRational (Q.mkℚ (ℤ.negsuc n) denominator-1 isCoprime) = false


checkMinValue : Value -> Bool
checkMinValue v = geq v minValue


ratioValue : Value -> Q.ℚ -> Value
ratioValue v (Q.mkℚ (ℤ.pos n) denominator-1 isCoprime) = N.suc ((v * n) / (N.suc denominator-1))
ratioValue v (Q.mkℚ (ℤ.negsuc n) denominator-1 isCoprime) = N.suc ((v * n) / (N.suc denominator-1))

checkBuyerPayment : PubKeyHash -> Value -> Q.ℚ -> ScriptContext -> Bool
checkBuyerPayment pkh v r ctx = ⌊ totalOuts ctx pkh ≟ (_+_ {{addValue}} (((totalIns ctx pkh) - feeValue) - ratioValue v r) v) ⌋

checkOwnerPayment : PubKeyHash -> Value -> Q.ℚ -> ScriptContext -> Bool
checkOwnerPayment pkh v (Q.mkℚ (ℤ.pos n) denominator-1 isCoprime) ctx =
  ⌊ totalOuts ctx pkh ≥? (_+_ {{addValue}} (totalIns ctx pkh) ((v * n) / (N.suc denominator-1)))  ⌋
checkOwnerPayment pkh v (Q.mkℚ (ℤ.negsuc n) denominator-1 isCoprime) ctx = false

agdaValidator : Params -> Label -> Input -> ScriptContext -> Bool
agdaValidator par (Always q o) inp ctx = (case inp of λ where
  (Update v r) -> checkSigned o ctx && checkRational r &&
                  checkMinValue v && (newValue ctx == just v) &&
                  (newLabel ctx == just (Always r o)) && continuing ctx
  (Exchange pkh amt) -> ((oldValue ctx) == (maybeMap (_+_ {{addValue}} amt) (newValue ctx))) &&
                        (newLabel ctx == just (Always q o)) &&
                        checkOwnerPayment o amt q ctx && checkBuyerPayment pkh amt q ctx &&
                        checkMinValue amt && continuing ctx 
  Close -> checkSigned o ctx && not (continuing ctx) ) 


dexValidator : Params → Maybe SData → Maybe SData → List SData → Bool
dexValidator par (just (inj₁ (inj₁ x))) (just (inj₁ (inj₂ y))) (inj₂ y₁ ∷ []) =
  agdaValidator par x y y₁
dexValidator _ _ _ _ = false

