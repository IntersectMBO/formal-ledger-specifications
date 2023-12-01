module MidnightExample.Types where

open import Prelude hiding (dec)

Hash = ℕ
{-# COMPILE AGDA2HS Hash #-}
-- {-# FOREIGN GHC
--   import Data.Text as T
--   type Hash = Integer
-- #-}

postulate hash : String → Hash
          hash-inj : Injective _≡_ _≡_ hash
{-# FOREIGN AGDA2HS hash = fromIntegral . T.length #-}
-- {-# COMPILE GHC hash = fromIntegral . T.length #-}

record Point : Set where
  field  slot       : Maybe ℕ
         blockHash  : Hash
open Point public
{-# COMPILE AGDA2HS Point #-}

-- {-# FOREIGN GHC
--   data Point = MkPoint
--     { slot      :: Maybe Integer
--     , blockHash :: Hash } deriving Show
-- #-}
-- {-# COMPILE GHC Point = data Point (MkPoint) #-}

data Tx : Set where
  Incr Decr : Tx
open Tx public
{-# COMPILE AGDA2HS Tx #-}
-- {-# FOREIGN GHC
--   data Tx = Inc | Dec deriving Show
-- #-}
-- {-# COMPILE GHC Tx = data Tx (Inc | Dec) #-}

record Header : Set where
  field  slotNo     : ℕ
         blockNo    : ℕ
         blockHash  : Hash
         prev       : ℕ
         nodeId     : ℕ
open Header public
{-# COMPILE AGDA2HS Header #-}
-- {-# FOREIGN GHC
--   data Header = MkHeader
--     { slotNo     :: Integer
--     , blockNo    :: Integer
--     , hBlockHash :: Hash
--     , prev       :: Integer
--     , nodeId     :: Integer } deriving Show
-- #-}
-- {-# COMPILE GHC Header = data Header (MkHeader) #-}

record Block : Set where
  field  header  : Header
         body    : List Tx
open Block public
{-# COMPILE AGDA2HS Block #-}
-- {-# FOREIGN GHC
--   data Block = MkBlock
--     { header :: Header
--     , body   :: [Tx] } deriving Show
-- #-}
-- {-# COMPILE GHC Block = data Block (MkBlock) #-}

record LedgerState : Set where
  field  tip                  : Point
         count                : ℤ
         snapshot1 snapshot2  : ℤ
open LedgerState public
{-# COMPILE AGDA2HS LedgerState #-}
-- {-# FOREIGN GHC
--   data LedgerState = MkLedgerState
--     { tip       :: Point
--     , count     :: Integer
--     , snapshot1 :: Integer
--     , snapshot2 :: Integer } deriving Show
-- #-}
-- {-# COMPILE GHC LedgerState = data LedgerState (MkLedgerState) #-}

-- private
-- import MidnightExample.Ledger Hash as 𝕃

-- step : ⊤ → LedgerState → Block → Maybe LedgerState
-- step = 𝕃.LEDGER-step
