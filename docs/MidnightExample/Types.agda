module MidnightExample.Types where

open import Prelude hiding (dec)
open import Data.Integer

Hash = ℕ

{-# FOREIGN GHC
  import Data.Text as T
  type Hash = Integer
#-}

postulate hash : String → Hash
          hash-inj : Injective _≡_ _≡_ hash
-- TODO: where do I get a hash function from?
{-# COMPILE GHC hash = fromIntegral . T.length #-}

record Point : Type where
  field  slot       : Maybe ℕ
         blockHash  : ℕ

{-# FOREIGN GHC
  data Point = MkPoint
    { slot      :: Maybe Integer
    , blockHash :: Hash } deriving Show
#-}
{-# COMPILE GHC Point = data Point (MkPoint) #-}

data Tx : Type where
  inc  : Tx
  dec  : Tx

{-# FOREIGN GHC
  data Tx = Inc | Dec deriving Show
#-}
{-# COMPILE GHC Tx = data Tx (Inc | Dec) #-}

record Header : Type where
  field  slotNo     : ℕ
         blockNo    : ℕ
         blockHash  : Hash
         prev       : ℕ
         nodeId     : ℕ

{-# FOREIGN GHC
  data Header = MkHeader
    { slotNo     :: Integer
    , blockNo    :: Integer
    , hBlockHash :: Hash
    , prev       :: Integer
    , nodeId     :: Integer } deriving Show
#-}
{-# COMPILE GHC Header = data Header (MkHeader) #-}

record Block : Type where
  field  header  : Header
         body    : List Tx

{-# FOREIGN GHC
  data Block = MkBlock
    { header :: Header
    , body   :: [Tx] } deriving Show
#-}
{-# COMPILE GHC Block = data Block (MkBlock) #-}

record LedgerState : Type where
  field  tip                  : Point
         count                : ℤ
         snapshot1 snapshot2  : ℤ

{-# FOREIGN GHC
  data LedgerState = MkLedgerState
    { tip       :: Point
    , count     :: Integer
    , snapshot1 :: Integer
    , snapshot2 :: Integer } deriving Show
#-}
{-# COMPILE GHC LedgerState = data LedgerState (MkLedgerState) #-}
