{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DeriveFunctor #-}

module MAlonzo.Code.Ledger.Conway.Foreign.HSTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
import Data.Void (Void)
import Prelude hiding (Rational)
import GHC.Real (Ratio(..))
type Rational = Ratio Integer
newtype HSMap k v = MkHSMap [(k, v)]
  deriving (Generic, Show, Eq, Ord)
newtype HSSet a = MkHSSet [a]
  deriving (Generic, Show, Eq, Ord)
data ComputationResult e a = Success a | Failure e
  deriving (Functor, Eq, Show, Generic)

instance Applicative (ComputationResult e) where
  pure = Success
  (Success f) <*> x = f <$> x
  (Failure e) <*> _ = Failure e

instance Monad (ComputationResult e) where
  return = pure
  (Success a) >>= m = m a
  (Failure e) >>= _ = Failure e
-- Ledger.Conway.Foreign.HSTypes.Empty
d_Empty_8 = ()
type T_Empty_8 = Void
cover_Empty_8 :: Void -> ()
cover_Empty_8 x = case x of
-- Ledger.Conway.Foreign.HSTypes.Rational
d_Rational_10 = ()
type T_Rational_10 = Rational
pattern C__'44'__12 a0 a1 = (:%) a0 a1
check__'44'__12 :: Integer -> Integer -> T_Rational_10
check__'44'__12 = (:%)
cover_Rational_10 :: Rational -> ()
cover_Rational_10 x
  = case x of
      (:%) _ _ -> ()
-- Ledger.Conway.Foreign.HSTypes.HSMap
d_HSMap_18 a0 a1 = ()
type T_HSMap_18 a0 a1 = HSMap a0 a1
pattern C_MkHSMap_28 a0 = MkHSMap a0
check_MkHSMap_28 ::
  forall xK.
    forall xV.
      MAlonzo.Code.Agda.Builtin.List.T_List_10
        () (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () xK xV) ->
      T_HSMap_18 xK xV
check_MkHSMap_28 = MkHSMap
cover_HSMap_18 :: HSMap a1 a2 -> ()
cover_HSMap_18 x
  = case x of
      MkHSMap _ -> ()
-- Ledger.Conway.Foreign.HSTypes.HSMap.assocList
d_assocList_26 ::
  T_HSMap_18 AgdaAny AgdaAny ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny AgdaAny AgdaAny]
d_assocList_26 v0
  = case coe v0 of
      C_MkHSMap_28 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSTypes.HSSet
d_HSSet_32 a0 = ()
type T_HSSet_32 a0 = HSSet a0
pattern C_MkHSSet_40 a0 = MkHSSet a0
check_MkHSSet_40 ::
  forall xA.
    MAlonzo.Code.Agda.Builtin.List.T_List_10 () xA -> T_HSSet_32 xA
check_MkHSSet_40 = MkHSSet
cover_HSSet_32 :: HSSet a1 -> ()
cover_HSSet_32 x
  = case x of
      MkHSSet _ -> ()
-- Ledger.Conway.Foreign.HSTypes.HSSet.elems
d_elems_38 :: T_HSSet_32 AgdaAny -> [AgdaAny]
d_elems_38 v0
  = case coe v0 of
      C_MkHSSet_40 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Conway.Foreign.HSTypes.ComputationResult
d_ComputationResult_46 a0 a1 = ()
type T_ComputationResult_46 a0 a1 = ComputationResult a0 a1
pattern C_Success_52 a0 = Success a0
pattern C_Failure_54 a0 = Failure a0
check_Success_52 ::
  forall xE. forall xA. xA -> T_ComputationResult_46 xE xA
check_Success_52 = Success
check_Failure_54 ::
  forall xE. forall xA. xE -> T_ComputationResult_46 xE xA
check_Failure_54 = Failure
cover_ComputationResult_46 :: ComputationResult a1 a2 -> ()
cover_ComputationResult_46 x
  = case x of
      Success _ -> ()
      Failure _ -> ()
