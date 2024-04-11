{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS -Wno-orphans -Wno-missing-fields #-}
module UtxowSpec (spec) where

import Control.Monad ( foldM )

import Data.Text

import Test.Hspec ( Spec, describe, it )
import Test.HUnit ( (@?=) )

import Lib

(.->) :: a -> b -> (a, b)
(.->) = (,)

initParams :: PParams
initParams = MkPParams
  { a = 1
  , b = 5
  , maxBlockSize = 1000
  , maxTxSize = 100
  , maxHeaderSize = 100
  , maxValSize = 1000
  , minUTxOValue = 0
  , poolDeposit = 10
  , emax = 10
  , pv = (1, 0)
  , coinsPerUTxOWord = 1
  }

initEnv :: UTxOEnv
initEnv = MkUTxOEnv {slot = 0, pparams = initParams}

a0 :: Addr
a0 = 0

a1 :: Addr
a1 = 1

a2 :: Addr
a2 = 2

initUTxO :: UTxO
initUTxO = [ (0,  0) .-> (a0, (1000, (Nothing, Nothing))) ]

initState :: UTxOState
initState = MkUTxOState {utxo = initUTxO, fees = 0}

data SimpleTxBody = MkSimpleTxBody
  { stxins     :: [TxIn]
  , srefInputs :: [TxIn]
  , stxouts    :: [(Ix, TxOut)]
  , stxvldt    :: (Maybe Integer, Maybe Integer)
  , stxid      :: TxId
  , stxcerts   :: [TxCert]}

bodyFromSimple :: PParams -> SimpleTxBody -> TxBody
bodyFromSimple pp stxb = let s = 5 in MkTxBody
  { txins     = stxins stxb
  , refInputs = srefInputs stxb
  , txouts    = stxouts stxb
  , txfee     = (a pp) * s + (b pp)
  , txvldt    = stxvldt stxb
  , txsize    = s
  , txid      = stxid stxb
  , txcerts   = stxcerts stxb}

testTxBody1 :: TxBody
testTxBody1 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins     = [(0, 0)]
  , srefInputs = [(0, 0)]
  , stxouts    = [ 0 .-> (a0, (890, (Nothing, Nothing)))
                 , 1 .-> (a1, (100, (Nothing, Nothing))) ]
  , stxvldt    = (Nothing, Just 10)
  , stxid      = 1
  , stxcerts   = []}

testTx1 :: Tx
testTx1 = MkTx
  { body = testTxBody1
  , wits = MkTxWitnesses { vkSigs = [(0, 1)], scripts = [], txdats = [], txrdmrs = [] }
  , txAD = Nothing }

testTxBody2 :: TxBody
testTxBody2 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins     = [(1, 1)]
  , srefInputs = [(1, 1)]
  , stxouts    = [ 0 .-> (a2, (10, (Nothing, Nothing)))
                 , 1 .-> (a1, (80, (Nothing, Nothing))) ]
  , stxvldt    = (Nothing, Just 10)
  , stxid      = 2
  , stxcerts   = []}

testTx2 :: Tx
testTx2 = MkTx
  { body = testTxBody2
  , wits = MkTxWitnesses { vkSigs = [(1, 3)], scripts = [], txdats = [], txrdmrs = [] }
  , txAD = Nothing }

utxowSteps :: UTxOEnv -> UTxOState -> [Tx] -> ComputationResult Text UTxOState
utxowSteps = foldM . utxowStep

deriving instance Eq UTxOState

spec :: Spec
spec = do
  describe "utxowSteps" $
    it "results in the expected state" $
      utxowSteps initEnv initState [testTx1, testTx2] @?= Success (MkUTxOState
        { utxo = [ (1,0) .-> (a0, (890, (Nothing, Nothing)))
                 , (2,0) .-> (a2, (10,  (Nothing, Nothing)))
                 , (2,1) .-> (a1, (80,  (Nothing, Nothing))) ]
        , fees = 20
        })
