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

module MAlonzo.Code.Ledger.Prelude.Foreign.HSTypes where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Foreign.Haskell.Pair

import GHC.Generics (Generic)
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
-- Ledger.Prelude.Foreign.HSTypes.Rational
d_Rational_8 = ()
type T_Rational_8 = Rational
pattern C__'44'__10 a0 a1 = (:%) a0 a1
check__'44'__10 :: Integer -> Integer -> T_Rational_8
check__'44'__10 = (:%)
cover_Rational_8 :: Rational -> ()
cover_Rational_8 x
  = case x of
      (:%) _ _ -> ()
-- Ledger.Prelude.Foreign.HSTypes.HSMap
d_HSMap_16 a0 a1 = ()
type T_HSMap_16 a0 a1 = HSMap a0 a1
pattern C_MkHSMap_26 a0 = MkHSMap a0
check_MkHSMap_26 ::
  forall xK.
    forall xV.
      MAlonzo.Code.Agda.Builtin.List.T_List_10
        () (MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22 () () xK xV) ->
      T_HSMap_16 xK xV
check_MkHSMap_26 = MkHSMap
cover_HSMap_16 :: HSMap a1 a2 -> ()
cover_HSMap_16 x
  = case x of
      MkHSMap _ -> ()
-- Ledger.Prelude.Foreign.HSTypes.HSMap.assocList
d_assocList_24 ::
  T_HSMap_16 AgdaAny AgdaAny ->
  [MAlonzo.Code.Foreign.Haskell.Pair.T_Pair_22
     AgdaAny AgdaAny AgdaAny AgdaAny]
d_assocList_24 v0
  = case coe v0 of
      C_MkHSMap_26 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Foreign.HSTypes.HSSet
d_HSSet_30 a0 = ()
type T_HSSet_30 a0 = HSSet a0
pattern C_MkHSSet_38 a0 = MkHSSet a0
check_MkHSSet_38 ::
  forall xA.
    MAlonzo.Code.Agda.Builtin.List.T_List_10 () xA -> T_HSSet_30 xA
check_MkHSSet_38 = MkHSSet
cover_HSSet_30 :: HSSet a1 -> ()
cover_HSSet_30 x
  = case x of
      MkHSSet _ -> ()
-- Ledger.Prelude.Foreign.HSTypes.HSSet.elems
d_elems_36 :: T_HSSet_30 AgdaAny -> [AgdaAny]
d_elems_36 v0
  = case coe v0 of
      C_MkHSSet_38 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Prelude.Foreign.HSTypes.ComputationResult
d_ComputationResult_44 a0 a1 = ()
type T_ComputationResult_44 a0 a1 = ComputationResult a0 a1
pattern C_Success_50 a0 = Success a0
pattern C_Failure_52 a0 = Failure a0
check_Success_50 ::
  forall xE. forall xA. xA -> T_ComputationResult_44 xE xA
check_Success_50 = Success
check_Failure_52 ::
  forall xE. forall xA. xE -> T_ComputationResult_44 xE xA
check_Failure_52 = Failure
cover_ComputationResult_44 :: ComputationResult a1 a2 -> ()
cover_ComputationResult_44 x
  = case x of
      Success _ -> ()
      Failure _ -> ()
