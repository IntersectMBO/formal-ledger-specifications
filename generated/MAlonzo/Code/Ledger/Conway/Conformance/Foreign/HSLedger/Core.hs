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
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory

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
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_58 ~v0 v1 = du_sign_58 v1
du_sign_58 ::
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_58 v0
  = coe MAlonzo.Code.Class.HasAdd.Core.d__'43'__14 (coe v0)
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
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_74
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
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_138 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [Integer]
d_policies_154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_156 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_coinTokenAlgebra_228 = coe d_'46'extendedlambda1_234
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_'46'extendedlambda1_234
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.C_TokenAlgebra'46'constructor_1987
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
                     MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                     (coe d_'46'extendedlambda1_234)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_242 :: ()
d_TxId_242 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_244 :: ()
d_Ix_244 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_246 :: ()
d_AuxiliaryData_246 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_248 :: ()
d_DocHash_248 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_250 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_250 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_tokenAlgebra_252 = coe d_coinTokenAlgebra_228
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
d_HSGlobalConstants_254
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
d_HSEpochStructure_256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_HSEpochStructure_256
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕEpochStructure_306
      (coe d_HSGlobalConstants_254)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
d_HSCrypto_258
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_Crypto'46'constructor_2419
      d_HSPKKScheme_264
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
d_HSPKKScheme_264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_PKKScheme_60
d_HSPKKScheme_264
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
d_PlutusStructure_298 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_312 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__350 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_CostModel_352 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_364 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_366 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_ExUnits_380 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_382 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_384 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_LangDepView_384 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_386 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Language_386 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_PlutusScript_388 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_390 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_392 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_392 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_394 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_394 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_396 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Prices_396 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_400 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_404 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_412 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_414 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_414 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_416 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_416 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_456 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_496 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_502 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
d_HSScriptStructure_538
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.C_ScriptStructure'46'constructor_76595
      (\ v0 v1 v2 v3 v4 -> coe du_hashRespectsUnion_550 v3 v4)
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_414)
      (coe d_HSP2ScriptStructure_560)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_550 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_550 ~v0 ~v1 ~v2 v3 v4
  = du_hashRespectsUnion_550 v3 v4
du_hashRespectsUnion_550 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_hashRespectsUnion_550 v0 v1
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
d_HSP2ScriptStructure_560 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_HSP2ScriptStructure_560
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
d_DecEq'45'PParams_576 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_576
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
      (let v0 = d_HSGlobalConstants_254 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_538)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams
d_GovParams_582 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams
d_PParams_590 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_600 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_600
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
      (let v0 = d_HSGlobalConstants_254 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_538)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_616 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a
d_a_672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a0
d_a0_674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.b
d_b_676 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_676 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_678 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_678 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_680 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_680 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_682 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_682 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_684 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_684 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_686 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_686 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_688 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_688 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_690 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_690 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_692 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_692 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_694 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_694 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_696 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_696 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_698 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_698 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_708 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_708 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_712 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_714 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_714 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_716 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_716 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_718 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_718 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_720 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_720 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_722 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_722 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_724 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_724 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.prices
d_prices_728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.pv
d_pv_730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_738 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_746 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_746 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_752
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
      (let v0 = d_HSGlobalConstants_254 in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
      (coe d_HSScriptStructure_538)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_754 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_756 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_756
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_782 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_782 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_790 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_792 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_806 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_810 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_810 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_824 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_824 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_826 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_826 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_828 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_828 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_830 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_830 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_832 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_832 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_848 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_HsGovParams_848
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_GovParams'46'constructor_1470983
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.C_PParamsDiff'46'constructor_1470197
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084)
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020)
         (\ v0 -> d_ppWF_858 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_254 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_538))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
            (let v0 = d_HSGlobalConstants_254 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_538))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
            (let v0 = d_HSGlobalConstants_254 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
            (coe d_HSScriptStructure_538))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (let v0 = d_HSGlobalConstants_254 in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.C_EpochStructure'46'constructor_1287
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3768
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Class.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
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
         (coe d_HSScriptStructure_538))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppWF
d_ppWF_858 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_858 v0
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
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe
d_trustMe_874
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe
d_trustMe_884
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Conway.Conformance.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_890 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TransactionStructure_24
d_HSTransactionStructure_890
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.C_TransactionStructure'46'constructor_14131
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
      d_HSGlobalConstants_254 d_HSCrypto_258 d_HSEpochStructure_256
      d_HSScriptStructure_538 d_HsGovParams_848 d_tokenAlgebra_252
      (\ v0 -> v0) d_networkId_250
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__894 :: Integer -> Integer -> Integer
d__'43''7497'__894
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'__80
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._+ᵉ'_
d__'43''7497'''__896 :: Integer -> Integer -> Integer
d__'43''7497'''__896
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d__'43''7497'''__82
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._∙_
d__'8729'__898 :: Integer -> Integer -> Integer
d__'8729'__898
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≈_
d__'8776'__900 :: Integer -> Integer -> ()
d__'8776'__900 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__902 :: Integer -> Integer -> ()
d__'8804''7511'__902 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__904 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__904 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__906 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__908 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872] ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__908 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__910 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__912 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__914 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__916 a0 a1 a2 a3 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.+ᵉ≡+ᵉ'
d_'43''7497''8801''43''7497'''_918 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''7497''8801''43''7497'''_918 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_920 :: ()
d_THash_920 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt
d_Acnt_922 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Addr
d_Addr_924 :: ()
d_Addr_924 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor
d_Anchor_926 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AssetName
d_AssetName_928 :: ()
d_AssetName_928 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_930 :: ()
d_AuxiliaryData_930 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_932 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_934 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_946 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState
d_CertState_948 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CostModel
d_CostModel_952 :: ()
d_CostModel_952 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Credential
d_Credential_954 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DCert
d_DCert_958 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState
d_DState_968 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T
d_T_970 :: ()
d_T_970 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_972 :: ()
d_THash_972 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_974 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_974
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Datum
d_Datum_976 :: ()
d_Datum_976 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_978 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_978
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'evalTimelock_326
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_980 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_980
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isScript_162
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_982 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_982
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Dec'45'isSigned_120
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_984 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_984
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Dec'45'isVKey_148
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_986 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_986
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_988 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_988
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_990 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_990
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_224
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_992 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_992
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_994 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_994
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BaseAddr_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_996 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_996
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'BootstrapAddr_196
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_998 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_998
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_1000 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_1000
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'Credential_146
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_1002 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_1002
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_DecEq'45'DepositPurpose_850
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_1004 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_1004
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'DrepThresholds_500
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_1006 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_1006
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Epoch_62
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_1008 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1008
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_1010 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1010
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-HashedTimelock
d_DecEq'45'HashedTimelock_1012 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'HashedTimelock_1012
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'HashedTimelock_416
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_1014 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_1014
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'Ix_1226
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_1016 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1016
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_1018 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1018
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_1020 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_1020
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_1022 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1022
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_1024 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_1024
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamGroup_506
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_1026 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_1026
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParams_504
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_1028 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_1028
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PoolThresholds_502
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_1030 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_1030
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Address.du_DecEq'45'RwdAddr_198
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Netw_280
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
               (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                  (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_1032 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_1032
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'ScriptHash_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_1034 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_1034
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Ser_136
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_1036 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_1036
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'Sig_134
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_1038 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_1038
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecEq'45'Slot_70
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1040 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1040
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1230
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1042 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1042
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1044 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1044
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1046 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1046
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1230
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1048 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1048
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1050 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1050
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1052 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1052
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1054 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1054
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Timelock_282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1056 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1056
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_DecEq'45'TxId_1228
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1058 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1058
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1060 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1060
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1062 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1062
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_222
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1064 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1064
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1066 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasDecPartialOrder_222
d_DecPo'45'Slot_1066
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_DecPo'45'Slot_68
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_1068 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_1070 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Deposits
d_Deposits_1072 :: ()
d_Deposits_1072 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1074 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Epoch
d_Epoch_1078 :: ()
d_Epoch_1078 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1080 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_1080
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1082 :: ()
d_ExUnits_1082 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState
d_GState_1090 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovAction
d_GovAction_1092 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1096 :: ()
d_GovActionID_1096 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1098 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1100 :: ()
d_GovCertEnv_1100 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams
d_GovParams_1102 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1104 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovRole
d_GovRole_1106 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote
d_GovVote_1108 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1112 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_HasCoin'45'TxOut_3036
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1114 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1114
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1116 :: () -> ()
d_HashProtected_1116 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-HashedTimelock
d_Hashable'45'HashedTimelock_1118 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'HashedTimelock_1118
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.du_Hashable'45'HashedTimelock_414
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1120 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1120
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                  (coe v2)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1122 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1122
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1124 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1124
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock
d_HashedTimelock_1126 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1132 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1134 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1136 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Ix
d_Ix_1138 :: ()
d_Ix_1138 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_1140 :: ()
d_THash_1140 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1144 :: ()
d_KeyPair_1144 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1146 :: ()
d_LangDepView_1146 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Language
d_Language_1148 :: ()
d_Language_1148 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1150 :: ()
d_MemoryEstimate_1150 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_1152 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Network
d_Network_1154 :: ()
d_Network_1154 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1158 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1158
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NetworkId_292
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1164 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1164
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_286
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1166 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1166
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Number'45'Epoch_256
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1Script
d_P1Script_1168 :: ()
d_P1Script_1168 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1170 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_P1ScriptStructure'45'TL_1172
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_P1ScriptStructure'45'TL_418
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1174 :: ()
d_PlutusScript_1174 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.THash
d_THash_1180 :: ()
d_THash_1180 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1182 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams
d_PParams_1184 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1186 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1188 :: ()
d_UpdateT_1188 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState
d_PState_1190 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1192 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1194 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1194
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1196 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1196
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1198 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1198
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1202 :: ()
d_PoolEnv_1202 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1204 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1206 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Prices
d_Prices_1208 :: ()
d_Prices_1208 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1210 :: ()
d_ProposedPPUpdates_1210 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1212 :: ()
d_ProtVer_1212 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Quorum
d_Quorum_1214 :: Integer
d_Quorum_1214
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Quorum_290
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1216 :: ()
d_RdmrPtr_1216 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1218 :: ()
d_Redeemer_1218 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1232 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.SKey
d_SKey_1236 :: ()
d_SKey_1236 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Script
d_Script_1240 :: ()
d_Script_1240 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1242 :: ()
d_ScriptAddr_1242 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1244 :: ()
d_ScriptBaseAddr_1244 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1246 :: ()
d_ScriptBootstrapAddr_1246 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1248 :: ()
d_ScriptHash_1248 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1252 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Ser
d_Ser_1256 :: ()
d_Ser_1256 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1258 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1258
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1260 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1260 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential_210
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1262 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1262 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'Credential'215'Coin_214
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1264 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1264
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'DrepThresholds_508
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1266 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1266
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Epoch_64
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1268 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1268
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1270 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1270
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Show'45'Network_282
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1272 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1272
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PParams_512
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1274 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1274
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_Show'45'PoolThresholds_510
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1276 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1276
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1278 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1278
  = coe
      MAlonzo.Code.Class.Show.Instances.du_Show'45''215'_6
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1280 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1280
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_Show'45'RwdAddr_212
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1282 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1282
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'ScriptHash_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1284 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1284
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1230
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1286 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1286
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1288 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1288
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1290 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1290
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1292 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1292
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe MAlonzo.Code.Data.Rational.Show.d_show_6)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Sig
d_Sig_1294 :: ()
d_Sig_1294 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Slot
d_Slot_1296 :: ()
d_Slot_1296 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1298 :: Integer
d_SlotsPerEpoch'7580'_1298
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_SlotsPerEpoch'7580'_284
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1300 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2280
d_Slot'691'_1300
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_Slot'691'_58
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1302 :: Integer
d_StabilityWindow_1302
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow_76
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1304 :: Integer
d_StabilityWindow'7580'_1304
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_StabilityWindow'7580'_288
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1306 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1306
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_adHashingScheme_1230
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1308 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1308
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1310 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1310
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
               (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1312 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1312
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_1314
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
                  (coe v0)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Timelock
d_Timelock_1318 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1320 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx
d_Tx_1326 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody
d_TxBody_1328 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxId
d_TxId_1330 :: ()
d_TxId_1330 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxIn
d_TxIn_1332 :: ()
d_TxIn_1332 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxOut
d_TxOut_1334 :: ()
d_TxOut_1334 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1336 :: ()
d_TxOut'688'_1336 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1338 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.UTxO
d_UTxO_1340 :: ()
d_UTxO_1340 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Update
d_Update_1342 :: ()
d_Update_1342 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1346 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKey
d_VKey_1348 :: ()
d_VKey_1348 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1350 :: ()
d_VKeyAddr_1350 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1352 :: ()
d_VKeyBaseAddr_1352 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1354 :: ()
d_VKeyBootstrapAddr_1354 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Value
d_Value_1358 :: ()
d_Value_1358 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1360 ::
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_1360
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Voter
d_Voter_1362 :: ()
d_Voter_1362 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1364 :: ()
d_Wdrl_1364 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_1368 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1370
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_adHashingScheme_1372
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.C_mkIsHashableSet_34
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      MAlonzo.Code.Class.Show.Instances.d_Show'45''8868'_16
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45''8868'_10
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v0 -> v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1374 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addEpoch_1374
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addEpoch_250
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addSlot
d_addSlot_1376 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addSlot_1376
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_addSlot_248
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.addValue
d_addValue_1378 :: MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_1378
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_226
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1380
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.certDeposit
d_certDeposit_1388 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_certDeposit_1388 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certDeposit_990 v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.certRefund
d_certRefund_1390 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DepositPurpose_840]
d_certRefund_1390
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_certRefund_1000
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coin
d_coin_1392 :: Integer -> Integer
d_coin_1392
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1394 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1394 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1396 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_1396
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_220
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.crypto
d_crypto_1400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_Crypto_138
d_crypto_1400 = coe d_HSCrypto_258
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.cwitness
d_cwitness_1402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_cwitness_1402 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_cwitness_888
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.epoch
d_epoch_1410 :: Integer -> Integer
d_epoch_1410
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_epoch_72
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1412 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_epochStructure_1412 = coe d_HSEpochStructure_256
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1426 a0 a1 a2 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1428 :: Integer -> Integer
d_firstSlot_1428
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_firstSlot_74
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1430 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_1430
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1432 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_isScript_46 ->
  Integer
d_getScriptHash_1432
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_getScriptHash_188
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getValue
d_getValue_1434 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1434
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue_2918
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1436 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1436
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_getValue'688'_2934
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_GlobalConstants_260
d_globalConstants_1438 = coe d_HSGlobalConstants_254
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.govParams
d_govParams_1440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316
d_govParams_1440 = coe d_HsGovParams_848
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.govStructure
d_govStructure_1442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.GovStructure.T_GovStructure_10
d_govStructure_1442
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1444 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1444
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.inject
d_inject_1446 :: Integer -> Integer
d_inject_1446
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1448 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1450 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1450
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isBootstrapAddr'63'_142
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1452 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  ()
d_isKeyHash_1452 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1454 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe Integer
d_isKeyHashObj_1454
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj_26
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1456 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Bool
d_isKeyHashObj'7495'_1456
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isKeyHashObj'7495'_30
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1458 :: Integer -> Integer -> ()
d_isKeyPair_1458 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1460 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1460
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_isP2Script_3034
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScript
d_isScript_1462 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1464 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1464 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1466 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20 ->
  Maybe Integer
d_isScriptObj_1466
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_isScriptObj_36
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 -> ()
d_isScriptRwdAddr_1468 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isSigned
d_isSigned_1470 :: Integer -> Integer -> Integer -> ()
d_isSigned_1470 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1472 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_isSigned'45'correct_1472
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_isSigned'45'correct_132
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isVKey
d_isVKey_1474 a0 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1476 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1476 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.khs
d_khs_1478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_khs_1478
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_khs_204
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.language
d_language_1480 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1480
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1482 ::
  Integer ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1482
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_lookupScriptHash_3020
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.maximum
d_maximum_1484 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1484
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.monoid
d_monoid_1486 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_1486
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_monoid_1032
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.netId
d_netId_1488 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1488
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_netId_116
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.networkId
d_networkId_1490 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1490 = coe d_networkId_250
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.p1s
d_p1s_1494 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_1494
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWF-elim
d_paramsWF'45'elim_1496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_paramsWF'45'elim_1496 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsWF'45'elim_466
      v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1498 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 -> ()
d_paramsWellFormed_1498 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.payCred
d_payCred_1500 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_payCred_1500
  = coe MAlonzo.Code.Ledger.Conway.Conformance.Address.du_payCred_112
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pkk
d_pkk_1502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_PKKScheme_60
d_pkk_1502
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.policies
d_policies_1504 :: Integer -> [Integer]
d_policies_1504
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.positivePParams
d_positivePParams_1506 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  [Integer]
d_positivePParams_1506
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_positivePParams_382
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1508 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_1508
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1510
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1512
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_ppdWellFormed_1514 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1516 ::
  MAlonzo.Code.Class.HasOrder.Core.T_HasPreorder_20
d_preoEpoch_1516
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_preoEpoch_90
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.property
d_property_1518 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1518 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ps
d_ps_1520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_1520
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1522 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1524 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1524
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_pvCanFollow'63'_1236
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1526 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_1526
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = coe
                 MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
                 (coe
                    MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.refScriptCostStride>0
d_refScriptCostStride'62'0_1528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  (MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_refScriptCostStride'62'0_1528 v0 v1
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_refScriptCostStride'62'0_488
      v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.refScripts
d_refScripts_1530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1530
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refScripts_2958
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1538 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1538
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptOuts_2944
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424
d_scriptStructure_1540 = coe d_HSScriptStructure_538
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sign
d_sign_1542 :: Integer -> Integer -> Integer
d_sign_1542
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_sign_112
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_pkk_176 (coe v1))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.size
d_size_1544 :: Integer -> Integer
d_size_1544
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_210
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1546 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1546
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_216
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1548 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stakeCred_1548
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.du_stakeCred_114
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1550 :: Integer -> Integer
d_suc'7497'_1550
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_suc'7497'_78
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1552 :: [Integer] -> Integer
d_sum'7515'_1552
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_244
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.toData
d_toData_1554 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1554
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12
d_tokenAlgebra_1556 = coe d_tokenAlgebra_252
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1558 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1558
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txOutHash_2924
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1560 :: Integer -> Integer
d_txidBytes_1560 v0 = coe v0
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1562 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1562
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsScript_2952
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1564 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1564
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txinsVKey_2938
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.txscripts
d_txscripts_1566 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1566
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txscripts_3010
      (coe d_HSTransactionStructure_890)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.updateCertDeposit
d_updateCertDeposit_1568 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_updateCertDeposit_1568
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Certs.du_updateCertDeposit_1006
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
              (coe v0))
           v2 v3)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1570
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govParams_2268
               (coe v0))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1572 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_1572 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1574 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1574 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ε
d_ε_1576 :: Integer
d_ε_1576
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Class.Monoid.Core.d_ε_20
         (coe
            MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
            (coe
               MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
               (coe
                  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_tokenAlgebra_2298
                  (coe v0)))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕ+ᵉ≡+ᵉ'
d_ℕ'43''7497''8801''43''7497'''_1578 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ℕ'43''7497''8801''43''7497'''_1578 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1580 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.T_EpochStructure_24
d_ℕEpochStructure_1580
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕEpochStructure_306
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_globalConstants_1244
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1582 :: Integer -> Integer
d_ℕtoEpoch_1582
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Types.Epoch.d_ℕtoEpoch_244
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1632 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_reserves_1632 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_reserves_158
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1634 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_Acnt_150 ->
  Integer
d_treasury_1634 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_treasury_156
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1638 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1638 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_hash_718
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Anchor.url
d_url_1640 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1640 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_url_716
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1644 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1644 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_60 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1646 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1646 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_62 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1648 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BaseAddr_52 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_1648 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_64 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1652 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  Integer
d_attrsSize_1652 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_attrsSize_78
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1654 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1654 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_74 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1656 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_BootstrapAddr_66 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_pay_1656 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_pay_76 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1660 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  Integer
d_epoch_1660 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_epoch_914 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1662 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pp_1662 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pp_916 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1664 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_votes_1664 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_votes_918 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1666 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertEnv_904 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1666 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_wdrls_920 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.dState
d_dState_1670 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924
d_dState_1670 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dState_968 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.gState
d_gState_1672 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944
d_gState_1672 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_gState_972 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.CertState.pState
d_pState_1674 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_CertState_960 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860
d_pState_1674 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pState_970 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1700 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1700 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_940
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1702 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1702 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewards_938 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1704 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1704 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_stakeDelegs_936
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1706 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DState_924 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1706 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_voteDelegs_934
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1710 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1710 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_984 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1712 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DelegEnv_976 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_pparams_1712 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pparams_982 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1726 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1726 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P1_206 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1728 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1728 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2a_208 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1730 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1730 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P2b_210 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1732 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1732 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P3_212 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1734 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1734 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P4_214 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1736 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1736 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5a_216 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1738 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1738 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5b_218 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1740 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1740 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5c_220 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1742 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1742 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P5d_222 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1744 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1744 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_P6_224 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1748 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1748 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_ccHotKeys_954
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1750 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1750 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_deposits_956
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1752 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_GState_944 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1752 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_dreps_952 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.action
d_action_1772 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1772 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_824
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1774 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  Integer
d_expiresIn_1774 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_expiresIn_822
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1776 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  AgdaAny
d_prevAction_1776 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_826
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1778 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_1778 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_820
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1780 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovActionState_806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1780 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_votes_818
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1784 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1784 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'T_30
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1786 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1786 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_DecEq'45'THash_26
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1788 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1788 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_DecEq'45'UpdT_1376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1790 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_THash_1790 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1792 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  ()
d_UpdateT_1792 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1794 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1794 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_Show'45'THash_28
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1796 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1796 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'Hashable_32
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1798 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_1798 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1800 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_ppHashingScheme_1800 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppHashingScheme_1362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1802 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284
d_ppUpd_1802 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1804 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1804 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1806 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny -> ()
d_ppdWellFormed_1806 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1808 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_GovParams_1316 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_1808 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppUpd_1348
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.action
d_action_1812 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720
d_action_1812 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_action_794
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1814 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1814 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_804
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1816 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Integer
d_deposit_1816 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_deposit_800
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1818 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  Maybe Integer
d_policy_1818 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_policy_798
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1820 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  AgdaAny
d_prevAction_1820 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_prevAction_796
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1822 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80
d_returnAddr_1822 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_returnAddr_802
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1834 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Anchor_710
d_anchor_1834 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_anchor_778
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1836 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1836 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_gid_772
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1838 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_Vote_754
d_vote_1838 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_vote_776
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1840 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1840 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_voter_774
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Anchor
d_Anchor_1844 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-GovRole
d_DecEq'45'GovRole_1852 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_1852
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'GovRole_828
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-VDeleg
d_DecEq'45'VDeleg_1854 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1854
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_DecEq'45'VDeleg_832
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.DecEq-Vote
d_DecEq'45'Vote_1856 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1856
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_DecEq'45'Vote_830
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovAction
d_GovAction_1858 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovActionID
d_GovActionID_1860 :: ()
d_GovActionID_1860 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovActionState
d_GovActionState_1862 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovProposal
d_GovProposal_1864 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovRole
d_GovRole_1866 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.GovVote
d_GovVote_1868 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.HashProtected
d_HashProtected_1870 :: () -> ()
d_HashProtected_1870 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.NeedsHash
d_NeedsHash_1874 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_NeedsHash_1874 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.VDeleg
d_VDeleg_1888 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Vote
d_Vote_1890 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.Voter
d_Voter_1892 :: ()
d_Voter_1892 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed
d_actionWellFormed_1898 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  ()
d_actionWellFormed_1898 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.actionWellFormed?
d_actionWellFormed'63'_1900 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovAction_720 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1900
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.d_actionWellFormed'63'_746
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_govStructure_2414
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.getDRepVote
d_getDRepVote_1904 ::
  MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_getDRepVote_1904
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_getDRepVote_834
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.GovernanceActions.maximum
d_maximum_1906 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1906
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.du_maximum_686
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock.storedHash
d_storedHash_1932 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  Integer
d_storedHash_1932 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_storedHash_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.HashedTimelock.timelock
d_timelock_1934 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_Timelock_268
d_timelock_1934 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_timelock_410
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1938 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1938 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1940 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1940 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1942 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1942 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1944 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1944 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1946 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1946 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1950 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1950 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1952 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1952 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1954 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1954 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1956 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_1956 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1958 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1958 ~v0 v1 = du_isMagmaMonomorphism_1958 v1
du_isMagmaMonomorphism_1958 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_1958 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1960 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1960 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1962 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_1962 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1964 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1964 v0
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
d_isRelIsomorphism_1966 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1966 ~v0 v1 = du_isRelIsomorphism_1966 v1
du_isRelIsomorphism_1966 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1966 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1968 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1968 ~v0 v1 = du_isRelMonomorphism_1968 v1
du_isRelMonomorphism_1968 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1968 v0
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
d_surjective_1970 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1970 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1972 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1972 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1974 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1974 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1978 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1978 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1980 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1980 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1982 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_1982 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1984 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_1984 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1986 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_1986 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1988 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1988 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1990 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1990 ~v0 v1 = du_isRelMonomorphism_1990 v1
du_isRelMonomorphism_1990 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1990 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1992 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1992 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1994 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1994 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1998 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1998 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2000 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2000 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2002 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2002 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_2004 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  ()
d_P1Script_2004 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_2006 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_2006 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_2022 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_Emax_2022 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_356 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a
d_a_2024 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_a_2024 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_332 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.a0
d_a0_2026 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2026 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_360 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.b
d_b_2028 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_b_2028 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_334 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_2030 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMaxTermLength_2030 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_372
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_2032 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_ccMinSize_2032 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_370
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_2034 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_coinsPerUTxOByte_2034 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_340
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_2036 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_collateralPercentage_2036 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_362
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_2038 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2038 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_364
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_2040 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepActivity_2040 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_2042 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_drepDeposit_2042 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_378
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_2044 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2044 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_368
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_2046 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionDeposit_2046 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_376
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_2048 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_govActionLifetime_2048 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_374
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_2050 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_keyDeposit_2050 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_336
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_2052 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2052 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_324
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_2054 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxBlockSize_2054 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_316
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_2056 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxCollateralInputs_2056 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_328
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_2058 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxHeaderSize_2058 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_320
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2060 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerBlock_2060 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_348
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2062 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxRefScriptSizePerTx_2062 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_346
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_2064 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2064 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_322
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_2066 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxTxSize_2066 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_318
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_2068 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_maxValSize_2068 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_326
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2070 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2070 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_344
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_2072 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_minUTxOValue_2072 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_354
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_2074 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_nopt_2074 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_358 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_2076 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_poolDeposit_2076 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_338
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_2078 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2078 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_366
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.prices
d_prices_2080 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2080 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_342
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.pv
d_pv_2082 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2082 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_330 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostMultiplier
d_refScriptCostMultiplier_2084 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2084 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_352
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParams.refScriptCostStride
d_refScriptCostStride_2086 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  Integer
d_refScriptCostStride_2086 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_350
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_2090 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  ()
d_UpdateT_2090 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_2092 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  AgdaAny ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyUpdate_2092 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_applyUpdate_1300
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_2094 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_2094 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ppWF'63'_1308
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_2096 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny -> ()
d_ppdWellFormed_2096 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_2098 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsDiff_1284 ->
  AgdaAny ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_updateGroups_2098 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_updateGroups_1302
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__2102 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__2102 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du__'63''8599'__1036
      v1 v2
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_2104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_2104
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_DecEq'45'PParamsUpdate_1230
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptStructure_1850
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_2106 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_2108 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParams_248
d_applyPParamsUpdate_2108
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_applyPParamsUpdate_1084
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_2110 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamGroup_172]
d_modifiedUpdateGroups_2110
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiedUpdateGroups_1020
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_2112 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesEconomicGroup_2112
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesEconomicGroup_804
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_2114 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesGovernanceGroup_2114
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesGovernanceGroup_948
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_2116 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesNetworkGroup_2116
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesNetworkGroup_732
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_2118 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Bool
d_modifiesTechnicalGroup_2118
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_modifiesTechnicalGroup_876
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_2120 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  ()
d_paramsUpdateWellFormed_2120 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_2122 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_2122
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_paramsUpdateWellFormed'63'_728
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_2124 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_2124 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.du_'8801''45'update_1050
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_2128 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_Emax_2128 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Emax_626 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_2130 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_a_2130 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a_600 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_2132 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_2132 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_a0_624 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_2134 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_b_2134 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_b_602 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_2136 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMaxTermLength_2136 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMaxTermLength_648
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_2138 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_ccMinSize_2138 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_ccMinSize_646
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2140 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_coinsPerUTxOByte_2140 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_coinsPerUTxOByte_608
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2142 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_collateralPercentage_2142 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_collateralPercentage_630
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2144 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2144 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_costmdls_632
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2146 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepActivity_2146 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepActivity_644
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2148 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_drepDeposit_2148 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepDeposit_642
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2150 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_DrepThresholds_184
d_drepThresholds_2150 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_drepThresholds_634
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2152 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionDeposit_2152 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionDeposit_640
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2154 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_govActionLifetime_2154 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_govActionLifetime_638
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2156 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_keyDeposit_2156 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_keyDeposit_604
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2158 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2158 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockExUnits_596
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2160 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxBlockSize_2160 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxBlockSize_584
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2162 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxCollateralInputs_2162 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxCollateralInputs_592
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2164 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxHeaderSize_2164 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxHeaderSize_588
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerBlock
d_maxRefScriptSizePerBlock_2166 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerBlock_2166 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerBlock_616
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxRefScriptSizePerTx
d_maxRefScriptSizePerTx_2168 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxRefScriptSizePerTx_2168 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxRefScriptSizePerTx_614
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2170 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2170 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxExUnits_594
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2172 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxTxSize_2172 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxTxSize_586
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2174 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_maxValSize_2174 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_maxValSize_590
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2176 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2176 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minFeeRefScriptCoinsPerByte_612
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2178 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_minUTxOValue_2178 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_minUTxOValue_622
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2180 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_nopt_2180 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_nopt_628 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2182 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_poolDeposit_2182 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolDeposit_606
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2184 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe
    MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226
d_poolThresholds_2184 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_poolThresholds_636
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_2186 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2186 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_prices_610
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_2188 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2188 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_pv_598 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostMultiplier
d_refScriptCostMultiplier_2190 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_refScriptCostMultiplier_2190 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostMultiplier_620
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.refScriptCostStride
d_refScriptCostStride_2192 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PParamsUpdate_516 ->
  Maybe Integer
d_refScriptCostStride_2192 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_refScriptCostStride_618
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState.pools
d_pools_2196 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2196 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_pools_866 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2198 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2198 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_retiring_868
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2202 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2202 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_2204 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_CostModel_2204 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_2206 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_T_2206 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_2208 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_THash_2208 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_2210 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_2210 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_2212 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Datum_2212 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2214 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2214 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2216 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2216 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2218 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2218 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2220 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2220 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2222 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2222 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2224 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2224 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2226 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2226 v0
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
d_DecEq'45'THash_2228 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2228 v0
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
d_ExUnit'45'CommutativeMonoid_2230 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2230 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2232 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_ExUnits_2232 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2234 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2234 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2236 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_LangDepView_2236 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2238 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Language_2238 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2240 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_PlutusScript_2240 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2242 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV1_2242 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2244 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV2_2244 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2246 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny
d_PlutusV3_2246 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2248 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Prices_2248 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2250 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  ()
d_Redeemer_2250 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2252 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2252 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2254 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2254 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2256 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2256 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2258 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2258 v0
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
d_T'45'Hashable_2260 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2260 v0
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
d_T'45'isHashable_2262 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_2262 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2264 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> AgdaAny
d_language_2264 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2266 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  () -> AgdaAny -> AgdaAny
d_toData_2266 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2268 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2268 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2272 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_PoolParams_854 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_rewardAddr_2272 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Certs.d_rewardAddr_858
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2276 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2276 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q1_238 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2278 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2278 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2a_240 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2280 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2280 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q2b_242 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2282 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2282 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q4_244 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2284 ::
  MAlonzo.Code.Ledger.Conway.Conformance.PParams.T_PoolThresholds_226 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2284 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.PParams.d_Q5e_246 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2288 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2288 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_net_86 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2290 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_RwdAddr_80 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Address.T_Credential_20
d_stake_2290 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Address.d_stake_88 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2294 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2294 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2296 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_CostModel_2296 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2298 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_T_2298 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2300 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_THash_2300 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2302 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_HashableSet_36
d_Data'688'_2302 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2304 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Datum_2304 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2306 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2306
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validP1Script_112
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2308 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2308 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Dec'45'validPlutusScript_260
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2310 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2310 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEQ'45'Prices_230
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2312 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2312 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'CostModel_220
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2314 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2314 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'ExUnits_228
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2316 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2316 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'LangDepView_222
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2318 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2318 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'Language_218
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2320 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2320
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_DecEq'45'P1Script_116
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2322 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2322 v0
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
d_DecEq'45'THash_2324 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2324 v0
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
d_ExUnit'45'CommutativeMonoid_2326 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_ExUnit'45'CommutativeMonoid_2326 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ExUnit'45'CommutativeMonoid_214
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2328 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_ExUnits_2328 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2330 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2330 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hash'45'Timelock_474
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2332 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2332
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
                 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
                    (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'P1Script_114
                    (coe
                       MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452 (coe v1)
                       (coe v2))))))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2334 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2334 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'PlutusScript_216
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2336 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2336
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Hashable'45'Script_550
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
            (coe v0))
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2338 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_LangDepView_2338 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2340 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Language_2340 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2342 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_P1Script_2342 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2344 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_PlutusScript_2344 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2346 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV1_2346 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV1_208
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2348 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV2_2348 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV2_210
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2350 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny
d_PlutusV3_2350 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_PlutusV3_212
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2352 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Prices_2352 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2354 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Redeemer_2354 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2356 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  ()
d_Script_2356 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2358 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2358 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'CostModel_224
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2360 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2360 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'ExUnits_232
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2362 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2362 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Show'45'Prices_234
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2364 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2364 v0
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
d_T'45'Hashable_2366 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2366 v0
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
d_T'45'isHashable_2368 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Crypto.T_isHashableSet_10
d_T'45'isHashable_2368 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Crypto.d_T'45'isHashable_44
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_Data'688'_194
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2370 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2370 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_hashRespectsUnion_472
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2372 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> AgdaAny
d_language_2372 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_language_262
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2374 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_P1ScriptStructure_96
d_p1s_2374
  = let v0 = d_HSTransactionStructure_890 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Ledger.Conway.Conformance.Script.du_p1s_452
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_crypto_1268
              (coe v0))
           (coe
              MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_epochStructure_1552
              (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2376 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_PlutusStructure_118
d_ps_2376 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2378 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  () -> AgdaAny -> AgdaAny
d_toData_2378 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Script.d_toData_266
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Script.d_ps_476 (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2380 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404 ->
  ()
d_validP1Script_2380 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2382 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Script.T_ScriptStructure_424 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2382 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2400 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2400 v0
  = coe
      MAlonzo.Code.Class.Semigroup.Core.d__'9671'__16
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_semigroup_30
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2402 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2402 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2404 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2404 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2406 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_AssetName_2406 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2408 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2408 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Dec'45''8804''7511'_224
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2410 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2410 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_DecEq'45'Value_222
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2412 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2414 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2416 a0 a1 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2418 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  ()
d_Value_2418 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2420 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12
d_Value'45'CommutativeMonoid_2420 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2422 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Class.HasAdd.Core.T_HasAdd_8
d_addValue_2422
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_addValue_226
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2424 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_coin_2424 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coin_204
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2426 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2426 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2428 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_coinIsMonoidHomomorphism_2428 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2430 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> AgdaAny
d_inject_2430 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_inject_206
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2432 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_882
d_monoid_2432 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_1032
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2434 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> [Integer]
d_policies_2434 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_policies_208
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2436 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2436 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2438 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_64
d_rawMonoid_2438 v0
  = let v1
          = coe
              MAlonzo.Code.Class.CommutativeMonoid.Core.du_toBundle_44
              (coe
                 MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_954
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1032 (coe v1)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2440 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny -> Integer
d_size_2440 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_size_210
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2442 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_specialAsset_2442 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_specialAsset_216
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2444 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2444
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.du_sum'7515'_244
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2446 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  AgdaAny
d_ε_2446 v0
  = coe
      MAlonzo.Code.Class.Monoid.Core.d_ε_20
      (coe
         MAlonzo.Code.Class.CommutativeMonoid.Core.d_monoid_32
         (coe
            MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.d_Value'45'CommutativeMonoid_122
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2450 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2450 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2452 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2452 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2454 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2454 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2456 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2456 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2458 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2458 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2462 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2462 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2464 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2464 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2466 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2466 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2468 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
d_isMagmaIsomorphism_2468 ~v0 = du_isMagmaIsomorphism_2468
du_isMagmaIsomorphism_2468 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_218
du_isMagmaIsomorphism_2468 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2470 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2470 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2470 v2
du_isMagmaMonomorphism_2470 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2470 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2472 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2472 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2474 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372
d_isMonoidMonomorphism_2474 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_412
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2476 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2476 v0
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
d_isRelIsomorphism_2478 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2478 ~v0 ~v1 v2 = du_isRelIsomorphism_2478 v2
du_isRelIsomorphism_2478 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2478 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_244
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_436
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2480 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2480 ~v0 ~v1 v2 = du_isRelMonomorphism_2480 v2
du_isRelMonomorphism_2480 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2480 v0
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
d_surjective_2482 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2482 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_414 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2484 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2484 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2486 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_404 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2486 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2490 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2490 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2492 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2492 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_382 (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2494 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_176
d_isMagmaHomomorphism_2494 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2496 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
d_isMagmaMonomorphism_2496 ~v0 = du_isMagmaMonomorphism_2496
du_isMagmaMonomorphism_2496 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_194
du_isMagmaMonomorphism_2496 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
      v1
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2498 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_350
d_isMonoidHomomorphism_2498 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2500 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2500 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_184
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_358
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_380
            (coe v0)))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2502 ::
  MAlonzo.Code.Ledger.Conway.Conformance.TokenAlgebra.T_TokenAlgebra_12 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2502 ~v0 ~v1 v2 = du_isRelMonomorphism_2502 v2
du_isRelMonomorphism_2502 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2502 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_214
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_396
         (coe v0))
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2504 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2504 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2506 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_372 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2506 = erased
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.body
d_body_2510 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798
d_body_2510 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_body_2910
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2512 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Bool
d_isValid_2512 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_isValid_2914
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2514 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2514 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txAD_2916
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.Tx.wits
d_wits_2516 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_Tx_2900 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880
d_wits_2516 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_wits_2912
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2520 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2520 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_collateral_2874
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2522 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe Integer
d_curTreasury_2522 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_curTreasury_2868
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2524 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_mint_2524 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_mint_2848
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2526 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2526 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_refInputs_2842
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2528 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [Integer]
d_reqSigHash_2528 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_reqSigHash_2876
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2530 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe Integer
d_scriptIntHash_2530 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scriptIntHash_2878
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2532 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2532 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txADhash_2864
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2534 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2534 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txNetworkId_2866
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2536 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Certs.T_DCert_872]
d_txcerts_2536 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txcerts_2852
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2538 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txdonation_2538 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdonation_2860
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2540 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txfee_2540 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txfee_2846
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2542 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txid_2542 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txid_2872
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2544 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2544 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txins_2840
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2546 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2546 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txouts_2844
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2548 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovProposal_780]
d_txprop_2548 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txprop_2858
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2550 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Integer
d_txsize_2550 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txsize_2870
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2552 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2552 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txup_2862
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2554 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2554 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvldt_2850
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2556 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.GovernanceActions.T_GovVote_762]
d_txvote_2556 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txvote_2856
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2558 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxBody_2798 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2558 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txwdrls_2854
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2562 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2562 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_scripts_2892
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2564 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880 ->
  [MAlonzo.Code.Ledger.Conway.Conformance.Script.T_HashedTimelock_404]
d_scriptsP1_2564
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.du_scriptsP1_2898
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2566 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2566 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txdats_2894
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2568 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2568 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_txrdmrs_2896
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2570 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Transaction.T_TxWitnesses_2880 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2570 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Transaction.d_vkSigs_2890
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2606 = ()
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2612 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_indexOf_1722
d_indexOfImp_2612 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_indexOfImp_1764
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2614 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2614 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_runPLCScript_1766
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2616 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2616 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_scriptSize_1768
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2618 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  Integer -> Integer
d_serSize_2618 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_serSize_1762
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2620 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2620 v0
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.d_txscriptfee_1760
      (coe v0)
-- Ledger.Conway.Conformance.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2636 ::
  MAlonzo.Code.Ledger.Conway.Conformance.Abstract.T_AbstractFunctions_1748
d_HSAbstractFunctions_2636
  = coe
      MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_AbstractFunctions'46'constructor_3029
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Conway.Conformance.Abstract.C_indexOf'46'constructor_2737
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
