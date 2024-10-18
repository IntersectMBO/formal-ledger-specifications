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

module MAlonzo.Code.MidnightExample.HSLedger where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Integer.Show
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Interface.ComputationalRelation
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.MidnightExample.Ledger
import qualified MAlonzo.Code.MidnightExample.Types

-- MidnightExample.HSLedger._
d___8 :: MAlonzo.Code.Interface.Hashable.T_Hashable_8
d___8
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe MAlonzo.Code.MidnightExample.Types.d_hash_6)
-- MidnightExample.HSLedger.Show⇒Hashable
d_Show'8658'Hashable_12 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Show'8658'Hashable_12 ~v0 v1 = du_Show'8658'Hashable_12 v1
du_Show'8658'Hashable_12 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_Show'8658'Hashable_12 v0
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Interface.Hashable.d_hash_16 d___8
              (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v1)))
-- MidnightExample.HSLedger.Show-List
d_Show'45'List_14 ::
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'List_14 ~v0 v1 = du_Show'45'List_14 v1
du_Show'45'List_14 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'List_14 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         MAlonzo.Code.Data.List.Base.du_foldr_216
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                 (coe
                    MAlonzo.Code.Data.Nat.Show.d_show_56
                    (coe MAlonzo.Code.Interface.Hashable.d_hash_16 v0 v1))
                 (coe
                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                    ("," :: Data.Text.Text) v2)))
         (coe ("" :: Data.Text.Text)))
-- MidnightExample.HSLedger.Show-×
d_Show'45''215'_20 ::
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45''215'_20 ~v0 ~v1 v2 v3 = du_Show'45''215'_20 v2 v3
du_Show'45''215'_20 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45''215'_20 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'43''43'__20
                     (coe
                        MAlonzo.Code.Data.Nat.Show.d_show_56
                        (coe MAlonzo.Code.Interface.Hashable.d_hash_16 v0 v3))
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                        ("," :: Data.Text.Text)
                        (coe
                           MAlonzo.Code.Data.Nat.Show.d_show_56
                           (coe MAlonzo.Code.Interface.Hashable.d_hash_16 v1 v4)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- MidnightExample.HSLedger._.Block
d_Block_38 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Header
d_Header_46 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.LedgerState
d_LedgerState_60 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Point
d_Point_62 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Tx
d_Tx_64 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Block.body
d_body_100 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Block_80 ->
  [MAlonzo.Code.MidnightExample.Ledger.T_Tx_46]
d_body_100 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_body_88 (coe v0)
-- MidnightExample.HSLedger._.Block.header
d_header_102 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Block_80 ->
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58
d_header_102 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_header_86 (coe v0)
-- MidnightExample.HSLedger._.Header.blockHash
d_blockHash_112 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58 -> Integer
d_blockHash_112 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v0)
-- MidnightExample.HSLedger._.Header.blockNo
d_blockNo_114 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58 -> Integer
d_blockNo_114 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v0)
-- MidnightExample.HSLedger._.Header.nodeId
d_nodeId_116 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58 -> Integer
d_nodeId_116 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v0)
-- MidnightExample.HSLedger._.Header.prev
d_prev_118 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58 -> Integer
d_prev_118 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v0)
-- MidnightExample.HSLedger._.Header.slotNo
d_slotNo_120 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Header_58 -> Integer
d_slotNo_120 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v0)
-- MidnightExample.HSLedger._.LedgerState.count
d_count_124 ::
  MAlonzo.Code.MidnightExample.Ledger.T_LedgerState_174 -> Integer
d_count_124 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_count_186 (coe v0)
-- MidnightExample.HSLedger._.LedgerState.snapshot1
d_snapshot1_126 ::
  MAlonzo.Code.MidnightExample.Ledger.T_LedgerState_174 -> Integer
d_snapshot1_126 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_snapshot1_188 (coe v0)
-- MidnightExample.HSLedger._.LedgerState.snapshot2
d_snapshot2_128 ::
  MAlonzo.Code.MidnightExample.Ledger.T_LedgerState_174 -> Integer
d_snapshot2_128 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_snapshot2_190 (coe v0)
-- MidnightExample.HSLedger._.LedgerState.tip
d_tip_130 ::
  MAlonzo.Code.MidnightExample.Ledger.T_LedgerState_174 ->
  MAlonzo.Code.MidnightExample.Ledger.T_Point_30
d_tip_130 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_tip_184 (coe v0)
-- MidnightExample.HSLedger._.Point.blockHash
d_blockHash_134 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Point_30 -> Integer
d_blockHash_134 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v0)
-- MidnightExample.HSLedger._.Point.slot
d_slot_136 ::
  MAlonzo.Code.MidnightExample.Ledger.T_Point_30 -> Maybe Integer
d_slot_136 v0
  = coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v0)
-- MidnightExample.HSLedger.Convertible-Point
d_Convertible'45'Point_144 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Point_144
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_Point'46'constructor_21
              (coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_2363
              (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v0))))
-- MidnightExample.HSLedger.Convertible-Tx
d_Convertible'45'Tx_164 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Tx_164
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
              MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.MidnightExample.Types.C_inc_22
                -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
              MAlonzo.Code.MidnightExample.Types.C_dec_24
                -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
              _ -> MAlonzo.RTE.mazUnreachableError))
-- MidnightExample.HSLedger.Convertible-Header
d_Convertible'45'Header_168 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Header_168
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
              (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
              (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v0))))
-- MidnightExample.HSLedger.Convertible-Block
d_Convertible'45'Block_200 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Block_200
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_157
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                            (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v1)))))
                 (MAlonzo.Code.MidnightExample.Ledger.d_header_86 (coe v0)))
              (coe
                 MAlonzo.Code.Data.List.Base.du_map_22
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_to_18
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v1 ->
                             case coe v1 of
                               MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                 -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                               MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                 -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v1 ->
                             case coe v1 of
                               MAlonzo.Code.MidnightExample.Types.C_inc_22
                                 -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                               MAlonzo.Code.MidnightExample.Types.C_dec_24
                                 -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                               _ -> MAlonzo.RTE.mazUnreachableError))))
                 (coe MAlonzo.Code.MidnightExample.Ledger.d_body_88 (coe v0)))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_7635
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                            (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v1)))))
                 (MAlonzo.Code.MidnightExample.Types.d_header_54 (coe v0)))
              (coe
                 MAlonzo.Code.Data.List.Base.du_map_22
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v1 ->
                             case coe v1 of
                               MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                 -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                               MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                 -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                               _ -> MAlonzo.RTE.mazUnreachableError))
                       (coe
                          (\ v1 ->
                             case coe v1 of
                               MAlonzo.Code.MidnightExample.Types.C_inc_22
                                 -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                               MAlonzo.Code.MidnightExample.Types.C_dec_24
                                 -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                               _ -> MAlonzo.RTE.mazUnreachableError))))
                 (coe MAlonzo.Code.MidnightExample.Types.d_body_56 (coe v0)))))
-- MidnightExample.HSLedger.Convertible-LedgerState
d_Convertible'45'LedgerState_230 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'LedgerState_230
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_LedgerState'46'constructor_189
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Point'46'constructor_21
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_2363
                            (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v1)))))
                 (MAlonzo.Code.MidnightExample.Ledger.d_tip_184 (coe v0)))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_count_186 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_snapshot1_188 (coe v0))
              (coe
                 MAlonzo.Code.MidnightExample.Ledger.d_snapshot2_190 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Ledger.C_LedgerState'46'constructor_10979
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Point'46'constructor_21
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_2363
                            (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v1)))))
                 (MAlonzo.Code.MidnightExample.Types.d_tip_68 (coe v0)))
              (coe MAlonzo.Code.MidnightExample.Types.d_count_70 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_snapshot1_72 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_snapshot2_74 (coe v0))))
-- MidnightExample.HSLedger.ledgerStep
ledgerStep ::
  MAlonzo.Code.MidnightExample.Types.T_LedgerState_58 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10
    () MAlonzo.Code.MidnightExample.Types.T_LedgerState_58
ledgerStep = coe d_ledgerStep_258
d_ledgerStep_258 ::
  MAlonzo.Code.MidnightExample.Types.T_LedgerState_58 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  Maybe MAlonzo.Code.MidnightExample.Types.T_LedgerState_58
d_ledgerStep_258 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_88
         (coe d_Convertible'45'LedgerState_230))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_success'45'maybe_182
         (coe
            MAlonzo.Code.MidnightExample.Ledger.du_LEDGER'45'step_298
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
            (coe
               du_Show'8658'Hashable_12
               (coe
                  MAlonzo.Code.Class.Show.Core.C_mkShow_18
                  (coe MAlonzo.Code.Data.Integer.Show.d_show_6)))
            (\ v2 v3 ->
               coe du_Show'8658'Hashable_12 (coe du_Show'45'List_14 (coe v3)))
            (\ v2 v3 v4 v5 ->
               coe
                 du_Show'8658'Hashable_12
                 (coe du_Show'45''215'_20 (coe v4) (coe v5)))
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               (coe
                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                  (coe
                     (\ v2 ->
                        coe
                          MAlonzo.Code.MidnightExample.Types.C_LedgerState'46'constructor_189
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_to_18
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Point'46'constructor_21
                                        (coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38
                                           (coe v3))))
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_2363
                                        (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockHash_18
                                           (coe v3)))))
                             (MAlonzo.Code.MidnightExample.Ledger.d_tip_184 (coe v2)))
                          (coe MAlonzo.Code.MidnightExample.Ledger.d_count_186 (coe v2))
                          (coe MAlonzo.Code.MidnightExample.Ledger.d_snapshot1_188 (coe v2))
                          (coe
                             MAlonzo.Code.MidnightExample.Ledger.d_snapshot2_190 (coe v2))))
                  (coe
                     (\ v2 ->
                        coe
                          MAlonzo.Code.MidnightExample.Ledger.C_LedgerState'46'constructor_10979
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_from_20
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Point'46'constructor_21
                                        (coe MAlonzo.Code.MidnightExample.Ledger.d_slot_36 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38
                                           (coe v3))))
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_2363
                                        (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockHash_18
                                           (coe v3)))))
                             (MAlonzo.Code.MidnightExample.Types.d_tip_68 (coe v2)))
                          (coe MAlonzo.Code.MidnightExample.Types.d_count_70 (coe v2))
                          (coe MAlonzo.Code.MidnightExample.Types.d_snapshot1_72 (coe v2))
                          (coe MAlonzo.Code.MidnightExample.Types.d_snapshot2_74 (coe v2)))))
               v0)
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               (coe
                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                  (coe
                     (\ v2 ->
                        coe
                          MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_157
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_to_18
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72
                                           (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74
                                           (coe v3))
                                        (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78
                                           (coe v3))))
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockHash_42
                                           (coe v3))
                                        (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_nodeId_46
                                           (coe v3)))))
                             (MAlonzo.Code.MidnightExample.Ledger.d_header_86 (coe v2)))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe
                                MAlonzo.Code.Foreign.Convertible.d_to_18
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                   (coe
                                      (\ v3 ->
                                         case coe v3 of
                                           MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                             -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                           MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                             -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                   (coe
                                      (\ v3 ->
                                         case coe v3 of
                                           MAlonzo.Code.MidnightExample.Types.C_inc_22
                                             -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                           MAlonzo.Code.MidnightExample.Types.C_dec_24
                                             -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                           _ -> MAlonzo.RTE.mazUnreachableError))))
                             (coe MAlonzo.Code.MidnightExample.Ledger.d_body_88 (coe v2)))))
                  (coe
                     (\ v2 ->
                        coe
                          MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_7635
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_from_20
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72
                                           (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74
                                           (coe v3))
                                        (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78
                                           (coe v3))))
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_blockHash_42
                                           (coe v3))
                                        (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v3))
                                        (coe
                                           MAlonzo.Code.MidnightExample.Types.d_nodeId_46
                                           (coe v3)))))
                             (MAlonzo.Code.MidnightExample.Types.d_header_54 (coe v2)))
                          (coe
                             MAlonzo.Code.Data.List.Base.du_map_22
                             (coe
                                MAlonzo.Code.Foreign.Convertible.d_from_20
                                (coe
                                   MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                   (coe
                                      (\ v3 ->
                                         case coe v3 of
                                           MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                             -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                           MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                             -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                           _ -> MAlonzo.RTE.mazUnreachableError))
                                   (coe
                                      (\ v3 ->
                                         case coe v3 of
                                           MAlonzo.Code.MidnightExample.Types.C_inc_22
                                             -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                           MAlonzo.Code.MidnightExample.Types.C_dec_24
                                             -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                           _ -> MAlonzo.RTE.mazUnreachableError))))
                             (coe MAlonzo.Code.MidnightExample.Types.d_body_56 (coe v2))))))
               v1)))
-- MidnightExample.HSLedger.addBlockHash'
addBlockHash ::
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48
addBlockHash = coe d_addBlockHash''_264
d_addBlockHash''_264 ::
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48
d_addBlockHash''_264 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_157
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_to_18
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                               (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v2)))))
                    (MAlonzo.Code.MidnightExample.Ledger.d_header_86 (coe v1)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du_map_22
                    (coe
                       MAlonzo.Code.Foreign.Convertible.d_to_18
                       (coe
                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                          (coe
                             (\ v2 ->
                                case coe v2 of
                                  MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                    -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                  MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                    -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                          (coe
                             (\ v2 ->
                                case coe v2 of
                                  MAlonzo.Code.MidnightExample.Types.C_inc_22
                                    -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                  MAlonzo.Code.MidnightExample.Types.C_dec_24
                                    -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                  _ -> MAlonzo.RTE.mazUnreachableError))))
                    (coe MAlonzo.Code.MidnightExample.Ledger.d_body_88 (coe v1)))))
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_7635
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                               (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v2)))))
                    (MAlonzo.Code.MidnightExample.Types.d_header_54 (coe v1)))
                 (coe
                    MAlonzo.Code.Data.List.Base.du_map_22
                    (coe
                       MAlonzo.Code.Foreign.Convertible.d_from_20
                       (coe
                          MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                          (coe
                             (\ v2 ->
                                case coe v2 of
                                  MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                    -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                  MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                    -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                  _ -> MAlonzo.RTE.mazUnreachableError))
                          (coe
                             (\ v2 ->
                                case coe v2 of
                                  MAlonzo.Code.MidnightExample.Types.C_inc_22
                                    -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                  MAlonzo.Code.MidnightExample.Types.C_dec_24
                                    -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                  _ -> MAlonzo.RTE.mazUnreachableError))))
                    (coe MAlonzo.Code.MidnightExample.Types.d_body_56 (coe v1))))))
      (coe
         MAlonzo.Code.MidnightExample.Ledger.du_addBlockHash_150
         (coe
            du_Show'8658'Hashable_12
            (coe
               MAlonzo.Code.Class.Show.Core.C_mkShow_18
               (coe MAlonzo.Code.Data.Integer.Show.d_show_6)))
         (coe
            (\ v1 v2 ->
               coe du_Show'8658'Hashable_12 (coe du_Show'45'List_14 (coe v2))))
         (coe
            (\ v1 v2 v3 v4 ->
               coe
                 du_Show'8658'Hashable_12
                 (coe du_Show'45''215'_20 (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_157
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                                     (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v2)))))
                          (MAlonzo.Code.MidnightExample.Ledger.d_header_86 (coe v1)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_to_18
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v2 ->
                                      case coe v2 of
                                        MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                          -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                        MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                          -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                (coe
                                   (\ v2 ->
                                      case coe v2 of
                                        MAlonzo.Code.MidnightExample.Types.C_inc_22
                                          -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                        MAlonzo.Code.MidnightExample.Types.C_dec_24
                                          -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                        _ -> MAlonzo.RTE.mazUnreachableError))))
                          (coe MAlonzo.Code.MidnightExample.Ledger.d_body_88 (coe v1)))))
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_7635
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_61
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_7309
                                     (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v2))
                                     (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v2))
                                     (coe
                                        MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v2)))))
                          (MAlonzo.Code.MidnightExample.Types.d_header_54 (coe v1)))
                       (coe
                          MAlonzo.Code.Data.List.Base.du_map_22
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_from_20
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v2 ->
                                      case coe v2 of
                                        MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                          -> coe MAlonzo.Code.MidnightExample.Types.C_inc_22
                                        MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                          -> coe MAlonzo.Code.MidnightExample.Types.C_dec_24
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                (coe
                                   (\ v2 ->
                                      case coe v2 of
                                        MAlonzo.Code.MidnightExample.Types.C_inc_22
                                          -> coe MAlonzo.Code.MidnightExample.Ledger.C_inc_48
                                        MAlonzo.Code.MidnightExample.Types.C_dec_24
                                          -> coe MAlonzo.Code.MidnightExample.Ledger.C_dec_50
                                        _ -> MAlonzo.RTE.mazUnreachableError))))
                          (coe MAlonzo.Code.MidnightExample.Types.d_body_56 (coe v1))))))
            v0))
