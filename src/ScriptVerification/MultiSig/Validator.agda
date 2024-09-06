open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.MultiSig.Datum
open import Relation.Binary using (REL; Decidable)
open import Level using (Level; _⊔_; suc)
open import Data.Maybe renaming (map to maybeMap)
open import Data.List using (filter)

open import ScriptVerification.Prelude MultiSigData

module ScriptVerification.MultiSig.Validator where

PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

open import ScriptVerification.SymbolicData MultiSigData
open import ScriptVerification.LedgerImplementation SData SData
open import Ledger.Transaction using (TransactionStructure)
open TransactionStructure SVTransactionStructure
open import ScriptVerification.AbstractImplementation SData SData valContext
open import ScriptVerification.Lib SData SData valContext
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions

-- Actions
-- Create MultiSig params
-- pay into multisig no validation needed
-- redeem requires signatories more than params

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

-- You get the Ix input of spend script
-- Then you lookup the realized inputs
-- Then you lookup the txouts
--

-- TODO: Look into this
getPaymentCredential : STxOut → ℕ
getPaymentCredential (inj₁ record { net = net ; pay = (inj₁ x) ; stake = stake } , snd) = x
getPaymentCredential (inj₁ record { net = net ; pay = (inj₂ y) ; stake = stake } , snd) = y
getPaymentCredential (inj₂ record { net = net ; pay = (inj₁ x) ; attrsSize = attrsSize } , snd) = x
getPaymentCredential (inj₂ record { net = net ; pay = (inj₂ y) ; attrsSize = attrsSize } , snd) = y

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
matchIx n (inj₁ record { net = net ; pay = (inj₁ x) ; stake = stake }) = n ≡ x
matchIx n (inj₁ record { net = net ; pay = (inj₂ y) ; stake = stake }) = n ≡ y
matchIx n (inj₂ record { net = net ; pay = (inj₁ x) ; attrsSize = attrsSize }) = n ≡ x
matchIx n (inj₂ record { net = net ; pay = (inj₂ y) ; attrsSize = attrsSize }) = n ≡ y

matchIx? : (n : ℕ) → (a : SAddr) → Dec (matchIx n a)
matchIx? n (inj₁ record { net = net ; pay = (inj₁ x) ; stake = stake }) = n ≟ x
matchIx? n (inj₁ record { net = net ; pay = (inj₂ y) ; stake = stake }) = n ≟ y
matchIx? n (inj₂ record { net = net ; pay = (inj₁ x) ; attrsSize = attrsSize }) = n ≟ x
matchIx? n (inj₂ record { net = net ; pay = (inj₂ y) ; attrsSize = attrsSize }) = n ≟ y

-- Get the value of txouts for own script
newValue : ScriptContext → Maybe Value
newValue sc@(txinfo , sp) with getScriptCredential sc
... | nothing = nothing
... | just sh = just (balanceSTxOut (filter (λ { (fst , snd) → matchIx? sh fst}) (map proj₂ (STxInfo.txouts txinfo))))

oldValue : ScriptContext → Maybe Value
oldValue sc@(txinfo , sp) with getScriptCredential sc
... | nothing = nothing
... | just sh = just (balanceSTxOut (filter (λ { (fst , snd) → matchIx? sh fst}) (map proj₂ (STxInfo.realizedInputs txinfo))))

compareScriptValues : {ℓ : Level}{r : REL ℕ ℕ ℓ} → Decidable r → Maybe Value → Maybe Value → Bool
compareScriptValues r (just ov) (just nv) = ⌊ r ov nv ⌋
compareScriptValues r _ _ = false

-- TODO: Implement this
checkSigned : PubKeyHash → ScriptContext → Bool
checkSigned = λ x x₁ → true

-- TODO: Implement this
query : PubKeyHash → List PubKeyHash → Bool
query = λ x x₁ → true

-- TODO: Implement this
checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v ctx = true

-- TODO: Implement this
expired : ℕ -> ScriptContext -> Bool
expired slot ctx = true

multiSigValidator' : MultiSig → Label → Input → ScriptContext → Bool

multiSigValidator' param Holding (Propose v pkh slot) ctx =
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

-- Originally Pay does not take in a value
-- multiSigValidator' param (Collecting v pkh slot sigs) Pay ctx =
multiSigValidator' param (Collecting v pkh slot sigs) Pay ctx =
  (length sigs) ≥ᵇ MultiSig.minNumSignatures param
   ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → checkPayment pkh v ctx
                       ∧ compareScriptValues _≟_ (oldValue ctx) (maybeMap (_+_ {{addValue}} v) (newValue ctx))
                       ∧ false

      (just (Collecting _ _ _ _)) → false)

multiSigValidator' param (Collecting v pkh slot sigs) Cancel ctx =
  (newValue ctx == oldValue ctx)
  ∧ (case (newLabel ctx) of λ where
      nothing → false
      (just Holding) → expired slot ctx
      (just (Collecting _ _ _ _)) → false)

multiSigValidator : MultiSig → Maybe SData → Maybe SData → List SData → Bool
multiSigValidator m (just (inj₁ (inj₁ x))) (just (inj₁ (inj₂ y))) (inj₂ y₁ ∷ []) =
  multiSigValidator' m x y y₁
multiSigValidator _ _ _ _ = false

