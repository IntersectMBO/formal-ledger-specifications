module MidnightExample.Types where

import Numeric.Natural (Natural)

type Hash = Natural

hash = fromIntegral . T.length

data Point = Point{slot :: Maybe Natural, blockHash :: Hash}

data Tx = Incr
        | Decr

data Header = Header{slotNo :: Natural, blockNo :: Natural,
                     blockHash :: Hash, prev :: Natural, nodeId :: Natural}

data Block = Block{header :: Header, body :: [Tx]}

data LedgerState = LedgerState{tip :: Point, count :: Integer,
                               snapshot1 :: Integer, snapshot2 :: Integer}

