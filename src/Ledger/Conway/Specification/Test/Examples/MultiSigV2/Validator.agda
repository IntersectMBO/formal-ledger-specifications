{-# OPTIONS --safe #-}

-- Version 2 of MultiSig contract adapted from updated Agda2hs code

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.MultiSigV2.Datum
open import Relation.Binary using (REL; Decidable)
open import Level using (Level; _⊔_; suc)
open import Data.Maybe renaming (map to maybeMap)
open import Data.List using (filter)

open import Data.Bool.Base renaming (_∧_ to _&&_) hiding (if_then_else_)
import Agda.Builtin.Nat as N
open import Ledger.Conway.Specification.Test.Prelude MultiSigData

module Ledger.Conway.Specification.Test.Examples.MultiSigV2.Validator where

PubKeyHash = ℕ

record Params : Set where
  field
    authSigs         : List PubKeyHash
    minNumSignatures : ℕ
    maxWait          : ℕ
open Params

open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData


instance
  ShowMultiSigData : Show MultiSigData
  ShowMultiSigData = mkShow (λ x → "")

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
minValue = 5000000

adaValueOf : ℕ -> Value
adaValueOf n = n 


geq : Value -> Value -> Bool
geq v1 v2 =  ⌊ v1 ≥? v2 ⌋

gt : Value -> Value -> Bool
gt v1 v2 =  ⌊ v1 >? v2 ⌋

subVal : Value -> Value -> Value
subVal v1 v2 = v1 - v2

instance ValueSub : HasSubtract Value Value
         ValueSub = record { _-_ = λ x y → subVal x y } 


getInlineOutputDatum : STxOut → List MultiSigData → Maybe Datum
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

insert' : PubKeyHash -> List PubKeyHash -> List PubKeyHash
insert' pkh [] = (pkh ∷ [])
insert' pkh (x ∷ l') = if (pkh == x)
  then (x ∷ l')
  else (x ∷ (insert' pkh l'))

open import Relation.Nullary.Decidable

checkSigned : PubKeyHash → ScriptContext → Bool
checkSigned ph (txinfo , _) = ⌊ (ph ∈? (STxInfo.vkey txinfo)) ⌋

query : PubKeyHash → List PubKeyHash → Bool
query ph xs = any (λ k →  ⌊ ph ≟ k ⌋) xs

checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v ctx = if checkSigned pkh ctx
                            then ⌊ totalOuts ctx pkh ≟ ((_+_ {{addValue}} (totalIns ctx pkh) v) - feeValue) ⌋
                            else ⌊ totalOuts ctx pkh ≟ (_+_ {{addValue}} (totalIns ctx pkh) v) ⌋


expired : ℕ -> ScriptContext -> Bool
expired deadline (txinfo , _) = maybe (λ slot → ⌊ slot ≥? deadline ⌋)
                                     false
                                     (proj₁ (STxInfo.txvldt txinfo))


notTooLate : Params -> ℕ -> ScriptContext -> Bool
notTooLate par deadline (txinfo , _) = maybe (λ now →  ⌊ (_+_ {{addNat}} now (maxWait par))  >? deadline ⌋)
                                     false
                                     (proj₂ (STxInfo.txvldt txinfo))



agdaValidator : Params -> Label -> Input -> ScriptContext -> Bool
agdaValidator param lab red ctx = case (lab , red) of λ where
    (Holding , (Propose v pkh d)) ->  
      (newValue ctx == oldValue ctx) && geq (fromMaybe 0 (oldValue ctx)) v &&
      geq v minValue && notTooLate param d ctx && continuing ctx &&
      (case (newLabel ctx) of λ where
        (just (Collecting v' pkh' d' sigs')) -> (v == v') && (pkh == pkh') && (d == d') && (sigs' == [])
        _ -> false )
    ((Collecting v pkh d sigs) , (Add sig)) ->
      (newValue ctx == oldValue ctx) && checkSigned sig ctx && query sig (authSigs param) &&
      continuing ctx && (case (newLabel ctx) of λ where
        (just (Collecting v' pkh' d' sigs')) -> (v == v') && (pkh == pkh') && (d == d') && (sigs' == insert' sig sigs)
        _ -> false)
    ((Collecting v pkh d sigs) , Pay) ->
      geq (length sigs) (minNumSignatures param) && continuing ctx && (case (newLabel ctx) of λ where
        (just Holding) -> (checkPayment pkh v ctx) && (oldValue ctx == (maybeMap (_+_ {{addValue}} v) (newValue ctx)))
        _ -> false)
    ((Collecting v pkh d sigs) , Cancel) ->
      (newValue ctx == oldValue ctx) && continuing ctx &&
      (case (newLabel ctx) of λ where
        (just Holding) -> expired d ctx 
        _ -> false) 
    (Holding , Cleanup) -> gt minValue (fromMaybe 0 (oldValue ctx)) && not (continuing ctx)
    _ -> false 


multiSigValidator : Params → Maybe SData → Maybe SData → List SData → Bool
multiSigValidator m (just (inj₁ (inj₁ x))) (just (inj₁ (inj₂ y))) (inj₂ y₁ ∷ []) =
  agdaValidator m x y y₁
multiSigValidator _ _ _ _ = false


