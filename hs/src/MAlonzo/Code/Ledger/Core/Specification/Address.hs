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
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Maybe.Properties
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum
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
-- Ledger.Core.Specification.Address.IsKeyHashObj
d_IsKeyHashObj_50 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsKeyHashObj_50 = C_IsKeyHash_54
-- Ledger.Core.Specification.Address.IsKeyHashObj?
d_IsKeyHashObj'63'_56 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsKeyHashObj'63'_56 v6
du_IsKeyHashObj'63'_56 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsKeyHashObj'63'_56 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_IsKeyHash_54))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.isKeyHashObjᵇ
d_isKeyHashObj'7495'_62 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> Bool
d_isKeyHashObj'7495'_62 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isKeyHashObj'7495'_62 v6
du_isKeyHashObj'7495'_62 :: T_Credential_20 -> Bool
du_isKeyHashObj'7495'_62 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         C_KeyHashObj_22 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Ledger.Core.Specification.Address.isKeyHash
d_isKeyHash_64 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_Credential_20 -> ()
d_isKeyHash_64 = erased
-- Ledger.Core.Specification.Address.isScriptObj
d_isScriptObj_68 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> Maybe AgdaAny
d_isScriptObj_68 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isScriptObj_68 v6
du_isScriptObj_68 :: T_Credential_20 -> Maybe AgdaAny
du_isScriptObj_68 v0
  = case coe v0 of
      C_KeyHashObj_22 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_ScriptObj_24 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKey
d_isVKey_72 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isVKey_72 = C_VKeyisVKey_76
-- Ledger.Core.Specification.Address.isScript
d_isScript_78 a0 a1 a2 a3 a4 a5 a6 = ()
data T_isScript_78 = C_SHisScript_82
-- Ledger.Core.Specification.Address.BaseAddr
d_BaseAddr_84 a0 a1 a2 a3 a4 a5 = ()
data T_BaseAddr_84
  = C_constructor_98 AgdaAny T_Credential_20 (Maybe T_Credential_20)
-- Ledger.Core.Specification.Address.BaseAddr.net
d_net_92 :: T_BaseAddr_84 -> AgdaAny
d_net_92 v0
  = case coe v0 of
      C_constructor_98 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.pay
d_pay_94 :: T_BaseAddr_84 -> T_Credential_20
d_pay_94 v0
  = case coe v0 of
      C_constructor_98 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BaseAddr.stake
d_stake_96 :: T_BaseAddr_84 -> Maybe T_Credential_20
d_stake_96 v0
  = case coe v0 of
      C_constructor_98 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr
d_BootstrapAddr_100 a0 a1 a2 a3 a4 a5 = ()
data T_BootstrapAddr_100
  = C_constructor_114 AgdaAny T_Credential_20 Integer
-- Ledger.Core.Specification.Address.BootstrapAddr.net
d_net_108 :: T_BootstrapAddr_100 -> AgdaAny
d_net_108 v0
  = case coe v0 of
      C_constructor_114 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.pay
d_pay_110 :: T_BootstrapAddr_100 -> T_Credential_20
d_pay_110 v0
  = case coe v0 of
      C_constructor_114 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.BootstrapAddr.attrsSize
d_attrsSize_112 :: T_BootstrapAddr_100 -> Integer
d_attrsSize_112 v0
  = case coe v0 of
      C_constructor_114 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RewardAddress
d_RewardAddress_116 a0 a1 a2 a3 a4 a5 = ()
data T_RewardAddress_116
  = C_constructor_126 AgdaAny T_Credential_20
-- Ledger.Core.Specification.Address.RewardAddress.net
d_net_122 :: T_RewardAddress_116 -> AgdaAny
d_net_122 v0
  = case coe v0 of
      C_constructor_126 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.RewardAddress.stake
d_stake_124 :: T_RewardAddress_116 -> T_Credential_20
d_stake_124 v0
  = case coe v0 of
      C_constructor_126 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.Withdrawals
d_Withdrawals_128 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Withdrawals_128 = erased
-- Ledger.Core.Specification.Address.HasRewardAddress
d_HasRewardAddress_134 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasRewardAddress_134
  = C_constructor_144 (AgdaAny -> T_RewardAddress_116)
-- Ledger.Core.Specification.Address.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_142 ::
  T_HasRewardAddress_134 -> AgdaAny -> T_RewardAddress_116
d_RewardAddressOf_142 v0
  = case coe v0 of
      C_constructor_144 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.RewardAddressOf
d_RewardAddressOf_148 ::
  T_HasRewardAddress_134 -> AgdaAny -> T_RewardAddress_116
d_RewardAddressOf_148 v0 = coe d_RewardAddressOf_142 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId
d_HasNetworkId_154 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasNetworkId_154 = C_constructor_164 (AgdaAny -> AgdaAny)
-- Ledger.Core.Specification.Address.HasNetworkId.NetworkIdOf
d_NetworkIdOf_162 :: T_HasNetworkId_154 -> AgdaAny -> AgdaAny
d_NetworkIdOf_162 v0
  = case coe v0 of
      C_constructor_164 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.NetworkIdOf
d_NetworkIdOf_168 :: T_HasNetworkId_154 -> AgdaAny -> AgdaAny
d_NetworkIdOf_168 v0 = coe d_NetworkIdOf_162 (coe v0)
-- Ledger.Core.Specification.Address.HasMaybeNetworkId
d_HasMaybeNetworkId_174 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasMaybeNetworkId_174
  = C_constructor_184 (AgdaAny -> Maybe AgdaAny)
-- Ledger.Core.Specification.Address.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_182 ::
  T_HasMaybeNetworkId_174 -> AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_182 v0
  = case coe v0 of
      C_constructor_184 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_188 ::
  T_HasMaybeNetworkId_174 -> AgdaAny -> Maybe AgdaAny
d_MaybeNetworkIdOf_188 v0 = coe d_MaybeNetworkIdOf_182 (coe v0)
-- Ledger.Core.Specification.Address.HasWithdrawals
d_HasWithdrawals_194 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasWithdrawals_194
  = C_constructor_204 (AgdaAny ->
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14)
-- Ledger.Core.Specification.Address.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_202 ::
  T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_202 v0
  = case coe v0 of
      C_constructor_204 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.WithdrawalsOf
d_WithdrawalsOf_208 ::
  T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_208 v0 = coe d_WithdrawalsOf_202 (coe v0)
-- Ledger.Core.Specification.Address.HasAttrSize
d_HasAttrSize_214 a0 a1 a2 a3 a4 a5 a6 a7 = ()
newtype T_HasAttrSize_214 = C_constructor_224 (AgdaAny -> Integer)
-- Ledger.Core.Specification.Address.HasAttrSize.AttrSizeOf
d_AttrSizeOf_222 :: T_HasAttrSize_214 -> AgdaAny -> Integer
d_AttrSizeOf_222 v0
  = case coe v0 of
      C_constructor_224 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address._.AttrSizeOf
d_AttrSizeOf_228 :: T_HasAttrSize_214 -> AgdaAny -> Integer
d_AttrSizeOf_228 v0 = coe d_AttrSizeOf_222 (coe v0)
-- Ledger.Core.Specification.Address.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_230 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BaseAddr_230
du_HasNetworkId'45'BaseAddr_230 :: T_HasNetworkId_154
du_HasNetworkId'45'BaseAddr_230
  = coe C_constructor_164 (coe (\ v0 -> d_net_92 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_232 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'BootstrapAddr_232
du_HasNetworkId'45'BootstrapAddr_232 :: T_HasNetworkId_154
du_HasNetworkId'45'BootstrapAddr_232
  = coe C_constructor_164 (coe (\ v0 -> d_net_108 (coe v0)))
-- Ledger.Core.Specification.Address.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_234 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasNetworkId'45'RewardAddress_234
du_HasNetworkId'45'RewardAddress_234 :: T_HasNetworkId_154
du_HasNetworkId'45'RewardAddress_234
  = coe C_constructor_164 (coe (\ v0 -> d_net_122 (coe v0)))
-- Ledger.Core.Specification.Address.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_236 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasCredential_30
d_HasCredential'45'RewardAddress_236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasCredential'45'RewardAddress_236
du_HasCredential'45'RewardAddress_236 :: T_HasCredential_30
du_HasCredential'45'RewardAddress_236
  = coe C_constructor_40 (coe (\ v0 -> d_stake_124 (coe v0)))
-- Ledger.Core.Specification.Address.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_238 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_238 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_HasAttrSize'45'BootstrapAddr_238
du_HasAttrSize'45'BootstrapAddr_238 :: T_HasAttrSize_214
du_HasAttrSize'45'BootstrapAddr_238
  = coe C_constructor_224 (coe (\ v0 -> d_attrsSize_112 (coe v0)))
-- Ledger.Core.Specification.Address.VKeyBaseAddr
d_VKeyBaseAddr_240 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBaseAddr_240 = erased
-- Ledger.Core.Specification.Address.VKeyBootstrapAddr
d_VKeyBootstrapAddr_244 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyBootstrapAddr_244 = erased
-- Ledger.Core.Specification.Address.ScriptBaseAddr
d_ScriptBaseAddr_248 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBaseAddr_248 = erased
-- Ledger.Core.Specification.Address.ScriptBootstrapAddr
d_ScriptBootstrapAddr_252 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptBootstrapAddr_252 = erased
-- Ledger.Core.Specification.Address.Addr
d_Addr_256 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_Addr_256 = erased
-- Ledger.Core.Specification.Address.VKeyAddr
d_VKeyAddr_258 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_VKeyAddr_258 = erased
-- Ledger.Core.Specification.Address.ScriptAddr
d_ScriptAddr_260 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 -> ()
d_ScriptAddr_260 = erased
-- Ledger.Core.Specification.Address.payCred
d_payCred_262 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
d_payCred_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_payCred_262 v6
du_payCred_262 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Credential_20
du_payCred_262 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_98 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_114 v2 v3 v4 -> coe v3
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.stakeCred
d_stakeCred_264 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
d_stakeCred_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_stakeCred_264 v6
du_stakeCred_264 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Maybe T_Credential_20
du_stakeCred_264 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_98 v2 v3 v4 -> coe v4
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.netId
d_netId_266 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_netId_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_netId_266 v6
du_netId_266 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_netId_266 v0
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v1
        -> case coe v1 of
             C_constructor_98 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v1
        -> case coe v1 of
             C_constructor_114 v2 v3 v4 -> coe v2
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.isVKeyAddr
d_isVKeyAddr_268 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_268 = erased
-- Ledger.Core.Specification.Address.isScriptAddr
d_isScriptAddr_270 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_270 = erased
-- Ledger.Core.Specification.Address.isScriptRewardAddress
d_isScriptRewardAddress_272 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_RewardAddress_116 -> ()
d_isScriptRewardAddress_272 = erased
-- Ledger.Core.Specification.Address.IsBootstrapAddr
d_IsBootstrapAddr_284 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsBootstrapAddr_284 = C_AddrIsBootstrapAddr_288
-- Ledger.Core.Specification.Address.isBootstrapAddr
d_isBootstrapAddr_290 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe T_BootstrapAddr_100
d_isBootstrapAddr_290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_isBootstrapAddr_290
du_isBootstrapAddr_290 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe T_BootstrapAddr_100
du_isBootstrapAddr_290
  = coe MAlonzo.Code.Data.Sum.du_isInj'8322'_30
-- Ledger.Core.Specification.Address.DecEq-Credential
d_DecEq'45'Credential_292 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_292 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_DecEq'45'Credential_292 v4 v5
du_DecEq'45'Credential_292 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'Credential_292 v0 v1
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
d_Dec'45'isVKey_294 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isVKey_294 v6
du_Dec'45'isVKey_294 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isVKey_294 v0
  = coe
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
      (case coe v0 of
         C_KeyHashObj_22 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe
                   MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                   (coe C_VKeyisVKey_76))
         C_ScriptObj_24 v1
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.Dec-isScript
d_Dec'45'isScript_308 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Dec'45'isScript_308 v6
du_Dec'45'isScript_308 ::
  T_Credential_20 -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_Dec'45'isScript_308 v0
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
                   (coe C_SHisScript_82))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.IsBootstrapAddr?
d_IsBootstrapAddr'63'_322 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_IsBootstrapAddr'63'_322 v6
du_IsBootstrapAddr'63'_322 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
du_IsBootstrapAddr'63'_322 v0
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
                   (coe C_AddrIsBootstrapAddr_288))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Core.Specification.Address.getScriptHash
d_getScriptHash_340 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_78 -> AgdaAny
d_getScriptHash_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_getScriptHash_340 v6 v7
du_getScriptHash_340 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  T_isScript_78 -> AgdaAny
du_getScriptHash_340 v0 v1
  = case coe v0 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_98 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v2
        -> coe
             seq (coe v1)
             (case coe v2 of
                C_constructor_114 v3 v4 v5
                  -> case coe v4 of
                       C_ScriptObj_24 v6 -> coe v6
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Core.Specification.Address.DecEq-BaseAddr
d_DecEq'45'BaseAddr_346 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_346 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BaseAddr_346 v3 v4 v5
du_DecEq'45'BaseAddr_346 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BaseAddr_346 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_98 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_constructor_98 v8 v9 v10
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
                                                             du_DecEq'45'Credential_292 (coe v1)
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
                                                                                 du_DecEq'45'Credential_292
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
d_DecEq'45'BootstrapAddr_348 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_348 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'BootstrapAddr_348 v3 v4 v5
du_DecEq'45'BootstrapAddr_348 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'BootstrapAddr_348 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_114 v4 v5 v6
                -> coe
                     (\ v7 ->
                        case coe v7 of
                          C_constructor_114 v8 v9 v10
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
                                                             du_DecEq'45'Credential_292 (coe v1)
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
-- Ledger.Core.Specification.Address.DecEq-RewardAddress
d_DecEq'45'RewardAddress_350 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_350 ~v0 ~v1 ~v2 v3 v4 v5
  = du_DecEq'45'RewardAddress_350 v3 v4 v5
du_DecEq'45'RewardAddress_350 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'RewardAddress_350 v0 v1 v2
  = coe
      MAlonzo.Code.Class.DecEq.Core.C_constructor_32
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_126 v4 v5
                -> coe
                     (\ v6 ->
                        case coe v6 of
                          C_constructor_126 v7 v8
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
                                                             du_DecEq'45'Credential_292 (coe v1)
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
d_Show'45'Credential_362 ::
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
d_Show'45'Credential_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential_362 v7 v8
du_Show'45'Credential_362 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential_362 v0 v1
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
-- Ledger.Core.Specification.Address._.Show-RewardAddress
d_Show'45'RewardAddress_364 ::
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
d_Show'45'RewardAddress_364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_Show'45'RewardAddress_364 v6 v7 v8
du_Show'45'RewardAddress_364 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'RewardAddress_364 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v3 ->
            case coe v3 of
              C_constructor_126 v4 v5
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
                           (coe du_Show'45'Credential_362 (coe v1) (coe v2)) v5))
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Specification.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_366 ::
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
d_Show'45'Credential'215'Coin_366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_Show'45'Credential'215'Coin_366 v7 v8
du_Show'45'Credential'215'Coin_366 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'Credential'215'Coin_366 v0 v1
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe du_Show'45'Credential_362 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
