open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.MultiSig.Datum
open import ScriptVerification.MultiSig.Validator
open import ScriptVerification.Prelude MultiSigData
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
open import Data.List using (filter)

module ScriptVerification.MultiSig.Lib where


-- Propose

{-
record Proposal : Set where
  field script : PlutusScript
-}
  

{-
record STxInfo : Set where
  field realizedInputs : SUTxO
        txouts         : List (SIx × STxOut)
        fee            : SValue
        mint           : SValue
        -- not adding txcerts as rarely used
        txwdrls        : List (SRwdAddr  × Coin)
        txvldt         : Maybe SSlot × Maybe SSlot
        vkey           : ℙ SKeyHash
        txdats         : List D -- Hash is id for datums therfore List D can replicate: DataHash ⇀ Datum
        txid           : STxId
-}

-- gsa : (scriptHash : ℕ) → UTxOState → UTxO
-- gsa x sh = getScriptAddress x (UTxOState.utxo sh)


-- To check for regular scripts we just need to search for a txout containing the script credential
-- the script credential is the script hash so we just check that pay is inj₂ indicating a scriptHash instead of a KeyHash
-- Then if the scripthashed match then that txout contains the script


-- We can check inline scripts by looking at txouts
{-
tst : (scriptHash : ℕ) → TxOut → Bool
tst sh (fst , fst₁ , fst₂ , just (inj₁ x)) = {!!}
tst sh (fst , fst₁ , fst₂ , just (inj₂ (fst₃ , snd))) = {!!} -- script here
tst sh (fst , fst₁ , fst₂ , nothing) = {!!}
-}

open import Relation.Nullary

defaultTxBody : TxBody
defaultTxBody = record
                  { txins = ∅
                  ; refInputs = ∅
                  ; txouts =  ∅
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
                  ; txid = 0
                  ; collateral = ∅
                  ; reqSigHash = ∅
                  ; scriptIntHash = nothing
                  }

matchScriptAddress : (scriptHash : ℕ) → Credential → Set
matchScriptAddress sh (inj₁ x) = ⊥
matchScriptAddress sh (inj₂ y) = True (sh ≟ y)

matchScriptAddress? : (sh : ℕ) → (c : Credential) → Dec (matchScriptAddress sh c)
matchScriptAddress? sh (inj₁ x) = no (λ x₁ → x₁)
matchScriptAddress? sh (inj₂ y) = T? ⌊ (sh ≟ y) ⌋

getScriptUTxO : (scriptHash : ℕ) → UTxO → Maybe (TxIn × TxOut)
getScriptUTxO sh (utxo , prf) = head $ filter (λ { (_ , addr , _) → matchScriptAddress? sh (payCred addr)}) (setToList utxo)

matchWalletHash : (keyHash : ℕ) → Credential → Set
matchWalletHash kh (inj₁ x) = True (kh ≟ x)
matchWalletHash kh (inj₂ y) = ⊥

matchWalletHash? : (sh : ℕ) → (c : Credential) → Dec (matchWalletHash sh c)
matchWalletHash? kh (inj₁ x) = T? ⌊ (kh ≟ x) ⌋
matchWalletHash? kh (inj₂ y) = no (λ x₁ → x₁)

getWalletUTxO : (scriptHash : ℕ) → UTxO → List (TxIn × TxOut)
getWalletUTxO sh (utxo , prf) = filter (λ { (_ , addr , _) → matchWalletHash? sh (payCred addr)}) (setToList utxo)

succeedTxOut' : TxOut
succeedTxOut' = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 700000000000 , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

impMultiSig : MultiSig
impMultiSig = record { signatories = [] ; minNumSignatures = 0 }

multiSigScript : PlutusScript
multiSigScript = 777 , applyScriptWithContext (multiSigValidator impMultiSig)

getLabel : TxOut → Maybe Label
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₁ x))) , snd) = just x
getLabel (fst , fst₁ , just (inj₁ (inj₁ (inj₂ y))) , snd) = nothing
getLabel (fst , fst₁ , just (inj₁ (inj₂ y)) , snd) = nothing
getLabel (fst , fst₁ , just (inj₂ y) , snd) = nothing
getLabel (fst , fst₁ , nothing , snd) = nothing


payScriptTxOut : TxOut → (value : ℕ) → TxOut
payScriptTxOut (fst , txValue , snd) v = fst , txValue - v , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

-- TODO: Throw error here
-- -- (Ix × TxOut)
makePayTxOut : Label → (scriptIx : ℕ) → TxOut → List (ℕ × TxOut)
makePayTxOut Holding ix txo = []
makePayTxOut (Collecting vl pkh x₂ x₃) ix txo =
            (ix , payScriptTxOut txo vl)
            ∷
             (2 , ((inj₁ (record { net = tt ; pay = inj₁ pkh ; stake = inj₁ pkh })) ,
              (vl , nothing , nothing))) ∷ []


-- Assumes a list of filtered waller txins and subtracts a default fee from the head of the list
makeFeeTxOut : List (TxIn × TxOut) → List (ℕ × TxOut)
makeFeeTxOut [] = []
makeFeeTxOut ((txin , (fst , txValue , snd)) ∷ utxos) = (proj₂ txin , fst , txValue - 10000000000 , snd) ∷ []

-- return id of 0 if no txins
getTxId : List (TxIn × TxOut) → ℕ
getTxId xs = maybe (λ x → proj₁ (proj₁ x)) 0 (head xs)

makePayTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makePayTx id state script@(sh , _) w with getScriptUTxO sh (UTxOState.utxo state) | getWalletUTxO w (UTxOState.utxo state)
... | just (scIn , scOut) | wutxo = maybe (λ label →
  just (
  record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txouts = fromListIx (makeFeeTxOut wutxo  ++ makePayTxOut label (proj₂ scIn) scOut)
                         ; txid = id
                         ; collateral = Ledger.Prelude.fromList (map proj₁ wutxo)
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , (proj₁ scIn)) ,
                                                      inj₁ (inj₂ Pay) ,
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }
                ))
  nothing
  (getLabel scOut)
... | _ | _ = nothing


-- TODO: Add error handling
makeProposeTxOut : Label → (scriptIx : ℕ) → TxOut → (v tw d : ℕ) → List (ℕ × TxOut)
makeProposeTxOut Holding ix (fst , txValue , snd) v tw d = (ix , (fst , txValue , (just (inj₁ (inj₁ (inj₁ (Collecting v tw d []))))) , nothing)) ∷ []
makeProposeTxOut _ _ _ _ _ _ = []

makeProposeTx : (id : ℕ) → UTxOState → PlutusScript → (w v tw d : ℕ) → Maybe Tx
makeProposeTx id state script@(sh , _) w v tw d with getScriptUTxO sh (UTxOState.utxo state) | getWalletUTxO w (UTxOState.utxo state)
... | just (scIn , scOut) | wutxo = maybe (λ label →
  just (
  record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((scIn ∷ []) ++ (map proj₁ wutxo))
                         ; txouts = fromListIx (makeFeeTxOut wutxo ++ makeProposeTxOut label (proj₂ scIn) scOut v tw d )
                         ; txid = id
                         ; collateral = Ledger.Prelude.fromList (map proj₁ wutxo)
                         } ;
                wits = record { vkSigs = fromListᵐ ((w , (_+_ {{addValue}} (getTxId wutxo) w)) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ script) ∷ []) ;
                                txdats =  fromListᵐ ((inj₁ (inj₁ Holding) , inj₁ (inj₁ Holding)) ∷ []) ;
                                txrdmrs = fromListᵐ (((Spend , (proj₁ scIn)) ,
                                                      inj₁ (inj₂ (Propose v -- amount
                                                                          tw -- wallet pkh
                                                                          d)) , -- End Slot
                                                      ((getTxId wutxo) , w)) ∷ []) } ;
                isValid = true ;
                txAD = nothing }
                ))
  nothing
  (getLabel scOut)
... | _ | _ = nothing

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

initState' : UTxO
initState' = fromList' (createInitUtxoState 5 1000000000000)


-- Compute the result of running the UTXO rules on the succeedTx transaction
succeedExample' : ComputationResult String UTxOState → ComputationResult String UTxOState
succeedExample' (success state) = maybe (λ tx → UTXO-step initEnv state tx)
                       (failure "unable to create transaction bla")
                       (makeProposeTx 7
                                      state
                                      multiSigScript
                                      5
                                      100000000000
                                      2
                                      3)
succeedExample' (failure x) = failure x

letsGo : ComputationResult String UTxOState → ComputationResult String UTxOState
letsGo (success x) = maybe (λ tx → UTXO-step initEnv x tx)
                           (failure "unable to create transaction")
                           (makePayTx 8 x multiSigScript 5)
letsGo (failure x) = failure x


succeedTxOut : TxOut
succeedTxOut = inj₁ (record { net = tt ;
                           pay = inj₂ 777 ;
                           stake = inj₂ 777 })
                           , 800000000000
                           , just (inj₁ (inj₁ (inj₁ Holding))) , nothing

succeedTx : Tx
succeedTx = record { body = record defaultTxBody
                         { txins = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         ; txouts = fromListIx ((6 , succeedTxOut)
                                               ∷ (5
                                                 , ((inj₁ (record { net = tt ;
                                                                    pay = inj₁ 5 ;
                                                                    stake = inj₁ 5 }))
                                               -- , 10000000000 , nothing , nothing))
                                               , (1000000000000 - 810000000000) , nothing , nothing))
                                               ∷ [])
                         ; txid = 5
                         ; collateral = Ledger.Prelude.fromList ((5 , 5) ∷ [])
                         } ;
                wits = record { vkSigs = fromListᵐ ((5 , 10) ∷ []) ;
                                -- signature now is first number + txId ≡ second number
                                -- first number is needs to be the id for the script
                                scripts = Ledger.Prelude.fromList ((inj₂ multiSigScript) ∷ []) ;
                                txdats =  ∅ ;
                                txrdmrs = ∅ } ;
                isValid = true ;
                txAD = nothing }

opaque
  unfolding collectPhaseTwoScriptInputs
  unfolding setToList
  unfolding Computational-UTXO
  unfolding outs

  t1 : ComputationResult String UTxOState
  t1 = UTXO-step initEnv ⟦ initState' , 0 , ∅ , 0 ⟧ᵘ  succeedTx
  
  _ : isSuccess t1 ≡ true
  _ = refl

  t2 : ComputationResult String UTxOState
  t2 = succeedExample' t1

  _ : isSuccess t2 ≡ true
  _ = refl

  t3 : ComputationResult String UTxOState
  t3 = letsGo t2

  _ : isSuccess t3 ≡ true
  _ = refl
