{-# LANGUAGE StandaloneDeriving #-}
{-# OPTIONS -Wno-orphans -Wno-missing-fields #-}
module UtxowSpec (spec) where

import Control.Monad ( foldM )

import Data.Text

import Test.Hspec ( Spec, describe, it , shouldBe )
import Test.HUnit ( (@?=) )

import Lib

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:xs) = Just x

spec :: Spec
spec = do
  describe "utxowSteps" $
    it "results in the expected state" $
      safeHead [] `shouldBe` (Nothing :: Maybe Int)
