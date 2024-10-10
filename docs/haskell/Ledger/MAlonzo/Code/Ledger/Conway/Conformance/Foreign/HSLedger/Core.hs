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

module MAlonzo.Code.Ledger.Conway.Conformance.Foreign.HSLedger.Core where

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
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Crypto
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Set.Theory
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

import Data.Text
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.error
d_error_14 ::
  forall xA. () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> xA
d_error_14 = \ _ s -> error (unpack s)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.∀Hashable
d_'8704'Hashable_26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_26 ~v0 ~v1 ~v2 = du_'8704'Hashable_26
du_'8704'Hashable_26 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_26
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_30 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_'8704'isHashableSet_30 ~v0 v1 v2
  = du_'8704'isHashableSet_30 v1 v2
du_'8704'isHashableSet_30 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
du_'8704'isHashableSet_30 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
      v0 v1 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v2 -> v2)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_32 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_32
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Network
d_Network_38 :: ()
d_Network_38 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_40 :: Integer
d_SlotsPerEpoch'7580'_40 = coe (100 :: Integer)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_42 :: Integer
d_StabilityWindow'7580'_42 = coe (10 :: Integer)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_44 :: Integer
d_Quorum_44 = coe (1 :: Integer)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_46 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_46 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_48 :: ()
d_SKey_48 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_50 :: ()
d_VKey_50 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_52 :: ()
d_Sig_52 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_54 :: ()
d_Ser_54 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_56 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.sign
d_sign_58 ::
  () ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_58 ~v0 v1 = du_sign_58 v1
du_sign_58 ::
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_58 v0
  = coe MAlonzo.Code.Interface.HasAdd.d__'43'__12 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_60 :: ()
d_ScriptHash_60 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Data
d_Data_62 :: ()
d_Data_62 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_64 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_64
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkHashableSet_58
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.toData
d_toData_68 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_68 ~v0 ~v1 = du_toData_68
du_toData_68 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_68 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_70 :: ()
d_PlutusScript_70 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_72 :: ()
d_ExUnits_72 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_74 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_74
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
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__100 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_102 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_102
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_104 :: ()
d_CostModel_104 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Language
d_Language_106 :: ()
d_Language_106 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_108 :: ()
d_LangDepView_108 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_110 :: ()
d_Prices_110 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_116 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__124 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_AssetName_126 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_128 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_138 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [Integer]
d_policies_156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_158 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_coinTokenAlgebra_230 = coe d_'46'extendedlambda1_236
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_'46'extendedlambda1_236
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.C_TokenAlgebra'46'constructor_2011
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
                     MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
                     (coe d_'46'extendedlambda1_236)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_244 :: ()
d_TxId_244 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_246 :: ()
d_Ix_246 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_248 :: ()
d_AuxiliaryData_248 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_250 :: ()
d_DocHash_250 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_252 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_252 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_tokenAlgebra_254 = coe d_coinTokenAlgebra_230
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
d_HSGlobalConstants_256
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_GlobalConstants'46'constructor_6069
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      d_SlotsPerEpoch'7580'_40
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_42 d_Quorum_44 d_NetworkId_46
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_HSEpochStructure_258
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕEpochStructure_306
      (coe d_HSGlobalConstants_256)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
d_HSCrypto_260
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_Crypto'46'constructor_2419
      d_HSPKKScheme_266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_PKKScheme_60
d_HSPKKScheme_266
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_PKKScheme'46'constructor_1827
      (\ v0 v1 -> 0 :: Integer)
      (\ v0 v1 v2 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 v1 v2 v3 ->
         case coe v0 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
             -> coe seq (coe v5) (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
           _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_300 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_314 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__352 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_CostModel_354 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_ExUnits_382 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_384 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_LangDepView_386 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Language_388 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_PlutusScript_390 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_396 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_398 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Prices_398 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_418 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_458 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_498 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_504 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_504 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
d_HSScriptStructure_540
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.C_ScriptStructure'46'constructor_76595
      (\ v0 v1 v2 v3 v4 -> coe du_hashRespectsUnion_552 v3 v4)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_414)
      (coe d_HSP2ScriptStructure_562)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_552 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_552 ~v0 ~v1 ~v2 v3 v4
  = du_hashRespectsUnion_552 v3 v4
du_hashRespectsUnion_552 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_552 v0 v1
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe
         (\ v2 ->
            case coe v2 of
              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v0 v3
              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v3
                -> coe MAlonzo.Code.Interface.Hashable.d_hash_16 v1 v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_HSP2ScriptStructure_562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.C_PlutusStructure'46'constructor_4253
      d_Data'688'_64 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_74
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer)))))
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
      d_Show'45'ExUnits_102
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_68)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_578 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_578
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (let v0 = d_HSGlobalConstants_256 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_540)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams
d_GovParams_584 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams
d_PParams_592 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_602 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_602
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (let v0 = d_HSGlobalConstants_256 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_540)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_618 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a
d_a_674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a0
d_a0_676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.b
d_b_678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_682 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_690 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_712 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_722 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.prices
d_prices_730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.pv
d_pv_732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_740 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_754
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (let v0 = d_HSGlobalConstants_256 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                    (coe v0)))
            (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
      (coe d_HSScriptStructure_540)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_756 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_758 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_758
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_HsGovParams_850
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_GovParams'46'constructor_1470983
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_PParamsDiff'46'constructor_1470197
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020)
         (\ v0 -> d_ppWF_860 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_256 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_540))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
            (let v0 = d_HSGlobalConstants_256 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_540))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_256 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
            (coe d_HSScriptStructure_540))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (let v0 = d_HSGlobalConstants_256 in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                       (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
                       (coe v0)))
               (MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
                  (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1)) addInt))
         (coe d_HSScriptStructure_540))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppWF
d_ppWF_860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_860 v0
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
                          (coe
                             MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
                             (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe
                                MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
                                (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe
                                   MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
                                   (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe
                                      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
                                      (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
                                            (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
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
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe
d_trustMe_876
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe
d_trustMe_886
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_892 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_892
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_TransactionStructure'46'constructor_14049
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2688))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
         MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      d_HSGlobalConstants_256 d_HSCrypto_260 d_HSEpochStructure_258
      d_HSScriptStructure_540 d_HsGovParams_850 d_tokenAlgebra_254
      (\ v0 -> v0) d_networkId_252
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__896 :: Integer -> Integer -> Integer
d__'43''7497'__896
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'__80
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._+ᵉ'_
d__'43''7497'''__898 :: Integer -> Integer -> Integer
d__'43''7497'''__898
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._∙_
d__'8729'__900 :: Integer -> Integer -> Integer
d__'8729'__900
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__982
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≈_
d__'8776'__902 :: Integer -> Integer -> ()
d__'8776'__902 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__904 :: Integer -> Integer -> ()
d__'8804''7511'__904 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__906 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__906 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__908 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__910 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__912 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__914 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__916 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__918 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_920 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_920 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_922 :: ()
d_THash_922 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt
d_Acnt_924 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Addr
d_Addr_926 :: ()
d_Addr_926 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor
d_Anchor_928 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AssetName
d_AssetName_930 :: ()
d_AssetName_930 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_932 :: ()
d_AuxiliaryData_932 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_934 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_936 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_948 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState
d_CertState_950 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CostModel
d_CostModel_954 :: ()
d_CostModel_954 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Credential
d_Credential_956 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DCert
d_DCert_960 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState
d_DState_970 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T
d_T_972 :: ()
d_T_972 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_974 :: ()
d_THash_974 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_976 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_976
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Datum
d_Datum_978 :: ()
d_Datum_978 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_980 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_980
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_982 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_982
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_984 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_984
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_986 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_986
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isVKey_148
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_988 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_988
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_990 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_990
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_992 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_992
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_994 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_994
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_996 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_996
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BaseAddr_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_998 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_998
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BootstrapAddr_196
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_1000 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1000
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_1002 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1002
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1004
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1006 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1006
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_1008 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1008
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_1010 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1010
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_1012 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1012
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_1014 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_1014
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_416
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_1016 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1016
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1230
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_1018 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1018
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_1020 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1020
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_1022 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1022
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_1024 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1024
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1026 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1026
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_1028 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1028
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1030 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1030
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1032 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1032
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1034 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1034
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_1036 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1036
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_1038 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1038
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_1040 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1040
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Slot_70
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1042 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1042
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1044 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1044
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1046 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1046
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1048 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1048
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1050 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1050
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1052 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1052
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1054 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1054
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1056 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1056
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Timelock_282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1058 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1058
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1232
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1060 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1060
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1062 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1062
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1064 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1064
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1066 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1066
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1068 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1068
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_1070 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_1072 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Deposits
d_Deposits_1074 :: ()
d_Deposits_1074 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1076 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Epoch
d_Epoch_1080 :: ()
d_Epoch_1080 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1082 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1082
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1084 :: ()
d_ExUnits_1084 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState
d_GState_1092 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovAction
d_GovAction_1094 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1098 :: ()
d_GovActionID_1098 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1100 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1102 :: ()
d_GovCertEnv_1102 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams
d_GovParams_1104 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1106 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovRole
d_GovRole_1108 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote
d_GovVote_1110 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1114 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1114
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_HasCoin'45'TxOut_3044
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1116 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1116
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1118 :: () -> ()
d_HashProtected_1118 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1120 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1120
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_414
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1122 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1122
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1124 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1124
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1126 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1126
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock
d_HashedTimelock_1128 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1134 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1136 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1138 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Ix
d_Ix_1140 :: ()
d_Ix_1140 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_1142 :: ()
d_THash_1142 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1146 :: ()
d_KeyPair_1146 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1148 :: ()
d_LangDepView_1148 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Language
d_Language_1150 :: ()
d_Language_1150 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1152 :: ()
d_MemoryEstimate_1152 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_1154 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Network
d_Network_1156 :: ()
d_Network_1156 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1160 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1160
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NetworkId_292
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1166 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1166
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1168 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1168
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Number'45'Epoch_256
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1Script
d_P1Script_1170 :: ()
d_P1Script_1170 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1172 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_P1ScriptStructure'45'TL_1174
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'TL_418
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1176 :: ()
d_PlutusScript_1176 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_1182 :: ()
d_THash_1182 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1184 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams
d_PParams_1186 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1188 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1190 :: ()
d_UpdateT_1190 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState
d_PState_1192 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1194 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1196 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1196
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1198 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1198
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1200 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1200
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1204 :: ()
d_PoolEnv_1204 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1206 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1208 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Prices
d_Prices_1210 :: ()
d_Prices_1210 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1212 :: ()
d_ProposedPPUpdates_1212 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1214 :: ()
d_ProtVer_1214 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Quorum
d_Quorum_1216 :: Integer
d_Quorum_1216
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Quorum_290
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1218 :: ()
d_RdmrPtr_1218 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1220 :: ()
d_Redeemer_1220 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1234 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.SKey
d_SKey_1238 :: ()
d_SKey_1238 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Script
d_Script_1242 :: ()
d_Script_1242 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1244 :: ()
d_ScriptAddr_1244 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1246 :: ()
d_ScriptBaseAddr_1246 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1248 :: ()
d_ScriptBootstrapAddr_1248 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1250 :: ()
d_ScriptHash_1250 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1254 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Ser
d_Ser_1258 :: ()
d_Ser_1258 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1260 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1260
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1262 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1262 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1264 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1264 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1266 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1266
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1268 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1268
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Epoch_64
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1270 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1270
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1272 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1272
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Network_282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1274 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1274
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1276 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1276
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1278 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1278
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1280 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1280
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1282 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1282
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'RwdAddr_212
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1284 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1284
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1286 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1286
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1288 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1288
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1290 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1290
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1292 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1292
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1294 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1294
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Sig
d_Sig_1296 :: ()
d_Sig_1296 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Slot
d_Slot_1298 :: ()
d_Slot_1298 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1300 :: Integer
d_SlotsPerEpoch'7580'_1300
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1302 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1302
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Slot'691'_58
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1304 :: Integer
d_StabilityWindow_1304
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow_76
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1306 :: Integer
d_StabilityWindow'7580'_1306
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1308 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1308
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1234
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1310 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1310
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1312 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1312
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1314 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1314
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_1316
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
                  (coe v0)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Timelock
d_Timelock_1320 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1322 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx
d_Tx_1328 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody
d_TxBody_1330 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxId
d_TxId_1332 :: ()
d_TxId_1332 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxIn
d_TxIn_1334 :: ()
d_TxIn_1334 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxOut
d_TxOut_1336 :: ()
d_TxOut_1336 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1338 :: ()
d_TxOut'688'_1338 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1340 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.UTxO
d_UTxO_1342 :: ()
d_UTxO_1342 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Update
d_Update_1344 :: ()
d_Update_1344 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1348 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKey
d_VKey_1350 :: ()
d_VKey_1350 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1352 :: ()
d_VKeyAddr_1352 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1354 :: ()
d_VKeyBaseAddr_1354 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1356 :: ()
d_VKeyBootstrapAddr_1356 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Value
d_Value_1360 :: ()
d_Value_1360 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1362 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_1362
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1364 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1364
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Voter
d_Voter_1366 :: ()
d_Voter_1366 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1368 :: ()
d_Wdrl_1368 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_1372 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1374
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_adHashingScheme_1376
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1378 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1378
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addSlot
d_addSlot_1380 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1380
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addSlot_248
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addValue
d_addValue_1382 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1382
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1384
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.certDeposit
d_certDeposit_1392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1392 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.certRefund
d_certRefund_1394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_1394
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coin
d_coin_1396 :: Integer -> Integer
d_coin_1396
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1398 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1398 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1400 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1400
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.crypto
d_crypto_1404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
d_crypto_1404 = coe d_HSCrypto_260
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.cwitness
d_cwitness_1406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_cwitness_1406 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.epoch
d_epoch_1414 :: Integer -> Integer
d_epoch_1414
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_epochStructure_1416 = coe d_HSEpochStructure_258
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1430 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1432 :: Integer -> Integer
d_firstSlot_1432
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_1434
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1436 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_isScript_46 ->
  Integer
d_getScriptHash_1436
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_getScriptHash_188
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getValue
d_getValue_1438 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1438
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue_2926
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1440 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1440
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2942
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
d_globalConstants_1442 = coe d_HSGlobalConstants_256
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.govParams
d_govParams_1444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_1444 = coe d_HsGovParams_850
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.govStructure
d_govStructure_1446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10
d_govStructure_1446
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1448 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1448
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.inject
d_inject_1450 :: Integer -> Integer
d_inject_1450
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1452 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1454 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1454
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  ()
d_isKeyHash_1456 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1458 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1458
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj_26
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1460 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1460
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1462 :: Integer -> Integer -> ()
d_isKeyPair_1462 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1464 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1464
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_isP2Script_3042
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScript
d_isScript_1466 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1468 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1468 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1470
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isScriptObj_36
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1472 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 -> ()
d_isScriptRwdAddr_1472 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isSigned
d_isSigned_1474 :: Integer -> Integer -> Integer -> ()
d_isSigned_1474 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1476 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_isSigned'45'correct_1476
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_isSigned'45'correct_132
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isVKey
d_isVKey_1478 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1480 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1480 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.khs
d_khs_1482 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_khs_1482
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.language
d_language_1484 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1484
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1486 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1486
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_lookupScriptHash_3028
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.maximum
d_maximum_1488 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1488
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.monoid
d_monoid_1490 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1490
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_1032
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.netId
d_netId_1492 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1492
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.networkId
d_networkId_1494 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1494 = coe d_networkId_252
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.p1s
d_p1s_1498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_1498
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWF-elim
d_paramsWF'45'elim_1500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1500 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_1502 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.payCred
d_payCred_1504 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_payCred_1504
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pkk
d_pkk_1506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_PKKScheme_60
d_pkk_1506
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.policies
d_policies_1508 :: Integer -> [Integer]
d_policies_1508
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.positivePParams
d_positivePParams_1510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_1510
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_1512
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1514
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1516
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_ppdWellFormed_1518 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1520 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1520
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.property
d_property_1522 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1522 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ps
d_ps_1524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_1524
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1526 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1528 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1528
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1530 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1530
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.refScriptCostStride>0
d_refScriptCostStride'62'0_1532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1532 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.refScripts
d_refScripts_1534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1534
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2966
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1542 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1542
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptOuts_2952
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
d_scriptStructure_1544 = coe d_HSScriptStructure_540
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sign
d_sign_1546 :: Integer -> Integer -> Integer
d_sign_1546
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.size
d_size_1548 :: Integer -> Integer
d_size_1548
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1550 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1550
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1552 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stakeCred_1552
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_stakeCred_114
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1554 :: Integer -> Integer
d_suc'7497'_1554
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_suc'7497'_78
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1556 :: [Integer] -> Integer
d_sum'7515'_1556
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_248
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.toData
d_toData_1558 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1558
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_tokenAlgebra_1560 = coe d_tokenAlgebra_254
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1562 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2932
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1564 :: Integer -> Integer
d_txidBytes_1564 v0 = coe v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1566 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsScript_2960
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1568 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1568
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsVKey_2946
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txscripts
d_txscripts_1570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1570
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3018
      (coe d_HSTransactionStructure_892)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.updateCertDeposit
d_updateCertDeposit_1572 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1572
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
              (coe v0))
           v2 v3)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1574
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2274
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1576 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_1576 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1578 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1578 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ε
d_ε_1580 :: Integer
d_ε_1580
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2304
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_984
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1582 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1582 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1584 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_ℕEpochStructure_1584
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕEpochStructure_306
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1248
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1586 :: Integer -> Integer
d_ℕtoEpoch_1586
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕtoEpoch_244
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_1636 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1642 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_718
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor.url
d_url_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_716
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_60 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1650 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_62 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_64 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  Integer
d_attrsSize_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_attrsSize_78
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1658 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_74 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_76 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  Integer
d_epoch_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_1668 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.dState
d_dState_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.gState
d_gState_1676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_1676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.pState
d_pState_1678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_1678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_984 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pparams_982 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1754 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1754 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1756 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1756 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.action
d_action_1776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  Integer
d_expiresIn_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_1782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_1794 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_1796 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_1810 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.action
d_action_1816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe Integer
d_policy_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_1824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_1826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Anchor
d_Anchor_1848 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1856 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1856
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1858 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1858
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1860 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1860
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovAction
d_GovAction_1862 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovActionID
d_GovActionID_1864 :: ()
d_GovActionID_1864 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovActionState
d_GovActionState_1866 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovProposal
d_GovProposal_1868 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovRole
d_GovRole_1870 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovVote
d_GovVote_1872 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.HashProtected
d_HashProtected_1874 :: () -> ()
d_HashProtected_1874 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.NeedsHash
d_NeedsHash_1878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_1878 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.VDeleg
d_VDeleg_1892 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Vote
d_Vote_1894 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Voter
d_Voter_1896 :: ()
d_Voter_1896 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed
d_actionWellFormed_1902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_1902 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1904
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2422
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.getDRepVote
d_getDRepVote_1908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_1908
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.maximum
d_maximum_1910 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1910
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock.storedHash
d_storedHash_1936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  Integer
d_storedHash_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock.timelock
d_timelock_1938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268
d_timelock_1938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_410
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1942 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1944 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1946 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1948 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1948 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1950 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1954 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1956 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1956 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1960 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1960 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1962 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1962 ~v0 v1 = du_isMagmaMonomorphism_1962 v1
du_isMagmaMonomorphism_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1964 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1966 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1968 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1970 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1970 ~v0 v1 = du_isRelIsomorphism_1970 v1
du_isRelIsomorphism_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1972 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1972 ~v0 v1 = du_isRelMonomorphism_1972 v1
du_isRelMonomorphism_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1972 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.surjective
d_surjective_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1974 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1976 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1976 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1978 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1982 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1984 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1984 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1988 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1988 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1992 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1994 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1994 ~v0 v1 = du_isRelMonomorphism_1994 v1
du_isRelMonomorphism_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1994 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1996 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1996 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1998 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1998 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2002 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2004 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2004 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2006 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2006 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_2008 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  ()
d_P1Script_2008 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_2010 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2010 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_2026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a
d_a_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a0
d_a0_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.b
d_b_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_2068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_2070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_2072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_2076 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_2078 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.prices
d_prices_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.pv
d_pv_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2088 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2088 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_2090 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_2094 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_2094 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2096 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2100 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_2100 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_2102 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2102 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__2106 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2106 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2108
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1856
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2110 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_2112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_2116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_2118
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_2120
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_2122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2124 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_2124 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2126 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2126
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_2128 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2128 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_2136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_2138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_2190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState.pools
d_pools_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2206 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_CostModel_2208 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_T_2210 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_THash_2212 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Datum_2216 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2228 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2230 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2232 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_ExUnits_2236 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2238 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_LangDepView_2240 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Language_2242 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_PlutusScript_2244 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2246 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_2248 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_2250 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Prices_2252 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Redeemer_2254 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2258 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2262 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2264 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2272 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_rewardAddr_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2298 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_CostModel_2300 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_T_2302 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_THash_2304 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Datum_2308 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2310
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2324
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2326 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2328 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_ExUnits_2332 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2336
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2338 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2340
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_LangDepView_2342 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Language_2344 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_P1Script_2346 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_PlutusScript_2348 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV1_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV2_2352 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV3_2354 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Prices_2356 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Redeemer_2358 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Script_2360 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2368 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2370 v0
  = let v1
          = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2374 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny
d_language_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_2378
  = let v0 = d_HSTransactionStructure_892 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1272
              (coe v0))
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1558
              (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_2380 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () -> AgdaAny -> AgdaAny
d_toData_2382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_2384 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2386 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2404 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__982
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2406 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2408 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_AssetName_2410 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_226
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2416 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2418 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2420 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_2422 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2424 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_962
d_Value'45'CommutativeMonoid_2424
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2426 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2426 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_124
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2428 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2428
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_230
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2430 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2432 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2432 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_2436 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2438 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [Integer]
d_policies_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2442 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2444 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_2446 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2448 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_2448 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2450 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2450
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_248
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_ε_2452 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_984
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_Value'45'CommutativeMonoid_126
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2456 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2458 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2460 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2460 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2462 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2464 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2468 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2468 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2474 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2474 ~v0 = du_isMagmaIsomorphism_2474
du_isMagmaIsomorphism_2474 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2474 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2476 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2476 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2476 v2
du_isMagmaMonomorphism_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2476 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2480 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2484 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2484 ~v0 ~v1 v2 = du_isRelIsomorphism_2484 v2
du_isRelIsomorphism_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2484 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2486 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2486 ~v0 ~v1 v2 = du_isRelMonomorphism_2486 v2
du_isRelMonomorphism_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2486 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2488 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2488 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2490 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2492 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2496 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2496 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2498 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2502 ~v0 = du_isMagmaMonomorphism_2502
du_isMagmaMonomorphism_2502 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2502 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2504 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2506 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2508 ~v0 ~v1 v2 = du_isRelMonomorphism_2508 v2
du_isRelMonomorphism_2508 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2508 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2510 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2510 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2512 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2512 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.body
d_body_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806
d_body_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2918
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2518 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Bool
d_isValid_2518 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2922
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2924
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.wits
d_wits_2522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2908 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888
d_wits_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2920
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2882
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe Integer
d_curTreasury_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2876
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_mint_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2856
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2850
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [Integer]
d_reqSigHash_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2884
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2536 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe Integer
d_scriptIntHash_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2886
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2872
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2874
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2860
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txdonation_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2868
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txfee_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2854
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2548 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txid_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2880
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2848
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2852
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2866
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Integer
d_txsize_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2878
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2870
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2560 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2858
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2864
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2564 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2862
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2568 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2900
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404]
d_scriptsP1_2570
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptsP1_2906
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2572 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2572 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2902
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2574 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2904
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2576 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2576 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2898
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2612 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_indexOf_1726
d_indexOfImp_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1768
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_runPLCScript_1770
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2622 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_scriptSize_1772
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  Integer -> Integer
d_serSize_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1766
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2626 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_txscriptfee_1764
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1752
d_HSAbstractFunctions_2642
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_AbstractFunctions'46'constructor_3043
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_indexOf'46'constructor_2751
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
