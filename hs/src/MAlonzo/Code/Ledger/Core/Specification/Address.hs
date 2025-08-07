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

module MAlonzo.Code.Ledger.Core.Specification.Address where

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

-- Ledger.Core.Specification.Address.Credential
d_Credential_20 a0 a1 a2 a3 a4 a5 = ()
data T_Credential_20
  = C_KeyHashObj_22 AgdaAny | C_ScriptObj_24 AgdaAny
-- Ledger.Core.Specification.Address.HasCredential
d_HasCredential_30 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasCredential_30
  = C_HasCredential'46'constructor_355 (AgdaAny -> T_Credential_20)
-- Ledger.Core.Specification.Address.HasCredential.CredentialOf
d_CredentialOf_38 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_38 v0
  = case coe v0 of
      C_HasCredential'46'constructor_355 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.CredentialOf
d_CredentialOf_42 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_42 v0 = coe d_CredentialOf_38 (coe v0)
-- Ledger.Core.Specification.Address.isKeyHashObj
d_isKeyHashObj_44 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isKeyHashObj_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj_44 v6
du_isKeyHashObj_44 :: T_Credential_20 -> Maybe AgdaAny
du_isKeyHashObj_44 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isKeyHashObjᵇ
d_isKeyHashObj'7495'_48 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> Bool
d_isKeyHashObj'7495'_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj'7495'_48 v6
du_isKeyHashObj'7495'_48 :: T_Credential_20 -> Bool
du_isKeyHashObj'7495'_48 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         C_KeyHashObj_22 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Core.Specification.Address.isKeyHash
d_isKeyHash_50 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> ()
d_isKeyHash_50 = erased
-- Ledger.Core.Specification.Address.isScriptObj
d_isScriptObj_54 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isScriptObj_54 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_54 v6
du_isScriptObj_54 :: T_Credential_20 -> Maybe AgdaAny
du_isScriptObj_54 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKey
d_isVKey_58 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_58 = C_VKeyisVKey_62
-- Ledger.Core.Specification.Address.isScript
d_isScript_64 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_64 = C_SHisScript_68
-- Ledger.Core.Specification.Address.BaseAddr
d_BaseAddr_70 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_70
  = C_BaseAddr'46'constructor_3025 AgdaAny T_Credential_20
                                   (Maybe T_Credential_20)
-- Ledger.Core.Specification.Address.BaseAddr.net
d_net_78 :: T_BaseAddr_70 -> AgdaAny
d_net_78 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.pay
d_pay_80 :: T_BaseAddr_70 -> T_Credential_20
d_pay_80 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.stake
d_stake_82 :: T_BaseAddr_70 -> Maybe T_Credential_20
d_stake_82 v0
  = case coe v0 of
      C_BaseAddr'46'constructor_3025 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr
d_BootstrapAddr_84 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_84
  = C_BootstrapAddr'46'constructor_3247 AgdaAny T_Credential_20
                                        Integer
-- Ledger.Core.Specification.Address.BootstrapAddr.net
d_net_92 :: T_BootstrapAddr_84 -> AgdaAny
d_net_92 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.pay
d_pay_94 :: T_BootstrapAddr_84 -> T_Credential_20
d_pay_94 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.attrsSize
d_attrsSize_96 :: T_BootstrapAddr_84 -> Integer
d_attrsSize_96 v0
  = case coe v0 of
      C_BootstrapAddr'46'constructor_3247 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RwdAddr
d_RwdAddr_98 a0 a1 a2 a3 a4 a5 = ()
data T_RwdAddr_98
  = C_RwdAddr'46'constructor_3453 AgdaAny T_Credential_20
-- Ledger.Core.Specification.Address.RwdAddr.net
d_net_104 :: T_RwdAddr_98 -> AgdaAny
d_net_104 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_3453 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RwdAddr.stake
d_stake_106 :: T_RwdAddr_98 -> T_Credential_20
d_stake_106 v0
  = case coe v0 of
      C_RwdAddr'46'constructor_3453 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.HasNetworkId
d_HasNetworkId_112 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasNetworkId_112
  = C_HasNetworkId'46'constructor_3661 (AgdaAny -> AgdaAny)
-- Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf
d_NetworkIdOf_120 :: T_HasNetworkId_112 -> AgdaAny -> AgdaAny
d_NetworkIdOf_120 v0
  = case coe v0 of
      C_HasNetworkId'46'constructor_3661 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.NetworkIdOf
d_NetworkIdOf_124 :: T_HasNetworkId_112 -> AgdaAny -> AgdaAny
d_NetworkIdOf_124 v0 = coe d_NetworkIdOf_120 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_126 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_112
d_HasNetworkId'45'BaseAddr_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BaseAddr_126
du_HasNetworkId'45'BaseAddr_126 :: T_HasNetworkId_112
du_HasNetworkId'45'BaseAddr_126
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_78 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_128 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_112
d_HasNetworkId'45'BootstrapAddr_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BootstrapAddr_128
du_HasNetworkId'45'BootstrapAddr_128 :: T_HasNetworkId_112
du_HasNetworkId'45'BootstrapAddr_128
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_92 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_130 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_112
d_HasNetworkId'45'RwdAddr_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'RwdAddr_130
du_HasNetworkId'45'RwdAddr_130 :: T_HasNetworkId_112
du_HasNetworkId'45'RwdAddr_130
  = coe
      C_HasNetworkId'46'constructor_3661
      (coe (\ v0 -> d_net_104 (coe v0)))
-- Ledger.Core.Specification.Address.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_132 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasCredential_30
d_HasCredential'45'RwdAddr_132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasCredential'45'RwdAddr_132
du_HasCredential'45'RwdAddr_132 :: T_HasCredential_30
du_HasCredential'45'RwdAddr_132
  = coe
      C_HasCredential'46'constructor_355
      (coe (\ v0 -> d_stake_106 (coe v0)))
-- Ledger.Core.Specification.Address.VKeyBaseAddr
d_VKeyBaseAddr_134 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_134 = erased
-- Ledger.Core.Specification.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_138 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_138 = erased
-- Ledger.Core.Specification.Address.ScriptBaseAddr
d_ScriptBaseAddr_142 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_142 = erased
-- Ledger.Core.Specification.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_146 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_146 = erased
-- Ledger.Core.Specification.Address.Addr
d_Addr_150 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_150 = erased
-- Ledger.Core.Specification.Address.VKeyAddr
d_VKeyAddr_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_152 = erased
-- Ledger.Core.Specification.Address.ScriptAddr
d_ScriptAddr_154 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_154 = erased
-- Ledger.Core.Specification.Address.payCred
d_payCred_156 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
d_payCred_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_156 v6
du_payCred_156 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
du_payCred_156 v0
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
-- Ledger.Core.Specification.Address.stakeCred
d_stakeCred_158 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
d_stakeCred_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_158 v6
du_stakeCred_158 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
du_stakeCred_158 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_BaseAddr'46'constructor_3025 v2 v3 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.netId
d_netId_160 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_160 v6
du_netId_160 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_160 v0
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
-- Ledger.Core.Specification.Address.isVKeyAddr
d_isVKeyAddr_162 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_162 = erased
-- Ledger.Core.Specification.Address.isScriptAddr
d_isScriptAddr_164 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_164 = erased
-- Ledger.Core.Specification.Address.isScriptRwdAddr
d_isScriptRwdAddr_166 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_RwdAddr_98 -> ()
d_isScriptRwdAddr_166 = erased
-- Ledger.Core.Specification.Address.isBootstrapAddr
d_isBootstrapAddr_178 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isBootstrapAddr_178 = C_IsBootstrapAddr_182
-- Ledger.Core.Specification.Address.isBootstrapAddr?
d_isBootstrapAddr'63'_186 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isBootstrapAddr'63'_186 v6
du_isBootstrapAddr'63'_186 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_186 v0
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
                   (coe C_IsBootstrapAddr_182)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-Credential
d_DecEq'45'Credential_190 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_190 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_190 v4 v5
du_DecEq'45'Credential_190 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_190 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_22 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_22 v5
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
                          C_ScriptObj_24 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              C_ScriptObj_24 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_22 v5
                            -> coe
                                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                          C_ScriptObj_24 v5
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
-- Ledger.Core.Specification.Address.Dec-isVKey
d_Dec'45'isVKey_192 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_192 v6
du_Dec'45'isVKey_192 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_192 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_62))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.Dec-isScript
d_Dec'45'isScript_206 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_206 v6
du_Dec'45'isScript_206 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_206 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_SHisScript_68))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.getScriptHash
d_getScriptHash_232 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_64 -> AgdaAny
d_getScriptHash_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_232 v6 v7
du_getScriptHash_232 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_64 -> AgdaAny
du_getScriptHash_232 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BaseAddr'46'constructor_3025 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_BootstrapAddr'46'constructor_3247 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_238 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_238 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_238 v3 v4 v5
du_DecEq'45'BaseAddr_238 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_238 v0 v1 v2
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
                                                (coe du_DecEq'45'Credential_190 (coe v1) (coe v2)))
                                             (coe v10) (coe v6)))
                                       (coe
                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                          (coe du_DecEq'45'Credential_190 (coe v1) (coe v2)) v9 v5))
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
-- Ledger.Core.Specification.Address.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_240 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_240 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_240 v3 v4 v5
du_DecEq'45'BootstrapAddr_240 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_240 v0 v1 v2
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
                                          (coe du_DecEq'45'Credential_190 (coe v1) (coe v2)) v9 v5))
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
-- Ledger.Core.Specification.Address.DecEq-RwdAddr
d_DecEq'45'RwdAddr_242 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_242 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RwdAddr_242 v3 v4 v5
du_DecEq'45'RwdAddr_242 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_242 v0 v1 v2
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
                                          (coe du_DecEq'45'Credential_190 (coe v1) (coe v2)) v8 v5))
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
-- Ledger.Core.Specification.Address._.Show-Credential
d_Show'45'Credential_254 ::
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
d_Show'45'Credential_254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential_254 v7 v8
du_Show'45'Credential_254 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_254 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_22 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("KeyHashObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v0 v3))
              C_ScriptObj_24 v3
                -> coe
                     MAlonzo.Code.Data.String.Base.d__'60''43''62'__50
                     (coe ("ScriptObj" :: Data.Text.Text))
                     (coe
                        MAlonzo.Code.Tactic.Derive.Show.d_wrapWithPars_40
                        (coe MAlonzo.Code.Class.Show.Core.d_show_16 v1 v3))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-RwdAddr
d_Show'45'RwdAddr_256 ::
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
d_Show'45'RwdAddr_256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Show'45'RwdAddr_256 v6 v7 v8
du_Show'45'RwdAddr_256 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_256 v0 v1 v2
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
                           (coe du_Show'45'Credential_254 (coe v1) (coe v2)) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_258 ::
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
d_Show'45'Credential'215'Coin_258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential'215'Coin_258 v7 v8
du_Show'45'Credential'215'Coin_258 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_258 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe du_Show'45'Credential_254 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
