{-# OPTIONS --safe #-}

-- Validator Simulating Accounts on Cardano based on Agda2hs work

open import Ledger.Prelude hiding (fromList; ε); open Computational
open import Ledger.Conway.Specification.Test.Examples.AccountSim.Datum
open import Relation.Binary using (REL; Decidable)
open import Level using (Level; _⊔_; suc)
open import Data.Maybe renaming (map to maybeMap)
open import Data.List using (filter)

open import Data.Bool.Base renaming (_∧_ to _&&_) hiding (if_then_else_)
import Agda.Builtin.Nat as N

open import Ledger.Conway.Specification.Test.Prelude AccountSimData

module Ledger.Conway.Specification.Test.Examples.AccountSim.Validator where

PubKeyHash = ℕ

open import Ledger.Conway.Specification.Test.SymbolicData AccountSimData


instance
  ShowAccountSimData : Show AccountSimData
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

adaValueOf : ℕ -> Value
adaValueOf n = n 


geq : Value -> Value -> Bool
geq v1 v2 =  ⌊ v1 ≥? v2 ⌋

subVal : Value -> Value -> Value
subVal v1 v2 = v1 - v2

instance ValueSub : HasSubtract Value Value
         ValueSub = record { _-_ = λ x y → subVal x y } --subVal


getInlineOutputDatum : STxOut → List AccountSimData → Maybe Datum
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

-- Get the value of txouts for own script
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

query : PubKeyHash → List PubKeyHash → Bool
query ph xs = any (λ k →  ⌊ ph ≟ k ⌋) xs

checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v ctx = ⌊ totalOuts ctx pkh ≟ (_+_ {{addValue}} (totalIns ctx pkh) v) ⌋

expired : ℕ -> ScriptContext -> Bool
expired slot (txinfo , _) = maybe (λ deadline →  ⌊ slot >? deadline ⌋)
                                     false
                                     (proj₂ (STxInfo.txvldt txinfo))



checkMembership : Maybe Value -> Bool
checkMembership (just x) = true
checkMembership nothing = false

checkEmpty : Maybe Value -> Bool
checkEmpty (just x) = x == emptyValue
checkEmpty nothing = false

insert' : PubKeyHash -> Value -> List (ℕ × Value) -> List (ℕ × Value)
insert' pkh val [] = ((pkh , val) ∷ [])
insert' pkh val ((x , y) ∷ xs) = if (pkh == x) then ((pkh , val) ∷ xs) else ((x , y) ∷ (insert' pkh val xs))
  
delete' : PubKeyHash -> List (ℕ × Value) -> List (ℕ × Value)
delete' pkh [] = []
delete' pkh ((x , y) ∷ xs) = if (pkh == x)
  then xs
  else ((x , y) ∷ (delete' pkh xs))

lookup' : ℕ → List (ℕ × Value) → Maybe Value
lookup' x []              = nothing 
lookup' x ((x₁ , y) ∷ xs) = if x == x₁ then just y else lookup' x xs



checkWithdraw : Maybe Value -> ℕ -> Value -> Label -> ScriptContext -> Bool
checkWithdraw nothing _ _ _ _ = false
checkWithdraw (just v) pkh val (Always lab) ctx = geq val emptyValue && geq v val && (newLabel ctx == just (Always (insert' pkh (v - val) lab))) 

checkDeposit : Maybe  Value -> ℕ -> Value ->  Label -> ScriptContext -> Bool
checkDeposit nothing _ _ _ _ = false
checkDeposit (just v) pkh val (Always lab) ctx = geq val emptyValue && (newLabel ctx == just ( Always (insert' pkh (_+_ {{addValue}} v val) lab)))

checkTransfer : Maybe Value -> Maybe Value -> ℕ -> ℕ -> Value -> Label -> ScriptContext -> Bool
checkTransfer nothing _ _ _ _ _ _ = false
checkTransfer (just vF) nothing _ _ _ _ _ = false
checkTransfer (just vF) (just vT) from to val (Always lab) ctx = geq val emptyValue && geq vF val && (from ≠ to) && (newLabel ctx == just (Always (insert' from (vF - val) (insert' to (_+_ {{addValue}} vT val) lab))))

agdaValidator : Label -> Input -> ScriptContext -> Bool
agdaValidator (Always lab) inp ctx = case inp of λ where

    (Open pkh) -> continuing ctx && (checkSigned pkh ctx) && (not (checkMembership (lookup' pkh lab))) &&
                  (newLabel ctx == just (Always (insert' pkh emptyValue lab))) && (newValue ctx == oldValue ctx)

    (Close pkh) -> continuing ctx && (checkSigned pkh ctx) && (checkEmpty (lookup' pkh lab)) &&
                   (newLabel ctx == just (Always (delete' pkh lab))) && (newValue ctx == oldValue ctx)

    (Withdraw pkh val) -> continuing ctx && (checkSigned pkh ctx) && (checkWithdraw (lookup' pkh lab) pkh val (Always lab) ctx) &&
                          ((maybeMap (_+_ {{addValue}} val) (newValue ctx)) == oldValue ctx )

    (Deposit pkh val) -> continuing ctx && checkSigned pkh ctx && checkDeposit (lookup' pkh lab) pkh val (Always lab) ctx &&
                         (newValue ctx == (maybeMap (_+_ {{addValue}} val) (oldValue ctx))) 

    (Transfer from to val) -> continuing ctx && checkSigned from ctx &&
                              checkTransfer (lookup' from lab) (lookup' to lab) from to val (Always lab) ctx &&
                              (newValue ctx == oldValue ctx) 

    Cleanup -> not (continuing ctx) && (lab == [])


accSimValidator : Maybe SData → Maybe SData → List SData → Bool
accSimValidator (just (inj₁ (inj₁ x))) (just (inj₁ (inj₂ y))) (inj₂ y₁ ∷ []) =
  agdaValidator x y y₁
accSimValidator _ _ _ = false

