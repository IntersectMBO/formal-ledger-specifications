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

module MAlonzo.Code.Ledger.Core.Foreign.Address where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Foreign.Convertible
import qualified MAlonzo.Code.Foreign.HaskellTypes
import qualified MAlonzo.Code.Ledger.Core.Specification.Address

import GHC.Generics (Generic)
data Credential = KeyHashObj Integer | ScriptObj Integer
  deriving (Show, Eq, Generic)
data BaseAddr = BaseAddr {baseNet :: Integer, basePay :: MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, baseStake :: (Maybe MAlonzo.Code.Ledger.Core.Foreign.Address.Credential)}
 deriving (Show, Eq, Generic)
data BootstrapAddr = BootstrapAddr {bootNet :: Integer, bootPay :: MAlonzo.Code.Ledger.Core.Foreign.Address.Credential, bootAttrsSize :: Integer}
 deriving (Show, Eq, Generic)
data RewardAddress = RewardAddress {rwdNet :: Integer, rwdStake :: MAlonzo.Code.Ledger.Core.Foreign.Address.Credential}
 deriving (Show, Eq, Generic)
type Addr = (Either MAlonzo.Code.Ledger.Core.Foreign.Address.BaseAddr MAlonzo.Code.Ledger.Core.Foreign.Address.BootstrapAddr)
-- Ledger.Core.Foreign.Address._.Addr
d_Addr_10 :: ()
d_Addr_10 = erased
-- Ledger.Core.Foreign.Address._.AttrSizeOf
d_AttrSizeOf_14 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_14 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Core.Foreign.Address._.BaseAddr
d_BaseAddr_16 = ()
-- Ledger.Core.Foreign.Address._.BootstrapAddr
d_BootstrapAddr_20 = ()
-- Ledger.Core.Foreign.Address._.Credential
d_Credential_24 = ()
-- Ledger.Core.Foreign.Address._.CredentialOf
d_CredentialOf_26 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_26 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Core.Foreign.Address._.Dec-isScript
d_Dec'45'isScript_28 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_28
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_308
-- Ledger.Core.Foreign.Address._.Dec-isVKey
d_Dec'45'isVKey_30 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_30
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_294
-- Ledger.Core.Foreign.Address._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_32 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_32
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_346
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_34 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_34
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_348
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-Credential
d_DecEq'45'Credential_36 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_36
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_292
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_38 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_38
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_350
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.HasAttrSize
d_HasAttrSize_40 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_44 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214
d_HasAttrSize'45'BootstrapAddr_44
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_238
-- Ledger.Core.Foreign.Address._.HasCredential
d_HasCredential_46 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_50 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_50
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_236
-- Ledger.Core.Foreign.Address._.HasMaybeNetworkId
d_HasMaybeNetworkId_52 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasNetworkId
d_HasNetworkId_56 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_60 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BaseAddr_60
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_230
-- Ledger.Core.Foreign.Address._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_62 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'BootstrapAddr_62
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_232
-- Ledger.Core.Foreign.Address._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_64 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154
d_HasNetworkId'45'RewardAddress_64
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_234
-- Ledger.Core.Foreign.Address._.HasRewardAddress
d_HasRewardAddress_66 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasWithdrawals
d_HasWithdrawals_70 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.IsBootstrapAddr
d_IsBootstrapAddr_74 a0 = ()
-- Ledger.Core.Foreign.Address._.IsBootstrapAddr?
d_IsBootstrapAddr'63'_76 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsBootstrapAddr'63'_76
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_322
-- Ledger.Core.Foreign.Address._.IsKeyHashObj
d_IsKeyHashObj_80 a0 = ()
-- Ledger.Core.Foreign.Address._.IsKeyHashObj?
d_IsKeyHashObj'63'_82 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_IsKeyHashObj'63'_82
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsKeyHashObj'63'_56
-- Ledger.Core.Foreign.Address._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_86 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_86 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Core.Foreign.Address._.NetworkIdOf
d_NetworkIdOf_88 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress
d_RewardAddress_90 = ()
-- Ledger.Core.Foreign.Address._.RewardAddressOf
d_RewardAddressOf_94 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_94 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Core.Foreign.Address._.ScriptAddr
d_ScriptAddr_98 :: ()
d_ScriptAddr_98 = erased
-- Ledger.Core.Foreign.Address._.ScriptBaseAddr
d_ScriptBaseAddr_100 :: ()
d_ScriptBaseAddr_100 = erased
-- Ledger.Core.Foreign.Address._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_102 :: ()
d_ScriptBootstrapAddr_102 = erased
-- Ledger.Core.Foreign.Address._.Show-Credential
d_Show'45'Credential_106 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_106 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_362
      v1 v2
-- Ledger.Core.Foreign.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_108 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_108 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_366
      v1 v2
-- Ledger.Core.Foreign.Address._.Show-RewardAddress
d_Show'45'RewardAddress_110 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_110
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_364
-- Ledger.Core.Foreign.Address._.VKeyAddr
d_VKeyAddr_112 :: ()
d_VKeyAddr_112 = erased
-- Ledger.Core.Foreign.Address._.VKeyBaseAddr
d_VKeyBaseAddr_114 :: ()
d_VKeyBaseAddr_114 = erased
-- Ledger.Core.Foreign.Address._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_116 :: ()
d_VKeyBootstrapAddr_116 = erased
-- Ledger.Core.Foreign.Address._.Withdrawals
d_Withdrawals_120 :: ()
d_Withdrawals_120 = erased
-- Ledger.Core.Foreign.Address._.WithdrawalsOf
d_WithdrawalsOf_122 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_122 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Core.Foreign.Address._.getScriptHash
d_getScriptHash_124 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_78 ->
  Integer
d_getScriptHash_124
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_340
-- Ledger.Core.Foreign.Address._.isBootstrapAddr
d_isBootstrapAddr_126 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100
d_isBootstrapAddr_126
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_290
-- Ledger.Core.Foreign.Address._.isKeyHash
d_isKeyHash_128 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_128 = erased
-- Ledger.Core.Foreign.Address._.isKeyHashObj
d_isKeyHashObj_130 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_130
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Core.Foreign.Address._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_132 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_132
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_62
-- Ledger.Core.Foreign.Address._.isScript
d_isScript_134 a0 = ()
-- Ledger.Core.Foreign.Address._.isScriptAddr
d_isScriptAddr_136 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_136 = erased
-- Ledger.Core.Foreign.Address._.isScriptObj
d_isScriptObj_138 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_138
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_68
-- Ledger.Core.Foreign.Address._.isScriptRewardAddress
d_isScriptRewardAddress_140 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  ()
d_isScriptRewardAddress_140 = erased
-- Ledger.Core.Foreign.Address._.isVKey
d_isVKey_142 a0 = ()
-- Ledger.Core.Foreign.Address._.isVKeyAddr
d_isVKeyAddr_144 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_144 = erased
-- Ledger.Core.Foreign.Address._.netId
d_netId_146 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_146
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_266
-- Ledger.Core.Foreign.Address._.payCred
d_payCred_148 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_148
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_262
-- Ledger.Core.Foreign.Address._.stakeCred
d_stakeCred_150 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_150
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_264
-- Ledger.Core.Foreign.Address._.BaseAddr.net
d_net_154 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Integer
d_net_154 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_92 (coe v0)
-- Ledger.Core.Foreign.Address._.BaseAddr.pay
d_pay_156 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_156 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_94 (coe v0)
-- Ledger.Core.Foreign.Address._.BaseAddr.stake
d_stake_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_84 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_158 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_96 (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.attrsSize
d_attrsSize_162 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_attrsSize_162 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_112
      (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.net
d_net_164 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  Integer
d_net_164 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_108 (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.pay
d_pay_166 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_100 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_166 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_110 (coe v0)
-- Ledger.Core.Foreign.Address._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_176 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_214 ->
  AgdaAny -> Integer
d_AttrSizeOf_176 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_222
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasCredential.CredentialOf
d_CredentialOf_180 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_180 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_184 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_174 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_184 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_182
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_188 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_154 ->
  AgdaAny -> Integer
d_NetworkIdOf_188 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_162
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_192 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_134 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116
d_RewardAddressOf_192 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_142
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_196 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_194 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_196 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_202
      (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress.net
d_net_208 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  Integer
d_net_208 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_122 (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress.stake
d_stake_210 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_116 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_210 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_124 (coe v0)
-- Ledger.Core.Foreign.Address.HsTy-Credential
d_HsTy'45'Credential_220 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Credential_220 = erased
-- Ledger.Core.Foreign.Address.Conv-Credential
d_Conv'45'Credential_222 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Credential_222
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v1
                -> coe C_KeyHashObj_617 (coe v1)
              MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v1
                -> coe C_ScriptObj_631 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_KeyHashObj_617 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                     (coe v1)
              C_ScriptObj_631 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-BaseAddr
d_HsTy'45'BaseAddr_224 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BaseAddr_224 = erased
-- Ledger.Core.Foreign.Address.Conv-BaseAddr
d_Conv'45'BaseAddr_226 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BaseAddr_226
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_98 v1 v2 v3
                -> coe
                     C_BaseAddr_1327 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_617 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_631 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_617 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_631 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Credential_222))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BaseAddr_1327 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_98
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_617 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_631 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_617 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_631 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.du_Functor'8658'Convertible_64
                           (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'Maybe_6)
                           (coe d_Conv'45'Credential_222))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-BootstrapAddr
d_HsTy'45'BootstrapAddr_228 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BootstrapAddr_228 = erased
-- Ledger.Core.Foreign.Address.Conv-BootstrapAddr
d_Conv'45'BootstrapAddr_230 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BootstrapAddr_230
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v1 v2 v3
                -> coe
                     C_BootstrapAddr_2769 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_617 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_631 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_617 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_631 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BootstrapAddr_2769 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_617 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_631 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_617 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_631 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-RewardAddress
d_HsTy'45'RewardAddress_232 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RewardAddress_232 = erased
-- Ledger.Core.Foreign.Address.Conv-RewardAddress
d_Conv'45'RewardAddress_234 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RewardAddress_234
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126 v1 v2
                -> coe
                     C_RewardAddress_3971 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_617 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_631 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_617 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_631 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RewardAddress_3971 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_126
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_617 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_631 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_617 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_631 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.Credential
d_Credential_615 = ()
type T_Credential_615 = Credential
pattern C_KeyHashObj_617 a0 = KeyHashObj a0
pattern C_ScriptObj_631 a0 = ScriptObj a0
check_KeyHashObj_617 :: Integer -> T_Credential_615
check_KeyHashObj_617 = KeyHashObj
check_ScriptObj_631 :: Integer -> T_Credential_615
check_ScriptObj_631 = ScriptObj
cover_Credential_615 :: Credential -> ()
cover_Credential_615 x
  = case x of
      KeyHashObj _ -> ()
      ScriptObj _ -> ()
-- Ledger.Core.Foreign.Address.BaseAddr
d_BaseAddr_1325 = ()
type T_BaseAddr_1325 = BaseAddr
pattern C_BaseAddr_1327 a0 a1 a2 = BaseAddr a0 a1 a2
check_BaseAddr_1327 ::
  Integer ->
  T_Credential_615 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_615 ->
  T_BaseAddr_1325
check_BaseAddr_1327 = BaseAddr
cover_BaseAddr_1325 :: BaseAddr -> ()
cover_BaseAddr_1325 x
  = case x of
      BaseAddr _ _ _ -> ()
-- Ledger.Core.Foreign.Address.BootstrapAddr
d_BootstrapAddr_2767 = ()
type T_BootstrapAddr_2767 = BootstrapAddr
pattern C_BootstrapAddr_2769 a0 a1 a2 = BootstrapAddr a0 a1 a2
check_BootstrapAddr_2769 ::
  Integer -> T_Credential_615 -> Integer -> T_BootstrapAddr_2767
check_BootstrapAddr_2769 = BootstrapAddr
cover_BootstrapAddr_2767 :: BootstrapAddr -> ()
cover_BootstrapAddr_2767 x
  = case x of
      BootstrapAddr _ _ _ -> ()
-- Ledger.Core.Foreign.Address.RewardAddress
d_RewardAddress_3969 = ()
type T_RewardAddress_3969 = RewardAddress
pattern C_RewardAddress_3971 a0 a1 = RewardAddress a0 a1
check_RewardAddress_3971 ::
  Integer -> T_Credential_615 -> T_RewardAddress_3969
check_RewardAddress_3971 = RewardAddress
cover_RewardAddress_3969 :: RewardAddress -> ()
cover_RewardAddress_3969 x
  = case x of
      RewardAddress _ _ -> ()
