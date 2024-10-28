open import Ledger.Prelude hiding (fromList; ε); open Computational
open import ScriptVerification.Prelude

module ScriptVerification.MultiSigTudor where

scriptImp : ScriptImplementation String String
scriptImp = record { serialise = id ;
                     deserialise = λ x → just x ;
                     toData' = λ x → "dummy" }


open import ScriptVerification.LedgerImplementation String String ⊤ scriptImp
open import ScriptVerification.Lib String String ⊤ scriptImp
open import Ledger.ScriptValidation SVTransactionStructure SVAbstractFunctions
open import Data.Empty
open import Ledger.Utxo SVTransactionStructure SVAbstractFunctions
open import Ledger.Transaction
open TransactionStructure SVTransactionStructure
open import Ledger.Types.Epoch
open EpochStructure SVEpochStructure
open Implementation
open import Ledger.Utxo.Properties SVTransactionStructure SVAbstractFunctions
open import Ledger.Utxow.Properties SVTransactionStructure SVAbstractFunctions

-- open import Haskell.Prelude
Placeholder = String
POSIXTimeRange = Placeholder
ScriptPurpose = Placeholder
ThreadToken = Placeholder

PubKeyHash = Integer
Value = Nat
Deadline = Nat

{-# COMPILE AGDA2HS Deadline #-}

data Label : Set where
  Holding : Label
  Collecting : Value -> PubKeyHash -> Deadline -> List PubKeyHash -> Label

{-# COMPILE AGDA2HS Label #-}


record ScriptContext : Set where
    field
        inputVal    : Nat
        outputVal   : Nat
        outputLabel : Label
        time        : Deadline
        payTo       : PubKeyHash
        payAmt      : Value
        signature   : PubKeyHash
open ScriptContext public



data Input : Set where
  Propose : Value -> PubKeyHash -> Deadline -> Input
  Add     : PubKeyHash -> Input
  Pay     : Input
  Cancel  : Input

{-# COMPILE AGDA2HS Input #-}

query : PubKeyHash -> List PubKeyHash -> Bool
query pkh [] = False
query pkh (x ∷ l') = (x == pkh) || query pkh l'

insert : PubKeyHash -> List PubKeyHash -> List PubKeyHash
insert pkh [] = (pkh ∷ [])
insert pkh (x ∷ l') = if (pkh == x)
  then (x ∷ l')
  else (x ∷ (insert pkh l'))

--interesting complication if using "x == pkh -> x :: l'" instead

{-# COMPILE AGDA2HS query #-}
{-# COMPILE AGDA2HS insert #-}

-- I think the signatories should just contain the signature
-- The agda implementation has  sig == signature ctx
checkSigned : PubKeyHash -> ScriptContext -> Bool
checkSigned sig ctx = sig == signature ctx

checkPayment : PubKeyHash -> Value -> ScriptContext -> Bool
checkPayment pkh v ctx = pkh == payTo ctx && v == payAmt ctx

expired : Deadline -> ScriptContext -> Bool
expired d ctx = (time ctx) > d

newLabel : ScriptContext -> Label
newLabel ctx = outputLabel ctx

oldValue : ScriptContext -> Value
oldValue ctx = inputVal ctx

newValue : ScriptContext -> Value
newValue ctx = outputVal ctx

geq : Value -> Value -> Bool
geq val v = val >= v

gt : Value -> Value -> Bool
gt val v = val > v

emptyValue : Value
emptyValue = 0

record Params : Set where
    field
        authSigs  : List PubKeyHash
        nr : Nat
open Params public


{-# COMPILE AGDA2HS Params #-}

agdaValidator : Params -> Label -> Input -> ScriptContext -> Bool
agdaValidator param dat red ctx = case dat of λ where

  Holding -> case red of λ where

    (Propose v pkh d) ->
             (newValue ctx == oldValue ctx)
             && geq (oldValue ctx) v
             && gt v emptyValue
             && (case (newLabel ctx) of λ where
      Holding -> False

      (Collecting v' pkh' d' sigs') -> v == v' && pkh == pkh' && d == d' && sigs' == [] )
    (Add _) -> False
    Pay -> False
    Cancel -> False

  (Collecting v pkh d sigs) -> case red of λ where

    (Propose _ _ _) -> False

    (Add sig) ->
      newValue ctx == oldValue ctx
      && checkSigned sig ctx
      && query sig (authSigs param)
      && (case (newLabel ctx) of λ where
        Holding -> False
        (Collecting v' pkh' d' sigs') ->
          v == v'
          && pkh == pkh'
          && d == d'
          && sigs' == insert sig sigs )








    Pay ->
      (lengthNat sigs) >= (nr param)
      && (case (newLabel ctx) of λ where
        Holding -> checkPayment pkh v ctx
                   && oldValue ctx == ((newValue ctx) + v)
      (Collecting _ _ _ _) -> False )

    Cancel -> newValue ctx == oldValue ctx
    && (case (newLabel ctx) of λ where
      Holding -> expired d ctx
      (Collecting _ _ _ _) -> False)


{-# COMPILE AGDA2HS agdaValidator #-}
