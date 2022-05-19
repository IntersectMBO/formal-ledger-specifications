module HSLedgerTest where

import MAlonzo.Code.HSLedger

main :: IO ()
main = print $ utxoStep 3 ([((7, 0), (24, 100))], 12) ([(7, 0)], ([(0, (24, 97))], 3))
