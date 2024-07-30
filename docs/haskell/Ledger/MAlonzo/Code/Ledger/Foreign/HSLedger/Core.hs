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
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.MOf
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Rational.Base
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
d_'8704'Hashable_20 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_'8704'Hashable_20 ~v0 ~v1 = du_'8704'Hashable_20
du_'8704'Hashable_20 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
du_'8704'Hashable_20
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> v0))
-- Ledger.Foreign.HSLedger.Core._.∀isHashableSet
d_'8704'isHashableSet_24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_'8704'isHashableSet_24 ~v0 v1 = du_'8704'isHashableSet_24 v1
du_'8704'isHashableSet_24 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
du_'8704'isHashableSet_24 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26 v0 v0
      (coe
         MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
         (coe (\ v1 -> v1)))
-- Ledger.Foreign.HSLedger.Core.Hashable-⊤
d_Hashable'45''8868'_26 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45''8868'_26
  = coe
      MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
      (coe (\ v0 -> seq (coe v0) (coe (0 :: Integer))))
-- Ledger.Foreign.HSLedger.Core.Implementation.Network
d_Network_32 :: ()
d_Network_32 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_34 :: Integer
d_SlotsPerEpoch'7580'_34 = coe (100 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.StabilityWindowᶜ
d_StabilityWindow'7580'_36 :: Integer
d_StabilityWindow'7580'_36 = coe (10 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.Quorum
d_Quorum_38 :: Integer
d_Quorum_38 = coe (1 :: Integer)
-- Ledger.Foreign.HSLedger.Core.Implementation.NetworkId
d_NetworkId_40 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_40 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.SKey
d_SKey_42 :: ()
d_SKey_42 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.VKey
d_VKey_44 :: ()
d_VKey_44 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Sig
d_Sig_46 :: ()
d_Sig_46 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ser
d_Ser_48 :: ()
d_Ser_48 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.isKeyPair
d_isKeyPair_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> AgdaAny -> ()
d_isKeyPair_50 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.sign
d_sign_52 ::
  () ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_sign_52 ~v0 v1 = du_sign_52 v1
du_sign_52 ::
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_sign_52 v0
  = coe MAlonzo.Code.Interface.HasAdd.d__'43'__12 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation.ScriptHash
d_ScriptHash_54 :: ()
d_ScriptHash_54 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Data
d_Data_56 :: ()
d_Data_56 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Dataʰ
d_Data'688'_58 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_58
  = coe
      MAlonzo.Code.Ledger.Crypto.C_mkHashableSet_48
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
-- Ledger.Foreign.HSLedger.Core.Implementation.toData
d_toData_62 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_62 ~v0 ~v1 = du_toData_62
du_toData_62 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
du_toData_62 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.PlutusScript
d_PlutusScript_64 :: ()
d_PlutusScript_64 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnits
d_ExUnits_66 :: ()
d_ExUnits_66 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_68 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_68
  = coe
      MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
      (coe
         MAlonzo.Code.Algebra.Bundles.C_CommutativeMonoid'46'constructor_15145
         (coe MAlonzo.Code.Algebra.PairOp.du__'8729''7510'__12 (coe addInt))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (0 :: Integer))
            (coe (0 :: Integer)))
         (coe
            MAlonzo.Code.Algebra.PairOp.du_pairOpRespectsComm_92
            (coe (0 :: Integer))
            (coe
               MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'isCommutativeMonoid_3194)))
-- Ledger.Foreign.HSLedger.Core.Implementation._≥ᵉ_
d__'8805''7497'__94 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__94 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.CostModel
d_CostModel_96 :: ()
d_CostModel_96 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Language
d_Language_98 :: ()
d_Language_98 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.LangDepView
d_LangDepView_100 :: ()
d_LangDepView_100 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Prices
d_Prices_102 :: ()
d_Prices_102 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.MemoryEstimate
d_MemoryEstimate_106 :: ()
d_MemoryEstimate_106 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_108 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._∙_
d__'8729'__112 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__112 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≈_
d__'8776'__114 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__114 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__116 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.AssetName
d_AssetName_118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_118 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_120 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_120 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_122 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_122 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_124 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_126 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_128 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_130 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_130 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_132 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_132
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_134 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.addValue
d_addValue_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_136
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_138 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_142 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.inject
d_inject_144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_144 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.monoid
d_monoid_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_146 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.policies
d_policies_148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_148 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.property
d_property_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_150 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.rawMonoid
d_rawMonoid_152 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_152 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.size
d_size_154 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_154 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.specialAsset
d_specialAsset_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_156 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.ε
d_ε_160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_160 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_164 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_164 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_166 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_166 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_168 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_170 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_172 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_176 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_178 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_178 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_180 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_182 ~v0 = du_isMagmaIsomorphism_182
du_isMagmaIsomorphism_182 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_182 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_184 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_184 v2
du_isMagmaMonomorphism_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_186 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_186 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_192 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_192 ~v0 ~v1 v2 = du_isRelIsomorphism_192 v2
du_isRelIsomorphism_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_194 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_194 ~v0 ~v1 v2 = du_isRelMonomorphism_194 v2
du_isRelMonomorphism_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_194 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_196 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_198 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_200 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_204 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_210 ~v0 = du_isMagmaMonomorphism_210
du_isMagmaMonomorphism_210 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_210 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_214 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_216 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_216 ~v0 ~v1 v2 = du_isRelMonomorphism_216 v2
du_isRelMonomorphism_216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_216 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_218 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_220 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.coinTokenAlgebra
d_coinTokenAlgebra_222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_coinTokenAlgebra_222 = coe d_'46'extendedlambda1_228
-- Ledger.Foreign.HSLedger.Core.Implementation._..extendedlambda1
d_'46'extendedlambda1_228 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_'46'extendedlambda1_228
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.C_TokenAlgebra'46'constructor_2011
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_toCommMonoid''_62
         (coe
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
      (\ v0 -> v0) (\ v0 -> v0)
      (\ v0 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe
              MAlonzo.Code.Axiom.Set.d_th_1430
              (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10)))
      (\ v0 -> 1 :: Integer) ("Ada" :: Data.Text.Text)
      (coe
         MAlonzo.Code.Algebra.Morphism.Construct.Identity.du_isMonoidHomomorphism_196
         (coe
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_890
               (coe
                  MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
                  (coe
                     MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
                     (coe d_'46'extendedlambda1_228)))))
         erased)
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Instances.d_ℕ'45'Dec'45''8804'_74 v0
           v1)
-- Ledger.Foreign.HSLedger.Core.Implementation.TxId
d_TxId_236 :: ()
d_TxId_236 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.Ix
d_Ix_238 :: ()
d_Ix_238 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.AuxiliaryData
d_AuxiliaryData_240 :: ()
d_AuxiliaryData_240 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.DocHash
d_DocHash_242 :: ()
d_DocHash_242 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation.networkId
d_networkId_244 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_244 = coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8
-- Ledger.Foreign.HSLedger.Core.Implementation.tokenAlgebra
d_tokenAlgebra_246 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_246 = coe d_coinTokenAlgebra_222
-- Ledger.Foreign.HSLedger.Core.HSGlobalConstants
d_HSGlobalConstants_248 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_HSGlobalConstants_248
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_4803
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      d_SlotsPerEpoch'7580'_34
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_36 d_Quorum_38 d_NetworkId_40
-- Ledger.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_250 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_HSEpochStructure_250
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
      (coe d_HSGlobalConstants_248)
-- Ledger.Foreign.HSLedger.Core._
d___252 :: MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d___252 = coe d_HSEpochStructure_250
-- Ledger.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_254 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_HSCrypto_254
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2229
      d_HSPKKScheme_260
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_260 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_HSPKKScheme_260
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1781 addInt
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
           (coe addInt (coe v0) (coe v1)))
      erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._
d___274 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d___274 = coe d_HSCrypto_254
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_282 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_286 = ()
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_300 = ()
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_302 = ()
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_316 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_320 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_320 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_322 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_322 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_324 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_324 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_326 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_326 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_328 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_328 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__332 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__332 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_334 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_334 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_336 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_336 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_338 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_338 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_340 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_340 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_344 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_346 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_346 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_348 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_350 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_352 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_354 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_356 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_358 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_360 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_362 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_364 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_366 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_368 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_370 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV1_372 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV2_374 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV3_376 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_378 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_382 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_384 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_384 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_386 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_232 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_388 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_390 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__394 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__394 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_396 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_CostModel_396 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_398 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_T_398 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_400 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_THash_400 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_402 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_402 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_406 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_406
  = let v0 = d___274 in
    coe
      (let v1 = d___252 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_408 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_408 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_410 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_410 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_412 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_412 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_414 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_414 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_416 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_416 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_418 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_418 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_420 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_420
  = let v0 = d___274 in
    coe
      (let v1 = d___252 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_422 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_422 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_424 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_426 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_426 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_428 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_ExUnits_428 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_430 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_432
  = let v0 = d___274 in
    coe
      (let v1 = d___252 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_434 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_434 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_LangDepView_438 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Language_440 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_P1Script_442 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_PlutusScript_444 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV1_446 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_448 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV2_448 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV3_450 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Prices_452 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Script_456 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_458 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_460 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_462 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny
d_language_464 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_466 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_466
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_414 (coe d___274) (coe d___252)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_468 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_470 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () -> AgdaAny -> AgdaAny
d_toData_470 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_472 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_474 = erased
-- Ledger.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_504 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d_HSScriptStructure_504
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_71665
      (coe d_hashRespectsUnion_518) (coe d_Hashable'45'Timelock_510)
      (coe d_HSP2ScriptStructure_520)
-- Ledger.Foreign.HSLedger.Core._.Hashable-Timelock
d_Hashable'45'Timelock_510
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.Hashable-Timelock"
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_518
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.hashRespectsUnion"
-- Ledger.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_520 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_HSP2ScriptStructure_520
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_3419
      d_Data'688'_58 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_68
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
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_160
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (\ v0 v1 v2 v3 ->
         MAlonzo.Code.Class.Decidable.Instances.d_Dec'45''8868'_20)
      (\ v0 -> coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (\ v0 v1 -> coe du_toData_62)
-- Ledger.Foreign.HSLedger.Core._
d___530 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d___530 = coe d_HSScriptStructure_504
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_538 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_538
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
      (let v0 = d_HSGlobalConstants_248 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___530)
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_544 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_550 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_552 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_554 = ()
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_556 :: ()
d_ProtVer_556 = erased
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_566 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> ()
d_paramsWellFormed_566 = erased
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_568 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_576 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_576 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_578 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_578 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_580 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_580 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_582 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_THash_582 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_584 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_UpdateT_584 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_586 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_586 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_588 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_588 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_590 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_590 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_592 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_592 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_594 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_594 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_598 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_598 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_614 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_Emax_614 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_616 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_a_616 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_618 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_618 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_620 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_b_620 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_622 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMaxTermLength_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_624 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMinSize_624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_626 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_coinsPerUTxOByte_626 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_628 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_collateralPercentage_628 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_630 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_630 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_632 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepActivity_632 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_634 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepDeposit_634 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_636 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_636 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_638 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionDeposit_638 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_640 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionLifetime_640 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_642 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_keyDeposit_642 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_644 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_644 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_646 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxBlockSize_646 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_648 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxCollateralInputs_648 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_650 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxHeaderSize_650 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_652 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_652 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_654 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxTxSize_654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_656 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxValSize_656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_658 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_minUTxOValue_660 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_662 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_nopt_662 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_poolDeposit_664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_670 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> ()
d_UpdateT_674 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1138 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__686 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__686 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__888 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_688 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_688
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
      (let v0 = d_HSGlobalConstants_248 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___530)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_690 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyPParamsUpdate_692
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_694 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_modifiedUpdateGroups_694
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_704 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_704 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_712 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_Emax_712 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_a_714 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_716 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_716 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_718 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_b_718 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_720 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_720 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_722 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_722 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_724 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_726 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_728 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_728 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_730 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepActivity_730 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_732 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_732 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_734 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_734 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_736 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_738 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_738 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_740 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_740 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_742 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_742 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_744 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_744 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_746 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_746 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_492 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_748 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_748 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_750 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_752 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_754 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_754 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_756 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_756 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_510
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_758 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_758 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_760 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_nopt_760 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_762 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_764 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_768 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_768 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_498 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_776 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152
d_HsGovParams_776
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1082145
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1081403
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872)
         (\ v0 -> d_ppWF_786 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
            (let v0 = d_HSGlobalConstants_248 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___530))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
            (let v0 = d_HSGlobalConstants_248 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___530))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
         (let v0 = d_HSGlobalConstants_248 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_237
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                       (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
                       (coe v0)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
                  (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
         (coe d___530))
-- Ledger.Foreign.HSLedger.Core._.ppWF
d_ppWF_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_786 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_410
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_534
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
d_trustMe_802
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core._._.trustMe
d_trustMe_812
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_818 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_818
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_12955
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_26
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      d_HSGlobalConstants_248 d_HSCrypto_254 d_HSEpochStructure_250
      d_HSScriptStructure_504 d_HsGovParams_776 d_tokenAlgebra_246
      (\ v0 -> v0) d_networkId_244
-- Ledger.Foreign.HSLedger.Core._
d___820 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d___820 = coe d_HSTransactionStructure_818
-- Ledger.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__824 :: Integer -> Integer -> Integer
d__'43''7497'__824
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__206
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._∙_
d__'8729'__826 :: Integer -> Integer -> Integer
d__'8729'__826
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._._≈_
d__'8776'__828 :: Integer -> Integer -> ()
d__'8776'__828 = erased
-- Ledger.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__830 :: Integer -> Integer -> ()
d__'8804''7511'__830 = erased
-- Ledger.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__832 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__832 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__834 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__836 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_884 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__836 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__838 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__840 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__842 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__844 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_846 :: ()
d_THash_846 = erased
-- Ledger.Foreign.HSLedger.Core._.Acnt
d_Acnt_848 = ()
-- Ledger.Foreign.HSLedger.Core._.Addr
d_Addr_850 :: ()
d_Addr_850 = erased
-- Ledger.Foreign.HSLedger.Core._.Anchor
d_Anchor_852 = ()
-- Ledger.Foreign.HSLedger.Core._.AssetName
d_AssetName_854 :: ()
d_AssetName_854 = erased
-- Ledger.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_856 :: ()
d_AuxiliaryData_856 = erased
-- Ledger.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_858 = ()
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_860 = ()
-- Ledger.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_872 = ()
-- Ledger.Foreign.HSLedger.Core._.CertState
d_CertState_874 = ()
-- Ledger.Foreign.HSLedger.Core._.CostModel
d_CostModel_878 :: ()
d_CostModel_878 = erased
-- Ledger.Foreign.HSLedger.Core._.Credential
d_Credential_880 = ()
-- Ledger.Foreign.HSLedger.Core._.DCert
d_DCert_884 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_894 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_896 :: ()
d_T_896 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_898 :: ()
d_THash_898 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_900 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_900
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_902 :: ()
d_Datum_902 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_904 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_904
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_906 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_906
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_908 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_908
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_910 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_910
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_138
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_912 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_912
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_914 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_914
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_916 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_916
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_918 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_918
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_920 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_920
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_184
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_922 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_922
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_186
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_924
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_926 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_926
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_136
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_928 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_928
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_930 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_930
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_414
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_932 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_932
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_934 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_934
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_936 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_936
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_938 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_938
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_940 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_940
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_942 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_942
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_944 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_944
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_946 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_946
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_948 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_948
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_420
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_950 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_950
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_952 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_952
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_416
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_954 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_954
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_188
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_192
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_956 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_956
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_958 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_958
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_960 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_960
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_962 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_962
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_964 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_964
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_966
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_172
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_428
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_968
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_970 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_970
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_972
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_974 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_974
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_172
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_428
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_976 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_976
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_978 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_978
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_252
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_980
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_982 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_982
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_984
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_986 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_986
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_988
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_758
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_990 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_990
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_992 = ()
-- Ledger.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_994 = ()
-- Ledger.Foreign.HSLedger.Core._.Deposits
d_Deposits_996 :: ()
d_Deposits_996 = erased
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_998 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_1002 :: ()
d_Epoch_1002 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1004 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1004
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1006 :: ()
d_ExUnits_1006 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1014 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_1016 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1020 :: ()
d_GovActionID_1020 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1022 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1024 :: ()
d_GovCertEnv_1024 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_1026 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1028 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_1030 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_1032 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1036 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1036
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2822
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1038 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1038
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1040 :: () -> ()
d_HashProtected_1040 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1042 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1042
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1044 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1044
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1046 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1046
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1052 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1054 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1056 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_1058 :: ()
d_Ix_1058 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1060 :: ()
d_THash_1060 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1064 :: ()
d_KeyPair_1064 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1066 :: ()
d_LangDepView_1066 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_1068 :: ()
d_Language_1068 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1070 :: ()
d_MemoryEstimate_1070 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1072 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_NeedsHash_1072 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_1074 :: ()
d_Network_1074 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1078 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1078
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1084 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1084
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1086 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1086
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_1088 :: ()
d_P1Script_1088 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1090 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1092 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_1092
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_374
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1094 :: ()
d_PlutusScript_1094 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1100 :: ()
d_THash_1100 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1102 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_1104 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1106 = ()
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1108 :: ()
d_UpdateT_1108 = erased
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_1110 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1112 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1114 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1114
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_186
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1116 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1116
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_188
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1118 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1118
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1122 :: ()
d_PoolEnv_1122 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1124 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1126 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_1128 :: ()
d_Prices_1128 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1130 :: ()
d_ProposedPPUpdates_1130 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1132 :: ()
d_ProtVer_1132 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_1134 :: Integer
d_Quorum_1134
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1136 :: ()
d_RdmrPtr_1136 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1138 :: ()
d_Redeemer_1138 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1152 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_1156 :: ()
d_SKey_1156 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_1160 :: ()
d_Script_1160 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1162 :: ()
d_ScriptAddr_1162 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1164 :: ()
d_ScriptBaseAddr_1164 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1166 :: ()
d_ScriptBootstrapAddr_1166 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1168 :: ()
d_ScriptHash_1168 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1172 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_1176 :: ()
d_Ser_1176 = erased
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_1178 :: ()
d_Sig_1178 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_1180 :: ()
d_Slot_1180 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1182 :: Integer
d_SlotsPerEpoch'7580'_1182
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1184 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1184
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1186 :: Integer
d_StabilityWindow_1186
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1188 :: Integer
d_StabilityWindow'7580'_1188
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1190 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1190
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1192 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1192
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1194 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1194
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_172
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_428
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1196 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1196
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1198 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1198
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_172
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_428
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))))
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_1202 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1204 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_1210 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_1212 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_1214 :: ()
d_TxId_1214 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_1216 :: ()
d_TxIn_1216 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_1218 :: ()
d_TxOut_1218 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1220 :: ()
d_TxOut'688'_1220 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1222 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_1224 :: ()
d_UTxO_1224 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1226 :: ()
d_Update_1226 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1230 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1232 :: ()
d_VKey_1232 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1234 :: ()
d_VKeyAddr_1234 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1236 :: ()
d_VKeyBaseAddr_1236 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1238 :: ()
d_VKeyBootstrapAddr_1238 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1242 :: ()
d_Value_1242 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1244 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1244
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1246 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1246
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1248 :: ()
d_Voter_1248 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1250 :: ()
d_Wdrl_1250 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1254 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_actionWellFormed_1254 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1256 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1256
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_674
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1258 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1258
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1260 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1260
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1262 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1262
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1264 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1264
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1266 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1266
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1274 :: Integer -> Integer
d_coin_1274
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1276 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1276 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1278 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1278
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1282 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1282
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1164
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1284 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_1284 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_804
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1292 :: Integer -> Integer
d_epoch_1292
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1294 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1294
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1308 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1310 :: Integer -> Integer
d_firstSlot_1310
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1312 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1312
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_762
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1314 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> Integer
d_getScriptHash_1314
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_178
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1316 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1316
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2704
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1318 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1318
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2720
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1320 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1320
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1322 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152
d_govParams_1322
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_2076
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1324 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1324
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2222
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1326 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1326
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1328 :: Integer -> Integer
d_inject_1328
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1330 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1332 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1332
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_132
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1334 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1334
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1336 :: Integer -> Integer -> ()
d_isKeyPair_1336 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1338 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1338
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2820
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1340 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1342 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1342 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1344 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1344
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1346 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> ()
d_isScriptRwdAddr_1346 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1348 :: Integer -> Integer -> Integer -> ()
d_isSigned_1348 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1350 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1350 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1352 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1354 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1354 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1356 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1356
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_192
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1358 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1358
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_232
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1360 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1360
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2806
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1362 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1362
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_614
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1364 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1364
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_890
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.netId
d_netId_1366 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1366 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1368 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1368
  = coe
      MAlonzo.Code.Ledger.Transaction.d_networkId_2220
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1372 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1372
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_414
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1374 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> ()
d_paramsWellFormed_1374 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1376 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1376 = coe MAlonzo.Code.Ledger.Address.du_payCred_102
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1378 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1378
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_164
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1380 :: Integer -> [Integer]
d_policies_1380
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1382 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1382
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1384 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_1384
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1386 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1386
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1388 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_ppdWellFormed_1388 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1390 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1390
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1392 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1392 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1394 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1394
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1396 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1398 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1398
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1072
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1400 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1400
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
                    (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.refScripts
d_refScripts_1402 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1402
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2744
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1410 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1410
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2730
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1412 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d_scriptStructure_1412
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1414 :: Integer -> Integer -> Integer
d_sign_1414
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_102
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1416 :: Integer -> Integer
d_size_1416
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1418 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1418
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1420 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1420 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_104
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1422 :: Integer -> Integer
d_suc'7497'_1422
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1424 :: [Integer] -> Integer
d_sum'7515'_1424
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1426 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1426
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_236
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1428 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1428
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1430 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1430
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2710
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1432 :: Integer -> Integer
d_txidBytes_1432
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txidBytes_2218
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1434 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1434
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2738
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1436 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1436
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2724
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1438 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1438
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2796
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1440 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1440
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1442 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_1442 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1444 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1444 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1446 :: Integer
d_ε_1446
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_842
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1448 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1448
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1450 :: Integer -> Integer
d_ℕtoEpoch_1450
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1500 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_reserves_1500 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_140 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1502 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_treasury_1502 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_138 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1506 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1506 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_646 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1508 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1508 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_644 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1512 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1512 v0 = coe MAlonzo.Code.Ledger.Address.d_net_50 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1514 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1514 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_52 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1516 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1516 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_54 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1520 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> Integer
d_attrsSize_1520 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_68 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1522 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1522 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1524 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1524 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_66 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.deposits
d_deposits_1528 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1528 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_840 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1530 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_820 -> Integer
d_epoch_1530 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_832 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1532 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_1532 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_834 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1534 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_votes_1534 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_836 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1536 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1536 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_838 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1540 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844
d_dState_1540 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_892 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1542 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872
d_gState_1542 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_896 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1544 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_1544 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_894 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1570 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1570 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_856 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1572 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1572 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_854 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1574 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1574 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_852 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.deposits
d_deposits_1578 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1578 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_912 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1580 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1580 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1582 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1582 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_908 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1596 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1596 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1598 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1598 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1600 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1600 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1602 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1602 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1604 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1604 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1606 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1606 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1608 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1608 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1610 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1610 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1612 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1612 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1614 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1614 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1618 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1618 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1620 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1620 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_878 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1640 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_1640 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1642 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  Integer
d_expiresIn_1642 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_750 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1644 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  AgdaAny
d_prevAction_1644 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_754 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1646 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_1646 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_748 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1648 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1648 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_746 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1652 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1652 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1654 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1654 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1656 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1658 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_THash_1658 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1660 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_UpdateT_1660 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1662 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1662 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1664 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1664 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1666 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1668 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_1668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1670 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1670 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1672 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> AgdaAny -> ()
d_ppdWellFormed_1672 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1674 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1674 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1678 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_1678 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_722 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1680 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_1680 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_732 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1682 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> Integer
d_deposit_1682 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_728 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1684 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  Maybe Integer
d_policy_1684 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_726 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1686 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> AgdaAny
d_prevAction_1686 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_724 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1688 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_1688 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_730 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_1700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_706 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1702 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_700 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_682
d_vote_1704 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_704 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1706 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1706 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_702 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1710 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1710 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1712 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1712 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1714 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1714 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1716 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1716 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1718 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1718 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1722 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1722 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1724 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1724 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1726 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1726 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1728 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1728 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1730 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1730 ~v0 v1 = du_isMagmaMonomorphism_1730 v1
du_isMagmaMonomorphism_1730 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1730 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1732 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1736 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_1738 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1738 ~v0 v1 = du_isRelIsomorphism_1738 v1
du_isRelIsomorphism_1738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1738 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1740 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1740 ~v0 v1 = du_isRelMonomorphism_1740 v1
du_isRelMonomorphism_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1740 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.surjective
d_surjective_1742 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1742 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1744 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1746 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1750 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1750 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1752 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1754 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1756 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1756 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1758 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1760 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1762 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1762 ~v0 v1 = du_isRelMonomorphism_1762 v1
du_isRelMonomorphism_1762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1762 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1764 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1764 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1766 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1770 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1770 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1772 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1772 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1774 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1774 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1776 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1776 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1778 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1778 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1794 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_Emax_1794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_1796 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_a_1796 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_1798 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1798 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_1800 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_b_1800 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1802 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMaxTermLength_1802 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1804 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMinSize_1804 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1806 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_coinsPerUTxOByte_1806 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1808 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_collateralPercentage_1808 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1810 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1810 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1812 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepActivity_1812 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1814 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepDeposit_1814 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1816 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_1816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1818 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionDeposit_1818 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionLifetime_1820 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1822 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_keyDeposit_1822 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1824 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxBlockSize_1826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1828 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxCollateralInputs_1828 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxHeaderSize_1830 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1832 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxTxSize_1834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1836 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxValSize_1836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1838 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_minUTxOValue_1840 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1842 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_nopt_1842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_poolDeposit_1844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_1846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_1848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_1850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1850 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1854 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> ()
d_UpdateT_1854 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_1860 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1138 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__1866 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1866 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__888 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1868 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1868
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1870 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyPParamsUpdate_1872
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1874 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_modifiedUpdateGroups_1874
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesEconomicGroup_1876
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_680
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesGovernanceGroup_1878
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_808
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesNetworkGroup_1880
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_616
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesTechnicalGroup_1882
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_744
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_1884 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1886 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1886
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_612
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_1888 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1888 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_902 v1
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1892 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_Emax_1892 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_a_1894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_1896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1896 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_b_1898 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_1900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_1902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_1904 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_1906 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepActivity_1910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_1912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_1914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_1916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_1918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_1920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_1924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_1926 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_492 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_1928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_1934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1936 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_510
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_nopt_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_1942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1948 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_1952 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1952 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_866 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_1954 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1954 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_868 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1958 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1958 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_1960 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1960 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_1962 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1962 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_1964 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1964 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_1966 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1966 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_1968 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1968 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1970 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1970 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1972 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1972 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1974 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1974 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1976 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1976 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_1978 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_1978 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_1980 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_1980 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_1982 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1982 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_1984 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1984 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1986 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1986 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_1988 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_1988 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1990 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1990 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_1992 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_1992 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_1994 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_1994 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_1996 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_1996 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_1998 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV1_1998 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2000 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV2_2000 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2002 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV3_2002 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2004 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_2004 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2006 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_2006 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2008 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2008 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2010 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2010 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2012 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_2012 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_232 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2014 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_2014 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2016 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2016 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2020 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_782 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2020 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_786 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2024 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2026 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2028 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2030 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2032 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2036 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2036 v0 = coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2038 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2038 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2042 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2042 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2044 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_CostModel_2044 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2046 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_T_2046 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2048 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_THash_2048 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2050 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_2050 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2052 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Datum_2052 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2054 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2054
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2056 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2056 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2058 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2058 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2060 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2060 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2062 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2062 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2064 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2064 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2066 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2066 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2068 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2068
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2070 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2070 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2072 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2072 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2074 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2074 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2076 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_ExUnits_2076 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2078 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2078 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2080 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2080
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_414 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2082 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2084 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2084
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2086 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_LangDepView_2086 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2088 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Language_2088 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2090 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_P1Script_2090 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2092 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_PlutusScript_2092 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2094 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV1_2094 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2096 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV2_2096 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2098 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV3_2098 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2100 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Prices_2100 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2102 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Redeemer_2102 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2104 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Script_2104 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2106 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2106 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2108 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2108 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2110 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2110 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2112 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny
d_language_2112 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2114 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_2114
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_414
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2116 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_2116 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2118 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () -> AgdaAny -> AgdaAny
d_toData_2118 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2120 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_2120 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2122 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2122 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2140 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2140 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2142 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2144 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2144 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2146 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2148 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2148 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2150 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2152 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2154 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2156 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2158 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2158 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2160 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2160
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2162 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2162 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2164
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2166 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2168 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2168 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2170 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2170 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2172 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2172 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2174 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2174 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2176 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2176 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2178 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2178 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2180 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2182 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2184 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2186 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2186
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2188 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2192 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2194 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2196 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2198 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2200 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2204 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2206 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2206 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2208 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2210 ~v0 = du_isMagmaIsomorphism_2210
du_isMagmaIsomorphism_2210 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2210 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2212 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2212 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2212 v2
du_isMagmaMonomorphism_2212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2214 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2216 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2218 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe
               MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
               (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelIsomorphism
d_isRelIsomorphism_2220 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2220 ~v0 ~v1 v2 = du_isRelIsomorphism_2220 v2
du_isRelIsomorphism_2220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2220 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2222 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2222 ~v0 ~v1 v2 = du_isRelMonomorphism_2222 v2
du_isRelMonomorphism_2222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2222 v0
  = let v1
          = MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
            (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.surjective
d_surjective_2224 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2224 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2226 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2228 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2232 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2232 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2236 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2238 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2238 ~v0 = du_isMagmaMonomorphism_2238
du_isMagmaMonomorphism_2238 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2238 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2240 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2244 ~v0 ~v1 v2 = du_isRelMonomorphism_2244 v2
du_isRelMonomorphism_2244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2244 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2246 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2248 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_2252 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584
d_body_2252 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2696 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2254 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2686 -> Bool
d_isValid_2254 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2700 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2256 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2256 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2702 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_2258 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2686 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666
d_wits_2258 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2698 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2262 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2262 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2660 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2264 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Maybe Integer
d_curTreasury_2264 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2654 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2266 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Integer
d_mint_2266 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2634 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2268 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2268 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2628 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2270 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> [Integer]
d_reqSigHash_2270 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2662 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2272 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Maybe Integer
d_scriptIntHash_2272 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2664 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2274 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2650 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2276 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2276 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2652 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2278 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2638 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Integer
d_txdonation_2280 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2646 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2282 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Integer
d_txfee_2282 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2632 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Integer
d_txid_2284 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2658 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2286 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2626 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2288 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2630 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708]
d_txprop_2290 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2644 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 -> Integer
d_txsize_2292 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2656 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2294 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2648 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2296 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2636 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2298 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2642 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2584 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2300 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2640 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2304 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2678 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_238]
d_scriptsP1_2306
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2684
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2308 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2680 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2310 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2682 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2666 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2312 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2676 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2356 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf
d_indexOf_2358 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2362 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538
d_indexOfImp_2362 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1580 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2364 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2364 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1582 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2366 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2366 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1584 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2368 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  Integer -> Integer
d_serSize_2368 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1578 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2370 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2370 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1576 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfDCert
d_indexOfDCert_2374 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] -> Maybe Integer
d_indexOfDCert_2374 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1552 (coe v0)
-- Acnt
d_Acnt_2375 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfPolicyId
d_indexOfPolicyId_2376 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_2376 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfProposal
d_indexOfProposal_2378 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  Maybe Integer
d_indexOfProposal_2378 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2380 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_2380 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfTxIn
d_indexOfTxIn_2382 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_2382 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfVote
d_indexOfVote_2384 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfVote_2384 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1560 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2386 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1564
d_HSAbstractFunctions_2386
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2457
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2195
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
