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
open import ScriptVerification.MultiSig.OffChain.Lib

module ScriptVerification.MultiSig.OffChain.Pay where

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

makePayTx : (id : ℕ) → UTxOState → PlutusScript → (w : ℕ) → Maybe Tx
makePayTx id state script@(sh , _) w =
  let
    wutxo = getWalletUTxO w (UTxOState.utxo state)
  in
    maybe (λ { (scIn , scOut) → maybe (λ label →
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
            (getLabel scOut)})
          nothing
          (getScriptUTxO sh (UTxOState.utxo state))
