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
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
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
-- Ledger.Foreign.HSLedger.Core.Implementation._.MemoryEstimate
d_MemoryEstimate_110 :: ()
d_MemoryEstimate_110 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra
d_TokenAlgebra_112 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._∙_
d__'8729'__116 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__116 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra._≈_
d__'8776'__118 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__118 = erased
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
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_128 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_130 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_132 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value
d_Value_134 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_134 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_136 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_136
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_138 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_138 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.addValue
d_addValue_140 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_140
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coin
d_coin_142 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_142 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_146 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
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
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.monoid
d_monoid_150 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_150 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
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
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.rawMonoid
d_rawMonoid_156 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_156 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
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
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.ε
d_ε_164 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_164 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_168 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_168 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_170 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_170 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_172 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_172 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_174 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_174 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_176 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_176 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_180 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_180 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_182 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_182 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_184 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_184 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_186 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_186 ~v0 = du_isMagmaIsomorphism_186
du_isMagmaIsomorphism_186 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_186 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_188 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_188 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_188 v2
du_isMagmaMonomorphism_188 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_188 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_190 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_190 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_192 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_192 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_194 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_194 v0
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
d_isRelIsomorphism_196 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_196 ~v0 ~v1 v2 = du_isRelIsomorphism_196 v2
du_isRelIsomorphism_196 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_196 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_198 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_198 ~v0 ~v1 v2 = du_isRelMonomorphism_198 v2
du_isRelMonomorphism_198 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_198 v0
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
d_surjective_200 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_200 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_202 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_202 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_204 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_204 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_208 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_208 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_210 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_210 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_212 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_212 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_214 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_214 ~v0 = du_isMagmaMonomorphism_214
du_isMagmaMonomorphism_214 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_214 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_216 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_216 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_218 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_218 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_220 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_220 ~v0 ~v1 v2 = du_isRelMonomorphism_220 v2
du_isRelMonomorphism_220 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_220 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_222 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_222 = erased
-- Ledger.Foreign.HSLedger.Core.Implementation._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_224 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_224 = erased
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
            MAlonzo.Code.Data.Nat.Properties.d_'43''45'0'45'commutativeMonoid_3204))
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
            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
            (coe
               MAlonzo.Code.Algebra.Bundles.du_monoid_890
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
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
d_HSGlobalConstants_252
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.C_GlobalConstants'46'constructor_4951
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
      (coe
         MAlonzo.Code.Class.Show.Core.C_mkShow_18
         (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
      d_SlotsPerEpoch'7580'_36
      (coe
         MAlonzo.Code.Data.Nat.Base.C_NonZero'46'constructor_3581
         (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      d_StabilityWindow'7580'_38 d_Quorum_40 d_NetworkId_42
-- Ledger.Foreign.HSLedger.Core.HSEpochStructure
d_HSEpochStructure_254 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_HSEpochStructure_254
  = coe
      MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_264
      (coe d_HSGlobalConstants_252)
-- Ledger.Foreign.HSLedger.Core._
d___256 :: MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d___256 = coe d_HSEpochStructure_254
-- Ledger.Foreign.HSLedger.Core.HSCrypto
d_HSCrypto_258 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_HSCrypto_258
  = coe
      MAlonzo.Code.Ledger.Crypto.C_Crypto'46'constructor_2333
      d_HSPKKScheme_264
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe MAlonzo.Code.Data.Nat.Show.d_show_56))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
-- Ledger.Foreign.HSLedger.Core._.HSPKKScheme
d_HSPKKScheme_264 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_HSPKKScheme_264
  = coe
      MAlonzo.Code.Ledger.Crypto.C_PKKScheme'46'constructor_1851 addInt
      (\ v0 v1 ->
         coe
           MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
           (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)
           (coe addInt (coe v0) (coe v1)))
      erased MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
      MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
-- Ledger.Foreign.HSLedger.Core._
d___278 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d___278 = coe d_HSCrypto_258
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_286 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_290 = ()
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_304 = ()
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_306 = ()
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_320 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_324 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_324 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_326 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_326 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_328 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_328 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_330 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 -> ()
d_P1Script_330 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_332 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_332 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__336 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__336 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_338 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_CostModel_338 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_340 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_T_340 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_342 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_THash_342 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_344 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_344 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_348 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_348 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_350 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_350 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_352 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_352 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_354 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_354 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_356 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_356 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_358 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_358 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_360 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_360 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_362 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_362 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_364 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_364 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_366 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_ExUnits_366 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_368 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_368 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_370 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_LangDepView_370 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_372 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Language_372 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_374 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_PlutusScript_374 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_376 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV1_376 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_378 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV2_378 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_380 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV3_380 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_382 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Prices_382 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_386 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_386 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_388 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_388 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_390 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_390 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_392 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_392 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_394 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_394 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_396 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_396 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_398 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny
d_language_398 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_254 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_400 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  () -> AgdaAny -> AgdaAny
d_toData_400 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_258 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_402 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_402 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__406 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__406 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_408 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_CostModel_408 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_410 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_T_410 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_412 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_THash_412 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_414 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_414 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_418 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_418
  = let v0 = d___278 in
    coe
      (let v1 = d___256 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_420 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_420 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_422 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_422 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_424 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_424 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_426 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_426 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_428 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_428 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_430 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_430 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_432 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_432
  = let v0 = d___278 in
    coe
      (let v1 = d___256 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_434 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_434 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_436 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_436 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_438 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_438 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_440 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_ExUnits_440 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_442 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_442 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_444 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_444
  = let v0 = d___278 in
    coe
      (let v1 = d___256 in
       coe
         (coe
            (\ v2 ->
               MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
                 (coe
                    MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v0) (coe v1) (coe v2)))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_446 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_446 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_450 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_LangDepView_450 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_452 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Language_452 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_454 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_P1Script_454 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_456 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_PlutusScript_456 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_458 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV1_458 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_460 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV2_460 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_462 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV3_462 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_464 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Prices_464 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_468 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Script_468 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_470 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_470 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_472 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_472 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_474 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_474 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_476 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_476 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_478 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_478 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_480 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_480 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_482 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_482 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_484 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny
d_language_484 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_254
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_486 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_486
  = coe
      MAlonzo.Code.Ledger.Script.d_p1s_436 (coe d___278) (coe d___256)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_488 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_490 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () -> AgdaAny -> AgdaAny
d_toData_490 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_492 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_492 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_494 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_494 = erased
-- Ledger.Foreign.HSLedger.Core.HSScriptStructure
d_HSScriptStructure_524 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
d_HSScriptStructure_524
  = coe
      MAlonzo.Code.Ledger.Script.C_ScriptStructure'46'constructor_72971
      (coe d_hashRespectsUnion_538) (coe d_Hashable'45'Timelock_530)
      (coe d_HSP2ScriptStructure_540)
-- Ledger.Foreign.HSLedger.Core._.Hashable-Timelock
d_Hashable'45'Timelock_530
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.Hashable-Timelock"
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_538
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._.hashRespectsUnion"
-- Ledger.Foreign.HSLedger.Core._.HSP2ScriptStructure
d_HSP2ScriptStructure_540 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_HSP2ScriptStructure_540
  = coe
      MAlonzo.Code.Ledger.Script.C_PlutusStructure'46'constructor_4203
      d_Data'688'_60 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
      d_ExUnit'45'CommutativeMonoid_70
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
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558)))
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
-- Ledger.Foreign.HSLedger.Core._
d___550 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
d___550 = coe d_HSScriptStructure_524
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_558 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_558
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___550)
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_564 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_570 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_572 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_574 = ()
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_576 :: ()
d_ProtVer_576 = erased
-- Ledger.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_582 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_582
  = coe
      MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_444
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___550)
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_596 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> ()
d_paramsWellFormed_596 = erased
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_598 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_606 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_606 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_608 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_608 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_610 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_610 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_612 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_THash_612 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_614 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_UpdateT_614 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_616 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_616 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_618 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_618 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_620 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_620 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_622 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_622 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_624 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_624 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_626 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_626 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_630 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_630 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_646 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_Emax_646 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_648 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_a_648 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_650 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_650 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_652 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_b_652 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_654 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMaxTermLength_654 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_348 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_656 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMinSize_656 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_346 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_658 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_coinsPerUTxOByte_658 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_660 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_collateralPercentage_660 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_662 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_662 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_664 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepActivity_664 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_356 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_666 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepDeposit_666 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_354 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_668 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_668 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_670 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionDeposit_670 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_672 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionLifetime_672 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_350 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_674 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_keyDeposit_674 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_676 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_676 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_678 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxBlockSize_678 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_680 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxCollateralInputs_680 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_682 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxHeaderSize_682 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_684 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_684 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_686 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxTxSize_686 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_688 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxValSize_688 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_690 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_690 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_328
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_692 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_minUTxOValue_692 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_694 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_nopt_694 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_696 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_poolDeposit_696 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_698 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_698 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_700 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_700 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_702 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_702 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_706 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> ()
d_UpdateT_706 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_708 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_708 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_710 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_710 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_714 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_714 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1162 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__718 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__718 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__912 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_720
  = coe
      MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1090
      (let v0 = d_HSGlobalConstants_252 in
       coe
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
            MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
            MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
            MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
            (\ v1 ->
               coe
                 MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (\ v1 ->
               mulInt
                 (coe v1)
                 (coe
                    MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                    (coe v0)))
            (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
               (coe v0))
            (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
      (coe d___550)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_722 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_724 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyPParamsUpdate_724
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_960
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_726 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_modifiedUpdateGroups_726
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_896
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_736 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> ()
d_paramsUpdateWellFormed_736 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_744 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_Emax_744 v0 = coe MAlonzo.Code.Ledger.PParams.d_Emax_542 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_746 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_a_746 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_748 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_748 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_750 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_b_750 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_752 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMaxTermLength_752 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_564 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_754 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMinSize_754 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_756 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_coinsPerUTxOByte_756 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_758 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_collateralPercentage_758 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_546 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_760 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_760 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_548 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_762 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepActivity_762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_560 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_764 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepDeposit_764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_766 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_766 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_550 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_768 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionDeposit_768 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_770 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionLifetime_770 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_772 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_keyDeposit_772 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_774 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_774 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_776 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxBlockSize_776 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_778 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxCollateralInputs_778 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_780 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxHeaderSize_780 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_782 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_782 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_784 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxTxSize_784 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_786 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxValSize_786 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_788 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_788 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_534
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_790 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_minUTxOValue_790 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_792 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_nopt_792 v0 = coe MAlonzo.Code.Ledger.PParams.d_nopt_544 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_794 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_poolDeposit_794 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_796 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_796 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_798 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_798 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_800 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_800 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HsGovParams
d_HsGovParams_808 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176
d_HsGovParams_808
  = coe
      MAlonzo.Code.Ledger.PParams.C_GovParams'46'constructor_1162009
      (coe
         MAlonzo.Code.Ledger.PParams.C_PParamsDiff'46'constructor_1161259
         (coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_960)
         (coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_896)
         (\ v0 -> d_ppWF_818 (coe v0)))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___550))
         (coe
            MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_444
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___550))
         (coe
            MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
            (let v0 = d_HSGlobalConstants_252 in
             coe
               (coe
                  MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
                  MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
                  MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
                  MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
                  (\ v1 ->
                     coe
                       MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (\ v1 ->
                     mulInt
                       (coe v1)
                       (coe
                          MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                          (coe v0)))
                  (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
                     (coe v0))
                  (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
            (coe d___550))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1090
         (let v0 = d_HSGlobalConstants_252 in
          coe
            (coe
               MAlonzo.Code.Ledger.Types.Epoch.C_EpochStructure'46'constructor_313
               MAlonzo.Code.Data.Nat.Properties.d_'43''45''42''45'semiring_3638
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               MAlonzo.Code.Class.Show.Instances.d_Show'45'ℕ_32
               MAlonzo.Code.Interface.HasOrder.Instance.d_ℕ'45'hasDecPartialOrder_18
               MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22
               (\ v1 ->
                  coe
                    MAlonzo.Code.Data.Nat.Base.du__'47'__314 (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                       (coe v0)))
               (\ v1 ->
                  mulInt
                    (coe v1)
                    (coe
                       MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
                       (coe v0)))
               (MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
                  (coe v0))
               (\ v1 -> addInt (coe (1 :: Integer)) (coe v1))))
         (coe d___550))
-- Ledger.Foreign.HSLedger.Core._.ppWF
d_ppWF_818 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF_818 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8594''45'dec__94
              (coe
                 MAlonzo.Code.Class.Decidable.Core.d_dec_16
                 (coe
                    MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__138
                    (coe
                       MAlonzo.Code.Axiom.Set.d__'8712''63'__1590
                       MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10 erased
                       (coe
                          MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45'Maybe_142
                          (coe
                             MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
                             (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe (0 :: Integer)))
                    (coe
                       MAlonzo.Code.Axiom.Set.du_fromList_416
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1458
                          (coe MAlonzo.Code.Ledger.Set.Theory.d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                          (coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_508 (coe v0))
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                             (coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_510 (coe v0))
                             (coe
                                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                (coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_512 (coe v0))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                   (coe MAlonzo.Code.Ledger.PParams.d_maxValSize_514 (coe v0))
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                      (coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_538 (coe v0))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                         (coe
                                            MAlonzo.Code.Ledger.PParams.d_poolDeposit_530 (coe v0))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Ledger.PParams.d_collateralPercentage_546
                                               (coe v0))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                               (coe
                                                  MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_564
                                                  (coe v0))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Ledger.PParams.d_govActionLifetime_554
                                                     (coe v0))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                     (coe
                                                        MAlonzo.Code.Ledger.PParams.d_govActionDeposit_556
                                                        (coe v0))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                        (coe
                                                           MAlonzo.Code.Ledger.PParams.d_drepDeposit_558
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
d_trustMe_834
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core._._.trustMe
d_trustMe_844
  = error
      "MAlonzo Runtime Error: postulate evaluated: Ledger.Foreign.HSLedger.Core._._.trustMe"
-- Ledger.Foreign.HSLedger.Core.HSTransactionStructure
d_HSTransactionStructure_850 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d_HSTransactionStructure_850
  = coe
      MAlonzo.Code.Ledger.Transaction.C_TransactionStructure'46'constructor_13361
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
         (coe MAlonzo.Code.Data.Nat.Properties.d__'8799'__2558))
      (coe
         MAlonzo.Code.Ledger.Crypto.C_mkIsHashableSet_30
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Class.Show.Core.C_mkShow_18
            (coe (\ v0 -> seq (coe v0) (coe ("tt" :: Data.Text.Text)))))
         (coe
            MAlonzo.Code.Class.DecEq.Core.C_DecEq'46'constructor_31
            (\ v0 v1 -> coe MAlonzo.Code.Data.Unit.Properties.du__'8799'__8))
         (coe
            MAlonzo.Code.Interface.Hashable.C_Hashable'46'constructor_9
            (coe (\ v0 -> v0))))
      d_HSGlobalConstants_252 d_HSCrypto_258 d_HSEpochStructure_254
      d_HSScriptStructure_524 d_HsGovParams_808 d_tokenAlgebra_250
      (\ v0 -> v0) d_networkId_248
-- Ledger.Foreign.HSLedger.Core._
d___852 ::
  MAlonzo.Code.Ledger.Transaction.T_TransactionStructure_20
d___852 = coe d_HSTransactionStructure_850
-- Ledger.Foreign.HSLedger.Core._._+ᵉ_
d__'43''7497'__856 :: Integer -> Integer -> Integer
d__'43''7497'__856
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d__'43''7497'__210
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._._∙_
d__'8729'__858 :: Integer -> Integer -> Integer
d__'8729'__858
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d__'8729'__840
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._._≈_
d__'8776'__860 :: Integer -> Integer -> ()
d__'8776'__860 = erased
-- Ledger.Foreign.HSLedger.Core._._≤ᵗ_
d__'8804''7511'__862 :: Integer -> Integer -> ()
d__'8804''7511'__862 = erased
-- Ledger.Foreign.HSLedger.Core._._≥ᵉ_
d__'8805''7497'__864 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8805''7497'__864 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTBASE⦈_
d__'8866'_'8640''10631'_'44'CERTBASE'10632'__866 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERTS⦈_
d__'8866'_'8640''10631'_'44'CERTS'10632'__868 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] ->
  MAlonzo.Code.Ledger.Certs.T_CertState_924 -> ()
d__'8866'_'8640''10631'_'44'CERTS'10632'__868 = erased
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,CERT⦈_
d__'8866'_'8640''10631'_'44'CERT'10632'__870 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,DELEG⦈_
d__'8866'_'8640''10631'_'44'DELEG'10632'__872 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,GOVCERT⦈_
d__'8866'_'8640''10631'_'44'GOVCERT'10632'__874 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._._⊢_⇀⦇_,POOL⦈_
d__'8866'_'8640''10631'_'44'POOL'10632'__876 a0 a1 a2 a3 = ()
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_878 :: ()
d_THash_878 = erased
-- Ledger.Foreign.HSLedger.Core._.Acnt
d_Acnt_880 = ()
-- Ledger.Foreign.HSLedger.Core._.Addr
d_Addr_882 :: ()
d_Addr_882 = erased
-- Ledger.Foreign.HSLedger.Core._.Anchor
d_Anchor_884 = ()
-- Ledger.Foreign.HSLedger.Core._.AssetName
d_AssetName_886 :: ()
d_AssetName_886 = erased
-- Ledger.Foreign.HSLedger.Core._.AuxiliaryData
d_AuxiliaryData_888 :: ()
d_AuxiliaryData_888 = erased
-- Ledger.Foreign.HSLedger.Core._.BaseAddr
d_BaseAddr_890 = ()
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr
d_BootstrapAddr_892 = ()
-- Ledger.Foreign.HSLedger.Core._.CertEnv
d_CertEnv_904 = ()
-- Ledger.Foreign.HSLedger.Core._.CertState
d_CertState_906 = ()
-- Ledger.Foreign.HSLedger.Core._.CostModel
d_CostModel_910 :: ()
d_CostModel_910 = erased
-- Ledger.Foreign.HSLedger.Core._.Credential
d_Credential_912 = ()
-- Ledger.Foreign.HSLedger.Core._.DCert
d_DCert_916 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_926 = ()
-- Ledger.Foreign.HSLedger.Core._.DState
d_DState_928 = ()
-- Ledger.Foreign.HSLedger.Core._.T
d_T_930 :: ()
d_T_930 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_932 :: ()
d_THash_932 = erased
-- Ledger.Foreign.HSLedger.Core._.Dataʰ
d_Data'688'_934 :: MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_934
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Datum
d_Datum_936 :: ()
d_Datum_936 = erased
-- Ledger.Foreign.HSLedger.Core._.Dec-evalTimelock
d_Dec'45'evalTimelock_938 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'evalTimelock_938
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'evalTimelock_318
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Dec-isScript
d_Dec'45'isScript_940 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isScript_940
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isScript_158
-- Ledger.Foreign.HSLedger.Core._.Dec-isSigned
d_Dec'45'isSigned_942 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isSigned_942
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Dec'45'isSigned_116
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Dec-isVKey
d_Dec'45'isVKey_944 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'isVKey_944
  = coe MAlonzo.Code.Ledger.Address.du_Dec'45'isVKey_144
-- Ledger.Foreign.HSLedger.Core._.Dec-validP1Script
d_Dec'45'validP1Script_946 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_946
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Dec-validPlutusScript
d_Dec'45'validPlutusScript_948 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_948
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Dec-≤ᵗ
d_Dec'45''8804''7511'_950 ::
  Integer ->
  Integer -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_950
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEQ-Prices
d_DecEQ'45'Prices_952 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_952
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BaseAddr
d_DecEq'45'BaseAddr_954 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BaseAddr_954
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BaseAddr_190
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-BootstrapAddr
d_DecEq'45'BootstrapAddr_956 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'BootstrapAddr_956
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'BootstrapAddr_192
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-CostModel
d_DecEq'45'CostModel_958 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_958
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Credential
d_DecEq'45'Credential_960 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Credential_960
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'Credential_142
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DepositPurpose
d_DecEq'45'DepositPurpose_962 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DepositPurpose_962
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Certs.d_DecEq'45'DepositPurpose_820
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-DrepThresholds
d_DecEq'45'DrepThresholds_964 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'DrepThresholds_964
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'DrepThresholds_432
-- Ledger.Foreign.HSLedger.Core._.DecEq-Epoch
d_DecEq'45'Epoch_966 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Epoch_966
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Epoch_34
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ExUnits
d_DecEq'45'ExUnits_968 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_968
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-GovRole
d_DecEq'45'GovRole_970 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'GovRole_970
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'GovRole_796
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ix
d_DecEq'45'Ix_972 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ix_972
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'Ix_1186
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.DecEq-LangDepView
d_DecEq'45'LangDepView_974 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_974
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Language
d_DecEq'45'Language_976 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_976
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Netw
d_DecEq'45'Netw_978 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Netw_978
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-P1Script
d_DecEq'45'P1Script_980 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_980
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParamGroup
d_DecEq'45'PParamGroup_982 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamGroup_982
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamGroup_438
-- Ledger.Foreign.HSLedger.Core._.DecEq-PParams
d_DecEq'45'PParams_984 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParams_984
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParams_436
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-PoolThresholds
d_DecEq'45'PoolThresholds_986 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PoolThresholds_986
  = coe MAlonzo.Code.Ledger.PParams.du_DecEq'45'PoolThresholds_434
-- Ledger.Foreign.HSLedger.Core._.DecEq-RwdAddr
d_DecEq'45'RwdAddr_988 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'RwdAddr_988
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Address.du_DecEq'45'RwdAddr_194
         (coe
            MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Netw_250
            (coe
               MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe
               MAlonzo.Code.Ledger.Crypto.d_khs_200
               (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
            (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-ScriptHash
d_DecEq'45'ScriptHash_990 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ScriptHash_990
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'ScriptHash_204
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Ser
d_DecEq'45'Ser_992 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Ser_992
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Ser_132
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Sig
d_DecEq'45'Sig_994 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Sig_994
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'Sig_130
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Slot
d_DecEq'45'Slot_996 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Slot_996
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecEq'45'Slot_42
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_998 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_998
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1000 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1000
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_186
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_450
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-T
d_DecEq'45'T_1002 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1002
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1004 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1004
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1006 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1006
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1008 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1008
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_186
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_450
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-THash
d_DecEq'45'THash_1010 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1010
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Timelock
d_DecEq'45'Timelock_1012 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Timelock_1012
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_DecEq'45'Timelock_274
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-TxId
d_DecEq'45'TxId_1014 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'TxId_1014
  = coe
      MAlonzo.Code.Ledger.Transaction.d_DecEq'45'TxId_1188
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.DecEq-UpdT
d_DecEq'45'UpdT_1016 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1016
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-VDeleg
d_DecEq'45'VDeleg_1018 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'VDeleg_1018
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_DecEq'45'VDeleg_800
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Value
d_DecEq'45'Value_1020 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_1020
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DecEq-Vote
d_DecEq'45'Vote_1022 :: MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Vote_1022
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_DecEq'45'Vote_798
-- Ledger.Foreign.HSLedger.Core._.DecPo-Slot
d_DecPo'45'Slot_1024 ::
  MAlonzo.Code.Interface.HasOrder.T_HasDecPartialOrder_220
d_DecPo'45'Slot_1024
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_DecPo'45'Slot_40
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.DelegEnv
d_DelegEnv_1026 = ()
-- Ledger.Foreign.HSLedger.Core._.DepositPurpose
d_DepositPurpose_1028 = ()
-- Ledger.Foreign.HSLedger.Core._.Deposits
d_Deposits_1030 :: ()
d_Deposits_1030 = erased
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds
d_DrepThresholds_1032 = ()
-- Ledger.Foreign.HSLedger.Core._.Epoch
d_Epoch_1036 :: ()
d_Epoch_1036 = erased
-- Ledger.Foreign.HSLedger.Core._.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_1038 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_1038
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ExUnits
d_ExUnits_1040 :: ()
d_ExUnits_1040 = erased
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1048 = ()
-- Ledger.Foreign.HSLedger.Core._.GState
d_GState_1050 = ()
-- Ledger.Foreign.HSLedger.Core._.GovAction
d_GovAction_1052 = ()
-- Ledger.Foreign.HSLedger.Core._.GovActionID
d_GovActionID_1056 :: ()
d_GovActionID_1056 = erased
-- Ledger.Foreign.HSLedger.Core._.GovActionState
d_GovActionState_1058 = ()
-- Ledger.Foreign.HSLedger.Core._.GovCertEnv
d_GovCertEnv_1060 :: ()
d_GovCertEnv_1060 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams
d_GovParams_1062 = ()
-- Ledger.Foreign.HSLedger.Core._.GovProposal
d_GovProposal_1064 = ()
-- Ledger.Foreign.HSLedger.Core._.GovRole
d_GovRole_1066 = ()
-- Ledger.Foreign.HSLedger.Core._.GovVote
d_GovVote_1068 = ()
-- Ledger.Foreign.HSLedger.Core._.HasCoin-TxOut
d_HasCoin'45'TxOut_1072 ::
  MAlonzo.Code.Ledger.Interface.HasCoin.T_HasCoin_10
d_HasCoin'45'TxOut_1072
  = coe
      MAlonzo.Code.Ledger.Transaction.d_HasCoin'45'TxOut_2962
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.Hash-Timelock
d_Hash'45'Timelock_1074 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_1074
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.HashProtected
d_HashProtected_1076 :: () -> ()
d_HashProtected_1076 = erased
-- Ledger.Foreign.HSLedger.Core._.Hashable-P1Script
d_Hashable'45'P1Script_1078 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1078
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (let v3
                   = MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0) in
             coe
               (coe
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
                  (coe
                     MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                     (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-PlutusScript
d_Hashable'45'PlutusScript_1080 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_1080
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Hashable-Script
d_Hashable'45'Script_1082 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_1082
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism
d_IsMonoidHomomorphism_1088 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism
d_IsMonoidIsomorphism_1090 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism
d_IsMonoidMonomorphism_1092 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.Ix
d_Ix_1094 :: ()
d_Ix_1094 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1096 :: ()
d_THash_1096 = erased
-- Ledger.Foreign.HSLedger.Core._.KeyPair
d_KeyPair_1100 :: ()
d_KeyPair_1100 = erased
-- Ledger.Foreign.HSLedger.Core._.LangDepView
d_LangDepView_1102 :: ()
d_LangDepView_1102 = erased
-- Ledger.Foreign.HSLedger.Core._.Language
d_Language_1104 :: ()
d_Language_1104 = erased
-- Ledger.Foreign.HSLedger.Core._.MemoryEstimate
d_MemoryEstimate_1106 :: ()
d_MemoryEstimate_1106 = erased
-- Ledger.Foreign.HSLedger.Core._.NeedsHash
d_NeedsHash_1108 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_NeedsHash_1108 = erased
-- Ledger.Foreign.HSLedger.Core._.Network
d_Network_1110 :: ()
d_Network_1110 = erased
-- Ledger.Foreign.HSLedger.Core._.NetworkId
d_NetworkId_1114 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_NetworkId_1114
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NetworkId_262
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.NonZero-SlotsPerEpochᶜ
d_NonZero'45'SlotsPerEpoch'7580'_1120 ::
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112
d_NonZero'45'SlotsPerEpoch'7580'_1120
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_NonZero'45'SlotsPerEpoch'7580'_256
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Number-Epoch
d_Number'45'Epoch_1122 ::
  MAlonzo.Code.Agda.Builtin.FromNat.T_Number_10
d_Number'45'Epoch_1122
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Number'45'Epoch_226
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.P1Script
d_P1Script_1124 :: ()
d_P1Script_1124 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure
d_P1ScriptStructure_1126 = ()
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure-TL
d_P1ScriptStructure'45'TL_1128 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_P1ScriptStructure'45'TL_1128
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_P1ScriptStructure'45'TL_396
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PlutusScript
d_PlutusScript_1130 :: ()
d_PlutusScript_1130 = erased
-- Ledger.Foreign.HSLedger.Core._.THash
d_THash_1136 :: ()
d_THash_1136 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamGroup
d_PParamGroup_1138 = ()
-- Ledger.Foreign.HSLedger.Core._.PParams
d_PParams_1140 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff
d_PParamsDiff_1142 = ()
-- Ledger.Foreign.HSLedger.Core._.UpdateT
d_UpdateT_1144 :: ()
d_UpdateT_1144 = erased
-- Ledger.Foreign.HSLedger.Core._.PState
d_PState_1146 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure
d_PlutusStructure_1148 = ()
-- Ledger.Foreign.HSLedger.Core._.PlutusV1
d_PlutusV1_1150 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV1_1150
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV1_200
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV2
d_PlutusV2_1152 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV2_1152
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV2_202
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PlutusV3
d_PlutusV3_1154 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_PlutusV3_1154
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_PlutusV3_204
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.PoolEnv
d_PoolEnv_1158 :: ()
d_PoolEnv_1158 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams
d_PoolParams_1160 = ()
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds
d_PoolThresholds_1162 = ()
-- Ledger.Foreign.HSLedger.Core._.Prices
d_Prices_1164 :: ()
d_Prices_1164 = erased
-- Ledger.Foreign.HSLedger.Core._.ProposedPPUpdates
d_ProposedPPUpdates_1166 :: ()
d_ProposedPPUpdates_1166 = erased
-- Ledger.Foreign.HSLedger.Core._.ProtVer
d_ProtVer_1168 :: ()
d_ProtVer_1168 = erased
-- Ledger.Foreign.HSLedger.Core._.Quorum
d_Quorum_1170 :: Integer
d_Quorum_1170
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Quorum_260
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.RdmrPtr
d_RdmrPtr_1172 :: ()
d_RdmrPtr_1172 = erased
-- Ledger.Foreign.HSLedger.Core._.Redeemer
d_Redeemer_1174 :: ()
d_Redeemer_1174 = erased
-- Ledger.Foreign.HSLedger.Core._.RwdAddr
d_RwdAddr_1188 = ()
-- Ledger.Foreign.HSLedger.Core._.SKey
d_SKey_1192 :: ()
d_SKey_1192 = erased
-- Ledger.Foreign.HSLedger.Core._.Script
d_Script_1196 :: ()
d_Script_1196 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptAddr
d_ScriptAddr_1198 :: ()
d_ScriptAddr_1198 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBaseAddr
d_ScriptBaseAddr_1200 :: ()
d_ScriptBaseAddr_1200 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptBootstrapAddr
d_ScriptBootstrapAddr_1202 :: ()
d_ScriptBootstrapAddr_1202 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptHash
d_ScriptHash_1204 :: ()
d_ScriptHash_1204 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure
d_ScriptStructure_1208 = ()
-- Ledger.Foreign.HSLedger.Core._.Ser
d_Ser_1212 :: ()
d_Ser_1212 = erased
-- Ledger.Foreign.HSLedger.Core._.Show-CostModel
d_Show'45'CostModel_1214 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_1214
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-Credential
d_Show'45'Credential_1216 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential_1216 v0 v1 v2
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'Credential_206 v1 v2
-- Ledger.Foreign.HSLedger.Core._.Show-Credential×Coin
d_Show'45'Credential'215'Coin_1218 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Credential'215'Coin_1218 v0 v1 v2
  = coe
      MAlonzo.Code.Ledger.Address.du_Show'45'Credential'215'Coin_210 v1
      v2
-- Ledger.Foreign.HSLedger.Core._.Show-DrepThresholds
d_Show'45'DrepThresholds_1220 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'DrepThresholds_1220
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'DrepThresholds_440
-- Ledger.Foreign.HSLedger.Core._.Show-Epoch
d_Show'45'Epoch_1222 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Epoch_1222
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Epoch_36
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-ExUnits
d_Show'45'ExUnits_1224 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_1224
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-Network
d_Show'45'Network_1226 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Network_1226
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Show'45'Network_252
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-PParams
d_Show'45'PParams_1228 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PParams_1228
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_Show'45'PParams_444
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-PoolThresholds
d_Show'45'PoolThresholds_1230 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'PoolThresholds_1230
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'PoolThresholds_442
-- Ledger.Foreign.HSLedger.Core._.Show-Prices
d_Show'45'Prices_1232 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_1232
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-ProtVer
d_Show'45'ProtVer_1234 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ProtVer_1234
  = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ProtVer_156
-- Ledger.Foreign.HSLedger.Core._.Show-RwdAddr
d_Show'45'RwdAddr_1236 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'RwdAddr_1236
  = coe MAlonzo.Code.Ledger.Address.du_Show'45'RwdAddr_208
-- Ledger.Foreign.HSLedger.Core._.Show-ScriptHash
d_Show'45'ScriptHash_1238 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ScriptHash_1238
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'ScriptHash_206
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1240 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1240
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1242 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1242
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1244 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1244
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_186
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_450
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.Show-THash
d_Show'45'THash_1246 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1246
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.Show-ℚ
d_Show'45'ℚ_1248 :: MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℚ_1248 = coe MAlonzo.Code.Ledger.PParams.du_Show'45'ℚ_426
-- Ledger.Foreign.HSLedger.Core._.Sig
d_Sig_1250 :: ()
d_Sig_1250 = erased
-- Ledger.Foreign.HSLedger.Core._.Slot
d_Slot_1252 :: ()
d_Slot_1252 = erased
-- Ledger.Foreign.HSLedger.Core._.SlotsPerEpochᶜ
d_SlotsPerEpoch'7580'_1254 :: Integer
d_SlotsPerEpoch'7580'_1254
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_SlotsPerEpoch'7580'_254
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Slotʳ
d_Slot'691'_1256 :: MAlonzo.Code.Algebra.Bundles.T_Semiring_2022
d_Slot'691'_1256
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_Slot'691'_30
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindow
d_StabilityWindow_1258 :: Integer
d_StabilityWindow_1258
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow_48
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.StabilityWindowᶜ
d_StabilityWindow'7580'_1260 :: Integer
d_StabilityWindow'7580'_1260
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_StabilityWindow'7580'_258
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1262 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1262
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1264 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1264
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_khs_200 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1266 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1266
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Script.d_Data'688'_186
                 (coe
                    MAlonzo.Code.Ledger.Script.d_ps_450
                    (coe
                       MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
                       (coe v0))) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
            (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.T-Hashable
d_T'45'Hashable_1268 ::
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1268
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.T-isHashable
d_T'45'isHashable_1270 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_1270
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
         (coe
            MAlonzo.Code.Ledger.Script.d_Data'688'_186
            (coe
               MAlonzo.Code.Ledger.Script.d_ps_450
               (coe
                  MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))))
-- Ledger.Foreign.HSLedger.Core._.Timelock
d_Timelock_1274 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra
d_TokenAlgebra_1276 = ()
-- Ledger.Foreign.HSLedger.Core._.Tx
d_Tx_1282 = ()
-- Ledger.Foreign.HSLedger.Core._.TxBody
d_TxBody_1284 = ()
-- Ledger.Foreign.HSLedger.Core._.TxId
d_TxId_1286 :: ()
d_TxId_1286 = erased
-- Ledger.Foreign.HSLedger.Core._.TxIn
d_TxIn_1288 :: ()
d_TxIn_1288 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOut
d_TxOut_1290 :: ()
d_TxOut_1290 = erased
-- Ledger.Foreign.HSLedger.Core._.TxOutʰ
d_TxOut'688'_1292 :: ()
d_TxOut'688'_1292 = erased
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses
d_TxWitnesses_1294 = ()
-- Ledger.Foreign.HSLedger.Core._.UTxO
d_UTxO_1296 :: ()
d_UTxO_1296 = erased
-- Ledger.Foreign.HSLedger.Core._.Update
d_Update_1298 :: ()
d_Update_1298 = erased
-- Ledger.Foreign.HSLedger.Core._.VDeleg
d_VDeleg_1302 = ()
-- Ledger.Foreign.HSLedger.Core._.VKey
d_VKey_1304 :: ()
d_VKey_1304 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyAddr
d_VKeyAddr_1306 :: ()
d_VKeyAddr_1306 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBaseAddr
d_VKeyBaseAddr_1308 :: ()
d_VKeyBaseAddr_1308 = erased
-- Ledger.Foreign.HSLedger.Core._.VKeyBootstrapAddr
d_VKeyBootstrapAddr_1310 :: ()
d_VKeyBootstrapAddr_1310 = erased
-- Ledger.Foreign.HSLedger.Core._.Value
d_Value_1314 :: ()
d_Value_1314 = erased
-- Ledger.Foreign.HSLedger.Core._.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_1316 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_1316
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_1318 ::
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_1318
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Voter
d_Voter_1320 :: ()
d_Voter_1320 = erased
-- Ledger.Foreign.HSLedger.Core._.Wdrl
d_Wdrl_1322 :: ()
d_Wdrl_1322 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed
d_actionWellFormed_1326 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 -> ()
d_actionWellFormed_1326 = erased
-- Ledger.Foreign.HSLedger.Core._.actionWellFormed?
d_actionWellFormed'63'_1328 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_actionWellFormed'63'_1328
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.GovernanceActions.d_actionWellFormed'63'_714
         (coe MAlonzo.Code.Ledger.Transaction.d_govStructure_2338 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.adHashingScheme
d_adHashingScheme_1330 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_adHashingScheme_1330
  = coe
      MAlonzo.Code.Ledger.Transaction.d_adHashingScheme_1190
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.addEpoch
d_addEpoch_1332 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addEpoch_1332
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addEpoch_220
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addSlot
d_addSlot_1334 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addSlot_1334
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_addSlot_218
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.addValue
d_addValue_1336 :: MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_1336
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.applyUpdate
d_applyUpdate_1338 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_1338
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.coin
d_coin_1346 :: Integer -> Integer
d_coin_1346
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.coin-inject-lemma
d_coin'45'inject'45'lemma_1348 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_1348 = erased
-- Ledger.Foreign.HSLedger.Core._.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_1350 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_1350
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.crypto
d_crypto_1354 :: MAlonzo.Code.Ledger.Crypto.T_Crypto_134
d_crypto_1354
  = coe
      MAlonzo.Code.Ledger.Transaction.d_crypto_1226
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.cwitness
d_cwitness_1356 ::
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_cwitness_1356 = coe MAlonzo.Code.Ledger.Certs.d_cwitness_844
-- Ledger.Foreign.HSLedger.Core._.epoch
d_epoch_1364 :: Integer -> Integer
d_epoch_1364
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_epoch_44
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.epochStructure
d_epochStructure_1366 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_epochStructure_1366
  = coe
      MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.evalTimelock
d_evalTimelock_1380 a0 a1 a2 = ()
-- Ledger.Foreign.HSLedger.Core._.firstSlot
d_firstSlot_1382 :: Integer -> Integer
d_firstSlot_1382
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_firstSlot_46
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.getDRepVote
d_getDRepVote_1384 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_getDRepVote_1384
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_getDRepVote_802
-- Ledger.Foreign.HSLedger.Core._.getScriptHash
d_getScriptHash_1386 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_isScript_42 -> Integer
d_getScriptHash_1386
  = coe MAlonzo.Code.Ledger.Address.du_getScriptHash_184
-- Ledger.Foreign.HSLedger.Core._.getValue
d_getValue_1388 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue_1388
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue_2844
-- Ledger.Foreign.HSLedger.Core._.getValueʰ
d_getValue'688'_1390 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_getValue'688'_1390
  = coe MAlonzo.Code.Ledger.Transaction.du_getValue'688'_2860
-- Ledger.Foreign.HSLedger.Core._.globalConstants
d_globalConstants_1392 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_GlobalConstants_230
d_globalConstants_1392
  = coe
      MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.govParams
d_govParams_1394 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176
d_govParams_1394
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govParams_2190
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.govStructure
d_govStructure_1396 ::
  MAlonzo.Code.Ledger.Types.GovStructure.T_GovStructure_6
d_govStructure_1396
  = coe
      MAlonzo.Code.Ledger.Transaction.d_govStructure_2338
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.hashRespectsUnion
d_hashRespectsUnion_1398 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_1398
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.inject
d_inject_1400 :: Integer -> Integer
d_inject_1400
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr
d_isBootstrapAddr_1402 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isBootstrapAddr?
d_isBootstrapAddr'63'_1404 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_isBootstrapAddr'63'_1404
  = coe MAlonzo.Code.Ledger.Address.du_isBootstrapAddr'63'_138
-- Ledger.Foreign.HSLedger.Core._.isKeyHash
d_isKeyHash_1406 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> ()
d_isKeyHash_1406 = erased
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObj
d_isKeyHashObj_1408 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isKeyHashObj_1408
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj_22
-- Ledger.Foreign.HSLedger.Core._.isKeyHashObjᵇ
d_isKeyHashObj'7495'_1410 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Bool
d_isKeyHashObj'7495'_1410
  = coe MAlonzo.Code.Ledger.Address.du_isKeyHashObj'7495'_26
-- Ledger.Foreign.HSLedger.Core._.isKeyPair
d_isKeyPair_1412 :: Integer -> Integer -> ()
d_isKeyPair_1412 = erased
-- Ledger.Foreign.HSLedger.Core._.isP2Script
d_isP2Script_1414 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Bool
d_isP2Script_1414
  = coe MAlonzo.Code.Ledger.Transaction.du_isP2Script_2960
-- Ledger.Foreign.HSLedger.Core._.isScript
d_isScript_1416 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isScriptAddr
d_isScriptAddr_1418 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isScriptAddr_1418 = erased
-- Ledger.Foreign.HSLedger.Core._.isScriptObj
d_isScriptObj_1420 ::
  MAlonzo.Code.Ledger.Address.T_Credential_16 -> Maybe Integer
d_isScriptObj_1420
  = coe MAlonzo.Code.Ledger.Address.du_isScriptObj_32
-- Ledger.Foreign.HSLedger.Core._.isScriptRwdAddr
d_isScriptRwdAddr_1422 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 -> ()
d_isScriptRwdAddr_1422 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned
d_isSigned_1424 :: Integer -> Integer -> Integer -> ()
d_isSigned_1424 = erased
-- Ledger.Foreign.HSLedger.Core._.isSigned-correct
d_isSigned'45'correct_1426 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isSigned'45'correct_1426 = erased
-- Ledger.Foreign.HSLedger.Core._.isVKey
d_isVKey_1428 a0 = ()
-- Ledger.Foreign.HSLedger.Core._.isVKeyAddr
d_isVKeyAddr_1430 :: MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> ()
d_isVKeyAddr_1430 = erased
-- Ledger.Foreign.HSLedger.Core._.khs
d_khs_1432 :: MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_khs_1432
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_khs_200
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.language
d_language_1434 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_language_1434
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_language_254
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.lookupScriptHash
d_lookupScriptHash_1436 ::
  Integer ->
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_lookupScriptHash_1436
  = coe
      MAlonzo.Code.Ledger.Transaction.d_lookupScriptHash_2946
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.maximum
d_maximum_1438 ::
  [MAlonzo.Code.Data.Rational.Base.T_ℚ_6] ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_maximum_1438
  = coe MAlonzo.Code.Ledger.GovernanceActions.du_maximum_654
-- Ledger.Foreign.HSLedger.Core._.monoid
d_monoid_1440 :: MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_1440
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.du_monoid_890
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.netId
d_netId_1442 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_netId_1442 = coe MAlonzo.Code.Ledger.Address.du_netId_112
-- Ledger.Foreign.HSLedger.Core._.networkId
d_networkId_1444 :: MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_networkId_1444
  = coe
      MAlonzo.Code.Ledger.Transaction.d_networkId_2336
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.p1s
d_p1s_1448 :: MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_1448
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_436
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.paramsWellFormed
d_paramsWellFormed_1450 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> ()
d_paramsWellFormed_1450 = erased
-- Ledger.Foreign.HSLedger.Core._.payCred
d_payCred_1452 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_payCred_1452 = coe MAlonzo.Code.Ledger.Address.du_payCred_108
-- Ledger.Foreign.HSLedger.Core._.pkk
d_pkk_1454 :: MAlonzo.Code.Ledger.Crypto.T_PKKScheme_56
d_pkk_1454
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_pkk_172
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.policies
d_policies_1456 :: Integer -> [Integer]
d_policies_1456
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppHashingScheme
d_ppHashingScheme_1458 ::
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1458
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppUpd
d_ppUpd_1460 :: MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_1460
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
         (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ppWF?
d_ppWF'63'_1462 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1462
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.ppdWellFormed
d_ppdWellFormed_1464 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> ()
d_ppdWellFormed_1464 = erased
-- Ledger.Foreign.HSLedger.Core._.preoEpoch
d_preoEpoch_1466 ::
  MAlonzo.Code.Interface.HasOrder.T_HasPreorder_18
d_preoEpoch_1466
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_preoEpoch_52
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.property
d_property_1468 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1468 = erased
-- Ledger.Foreign.HSLedger.Core._.ps
d_ps_1470 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_1470
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_ps_450
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow
d_pvCanFollow_1472 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.pvCanFollow?
d_pvCanFollow'63'_1474 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_pvCanFollow'63'_1474
  = coe MAlonzo.Code.Ledger.PParams.du_pvCanFollow'63'_1096
-- Ledger.Foreign.HSLedger.Core._.rawMonoid
d_rawMonoid_1476 :: MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_1476
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0) in
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
d_refScripts_1478 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_refScripts_1478
  = coe
      MAlonzo.Code.Ledger.Transaction.d_refScripts_2884
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.scriptOuts
d_scriptOuts_1486 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_scriptOuts_1486
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptOuts_2870
-- Ledger.Foreign.HSLedger.Core._.scriptStructure
d_scriptStructure_1488 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398
d_scriptStructure_1488
  = coe
      MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.sign
d_sign_1490 :: Integer -> Integer -> Integer
d_sign_1490
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Ledger.Crypto.d_sign_108
            (coe MAlonzo.Code.Ledger.Crypto.d_pkk_172 (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.size
d_size_1492 :: Integer -> Integer
d_size_1492
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_size_210
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.specialAsset
d_specialAsset_1494 :: MAlonzo.Code.Agda.Builtin.String.T_String_6
d_specialAsset_1494
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.stakeCred
d_stakeCred_1496 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  Maybe MAlonzo.Code.Ledger.Address.T_Credential_16
d_stakeCred_1496 = coe MAlonzo.Code.Ledger.Address.du_stakeCred_110
-- Ledger.Foreign.HSLedger.Core._.sucᵉ
d_suc'7497'_1498 :: Integer -> Integer
d_suc'7497'_1498
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_suc'7497'_50
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.sumᵛ
d_sum'7515'_1500 :: [Integer] -> Integer
d_sum'7515'_1500
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
         (coe MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.toData
d_toData_1502 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_toData_1502
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_toData_258
         (coe
            MAlonzo.Code.Ledger.Script.d_ps_450
            (coe
               MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.tokenAlgebra
d_tokenAlgebra_1504 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8
d_tokenAlgebra_1504
  = coe
      MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.txOutHash
d_txOutHash_1506 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txOutHash_1506
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txOutHash_2850
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.txidBytes
d_txidBytes_1508 :: Integer -> Integer
d_txidBytes_1508
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txidBytes_2334
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.txinsScript
d_txinsScript_1510 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsScript_1510
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsScript_2878
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.txinsVKey
d_txinsVKey_1512 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txinsVKey_1512
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txinsVKey_2864
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.txscripts
d_txscripts_1514 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_txscripts_1514
  = coe
      MAlonzo.Code.Ledger.Transaction.d_txscripts_2936
      (coe d_HSTransactionStructure_850)
-- Ledger.Foreign.HSLedger.Core._.updateGroups
d_updateGroups_1516 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_1516
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
         (coe
            MAlonzo.Code.Ledger.PParams.d_ppUpd_1208
            (coe MAlonzo.Code.Ledger.Transaction.d_govParams_2190 (coe v0))))
-- Ledger.Foreign.HSLedger.Core._.validP1Script
d_validP1Script_1518 ::
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_1518 = erased
-- Ledger.Foreign.HSLedger.Core._.validPlutusScript
d_validPlutusScript_1520 ::
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> ()
d_validPlutusScript_1520 = erased
-- Ledger.Foreign.HSLedger.Core._.ε
d_ε_1522 :: Integer
d_ε_1522
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1
             = MAlonzo.Code.Ledger.Transaction.d_tokenAlgebra_2220 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Bundles.d_ε_842
            (coe
               MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
               (coe v1))))
-- Ledger.Foreign.HSLedger.Core._.ℕEpochStructure
d_ℕEpochStructure_1524 ::
  MAlonzo.Code.Ledger.Types.Epoch.T_EpochStructure_6
d_ℕEpochStructure_1524
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕEpochStructure_264
         (coe
            MAlonzo.Code.Ledger.Transaction.d_globalConstants_1204 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ℕtoEpoch
d_ℕtoEpoch_1526 :: Integer -> Integer
d_ℕtoEpoch_1526
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Types.Epoch.d_ℕtoEpoch_206
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.Acnt.reserves
d_reserves_1576 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_reserves_1576 v0
  = coe MAlonzo.Code.Ledger.PParams.d_reserves_150 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Acnt.treasury
d_treasury_1578 ::
  MAlonzo.Code.Ledger.PParams.T_Acnt_142 -> Integer
d_treasury_1578 v0
  = coe MAlonzo.Code.Ledger.PParams.d_treasury_148 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.hash
d_hash_1582 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_hash_1582 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_hash_686 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Anchor.url
d_url_1584 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678 ->
  MAlonzo.Code.Agda.Builtin.String.T_String_6
d_url_1584 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_url_684 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.net
d_net_1588 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1588 v0 = coe MAlonzo.Code.Ledger.Address.d_net_56 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.pay
d_pay_1590 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1590 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_58 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BaseAddr.stake
d_stake_1592 ::
  MAlonzo.Code.Ledger.Address.T_BaseAddr_48 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_1592 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_60 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.attrsSize
d_attrsSize_1596 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 -> Integer
d_attrsSize_1596 v0
  = coe MAlonzo.Code.Ledger.Address.d_attrsSize_74 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.net
d_net_1598 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_1598 v0 = coe MAlonzo.Code.Ledger.Address.d_net_70 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.BootstrapAddr.pay
d_pay_1600 ::
  MAlonzo.Code.Ledger.Address.T_BootstrapAddr_62 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_pay_1600 v0 = coe MAlonzo.Code.Ledger.Address.d_pay_72 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.deposits
d_deposits_1604 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1604 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_880 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.epoch
d_epoch_1606 :: MAlonzo.Code.Ledger.Certs.T_CertEnv_860 -> Integer
d_epoch_1606 v0
  = coe MAlonzo.Code.Ledger.Certs.d_epoch_872 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.pp
d_pp_1608 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pp_1608 v0 = coe MAlonzo.Code.Ledger.Certs.d_pp_874 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.votes
d_votes_1610 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_votes_1610 v0
  = coe MAlonzo.Code.Ledger.Certs.d_votes_876 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertEnv.wdrls
d_wdrls_1612 ::
  MAlonzo.Code.Ledger.Certs.T_CertEnv_860 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_wdrls_1612 v0
  = coe MAlonzo.Code.Ledger.Certs.d_wdrls_878 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.dState
d_dState_1616 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_DState_884
d_dState_1616 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dState_932 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.gState
d_gState_1618 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_GState_912
d_gState_1618 v0
  = coe MAlonzo.Code.Ledger.Certs.d_gState_936 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.CertState.pState
d_pState_1620 ::
  MAlonzo.Code.Ledger.Certs.T_CertState_924 ->
  MAlonzo.Code.Ledger.Certs.T_PState_900
d_pState_1620 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pState_934 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1646 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1646 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewards_896 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1648 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1648 v0
  = coe MAlonzo.Code.Ledger.Certs.d_stakeDelegs_894 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1650 ::
  MAlonzo.Code.Ledger.Certs.T_DState_884 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1650 v0
  = coe MAlonzo.Code.Ledger.Certs.d_voteDelegs_892 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.deposits
d_deposits_1654 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1654 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_906 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.rewards
d_rewards_1656 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rewards_1656 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_rewards_904 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.stakeDelegs
d_stakeDelegs_1658 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_stakeDelegs_1658 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_stakeDelegs_902 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DState.voteDelegs
d_voteDelegs_1660 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_DState_890 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voteDelegs_1660 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_voteDelegs_900 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.deposits
d_deposits_1664 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1664 v0
  = coe MAlonzo.Code.Ledger.Certs.d_deposits_952 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pools
d_pools_1666 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_1666 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_950 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DelegEnv.pparams
d_pparams_1668 ::
  MAlonzo.Code.Ledger.Certs.T_DelegEnv_940 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_pparams_1668 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pparams_948 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P1
d_P1_1682 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P1_1682 v0 = coe MAlonzo.Code.Ledger.PParams.d_P1_198 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2a
d_P2a_1684 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2a_1684 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2a_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P2b
d_P2b_1686 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P2b_1686 v0 = coe MAlonzo.Code.Ledger.PParams.d_P2b_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P3
d_P3_1688 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P3_1688 v0 = coe MAlonzo.Code.Ledger.PParams.d_P3_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P4
d_P4_1690 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P4_1690 v0 = coe MAlonzo.Code.Ledger.PParams.d_P4_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5a
d_P5a_1692 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5a_1692 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5a_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5b
d_P5b_1694 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5b_1694 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5b_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5c
d_P5c_1696 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5c_1696 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5c_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P5d
d_P5d_1698 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P5d_1698 v0 = coe MAlonzo.Code.Ledger.PParams.d_P5d_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.DrepThresholds.P6
d_P6_1700 ::
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_P6_1700 v0 = coe MAlonzo.Code.Ledger.PParams.d_P6_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1704 ::
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1704 v0
  = coe MAlonzo.Code.Ledger.Certs.d_ccHotKeys_920 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1706 ::
  MAlonzo.Code.Ledger.Certs.T_GState_912 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1706 v0
  = coe MAlonzo.Code.Ledger.Certs.d_dreps_918 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.ccHotKeys
d_ccHotKeys_1710 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_ccHotKeys_1710 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_ccHotKeys_920 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.deposits
d_deposits_1712 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deposits_1712 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_deposits_922 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GState.dreps
d_dreps_1714 ::
  MAlonzo.Code.Ledger.Certs.Haskell.T_GState_910 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dreps_1714 v0
  = coe MAlonzo.Code.Ledger.Certs.Haskell.d_dreps_918 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.action
d_action_1734 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_action_1734 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_792 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.expiresIn
d_expiresIn_1736 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  Integer
d_expiresIn_1736 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_expiresIn_790 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.prevAction
d_prevAction_1738 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  AgdaAny
d_prevAction_1738 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_794 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.returnAddr
d_returnAddr_1740 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1740 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_788 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovActionState.votes
d_votes_1742 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovActionState_774 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_votes_1742 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_votes_786 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-T
d_DecEq'45'T_1746 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_1746 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-THash
d_DecEq'45'THash_1748 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_1748 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.DecEq-UpdT
d_DecEq'45'UpdT_1750 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'UpdT_1750 v0
  = coe MAlonzo.Code.Ledger.PParams.d_DecEq'45'UpdT_1236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.THash
d_THash_1752 :: MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_THash_1752 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.UpdateT
d_UpdateT_1754 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> ()
d_UpdateT_1754 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.Show-THash
d_Show'45'THash_1756 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_1756 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.T-Hashable
d_T'45'Hashable_1758 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_1758 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
      (coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.applyUpdate
d_applyUpdate_1760 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_1760 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppHashingScheme
d_ppHashingScheme_1762 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_ppHashingScheme_1762 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppHashingScheme_1222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppUpd
d_ppUpd_1764 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144
d_ppUpd_1764 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppWF?
d_ppWF'63'_1766 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1766 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovParams.ppdWellFormed
d_ppdWellFormed_1768 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 -> AgdaAny -> ()
d_ppdWellFormed_1768 = erased
-- Ledger.Foreign.HSLedger.Core._.GovParams.updateGroups
d_updateGroups_1770 ::
  MAlonzo.Code.Ledger.PParams.T_GovParams_1176 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_1770 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_updateGroups_1162
      (coe MAlonzo.Code.Ledger.PParams.d_ppUpd_1208 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.GovProposal.action
d_action_1774 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovAction_688
d_action_1774 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_action_762 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.anchor
d_anchor_1776 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678
d_anchor_1776 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_772 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.deposit
d_deposit_1778 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> Integer
d_deposit_1778 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_deposit_768 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.policy
d_policy_1780 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  Maybe Integer
d_policy_1780 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_policy_766 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.prevAction
d_prevAction_1782 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 -> AgdaAny
d_prevAction_1782 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_prevAction_764 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovProposal.returnAddr
d_returnAddr_1784 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76
d_returnAddr_1784 v0
  = coe
      MAlonzo.Code.Ledger.GovernanceActions.d_returnAddr_770 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.anchor
d_anchor_1796 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  Maybe MAlonzo.Code.Ledger.GovernanceActions.T_Anchor_678
d_anchor_1796 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_anchor_746 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.gid
d_gid_1798 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gid_1798 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_gid_740 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.vote
d_vote_1800 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_Vote_722
d_vote_1800 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_vote_744 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.GovVote.voter
d_voter_1802 ::
  MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_voter_1802 v0
  = coe MAlonzo.Code.Ledger.GovernanceActions.d_voter_742 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.homo
d_homo_1806 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1806 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1808 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1808 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_1810 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1810 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_1812 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1812 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidHomomorphism.cong
d_cong_1814 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1814 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.homo
d_homo_1818 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1818 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.injective
d_injective_1820 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1820 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1822 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1822 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_1824 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_1824 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1826 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1826 ~v0 v1 = du_isMagmaMonomorphism_1826 v1
du_isMagmaMonomorphism_1826 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_1826 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1828 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1828 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_1830 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_1830 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_1832 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1832 v0
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
d_isRelIsomorphism_1834 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_1834 ~v0 v1 = du_isRelIsomorphism_1834 v1
du_isRelIsomorphism_1834 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_1834 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_1836 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1836 ~v0 v1 = du_isRelMonomorphism_1836 v1
du_isRelMonomorphism_1836 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1836 v0
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
d_surjective_1838 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_1838 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_1840 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1840 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidIsomorphism.cong
d_cong_1842 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1842 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.homo
d_homo_1846 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_1846 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.injective
d_injective_1848 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_injective_1848 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_1850 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_1850 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_1852 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_1852 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_1854 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_1854 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_1856 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_1856 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_1858 ::
  (Integer -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_1858 ~v0 v1 = du_isRelMonomorphism_1858 v1
du_isRelMonomorphism_1858 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_1858 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_1860 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_1860 = erased
-- Ledger.Foreign.HSLedger.Core._.IsMonoidMonomorphism.cong
d_cong_1862 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_1862 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_1866 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_1866 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_1868 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_1868 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_1870 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_1870 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.P1Script
d_P1Script_1872 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 -> ()
d_P1Script_1872 = erased
-- Ledger.Foreign.HSLedger.Core._.P1ScriptStructure.validP1Script
d_validP1Script_1874 ::
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> ()
d_validP1Script_1874 = erased
-- Ledger.Foreign.HSLedger.Core._.PParams.Emax
d_Emax_1890 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_Emax_1890 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_332 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a
d_a_1892 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_a_1892 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_316 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.a0
d_a0_1894 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1894 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_336 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.b
d_b_1896 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_b_1896 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_318 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMaxTermLength
d_ccMaxTermLength_1898 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMaxTermLength_1898 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_348 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.ccMinSize
d_ccMinSize_1900 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_ccMinSize_1900 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_346 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.coinsPerUTxOByte
d_coinsPerUTxOByte_1902 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_coinsPerUTxOByte_1902 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_324 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.collateralPercentage
d_collateralPercentage_1904 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_collateralPercentage_1904 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_338 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.costmdls
d_costmdls_1906 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_1906 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_340 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepActivity
d_drepActivity_1908 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepActivity_1908 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_356 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepDeposit
d_drepDeposit_1910 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_drepDeposit_1910 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_354 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.drepThresholds
d_drepThresholds_1912 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_1912 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_344 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionDeposit
d_govActionDeposit_1914 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionDeposit_1914 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_352 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.govActionLifetime
d_govActionLifetime_1916 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_govActionLifetime_1916 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_350 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.keyDeposit
d_keyDeposit_1918 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_keyDeposit_1918 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_320 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockExUnits
d_maxBlockExUnits_1920 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_1920 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_308 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxBlockSize
d_maxBlockSize_1922 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxBlockSize_1922 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_300 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxCollateralInputs
d_maxCollateralInputs_1924 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxCollateralInputs_1924 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_312 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxHeaderSize
d_maxHeaderSize_1926 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxHeaderSize_1926 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_304 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxExUnits
d_maxTxExUnits_1928 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_1928 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_306 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxTxSize
d_maxTxSize_1930 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxTxSize_1930 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_302 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.maxValSize
d_maxValSize_1932 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_maxValSize_1932 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_310 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_1934 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_1934 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_328
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.minUTxOValue
d_minUTxOValue_1936 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_minUTxOValue_1936 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_330 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.nopt
d_nopt_1938 :: MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_nopt_1938 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_334 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolDeposit
d_poolDeposit_1940 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 -> Integer
d_poolDeposit_1940 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_322 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.poolThresholds
d_poolThresholds_1942 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_1942 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_342 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.prices
d_prices_1944 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_1944 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_326 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParams.pv
d_pv_1946 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_1946 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_314 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.UpdateT
d_UpdateT_1950 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> ()
d_UpdateT_1950 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.applyUpdate
d_applyUpdate_1952 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  AgdaAny -> MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyUpdate_1952 v0
  = coe MAlonzo.Code.Ledger.PParams.d_applyUpdate_1160 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppWF?
d_ppWF'63'_1954 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_ppWF'63'_1954 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ppWF'63'_1168 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.ppdWellFormed
d_ppdWellFormed_1956 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 -> AgdaAny -> ()
d_ppdWellFormed_1956 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsDiff.updateGroups
d_updateGroups_1958 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsDiff_1144 ->
  AgdaAny -> [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_updateGroups_1958 v0
  = coe MAlonzo.Code.Ledger.PParams.d_updateGroups_1162 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate._?↗_
d__'63''8599'__1962 :: () -> Maybe AgdaAny -> AgdaAny -> AgdaAny
d__'63''8599'__1962 v0 v1 v2
  = coe MAlonzo.Code.Ledger.PParams.du__'63''8599'__912 v1 v2
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.DecEq-PParamsUpdate
d_DecEq'45'PParamsUpdate_1964 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'PParamsUpdate_1964
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.PParams.du_DecEq'45'PParamsUpdate_1090
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_scriptStructure_1794 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate
d_PParamsUpdate_1966 = ()
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.applyPParamsUpdate
d_applyPParamsUpdate_1968 ::
  MAlonzo.Code.Ledger.PParams.T_PParams_240 ->
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Ledger.PParams.T_PParams_240
d_applyPParamsUpdate_1968
  = coe MAlonzo.Code.Ledger.PParams.du_applyPParamsUpdate_960
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiedUpdateGroups
d_modifiedUpdateGroups_1970 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  [MAlonzo.Code.Ledger.PParams.T_PParamGroup_164]
d_modifiedUpdateGroups_1970
  = coe MAlonzo.Code.Ledger.PParams.du_modifiedUpdateGroups_896
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesEconomicGroup
d_modifiesEconomicGroup_1972 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesEconomicGroup_1972
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesEconomicGroup_704
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesGovernanceGroup
d_modifiesGovernanceGroup_1974 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesGovernanceGroup_1974
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesGovernanceGroup_832
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesNetworkGroup
d_modifiesNetworkGroup_1976 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesNetworkGroup_1976
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesNetworkGroup_640
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.modifiesTechnicalGroup
d_modifiesTechnicalGroup_1978 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Bool
d_modifiesTechnicalGroup_1978
  = coe MAlonzo.Code.Ledger.PParams.du_modifiesTechnicalGroup_768
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed
d_paramsUpdateWellFormed_1980 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> ()
d_paramsUpdateWellFormed_1980 = erased
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.paramsUpdateWellFormed?
d_paramsUpdateWellFormed'63'_1982 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_paramsUpdateWellFormed'63'_1982
  = coe MAlonzo.Code.Ledger.PParams.du_paramsUpdateWellFormed'63'_636
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.≡-update
d_'8801''45'update_1984 ::
  () ->
  Maybe AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''45'update_1984 v0 v1 v2 v3
  = coe MAlonzo.Code.Ledger.PParams.du_'8801''45'update_926 v1
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.Emax
d_Emax_1988 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_Emax_1988 v0
  = coe MAlonzo.Code.Ledger.PParams.d_Emax_542 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a
d_a_1990 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_a_1990 v0 = coe MAlonzo.Code.Ledger.PParams.d_a_524 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.a0
d_a0_1992 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_a0_1992 v0 = coe MAlonzo.Code.Ledger.PParams.d_a0_540 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.b
d_b_1994 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_b_1994 v0 = coe MAlonzo.Code.Ledger.PParams.d_b_526 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMaxTermLength
d_ccMaxTermLength_1996 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMaxTermLength_1996 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMaxTermLength_564 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.ccMinSize
d_ccMinSize_1998 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_ccMinSize_1998 v0
  = coe MAlonzo.Code.Ledger.PParams.d_ccMinSize_562 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.coinsPerUTxOByte
d_coinsPerUTxOByte_2000 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_coinsPerUTxOByte_2000 v0
  = coe MAlonzo.Code.Ledger.PParams.d_coinsPerUTxOByte_532 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.collateralPercentage
d_collateralPercentage_2002 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_collateralPercentage_2002 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_collateralPercentage_546 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.costmdls
d_costmdls_2004 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_costmdls_2004 v0
  = coe MAlonzo.Code.Ledger.PParams.d_costmdls_548 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepActivity
d_drepActivity_2006 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepActivity_2006 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepActivity_560 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepDeposit
d_drepDeposit_2008 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_drepDeposit_2008 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepDeposit_558 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.drepThresholds
d_drepThresholds_2010 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_DrepThresholds_176
d_drepThresholds_2010 v0
  = coe MAlonzo.Code.Ledger.PParams.d_drepThresholds_550 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionDeposit
d_govActionDeposit_2012 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionDeposit_2012 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionDeposit_556 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.govActionLifetime
d_govActionLifetime_2014 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_govActionLifetime_2014 v0
  = coe MAlonzo.Code.Ledger.PParams.d_govActionLifetime_554 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.keyDeposit
d_keyDeposit_2016 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_keyDeposit_2016 v0
  = coe MAlonzo.Code.Ledger.PParams.d_keyDeposit_528 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockExUnits
d_maxBlockExUnits_2018 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxBlockExUnits_2018 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockExUnits_520 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxBlockSize
d_maxBlockSize_2020 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxBlockSize_2020 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxBlockSize_508 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxCollateralInputs
d_maxCollateralInputs_2022 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxCollateralInputs_2022 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_maxCollateralInputs_516 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxHeaderSize
d_maxHeaderSize_2024 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxHeaderSize_2024 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxHeaderSize_512 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxExUnits
d_maxTxExUnits_2026 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maxTxExUnits_2026 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxExUnits_518 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxTxSize
d_maxTxSize_2028 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxTxSize_2028 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxTxSize_510 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.maxValSize
d_maxValSize_2030 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_maxValSize_2030 v0
  = coe MAlonzo.Code.Ledger.PParams.d_maxValSize_514 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minFeeRefScriptCoinsPerByte
d_minFeeRefScriptCoinsPerByte_2032 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_minFeeRefScriptCoinsPerByte_2032 v0
  = coe
      MAlonzo.Code.Ledger.PParams.d_minFeeRefScriptCoinsPerByte_534
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.minUTxOValue
d_minUTxOValue_2034 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_minUTxOValue_2034 v0
  = coe MAlonzo.Code.Ledger.PParams.d_minUTxOValue_538 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.nopt
d_nopt_2036 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_nopt_2036 v0
  = coe MAlonzo.Code.Ledger.PParams.d_nopt_544 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolDeposit
d_poolDeposit_2038 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 -> Maybe Integer
d_poolDeposit_2038 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolDeposit_530 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.poolThresholds
d_poolThresholds_2040 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218
d_poolThresholds_2040 v0
  = coe MAlonzo.Code.Ledger.PParams.d_poolThresholds_552 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.prices
d_prices_2042 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_prices_2042 v0
  = coe MAlonzo.Code.Ledger.PParams.d_prices_536 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PParamsUpdate.PParamsUpdate.pv
d_pv_2044 ::
  MAlonzo.Code.Ledger.PParams.T_PParamsUpdate_448 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pv_2044 v0 = coe MAlonzo.Code.Ledger.PParams.d_pv_522 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.pools
d_pools_2048 ::
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pools_2048 v0
  = coe MAlonzo.Code.Ledger.Certs.d_pools_906 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PState.retiring
d_retiring_2050 ::
  MAlonzo.Code.Ledger.Certs.T_PState_900 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_retiring_2050 v0
  = coe MAlonzo.Code.Ledger.Certs.d_retiring_908 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure._≥ᵉ_
d__'8805''7497'__2054 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2054 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.CostModel
d_CostModel_2056 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_CostModel_2056 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T
d_T_2058 :: MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_T_2058 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.THash
d_THash_2060 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_THash_2060 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dataʰ
d_Data'688'_2062 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2062 v0
  = coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Datum
d_Datum_2064 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Datum_2064 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2066 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2066 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEQ-Prices
d_DecEQ'45'Prices_2068 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2068 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-CostModel
d_DecEq'45'CostModel_2070 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2070 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2072 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2072 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2074 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2074 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-Language
d_DecEq'45'Language_2076 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2076 v0
  = coe MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-T
d_DecEq'45'T_2078 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2078 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.DecEq-THash
d_DecEq'45'THash_2080 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2080 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2082 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2082 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.ExUnits
d_ExUnits_2084 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_ExUnits_2084 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2086 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2086 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.LangDepView
d_LangDepView_2088 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_LangDepView_2088 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Language
d_Language_2090 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Language_2090 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusScript
d_PlutusScript_2092 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_PlutusScript_2092 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV1
d_PlutusV1_2094 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV1_2094 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV1_200 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV2
d_PlutusV2_2096 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV2_2096 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV2_202 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.PlutusV3
d_PlutusV3_2098 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> AgdaAny
d_PlutusV3_2098 v0
  = coe MAlonzo.Code.Ledger.Script.d_PlutusV3_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Prices
d_Prices_2100 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Prices_2100 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Redeemer
d_Redeemer_2102 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 -> ()
d_Redeemer_2102 = erased
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-CostModel
d_Show'45'CostModel_2104 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2104 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-ExUnits
d_Show'45'ExUnits_2106 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2106 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-Prices
d_Show'45'Prices_2108 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2108 v0
  = coe MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.Show-THash
d_Show'45'THash_2110 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2110 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-Hashable
d_T'45'Hashable_2112 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2112 v0
  = let v1 = MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.T-isHashable
d_T'45'isHashable_2114 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2114 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe MAlonzo.Code.Ledger.Script.d_Data'688'_186 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.language
d_language_2116 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> AgdaAny
d_language_2116 v0
  = coe MAlonzo.Code.Ledger.Script.d_language_254 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.toData
d_toData_2118 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  () -> AgdaAny -> AgdaAny
d_toData_2118 v0
  = coe MAlonzo.Code.Ledger.Script.d_toData_258 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PlutusStructure.validPlutusScript
d_validPlutusScript_2120 ::
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2120 = erased
-- Ledger.Foreign.HSLedger.Core._.PoolParams.rewardAddr
d_rewardAddr_2124 ::
  MAlonzo.Code.Ledger.Certs.T_PoolParams_822 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_rewardAddr_2124 v0
  = coe MAlonzo.Code.Ledger.Certs.d_rewardAddr_826 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q1
d_Q1_2128 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q1_2128 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q1_230 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2a
d_Q2a_2130 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2a_2130 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2a_232 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q2b
d_Q2b_2132 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q2b_2132 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q2b_234 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q4
d_Q4_2134 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q4_2134 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q4_236 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.PoolThresholds.Q5e
d_Q5e_2136 ::
  MAlonzo.Code.Ledger.PParams.T_PoolThresholds_218 ->
  MAlonzo.Code.Data.Rational.Base.T_ℚ_6
d_Q5e_2136 v0 = coe MAlonzo.Code.Ledger.PParams.d_Q5e_238 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.net
d_net_2140 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_net_2140 v0 = coe MAlonzo.Code.Ledger.Address.d_net_82 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.RwdAddr.stake
d_stake_2142 ::
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Ledger.Address.T_Credential_16
d_stake_2142 v0
  = coe MAlonzo.Code.Ledger.Address.d_stake_84 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure._≥ᵉ_
d__'8805''7497'__2146 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny -> ()
d__'8805''7497'__2146 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.CostModel
d_CostModel_2148 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_CostModel_2148 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T
d_T_2150 :: MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_T_2150 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.THash
d_THash_2152 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_THash_2152 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dataʰ
d_Data'688'_2154 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_HashableSet_32
d_Data'688'_2154 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Data'688'_186
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Datum
d_Datum_2156 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Datum_2156 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validP1Script
d_Dec'45'validP1Script_2158 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validP1Script_2158
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Dec'45'validP1Script_104
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Dec-validPlutusScript
d_Dec'45'validPlutusScript_2160 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'validPlutusScript_2160 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Dec'45'validPlutusScript_252
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEQ-Prices
d_DecEQ'45'Prices_2162 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEQ'45'Prices_2162 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEQ'45'Prices_222
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-CostModel
d_DecEq'45'CostModel_2164 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'CostModel_2164 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'CostModel_212
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-ExUnits
d_DecEq'45'ExUnits_2166 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ExUnits_2166 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'ExUnits_220
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-LangDepView
d_DecEq'45'LangDepView_2168 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'LangDepView_2168 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'LangDepView_214
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-Language
d_DecEq'45'Language_2170 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Language_2170 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_DecEq'45'Language_210
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-P1Script
d_DecEq'45'P1Script_2172 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'P1Script_2172
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_DecEq'45'P1Script_108
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-T
d_DecEq'45'T_2174 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'T_2174 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'T_26
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.DecEq-THash
d_DecEq'45'THash_2176 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'THash_2176 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_DecEq'45'THash_22
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnit-CommutativeMonoid
d_ExUnit'45'CommutativeMonoid_2178 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_ExUnit'45'CommutativeMonoid_2178 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_ExUnit'45'CommutativeMonoid_206
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ExUnits
d_ExUnits_2180 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_ExUnits_2180 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hash-Timelock
d_Hash'45'Timelock_2182 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hash'45'Timelock_2182 v0
  = coe MAlonzo.Code.Ledger.Script.d_Hash'45'Timelock_434 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-P1Script
d_Hashable'45'P1Script_2184 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'P1Script_2184
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (let v1 = MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0) in
       coe
         (let v2
                = MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0) in
          coe
            (coe
               (\ v3 ->
                  MAlonzo.Code.Ledger.Script.d_Hashable'45'P1Script_106
                    (coe
                       MAlonzo.Code.Ledger.Script.d_p1s_436 (coe v1) (coe v2)
                       (coe v3))))))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-PlutusScript
d_Hashable'45'PlutusScript_2186 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'PlutusScript_2186 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Hashable'45'PlutusScript_208
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Hashable-Script
d_Hashable'45'Script_2188 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_Hashable'45'Script_2188
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_Hashable'45'Script_524
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.LangDepView
d_LangDepView_2190 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_LangDepView_2190 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Language
d_Language_2192 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Language_2192 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.P1Script
d_P1Script_2194 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_P1Script_2194 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusScript
d_PlutusScript_2196 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_PlutusScript_2196 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV1
d_PlutusV1_2198 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV1_2198 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV1_200
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV2
d_PlutusV2_2200 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV2_2200 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV2_202
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.PlutusV3
d_PlutusV3_2202 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> AgdaAny
d_PlutusV3_2202 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_PlutusV3_204
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Prices
d_Prices_2204 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Prices_2204 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Redeemer
d_Redeemer_2206 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Redeemer_2206 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Script
d_Script_2208 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 -> ()
d_Script_2208 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-CostModel
d_Show'45'CostModel_2210 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'CostModel_2210 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'CostModel_216
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-ExUnits
d_Show'45'ExUnits_2212 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ExUnits_2212 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'ExUnits_224
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-Prices
d_Show'45'Prices_2214 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'Prices_2214 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_Show'45'Prices_226
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.Show-THash
d_Show'45'THash_2216 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'THash_2216 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_Show'45'THash_24
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-Hashable
d_T'45'Hashable_2218 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_T'45'Hashable_2218 v0
  = let v1
          = MAlonzo.Code.Ledger.Script.d_Data'688'_186
              (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Ledger.Crypto.d_T'45'Hashable_28
         (coe MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.T-isHashable
d_T'45'isHashable_2220 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Crypto.T_isHashableSet_6
d_T'45'isHashable_2220 v0
  = coe
      MAlonzo.Code.Ledger.Crypto.d_T'45'isHashable_40
      (coe
         MAlonzo.Code.Ledger.Script.d_Data'688'_186
         (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.hashRespectsUnion
d_hashRespectsUnion_2222 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8 ->
  MAlonzo.Code.Interface.Hashable.T_Hashable_8
d_hashRespectsUnion_2222 v0
  = coe MAlonzo.Code.Ledger.Script.d_hashRespectsUnion_432 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.language
d_language_2224 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> AgdaAny
d_language_2224 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_language_254
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.p1s
d_p1s_2226 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_P1ScriptStructure_88
d_p1s_2226
  = let v0 = d_HSTransactionStructure_850 in
    coe
      (coe
         MAlonzo.Code.Ledger.Script.d_p1s_436
         (coe MAlonzo.Code.Ledger.Transaction.d_crypto_1226 (coe v0))
         (coe
            MAlonzo.Code.Ledger.Transaction.d_epochStructure_1512 (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.ps
d_ps_2228 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  MAlonzo.Code.Ledger.Script.T_PlutusStructure_110
d_ps_2228 v0 = coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.toData
d_toData_2230 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  () -> AgdaAny -> AgdaAny
d_toData_2230 v0
  = coe
      MAlonzo.Code.Ledger.Script.d_toData_258
      (coe MAlonzo.Code.Ledger.Script.d_ps_450 (coe v0))
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validP1Script
d_validP1Script_2232 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  [Integer] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Ledger.Script.T_Timelock_260 -> ()
d_validP1Script_2232 = erased
-- Ledger.Foreign.HSLedger.Core._.ScriptStructure.validPlutusScript
d_validPlutusScript_2234 ::
  MAlonzo.Code.Ledger.Script.T_ScriptStructure_398 ->
  AgdaAny -> [AgdaAny] -> AgdaAny -> AgdaAny -> ()
d_validPlutusScript_2234 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._∙_
d__'8729'__2252 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8729'__2252 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d__'8729'__840
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≈_
d__'8776'__2254 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__2254 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra._≤ᵗ_
d__'8804''7511'__2256 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> AgdaAny -> ()
d__'8804''7511'__2256 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.AssetName
d_AssetName_2258 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_AssetName_2258 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Dec-≤ᵗ
d_Dec'45''8804''7511'_2260 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8804''7511'_2260 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Dec'45''8804''7511'_224 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.DecEq-Value
d_DecEq'45'Value_2262 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'Value_2262 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_DecEq'45'Value_222 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism
d_IsMonoidHomomorphism_2264 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism
d_IsMonoidIsomorphism_2266 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism
d_IsMonoidMonomorphism_2268 a0 a1 = ()
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value
d_Value_2270 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> ()
d_Value_2270 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-CommutativeMonoid
d_Value'45'CommutativeMonoid_2272 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820
d_Value'45'CommutativeMonoid_2272
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.Value-IsCommutativeMonoid'
d_Value'45'IsCommutativeMonoid''_2274 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10
d_Value'45'IsCommutativeMonoid''_2274 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_Value'45'IsCommutativeMonoid''_120
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.addValue
d_addValue_2276 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Interface.HasAdd.T_HasAdd_6
d_addValue_2276
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_addValue_226
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin
d_coin_2278 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_coin_2278 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_coin_204 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coin-inject-lemma
d_coin'45'inject'45'lemma_2280 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_coin'45'inject'45'lemma_2280 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.coinIsMonoidHomomorphism
d_coinIsMonoidHomomorphism_2282 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_coinIsMonoidHomomorphism_2282 v0
  = coe
      MAlonzo.Code.Ledger.TokenAlgebra.d_coinIsMonoidHomomorphism_220
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.inject
d_inject_2284 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> AgdaAny
d_inject_2284 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_inject_206 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.monoid
d_monoid_2286 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.T_Monoid_740
d_monoid_2286 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.du_monoid_890
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.policies
d_policies_2288 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> [Integer]
d_policies_2288 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_policies_208 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.property
d_property_2290 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_2290 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.rawMonoid
d_rawMonoid_2292 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_rawMonoid_2292 v0
  = let v1
          = coe
              MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_812
         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_890 (coe v1)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.size
d_size_2294 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  AgdaAny -> Integer
d_size_2294 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_size_210 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.specialAsset
d_specialAsset_2296 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_specialAsset_2296 v0
  = coe MAlonzo.Code.Ledger.TokenAlgebra.d_specialAsset_216 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.sumᵛ
d_sum'7515'_2298 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  [AgdaAny] -> AgdaAny
d_sum'7515'_2298
  = coe MAlonzo.Code.Ledger.TokenAlgebra.du_sum'7515'_244
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.ε
d_ε_2300 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 -> AgdaAny
d_ε_2300 v0
  = coe
      MAlonzo.Code.Algebra.Bundles.d_ε_842
      (coe
         MAlonzo.Code.Ledger.TokenAlgebra.du_Value'45'CommutativeMonoid_122
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.homo
d_homo_2304 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2304 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2306 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2306 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.isRelHomomorphism
d_isRelHomomorphism_2308 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2308 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.ε-homo
d_ε'45'homo_2310 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2310 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidHomomorphism.cong
d_cong_2312 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2312 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.homo
d_homo_2316 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2316 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.injective
d_injective_2318 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2318 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2320 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2320 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaIsomorphism
d_isMagmaIsomorphism_2322 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
d_isMagmaIsomorphism_2322 ~v0 = du_isMagmaIsomorphism_2322
du_isMagmaIsomorphism_2322 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaIsomorphism_102
du_isMagmaIsomorphism_2322 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2324 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2324 ~v0 ~v1 v2
  = du_isMagmaMonomorphism_2324 v2
du_isMagmaMonomorphism_2324 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2324 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2326 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2326 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isMonoidMonomorphism
d_isMonoidMonomorphism_2328 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256
d_isMonoidMonomorphism_2328 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidMonomorphism_296
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelHomomorphism
d_isRelHomomorphism_2330 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2330 v0
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
d_isRelIsomorphism_2332 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
d_isRelIsomorphism_2332 ~v0 ~v1 v2 = du_isRelIsomorphism_2332 v2
du_isRelIsomorphism_2332 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelIsomorphism_94
du_isRelIsomorphism_2332 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelIsomorphism_128
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaIsomorphism_320
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.isRelMonomorphism
d_isRelMonomorphism_2334 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2334 ~v0 ~v1 v2 = du_isRelMonomorphism_2334 v2
du_isRelMonomorphism_2334 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2334 v0
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
d_surjective_2336 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_surjective_2336 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_surjective_298 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.ε-homo
d_ε'45'homo_2338 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2338 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidIsomorphism.cong
d_cong_2340 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidIsomorphism_288 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2340 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.homo
d_homo_2344 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_homo_2344 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.injective
d_injective_2346 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_injective_2346 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_injective_266 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaHomomorphism
d_isMagmaHomomorphism_2348 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaHomomorphism_60
d_isMagmaHomomorphism_2348 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMagmaMonomorphism
d_isMagmaMonomorphism_2350 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
d_isMagmaMonomorphism_2350 ~v0 = du_isMagmaMonomorphism_2350
du_isMagmaMonomorphism_2350 ::
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMagmaMonomorphism_78
du_isMagmaMonomorphism_2350 v0 v1
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
      v1
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isMonoidHomomorphism
d_isMonoidHomomorphism_2352 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidHomomorphism_234
d_isMonoidHomomorphism_2352 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
      (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelHomomorphism
d_isRelHomomorphism_2354 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelHomomorphism_42
d_isRelHomomorphism_2354 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.d_isRelHomomorphism_68
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.d_isMagmaHomomorphism_242
         (coe
            MAlonzo.Code.Algebra.Morphism.Structures.d_isMonoidHomomorphism_264
            (coe v0)))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.isRelMonomorphism
d_isRelMonomorphism_2356 ::
  MAlonzo.Code.Ledger.TokenAlgebra.T_TokenAlgebra_8 ->
  (AgdaAny -> Integer) ->
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
d_isRelMonomorphism_2356 ~v0 ~v1 v2 = du_isRelMonomorphism_2356 v2
du_isRelMonomorphism_2356 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsRelMonomorphism_64
du_isRelMonomorphism_2356 v0
  = coe
      MAlonzo.Code.Algebra.Morphism.Structures.du_isRelMonomorphism_98
      (coe
         MAlonzo.Code.Algebra.Morphism.Structures.du_isMagmaMonomorphism_280
         (coe v0))
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.ε-homo
d_ε'45'homo_2358 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ε'45'homo_2358 = erased
-- Ledger.Foreign.HSLedger.Core._.TokenAlgebra.IsMonoidMonomorphism.cong
d_cong_2360 ::
  MAlonzo.Code.Algebra.Morphism.Structures.T_IsMonoidMonomorphism_256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_cong_2360 = erased
-- Ledger.Foreign.HSLedger.Core._.Tx.body
d_body_2364 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724
d_body_2364 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_body_2836 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.isValid
d_isValid_2366 :: MAlonzo.Code.Ledger.Transaction.T_Tx_2826 -> Bool
d_isValid_2366 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_isValid_2840 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.txAD
d_txAD_2368 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txAD_2368 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txAD_2842 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.Tx.wits
d_wits_2370 ::
  MAlonzo.Code.Ledger.Transaction.T_Tx_2826 ->
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806
d_wits_2370 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_wits_2838 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.collateral
d_collateral_2374 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_collateral_2374 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_collateral_2800 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.curTreasury
d_curTreasury_2376 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Maybe Integer
d_curTreasury_2376 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_curTreasury_2794 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.mint
d_mint_2378 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_mint_2378 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_mint_2774 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.refInputs
d_refInputs_2380 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_refInputs_2380 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_refInputs_2768 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.reqSigHash
d_reqSigHash_2382 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> [Integer]
d_reqSigHash_2382 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_reqSigHash_2802 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.scriptIntHash
d_scriptIntHash_2384 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Maybe Integer
d_scriptIntHash_2384 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scriptIntHash_2804 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txADhash
d_txADhash_2386 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txADhash_2386 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txADhash_2790 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txNetworkId
d_txNetworkId_2388 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  Maybe MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6
d_txNetworkId_2388 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txNetworkId_2792 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txcerts
d_txcerts_2390 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828]
d_txcerts_2390 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txcerts_2778 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txdonation
d_txdonation_2392 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_txdonation_2392 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdonation_2786 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txfee
d_txfee_2394 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_txfee_2394 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txfee_2772 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txid
d_txid_2396 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_txid_2396 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txid_2798 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txins
d_txins_2398 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_txins_2398 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txins_2766 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txouts
d_txouts_2400 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txouts_2400 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txouts_2770 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txprop
d_txprop_2402 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748]
d_txprop_2402 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txprop_2784 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txsize
d_txsize_2404 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 -> Integer
d_txsize_2404 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txsize_2796 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txup
d_txup_2406 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txup_2406 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txup_2788 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvldt
d_txvldt_2408 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txvldt_2408 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvldt_2776 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txvote
d_txvote_2410 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovVote_730]
d_txvote_2410 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txvote_2782 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxBody.txwdrls
d_txwdrls_2412 ::
  MAlonzo.Code.Ledger.Transaction.T_TxBody_2724 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txwdrls_2412 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txwdrls_2780 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scripts
d_scripts_2416 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806 ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30]
d_scripts_2416 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_scripts_2818 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.scriptsP1
d_scriptsP1_2418 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806 ->
  [MAlonzo.Code.Ledger.Script.T_Timelock_260]
d_scriptsP1_2418
  = coe MAlonzo.Code.Ledger.Transaction.du_scriptsP1_2824
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txdats
d_txdats_2420 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txdats_2420 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txdats_2820 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.txrdmrs
d_txrdmrs_2422 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_txrdmrs_2422 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_txrdmrs_2822 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.TxWitnesses.vkSigs
d_vkSigs_2424 ::
  MAlonzo.Code.Ledger.Transaction.T_TxWitnesses_2806 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_vkSigs_2424 v0
  = coe MAlonzo.Code.Ledger.Transaction.d_vkSigs_2816 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions
d_AbstractFunctions_2468 = ()
-- Ledger.Foreign.HSLedger.Core._.indexOf
d_indexOf_2470 = ()
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.indexOfImp
d_indexOfImp_2474 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618
d_indexOfImp_2474 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfImp_1660 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.runPLCScript
d_runPLCScript_2476 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6] -> Bool
d_runPLCScript_2476 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_runPLCScript_1662 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.scriptSize
d_scriptSize_2478 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> Integer
d_scriptSize_2478 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_scriptSize_1664 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.serSize
d_serSize_2480 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  Integer -> Integer
d_serSize_2480 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_serSize_1658 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.AbstractFunctions.txscriptfee
d_txscriptfee_2482 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644 ->
  MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_txscriptfee_2482 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_txscriptfee_1656 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfDCert
d_indexOfDCert_2486 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  MAlonzo.Code.Ledger.Certs.T_DCert_828 ->
  [MAlonzo.Code.Ledger.Certs.T_DCert_828] -> Maybe Integer
d_indexOfDCert_2486 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfDCert_1632 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfPolicyId
d_indexOfPolicyId_2488 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  Integer -> [Integer] -> Maybe Integer
d_indexOfPolicyId_2488 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfPolicyId_1638 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfProposal
d_indexOfProposal_2490 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748 ->
  [MAlonzo.Code.Ledger.GovernanceActions.T_GovProposal_748] ->
  Maybe Integer
d_indexOfProposal_2490 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfProposal_1642 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfRwdAddr
d_indexOfRwdAddr_2492 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  MAlonzo.Code.Ledger.Address.T_RwdAddr_76 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Maybe Integer
d_indexOfRwdAddr_2492 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfRwdAddr_1634 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfTxIn
d_indexOfTxIn_2494 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfTxIn_2494 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfTxIn_1636 (coe v0)
-- Ledger.Foreign.HSLedger.Core._.indexOf.indexOfVote
d_indexOfVote_2496 ::
  MAlonzo.Code.Ledger.Abstract.T_indexOf_1618 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> Maybe Integer
d_indexOfVote_2496 v0
  = coe MAlonzo.Code.Ledger.Abstract.d_indexOfVote_1640 (coe v0)
-- Ledger.Foreign.HSLedger.Core.HSAbstractFunctions
d_HSAbstractFunctions_2498 ::
  MAlonzo.Code.Ledger.Abstract.T_AbstractFunctions_1644
d_HSAbstractFunctions_2498
  = coe
      MAlonzo.Code.Ledger.Abstract.C_AbstractFunctions'46'constructor_2533
      (coe (\ v0 v1 -> 0 :: Integer)) (coe (\ v0 -> v0))
      (coe
         MAlonzo.Code.Ledger.Abstract.C_indexOf'46'constructor_2271
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
-- Acnt
d_Acnt_2563 = ()
