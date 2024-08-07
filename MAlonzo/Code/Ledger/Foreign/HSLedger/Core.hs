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
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_896 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_898 :: ()
d_T_898 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_900 :: ()
d_THash_900 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_902 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_902
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_904 :: ()
d_Datum_904 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_906 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_906
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_296
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_908 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_908
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_152
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_910 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_910
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_110
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_912 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_912
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_138
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_914 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_914
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
d_Dec'45'validPlutusScript_916 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_916
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_918 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_918
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_920 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_920
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_922 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_922
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
d_DecEq'45'BootstrapAddr_924 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_924
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
d_DecEq'45'CostModel_926 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_926
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_928 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_928
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
d_DecEq'45'DepositPurpose_930 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_930
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_780
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_932 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_932
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_414
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_934 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_934
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_32
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_936 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_936
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_938 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_938
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_756
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_940 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_940
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1128
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_942 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_942
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_944 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_944
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_946 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_946
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_244
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_948 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_948
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
d_DecEq'45'PParamGroup_950 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_950
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_420
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_952 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_952
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_418
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_954 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_954
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_416
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_956 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_956
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
d_DecEq'45'ScriptHash_958 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_958
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_196
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_960 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_960
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_126
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_962 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_962
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_124
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_964 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_964
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_38
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_966
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_968
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
d_DecEq'45'T_970 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_970
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_972
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_974 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_974
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_976 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_976
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
d_DecEq'45'THash_978 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_978
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_980
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_252
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_982 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_982
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1130
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_984
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_986 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_986
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_760
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_988
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_990 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_990
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_758
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_992 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_992
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_36
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_994 = ()
-- Ledger.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_996 = ()
-- Ledger.Foreign.HSLedger.Core._.Deposits
d_Deposits_998 :: ()
d_Deposits_998 = erased
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1000 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_1004 :: ()
d_Epoch_1004 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1006 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1006
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1008 :: ()
d_ExUnits_1008 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1016 = ()
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1018 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_1020 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1024 :: ()
d_GovActionID_1024 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1026 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1028 :: ()
d_GovCertEnv_1028 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_1030 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1032 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_1034 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_1036 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1040 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1040
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2846
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1042 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1042
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1044 :: () -> ()
d_HashProtected_1044 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1046 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1046
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
d_Hashable'45'PlutusScript_1048 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1048
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1050 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1050
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
d_IsMonoidHomomorphism_1056 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1058 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1060 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_1062 :: ()
d_Ix_1062 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1064 :: ()
d_THash_1064 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1068 :: ()
d_KeyPair_1068 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1070 :: ()
d_LangDepView_1070 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_1072 :: ()
d_Language_1072 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1074 :: ()
d_MemoryEstimate_1074 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1076 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_NeedsHash_1076 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_1078 :: ()
d_Network_1078 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1082 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1082
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1088 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1088
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_248
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1090 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1090
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_222
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_1092 :: ()
d_P1Script_1092 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1094 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1096 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_P1ScriptStructure'45'TL_1096
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_374
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1098 :: ()
d_PlutusScript_1098 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1104 :: ()
d_THash_1104 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1106 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_1108 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1110 = ()
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1112 :: ()
d_UpdateT_1112 = erased
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_1114 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1116 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1118 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1118
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_186
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1120 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1120
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_188
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1122 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1122
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_190
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1126 :: ()
d_PoolEnv_1126 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1128 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1130 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_1132 :: ()
d_Prices_1132 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1134 :: ()
d_ProposedPPUpdates_1134 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1136 :: ()
d_ProtVer_1136 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_1138 :: Integer
d_Quorum_1138
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1140 :: ()
d_RdmrPtr_1140 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1142 :: ()
d_Redeemer_1142 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1156 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_1160 :: ()
d_SKey_1160 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_1164 :: ()
d_Script_1164 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1166 :: ()
d_ScriptAddr_1166 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1168 :: ()
d_ScriptBaseAddr_1168 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1170 :: ()
d_ScriptBootstrapAddr_1170 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1172 :: ()
d_ScriptHash_1172 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1176 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_1180 :: ()
d_Ser_1180 = erased
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_1182 :: ()
d_Sig_1182 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_1184 :: ()
d_Slot_1184 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1186 :: Integer
d_SlotsPerEpoch'7580'_1186
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_246
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1188 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1188
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1190 :: Integer
d_StabilityWindow_1190
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_44
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1192 :: Integer
d_StabilityWindow'7580'_1192
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1194 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1194
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1196 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1196
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_192 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1198 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1198
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
d_T'45'Hashable_1200 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1200
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1202 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1202
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
d_Timelock_1206 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1208 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_1214 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_1216 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_1218 :: ()
d_TxId_1218 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_1220 :: ()
d_TxIn_1220 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_1222 :: ()
d_TxOut_1222 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1224 :: ()
d_TxOut'688'_1224 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1226 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_1228 :: ()
d_UTxO_1228 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1230 :: ()
d_Update_1230 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1234 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1236 :: ()
d_VKey_1236 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1238 :: ()
d_VKeyAddr_1238 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1240 :: ()
d_VKeyBaseAddr_1240 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1242 :: ()
d_VKeyBootstrapAddr_1242 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1246 :: ()
d_Value_1246 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1248 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1248
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1250 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1250
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1252 :: ()
d_Voter_1252 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1254 :: ()
d_Wdrl_1254 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1258 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 -> ()
d_actionWellFormed_1258 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1260 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1260
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_674
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2222 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1262 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1262
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1132
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1264 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1264
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_216
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1266 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1266
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_214
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1268 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1268
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1270 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1270
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1278 :: Integer -> Integer
d_coin_1278
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1280 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1280 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1282 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1282
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1286 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_128
d_crypto_1286
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1164
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1288 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_1288 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_804
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1296 :: Integer -> Integer
d_epoch_1296
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_40
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1298 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1298
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1312 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1314 :: Integer -> Integer
d_firstSlot_1314
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_42
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1316 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1316
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_762
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1318 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_36 -> Integer
d_getScriptHash_1318
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_178
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1320 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1320
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2728
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1322 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1322
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2744
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1324 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_226
d_globalConstants_1324
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1326 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152
d_govParams_1326
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_2076
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1328 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1328
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2222
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1330 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1330
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1332 :: Integer -> Integer
d_inject_1332
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1334 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1336 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1336
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_132
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1338 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1338
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1340 :: Integer -> Integer -> ()
d_isKeyPair_1340 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1342 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1342
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2844
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1344 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1346 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1346 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1348 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1348
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_26
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1350 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 -> ()
d_isScriptRwdAddr_1350 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1352 :: Integer -> Integer -> Integer -> ()
d_isSigned_1352 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1354 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1354 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1356 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1358 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1358 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1360 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1360
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_192
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1362 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1362
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_232
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1364 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1364
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2830
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1366 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1366
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_614
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1368 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1368
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
d_netId_1370 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1370 = coe MAlonzo.Code.Ledger.Address.du_netId_106
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1372 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1372
  = coe
      MAlonzo.Code.Ledger.Transaction.d_networkId_2220
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1376 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_1376
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
d_paramsWellFormed_1378 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> ()
d_paramsWellFormed_1378 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1380 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1380 = coe MAlonzo.Code.Ledger.Address.du_payCred_102
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1382 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_50
d_pkk_1382
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_164
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1384 :: Integer -> [Integer]
d_policies_1384
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1386 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1386
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1388 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_1388
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1390 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1390
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1392 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_ppdWellFormed_1392 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1394 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1394
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_48
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1396 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1396 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1398 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_1398
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_428
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1400 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1402 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1402
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1072
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1404 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1404
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
d_refScripts_1406 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1406
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2768
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1414 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1414
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2754
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1416 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376
d_scriptStructure_1416
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1418 :: Integer -> Integer -> Integer
d_sign_1418
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_102
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_164 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1420 :: Integer -> Integer
d_size_1420
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1422 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1422
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1424 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1424 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_104
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1426 :: Integer -> Integer
d_suc'7497'_1426
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_46
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1428 :: [Integer] -> Integer
d_sum'7515'_1428
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1430 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1430
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_236
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_428
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1432 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1432
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2104
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1434 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1434
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2734
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1436 :: Integer -> Integer
d_txidBytes_1436
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txidBytes_2218
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1438 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1438
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2762
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1440 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1440
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2748
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1442 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1442
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2820
      (coe d_HSTransactionStructure_818)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1444 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1444
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1182
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2076 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1446 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_1446 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1448 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1448 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1450 :: Integer
d_ε_1450
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
d_ℕEpochStructure_1452 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1452
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_256
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1144 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1454 :: Integer -> Integer
d_ℕtoEpoch_1454
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_202
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1504 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_reserves_1504 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_140 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1506 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_132 -> Integer
d_treasury_1506 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_138 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1510 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1510 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_646 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1512 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1512 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_644 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1516 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1516 v0 = coe MAlonzo.Code.Ledger.Address.d_net_50 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1518 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1518 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_52 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1520 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_42 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1520 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_54 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1524 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 -> Integer
d_attrsSize_1524 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_68 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1526 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1526 v0 = coe MAlonzo.Code.Ledger.Address.d_net_64 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1528 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_56 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1528 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_66 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.deposits
d_deposits_1532 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1532 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_840 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1534 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_820 -> Integer
d_epoch_1534 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_832 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1536 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pp_1536 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_834 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1538 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_votes_1538 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_836 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1540 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1540 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_838 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1544 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_DState_844
d_dState_1544 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_892 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1546 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_GState_872
d_gState_1546 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_896 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1548 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_884 ->
  MAlonzo.Code.Ledger.Certs.T_PState_860
d_pState_1548 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_894 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1574 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1574 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_856 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1576 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1576 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_854 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1578 ::
  MAlonzo.Code.Ledger.Certs.T_DState_844 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1578 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_852 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1582 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1582 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_866 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1584 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1584 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_864 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1586 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1586 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_862 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1588 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_850 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1588 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_860 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.deposits
d_deposits_1592 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1592 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_912 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1594 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1594 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_910 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1596 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_900 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_pparams_1596 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_908 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1610 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1610 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1612 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1612 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1614 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1614 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1616 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1616 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_192 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1618 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1618 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1620 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1620 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1622 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1622 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1624 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1624 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1626 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1626 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1628 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1628 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1632 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1632 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1634 ::
  MAlonzo.Code.Ledger.Certs.T_GState_872 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1634 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_878 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1638 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1638 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1640 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1640 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_882 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1642 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_870 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1642 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_878 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1662 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_1662 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_752 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1664 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  Integer
d_expiresIn_1664 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_750 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1666 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  AgdaAny
d_prevAction_1666 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_754 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1668 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_1668 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_748 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1670 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_734 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1670 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_746 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1674 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1674 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1676 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1676 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1678 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1680 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_THash_1680 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1682 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> ()
d_UpdateT_1682 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1684 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1684 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1686 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1686 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1688 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1690 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120
d_ppUpd_1690 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1692 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1692 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1694 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 -> AgdaAny -> ()
d_ppdWellFormed_1694 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1696 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1152 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1696 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1138
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1182 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1700 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_648
d_action_1700 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_722 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1702 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_1702 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_732 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1704 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> Integer
d_deposit_1704 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_728 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1706 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  Maybe Integer
d_policy_1706 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_726 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1708 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 -> AgdaAny
d_prevAction_1708 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_724 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1710 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70
d_returnAddr_1710 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_730 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1722 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_638
d_anchor_1722 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_706 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1724 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1724 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_700 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1726 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_682
d_vote_1726 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_704 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1728 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1728 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_702 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1732 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1732 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1734 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1734 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1736 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1736 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1738 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1738 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1740 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1740 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1744 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1744 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1746 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1746 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1748 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1748 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1750 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1750 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1752 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1752 ~v0 v1 = du_isMagmaMonomorphism_1752 v1
du_isMagmaMonomorphism_1752 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1752 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1754 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1754 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1756 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1756 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1758 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1758 v0
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
d_isRelIsomorphism_1760 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1760 ~v0 v1 = du_isRelIsomorphism_1760 v1
du_isRelIsomorphism_1760 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1760 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1762 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1762 ~v0 v1 = du_isRelMonomorphism_1762 v1
du_isRelMonomorphism_1762 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1762 v0
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
d_surjective_1764 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1764 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1766 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1766 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1768 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1768 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1772 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1772 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1774 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1774 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1776 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1776 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1778 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1778 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1780 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1780 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1782 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1782 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1784 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1784 ~v0 v1 = du_isRelMonomorphism_1784 v1
du_isRelMonomorphism_1784 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1784 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1786 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1786 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1788 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1788 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1792 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1792 v0
  = coe MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_98 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1794 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1794 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_102 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1796 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1796 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_100 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1798 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 -> ()
d_P1Script_1798 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1800 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1800 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1816 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_Emax_1816 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_1818 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_a_1818 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_1820 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1820 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_1822 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_b_1822 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1824 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMaxTermLength_1824 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1826 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_ccMinSize_1826 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1828 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_coinsPerUTxOByte_1828 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1830 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_collateralPercentage_1830 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1832 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1832 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_328 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1834 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepActivity_1834 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1836 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_drepDeposit_1836 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1838 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_1838 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1840 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionDeposit_1840 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1842 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_govActionLifetime_1842 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1844 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_keyDeposit_1844 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1846 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1846 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_296 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1848 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxBlockSize_1848 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_288 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1850 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxCollateralInputs_1850 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1852 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxHeaderSize_1852 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_292 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1854 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1854 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_294 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1856 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxTxSize_1856 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_290 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1858 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_maxValSize_1858 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1860 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1860 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_316
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1862 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_minUTxOValue_1862 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1864 :: MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_nopt_1864 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1866 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 -> Integer
d_poolDeposit_1866 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1868 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_1868 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_1870 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1870 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_1872 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1872 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1876 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> ()
d_UpdateT_1876 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1878 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyUpdate_1878 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1136 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1880 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1880 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1144 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1882 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 -> AgdaAny -> ()
d_ppdWellFormed_1882 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1884 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1120 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_updateGroups_1884 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1138 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__1888 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1888 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__888 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1890 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1890
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1066
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1700 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1892 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_228 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_228
d_applyPParamsUpdate_1894
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_936
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1896 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_152]
d_modifiedUpdateGroups_1896
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_872
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesEconomicGroup_1898
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_680
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesGovernanceGroup_1900
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_808
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesNetworkGroup_1902
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_616
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Bool
d_modifiesTechnicalGroup_1904
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_744
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> ()
d_paramsUpdateWellFormed_1906 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1908
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_612
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_1910 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1910 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_902 v1
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_Emax_1914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_a_1916 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_500 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1918 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_b_1920 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_502 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMaxTermLength_1922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_ccMinSize_1924 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_coinsPerUTxOByte_1926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_collateralPercentage_1928 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepActivity_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_drepDeposit_1934 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_534 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_164
d_drepThresholds_1936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_1938 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionDeposit_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_govActionLifetime_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_keyDeposit_1942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_504 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_496 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxBlockSize_1946 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_484 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_1948 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxCollateralInputs_1948 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_492 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxHeaderSize_1950 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_488 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_494 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxTxSize_1954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_486 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_maxValSize_1956 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_490 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1958 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_510
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_1960 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_minUTxOValue_1960 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_1962 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_nopt_1962 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_1964 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 -> Maybe Integer
d_poolDeposit_1964 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_506 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_1966 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206
d_poolThresholds_1966 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_1968 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1968 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_424 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1970 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_498 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_1974 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1974 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_866 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_1976 ::
  MAlonzo.Code.Ledger.Certs.T_PState_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_1976 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_868 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__1980 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__1980 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_1982 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_CostModel_1982 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_1984 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_T_1984 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_1986 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_THash_1986 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_1988 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_1988 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_1990 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Datum_1990 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_1992 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_1992 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_1994 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_1994 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_1996 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_1996 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_1998 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_1998 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2000 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2000 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2002 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2002 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2004 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2004 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2006 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2006 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2008 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2008 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2010 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_ExUnits_2010 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2012 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2012 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2014 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_LangDepView_2014 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2016 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Language_2016 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2018 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_PlutusScript_2018 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2020 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV1_2020 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2022 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV2_2022 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_188 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2024 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> AgdaAny
d_PlutusV3_2024 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_190 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2026 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Prices_2026 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2028 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 -> ()
d_Redeemer_2028 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2030 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2030 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2032 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2032 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_172 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2034 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> AgdaAny
d_language_2034 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_232 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2036 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  () -> AgdaAny -> AgdaAny
d_toData_2036 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2038 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2038 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2042 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_782 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2042 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_786 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2046 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2046 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_218 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2048 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2048 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2050 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2050 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2052 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2052 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2054 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_206 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2054 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2058 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2058 v0 = coe MAlonzo.Code.Ledger.Address.d_net_76 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2060 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2060 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_78 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2064 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2064 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2066 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_CostModel_2066 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2068 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_T_2068 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2070 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_THash_2070 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2072 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_28
d_Data'688'_2072 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_172
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2074 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Datum_2074 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2076 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2076
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
d_Dec'45'validPlutusScript_2078 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2078 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_230
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2080 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2080 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2082 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_198
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2084 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2084 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2086 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2086 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2088 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2088 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_196
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2090 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2090
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
d_DecEq'45'T_2092 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2092 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2094 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2094 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_20
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2096 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2096 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_192
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2098 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_ExUnits_2098 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2100 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2100 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_412 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2102 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2102
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
d_Hashable'45'PlutusScript_2104 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2104 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_194
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2106 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2106
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_494
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2108 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_LangDepView_2108 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2110 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Language_2110 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2112 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_P1Script_2112 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2114 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_PlutusScript_2114 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2116 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV1_2116 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2118 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV2_2118 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_188
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2120 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> AgdaAny
d_PlutusV3_2120 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_190
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2122 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Prices_2122 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2124 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Redeemer_2124 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2126 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 -> ()
d_Script_2126 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2128 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2128 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_172
              (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2130 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2130 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_36
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_172
         (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2132 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2132 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_410 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2134 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> AgdaAny
d_language_2134 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_232
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2136 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_82
d_p1s_2136
  = let v0 = d_HSTransactionStructure_818 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_414
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1164 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1436 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2138 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_104
d_ps_2138 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2140 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  () -> AgdaAny -> AgdaAny
d_toData_2140 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_236
      (coe MAlonzo.Code.Ledger.Script.d_ps_428 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2142 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_238 -> ()
d_validP1Script_2142 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2144 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_376 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2144 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2162 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2162 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2164 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2166 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2166 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2168 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2168 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2170 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2170 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2172 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2172 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2174 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2176 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2178 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2180 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2180 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2182 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2182
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2184 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2184 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2186 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2186
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2188 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2190 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2190 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2192 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2192 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2194 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2194 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2196 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2196 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2198 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2198 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2200 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2200 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2202 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2202 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2204 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2204 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2206 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2206 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2208 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2208
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2210 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2210 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2214 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2214 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2216 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2218 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2220 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2222 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2226 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2226 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2228 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2228 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2230 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2230 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2232 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2232 ~v0 = du_isMagmaIsomorphism_2232
du_isMagmaIsomorphism_2232 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2232 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2234 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2234 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2234 v2
du_isMagmaMonomorphism_2234 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2234 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2236 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2236 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2238 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2238 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2240 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2240 v0
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
d_isRelIsomorphism_2242 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2242 ~v0 ~v1 v2 = du_isRelIsomorphism_2242 v2
du_isRelIsomorphism_2242 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2242 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2244 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2244 ~v0 ~v1 v2 = du_isRelMonomorphism_2244 v2
du_isRelMonomorphism_2244 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2244 v0
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
d_surjective_2246 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2246 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2248 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2248 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2250 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2250 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2254 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2254 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2256 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2256 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2258 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2258 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2260 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2260 ~v0 = du_isMagmaMonomorphism_2260
du_isMagmaMonomorphism_2260 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2260 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2262 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2262 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2264 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2264 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2266 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2266 ~v0 ~v1 v2 = du_isRelMonomorphism_2266 v2
du_isRelMonomorphism_2266 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2266 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2268 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2268 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2270 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2270 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_2274 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608
d_body_2274 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2720 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2276 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2710 -> Bool
d_isValid_2276 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2724 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2278 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2278 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2726 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_2280 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2710 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690
d_wits_2280 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2722 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2284 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2284 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2684 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2286 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Maybe Integer
d_curTreasury_2286 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2678 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2288 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_mint_2288 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2658 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2290 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2290 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2652 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2292 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> [Integer]
d_reqSigHash_2292 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2686 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2294 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Maybe Integer
d_scriptIntHash_2294 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2688 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2296 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2296 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2674 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2298 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2298 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2676 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2300 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788]
d_txcerts_2300 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2662 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2302 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_txdonation_2302 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2670 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2304 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_txfee_2304 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2656 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2306 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_txid_2306 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2682 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2308 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2308 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2650 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2310 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2310 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2654 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2312 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708]
d_txprop_2312 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2668 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2314 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 -> Integer
d_txsize_2314 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2680 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2316 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2316 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2672 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2318 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2318 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2660 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2320 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_690]
d_txvote_2320 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2666 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2322 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2608 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2322 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2664 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2326 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2326 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2702 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2328 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_238]
d_scriptsP1_2328
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2708
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2330 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2330 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2704 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2332 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2332 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2706 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2334 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2690 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2334 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2700 (coe v0)
-- Acnt
d_Acnt_2375 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2378 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf
d_indexOf_2380 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2384 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560
d_indexOfImp_2384 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1602 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2386 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2386 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1604 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2388 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2388 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1606 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2390 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  Integer -> Integer
d_serSize_2390 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1600 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2392 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2392 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1598 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfDCert
d_indexOfDCert_2396 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_788 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_788] -> Maybe Integer
d_indexOfDCert_2396 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1574 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfPolicyId
d_indexOfPolicyId_2398 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_2398 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1580 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfProposal
d_indexOfProposal_2400 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_708] ->
  Maybe Integer
d_indexOfProposal_2400 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1584 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2402 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_70 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_2402 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1576 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfTxIn
d_indexOfTxIn_2404 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_2404 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1578 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfVote
d_indexOfVote_2406 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1560 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfVote_2406 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1582 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2408 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1586
d_HSAbstractFunctions_2408
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2487
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2225
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
