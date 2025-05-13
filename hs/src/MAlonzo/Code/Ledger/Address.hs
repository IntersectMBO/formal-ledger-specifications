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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.DecEq
import qualified MAlonzo.Code.Tactic.Derive.Show

-- Ledger.Address.Credential
d_Credential_16 a0 a1 a2 a3 a4 a5 = ()
data T_Credential_16
  = C_KeyHashObj_18 AgdaAny | C_ScriptObj_20 AgdaAny
-- Ledger.Address.HasCredential
d_HasCredential_26 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasCredential_26
  = C_HasCredential'46'constructor_355 (AgdaAny -> T_Credential_16)
-- Ledger.Address.HasCredential.CredentialOf
d_CredentialOf_34 ::
  T_HasCredential_26 -> AgdaAny -> T_Credential_16
d_CredentialOf_34 v0
  = case coe v0 of
      C_HasCredential'46'constructor_355 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address._.CredentialOf
d_CredentialOf_38 ::
  T_HasCredential_26 -> AgdaAny -> T_Credential_16
d_CredentialOf_38 v0 = coe d_CredentialOf_34 (coe v0)
-- Ledger.Address.isKeyHashObj
d_isKeyHashObj_40 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> Maybe AgdaAny
d_isKeyHashObj_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj_40 v6
du_isKeyHashObj_40 :: T_Credential_16 -> Maybe AgdaAny
du_isKeyHashObj_40 v0
  = case coe v0 of
      C_KeyHashObj_18 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ScriptObj_20 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isKeyHashObjᵇ
d_isKeyHashObj'7495'_44 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_16 -> Bool
d_isKeyHashObj'7495'_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj'7495'_44 v6
du_isKeyHashObj'7495'_44 :: T_Credential_16 -> Bool
du_isKeyHashObj'7495'_44 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         C_KeyHashObj_18 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Address.isKeyHash
d_isKeyHash_46 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_16 -> ()
d_isKeyHash_46 = erased
-- Ledger.Address.isScriptObj
d_isScriptObj_50 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> Maybe AgdaAny
d_isScriptObj_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_50 v6
du_isScriptObj_50 :: T_Credential_16 -> Maybe AgdaAny
du_isScriptObj_50 v0
  = case coe v0 of
      C_KeyHashObj_18 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_20 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isVKey
d_isVKey_54 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_54 = C_VKeyisVKey_58
-- Ledger.Address.isScript
d_isScript_60 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_60 = C_SHisScript_64
-- Ledger.Address.BaseAddr
d_BaseAddr_66 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_66
  = C_BaseAddr'46'constructor_3025 AgdaAny T_Credential_16
                                   (Maybe T_Credential_16)
-- Ledger.Address.BaseAddr.net
d_net_74 :: T_BaseAddr_66 -> AgdaAny
d_net_74 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.pay
d_pay_76 :: T_BaseAddr_66 -> T_Credential_16
d_pay_76 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BaseAddr.stake
d_stake_78 :: T_BaseAddr_66 -> Maybe T_Credential_16
d_stake_78 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr
d_BootstrapAddr_80 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_80
  = C_BootstrapAddr'46'constructor_3247 AgdaAny T_Credential_16
                                        Integer
-- Ledger.Address.BootstrapAddr.net
d_net_88 :: T_BootstrapAddr_80 -> AgdaAny
d_net_88 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.pay
d_pay_90 :: T_BootstrapAddr_80 -> T_Credential_16
d_pay_90 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.BootstrapAddr.attrsSize
d_attrsSize_92 :: T_BootstrapAddr_80 -> Integer
d_attrsSize_92 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr
d_RwdAddr_94 a0 a1 a2 a3 a4 a5 = ()
data T_RwdAddr_94
  = C_RwdAddr'46'constructor_3453 AgdaAny T_Credential_16
-- Ledger.Address.RwdAddr.net
d_net_100 :: T_RwdAddr_94 -> AgdaAny
d_net_100 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_3453 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.RwdAddr.stake
d_stake_102 :: T_RwdAddr_94 -> T_Credential_16
d_stake_102 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_3453 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.HasNetworkId
d_HasNetworkId_108 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasNetworkId_108
  = C_HasNetworkId'46'constructor_3661 (AgdaAny -> AgdaAny)
-- Ledger.Address.HasNetworkId.NetworkIdOf
d_NetworkIdOf_116 :: T_HasNetworkId_108 -> AgdaAny -> AgdaAny
d_NetworkIdOf_116 v0
  = case coe v0 of
      C_HasNetworkId'46'constructor_3661 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address._.NetworkIdOf
d_NetworkIdOf_120 :: T_HasNetworkId_108 -> AgdaAny -> AgdaAny
d_NetworkIdOf_120 v0 = coe d_NetworkIdOf_116 (coe v0)
-- Ledger.Address.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_122 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_108
d_HasNetworkId'45'BaseAddr_122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BaseAddr_122
du_HasNetworkId'45'BaseAddr_122 :: T_HasNetworkId_108
du_HasNetworkId'45'BaseAddr_122
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_74 (coe v0)))
-- Ledger.Address.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_124 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_108
d_HasNetworkId'45'BootstrapAddr_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BootstrapAddr_124
du_HasNetworkId'45'BootstrapAddr_124 :: T_HasNetworkId_108
du_HasNetworkId'45'BootstrapAddr_124
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_88 (coe v0)))
-- Ledger.Address.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_126 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_108
d_HasNetworkId'45'RwdAddr_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'RwdAddr_126
du_HasNetworkId'45'RwdAddr_126 :: T_HasNetworkId_108
du_HasNetworkId'45'RwdAddr_126
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_100 (coe v0)))
-- Ledger.Address.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_128 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasCredential_26
d_HasCredential'45'RwdAddr_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasCredential'45'RwdAddr_128
du_HasCredential'45'RwdAddr_128 :: T_HasCredential_26
du_HasCredential'45'RwdAddr_128
  = coe
      C_HasCredential'46'constructor_355
      (coe (\ v0 -> d_stake_102 (coe v0)))
-- Ledger.Address.VKeyBaseAddr
d_VKeyBaseAddr_130 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_130 = erased
-- Ledger.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_134 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_134 = erased
-- Ledger.Address.ScriptBaseAddr
d_ScriptBaseAddr_138 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_138 = erased
-- Ledger.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_142 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_142 = erased
-- Ledger.Address.Addr
d_Addr_146 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_146 = erased
-- Ledger.Address.VKeyAddr
d_VKeyAddr_148 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_148 = erased
-- Ledger.Address.ScriptAddr
d_ScriptAddr_150 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_150 = erased
-- Ledger.Address.payCred
d_payCred_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_16
d_payCred_152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_152 v6
du_payCred_152 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_16
du_payCred_152 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_3025 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_3247 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.stakeCred
d_stakeCred_154 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_16
d_stakeCred_154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_154 v6
du_stakeCred_154 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_16
du_stakeCred_154 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_3025 v2 v3 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.netId
d_netId_156 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_156 v6
du_netId_156 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_156 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_3025 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_BootstrapAddr'46'constructor_3247 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.isVKeyAddr
d_isVKeyAddr_158 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_158 = erased
-- Ledger.Address.isScriptAddr
d_isScriptAddr_160 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_160 = erased
-- Ledger.Address.isScriptRwdAddr
d_isScriptRwdAddr_162 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_RwdAddr_94 -> ()
d_isScriptRwdAddr_162 = erased
-- Ledger.Address.isBootstrapAddr
d_isBootstrapAddr_174 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isBootstrapAddr_174 = C_IsBootstrapAddr_178
-- Ledger.Address.isBootstrapAddr?
d_isBootstrapAddr'63'_182 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isBootstrapAddr'63'_182 v6
du_isBootstrapAddr'63'_182 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_182 v0
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
                   (coe C_IsBootstrapAddr_178)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.DecEq-Credential
d_DecEq'45'Credential_186 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_186 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_186 v4 v5
du_DecEq'45'Credential_186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_186 v0 v1
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
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v5 v3))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1 v5 v3))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
                                    (coe
                                       (\ v6 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) erased)))
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address.Dec-isVKey
d_Dec'45'isVKey_188 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_188 v6
du_Dec'45'isVKey_188 ::
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_188 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_18 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_58))
         C_ScriptObj_20 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.Dec-isScript
d_Dec'45'isScript_202 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_202 v6
du_Dec'45'isScript_202 ::
  T_Credential_16 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_202 v0
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
                   (coe C_SHisScript_64))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Address.getScriptHash
d_getScriptHash_228 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_60 -> AgdaAny
d_getScriptHash_228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_228 v6 v7
du_getScriptHash_228 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_60 -> AgdaAny
du_getScriptHash_228 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BaseAddr'46'constructor_3025 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_20 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BootstrapAddr'46'constructor_3247 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_20 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_234 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_234 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_234 v3 v4 v5
du_DecEq'45'BaseAddr_234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_234 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BaseAddr'46'constructor_3025 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BaseAddr'46'constructor_3025 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                             (coe
                                                MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                (coe du_DecEq'45'Credential_186 (coe v1) (coe v2)))
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_186 (coe v1) (coe v2)) v9 v5))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v8 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
d_DecEq'45'BootstrapAddr_236 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_236 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_236 v3 v4 v5
du_DecEq'45'BootstrapAddr_236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_236 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_BootstrapAddr'46'constructor_3247 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_BootstrapAddr'46'constructor_3247 v8 v9 v10
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                          (coe
                                             MAlonzo.Code.Data.Nat.Properties.d__'8799'__2710
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_186 (coe v1) (coe v2)) v9 v5))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v8 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
d_DecEq'45'RwdAddr_238 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_238 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RwdAddr_238 v3 v4 v5
du_DecEq'45'RwdAddr_238 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_238 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v3 ->
            case coe v3 of
              C_RwdAddr'46'constructor_3453 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_RwdAddr'46'constructor_3453 v7 v8
                            -> coe
                                 MAlonzo.Code.Tactic.Derive.DecEq.du_map''_38
                                 (coe
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                          (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                                          (coe
                                             MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_186 (coe v1) (coe v2)) v8 v5))
                                    (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v7 v4))
                                 (coe
                                    MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
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
-- Ledger.Address._.Show-Credential
d_Show'45'Credential_250 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential_250 v7 v8
du_Show'45'Credential_250 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_250 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_18 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("KeyHashObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v3))
              C_ScriptObj_20 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("ScriptObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v1 v3))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address._.Show-RwdAddr
d_Show'45'RwdAddr_252 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Show'45'RwdAddr_252 v6 v7 v8
du_Show'45'RwdAddr_252 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_252 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v3 ->
            case coe v3 of
              C_RwdAddr'46'constructor_3453 v4 v5
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe
                        MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                        (coe ("constructor" :: Data.Text.Text))
                        (coe
                           MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                           (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v4)))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe
                           MAlonzo.Code.Class.Show.Core.d_show_16
                           (coe du_Show'45'Credential_250 (coe v1) (coe v2)) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_254 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential'215'Coin_254 v7 v8
du_Show'45'Credential'215'Coin_254 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_254 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe du_Show'45'Credential_250 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
