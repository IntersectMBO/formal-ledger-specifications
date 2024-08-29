open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.MultiSigDatum
open import Relation.Binary using (REL; Decidable)
open import Level using (Level; _⊔_; suc)
open import Data.Maybe renaming (map to maybeMap)

open import ScriptVerification.Prelude MultiSigData

module ScriptVerification.MultiSig where

PubKeyHash = ℕ

record MultiSig : Set where
  field
    signatories : List PubKeyHash
    minNumSignatures : ℕ

ScriptContext = STxInfo × SScriptPurpose
SData = MultiSigData ⊎ ScriptContext

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

-- DatumToSymbolic (inj₁ (proj₁ d))

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
-- open TransactionStructure SVTransactionStructure
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

open import Data.List using (filter)

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
      (just Holding) → false -- the below check was originally in holding 
                  --   checkPayment pkh v ctx
                    --   ∧ compareScriptValues _≟_ (oldValue ctx) (maybeMap (_+_ {{addValue}} val) (newValue ctx))
                                                                                            -- was v
      (just (Collecting _ _ _ _)) →
                    checkPayment pkh v ctx
                     ∧ compareScriptValues _≟_ (oldValue ctx) (maybeMap (_+_ {{addValue}} v) (newValue ctx)))

                     -- note this was wrong: (maybeMap (_+_ {{addValue}} val) (newValue ctx)))

        -- this was true
        -- true)

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

impMultiSig : MultiSig
impMultiSig = record { signatories = [] ; minNumSignatures = 0 }

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (multiSigValidator impMultiSig)

initEnv : UTxOEnv
initEnv = createEnv 0

initTxOut : TxOut
initTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000 , just (inj₂ (inj₁ (inj₁ Holding))) , nothing

script : TxIn × TxOut
script = (6 , 6) , initTxOut

initState : UTxO
initState = fromList' (script ∷ (createInitUtxoState 5 1000000000000))

succeedTxOut : TxOut
succeedTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000 , just (inj₁ (inj₁ (inj₁ (Collecting 100000000000 2 3 [])))) , nothing


failTxOut : TxOut
failTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 10 , just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3
                                                                     (5 ∷ []))))) -- failing because signed by wallet 5
                                                                     , nothing


succeedTx : Tx
succeedTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , succeedTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
                         ; mint = 0
                         ; txvldt = nothing , nothing
                         ; txcerts = []
                         ; txwdrls = ∅
                         ; txvote = []
                         ; txprop = []
                         ; txdonation = 0
                         ; txup = nothing
                         ; txADhash = nothing
                         ; netwrk = just tt
                         ; txsize = 10
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ (Propose 100000000000 2 3)) ,
                                                      (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

failTx : Tx
failTx = record { body = record
                         { txins = Ledger.Prelude.fromList ((6 , 6) ∷ (5 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , failTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                                 , (1000000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
                         ; mint = 0
                         ; txvldt = nothing , nothing
                         ; txcerts = []
                         ; txwdrls = ∅
                         ; txvote = []
                         ; txprop = []
                         ; txdonation = 0
                         ; txup = nothing
                         ; txADhash = nothing
                         ; netwrk = just tt
                         ; txsize = 10
                         ; txid = 7
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats = fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ (Propose 1 2 3)) ,
                                                      (5 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }

succeedTxOut' : TxOut
succeedTxOut' = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 700000000000 , just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3 [])))) , nothing


-- need to update the transaction id
succeedTx' : Tx
succeedTx' = record { body = record
                         { txins = Ledger.Prelude.fromList ((7 , 6) ∷ (7 , 5) ∷ [])
                         ; refInputs = ∅
                         ; txouts = fromListIx ((6 , succeedTxOut')
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1090000000000 - 10000000000) , nothing , nothing))
                                               ∷ [])
                         ; txfee = 10000000000
                         ; mint = 0
                         ; txvldt = nothing , nothing
                         ; txcerts = []
                         ; txwdrls = ∅
                         ; txvote = []
                         ; txprop = []
                         ; txdonation = 0
                         ; txup = nothing
                         ; txADhash = nothing
                         ; netwrk = just tt
                         ; txsize = 10
                         ; txid = 8
                         ; collateral = Ledger.Prelude.fromList ((7 , 5) ∷ [])
                         ; reqSigHash = ∅
                         ; scriptIntHash = nothing
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 12) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , 6) ,
                                                      inj₁ (inj₂ Pay) ,
                                                      (7 , 5)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }


-- (Collecting v pkh slot sigs) Pay ctx
-- multiSigValidator' param Holding (Propose v pkh slot) ctx =


succeedState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
succeedState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) succeedTx initState)

evalSucceedTx : Bool
evalSucceedTx = evalScripts succeedTx succeedState

failState : List (Script × List Implementation.Data × Implementation.ExUnits × Implementation.CostModel)
failState = (collectPhaseTwoScriptInputs (UTxOEnv.pparams initEnv) failTx initState)

evalFailTx : Bool
evalFailTx = evalScripts failTx failState

⟦_⟧2,_,_,_ : P2Script → ⊤ → ℕ × ℕ → List SData → Maybe ℕ × Maybe ℕ -- (List STxOut)
⟦ s ⟧2, cm , eu , [] = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ []) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ []) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ inj₁ x₂ ∷ d) = nothing , nothing
⟦ s ⟧2, cm , eu , (x ∷ x₁ ∷ inj₂ y ∷ d) = (oldValue y) , (newValue y)

evalScripts' : Tx → List (Script × List SData × (ℕ × ℕ) × ⊤) → Maybe ℕ × Maybe ℕ -- ℕ × ℕ
evalScripts' tx [] = nothing , nothing -- 0 , 0
evalScripts' tx ((inj₁ tl , d , eu , cm) ∷ Γ) = nothing , nothing -- 0 , 0
evalScripts' tx ((inj₂ ps , d , eu , cm) ∷ Γ) = ⟦ ps ⟧2, cm , eu , d -- Evalscripts' tx Γ

-- test = evalScripts' succeedTx succeedState
letsGo : ComputationResult String UTxOState → ComputationResult String UTxOState
letsGo (success x) = UTXO-step initEnv x succeedTx'
letsGo (failure x) = failure x

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  -- need to check that the state is non-empty otherwise evalScripts will always return true
  _ : notEmpty succeedState ≡ ⊤
  _ = refl

  -- new value , old value
 -- _ : test ≡ (1790000000000 , 1800000000000)
 -- _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  succeedExample : ComputationResult String UTxOState
  succeedExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ  succeedTx

  _ : isSuccess succeedExample ≡ true
  _  = refl

  se : ComputationResult String UTxOState
  se = letsGo succeedExample

  _ : isSuccess se ≡ true
  _ = refl

  -- Compute the result of running the UTXO rules on the succeedTx transaction
  failExample : ComputationResult String UTxOState
  failExample = UTXO-step initEnv ⟦ initState , 0 , ∅ , 0 ⟧ᵘ  failTx

  _ : isSuccess failExample ≡ false
  _  = refl

-- TxOuts
-- just
{-

((inj₁ (record { net = tt ; pay = inj₂ 777 ; stake = inj₂ 777 }) ,
  200000000000 , just (inj₁ (inj₁ (Collecting 1 2 3 []))))
 ∷
 (inj₁ (record { net = tt ; pay = inj₁ 5 ; stake = inj₁ 5 }) ,
  1590000000000 , nothing)
 ∷ [])

success
⟦
((4 , 4) ,
 inj₁ (record { net = tt ; pay = inj₁ 4 ; stake = inj₁ 4 }) ,
 1000000000000 , nothing , nothing)
∷
((3 , 3) ,
 inj₁ (record { net = tt ; pay = inj₁ 3 ; stake = inj₁ 3 }) ,
 1000000000000 , nothing , nothing)
∷
((2 , 2) ,
 inj₁ (record { net = tt ; pay = inj₁ 2 ; stake = inj₁ 2 }) ,
 1000000000000 , nothing , nothing)
∷
((1 , 1) ,
 inj₁ (record { net = tt ; pay = inj₁ 1 ; stake = inj₁ 1 }) ,
 1000000000000 , nothing , nothing)
∷
((7 , 6) ,
 inj₁ (record { net = tt ; pay = inj₂ 777 ; stake = inj₂ 777 }) ,
 800000000000 ,
 just (inj₁ (inj₁ (inj₁ (Collecting 1 2 3 [])))) , nothing)
∷
((7 , 5) ,
 inj₁ (record { net = tt ; pay = inj₁ 5 ; stake = inj₁ 5 }) ,
 990000000000 , nothing , nothing)
∷ []
-}
