{-# OPTIONS --safe #-}

module Ledger.Conway.Specification.Test.Examples.MultiSig.Validator where

open import Ledger.Prelude

open import Ledger.Conway.Specification.Test.Examples.MultiSig.Datum
open import Ledger.Conway.Specification.Test.Prelude MultiSigData
open import Ledger.Conway.Specification.Transaction
open import Ledger.Conway.Specification.Test.SymbolicData MultiSigData

open import Data.List using (filter)
open import Data.Maybe renaming (map to maybeMap)
open import Relation.Binary using (REL; Decidable)

PubKeyHash : Type
PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

--TODO: Implement show properly
instance
  ShowMultiSigData : Show MultiSigData
  ShowMultiSigData = mkShow (λ x → "")

open import Ledger.Conway.Specification.Test.LedgerImplementation SData SData
open TransactionStructure SVTransactionStructure
open Implementation

-- Make this get all output datums
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

-- TODO: Look into this
getPaymentCredential : STxOut → ℕ
getPaymentCredential (inj₁ record { net = net ; pay = (KeyHashObj x) ; stake = stake } , snd) = x
getPaymentCredential (inj₁ record { net = net ; pay = (ScriptObj x) ; stake = stake } , snd) = x
getPaymentCredential (inj₂ record { net = net ; pay = (KeyHashObj x) ; attrsSize = attrsSize } , snd) = x
getPaymentCredential (inj₂ record { net = net ; pay = (ScriptObj x) ; attrsSize = attrsSize } , snd) = x

-- TODO: look into Ledger.address version of getscripthash
getScriptCredential' : ℕ → SUTxO → Maybe ℕ
getScriptCredential' ix [] = nothing
getScriptCredential' ix (((txid' , ix') , txout) ∷ utxos) with ix ≟ ix'
... | no ¬a = getScriptCredential' ix utxos
... | yes a = just (getPaymentCredential txout)

--TODO: Handle cases other than spend
getScriptCredential : ScriptContext → Maybe ℕ
getScriptCredential (fst , Rwrd x) = nothing
getScriptCredential (fst , Mint x) = nothing
getScriptCredential (txinfo , Spend (txid , ix)) = getScriptCredential' ix (STxInfo.realizedInputs txinfo)
getScriptCredential (fst , Empty) = nothing

balanceSTxOut : List STxOut → Value
balanceSTxOut txout = foldr (_+_ {{addValue}}) 0 (map (λ {(_ , v , _) → v}) txout)

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

compareScriptValues : {ℓ : Level}{r : REL ℕ ℕ ℓ} → Decidable r → Maybe Value → Maybe Value → Bool
compareScriptValues r (just ov) (just nv) = ⌊ r ov nv ⌋
compareScriptValues r _ _ = false


checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v (txinfo , _) = any (λ { (fst , val , snd) → v == val}) ((filter (λ { (fst , snd) → matchIx? pkh fst}) (map proj₂ (STxInfo.txouts txinfo))))


open import Relation.Nullary.Decidable

-- I think the signatories should just contain the signature
-- The agda implementation has  sig == signature ctx
checkSigned : PubKeyHash → ScriptContext → Bool
checkSigned ph (txinfo , _) = ⌊ (ph ∈? (STxInfo.vkey txinfo)) ⌋

query : PubKeyHash → List PubKeyHash → Bool
query ph xs = any (λ k →  ⌊ ph ≟ k ⌋) xs

--checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
--checkPayment pkh v ctx = ⌊ totalOuts ctx pkh ≟ (_+_ {{addValue}} ((totalIns ctx pkh)) v) ⌋


{-
balanceSTxOut : List STxOut → Value
balanceSTxOut txout = foldr (_+_ {{addValue}}) 0 (map (λ {(_ , v , _) → v}) txout)
totalOuts : ScriptContext → PubKeyHash → Value
totalOuts (txinfo , _) ph  = balanceSTxOut (filter (λ { (fst , snd) → matchIx? ph fst}) (map proj₂ (STxInfo.txouts txinfo)))

checkPayment :: PaymentPubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v ctx = case filter
  (\i -> (txOutAddress i == (pubKeyHashAddress (unPaymentPubKeyHash pkh))))
  (txInfoOutputs (scriptContextTxInfo ctx)) of
  os -> any (\o -> txOutValue o == v) os
-}
expired : ℕ -> ScriptContext -> Bool
expired slot (txinfo , _) = maybe (λ deadline →  ⌊ slot >? deadline ⌋)
                                     false
                                     (proj₂ (STxInfo.txvldt txinfo))

multiSigValidator' : MultiSig → Label → Input → ScriptContext → Bool

multiSigValidator' param Holding (Propose v pkh slot) ctx =
  (oldValue ctx == newValue ctx) ∧
  compareScriptValues _≟_ (oldValue ctx) (newValue ctx)
  ∧ compareScriptValues _≥?_ (oldValue ctx) (just v)
  ∧ ⌊ v ≥? 0 ⌋
  ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → false
      (just (Collecting v' pkh' slot' sigs')) →
                                      (v == v')
                                      ∧ (pkh == pkh')
                                      ∧ (slot == slot')
                                      ∧ (sigs' == []) )

multiSigValidator' param Holding _ ctx = false

multiSigValidator' param (Collecting _ _ _ _) (Propose _ _ _) ctx = false

multiSigValidator' param (Collecting v pkh slot sigs) (Add sig) ctx = 
 compareScriptValues _≟_ (oldValue ctx) (newValue ctx) -- should this be equal or _≤_
  ∧ checkSigned sig ctx
  ∧ query sig (MultiSig.signatories param)
  ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → false
      (just (Collecting v' pkh' slot' sigs')) →
        (v == v')
        ∧ (pkh == pkh')
        ∧ (slot == slot')
        ∧ (sigs' == sig ∷ sigs)) -- Make this an order agnostic comparison?

multiSigValidator' param (Collecting v pkh slot sigs) Pay ctx =
 ⌊ (length sigs) ≥? MultiSig.minNumSignatures param ⌋
   ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → checkPayment pkh v ctx
                       ∧ compareScriptValues _≟_ (oldValue ctx) (maybeMap (_+_ {{addValue}} v) (newValue ctx))

      (just (Collecting _ _ _ _)) → false) 

multiSigValidator' param (Collecting v pkh slot sigs) Cancel ctx =
  compareScriptValues _≟_ (oldValue ctx) (newValue ctx)
  ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → expired slot ctx
      (just (Collecting _ _ _ _)) → false)


multiSigValidator : MultiSig → Maybe SData → Maybe SData → List SData → Bool
multiSigValidator m (just (inj₁ (inj₁ x))) (just (inj₁ (inj₂ y))) (inj₂ y₁ ∷ []) =
  multiSigValidator' m x y y₁
multiSigValidator _ _ _ _ = false


