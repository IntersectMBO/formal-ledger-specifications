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
import qualified MAlonzo.Code.Ledger.Abstract
import qualified MAlonzo.Code.Ledger.Address
import qualified MAlonzo.Code.Ledger.Certs
import qualified MAlonzo.Code.Ledger.Conway.Conformance.Script
import qualified MAlonzo.Code.Ledger.Crypto
import qualified MAlonzo.Code.Ledger.GovernanceActions
import qualified MAlonzo.Code.Ledger.Interface.HasCoin
import qualified MAlonzo.Code.Ledger.PParams
import qualified MAlonzo.Code.Ledger.Script
import qualified MAlonzo.Code.Ledger.TokenAlgebra
import qualified MAlonzo.Code.Ledger.Transaction
import qualified MAlonzo.Code.Ledger.Types.Epoch
import qualified MAlonzo.Code.Ledger.Types.GovStructure
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
-- Ledger.Conway.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_248 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_248 = coe d_coinTokenAlgebra_226
-- Ledger.Conway.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_250 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_HSGlobalConstants_250
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
d_HSEpochStructure_252 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_HSEpochStructure_252
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
      (coe d_HSGlobalConstants_250)
-- Ledger.Conway.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_254 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_HSCrypto_254
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2419
      d_HSPKKScheme_260
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
d_HSPKKScheme_260 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_260
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
d_PlutusStructure_286 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_300 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__332 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__332 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_334 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_334 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_340 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_344 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_346 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_348 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_350 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_352 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_354 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_360 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_362 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_364 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_366 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_368 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_370 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_372 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_374 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_376 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_382 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_384 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_386 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_394 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_396 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_398 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_438 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_478 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_482 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_484 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_522 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_522
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_350
      (coe d_HSCrypto_254) (coe d_HSEpochStructure_252)
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_524 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_524
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_348
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock
d_HashedTimelock_526 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure-HTL
d_P1ScriptStructure'45'HTL_528 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_P1ScriptStructure'45'HTL_528
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_352
      (coe d_HSCrypto_254) (coe d_HSEpochStructure_252)
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock.storedHash
d_storedHash_532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  Integer
d_storedHash_532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_346
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.HashedTimelock.timelock
d_timelock_534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264
d_timelock_534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_344
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_536 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_HSScriptStructure_536
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72139
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'HTL_352
         (coe d_HSCrypto_254) (coe d_HSEpochStructure_252))
      (\ v0 v1 v2 v3 v4 -> coe du_hashRespectsUnion_548 v3 v4)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_348)
      (coe d_HSP2ScriptStructure_558)
-- Ledger.Conway.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_548 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_548 ~v0 ~v1 ~v2 v3 v4
  = du_hashRespectsUnion_548 v3 v4
du_hashRespectsUnion_548 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_548 v0 v1
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
d_HSP2ScriptStructure_558 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_HSP2ScriptStructure_558
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
d_DecEq'45'PParams_574 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_574
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
      (let v0 = d_HSGlobalConstants_250 in
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
      (coe d_HSScriptStructure_536)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams
d_GovParams_580 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams
d_PParams_588 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_598 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_598
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
      (let v0 = d_HSGlobalConstants_250 in
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
      (coe d_HSScriptStructure_536)
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_614 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_614 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_632 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_644 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_646 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_646 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_668 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_668 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a
d_a_670 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_670 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a0
d_a0_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_672 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.b
d_b_674 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_674 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_680 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_682 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_694 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_702 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_704 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_706 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_708 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_712 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_716 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_718 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_720 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_720 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.prices
d_prices_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_726 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.pv
d_pv_728 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_728 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_730 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_730 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_732 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_732 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_736 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_738 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_740 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_744 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_750
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
      (let v0 = d_HSGlobalConstants_250 in
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
      (coe d_HSScriptStructure_536)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_752 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_754 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_754
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_774 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_774 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_776 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_778 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_780 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_788 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_792 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_800 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_802 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_804 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_806 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_808 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_808 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_810 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_812 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_812 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_814 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_814 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_816 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_820 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_822 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_822 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_824 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_826 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_826 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_828 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_830 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_832 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_834 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_834 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_836 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_836 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_838 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_838 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_846 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_HsGovParams_846
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1472151
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1471359
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016)
         (\ v0 -> d_ppWF_856 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
            (let v0 = d_HSGlobalConstants_250 in
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
            (coe d_HSScriptStructure_536))
         (coe
            MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
            (let v0 = d_HSGlobalConstants_250 in
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
            (coe d_HSScriptStructure_536))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
            (let v0 = d_HSGlobalConstants_250 in
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
            (coe d_HSScriptStructure_536))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
         (let v0 = d_HSGlobalConstants_250 in
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
         (coe d_HSScriptStructure_536))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppWF
d_ppWF_856 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_856 v0
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
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe
                                         MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604
                                         (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_638
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
d_trustMe_872
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core._._.trustMe
d_trustMe_882
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_888 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_888
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_14107
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
      d_HSGlobalConstants_250 d_HSCrypto_254 d_HSEpochStructure_252
      d_HSScriptStructure_536 d_HsGovParams_846 d_tokenAlgebra_248
      (\ v0 -> v0)
-- Ledger.Conway.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__892 :: Integer -> Integer -> Integer
d__'43''7497'__892
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__76
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._._+ᵉ'_
d__'43''7497'''__894 :: Integer -> Integer -> Integer
d__'43''7497'''__894
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'''__78
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._._∙_
d__'8729'__896 :: Integer -> Integer -> Integer
d__'8729'__896
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._._≈_
d__'8776'__898 :: Integer -> Integer -> ()
d__'8776'__898 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__900 :: Integer -> Integer -> ()
d__'8804''7511'__900 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__902 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__902 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_904 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_904 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_906 :: ()
d_THash_906 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt
d_Acnt_908 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Addr
d_Addr_910 :: ()
d_Addr_910 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor
d_Anchor_912 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.AssetName
d_AssetName_914 :: ()
d_AssetName_914 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_916 :: ()
d_AuxiliaryData_916 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_918 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_920 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CostModel
d_CostModel_926 :: ()
d_CostModel_926 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Credential
d_Credential_928 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.T
d_T_932 :: ()
d_T_932 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_934 :: ()
d_THash_934 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_936 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_936
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Datum
d_Datum_938 :: ()
d_Datum_938 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_940 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_264 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_940
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_322
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_942 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_942
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_944 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_944
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_946 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_946
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_948 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_948
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_950 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_950
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_952 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_952
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_954 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_954
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_956 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_956
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_958 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_958
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_960 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_960
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_962 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_962
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_964 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_964
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_496
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_966
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_58
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_968
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_970 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_970
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_972
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1206
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_974 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_974
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_976 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_976
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_978 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_978
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_980
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_982 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_982
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_502
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_984
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_500
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_986 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_986
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_498
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_988
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_276
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_990 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_990
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_992 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_992
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_994 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_994
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_996 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_996
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_66
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_998 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_998
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1000 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1000
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1002 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1002
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1004 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1004
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1006 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1006
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1008 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1008
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1010 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1010
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1012 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1012
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_278
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1014 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1014
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1208
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1016 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1016
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1018 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1018
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1020 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1020
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1022 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1022
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826
-- Ledger.Conway.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1024 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1024
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_64
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1026 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Epoch
d_Epoch_1030 :: ()
d_Epoch_1030 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1032 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1032
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1034 :: ()
d_ExUnits_1034 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovAction
d_GovAction_1036 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1038 :: ()
d_GovActionID_1038 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1040 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams
d_GovParams_1042 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1044 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovRole
d_GovRole_1046 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote
d_GovVote_1048 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1052 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1052
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2806
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.Hash-P1Script
d_Hash'45'P1Script_1054 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_1054
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1056 :: () -> ()
d_HashProtected_1056 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1058 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1058
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
         (coe
            MAlonzo.Code.Ledger.Script.d_p1s_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1060 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1060
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1062 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1062
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1068 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1070 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1072 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Ix
d_Ix_1074 :: ()
d_Ix_1074 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1076 :: ()
d_THash_1076 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1080 :: ()
d_KeyPair_1080 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1082 :: ()
d_LangDepView_1082 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Language
d_Language_1084 :: ()
d_Language_1084 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1086 :: ()
d_MemoryEstimate_1086 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1088 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_1088 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Network
d_Network_1090 :: ()
d_Network_1090 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1094 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1094
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_288
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1100 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1100
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_282
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1102 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1102
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.P1Script
d_P1Script_1104 :: ()
d_P1Script_1104 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1106 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1108 :: ()
d_PlutusScript_1108 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.THash
d_THash_1110 :: ()
d_THash_1110 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1112 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams
d_PParams_1114 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1116 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1118 :: ()
d_UpdateT_1118 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1120 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1122 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1122
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1124 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1124
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1126 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1126
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1128 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Prices
d_Prices_1130 :: ()
d_Prices_1130 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1132 :: ()
d_ProposedPPUpdates_1132 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1134 :: ()
d_ProtVer_1134 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Quorum
d_Quorum_1136 :: Integer
d_Quorum_1136
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_286
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1138 :: ()
d_RdmrPtr_1138 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1140 :: ()
d_Redeemer_1140 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1154 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.SKey
d_SKey_1158 :: ()
d_SKey_1158 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Script
d_Script_1162 :: ()
d_Script_1162 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1164 :: ()
d_ScriptAddr_1164 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1166 :: ()
d_ScriptBaseAddr_1166 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1168 :: ()
d_ScriptBootstrapAddr_1168 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1170 :: ()
d_ScriptHash_1170 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1174 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Ser
d_Ser_1178 :: ()
d_Ser_1178 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1180 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1180
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1182 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1182 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1184 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1184 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1186 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1186
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_504
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1188 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1188
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_60
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1190 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1190
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1192 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1192
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_278
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1194 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1194
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_508
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1196 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1196
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_506
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1198 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1198
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1200 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1200
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1202 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1202
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1204 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1204
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1206 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1206
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1208 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1208
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1210 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1210
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1212 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1212
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1214 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1214
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Foreign.HSLedger.Core._.Sig
d_Sig_1216 :: ()
d_Sig_1216 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Slot
d_Slot_1218 :: ()
d_Slot_1218 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1220 :: Integer
d_SlotsPerEpoch'7580'_1220
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_280
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1222 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1222
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_54
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1224 :: Integer
d_StabilityWindow_1224
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_72
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1226 :: Integer
d_StabilityWindow'7580'_1226
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_284
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1228 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1228
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1210 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1230 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1230
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1232 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1232
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_190
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_452
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1234 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1234
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1236 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1236
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_190
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_452
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.Timelock
d_Timelock_1240 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1242 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx
d_Tx_1248 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody
d_TxBody_1250 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TxId
d_TxId_1252 :: ()
d_TxId_1252 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxIn
d_TxIn_1254 :: ()
d_TxIn_1254 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxOut
d_TxOut_1256 :: ()
d_TxOut_1256 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1258 :: ()
d_TxOut'688'_1258 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1260 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.UTxO
d_UTxO_1262 :: ()
d_UTxO_1262 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Update
d_Update_1264 :: ()
d_Update_1264 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1268 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.VKey
d_VKey_1270 :: ()
d_VKey_1270 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1272 :: ()
d_VKeyAddr_1272 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1274 :: ()
d_VKeyBaseAddr_1274 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1276 :: ()
d_VKeyBootstrapAddr_1276 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Value
d_Value_1280 :: ()
d_Value_1280 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1282 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1282
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Voter
d_Voter_1284 :: ()
d_Voter_1284 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1286 :: ()
d_Wdrl_1286 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1290 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_actionWellFormed_1290 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1292 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1292
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_742
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1294 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1294
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1296 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1296
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addSlot
d_addSlot_1298 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1298
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.addValue
d_addValue_1300 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1300
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1302 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1302
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.coin
d_coin_1308 :: Integer -> Integer
d_coin_1308
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1310 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1310 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1312
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.crypto
d_crypto_1316 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1316 = coe d_HSCrypto_254
-- Ledger.Conway.Foreign.HSLedger.Core._.epoch
d_epoch_1318 :: Integer -> Integer
d_epoch_1318
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_68
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1320 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_epochStructure_1320 = coe d_HSEpochStructure_252
-- Ledger.Conway.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1334 a0 a1 a2 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1336 :: Integer -> Integer
d_firstSlot_1336
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_70
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1338 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1338
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Conway.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1340 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1340
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Conway.Foreign.HSLedger.Core._.getValue
d_getValue_1342 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1342
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2688
-- Ledger.Conway.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1344 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1344
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2704
-- Ledger.Conway.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1346 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_256
d_globalConstants_1346 = coe d_HSGlobalConstants_250
-- Ledger.Conway.Foreign.HSLedger.Core._.govParams
d_govParams_1348 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1312
d_govParams_1348 = coe d_HsGovParams_846
-- Ledger.Conway.Foreign.HSLedger.Core._.govStructure
d_govStructure_1350 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1350
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1352 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1352
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.inject
d_inject_1354 :: Integer -> Integer
d_inject_1354
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1356 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1358 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1358
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1360 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1360 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1362 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1362
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1364 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1364
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Conway.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1366 :: Integer -> Integer -> ()
d_isKeyPair_1366 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1368 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1368
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2804
-- Ledger.Conway.Foreign.HSLedger.Core._.isScript
d_isScript_1370 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1372 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1372 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1374 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1374
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Conway.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1376 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1376 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isSigned
d_isSigned_1378 :: Integer -> Integer -> Integer -> ()
d_isSigned_1378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1380 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_isSigned'45'correct_1380
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_isSigned'45'correct_128
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.isVKey
d_isVKey_1382 a0 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1384 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1384 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.khs
d_khs_1386 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1386
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.language
d_language_1388 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1388
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1390 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1390
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2790
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.maximum
d_maximum_1392 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1392
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_682
-- Ledger.Conway.Foreign.HSLedger.Core._.monoid
d_monoid_1394 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1394
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.netId
d_netId_1396 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1396 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Conway.Foreign.HSLedger.Core._.p1s
d_p1s_1400 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_1400
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWF-elim
d_paramsWF'45'elim_1402 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1402 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_paramsWF'45'elim_462 v2
-- Ledger.Conway.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1404 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> ()
d_paramsWellFormed_1404 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.payCred
d_payCred_1406 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1406 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Conway.Foreign.HSLedger.Core._.pkk
d_pkk_1408 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1408
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.policies
d_policies_1410 :: Integer -> [Integer]
d_policies_1410
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.positivePParams
d_positivePParams_1412 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> [Integer]
d_positivePParams_1412
  = coe MAlonzo.Code.Ledger.PParams.du_positivePParams_378
-- Ledger.Conway.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1414 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1414
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1416 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1416
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1418 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1418
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1420 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_ppdWellFormed_1420 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1422 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1422
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_86
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.property
d_property_1424 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1424 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ps
d_ps_1426 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_1426
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_452
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1428 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1430 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1430
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1232
-- Ledger.Conway.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1432 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1432
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.refScriptCostStride>0
d_refScriptCostStride'62'0_1434 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1434 v0 v1
  = coe
      MAlonzo.Code.Ledger.PParams.du_refScriptCostStride'62'0_484 v0
-- Ledger.Conway.Foreign.HSLedger.Core._.refScripts
d_refScripts_1436 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1436
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2728
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1438 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1438
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2714
-- Ledger.Conway.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400
d_scriptStructure_1440 = coe d_HSScriptStructure_536
-- Ledger.Conway.Foreign.HSLedger.Core._.sign
d_sign_1442 :: Integer -> Integer -> Integer
d_sign_1442
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1248 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Conway.Foreign.HSLedger.Core._.size
d_size_1444 :: Integer -> Integer
d_size_1444
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1446 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1446
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1448 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1448 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Conway.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1450 :: Integer -> Integer
d_suc'7497'_1450
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_74
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1452 :: [Integer] -> Integer
d_sum'7515'_1452
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.toData
d_toData_1454 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1454
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_262
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_452
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1456 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1456 = coe d_tokenAlgebra_248
-- Ledger.Conway.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1458 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1458
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2694
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1460 :: Integer -> Integer
d_txidBytes_1460 v0 = coe v0
-- Ledger.Conway.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1462 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1462
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2722
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1464 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1464
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2708
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.txscripts
d_txscripts_1466 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1466
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2780
      (coe d_HSTransactionStructure_888)
-- Ledger.Conway.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1468 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1468
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1344
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2234 (coe v0))))
-- Ledger.Conway.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1470 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338 ->
  ()
d_validP1Script_1470 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1472 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1472 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ε
d_ε_1474 :: Integer
d_ε_1474
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2264 (coe v0)))))
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1476 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1476 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1478 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_20
d_ℕEpochStructure_1478
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_302
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1224 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1480 :: Integer -> Integer
d_ℕtoEpoch_1480
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_240
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1486 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_reserves_1486 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_154 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1488 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_146 -> Integer
d_treasury_1488 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_152 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1492 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1492 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_714 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Anchor.url
d_url_1494 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1494 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_712 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1498 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1498 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1500 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1500 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1502 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1502 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1506 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1506 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1508 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1508 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1510 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1510 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1520 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1520 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1522 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1522 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1524 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1524 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1526 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1526 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1528 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1528 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_210 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1530 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1530 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1532 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1532 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1534 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1534 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1536 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1536 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1538 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1538 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.action
d_action_1558 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_1558 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_820 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1560 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  Integer
d_expiresIn_1560 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_818 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1562 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  AgdaAny
d_prevAction_1562 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_822 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1564 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1564 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_816 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1566 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_802 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1566 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_814 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1570 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1570 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1572 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1572 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1574 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1574 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1576 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_THash_1576 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1578 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> ()
d_UpdateT_1578 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1580 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1580 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1582 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1582 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1584 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1584 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1586 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1586 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1588 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280
d_ppUpd_1588 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1590 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1590 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1592 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 -> AgdaAny -> ()
d_ppdWellFormed_1592 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1594 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1312 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1594 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1298
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1344 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.action
d_action_1598 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716
d_action_1598 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_790 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1600 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_1600 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_800 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1602 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> Integer
d_deposit_1602 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_796 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1604 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  Maybe Integer
d_policy_1604 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_794 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1606 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 -> AgdaAny
d_prevAction_1606 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_792 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1608 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1608 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_798 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1620 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_706
d_anchor_1620 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_774 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1622 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1622 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_768 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1624 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_750
d_vote_1624 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_772 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1626 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1626 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_770 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Anchor
d_Anchor_1630 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1638 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1638
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_824
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1640 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1640
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_828
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1642 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1642
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_826
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovAction
d_GovAction_1644 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovActionID
d_GovActionID_1646 :: ()
d_GovActionID_1646 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovActionState
d_GovActionState_1648 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovProposal
d_GovProposal_1650 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovRole
d_GovRole_1652 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.GovVote
d_GovVote_1654 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.HashProtected
d_HashProtected_1656 :: () -> ()
d_HashProtected_1656 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.NeedsHash
d_NeedsHash_1660 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_NeedsHash_1660 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.VDeleg
d_VDeleg_1674 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Vote
d_Vote_1676 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.Voter
d_Voter_1678 :: ()
d_Voter_1678 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed
d_actionWellFormed_1684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 -> ()
d_actionWellFormed_1684 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_716 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1686
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_742
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2378 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.getDRepVote
d_getDRepVote_1690 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1690
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_830
-- Ledger.Conway.Foreign.HSLedger.Core._.GovernanceActions.maximum
d_maximum_1692 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1692
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_682
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1718 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1718 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1720 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1720 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1722 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1722 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1724 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1724 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1726 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1730 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1732 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1736 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1736 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1738 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1738 ~v0 v1 = du_isMagmaMonomorphism_1738 v1
du_isMagmaMonomorphism_1738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1738 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1740 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1742 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1744 v0
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
d_isRelIsomorphism_1746 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1746 ~v0 v1 = du_isRelIsomorphism_1746 v1
du_isRelIsomorphism_1746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1746 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1748 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1748 ~v0 v1 = du_isRelMonomorphism_1748 v1
du_isRelMonomorphism_1748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1748 v0
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
d_surjective_1750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1750 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1752 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1754 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1758 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1760 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1764 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1764 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1766 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1768 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1768 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1770 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1770 ~v0 v1 = du_isRelMonomorphism_1770 v1
du_isRelMonomorphism_1770 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1770 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1772 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1772 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1774 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1774 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1778 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1778 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1780 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1780 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1782 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1782 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1784 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 -> ()
d_P1Script_1784 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1786 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1786 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1802 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_Emax_1802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_352 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a
d_a_1804 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_a_1804 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_328 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.a0
d_a0_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1806 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_356 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.b
d_b_1808 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_b_1808 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_330 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1810 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMaxTermLength_1810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_368 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_ccMinSize_1812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_366 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1814 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_coinsPerUTxOByte_1814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_336 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_collateralPercentage_1816 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_358 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_360 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepActivity_1820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_376 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1822 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_drepDeposit_1822 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_374 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1824 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_364 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionDeposit_1826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_372 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1828 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_govActionLifetime_1828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_370 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_keyDeposit_1830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_332 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1832 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_320 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxBlockSize_1834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_312 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1836 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxCollateralInputs_1836 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_324 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxHeaderSize_1838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_316 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerBlock_1840 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_344 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxRefScriptSizePerTx_1842 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_342 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_318 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxTxSize_1846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_314 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_maxValSize_1848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_322 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1850 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_340
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_minUTxOValue_1852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_350 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1854 :: MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_nopt_1854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_354 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_poolDeposit_1856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_334 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_362 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.prices
d_prices_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1860 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_338 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.pv
d_pv_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1862 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_326 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_1864 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1864 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_348 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_1866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 -> Integer
d_refScriptCostStride_1866 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_346 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1870 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> ()
d_UpdateT_1870 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyUpdate_1872 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1296 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1874 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1874 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1304 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 -> AgdaAny -> ()
d_ppdWellFormed_1876 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1280 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_updateGroups_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1298 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__1882 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1882 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__1032 v1 v2
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1884 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1884
  = let v0 = d_HSTransactionStructure_888 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1226
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1532 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1816 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1886 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1888 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_244 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_applyPParamsUpdate_1888
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_1080
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1890 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_168]
d_modifiedUpdateGroups_1890
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_1016
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesEconomicGroup_1892
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_800
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesGovernanceGroup_1894
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_944
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesNetworkGroup_1896
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_728
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Bool
d_modifiesTechnicalGroup_1898
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_872
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> ()
d_paramsUpdateWellFormed_1900 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1902
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_724
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_1904 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1904 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_1046 v1
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_Emax_1908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_a_1910 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_596 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1912 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_b_1914 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_598 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMaxTermLength_1916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_ccMinSize_1918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_coinsPerUTxOByte_1920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_604 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_collateralPercentage_1922 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepActivity_1926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_drepDeposit_1928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_180
d_drepThresholds_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionDeposit_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_govActionLifetime_1934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_keyDeposit_1936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_600 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_592 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxBlockSize_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_580 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxCollateralInputs_1942 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_588 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxHeaderSize_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_584 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerBlock_1946 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerBlock_612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxRefScriptSizePerTx_1948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxRefScriptSizePerTx_610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_590 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxTxSize_1952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_582 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_maxValSize_1954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_586 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1956 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_608
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_minUTxOValue_1958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_nopt_1960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_poolDeposit_1962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_602 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222
d_poolThresholds_1964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_1966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_606 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_1968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1968 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_594 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_1970 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostMultiplier_616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_1972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_512 -> Maybe Integer
d_refScriptCostStride_1972 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_refScriptCostStride_614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1976 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1976 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_1978 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_CostModel_1978 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_1980 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_T_1980 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_1982 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_THash_1982 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_1984 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_1984 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_1986 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Datum_1986 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1988 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1988 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1990 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1990 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1992 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1992 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1994 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1994 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1996 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1996 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1998 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1998 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2000 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2000 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2002 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2002 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2004 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2004 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2006 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_ExUnits_2006 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2008 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2008 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2010 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_LangDepView_2010 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2012 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Language_2012 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2014 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_PlutusScript_2014 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2016 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV1_2016 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2018 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV2_2018 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2020 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> AgdaAny
d_PlutusV3_2020 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_208 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2022 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Prices_2022 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2024 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 -> ()
d_Redeemer_2024 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2026 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2026 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2028 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2028 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2030 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2030 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2032 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2032 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2034 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2034 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2036 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2036 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_190 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2038 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> AgdaAny
d_language_2038 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_258 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2040 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  () -> AgdaAny -> AgdaAny
d_toData_2040 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_262 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2042 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2042 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2046 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_234 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2048 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_236 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2050 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_238 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2052 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_240 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_222 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2054 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_242 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2058 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2058 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2060 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2060 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2064 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2064 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2066 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_CostModel_2066 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2068 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_T_2068 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2070 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_THash_2070 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2072 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2072 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2074 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Datum_2074 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2076 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2076 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_108
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2078 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2078 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_256
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2080 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2080 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2082 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2084 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2084 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2086 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2086 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_218
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2088 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2088 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2090 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2090 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_112
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2092 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2092 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2094 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2094 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2096 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2096 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2098 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_ExUnits_2098 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hash-P1Script
d_Hash'45'P1Script_2100 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'P1Script_2100 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'P1Script_450 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2102 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2102 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_110
      (coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2104 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2104 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2106 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2106
  = coe MAlonzo.Code.Ledger.Script.du_Hashable'45'Script_526
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2108 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_LangDepView_2108 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2110 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Language_2110 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2112 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_P1Script_2112 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2114 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_PlutusScript_2114 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2116 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV1_2116 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2118 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV2_2118 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2120 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> AgdaAny
d_PlutusV3_2120 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2122 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Prices_2122 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2124 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Redeemer_2124 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2126 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 -> ()
d_Script_2126 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2128 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2128 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2130 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2130 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_228
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2132 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2132 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2134 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2134 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2136 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2136 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_190
              (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2138 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2138 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_190
         (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2140 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2140 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_448 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2142 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> AgdaAny
d_language_2142 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2144 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_92
d_p1s_2144 v0 = coe MAlonzo.Code.Ledger.Script.d_p1s_428 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2146 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_114
d_ps_2146 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2148 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  () -> AgdaAny -> AgdaAny
d_toData_2148 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_262
      (coe MAlonzo.Code.Ledger.Script.d_ps_452 (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2150 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2150 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2152 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_400 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2152 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2170 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2170 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2172 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2172 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2174 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2174 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2176 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2176 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2178 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2178 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_220 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2180 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_218 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2182 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2184 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2186 a0 a1 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2188 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2190 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2192 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2192
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_222
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2194 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2194 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_200 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2196 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2196 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2198 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2198 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_216
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2200 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2200 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_202 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2202 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2202 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2204 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2204 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_204 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2206 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2206 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2208 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2208 v0
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
d_size_2210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2210 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_206 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2212 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2212 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_212 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2214
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_240
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2216 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2216 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'CommutativeMonoid_118
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2220 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2222 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2224 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2224 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2226 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2228 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2232 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2236 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2238 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2238 ~v0 = du_isMagmaIsomorphism_2238
du_isMagmaIsomorphism_2238 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2238 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2240 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2240 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2240 v2
du_isMagmaMonomorphism_2240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2246 v0
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
d_isRelIsomorphism_2248 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2248 ~v0 ~v1 v2 = du_isRelIsomorphism_2248 v2
du_isRelIsomorphism_2248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2248 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2250 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2250 ~v0 ~v1 v2 = du_isRelMonomorphism_2250 v2
du_isRelMonomorphism_2250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2250 v0
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
d_surjective_2252 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2252 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2254 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2256 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2260 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2260 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2266 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2266 ~v0 = du_isMagmaMonomorphism_2266
du_isMagmaMonomorphism_2266 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2266 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2268 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2270 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2272 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2272 ~v0 ~v1 v2 = du_isRelMonomorphism_2272 v2
du_isRelMonomorphism_2272 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2272 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2274 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2274 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2276 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2276 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.body
d_body_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568
d_body_2280 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2680 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2282 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2670 -> Bool
d_isValid_2282 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2684 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2284 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2686 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.Tx.wits
d_wits_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2670 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650
d_wits_2286 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2682 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2290 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2644 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_curTreasury_2292 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2638 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_mint_2294 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2618 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2296 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2612 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> [Integer]
d_reqSigHash_2298 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2646 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Maybe Integer
d_scriptIntHash_2300 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2648 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2302 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2634 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2304 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2636 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856]
d_txcerts_2306 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2622 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txdonation_2308 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2630 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txfee_2310 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2616 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txid_2312 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2642 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2314 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2610 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2316 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2614 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_776]
d_txprop_2318 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2628 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 -> Integer
d_txsize_2320 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2640 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2322 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2632 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2324 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2324 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2620 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_txvote_2326 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2626 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2568 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2328 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2624 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2332 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2662 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_338]
d_scriptsP1_2334
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2668
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2336 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2336 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2664 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2338 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2338 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2666 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2340 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2650 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2340 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2660 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__2376 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__2378 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_856] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_948 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__2378 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__2380 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__2382 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__2384 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__2386 a0 a1 a2 a3 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_2396 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState
d_CertState_2398 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DCert
d_DCert_2402 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DState
d_DState_2410 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_2412 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_2412
  = coe
      MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_848
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_888))
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_2414 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_2416 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.Deposits
d_Deposits_2418 :: ()
d_Deposits_2418 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.GState
d_GState_2426 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_2430 :: ()
d_GovCertEnv_2430 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.HasCoin-CertState
d_HasCoin'45'CertState_2432 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'CertState_2432
  = coe
      MAlonzo.Code.Ledger.Certs.d_HasCoin'45'CertState_986
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_888))
-- Ledger.Conway.Foreign.HSLedger.Core._.PState
d_PState_2438 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_2442 :: ()
d_PoolEnv_2442 = erased
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_2444 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.cwitness
d_cwitness_2448 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_856 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_2448 v0
  = coe MAlonzo.Code.Ledger.Certs.d_cwitness_872 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.rewardsBalance
d_rewardsBalance_2462 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 -> Integer
d_rewardsBalance_2462
  = coe
      MAlonzo.Code.Ledger.Certs.d_rewardsBalance_980
      (coe
         MAlonzo.Code.Ledger.Transaction.d_govStructure_2378
         (coe d_HSTransactionStructure_888))
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_2510 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_888 -> Integer
d_epoch_2510 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_898 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_2512 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pp_2512 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_900 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_2514 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_758]
d_votes_2514 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_902 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_2516 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_888 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_2516 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_904 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.dState
d_dState_2520 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_DState_908
d_dState_2520 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_956 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.gState
d_gState_2522 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_GState_936
d_gState_2522 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_960 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.CertState.pState
d_pState_2524 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_948 ->
  MAlonzo.Code.Ledger.Certs.T_PState_924
d_pState_2524 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_958 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.rewards
d_rewards_2544 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_2544 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_920 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_2546 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_2546 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_918 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_2548 ::
  MAlonzo.Code.Ledger.Certs.T_DState_908 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_2548 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_916 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_2552 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2552 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_972 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_2554 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_964 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_244
d_pparams_2554 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_970 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_2568 ::
  MAlonzo.Code.Ledger.Certs.T_GState_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_2568 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_944 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.GState.dreps
d_dreps_2570 ::
  MAlonzo.Code.Ledger.Certs.T_GState_936 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_2570 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_942 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PState.pools
d_pools_2574 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2574 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_930 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2576 ::
  MAlonzo.Code.Ledger.Certs.T_PState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2576 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_932 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2580 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_850 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2580 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_854 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2584 = ()
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2590 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1698
d_indexOfImp_2590 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1740 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2592 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2592 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1742 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2594 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2594 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1744 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2596 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  Integer -> Integer
d_serSize_2596 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1738 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2598 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2598 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1736 (coe v0)
-- Ledger.Conway.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2614 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1724
d_HSAbstractFunctions_2614
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2983
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2691
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
