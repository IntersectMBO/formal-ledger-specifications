module HSLedgerTest (module HSLedgerTest, MAlonzo.Code.HSLedger.utxoStep) where

import MAlonzo.Code.HSLedger

testCtx :: (Slot, PParams)
testCtx = (0, (1, (5, 100)))

testState :: (UTxO, Coin)
testState = ([((7, 0), (24, 100))], 12)

testTx :: TxBody
testTx = ([(7, 0)], ([(0, (24, 89))], (11, ((Nothing, Just 10), 5))))

main :: IO ()
main = print $ utxoStep testCtx testState testTx
