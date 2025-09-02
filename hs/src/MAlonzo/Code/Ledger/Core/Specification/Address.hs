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
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.Tactic.Derive.Show

-- Ledger.Core.Specification.Address.Credential
d_Credential_20 a0 a1 a2 a3 a4 a5 = ()
data T_Credential_20
  = C_KeyHashObj_22 AgdaAny | C_ScriptObj_24 AgdaAny
-- Ledger.Core.Specification.Address.HasCredential
d_HasCredential_30 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasCredential_30
  = C_constructor_40 (AgdaAny -> T_Credential_20)
-- Ledger.Core.Specification.Address.HasCredential.CredentialOf
d_CredentialOf_38 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_38 v0
  = case coe v0 of
      C_constructor_40 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.CredentialOf
d_CredentialOf_44 ::
  T_HasCredential_30 -> AgdaAny -> T_Credential_20
d_CredentialOf_44 v0 = coe d_CredentialOf_38 (coe v0)
-- Ledger.Core.Specification.Address.isKeyHashObj
d_isKeyHashObj_46 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isKeyHashObj_46 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj_46 v6
du_isKeyHashObj_46 :: T_Credential_20 -> Maybe AgdaAny
du_isKeyHashObj_46 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isKeyHashObjᵇ
d_isKeyHashObj'7495'_50 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> Bool
d_isKeyHashObj'7495'_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj'7495'_50 v6
du_isKeyHashObj'7495'_50 :: T_Credential_20 -> Bool
du_isKeyHashObj'7495'_50 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         C_KeyHashObj_22 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Core.Specification.Address.isKeyHash
d_isKeyHash_52 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> ()
d_isKeyHash_52 = erased
-- Ledger.Core.Specification.Address.isScriptObj
d_isScriptObj_56 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isScriptObj_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_56 v6
du_isScriptObj_56 :: T_Credential_20 -> Maybe AgdaAny
du_isScriptObj_56 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKey
d_isVKey_60 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_60 = C_VKeyisVKey_64
-- Ledger.Core.Specification.Address.isScript
d_isScript_66 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_66 = C_SHisScript_70
-- Ledger.Core.Specification.Address.BaseAddr
d_BaseAddr_72 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_72
  = C_constructor_86 AgdaAny T_Credential_20 (Maybe T_Credential_20)
-- Ledger.Core.Specification.Address.BaseAddr.net
d_net_80 :: T_BaseAddr_72 -> AgdaAny
d_net_80 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.pay
d_pay_82 :: T_BaseAddr_72 -> T_Credential_20
d_pay_82 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.stake
d_stake_84 :: T_BaseAddr_72 -> Maybe T_Credential_20
d_stake_84 v0
  = case coe v0 of
      C_constructor_86 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr
d_BootstrapAddr_88 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_88
  = C_constructor_102 AgdaAny T_Credential_20 Integer
-- Ledger.Core.Specification.Address.BootstrapAddr.net
d_net_96 :: T_BootstrapAddr_88 -> AgdaAny
d_net_96 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.pay
d_pay_98 :: T_BootstrapAddr_88 -> T_Credential_20
d_pay_98 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.attrsSize
d_attrsSize_100 :: T_BootstrapAddr_88 -> Integer
d_attrsSize_100 v0
  = case coe v0 of
      C_constructor_102 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RwdAddr
d_RwdAddr_104 a0 a1 a2 a3 a4 a5 = ()
data T_RwdAddr_104 = C_constructor_114 AgdaAny T_Credential_20
-- Ledger.Core.Specification.Address.RwdAddr.net
d_net_110 :: T_RwdAddr_104 -> AgdaAny
d_net_110 v0
  = case coe v0 of
      C_constructor_114 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RwdAddr.stake
d_stake_112 :: T_RwdAddr_104 -> T_Credential_20
d_stake_112 v0
  = case coe v0 of
      C_constructor_114 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.HasNetworkId
d_HasNetworkId_120 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasNetworkId_120 = C_constructor_130 (AgdaAny -> AgdaAny)
-- Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf
d_NetworkIdOf_128 :: T_HasNetworkId_120 -> AgdaAny -> AgdaAny
d_NetworkIdOf_128 v0
  = case coe v0 of
      C_constructor_130 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.NetworkIdOf
d_NetworkIdOf_134 :: T_HasNetworkId_120 -> AgdaAny -> AgdaAny
d_NetworkIdOf_134 v0 = coe d_NetworkIdOf_128 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_136 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_120
d_HasNetworkId'45'BaseAddr_136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BaseAddr_136
du_HasNetworkId'45'BaseAddr_136 :: T_HasNetworkId_120
du_HasNetworkId'45'BaseAddr_136
  = coe C_constructor_130 (coe (\ v0 -> d_net_80 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_138 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_120
d_HasNetworkId'45'BootstrapAddr_138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BootstrapAddr_138
du_HasNetworkId'45'BootstrapAddr_138 :: T_HasNetworkId_120
du_HasNetworkId'45'BootstrapAddr_138
  = coe C_constructor_130 (coe (\ v0 -> d_net_96 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-RwdAddr
d_HasNetworkId'45'RwdAddr_140 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_120
d_HasNetworkId'45'RwdAddr_140 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'RwdAddr_140
du_HasNetworkId'45'RwdAddr_140 :: T_HasNetworkId_120
du_HasNetworkId'45'RwdAddr_140
  = coe C_constructor_130 (coe (\ v0 -> d_net_110 (coe v0)))
-- Ledger.Core.Specification.Address.HasCredential-RwdAddr
d_HasCredential'45'RwdAddr_142 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasCredential_30
d_HasCredential'45'RwdAddr_142 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasCredential'45'RwdAddr_142
du_HasCredential'45'RwdAddr_142 :: T_HasCredential_30
du_HasCredential'45'RwdAddr_142
  = coe C_constructor_40 (coe (\ v0 -> d_stake_112 (coe v0)))
-- Ledger.Core.Specification.Address.VKeyBaseAddr
d_VKeyBaseAddr_144 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_144 = erased
-- Ledger.Core.Specification.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_148 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_148 = erased
-- Ledger.Core.Specification.Address.ScriptBaseAddr
d_ScriptBaseAddr_152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_152 = erased
-- Ledger.Core.Specification.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_156 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_156 = erased
-- Ledger.Core.Specification.Address.Addr
d_Addr_160 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_160 = erased
-- Ledger.Core.Specification.Address.VKeyAddr
d_VKeyAddr_162 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_162 = erased
-- Ledger.Core.Specification.Address.ScriptAddr
d_ScriptAddr_164 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_164 = erased
-- Ledger.Core.Specification.Address.payCred
d_payCred_166 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
d_payCred_166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_166 v6
du_payCred_166 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
du_payCred_166 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_86 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_102 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.stakeCred
d_stakeCred_168 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
d_stakeCred_168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_168 v6
du_stakeCred_168 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
du_stakeCred_168 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_86 v2 v3 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.netId
d_netId_170 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_170 v6
du_netId_170 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_170 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_86 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_102 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKeyAddr
d_isVKeyAddr_172 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_172 = erased
-- Ledger.Core.Specification.Address.isScriptAddr
d_isScriptAddr_174 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_174 = erased
-- Ledger.Core.Specification.Address.isScriptRwdAddr
d_isScriptRwdAddr_176 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_RwdAddr_104 -> ()
d_isScriptRwdAddr_176 = erased
-- Ledger.Core.Specification.Address.isBootstrapAddr
d_isBootstrapAddr_188 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isBootstrapAddr_188 = C_IsBootstrapAddr_192
-- Ledger.Core.Specification.Address.isBootstrapAddr?
d_isBootstrapAddr'63'_196 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isBootstrapAddr'63'_196 v6
du_isBootstrapAddr'63'_196 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_isBootstrapAddr'63'_196 v0
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
                   (coe C_IsBootstrapAddr_192)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-Credential
d_DecEq'45'Credential_200 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_200 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_200 v4 v5
du_DecEq'45'Credential_200 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_200 v0 v1
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v2 ->
            case coe v2 of
              C_KeyHashObj_22 v3
                -> coe
                     (\ v4 ->
                        case coe v4 of
                          C_KeyHashObj_22 v5
                            -> let v6
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
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
                            -> let v6
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1 v3 v5 in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                                      -> if coe v7
                                           then coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                     erased)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v7)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.Dec-isVKey
d_Dec'45'isVKey_202 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_202 v6
du_Dec'45'isVKey_202 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_202 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_64))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.Dec-isScript
d_Dec'45'isScript_216 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_216 v6
du_Dec'45'isScript_216 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_216 v0
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
                   (coe C_SHisScript_70))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.getScriptHash
d_getScriptHash_242 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_66 -> AgdaAny
d_getScriptHash_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_242 v6 v7
du_getScriptHash_242 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_66 -> AgdaAny
du_getScriptHash_242 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_86 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_102 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_248 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_248 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_248 v3 v4 v5
du_DecEq'45'BaseAddr_248 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_248 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_86 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_constructor_86 v8 v9 v10
                            -> let v11
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v8 in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then let v14
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_200 (coe v1)
                                                             (coe v2))
                                                          v5 v9 in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                       -> if coe v15
                                                            then let v17
                                                                       = coe
                                                                           MAlonzo.Code.Data.Maybe.Properties.du_'8801''45'dec_24
                                                                           (coe
                                                                              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                                              (coe
                                                                                 du_DecEq'45'Credential_200
                                                                                 (coe v1) (coe v2)))
                                                                           (coe v6) (coe v10) in
                                                                 coe
                                                                   (case coe v17 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                        -> if coe v18
                                                                             then coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       erased)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v15)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_250 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_250 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_250 v3 v4 v5
du_DecEq'45'BootstrapAddr_250 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_250 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_102 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_constructor_102 v8 v9 v10
                            -> let v11
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v8 in
                               coe
                                 (case coe v11 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v12 v13
                                      -> if coe v12
                                           then let v14
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_200 (coe v1)
                                                             (coe v2))
                                                          v5 v9 in
                                                coe
                                                  (case coe v14 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v15 v16
                                                       -> if coe v15
                                                            then let v17
                                                                       = MAlonzo.Code.Data.Nat.Properties.d__'8799'__2796
                                                                           (coe v6) (coe v10) in
                                                                 coe
                                                                   (case coe v17 of
                                                                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v18 v19
                                                                        -> if coe v18
                                                                             then coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                                       erased)
                                                                             else coe
                                                                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                                    (coe v18)
                                                                                    (coe
                                                                                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                                      _ -> MAlonzo.RTE.mazUnreachableError)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v15)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v12)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address.DecEq-RwdAddr
d_DecEq'45'RwdAddr_252 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_252 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RwdAddr_252 v3 v4 v5
du_DecEq'45'RwdAddr_252 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RwdAddr_252 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_114 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_constructor_114 v7 v8
                            -> let v9
                                     = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v4 v7 in
                               coe
                                 (case coe v9 of
                                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                                      -> if coe v10
                                           then let v12
                                                      = coe
                                                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                                                          (coe
                                                             du_DecEq'45'Credential_200 (coe v1)
                                                             (coe v2))
                                                          v5 v8 in
                                                coe
                                                  (case coe v12 of
                                                     MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v13 v14
                                                       -> if coe v13
                                                            then coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                                                      erased)
                                                            else coe
                                                                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                                   (coe v13)
                                                                   (coe
                                                                      MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                                     _ -> MAlonzo.RTE.mazUnreachableError)
                                           else coe
                                                  MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                                  (coe v10)
                                                  (coe
                                                     MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential
d_Show'45'Credential_264 ::
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
d_Show'45'Credential_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential_264 v7 v8
du_Show'45'Credential_264 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_264 v0 v1
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
d_Show'45'RwdAddr_266 ::
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
d_Show'45'RwdAddr_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Show'45'RwdAddr_266 v6 v7 v8
du_Show'45'RwdAddr_266 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RwdAddr_266 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_114 v4 v5
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
                           (coe du_Show'45'Credential_264 (coe v1) (coe v2)) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_268 ::
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
d_Show'45'Credential'215'Coin_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential'215'Coin_268 v7 v8
du_Show'45'Credential'215'Coin_268 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_268 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe du_Show'45'Credential_264 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
