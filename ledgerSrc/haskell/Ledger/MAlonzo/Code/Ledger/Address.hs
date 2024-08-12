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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq

-- Ledger.Address.Credential
d_Credential_16 a0 a1 a2 a3 a4 a5 = ()
data T_Credential_16
  = C_KeyHashObj_18 AgdaAny | C_ScriptObj_20 AgdaAny
-- Ledger.Address.isKeyHashObj
d_isKeyHashObj_22 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_22 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj_22 v6
du_isKeyHashObj_22 :: T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_22 v0
  = case coe v0 of
      C_KeyHashObj_18 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ScriptObj_20 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isScriptObj
d_isScriptObj_26 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_26 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_26 v6
du_isScriptObj_26 :: T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_26 v0
  = case coe v0 of
      C_KeyHashObj_18 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_20 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isVKey
d_isVKey_30 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_30 = C_VKeyisVKey_34
-- Ledger.Address.isScript
d_isScript_36 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_36 = C_SHisScript_40
-- Ledger.Address.BaseAddr
d_BaseAddr_42 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_42
  = C_BaseAddr'46'constructor_2021 AgdaAny T_Credential_16
                                   T_Credential_16
-- Ledger.Address.BaseAddr.net
d_net_50 :: T_BaseAddr_42 -> AgdaAny
d_net_50 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_2021 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.pay
d_pay_52 :: T_BaseAddr_42 -> T_Credential_16
d_pay_52 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_2021 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.stake
d_stake_54 :: T_BaseAddr_42 -> T_Credential_16
d_stake_54 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_2021 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr
d_BootstrapAddr_56 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_56
  = C_BootstrapAddr'46'constructor_2237 AgdaAny T_Credential_16
                                        Integer
-- Ledger.Address.BootstrapAddr.net
d_net_64 :: T_BootstrapAddr_56 -> AgdaAny
d_net_64 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_2237 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.pay
d_pay_66 :: T_BootstrapAddr_56 -> T_Credential_16
d_pay_66 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_2237 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.attrsSize
d_attrsSize_68 :: T_BootstrapAddr_56 -> Integer
d_attrsSize_68 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_2237 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr
d_RwdAddr_70 a0 a1 a2 a3 a4 a5 = ()
data T_RwdAddr_70
  = C_RwdAddr'46'constructor_2437 AgdaAny T_Credential_16
-- Ledger.Address.RwdAddr.net
d_net_76 :: T_RwdAddr_70 -> AgdaAny
d_net_76 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_2437 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr.stake
d_stake_78 :: T_RwdAddr_70 -> T_Credential_16
d_stake_78 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_2437 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.VKeyBaseAddr
d_VKeyBaseAddr_80 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_80 = erased
-- Ledger.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_84 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_84 = erased
-- Ledger.Address.ScriptBaseAddr
d_ScriptBaseAddr_88 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_88 = erased
-- Ledger.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_92 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_92 = erased
-- Ledger.Address.Addr
d_Addr_96 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_96 = erased
-- Ledger.Address.VKeyAddr
d_VKeyAddr_98 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_98 = erased
-- Ledger.Address.ScriptAddr
d_ScriptAddr_100 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_100 = erased
-- Ledger.Address.payCred
d_payCred_102 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_16
d_payCred_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_102 v6
du_payCred_102 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_16
du_payCred_102 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_2021 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_2237 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.stakeCred
d_stakeCred_104 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_16
d_stakeCred_104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_104 v6
du_stakeCred_104 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_16
du_stakeCred_104 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_2021 v2 v3 v4
               -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v4)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.netId
d_netId_106 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_106 v6
du_netId_106 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_106 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_2021 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_2237 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isVKeyAddr
d_isVKeyAddr_108 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_108 = erased
-- Ledger.Address.isScriptAddr
d_isScriptAddr_110 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_110 = erased
-- Ledger.Address.isScriptRwdAddr
d_isScriptRwdAddr_112 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_RwdAddr_70 -> ()
d_isScriptRwdAddr_112 = erased
-- Ledger.Address.isBootstrapAddr
d_isBootstrapAddr_124 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isBootstrapAddr_124 = C_IsBootstrapAddr_128
-- Ledger.Address.isBootstrapAddr?
d_isBootstrapAddr'63'_132 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isBootstrapAddr'63'_132 v6
du_isBootstrapAddr'63'_132 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_132 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe
             MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_IsBootstrapAddr_128)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.DecEq-Credential
d_DecEq'45'Credential_136 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_136 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_136 v4 v5
du_DecEq'45'Credential_136 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_136 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_18 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_18 v5
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v5 v3))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          C_ScriptObj_20 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ScriptObj_20 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_18 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ScriptObj_20 v5
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1 v5 v3))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address.Dec-isVKey
d_Dec'45'isVKey_138 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_138 v6
du_Dec'45'isVKey_138 ::
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_138 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_18 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_34))
         C_ScriptObj_20 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.Dec-isScript
d_Dec'45'isScript_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_152 v6
du_Dec'45'isScript_152 ::
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_152 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_18 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_ScriptObj_20 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_SHisScript_40))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.getScriptHash
d_getScriptHash_178 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_36 -> AgdaAny
d_getScriptHash_178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_178 v6 v7
du_getScriptHash_178 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_36 -> AgdaAny
du_getScriptHash_178 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BaseAddr'46'constructor_2021 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_20 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BootstrapAddr'46'constructor_2237 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_20 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_184 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_184 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_184 v3 v4 v5
du_DecEq'45'BaseAddr_184 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_184 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BaseAddr'46'constructor_2021 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BaseAddr'46'constructor_2021 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                             (coe du_DecEq'45'Credential_136 (coe v1) (coe v2)) v10
                                             v6))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_136 (coe v1) (coe v2)) v9 v5))
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
d_DecEq'45'BootstrapAddr_186 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_186 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_186 v3 v4 v5
du_DecEq'45'BootstrapAddr_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_186 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BootstrapAddr'46'constructor_2237 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BootstrapAddr'46'constructor_2237 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_136 (coe v1) (coe v2)) v9 v5))
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
d_DecEq'45'RwdAddr_188 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_188 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RwdAddr_188 v3 v4 v5
du_DecEq'45'RwdAddr_188 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_188 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_RwdAddr'46'constructor_2437 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_RwdAddr'46'constructor_2437 v7 v8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__74
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_136 (coe v1) (coe v2)) v8 v5))
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
