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
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_14 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isScript_296
-- Ledger.Core.Foreign.Address._.Dec-isVKey
d_Dec'45'isVKey_30 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_30
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Dec'45'isVKey_282
-- Ledger.Core.Foreign.Address._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_32 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_32
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BaseAddr_334
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_34 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_34
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'BootstrapAddr_336
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-Credential
d_DecEq'45'Credential_36 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_36
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'Credential_280
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.DecEq-RewardAddress
d_DecEq'45'RewardAddress_38 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RewardAddress_38
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_DecEq'45'RewardAddress_338
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
      (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
-- Ledger.Core.Foreign.Address._.HasAttrSize
d_HasAttrSize_40 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasAttrSize-BootstrapAddr
d_HasAttrSize'45'BootstrapAddr_44 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202
d_HasAttrSize'45'BootstrapAddr_44
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasAttrSize'45'BootstrapAddr_226
-- Ledger.Core.Foreign.Address._.HasCredential
d_HasCredential_46 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasCredential-RewardAddress
d_HasCredential'45'RewardAddress_50 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30
d_HasCredential'45'RewardAddress_50
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasCredential'45'RewardAddress_224
-- Ledger.Core.Foreign.Address._.HasMaybeNetworkId
d_HasMaybeNetworkId_52 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasNetworkId
d_HasNetworkId_56 a0 a1 = ()
-- Ledger.Core.Foreign.Address._.HasNetworkId-BaseAddr
d_HasNetworkId'45'BaseAddr_60 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BaseAddr_60
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BaseAddr_218
-- Ledger.Core.Foreign.Address._.HasNetworkId-BootstrapAddr
d_HasNetworkId'45'BootstrapAddr_62 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'BootstrapAddr_62
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'BootstrapAddr_220
-- Ledger.Core.Foreign.Address._.HasNetworkId-RewardAddress
d_HasNetworkId'45'RewardAddress_64 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142
d_HasNetworkId'45'RewardAddress_64
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_HasNetworkId'45'RewardAddress_222
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
      MAlonzo.Code.Ledger.Core.Specification.Address.du_IsBootstrapAddr'63'_310
-- Ledger.Core.Foreign.Address._.MaybeNetworkIdOf
d_MaybeNetworkIdOf_80 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_80 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Core.Foreign.Address._.NetworkIdOf
d_NetworkIdOf_82 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_82 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress
d_RewardAddress_84 = ()
-- Ledger.Core.Foreign.Address._.RewardAddressOf
d_RewardAddressOf_88 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_88 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Core.Foreign.Address._.ScriptAddr
d_ScriptAddr_92 :: ()
d_ScriptAddr_92 = erased
-- Ledger.Core.Foreign.Address._.ScriptBaseAddr
d_ScriptBaseAddr_94 :: ()
d_ScriptBaseAddr_94 = erased
-- Ledger.Core.Foreign.Address._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_96 :: ()
d_ScriptBootstrapAddr_96 = erased
-- Ledger.Core.Foreign.Address._.Show-Credential
d_Show'45'Credential_100 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_100 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential_350
      v1 v2
-- Ledger.Core.Foreign.Address._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_102 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_102 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'Credential'215'Coin_354
      v1 v2
-- Ledger.Core.Foreign.Address._.Show-RewardAddress
d_Show'45'RewardAddress_104 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RewardAddress_104
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_Show'45'RewardAddress_352
-- Ledger.Core.Foreign.Address._.VKeyAddr
d_VKeyAddr_106 :: ()
d_VKeyAddr_106 = erased
-- Ledger.Core.Foreign.Address._.VKeyBaseAddr
d_VKeyBaseAddr_108 :: ()
d_VKeyBaseAddr_108 = erased
-- Ledger.Core.Foreign.Address._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_110 :: ()
d_VKeyBootstrapAddr_110 = erased
-- Ledger.Core.Foreign.Address._.Withdrawals
d_Withdrawals_114 :: ()
d_Withdrawals_114 = erased
-- Ledger.Core.Foreign.Address._.WithdrawalsOf
d_WithdrawalsOf_116 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_116 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Core.Foreign.Address._.getScriptHash
d_getScriptHash_118 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_isScript_66 ->
  Integer
d_getScriptHash_118
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_getScriptHash_328
-- Ledger.Core.Foreign.Address._.isBootstrapAddr
d_isBootstrapAddr_120 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88
d_isBootstrapAddr_120
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isBootstrapAddr_278
-- Ledger.Core.Foreign.Address._.isKeyHash
d_isKeyHash_122 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  ()
d_isKeyHash_122 = erased
-- Ledger.Core.Foreign.Address._.isKeyHashObj
d_isKeyHashObj_124 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_124
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj_46
-- Ledger.Core.Foreign.Address._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_126 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_126
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isKeyHashObj'7495'_50
-- Ledger.Core.Foreign.Address._.isScript
d_isScript_128 a0 = ()
-- Ledger.Core.Foreign.Address._.isScriptAddr
d_isScriptAddr_130 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_130 = erased
-- Ledger.Core.Foreign.Address._.isScriptObj
d_isScriptObj_132 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_132
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_isScriptObj_56
-- Ledger.Core.Foreign.Address._.isScriptRewardAddress
d_isScriptRewardAddress_134 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  ()
d_isScriptRewardAddress_134 = erased
-- Ledger.Core.Foreign.Address._.isVKey
d_isVKey_136 a0 = ()
-- Ledger.Core.Foreign.Address._.isVKeyAddr
d_isVKeyAddr_138 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_138 = erased
-- Ledger.Core.Foreign.Address._.netId
d_netId_140 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_netId_140
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_netId_254
-- Ledger.Core.Foreign.Address._.payCred
d_payCred_142 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_payCred_142
  = coe MAlonzo.Code.Ledger.Core.Specification.Address.du_payCred_250
-- Ledger.Core.Foreign.Address._.stakeCred
d_stakeCred_144 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stakeCred_144
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.du_stakeCred_252
-- Ledger.Core.Foreign.Address._.BaseAddr.net
d_net_148 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Integer
d_net_148 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_80 (coe v0)
-- Ledger.Core.Foreign.Address._.BaseAddr.pay
d_pay_150 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_150 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_82 (coe v0)
-- Ledger.Core.Foreign.Address._.BaseAddr.stake
d_stake_152 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BaseAddr_72 ->
  Maybe
    MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_152 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_84 (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.attrsSize
d_attrsSize_156 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_attrsSize_156 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_attrsSize_100
      (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.net
d_net_158 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  Integer
d_net_158 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_96 (coe v0)
-- Ledger.Core.Foreign.Address._.BootstrapAddr.pay
d_pay_160 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_BootstrapAddr_88 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_pay_160 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_pay_98 (coe v0)
-- Ledger.Core.Foreign.Address._.HasAttrSize.AttrSizeOf
d_AttrSizeOf_170 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasAttrSize_202 ->
  AgdaAny -> Integer
d_AttrSizeOf_170 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_AttrSizeOf_210
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasCredential.CredentialOf
d_CredentialOf_174 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasCredential_30 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_CredentialOf_174 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_CredentialOf_38
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasMaybeNetworkId.MaybeNetworkIdOf
d_MaybeNetworkIdOf_178 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasMaybeNetworkId_162 ->
  AgdaAny -> Maybe Integer
d_MaybeNetworkIdOf_178 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_MaybeNetworkIdOf_170
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasNetworkId.NetworkIdOf
d_NetworkIdOf_182 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasNetworkId_142 ->
  AgdaAny -> Integer
d_NetworkIdOf_182 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_NetworkIdOf_150
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasRewardAddress.RewardAddressOf
d_RewardAddressOf_186 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasRewardAddress_122 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104
d_RewardAddressOf_186 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_RewardAddressOf_130
      (coe v0)
-- Ledger.Core.Foreign.Address._.HasWithdrawals.WithdrawalsOf
d_WithdrawalsOf_190 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_HasWithdrawals_182 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_WithdrawalsOf_190 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_WithdrawalsOf_190
      (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress.net
d_net_198 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  Integer
d_net_198 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_net_110 (coe v0)
-- Ledger.Core.Foreign.Address._.RewardAddress.stake
d_stake_200 ::
  MAlonzo.Code.Ledger.Core.Specification.Address.T_RewardAddress_104 ->
  MAlonzo.Code.Ledger.Core.Specification.Address.T_Credential_20
d_stake_200 v0
  = coe
      MAlonzo.Code.Ledger.Core.Specification.Address.d_stake_112 (coe v0)
-- Ledger.Core.Foreign.Address.HsTy-Credential
d_HsTy'45'Credential_210 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'Credential_210 = erased
-- Ledger.Core.Foreign.Address.Conv-Credential
d_Conv'45'Credential_212 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'Credential_212
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v1
                -> coe C_KeyHashObj_593 (coe v1)
              MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v1
                -> coe C_ScriptObj_607 (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_KeyHashObj_593 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                     (coe v1)
              C_ScriptObj_607 v1
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                     (coe v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-BaseAddr
d_HsTy'45'BaseAddr_214 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BaseAddr_214 = erased
-- Ledger.Core.Foreign.Address.Conv-BaseAddr
d_Conv'45'BaseAddr_216 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BaseAddr_216
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_86 v1 v2 v3
                -> coe
                     C_BaseAddr_1303 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_593 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_607 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_593 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_607 v5
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
                           (coe d_Conv'45'Credential_212))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_BaseAddr_1303 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_86
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_593 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_607 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_593 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_607 v5
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
                           (coe d_Conv'45'Credential_212))
                        v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-BootstrapAddr
d_HsTy'45'BootstrapAddr_218 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'BootstrapAddr_218 = erased
-- Ledger.Core.Foreign.Address.Conv-BootstrapAddr
d_Conv'45'BootstrapAddr_220 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'BootstrapAddr_220
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_102 v1 v2 v3
                -> coe
                     C_BootstrapAddr_2745 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_593 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_607 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_593 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_607 v5
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
              C_BootstrapAddr_2745 v1 v2 v3
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_102
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v5
                                     -> coe C_KeyHashObj_593 (coe v5)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v5
                                     -> coe C_ScriptObj_607 (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v4 ->
                                 case coe v4 of
                                   C_KeyHashObj_593 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v5)
                                   C_ScriptObj_607 v5
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v5)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
                     (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.HsTy-RewardAddress
d_HsTy'45'RewardAddress_222 ::
  MAlonzo.Code.Foreign.HaskellTypes.T_HasHsType_14
d_HsTy'45'RewardAddress_222 = erased
-- Ledger.Core.Foreign.Address.Conv-RewardAddress
d_Conv'45'RewardAddress_224 ::
  MAlonzo.Code.Foreign.Convertible.T_Convertible_8
d_Conv'45'RewardAddress_224
  = coe
      MAlonzo.Code.Foreign.Convertible.C_constructor_22
      (coe
         (\ v0 ->
            case coe v0 of
              MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114 v1 v2
                -> coe
                     C_RewardAddress_3947 (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_to_18
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_593 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_607 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_593 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_607 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            case coe v0 of
              C_RewardAddress_3947 v1 v2
                -> coe
                     MAlonzo.Code.Ledger.Core.Specification.Address.C_constructor_114
                     (coe v1)
                     (coe
                        MAlonzo.Code.Foreign.Convertible.d_from_20
                        (coe
                           MAlonzo.Code.Foreign.Convertible.C_constructor_22
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22 v4
                                     -> coe C_KeyHashObj_593 (coe v4)
                                   MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24 v4
                                     -> coe C_ScriptObj_607 (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError))
                           (coe
                              (\ v3 ->
                                 case coe v3 of
                                   C_KeyHashObj_593 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_KeyHashObj_22
                                          (coe v4)
                                   C_ScriptObj_607 v4
                                     -> coe
                                          MAlonzo.Code.Ledger.Core.Specification.Address.C_ScriptObj_24
                                          (coe v4)
                                   _ -> MAlonzo.RTE.mazUnreachableError)))
                        v2)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Core.Foreign.Address.Credential
d_Credential_591 = ()
type T_Credential_591 = Credential
pattern C_KeyHashObj_593 a0 = KeyHashObj a0
pattern C_ScriptObj_607 a0 = ScriptObj a0
check_KeyHashObj_593 :: Integer -> T_Credential_591
check_KeyHashObj_593 = KeyHashObj
check_ScriptObj_607 :: Integer -> T_Credential_591
check_ScriptObj_607 = ScriptObj
cover_Credential_591 :: Credential -> ()
cover_Credential_591 x
  = case x of
      KeyHashObj _ -> ()
      ScriptObj _ -> ()
-- Ledger.Core.Foreign.Address.BaseAddr
d_BaseAddr_1301 = ()
type T_BaseAddr_1301 = BaseAddr
pattern C_BaseAddr_1303 a0 a1 a2 = BaseAddr a0 a1 a2
check_BaseAddr_1303 ::
  Integer ->
  T_Credential_591 ->
  MAlonzo.Code.Agda.Builtin.Maybe.T_Maybe_10 () T_Credential_591 ->
  T_BaseAddr_1301
check_BaseAddr_1303 = BaseAddr
cover_BaseAddr_1301 :: BaseAddr -> ()
cover_BaseAddr_1301 x
  = case x of
      BaseAddr _ _ _ -> ()
-- Ledger.Core.Foreign.Address.BootstrapAddr
d_BootstrapAddr_2743 = ()
type T_BootstrapAddr_2743 = BootstrapAddr
pattern C_BootstrapAddr_2745 a0 a1 a2 = BootstrapAddr a0 a1 a2
check_BootstrapAddr_2745 ::
  Integer -> T_Credential_591 -> Integer -> T_BootstrapAddr_2743
check_BootstrapAddr_2745 = BootstrapAddr
cover_BootstrapAddr_2743 :: BootstrapAddr -> ()
cover_BootstrapAddr_2743 x
  = case x of
      BootstrapAddr _ _ _ -> ()
-- Ledger.Core.Foreign.Address.RewardAddress
d_RewardAddress_3945 = ()
type T_RewardAddress_3945 = RewardAddress
pattern C_RewardAddress_3947 a0 a1 = RewardAddress a0 a1
check_RewardAddress_3947 ::
  Integer -> T_Credential_591 -> T_RewardAddress_3945
check_RewardAddress_3947 = RewardAddress
cover_RewardAddress_3945 :: RewardAddress -> ()
cover_RewardAddress_3945 x
  = case x of
      RewardAddress _ _ -> ()
