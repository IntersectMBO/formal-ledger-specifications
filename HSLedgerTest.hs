module HSLedgerTest where

import MAlonzo.Code.HSLedger

utxoStep :: Integer -> (UTxO, Coin) -> Tx -> Maybe (UTxO, Coin)
utxoStep' = utxoStep
