module HSLedgerTest (module HSLedgerTest, MAlonzo.Code.HSLedger.utxoStep) where

import MAlonzo.Code.HSLedger
import MAlonzo.Code.Foreign.LedgerTypes

initParams :: PParams
initParams = MkPParams
  {a = 1, b = 5, maxBlockSize = 1000, maxTxSize = 100, maxHeaderSize = 100, poolDeposit = 10, emax = 10}

initEnv :: UTxOEnv
initEnv = MkUTxOEnv {slot = 0, pparams = initParams}

a0 :: Addr
a0 = 0

a1 :: Addr
a1 = 1

a2 :: Addr
a2 = 2

initUTxO :: UTxO
initUTxO = [((0, 0), (a0, 1000))]

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

testTx1 :: TxBody
testTx1 = bodyFromSimple initParams $ MkSimpleTxBody
  { stxins = [(0, 0)], stxouts = [(0, (a0, 890)), (1, (a1, 100))], stxvldt = (Nothing, Just 10), stxid = 1 }

testTx2 :: TxBody
testTx2 = bodyFromSimple initParams $ MkSimpleTxBody { stxins = [(1, 1)], stxouts = [(0, (a2, 10)), (1, (a1, 80))], stxvldt = (Nothing, Just 10), stxid = 1 }

utxoSteps :: UTxOEnv -> UTxOState -> [TxBody] -> Maybe UTxOState
utxoSteps e s []       = Just s
utxoSteps e s (t : ts) = do
  s' <- utxoStep e s t
  utxoSteps e s' ts

main :: IO ()
main = print $ utxoSteps initEnv initState [testTx1, testTx2]
