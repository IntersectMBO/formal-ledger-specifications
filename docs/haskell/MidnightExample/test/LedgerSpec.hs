{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS -Wno-orphans #-}
module LedgerSpec (spec) where

import Control.Monad ( foldM )

import Test.Hspec ( Spec, describe, it )
import Test.HUnit ( (@?=) )

import Lib

initLedgerState :: LedgerState
initLedgerState = MkLedgerState
  { tip = MkPoint { slot = Nothing, blockHash = 0 }
  , count = 0, snapshot1 = 0, snapshot2 = 0 }

header1 :: Header
header1 = MkHeader
  { slotNo = 20, blockNo = 0, hBlockHash = 0, prev = 0, nodeId = 1 }

block1 :: Block
block1 = addBlockHash $ MkBlock { header = header1, body = [Inc, Inc, Dec] }

header2 :: Header
header2 = MkHeader
  { slotNo = 40, blockNo = 1, hBlockHash = 0, prev = 1, nodeId = 5 }

block2 :: Block
block2 = addBlockHash $ MkBlock { header = header2, body = [Inc, Inc] }

header3 :: Header
header3 = MkHeader
  { slotNo = 60, blockNo = 2, hBlockHash = 0, prev = 2, nodeId = 2 }

block3 :: Block
block3 = addBlockHash $ MkBlock { header = header3, body = [Dec] }

deriving instance Eq Point; deriving instance Eq LedgerState

ledgerSteps :: LedgerState -> [Block] -> Maybe LedgerState
ledgerSteps = foldM ledgerStep

spec :: Spec
spec = do
  describe "ledgerSteps" $
    it "results in the expected state" $
      ledgerSteps initLedgerState [block1, block2, block3] @?=
      Just (MkLedgerState
        { tip = MkPoint {slot = Just 60, blockHash = 3}
        , count = 2, snapshot1 = 3, snapshot2 = 0
        })
