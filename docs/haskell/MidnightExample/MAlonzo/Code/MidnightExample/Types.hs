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

module MAlonzo.Code.MidnightExample.Types where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.String

import Data.Text as T
type Hash = Integer
data Point = MkPoint
  { slot      :: Maybe Integer
  , blockHash :: Hash } deriving Show
data Tx = Inc | Dec deriving Show
data Header = MkHeader
  { slotNo     :: Integer
  , blockNo    :: Integer
  , hBlockHash :: Hash
  , prev       :: Integer
  , nodeId     :: Integer } deriving Show
data Block = MkBlock
  { header :: Header
  , body   :: [Tx] } deriving Show
data LedgerState = MkLedgerState
  { tip       :: Point
  , count     :: Integer
  , snapshot1 :: Integer
  , snapshot2 :: Integer } deriving Show
-- MidnightExample.Types.Hash
d_Hash_4 :: ()
d_Hash_4 = erased
-- MidnightExample.Types.hash
d_hash_6 :: MAlonzo.Code.Agda.Builtin.String.T_String_6 -> Integer
d_hash_6 = fromIntegral . T.length
-- MidnightExample.Types.hash-inj
d_hash'45'inj_8
  = error
      "MAlonzo Runtime Error: postulate evaluated: MidnightExample.Types.hash-inj"
-- MidnightExample.Types.Point
d_Point_10 = ()
type T_Point_10 = Point
pattern C_Point'46'constructor_21 a0 a1 = MkPoint a0 a1
check_Point'46'constructor_21 ::
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () Integer ->
  Integer -> T_Point_10
check_Point'46'constructor_21 = MkPoint
cover_Point_10 :: Point -> ()
cover_Point_10 x
  = case x of
      MkPoint _ _ -> ()
-- MidnightExample.Types.Point.slot
d_slot_16 :: T_Point_10 -> Maybe Integer
d_slot_16 v0
  = case coe v0 of
      C_Point'46'constructor_21 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Point.blockHash
d_blockHash_18 :: T_Point_10 -> Integer
d_blockHash_18 v0
  = case coe v0 of
      C_Point'46'constructor_21 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Tx
d_Tx_20 = ()
type T_Tx_20 = Tx
pattern C_inc_22 = Inc
pattern C_dec_24 = Dec
check_inc_22 :: T_Tx_20
check_inc_22 = Inc
check_dec_24 :: T_Tx_20
check_dec_24 = Dec
cover_Tx_20 :: Tx -> ()
cover_Tx_20 x
  = case x of
      Inc -> ()
      Dec -> ()
-- MidnightExample.Types.Header
d_Header_26 = ()
type T_Header_26 = Header
pattern C_Header'46'constructor_59 a0 a1 a2 a3 a4 = MkHeader a0 a1 a2 a3 a4
check_Header'46'constructor_59 ::
  Integer -> Integer -> Integer -> Integer -> Integer -> T_Header_26
check_Header'46'constructor_59 = MkHeader
cover_Header_26 :: Header -> ()
cover_Header_26 x
  = case x of
      MkHeader _ _ _ _ _ -> ()
-- MidnightExample.Types.Header.slotNo
d_slotNo_38 :: T_Header_26 -> Integer
d_slotNo_38 v0
  = case coe v0 of
      C_Header'46'constructor_59 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Header.blockNo
d_blockNo_40 :: T_Header_26 -> Integer
d_blockNo_40 v0
  = case coe v0 of
      C_Header'46'constructor_59 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Header.blockHash
d_blockHash_42 :: T_Header_26 -> Integer
d_blockHash_42 v0
  = case coe v0 of
      C_Header'46'constructor_59 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Header.prev
d_prev_44 :: T_Header_26 -> Integer
d_prev_44 v0
  = case coe v0 of
      C_Header'46'constructor_59 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Header.nodeId
d_nodeId_46 :: T_Header_26 -> Integer
d_nodeId_46 v0
  = case coe v0 of
      C_Header'46'constructor_59 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Block
d_Block_48 = ()
type T_Block_48 = Block
pattern C_Block'46'constructor_135 a0 a1 = MkBlock a0 a1
check_Block'46'constructor_135 ::
  T_Header_26 ->
  MAlonzo.Code.Agda.Builtin.List.T_List_10 () T_Tx_20 -> T_Block_48
check_Block'46'constructor_135 = MkBlock
cover_Block_48 :: Block -> ()
cover_Block_48 x
  = case x of
      MkBlock _ _ -> ()
-- MidnightExample.Types.Block.header
d_header_54 :: T_Block_48 -> T_Header_26
d_header_54 v0
  = case coe v0 of
      C_Block'46'constructor_135 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.Block.body
d_body_56 :: T_Block_48 -> [T_Tx_20]
d_body_56 v0
  = case coe v0 of
      C_Block'46'constructor_135 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.LedgerState
d_LedgerState_58 = ()
type T_LedgerState_58 = LedgerState
pattern C_LedgerState'46'constructor_165 a0 a1 a2 a3 = MkLedgerState a0 a1 a2 a3
check_LedgerState'46'constructor_165 ::
  T_Point_10 -> Integer -> Integer -> Integer -> T_LedgerState_58
check_LedgerState'46'constructor_165 = MkLedgerState
cover_LedgerState_58 :: LedgerState -> ()
cover_LedgerState_58 x
  = case x of
      MkLedgerState _ _ _ _ -> ()
-- MidnightExample.Types.LedgerState.tip
d_tip_68 :: T_LedgerState_58 -> T_Point_10
d_tip_68 v0
  = case coe v0 of
      C_LedgerState'46'constructor_165 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.LedgerState.count
d_count_70 :: T_LedgerState_58 -> Integer
d_count_70 v0
  = case coe v0 of
      C_LedgerState'46'constructor_165 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.LedgerState.snapshot1
d_snapshot1_72 :: T_LedgerState_58 -> Integer
d_snapshot1_72 v0
  = case coe v0 of
      C_LedgerState'46'constructor_165 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- MidnightExample.Types.LedgerState.snapshot2
d_snapshot2_74 :: T_LedgerState_58 -> Integer
d_snapshot2_74 v0
  = case coe v0 of
      C_LedgerState'46'constructor_165 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
