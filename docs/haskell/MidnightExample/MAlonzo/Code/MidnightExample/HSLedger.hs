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
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_213
      MAlonzo.Code.MidnightExample.Types.d_hash_6
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
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_213
      (\ v1 ->
         coe
           MAlonzo.Code.Interface.Hashable.d_hash_18 d___8
           (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v1))
-- MidnightExample.HSLedger._.hash-inj
d_hash'45'inj_18
  = error
      "MAlonzo Runtime Error: postulate evaluated: MidnightExample.HSLedger._.hash-inj"
-- MidnightExample.HSLedger.Show-List
d_Show'45'List_20 ::
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'List_20 ~v0 v1 = du_Show'45'List_20 v1
du_Show'45'List_20 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'List_20 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         MAlonzo.Code.Data.List.Base.du_foldr_242
         (coe
            (\ v1 v2 ->
               coe
                 MAlonzo.Code.Data.String.Base.d__'43''43'__20
                 (coe
                    MAlonzo.Code.Data.Nat.Show.d_show_56
                    (coe MAlonzo.Code.Interface.Hashable.d_hash_18 v0 v1))
                 (coe
                    MAlonzo.Code.Data.String.Base.d__'43''43'__20
                    ("," :: Data.Text.Text) v2)))
         (coe ("" :: Data.Text.Text)))
-- MidnightExample.HSLedger.Show-×
d_Show'45''215'_26 ::
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45''215'_26 ~v0 ~v1 v2 v3 = du_Show'45''215'_26 v2 v3
du_Show'45''215'_26 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45''215'_26 v0 v1
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
                        (coe MAlonzo.Code.Interface.Hashable.d_hash_18 v0 v3))
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'43''43'__20
                        ("," :: Data.Text.Text)
                        (coe
                           MAlonzo.Code.Data.Nat.Show.d_show_56
                           (coe MAlonzo.Code.Interface.Hashable.d_hash_18 v1 v4)))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- MidnightExample.HSLedger._.Block
d_Block_44 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Header
d_Header_52 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.LedgerState
d_LedgerState_66 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Point
d_Point_68 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger._.Tx
d_Tx_70 a0 a1 a2 a3 = ()
-- MidnightExample.HSLedger.Convertible-Point
d_Convertible'45'Point_150 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Point_150
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
              MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
              (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v0))))
-- MidnightExample.HSLedger.Convertible-Tx
d_Convertible'45'Tx_170 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Tx_170
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
d_Convertible'45'Header_174 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Header_174
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
              (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v0))))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
              (coe MAlonzo.Code.MidnightExample.Types.d_slotNo_38 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockNo_40 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_blockHash_42 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_prev_44 (coe v0))
              (coe MAlonzo.Code.MidnightExample.Types.d_nodeId_46 (coe v0))))
-- MidnightExample.HSLedger.Convertible-Block
d_Convertible'45'Block_206 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'Block_206
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_223
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_to_18
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
              MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_9949
              (coe
                 MAlonzo.Code.Foreign.Convertible.d_from_20
                 (coe
                    MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v1))
                            (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v1))))
                    (coe
                       (\ v1 ->
                          coe
                            MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
d_Convertible'45'LedgerState_236 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Convertible'45'LedgerState_236
  = coe
      MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.MidnightExample.Types.C_LedgerState'46'constructor_275
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
                            MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
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
              MAlonzo.Code.MidnightExample.Ledger.C_LedgerState'46'constructor_13237
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
                            MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
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
ledgerStep = coe d_ledgerStep_264
d_ledgerStep_264 ::
  MAlonzo.Code.MidnightExample.Types.T_LedgerState_58 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  Maybe MAlonzo.Code.MidnightExample.Types.T_LedgerState_58
d_ledgerStep_264 v0 v1
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.du_Convertible'45'Maybe_66
         (coe
            MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.MidnightExample.Types.C_LedgerState'46'constructor_275
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
                                     MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v3))))
                          (coe
                             (\ v3 ->
                                coe
                                  MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
                                  (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v3))
                                  (coe
                                     MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v3)))))
                       (MAlonzo.Code.MidnightExample.Ledger.d_tip_184 (coe v2)))
                    (coe MAlonzo.Code.MidnightExample.Ledger.d_count_186 (coe v2))
                    (coe MAlonzo.Code.MidnightExample.Ledger.d_snapshot1_188 (coe v2))
                    (coe
                       MAlonzo.Code.MidnightExample.Ledger.d_snapshot2_190 (coe v2))))
            (coe
               (\ v2 ->
                  coe
                    MAlonzo.Code.MidnightExample.Ledger.C_LedgerState'46'constructor_13237
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
                                     MAlonzo.Code.MidnightExample.Ledger.d_blockHash_38 (coe v3))))
                          (coe
                             (\ v3 ->
                                coe
                                  MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
                                  (coe MAlonzo.Code.MidnightExample.Types.d_slot_16 (coe v3))
                                  (coe
                                     MAlonzo.Code.MidnightExample.Types.d_blockHash_18 (coe v3)))))
                       (MAlonzo.Code.MidnightExample.Types.d_tip_68 (coe v2)))
                    (coe MAlonzo.Code.MidnightExample.Types.d_count_70 (coe v2))
                    (coe MAlonzo.Code.MidnightExample.Types.d_snapshot1_72 (coe v2))
                    (coe
                       MAlonzo.Code.MidnightExample.Types.d_snapshot2_74 (coe v2))))))
      (coe
         MAlonzo.Code.Interface.ComputationalRelation.du_success'45'maybe_182
         (coe
            MAlonzo.Code.MidnightExample.Ledger.du_LEDGER'45'step_298
            (coe
               MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
               (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550))
            (coe
               du_Show'8658'Hashable_12
               (coe
                  MAlonzo.Code.Class.Show.Core.C_mkShow_18
                  (coe MAlonzo.Code.Data.Integer.Show.d_show_6)))
            (\ v2 v3 ->
               coe du_Show'8658'Hashable_12 (coe du_Show'45'List_20 (coe v3)))
            (\ v2 v3 v4 v5 ->
               coe
                 du_Show'8658'Hashable_12
                 (coe du_Show'45''215'_26 (coe v4) (coe v5)))
            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
            (coe
               MAlonzo.Code.Foreign.Convertible.d_from_20
               (coe
                  MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                  (coe
                     (\ v2 ->
                        coe
                          MAlonzo.Code.MidnightExample.Types.C_LedgerState'46'constructor_275
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
                                        MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
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
                          MAlonzo.Code.MidnightExample.Ledger.C_LedgerState'46'constructor_13237
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
                                        MAlonzo.Code.MidnightExample.Ledger.C_Point'46'constructor_3381
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
                          MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_223
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_to_18
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
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
                                        MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
                          MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_9949
                          (coe
                             MAlonzo.Code.Foreign.Convertible.d_from_20
                             (coe
                                MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                                (coe
                                   (\ v3 ->
                                      coe
                                        MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
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
                                        MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
addBlockHash = coe d_addBlockHash''_270
d_addBlockHash''_270 ::
  MAlonzo.Code.MidnightExample.Types.T_Block_48 ->
  MAlonzo.Code.MidnightExample.Types.T_Block_48
d_addBlockHash''_270 v0
  = coe
      MAlonzo.Code.Foreign.Convertible.d_to_18
      (coe
         MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
         (coe
            (\ v1 ->
               coe
                 MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_223
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_to_18
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
                 MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_9949
                 (coe
                    MAlonzo.Code.Foreign.Convertible.d_from_20
                    (coe
                       MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_slotNo_70 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockNo_72 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_blockHash_74 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_prev_76 (coe v2))
                               (coe MAlonzo.Code.MidnightExample.Ledger.d_nodeId_78 (coe v2))))
                       (coe
                          (\ v2 ->
                             coe
                               MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
               coe du_Show'8658'Hashable_12 (coe du_Show'45'List_20 (coe v2))))
         (coe
            (\ v1 v2 v3 v4 ->
               coe
                 du_Show'8658'Hashable_12
                 (coe du_Show'45''215'_26 (coe v3) (coe v4))))
         (coe
            MAlonzo.Code.Foreign.Convertible.d_from_20
            (coe
               MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
               (coe
                  (\ v1 ->
                     coe
                       MAlonzo.Code.MidnightExample.Types.C_Block'46'constructor_223
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_to_18
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
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
                                     MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
                       MAlonzo.Code.MidnightExample.Ledger.C_Block'46'constructor_9949
                       (coe
                          MAlonzo.Code.Foreign.Convertible.d_from_20
                          (coe
                             MAlonzo.Code.Foreign.Convertible.C_Convertible'46'constructor_21
                             (coe
                                (\ v2 ->
                                   coe
                                     MAlonzo.Code.MidnightExample.Types.C_Header'46'constructor_125
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
                                     MAlonzo.Code.MidnightExample.Ledger.C_Header'46'constructor_9601
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
