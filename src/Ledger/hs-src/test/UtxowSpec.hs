{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS -Wno-orphans #-}
module UtxowSpec (spec) where

import Control.Monad ( foldM )

import Data.Text

import Test.Hspec ( Spec, describe, it )
import Test.HUnit ( (@?=) )

import Lib

(.->) :: a -> b -> (a, b)
(.->) = (,)

drepThresholds :: DrepThresholds
drepThresholds = DrepThresholds 0 0 0 0 0 0 0 0 0 0

poolThresholds :: PoolThresholds
poolThresholds = PoolThresholds 0 0 0 0 0

initParams :: PParams
initParams = MkPParams
  { ppA = 1
  , ppB = 5
  , ppMaxBlockSize = 1000
  , ppMaxTxSize = 100
  , ppMaxHeaderSize = 100
  , ppMaxValSize = 1000
  , ppMinUTxOValue = 0
  , ppPoolDeposit = 10
  , ppEmax = 10
  , ppPv = (1, 0)
  , ppCoinsPerUTxOByte = 1
  , ppMaxCollateralInputs = 1
  , ppMaxTxExUnits = (100, 100)
  , ppMaxBlockExUnits = (100, 100)
  , ppKeyDeposit = 0
  , ppMinFeeRefScriptCoinsPerByte = 0
  , ppPrices = ()
  , ppA0 = 1
  , ppNopt = 0
  , ppCollateralPercentage = 5
  , ppCostmdls = ()
  , ppDrepThresholds = drepThresholds
  , ppPoolThresholds = poolThresholds
  , ppGovActionLifetime = 5
  , ppGovActionDeposit = 1
  , ppDrepDeposit = 1
  , ppDrepActivity = 1
  , ppCcMinSize = 0
  , ppCcMaxTermLength = 100
  }

initEnv :: UTxOEnv
initEnv = MkUTxOEnv {ueSlot = 0, uePparams = initParams, ueTreasury = 0}

baseAddr :: Integer -> Addr
baseAddr n = Left BaseAddr{baseNet = (), basePay = KeyHashObj n, baseStake = KeyHashObj n}

a0 :: Addr
a0 = baseAddr 0

a1 :: Addr
a1 = baseAddr 1

a2 :: Addr
a2 = baseAddr 2

initUTxO :: UTxO
initUTxO = MkHSMap [ (mkTxId 0,  0) .-> (a0, (1000, (Nothing, Nothing))) ]

initState :: UTxOState
initState = MkUTxOState {utxo = initUTxO, fees = 0, deposits = MkHSMap [], donations = 0}

data SimpleTxBody = MkSimpleTxBody
  { stxins     :: [TxIn]
  , srefInputs :: [TxIn]
  , stxouts    :: HSMap Ix TxOut
  , stxvldt    :: (Maybe Integer, Maybe Integer)
  , stxid      :: TxId
  , stxcerts   :: [DCert]}

bodyFromSimple :: PParams -> SimpleTxBody -> TxBody
bodyFromSimple pp stxb = let s = 5 in MkTxBody
  { txins         = MkHSSet (stxins stxb)
  , refInputs     = MkHSSet (srefInputs stxb)
  , txouts        = stxouts stxb
  , txfee         = (ppA pp) * s + (ppB pp)
  , txvldt        = stxvldt stxb
  , txsize        = s
  , txid          = stxid stxb
  , txcerts       = stxcerts stxb
  , txwdrls       = MkHSMap []
  , mint          = 0
  , txvote        = []
  , txprop        = []
  , txdonation    = 0
  , txup          = Nothing
  , txADhash      = Nothing
  , txNetworkId   = Just ()
  , curTreasury   = Nothing
  , collateral    = MkHSSet []
  , reqSigHash    = MkHSSet []
  , scriptIntHash = Nothing
  }

testTxBody1 :: TxBody
testTxBody1 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins     = [(mkTxId 0, 0)]
  , srefInputs = []
  , stxouts    = MkHSMap
                   [ 0 .-> (a0, (890, (Nothing, Nothing)))
                   , 1 .-> (a1, (100, (Nothing, Nothing))) ]
  , stxvldt    = (Nothing, Just 10)
  , stxid      = mkTxId 1
  , stxcerts   = []}

testTx1 :: Tx
testTx1 = MkTx
  { body = testTxBody1
  , wits = MkTxWitnesses { vkSigs = MkHSMap [(0, 1)], scripts = MkHSSet [], txdats = MkHSMap [], txrdmrs = MkHSMap [] }
  , txAD = Nothing
  , isValid = True
  }

testTxBody2 :: TxBody
testTxBody2 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins     = [(mkTxId 1, 1)]
  , srefInputs = [(mkTxId 1, 0)]
  , stxouts    = MkHSMap
                   [ 0 .-> (a2, (10, (Nothing, Nothing)))
                   , 1 .-> (a1, (80, (Nothing, Nothing))) ]
  , stxvldt    = (Nothing, Just 10)
  , stxid      = mkTxId 2
  , stxcerts   = []}

testTx2 :: Tx
testTx2 = MkTx
  { body = testTxBody2
  , wits = MkTxWitnesses { vkSigs = MkHSMap [(1, 3)], scripts = MkHSSet [], txdats = MkHSMap [], txrdmrs = MkHSMap [] }
  , txAD = Nothing
  , isValid = True
  }

utxowSteps :: UTxOEnv -> UTxOState -> [Tx] -> ComputationResult Text UTxOState
utxowSteps = foldM . utxowStep

spec :: Spec
spec = do
  describe "utxowSteps" $
    it "results in the expected state" $
      utxowSteps initEnv initState [testTx1, testTx2] @?= Success (MkUTxOState
        { utxo = MkHSMap
                   [ (mkTxId 1, 0) .-> (a0, (890, (Nothing, Nothing)))
                   , (mkTxId 2, 0) .-> (a2, (10,  (Nothing, Nothing)))
                   , (mkTxId 2, 1) .-> (a1, (80,  (Nothing, Nothing))) ]
        , fees = 20
        , deposits = MkHSMap []
        , donations = 0
        })
