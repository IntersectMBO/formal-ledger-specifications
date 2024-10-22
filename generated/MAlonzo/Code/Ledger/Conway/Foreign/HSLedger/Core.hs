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

module MAlonzo.Code.Ledger.Conway.Foreign.HSLedger.Core where

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
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.Decidable.Instances
import qualified MAlonzo.Code.Class.HasAdd.Core
import qualified MAlonzo.Code.Class.HasOrder.Core
import qualified MAlonzo.Code.Class.HasOrder.Instance
import qualified MAlonzo.Code.Class.Monoid.Core
import qualified MAlonzo.Code.Class.Semigroup.Core
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
import qualified MAlonzo.Code.Interface.Hashable
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Abstract
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions
import qualified MAlonzo.Code.Ledger.Conway.Conformance.PParams
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Transaction
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

import Data.Text
-- Ledger.Conway.Foreign.HSLedger.Core.error
d_error_12 ::
  forall xA. () -> MAlonzo.Code.Agda.Builtin.String.T_String_6 -> xA
d_error_12 = \ _ s -> error (unpack s)
-- Ledger.Conway.Foreign.HSLedger.Core._.∀Hashable
d_'8704'Hashable_24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_24 ~v0 ~v1 ~v2 = du_'8704'Hashable_24
du_'8704'Hashable_24 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_24
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_28 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_28 ~v0 v1 v2
  = du_'8704'isHashableSet_28 v1 v2
du_'8704'isHashableSet_28 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_28 v0 v1
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30 v0 v1 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v2 -> v2)))
-- Ledger.Conway.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_30 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_30
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Network
d_Network_36 :: ()
d_Network_36 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_38 :: Integer
d_SlotsPerEpoch'7580'_38 = coe (100 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_40 :: Integer
d_StabilityWindow'7580'_40 = coe (10 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_42 :: Integer
d_Quorum_42 = coe (1 :: Integer)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_44 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_44 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_46 :: ()
d_SKey_46 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_48 :: ()
d_VKey_48 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_50 :: ()
d_Sig_50 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_52 :: ()
d_Ser_52 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_54 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.sign
d_sign_56 ::
  () ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_56 ~v0 v1 = du_sign_56 v1
du_sign_56 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_56 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__14 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_58 :: ()
d_ScriptHash_58 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Data
d_Data_60 :: ()
d_Data_60 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_62 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_62
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
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.toData
d_toData_66 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_66 ~v0 ~v1 = du_toData_66
du_toData_66 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_66 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_68 :: ()
d_PlutusScript_68 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_70 :: ()
d_ExUnits_70 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_72 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_72
  = coe
      MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
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
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__98 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__98 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Show-ExUnits
d_Show'45'ExUnits_100 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_100
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_102 :: ()
d_CostModel_102 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Language
d_Language_104 :: ()
d_Language_104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_106 :: ()
d_LangDepView_106 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_108 :: ()
d_Prices_108 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_114 = ()
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__122 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_124 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_124 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_126 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_126 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_128 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_128 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_136 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_142 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_146 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_152 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_154 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_158 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_160 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_226 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_coinTokenAlgebra_226 = coe d_'46'extendedlambda1_232
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_232 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda1_232
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_1987
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_fromBundle_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3334))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_442
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1470
              (coe
                 MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_1032
               (coe
                  MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                     (coe d_'46'extendedlambda1_232)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_240 :: ()
d_TxId_240 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_242 :: ()
d_Ix_242 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_244 :: ()
d_AuxiliaryData_244 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_246 :: ()
d_DocHash_246 = erased
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_248 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_248 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_250 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_250 = coe d_coinTokenAlgebra_226
-- Ledger.Conway.Foreign.HSLedger.Core.HSGlobalConstants
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
      d_SlotsPerEpoch'7580'_38
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3575
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_40 d_Quorum_42 d_NetworkId_44
-- Ledger.Conway.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_254 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_254
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_HSGlobalConstants_252)
-- Ledger.Conway.Foreign.HSLedger.Core.HSCrypto
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
-- Ledger.Conway.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_262 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_262
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1827
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
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_296 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_310 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__348 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_350 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_356 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_360 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_362 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_364 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_366 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_368 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_370 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_376 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_380 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_382 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_384 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_386 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_388 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_390 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_392 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_394 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_398 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_400 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_402 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_410 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_410 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_412 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_412 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_414 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_414 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.PlutusStructure
d_PlutusStructure_426 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
d_HSScriptStructure_670
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.C_ScriptStructure'46'constructor_5401
      (\ v0 v1 v2 v3 v4 -> coe du_hashRespectsUnion_682 v3 v4)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_350)
      (coe d_HSP2ScriptStructure_692)
-- Ledger.Conway.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_682 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_682 ~v0 ~v1 ~v2 v3 v4
  = du_hashRespectsUnion_682 v3 v4
du_hashRespectsUnion_682 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_682 v0 v1
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
-- Ledger.Conway.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_692 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_692
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4253
      d_Data'688'_62 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_72
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
      d_Show'45'ExUnits_100
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_66)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_708 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_708
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_670)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams
d_GovParams_714 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams
d_PParams_722 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_732 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_732
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_670)
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_748 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_766 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a
d_a_804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a0
d_a0_806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.b
d_b_808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_852 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_852 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_854 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_854 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_856 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_856 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.prices
d_prices_860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.pv
d_pv_862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_870 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_872 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_884 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_884
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_670)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_886 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_888 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_888
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_912 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_914 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_914 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_916 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_916 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_918 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_918 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_920 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_922 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_922 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_924 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_924 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_926 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_928 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_928 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_938 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_942 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_942 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_944 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_946 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_952 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_956 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_956 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_958 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_958 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_960 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_960 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_962 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_962 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_964 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_964 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_HsGovParams_980
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_GovParams'46'constructor_1470983
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_PParamsDiff'46'constructor_1470197
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020)
         (\ v0 -> d_ppWF_990 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_670))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_670))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_670))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (let v0 = d_HSGlobalConstants_252 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
         (coe d_HSScriptStructure_670))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppWF
d_ppWF_990 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_990 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__96
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1672
                    (coe
                       MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8)
                    (coe
                       MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                       (coe MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_428
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1470
                          (coe
                             MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory.d_List'45'Model'7496'_8))
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
-- Ledger.Conway.Foreign.HSLedger.Core._._.trustMe
d_trustMe_1006
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core._._.trustMe
d_trustMe_1016
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_1022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_1022
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_TransactionStructure'46'constructor_15307
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
      d_HSScriptStructure_670 d_HsGovParams_980 d_tokenAlgebra_250
      (\ v0 -> v0) d_networkId_248
-- Ledger.Conway.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__1026 :: Integer -> Integer -> Integer
d__'43''7497'__1026
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._._+ᵉ'_
d__'43''7497'''__1028 :: Integer -> Integer -> Integer
d__'43''7497'''__1028
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._._∙_
d__'8729'__1030 :: Integer -> Integer -> Integer
d__'8729'__1030
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._._≈_
d__'8776'__1032 :: Integer -> Integer -> ()
d__'8776'__1032 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__1034 :: Integer -> Integer -> ()
d__'8804''7511'__1034 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__1036 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__1036 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__1038 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__1040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__1040 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__1042 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__1044 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__1046 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__1048 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_1050 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_1050 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1052 :: ()
d_THash_1052 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt
d_Acnt_1054 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Addr
d_Addr_1056 :: ()
d_Addr_1056 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor
d_Anchor_1058 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.AssetName
d_AssetName_1060 :: ()
d_AssetName_1060 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_1062 :: ()
d_AuxiliaryData_1062 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_1064 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_1066 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_1078 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState
d_CertState_1080 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CostModel
d_CostModel_1084 :: ()
d_CostModel_1084 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Credential
d_Credential_1086 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DCert
d_DCert_1090 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DState
d_DState_1100 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.T
d_T_1102 :: ()
d_T_1102 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1104 :: ()
d_THash_1104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_1106 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1106
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Datum
d_Datum_1108 :: ()
d_Datum_1108 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_1110 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_1110
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_1112 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_1112
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_1114 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_1114
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_1116 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_1116
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_1118 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1118
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1120 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1120
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_1122 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_1122
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_1124 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1124
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_1126 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_1126
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_1128 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_1128
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_1130 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1130
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_1132 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1132
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1134 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1134
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1136 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1136
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_1138 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1138
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_1140 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1140
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_1142 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1142
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_1144 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_1144
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_352
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_1146 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1146
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1360
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_1148 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1148
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_1150 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1150
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_1152 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1152
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_1154 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1154
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1156 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1156
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_1158 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1158
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1160 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1160
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1162 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1162
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1164 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1164
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_1166 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1166
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_1168 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1168
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_1170 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1170
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1172 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1172
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1364
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1174 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1174
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1176 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1176
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1178 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1178
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1364
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1180 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1180
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1182 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1182
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1184 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1184
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1186 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1186
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1188 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1188
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1362
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1190 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1190
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1192 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1192
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1194 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1194
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1196 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1196
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1198 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1198
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_1200 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_1202 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Deposits
d_Deposits_1204 :: ()
d_Deposits_1204 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1206 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Epoch
d_Epoch_1210 :: ()
d_Epoch_1210 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1212 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1212
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1214 :: ()
d_ExUnits_1214 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GState
d_GState_1222 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovAction
d_GovAction_1224 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1228 :: ()
d_GovActionID_1228 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1230 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1232 :: ()
d_GovCertEnv_1232 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams
d_GovParams_1234 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1236 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovRole
d_GovRole_1238 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote
d_GovVote_1240 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1244 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1244
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_HasCoin'45'TxOut_3304
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1246 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1246
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1248 :: () -> ()
d_HashProtected_1248 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1250 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1250
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_350
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1252 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1252
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1254 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1254
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1256 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1256
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_486
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock
d_HashedTimelock_1258 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1264 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1266 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1268 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Ix
d_Ix_1270 :: ()
d_Ix_1270 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1272 :: ()
d_THash_1272 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1276 :: ()
d_KeyPair_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1278 :: ()
d_LangDepView_1278 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Language
d_Language_1280 :: ()
d_Language_1280 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1282 :: ()
d_MemoryEstimate_1282 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_1284 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Network
d_Network_1286 :: ()
d_Network_1286 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1290 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1290
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1296 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1296
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1298 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1298
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.P1Script
d_P1Script_1300 :: ()
d_P1Script_1300 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1302 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1304 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_1304
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'TL_354
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1306 :: ()
d_PlutusScript_1306 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1312 :: ()
d_THash_1312 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1314 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams
d_PParams_1316 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1318 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1320 :: ()
d_UpdateT_1320 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PState
d_PState_1322 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1324 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1326 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1326
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1328 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1328
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1330 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1330
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1334 :: ()
d_PoolEnv_1334 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1336 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1338 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Prices
d_Prices_1340 :: ()
d_Prices_1340 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1342 :: ()
d_ProposedPPUpdates_1342 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1344 :: ()
d_ProtVer_1344 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Quorum
d_Quorum_1346 :: Integer
d_Quorum_1346
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1348 :: ()
d_RdmrPtr_1348 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1350 :: ()
d_Redeemer_1350 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1364 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.SKey
d_SKey_1368 :: ()
d_SKey_1368 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script
d_Script_1372 :: ()
d_Script_1372 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1374 :: ()
d_ScriptAddr_1374 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1376 :: ()
d_ScriptBaseAddr_1376 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1378 :: ()
d_ScriptBootstrapAddr_1378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1380 :: ()
d_ScriptHash_1380 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1384 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Ser
d_Ser_1388 :: ()
d_Ser_1388 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1390 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1390
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1392 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1392 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1394 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1394 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1396 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1396
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1398 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1398
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1400 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1400
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1402 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1402
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1404 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1404
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1406 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1406
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1408 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1408
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1410 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1410
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1412 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1412
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1414 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1414
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1416 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1416
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1364
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1418 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1418
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1420 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1420
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1422 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1422
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1424 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1424
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Foreign.HSLedger.Core._.Sig
d_Sig_1426 :: ()
d_Sig_1426 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Slot
d_Slot_1428 :: ()
d_Slot_1428 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1430 :: Integer
d_SlotsPerEpoch'7580'_1430
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1432 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1432
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1434 :: Integer
d_StabilityWindow_1434
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1436 :: Integer
d_StabilityWindow'7580'_1436
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1438 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1438
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1364
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1440 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1440
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1442 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1442
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1444 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1444
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1446 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1446
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
                  (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Timelock
d_Timelock_1450 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1452 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx
d_Tx_1458 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody
d_TxBody_1460 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TxId
d_TxId_1462 :: ()
d_TxId_1462 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxIn
d_TxIn_1464 :: ()
d_TxIn_1464 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxOut
d_TxOut_1466 :: ()
d_TxOut_1466 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1468 :: ()
d_TxOut'688'_1468 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1470 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.UTxO
d_UTxO_1472 :: ()
d_UTxO_1472 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Update
d_Update_1474 :: ()
d_Update_1474 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1478 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.VKey
d_VKey_1480 :: ()
d_VKey_1480 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1482 :: ()
d_VKeyAddr_1482 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1484 :: ()
d_VKeyBaseAddr_1484 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1486 :: ()
d_VKeyBootstrapAddr_1486 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Value
d_Value_1490 :: ()
d_Value_1490 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1492 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1492
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Voter
d_Voter_1494 :: ()
d_Voter_1494 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1496 :: ()
d_Wdrl_1496 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1500 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_1500 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1502
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1504 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1504
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1506 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1506
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addSlot
d_addSlot_1508 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1508
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addValue
d_addValue_1510 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1510
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1512
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.certDeposit
d_certDeposit_1520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1520 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- Ledger.Conway.Foreign.HSLedger.Core._.certRefund
d_certRefund_1522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_1522
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- Ledger.Conway.Foreign.HSLedger.Core._.coin
d_coin_1524 :: Integer -> Integer
d_coin_1524
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1526 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1526 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1528 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1528
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.crypto
d_crypto_1532 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1532 = coe d_HSCrypto_256
-- Ledger.Conway.Foreign.HSLedger.Core._.cwitness
d_cwitness_1534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_1534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.epoch
d_epoch_1542 :: Integer -> Integer
d_epoch_1542
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1544 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1544 = coe d_HSEpochStructure_254
-- Ledger.Conway.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1558 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1560 :: Integer -> Integer
d_firstSlot_1560
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1564 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1564
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Foreign.HSLedger.Core._.getValue
d_getValue_1566 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue_3186
-- Ledger.Conway.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1568 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1568
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_3202
-- Ledger.Conway.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1570 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1570 = coe d_HSGlobalConstants_252
-- Ledger.Conway.Foreign.HSLedger.Core._.govParams
d_govParams_1572 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_1572 = coe d_HsGovParams_980
-- Ledger.Conway.Foreign.HSLedger.Core._.govStructure
d_govStructure_1574 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10
d_govStructure_1574
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1576 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1576
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.inject
d_inject_1578 :: Integer -> Integer
d_inject_1578
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1580 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1582 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1582
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1584 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1584 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1586 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1586
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1588 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1588
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1590 :: Integer -> Integer -> ()
d_isKeyPair_1590 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1592 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1592
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_isP2Script_3302
-- Ledger.Conway.Foreign.HSLedger.Core._.isScript
d_isScript_1594 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1596 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1596 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1598 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1598
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1600 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1600 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isSigned
d_isSigned_1602 :: Integer -> Integer -> Integer -> ()
d_isSigned_1602 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_isSigned'45'correct_1604
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.isVKey
d_isVKey_1606 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1608 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1608 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.khs
d_khs_1610 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1610
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.language
d_language_1612 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1612
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1614 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1614
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_lookupScriptHash_3288
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.maximum
d_maximum_1616 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1616
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Foreign.HSLedger.Core._.monoid
d_monoid_1618 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1618
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.netId
d_netId_1620 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1620 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Foreign.HSLedger.Core._.networkId
d_networkId_1622 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1622 = coe d_networkId_248
-- Ledger.Conway.Foreign.HSLedger.Core._.p1s
d_p1s_1626 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1626
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWF-elim
d_paramsWF'45'elim_1628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1628 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_1630 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.payCred
d_payCred_1632 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1632 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Foreign.HSLedger.Core._.pkk
d_pkk_1634 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1634
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.policies
d_policies_1636 :: Integer -> [Integer]
d_policies_1636
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.positivePParams
d_positivePParams_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_1638
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1640 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1640
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1642
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1644
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_ppdWellFormed_1646 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1648 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1648
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.property
d_property_1650 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1650 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ps
d_ps_1652 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1652
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1654 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1656 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1656
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1658 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1658
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.refScriptCostStride>0
d_refScriptCostStride'62'0_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1660 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Foreign.HSLedger.Core._.refScripts
d_refScripts_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1662
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_3226
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1670 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1670
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptOuts_3212
-- Ledger.Conway.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360
d_scriptStructure_1672 = coe d_HSScriptStructure_670
-- Ledger.Conway.Foreign.HSLedger.Core._.sign
d_sign_1674 :: Integer -> Integer -> Integer
d_sign_1674
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.size
d_size_1676 :: Integer -> Integer
d_size_1676
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1678 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1678
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1680 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1680 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1682 :: Integer -> Integer
d_suc'7497'_1682
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1684 :: [Integer] -> Integer
d_sum'7515'_1684
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.toData
d_toData_1686 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1686
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1688 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1688 = coe d_tokenAlgebra_250
-- Ledger.Conway.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1690 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1690
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_3192
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1692 :: Integer -> Integer
d_txidBytes_1692 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1694 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1694
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsScript_3220
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1696 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1696
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsVKey_3206
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.txscripts
d_txscripts_1698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1698
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3278
      (coe d_HSTransactionStructure_1022)
-- Ledger.Conway.Foreign.HSLedger.Core._.updateCertDeposit
d_updateCertDeposit_1700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1700
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
              (coe v0))
           v2 v3)
-- Ledger.Conway.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1702
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2536
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1704 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  ()
d_validP1Script_1704 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1706 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1706 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ε
d_ε_1708 :: Integer
d_ε_1708
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2566
                  (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1710 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1710 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1712 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1712
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1378
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1714 :: Integer -> Integer
d_ℕtoEpoch_1714
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1764 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_1764 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1766 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_1766 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1770 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1770 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_718
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor.url
d_url_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_716
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1776 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1776 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1778 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1778 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1780 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1780 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1784 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1784 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1786 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1786 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1788 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1788 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  Integer
d_epoch_1792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.dState
d_dState_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.gState
d_gState_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.pState
d_pState_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_1806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_984 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1844 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pparams_982 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1858 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1860 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1860 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1862 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1862 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1864 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1864 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1866 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1866 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1868 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1868 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1870 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1870 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1872 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1872 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1874 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1876 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1876 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.action
d_action_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1904 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1906 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  Integer
d_expiresIn_1906 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_1908 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1910 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1910 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1912 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1912 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1916 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1916 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1918 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1918 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1920 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1920 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1922 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_1922 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1924 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_1924 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1926 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1926 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1928 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1928 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1930 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1930 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1936 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1936 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1938 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_1938 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1940 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1940 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.action
d_action_1944 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1944 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1946 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1946 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1948 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_1948 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1950 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe Integer
d_policy_1950 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1952 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_1952 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1954 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1954 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1966 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1966 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1968 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1968 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1970 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_1970 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1972 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1972 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Anchor
d_Anchor_1976 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1984
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1986 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1986
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1988
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovAction
d_GovAction_1990 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovActionID
d_GovActionID_1992 :: ()
d_GovActionID_1992 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovActionState
d_GovActionState_1994 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovProposal
d_GovProposal_1996 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovRole
d_GovRole_1998 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovVote
d_GovVote_2000 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.HashProtected
d_HashProtected_2002 :: () -> ()
d_HashProtected_2002 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.NeedsHash
d_NeedsHash_2006 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_2006 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.VDeleg
d_VDeleg_2020 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Vote
d_Vote_2022 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Voter
d_Voter_2024 :: ()
d_Voter_2024 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed
d_actionWellFormed_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_2030 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_2032
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2682
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.getDRepVote
d_getDRepVote_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_2036
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.maximum
d_maximum_2038 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_2038
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock.storedHash
d_storedHash_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  Integer
d_storedHash_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock.timelock
d_timelock_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_2070 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2070 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2072 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2072 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2074 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2074 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2076 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2076 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_2078 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2078 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_2082 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2082 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_2084 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2084 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2086 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2086 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2088 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2088 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2090 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2090 ~v0 v1 = du_isMagmaMonomorphism_2090 v1
du_isMagmaMonomorphism_2090 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2090 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2092 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2092 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2094 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2094 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2096 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2096 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2098 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2098 ~v0 v1 = du_isRelIsomorphism_2098 v1
du_isRelIsomorphism_2098 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2098 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2100 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2100 ~v0 v1 = du_isRelMonomorphism_2100 v1
du_isRelMonomorphism_2100 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2100 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.surjective
d_surjective_2102 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2102 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2104 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_2106 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2106 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_2110 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2110 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_2112 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_2112 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2114 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2114 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2116 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2116 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2118 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2118 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2120 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2120 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2122 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2122 ~v0 v1 = du_isRelMonomorphism_2122 v1
du_isRelMonomorphism_2122 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2122 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2124 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2124 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_2126 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2126 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2130 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2130 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2132 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2132 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2134 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2134 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_2136 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_2136 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_2138 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2138 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a
d_a_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a0
d_a0_2158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.b
d_b_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_2176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_2178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_2188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_2190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2194 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_2194 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_2200 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_2200 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2202 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_2204 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_2206 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_2208 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.prices
d_prices_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2212 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.pv
d_pv_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_2222 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2226 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_2228 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__2234 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2234 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2236 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2236
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_2118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2238 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_2240
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_2242
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_2244
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2246 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_2246
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_2248
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_2250
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_2252 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2254
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_2256 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2256 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_2260 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_2268 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2270 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_2270 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2274 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_2274 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2286 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_2286 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2292 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_2292 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_2294 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_2296 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2298 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2300 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_2304 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_2306 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2320 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2322 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_2324 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PState.pools
d_pools_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2328 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2334 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2334 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_2336 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_2336 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_2338 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_2338 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_2340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_2340 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_2342 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2342 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_2344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_2344 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2346 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2348 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2350 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2352 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2354 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2356 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2358 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2360 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2362 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_2364 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2366 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_2368 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_2370 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_2372 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_2374 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_2376 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_2378 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_2380 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_2382 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2384 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2386 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2388 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2390 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2392 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2394 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_2396 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_2398 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2400 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2416 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2420 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2420 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2422 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2422 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.Dec-evalTimelock
d_Dec'45'evalTimelock_2426 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_2426
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.DecEq-Timelock
d_DecEq'45'Timelock_2428 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_2428
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.P1ScriptStructure
d_P1ScriptStructure_2430 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_2432 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'TL_2432
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_400 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.PlutusStructure
d_PlutusStructure_2434 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure
d_ScriptStructure_2448 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.Timelock
d_Timelock_2450 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.evalTimelock
d_evalTimelock_2464 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure._≥ᵉ_
d__'8805''7497'__2468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2468 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.CostModel
d_CostModel_2470 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_CostModel_2470 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.T
d_T_2472 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_T_2472 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.THash
d_THash_2474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_THash_2474 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Dataʰ
d_Data'688'_2476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2476 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Datum
d_Datum_2478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Datum_2478 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2480
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2482 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2486 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2486 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2488 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2490 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2492 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2494 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2494
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-T
d_DecEq'45'T_2496 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2496 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2498 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2498 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2500 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2500 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.ExUnits
d_ExUnits_2502 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_ExUnits_2502 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2504 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2504 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_438 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2506 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2506
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2508 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2508 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2510 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2510
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_528 (coe v1)
               (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.LangDepView
d_LangDepView_2512 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_LangDepView_2512 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Language
d_Language_2514 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Language_2514 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.P1Script
d_P1Script_2516 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_P1Script_2516 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.PlutusScript
d_PlutusScript_2518 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_PlutusScript_2518 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.PlutusV1
d_PlutusV1_2520 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV1_2520 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.PlutusV2
d_PlutusV2_2522 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV2_2522 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.PlutusV3
d_PlutusV3_2524 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> AgdaAny
d_PlutusV3_2524 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Prices
d_Prices_2526 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Prices_2526 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Redeemer
d_Redeemer_2528 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Redeemer_2528 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Script
d_Script_2530 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 -> ()
d_Script_2530 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2532 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2532 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2534 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2534 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Show-Prices
d_Show'45'Prices_2536 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2536 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.Show-THash
d_Show'45'THash_2538 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2538 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.T-Hashable
d_T'45'Hashable_2540 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2540 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.T-isHashable
d_T'45'isHashable_2542 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2542 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2544 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2544 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_436 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.language
d_language_2546 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> AgdaAny
d_language_2546 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.p1s
d_p1s_2548 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2548
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe (coe MAlonzo.Code.Ledger.Script.d_p1s_440 (coe v1) (coe v2))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.ps
d_ps_2550 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2550 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.toData
d_toData_2552 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  () -> AgdaAny -> AgdaAny
d_toData_2552 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_454 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.validP1Script
d_validP1Script_2554 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 -> ()
d_validP1Script_2554 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script.ScriptStructure.validPlutusScript
d_validPlutusScript_2556 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_402 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2556 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2588 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2588 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2590 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_CostModel_2590 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2592 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_T_2592 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2594 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_THash_2594 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2596 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2596 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2598 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Datum_2598 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2600 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2600
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2602 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2602 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2604 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2604 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2606 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2606 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2608 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2608 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2610 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2610 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2612 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2612 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2614 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2614
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2616 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2618 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2620 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2622 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_ExUnits_2622 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2624 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2624 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_410
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2626 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2626
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2628 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2628 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2630 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2630
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_486
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_LangDepView_2632 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Language_2634 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_P1Script_2636 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_PlutusScript_2638 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV1_2640 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2642 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV2_2642 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny
d_PlutusV3_2644 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Prices_2646 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Redeemer_2648 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2650 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  ()
d_Script_2650 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2652 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2654 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2656 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2658 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2658 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2660 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2662 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_408
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> AgdaAny
d_language_2666 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2668 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2668
  = let v0 = d_HSTransactionStructure_1022 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_388
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1402
              (coe v0))
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1686
              (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  () -> AgdaAny -> AgdaAny
d_toData_2672 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_412 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340 ->
  ()
d_validP1Script_2674 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_360 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2676 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2680 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2680 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2682 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2682 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2684 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2684 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2686 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2686 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2688 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2688 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2690 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2690 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2692 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2694 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2696 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2698 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2698 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2700 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2700 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2702 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2702
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2704 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2704 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2706 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2706 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2708 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2708 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2710 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2710 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2712 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2712 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2714 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2714 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2716 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2716 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2718 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2718 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2720 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2720 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2722 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2722 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2724 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2724
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2726 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2726 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2730 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2732 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2736 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2738 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2742 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2744 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2746 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2748 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2748 ~v0 = du_isMagmaIsomorphism_2748
du_isMagmaIsomorphism_2748 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2748 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2750 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2750 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2750 v2
du_isMagmaMonomorphism_2750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2754 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2756 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
               (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2758 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2758 ~v0 ~v1 v2 = du_isRelIsomorphism_2758 v2
du_isRelIsomorphism_2758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2760 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2760 ~v0 ~v1 v2 = du_isRelMonomorphism_2760 v2
du_isRelMonomorphism_2760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2760 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
            (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2764 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2764 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2766 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2770 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2770 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2772 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2772 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2774 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2774 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2776 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2776 ~v0 = du_isMagmaMonomorphism_2776
du_isMagmaMonomorphism_2776 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2776 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2778 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2778 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2780 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2780 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2782 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2782 ~v0 ~v1 v2 = du_isRelMonomorphism_2782 v2
du_isRelMonomorphism_2782 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2782 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2784 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2784 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2786 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2786 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.body
d_body_2790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066
d_body_2790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_3178
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Bool
d_isValid_2792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_3182
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_3184
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.wits
d_wits_2796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_3168 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148
d_wits_2796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_3180
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_3142
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe Integer
d_curTreasury_2802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_3136
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_mint_2804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_3116
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_3110
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [Integer]
d_reqSigHash_2808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_3144
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe Integer
d_scriptIntHash_2810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_3146
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_3132
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_3134
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_3120
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txdonation_2818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_3128
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txfee_2820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_3114
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txid_2822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_3140
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_3108
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_3112
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_2828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_3126
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Integer
d_txsize_2830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_3138
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_3130
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_3118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_3124
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_3066 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_3122
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2842 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2842 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_3160
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2844 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_340]
d_scriptsP1_2844
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptsP1_3166
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2846 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2846 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_3162
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2848 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_3164
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2850 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_3148 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2850 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_3158
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2872 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2878 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_indexOf_1856
d_indexOfImp_2878 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1898
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2880 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2880 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_runPLCScript_1900
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2882 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2882 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_scriptSize_1902
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2884 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  Integer -> Integer
d_serSize_2884 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1896
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2886 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2886 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_txscriptfee_1894
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2902 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1882
d_HSAbstractFunctions_2902
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_AbstractFunctions'46'constructor_3251
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_indexOf'46'constructor_2959
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
