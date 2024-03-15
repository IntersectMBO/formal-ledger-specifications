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

module MAlonzo.Code.Ledger.Address where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Sum.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Address.Credential
d_Credential_16 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Credential_16 = erased
-- Ledger.Address.isVKey
d_isVKey_18 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_18 = C_VKeyisVKey_22
-- Ledger.Address.isScript
d_isScript_24 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_24 = C_SHisScript_28
-- Ledger.Address.BaseAddr
d_BaseAddr_30 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_30
  = C_BaseAddr'46'constructor_581 AgdaAny
                                  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
                                  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Address.BaseAddr.net
d_net_38 :: T_BaseAddr_30 -> AgdaAny
d_net_38 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_581 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.pay
d_pay_40 ::
  T_BaseAddr_30 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_40 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_581 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.stake
d_stake_42 ::
  T_BaseAddr_30 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_42 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_581 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr
d_BootstrapAddr_44 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_44
  = C_BootstrapAddr'46'constructor_843 AgdaAny
                                       MAlonzo.Code.Data.Sum.Base.T__'8846'__30 Integer
-- Ledger.Address.BootstrapAddr.net
d_net_52 :: T_BootstrapAddr_44 -> AgdaAny
d_net_52 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_843 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.pay
d_pay_54 ::
  T_BootstrapAddr_44 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_pay_54 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_843 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.attrsSize
d_attrsSize_56 :: T_BootstrapAddr_44 -> Integer
d_attrsSize_56 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_843 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr
d_RwdAddr_58 a0 a1 a2 a3 a4 a5 = ()
data T_RwdAddr_58
  = C_RwdAddr'46'constructor_1089 AgdaAny
                                  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
-- Ledger.Address.RwdAddr.net
d_net_64 :: T_RwdAddr_58 -> AgdaAny
d_net_64 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_1089 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr.stake
d_stake_66 ::
  T_RwdAddr_58 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_stake_66 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_1089 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.VKeyBaseAddr
d_VKeyBaseAddr_68 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_68 = erased
-- Ledger.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_72 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_72 = erased
-- Ledger.Address.ScriptBaseAddr
d_ScriptBaseAddr_76 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_76 = erased
-- Ledger.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_80 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_80 = erased
-- Ledger.Address.Addr
d_Addr_84 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_84 = erased
-- Ledger.Address.VKeyAddr
d_VKeyAddr_86 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_86 = erased
-- Ledger.Address.ScriptAddr
d_ScriptAddr_88 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_88 = erased
-- Ledger.Address.payCred
d_payCred_90 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_payCred_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_90 v6
du_payCred_90 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_payCred_90 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_581 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_843 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.netId
d_netId_92 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_92 v6
du_netId_92 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_92 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_581 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_843 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isVKeyAddr
d_isVKeyAddr_94 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_94 = erased
-- Ledger.Address.isScriptAddr
d_isScriptAddr_96 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_96 = erased
-- Ledger.Address.isScriptRwdAddr
d_isScriptRwdAddr_98 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_RwdAddr_58 -> ()
d_isScriptRwdAddr_98 = erased
-- Ledger.Address.Dec-isVKey
d_Dec'45'isVKey_108 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_108 v6
du_Dec'45'isVKey_108 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_108 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_22))
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.Dec-isScript
d_Dec'45'isScript_122 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_122 v6
du_Dec'45'isScript_122 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_122 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_SHisScript_28))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.getScriptHash
d_getScriptHash_148 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_24 -> AgdaAny
d_getScriptHash_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_148 v6 v7
du_getScriptHash_148 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_24 -> AgdaAny
du_getScriptHash_148 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BaseAddr'46'constructor_581 v3 v4 v5
                  -> case coe v4 of
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BootstrapAddr'46'constructor_843 v3 v4 v5
                  -> case coe v4 of
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_154 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_154 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_154 v3 v4 v5
du_DecEq'45'BaseAddr_154 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_154 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BaseAddr'46'constructor_581 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BaseAddr'46'constructor_581 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe v1))
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe v2))
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v2))
                                          (coe v9) (coe v5)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v8 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_156 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_156 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_156 v3 v4 v5
du_DecEq'45'BootstrapAddr_156 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_156 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BootstrapAddr'46'constructor_843 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BootstrapAddr'46'constructor_843 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v2))
                                          (coe v9) (coe v5)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v8 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v11 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                                                  erased)
                                               erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address.DecEq-RwdAddr
d_DecEq'45'RwdAddr_158 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_158 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RwdAddr_158 v3 v4 v5
du_DecEq'45'RwdAddr_158 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_158 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_RwdAddr'46'constructor_1089 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_RwdAddr'46'constructor_1089 v7 v8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__68
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Data.Sum.Properties.du_'8801''45'dec_54
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1))
                                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v2))
                                          (coe v8) (coe v5)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v7 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v9 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)
                                            erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
