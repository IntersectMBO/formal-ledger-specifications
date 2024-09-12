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

module MAlonzo.Code.Ledger.Foreign.HSLedger.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.FromNat
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Morphism.Construct.Identity
import qualified MAlonzo.Code.Algebra.Morphism.Structures
import qualified MAlonzo.Code.Algebra.PairOp
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Class.Show.Instances
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Nat.Show
import qualified MAlonzo.Code.Data.Rational.Base
import qualified MAlonzo.Code.Data.Rational.Show
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Unit.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.HasAdd
import qualified MAlonzo.Code.Interface.HasOrder
import qualified MAlonzo.Code.Interface.HasOrder.Instance
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Certs.Haskell
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

import Data.Text
-- Ledger.Foreign.HSLedger.Core.error
d_error_10 ::
  forall xA. () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> xA
d_error_10 = \ _ s -> error (unpack s)
-- Ledger.Foreign.HSLedger.Core._.∀Hashable
d_'8704'Hashable_22 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_22 ~v0 ~v1 ~v2 = du_'8704'Hashable_22
du_'8704'Hashable_22 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_22
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_26 ~v0 v1 v2
  = du_'8704'isHashableSet_26 v1 v2
du_'8704'isHashableSet_26 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_26 v0 v1
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30 v0 v1 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v2 -> v2)))
-- Ledger.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_28 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_28
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Foreign.HSLedger.Core.Implementation.Network
d_Network_34 :: ()
d_Network_34 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_36 :: Integer
d_SlotsPerEpoch'7580'_36 = coe (100 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_38 :: Integer
d_StabilityWindow'7580'_38 = coe (10 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_40 :: Integer
d_Quorum_40 = coe (1 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_42 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_42 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_44 :: ()
d_SKey_44 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_46 :: ()
d_VKey_46 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_48 :: ()
d_Sig_48 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_50 :: ()
d_Ser_50 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_52 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.sign
d_sign_54 ::
  () ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_54 ~v0 v1 = du_sign_54 v1
du_sign_54 ::
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_54 v0
  = coe MAlonzo.Code.Interface.HasAdd.d__'43'__12 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_56 :: ()
d_ScriptHash_56 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Data
d_Data_58 :: ()
d_Data_58 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_60 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_60
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_54
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Foreign.HSLedger.Core.Implementation.toData
d_toData_64 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_64 ~v0 ~v1 = du_toData_64
du_toData_64 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_64 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_66 :: ()
d_PlutusScript_66 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_68 :: ()
d_ExUnits_68 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_70 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_70
  = coe
      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
      (coe
         MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_17931
         (coe MAlonzo.Code.Algebra.PairOp.du__'8729''7510'__12 (coe addInt))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
            (coe (0 :: Integer)))
         (coe
            MAlonzo.Code.Algebra.PairOp.du_pairOpRespectsComm_92
            (coe (0 :: Integer))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3324)))
-- Ledger.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__96 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__96 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_98 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_98
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_100 :: ()
d_CostModel_100 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Language
d_Language_102 :: ()
d_Language_102 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_104 :: ()
d_LangDepView_104 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_106 :: ()
d_Prices_106 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_112 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__120 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_122 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_124 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_126 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_134 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_142 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_146 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_152 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_154 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_160 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_226 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_coinTokenAlgebra_226 = coe d_'46'extendedlambda1_232
-- Ledger.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_232 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda1_232
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_2011
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_430
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1458
              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1032
               (coe
                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
                     (coe d_'46'extendedlambda1_232)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_240 :: ()
d_TxId_240 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_242 :: ()
d_Ix_242 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_244 :: ()
d_AuxiliaryData_244 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_246 :: ()
d_DocHash_246 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_248 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_248 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_250 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_250 = coe d_coinTokenAlgebra_226
-- Ledger.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_252 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_HSGlobalConstants_252
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_6069
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      d_SlotsPerEpoch'7580'_36
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_38 d_Quorum_40 d_NetworkId_42
-- Ledger.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_254 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_254
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_HSGlobalConstants_252)
-- Ledger.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_256 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_HSCrypto_256
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2419
      d_HSPKKScheme_262
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
-- Ledger.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_262 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_262
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1827 addInt
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe
              MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
              (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
           (coe addInt (coe v0) (coe v1)))
      erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_292 = ()
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_306 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__344 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_346 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_352 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_356 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_358 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_360 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_362 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_364 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_366 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_372 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_374 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_376 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_378 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_380 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_382 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_384 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_386 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_388 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_390 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_394 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_396 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_398 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_406 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_406 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_408 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_408 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_410 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_410 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_488 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_454 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_494 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_494 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_530 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422
d_HSScriptStructure_530
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_76383
      (\ v0 v1 v2 v3 v4 -> coe du_hashRespectsUnion_542 v3 v4)
      (coe d_HSP2ScriptStructure_554)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_542 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_542 ~v0 ~v1 ~v2 v3 v4
  = du_hashRespectsUnion_542 v3 v4
du_hashRespectsUnion_542 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_542 v0 v1
  = case coe v0 of
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9 v2
        -> case coe v1 of
             MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9 v3
               -> coe
                    MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
                    (coe
                       (\ v4 ->
                          case coe v4 of
                            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v2 v5
                            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v3 v5
                            _ -> MAlonzo.RTE.mazUnreachableError))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_554 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_554
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4253
      d_Data'688'_60 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_70
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22)
         (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      d_Show'45'ExUnits_98
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_64)
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_570 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_570
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_438
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_530)
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_576 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_584 = ()
-- Ledger.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_594 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_594
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_446
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_530)
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_608 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_608 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_622 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1238 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_634 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_634 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_636 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146
d_ppUpd_636 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_658 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_Emax_658 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_660 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_660 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_662 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_664 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_664 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_672 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepActivity_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_702 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_706 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_706 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_714 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 -> ()
d_UpdateT_718 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1162 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1170 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_726 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1164 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_732 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_732
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1092
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_530)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_734 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_736
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_962
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_756 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_Emax_756 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_544 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_758 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_a_758 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_760 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_760 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_542 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_762 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_b_762 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_764 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_ccMaxTermLength_764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_566 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_ccMinSize_766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_564 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_768 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_coinsPerUTxOByte_768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_770 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_collateralPercentage_770 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_548 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_772 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_550 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_774 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_drepActivity_774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_drepDeposit_776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_560 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_778 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_govActionDeposit_780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_govActionLifetime_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_keyDeposit_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxBlockSize_788 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxCollateralInputs_790 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxHeaderSize_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxTxSize_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxValSize_798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_800 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_536
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_minUTxOValue_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_nopt_804 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_546 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_poolDeposit_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_808 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_810 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_812 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_812 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_820 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1178
d_HsGovParams_820
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1146229
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1145443
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_962)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_898)
         (\ v0 -> d_ppWF_830 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_438
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_530))
         (coe
            MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_446
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_530))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_438
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_530))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1092
         (let v0 = d_HSGlobalConstants_252 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
                       (coe v0)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
                  (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
         (coe d_HSScriptStructure_530))
-- Ledger.Foreign.HSLedger.Core._.ppWF
d_ppWF_830 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_830 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1660
                    (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_416
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_510 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_512 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_514 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_516 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_540 (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_532 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_548
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_566
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_556
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_558
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_560
                                                           (coe v0))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))))))))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                 (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)) in
    coe
      (case coe v1 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v2 v3
           -> if coe v2
                then coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 erased)))
                else coe
                       seq (coe v3)
                       (coe
                          MAlonzo.Code.Class.Decidable.Core.C_'8263'__30
                          (coe
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                             (coe v2)
                             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Ledger.Foreign.HSLedger.Core._._.trustMe
d_trustMe_846
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core._._.trustMe
d_trustMe_856
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_862 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_862
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_13787
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      d_HSGlobalConstants_252 d_HSCrypto_256 d_HSEpochStructure_254
      d_HSScriptStructure_530 d_HsGovParams_820 d_tokenAlgebra_250
      (\ v0 -> v0) d_networkId_248
-- Ledger.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__866 :: Integer -> Integer -> Integer
d__'43''7497'__866
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._+ᵉ'_
d__'43''7497'''__868 :: Integer -> Integer -> Integer
d__'43''7497'''__868
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._∙_
d__'8729'__870 :: Integer -> Integer -> Integer
d__'8729'__870
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__982
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._._≈_
d__'8776'__872 :: Integer -> Integer -> ()
d__'8776'__872 = erased
-- Ledger.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__874 :: Integer -> Integer -> ()
d__'8804''7511'__874 = erased
-- Ledger.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__876 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__876 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__878 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__880 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_928 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__880 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__882 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__884 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__886 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__888 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_890 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_890 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_892 :: ()
d_THash_892 = erased
-- Ledger.Foreign.HSLedger.Core._.Acnt
d_Acnt_894 = ()
-- Ledger.Foreign.HSLedger.Core._.Addr
d_Addr_896 :: ()
d_Addr_896 = erased
-- Ledger.Foreign.HSLedger.Core._.Anchor
d_Anchor_898 = ()
-- Ledger.Foreign.HSLedger.Core._.AssetName
d_AssetName_900 :: ()
d_AssetName_900 = erased
-- Ledger.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_902 :: ()
d_AuxiliaryData_902 = erased
-- Ledger.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_904 = ()
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_906 = ()
-- Ledger.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_918 = ()
-- Ledger.Foreign.HSLedger.Core._.CertState
d_CertState_920 = ()
-- Ledger.Foreign.HSLedger.Core._.CostModel
d_CostModel_924 :: ()
d_CostModel_924 = erased
-- Ledger.Foreign.HSLedger.Core._.Credential
d_Credential_926 = ()
-- Ledger.Foreign.HSLedger.Core._.DCert
d_DCert_930 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_940 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_942 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_944 :: ()
d_T_944 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_946 :: ()
d_THash_946 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_948 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_948
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_950 :: ()
d_Datum_950 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_952 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_952
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_954 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_954
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_956 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_956
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_958 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_958
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_960 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_960
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
               (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_962 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_962
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_964 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_964
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_966
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_968
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_970 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_970
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_972 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_972
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_974 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_974
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_976 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_976
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_824
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_978 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_978
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_434
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_980
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_982 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_982
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_984
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- Ledger.Foreign.HSLedger.Core._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_986 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_986
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'HashedTimelock_410
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_988
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1200
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_990 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_990
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_992 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_992
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_994 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_994
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_996 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_996
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
               (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_998 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_998
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_440
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_1000 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1000
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_438
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1002 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1002
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_436
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1004 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1004
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1006 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1006
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_1008 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1008
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_1010 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1010
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_1012 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1012
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1014 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1014
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1016 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1016
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_470
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1018 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1018
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1020 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1020
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1022 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1022
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1024 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1024
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_470
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1026 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1026
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1028 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1028
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1030 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1030
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1202
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1032 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1032
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1238
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1034 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1034
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1036 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1036
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1038 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1038
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1040 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1040
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_1042 = ()
-- Ledger.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_1044 = ()
-- Ledger.Foreign.HSLedger.Core._.Deposits
d_Deposits_1046 :: ()
d_Deposits_1046 = erased
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1048 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_1052 :: ()
d_Epoch_1052 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1054 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1054
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1056 :: ()
d_ExUnits_1056 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1064 = ()
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1066 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_1068 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1072 :: ()
d_GovActionID_1072 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1074 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1076 :: ()
d_GovCertEnv_1076 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_1078 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1080 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_1082 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_1084 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1088 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1088
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_3006
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1090 :: () -> ()
d_HashProtected_1090 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1092 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1092
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'HashedTimelock_412
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1094 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1094
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
               (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1096 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1096
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1098 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1098
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_544
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashedTimelock
d_HashedTimelock_1100 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1106 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1108 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1110 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_1112 :: ()
d_Ix_1112 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1114 :: ()
d_THash_1114 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1118 :: ()
d_KeyPair_1118 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1120 :: ()
d_LangDepView_1120 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_1122 :: ()
d_Language_1122 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1124 :: ()
d_MemoryEstimate_1124 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1126 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_1126 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_1128 :: ()
d_Network_1128 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1132 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1132
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1138 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1138
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1140 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1140
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_1142 :: ()
d_P1Script_1142 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1144 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1146 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_1146
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_414
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1148 :: ()
d_PlutusScript_1148 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1154 :: ()
d_THash_1154 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1156 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_1158 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1160 = ()
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1162 :: ()
d_UpdateT_1162 = erased
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_1164 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1166 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1168 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1168
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1170 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1170
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1172 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1172
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1176 :: ()
d_PoolEnv_1176 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1178 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1180 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_1182 :: ()
d_Prices_1182 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1184 :: ()
d_ProposedPPUpdates_1184 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1186 :: ()
d_ProtVer_1186 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_1188 :: Integer
d_Quorum_1188
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1190 :: ()
d_RdmrPtr_1190 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1192 :: ()
d_Redeemer_1192 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1206 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_1210 :: ()
d_SKey_1210 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_1214 :: ()
d_Script_1214 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1216 :: ()
d_ScriptAddr_1216 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1218 :: ()
d_ScriptBaseAddr_1218 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1220 :: ()
d_ScriptBootstrapAddr_1220 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1222 :: ()
d_ScriptHash_1222 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1226 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_1230 :: ()
d_Ser_1230 = erased
-- Ledger.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1232 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1232
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1234 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1234 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1236 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1236 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1238 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1238
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_442
-- Ledger.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1240 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1240
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1242 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1242
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1244 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1244
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1246 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1246
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_446
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1248 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1248
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_444
-- Ledger.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1250 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1250
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1252 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1252
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1254 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1254
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1256 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1256
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1258 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1258
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1260 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1260
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1262 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1262
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_470
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1264 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1264
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1266 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1266
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_1268 :: ()
d_Sig_1268 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_1270 :: ()
d_Slot_1270 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1272 :: Integer
d_SlotsPerEpoch'7580'_1272
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1274 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1274
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1276 :: Integer
d_StabilityWindow_1276
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1278 :: Integer
d_StabilityWindow'7580'_1278
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1280 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1280
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1282 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1282
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1284 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1284
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_470
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1286 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1286
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1288 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1288
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_470
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))))
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_1292 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1294 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_1300 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_1302 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_1304 :: ()
d_TxId_1304 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_1306 :: ()
d_TxIn_1306 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_1308 :: ()
d_TxOut_1308 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1310 :: ()
d_TxOut'688'_1310 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1312 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_1314 :: ()
d_UTxO_1314 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1316 :: ()
d_Update_1316 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1320 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1322 :: ()
d_VKey_1322 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1324 :: ()
d_VKeyAddr_1324 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1326 :: ()
d_VKeyBaseAddr_1326 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1328 :: ()
d_VKeyBootstrapAddr_1328 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1332 :: ()
d_Value_1332 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1334 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_1334
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1336 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1336
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1338 :: ()
d_Voter_1338 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1340 :: ()
d_Wdrl_1340 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1344 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_1344 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1346 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1346
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_718
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1348 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1348
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1350 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1350
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1352 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1352
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1354 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1354
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1356 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1356
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1162
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1364 :: Integer -> Integer
d_coin_1364
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1366 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1366 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1368 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1368
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1372 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1372 = coe d_HSCrypto_256
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1374 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_832 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_1374 v0
  = coe MAlonzo.Code.Ledger.Certs.d_cwitness_848 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1382 :: Integer -> Integer
d_epoch_1382
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1384 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1384 = coe d_HSEpochStructure_254
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1398 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1400 :: Integer -> Integer
d_firstSlot_1400
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1402 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1402
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1404
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1406 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1406
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2888
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1408 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1408
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2904
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1410 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1410 = coe d_HSGlobalConstants_252
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1412 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1178
d_govParams_1412 = coe d_HsGovParams_820
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1414 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1414
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2366
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1416 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1416
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_454
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1418 :: Integer -> Integer
d_inject_1418
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1420 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1422 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1422
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1424 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1424 = erased
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1426 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1426
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1428 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1428
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1430 :: Integer -> Integer -> ()
d_isKeyPair_1430 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1432 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1432
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_3004
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1434 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1436 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1436 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1438 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1438
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1440 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1440 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1442 :: Integer -> Integer -> Integer -> ()
d_isSigned_1442 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1444 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1444 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1446 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1448 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1448 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1450 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1450
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1452 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1452
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1454 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1454
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2990
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1456 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1456
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1458 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1458
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1032
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.netId
d_netId_1460 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1460 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1462 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1462 = coe d_networkId_248
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1466 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1466
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_p1s_456
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1468 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> ()
d_paramsWellFormed_1468 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1470 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1470 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1472 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1472
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1474 :: Integer -> [Integer]
d_policies_1474
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1476 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1476
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1478 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146
d_ppUpd_1478
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1480 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1480
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1170
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1482 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> ()
d_ppdWellFormed_1482 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1484 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1484
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1486 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1486 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1488 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1488
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_470
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1490 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1492 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1492
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1098
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1494 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1494
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.refScripts
d_refScripts_1496 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1496
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2928
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1504 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1504
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2914
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1506 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422
d_scriptStructure_1506 = coe d_HSScriptStructure_530
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1508 :: Integer -> Integer -> Integer
d_sign_1508
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1510 :: Integer -> Integer
d_size_1510
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1512 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1512
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1514 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1514 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1516 :: Integer -> Integer
d_suc'7497'_1516
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1518 :: [Integer] -> Integer
d_sum'7515'_1518
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1520 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1520
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_470
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1522 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1522 = coe d_tokenAlgebra_250
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1524
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2894
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1526 :: Integer -> Integer
d_txidBytes_1526 v0 = coe v0
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1528 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1528
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2922
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1530 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1530
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2908
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1532 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1532
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2980
      (coe d_HSTransactionStructure_862)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1534 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1534
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1164
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1210
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2218 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1536 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 -> ()
d_validP1Script_1536 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1538 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer -> ()
d_validPlutusScript_1538 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1540 :: Integer
d_ε_1540
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_984
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1542 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1542 = erased
-- Ledger.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1544 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1544
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1218 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1546 :: Integer -> Integer
d_ℕtoEpoch_1546
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1596 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_reserves_1596 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_152 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1598 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_144 -> Integer
d_treasury_1598 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_150 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1602 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1602 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_690 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1604 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1604 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_688 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1608 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1608 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1610 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1610 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1612 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1612 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1616 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1616 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1618 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1618 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1620 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1620 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.deposits
d_deposits_1624 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1624 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_884 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1626 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_864 -> Integer
d_epoch_1626 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_876 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1628 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pp_1628 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_878 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1630 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_votes_1630 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1632 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_864 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1632 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_882 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1636 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_DState_888
d_dState_1636 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_936 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1638 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_GState_916
d_gState_1638 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_940 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1640 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_928 ->
  MAlonzo.Code.Ledger.Certs.T_PState_904
d_pState_1640 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_938 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1666 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_900 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1668 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_898 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1670 ::
  MAlonzo.Code.Ledger.Certs.T_DState_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1670 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_896 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1674 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1674 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_910 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1676 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1676 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_908 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1678 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1678 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_906 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1680 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_894 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1680 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_904 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.deposits
d_deposits_1684 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1684 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_956 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1686 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1686 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_954 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1688 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_944 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_pparams_1688 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_952 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1702 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1702 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1704 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1704 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1706 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1706 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1708 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1708 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1710 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1710 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1712 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1712 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1714 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1714 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1716 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1716 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1718 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1718 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1720 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1720 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1724 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1724 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_924 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1726 ::
  MAlonzo.Code.Ledger.Certs.T_GState_916 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1726 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_922 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1730 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1730 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_924 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1732 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1732 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_926 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1734 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_914 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1734 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_922 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1754 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1754 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_796 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1756 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  Integer
d_expiresIn_1756 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_794 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1758 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  AgdaAny
d_prevAction_1758 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_798 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1760 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1760 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_792 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1762 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_778 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1762 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_790 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1766 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1766 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1768 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1768 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1770 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1238 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1772 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1178 -> ()
d_THash_1772 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1774 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 -> ()
d_UpdateT_1774 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1776 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1776 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1778 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1778 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1780 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_1780 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1162
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1210 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1782 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1784 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146
d_ppUpd_1784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1786 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1786 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1170
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1210 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1788 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 -> AgdaAny -> ()
d_ppdWellFormed_1788 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1790 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1178 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_1790 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1164
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1210 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1794 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692
d_action_1794 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_766 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_776 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1798 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> Integer
d_deposit_1798 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_772 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1800 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  Maybe Integer
d_policy_1800 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_770 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1802 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 -> AgdaAny
d_prevAction_1802 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_768 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1804 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1804 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_774 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1816 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_682
d_anchor_1816 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_750 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1818 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1818 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_744 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1820 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_726
d_vote_1820 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_748 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1822 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1822 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_746 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.Anchor
d_Anchor_1826 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1834 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1834
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_800
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1836 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1836
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_804
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1838 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1838
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_802
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovAction
d_GovAction_1840 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovActionID
d_GovActionID_1842 :: ()
d_GovActionID_1842 = erased
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovActionState
d_GovActionState_1844 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovProposal
d_GovProposal_1846 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovRole
d_GovRole_1848 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.GovVote
d_GovVote_1850 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.HashProtected
d_HashProtected_1852 :: () -> ()
d_HashProtected_1852 = erased
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.NeedsHash
d_NeedsHash_1856 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_NeedsHash_1856 = erased
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.VDeleg
d_VDeleg_1870 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.Vote
d_Vote_1872 = ()
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.Voter
d_Voter_1874 :: ()
d_Voter_1874 = erased
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed
d_actionWellFormed_1880 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 -> ()
d_actionWellFormed_1880 = erased
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1882 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_692 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1882
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_718
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2366 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.getDRepVote
d_getDRepVote_1886 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1886
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_806
-- Ledger.Foreign.HSLedger.Core._.GovernanceActions.maximum
d_maximum_1888 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1888
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_658
-- Ledger.Foreign.HSLedger.Core._.HashedTimelock.hash
d_hash_1914 ::
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 -> Integer
d_hash_1914 v0 = coe MAlonzo.Code.Ledger.Script.d_hash_408 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.HashedTimelock.script
d_script_1916 ::
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_script_1916 v0
  = coe MAlonzo.Code.Ledger.Script.d_script_406 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1920 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1920 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1922 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1922 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1924 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1924 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1926 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1926 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1928 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1928 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1932 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1932 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1934 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1934 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1936 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1936 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1938 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1938 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1940 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1940 ~v0 v1 = du_isMagmaMonomorphism_1940 v1
du_isMagmaMonomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1942 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1944 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1948 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1948 ~v0 v1 = du_isRelIsomorphism_1948 v1
du_isRelIsomorphism_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1948 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1950 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1950 ~v0 v1 = du_isRelMonomorphism_1950 v1
du_isRelMonomorphism_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1950 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.surjective
d_surjective_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1952 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1954 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1956 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1960 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1962 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1964 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1966 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1966 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1972 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1972 ~v0 v1 = du_isRelMonomorphism_1972 v1
du_isRelMonomorphism_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1972 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1974 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1976 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1980 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1980 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1982 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1982 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1984 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1984 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1986 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1986 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1988 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1988 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_2004 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_Emax_2004 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_2006 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_a_2006 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_2008 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2008 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_2010 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_b_2010 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_2012 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMaxTermLength_2012 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_350 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_2014 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_ccMinSize_2014 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_348 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2016 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_coinsPerUTxOByte_2016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_2018 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_collateralPercentage_2018 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_2020 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2020 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_2022 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepActivity_2022 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_358 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_drepDeposit_2024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_356 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_2026 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_346 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionDeposit_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_354 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_govActionLifetime_2030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_352 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_keyDeposit_2032 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_2034 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxBlockSize_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxCollateralInputs_2038 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxHeaderSize_2040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxTxSize_2044 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_maxValSize_2046 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2048 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_330
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_minUTxOValue_2050 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_2052 :: MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_nopt_2052 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 -> Integer
d_poolDeposit_2054 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_2056 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_2056 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_2058 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2058 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_2060 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2060 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_2064 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 -> ()
d_UpdateT_2064 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_2066 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyUpdate_2066 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1162 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_2068 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2068 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1170 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2070 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 -> AgdaAny -> ()
d_ppdWellFormed_2070 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_2072 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1146 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_updateGroups_2072 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1164 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__2076 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2076 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__914 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2078 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2078
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1092
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1824 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2080 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2082 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_242 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_242
d_applyPParamsUpdate_2082
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_962
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2084 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_166]
d_modifiedUpdateGroups_2084
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_898
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2086 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Bool
d_modifiesEconomicGroup_2086
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_706
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2088 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Bool
d_modifiesGovernanceGroup_2088
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_834
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2090 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Bool
d_modifiesNetworkGroup_2090
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_642
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2092 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Bool
d_modifiesTechnicalGroup_2092
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_770
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2094 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> ()
d_paramsUpdateWellFormed_2094 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2096 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2096
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_638
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_2098 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2098 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_928 v1
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2102 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_Emax_2102 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_544 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_2104 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_a_2104 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_2106 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2106 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_542 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_2108 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_b_2108 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2110 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_ccMaxTermLength_2110 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_566 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2112 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_ccMinSize_2112 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_564 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2114 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_coinsPerUTxOByte_2114 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2116 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_collateralPercentage_2116 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_548 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2118 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2118 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_550 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2120 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_drepActivity_2120 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2122 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_drepDeposit_2122 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_560 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2124 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_178
d_drepThresholds_2124 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2126 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_govActionDeposit_2126 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2128 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_govActionLifetime_2128 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_keyDeposit_2130 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2132 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxBlockSize_2134 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxCollateralInputs_2136 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2138 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxHeaderSize_2138 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2140 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2140 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2142 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxTxSize_2142 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2144 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_maxValSize_2144 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2146 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2146 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_536
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2148 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_minUTxOValue_2148 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2150 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_nopt_2150 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_546 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2152 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 -> Maybe Integer
d_poolDeposit_2152 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2154 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220
d_poolThresholds_2154 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_2156 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2156 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_2158 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_450 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2158 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_2162 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2162 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2164 ::
  MAlonzo.Code.Ledger.Certs.T_PState_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2164 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_912 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2168 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2168 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_2170 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_2170 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_2172 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_2172 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_2174 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_2174 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_2176 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2176 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_2178 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_2178 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2180 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2180 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2182 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2182 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2184 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2184 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2186 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2186 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2188 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2188 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2190 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2190 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2192 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2192 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2194 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2194 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2196 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2196 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2198 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_2198 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2200 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2200 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2202 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_2202 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2204 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_2204 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2206 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_2206 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2208 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_2208 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2210 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_2210 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2212 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_2212 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2214 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_2214 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2216 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_2216 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2218 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2218 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2220 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2220 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2222 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2222 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2224 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2224 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2226 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2226 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2228 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2228 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2230 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_2230 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2232 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_2232 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2234 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2234 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2238 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_826 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2238 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_830 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2242 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2242 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_232 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2244 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2244 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_234 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2246 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2246 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2248 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2248 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_238 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2250 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_220 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2250 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_240 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2254 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2254 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2256 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2256 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2260 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2260 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2262 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_CostModel_2262 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2264 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_T_2264 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2266 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_THash_2266 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2268 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2268 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2270 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_Datum_2270 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2272 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2272
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                    (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2274 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2274 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2276 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2276 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2278 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2278 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2280 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2280 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2282 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2282 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2284 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2284 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2286 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2286
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                    (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2288 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2288 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2290 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2290 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2292 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2292 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2294 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_ExUnits_2294 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2296 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2296
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                    (coe MAlonzo.Code.Ledger.Script.du_p1s_456 (coe v1) (coe v2))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2298 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2298 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2300 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2300
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_544
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2302 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_LangDepView_2302 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2304 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_Language_2304 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2306 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_P1Script_2306 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2308 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_PlutusScript_2308 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2310 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> AgdaAny
d_PlutusV1_2310 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2312 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> AgdaAny
d_PlutusV2_2312 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2314 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> AgdaAny
d_PlutusV3_2314 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2316 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_Prices_2316 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2318 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_Redeemer_2318 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2320 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 -> ()
d_Script_2320 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2322 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2322 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2324 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2324 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2326 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2326 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2328 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2328 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2330 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2330 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2332 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2332 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2334 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2334 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_454 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2336 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  AgdaAny -> AgdaAny
d_language_2336 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2338 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2338
  = let v0 = d_HSTransactionStructure_862 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Script.du_p1s_456
           (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1242 (coe v0))
           (coe
              MAlonzo.Code.Ledger.Transaction.d_epochStructure_1528 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2340 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2340 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2342 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  () -> AgdaAny -> AgdaAny
d_toData_2342 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_470 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2344 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_HashedTimelock_400 -> ()
d_validP1Script_2344 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2346 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_422 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2346 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2364 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2364 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2366 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2366 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2368 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2368 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2370 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2370 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2372 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2372 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2374 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2374 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2376 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2378 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2380 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2382 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2382 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2384 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_2384
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2386 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2386 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2388 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2388
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2390 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2390 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2392 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2392 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2394 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2394 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2396 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2396 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2398 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2398 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2400 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2400 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2402 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2402 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2404 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2404 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2406 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2406 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2408 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2408 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2410 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2410
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2412 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2412 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_984
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2416 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2416 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2418 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2418 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2420 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2420 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2422 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2422 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2424 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2424 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2428 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2428 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2430 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2430 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2432 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2432 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2434 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2434 ~v0 = du_isMagmaIsomorphism_2434
du_isMagmaIsomorphism_2434 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2434 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2436 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2436 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2436 v2
du_isMagmaMonomorphism_2436 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2436 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2438 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2438 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2440 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2440 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2442 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2442 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2444 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2444 ~v0 ~v1 v2 = du_isRelIsomorphism_2444 v2
du_isRelIsomorphism_2444 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2444 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2446 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2446 ~v0 ~v1 v2 = du_isRelMonomorphism_2446 v2
du_isRelMonomorphism_2446 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2446 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2448 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2448 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2450 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2452 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2456 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2462 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2462 ~v0 = du_isMagmaMonomorphism_2462
du_isMagmaMonomorphism_2462 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2462 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2468 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2468 ~v0 ~v1 v2 = du_isRelMonomorphism_2468 v2
du_isRelMonomorphism_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2468 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2470 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2472 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_2476 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768
d_body_2476 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2478 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2870 -> Bool
d_isValid_2478 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2884 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2480 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2480 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2886 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_2482 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2870 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850
d_wits_2482 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2882 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2486 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2486 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2844 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2488 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe Integer
d_curTreasury_2488 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2838 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2490 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_mint_2490 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2818 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2492 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2492 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2812 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2494 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> [Integer]
d_reqSigHash_2494 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2846 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2496 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Maybe Integer
d_scriptIntHash_2496 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2848 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2498 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2498 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2834 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2500 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2500 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2836 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2502 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_832]
d_txcerts_2502 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2822 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2504 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txdonation_2504 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2830 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2506 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txfee_2506 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2816 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2508 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txid_2508 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2842 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2510 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2510 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2810 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2512 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2512 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2814 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2514 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_752]
d_txprop_2514 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2828 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2516 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 -> Integer
d_txsize_2516 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2840 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2518 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2518 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2832 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2520 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2520 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2820 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2522 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_734]
d_txvote_2522 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2826 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2524 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2524 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2824 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2528 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2528 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2862 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2530 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850 ->
  [MAlonzo.Code.Ledger.Script.T_HashedTimelock_400]
d_scriptsP1_2530
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2868
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2532 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2532 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2864 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2534 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2534 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2866 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2536 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2536 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2860 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2572 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2578 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1712
d_indexOfImp_2578 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1754 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2580 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2580 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1756 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2582 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2582 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1758 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2584 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  Integer -> Integer
d_serSize_2584 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1752 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2586 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2586 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1750 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2602 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1738
d_HSAbstractFunctions_2602
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_3033
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2741
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18))
         (coe
            (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)))
      (coe
         (\ v0 v1 v2 v3 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8))
      (coe (\ v0 -> 0 :: Integer))
