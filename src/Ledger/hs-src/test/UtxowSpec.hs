{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS -Wno-orphans -Wno-missing-fields #-}
module UtxowSpec (spec) where

import Control.Monad ( foldM )

import Test.Hspec ( Spec, describe, it )
import Test.HUnit ( (@?=) )

import Lib

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
  , pv = (1, 0) }

initEnv :: UTxOEnv
initEnv = MkUTxOEnv {slot = 0, pparams = initParams}

ada :: Coin
ada = 0

a0 :: Addr
a0 = 0

a1 :: Addr
a1 = 1

a2 :: Addr
a2 = 2

initUTxO :: UTxO
initUTxO = [ (0,  0) .-> (a0, (1000, Nothing)) ]

initState :: UTxOState
initState = MkUTxOState {utxo = initUTxO, fees = 0}

data SimpleTxBody = MkSimpleTxBody
  { stxins  :: [TxIn]
  , stxouts :: [(Ix, TxOut)]
  , stxvldt :: (Maybe Integer, Maybe Integer)
  , stxid   :: TxId }

bodyFromSimple :: PParams -> SimpleTxBody -> TxBody
bodyFromSimple pp stxb = let s = 5 in MkTxBody
  { txins  = stxins stxb
  , txouts = stxouts stxb
  , txfee  = (a pp) * s + (b pp)
  , txvldt = stxvldt stxb
  , txsize = s
  , txid   = stxid stxb }

testTxBody1 :: TxBody
testTxBody1 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins  = [(0, 0)]
  , stxouts = [ 0 .-> (a0, (890, Nothing))
              , 1 .-> (a1, (100, Nothing)) ]
  , stxvldt = (Nothing, Just 10)
  , stxid   = 1 }

testTx1 :: Tx
testTx1 = MkTx
  { body = testTxBody1
  , wits = MkTxWitnesses { vkSigs = [(0, 1)], scripts = [] }
  , txAD = Nothing }

testTxBody2 :: TxBody
testTxBody2 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins = [(1, 1)]
  , stxouts = [ 0 .-> (a2, (10, Nothing))
              , 1 .-> (a1, (80, Nothing)) ]
  , stxvldt = (Nothing, Just 10)
  , stxid = 2 }

testTx2 :: Tx
testTx2 = MkTx
  { body = testTxBody2
  , wits = MkTxWitnesses { vkSigs = [(1, 3)], scripts = [] }
  , txAD = Nothing }

utxowSteps :: UTxOEnv -> UTxOState -> [Tx] -> Maybe UTxOState
utxowSteps = foldM . utxowStep

deriving instance Eq UTxOState

spec :: Spec
spec = do
  describe "utxowSteps" $
    it "results in the expected state" $
      utxowSteps initEnv initState [testTx1, testTx2] @?= Just (MkUTxOState
        { utxo = [ (1,0) .-> (a0, (890, Nothing))
                 , (2,0) .-> (a2, (10,  Nothing))
                 , (2,1) .-> (a1, (80,  Nothing)) ]
        , fees = 20
        })
