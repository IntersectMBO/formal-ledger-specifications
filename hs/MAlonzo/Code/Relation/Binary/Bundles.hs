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

module MAlonzo.Code.Relation.Binary.Bundles where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles.Raw
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Bundles.PartialSetoid
d_PartialSetoid_10 a0 a1 = ()
newtype T_PartialSetoid_10
  = C_PartialSetoid'46'constructor_133 MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
-- Relation.Binary.Bundles.PartialSetoid.Carrier
d_Carrier_22 :: T_PartialSetoid_10 -> ()
d_Carrier_22 = erased
-- Relation.Binary.Bundles.PartialSetoid._≈_
d__'8776'__24 :: T_PartialSetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__24 = erased
-- Relation.Binary.Bundles.PartialSetoid.isPartialEquivalence
d_isPartialEquivalence_26 ::
  T_PartialSetoid_10 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_26 v0
  = case coe v0 of
      C_PartialSetoid'46'constructor_133 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.PartialSetoid._.sym
d_sym_30 ::
  T_PartialSetoid_10 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_30 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_22
      (coe d_isPartialEquivalence_26 (coe v0))
-- Relation.Binary.Bundles.PartialSetoid._.trans
d_trans_32 ::
  T_PartialSetoid_10 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_32 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_24
      (coe d_isPartialEquivalence_26 (coe v0))
-- Relation.Binary.Bundles.PartialSetoid.rawSetoid
d_rawSetoid_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_PartialSetoid_10 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_34 = erased
-- Relation.Binary.Bundles.PartialSetoid._._≉_
d__'8777'__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_PartialSetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8777'__38 = erased
-- Relation.Binary.Bundles.Setoid
d_Setoid_44 a0 a1 = ()
newtype T_Setoid_44
  = C_Setoid'46'constructor_761 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
-- Relation.Binary.Bundles.Setoid.Carrier
d_Carrier_56 :: T_Setoid_44 -> ()
d_Carrier_56 = erased
-- Relation.Binary.Bundles.Setoid._≈_
d__'8776'__58 :: T_Setoid_44 -> AgdaAny -> AgdaAny -> ()
d__'8776'__58 = erased
-- Relation.Binary.Bundles.Setoid.isEquivalence
d_isEquivalence_60 ::
  T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_60 v0
  = case coe v0 of
      C_Setoid'46'constructor_761 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.Setoid._.isPartialEquivalence
d_isPartialEquivalence_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_64 ~v0 ~v1 v2
  = du_isPartialEquivalence_64 v2
du_isPartialEquivalence_64 ::
  T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_64 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_60 (coe v0))
-- Relation.Binary.Bundles.Setoid._.refl
d_refl_66 :: T_Setoid_44 -> AgdaAny -> AgdaAny
d_refl_66 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_60 (coe v0))
-- Relation.Binary.Bundles.Setoid._.reflexive
d_reflexive_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_68 ~v0 ~v1 v2 = du_reflexive_68 v2
du_reflexive_68 ::
  T_Setoid_44 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_68 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_60 (coe v0)) v1
-- Relation.Binary.Bundles.Setoid.partialSetoid
d_partialSetoid_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 -> T_PartialSetoid_10
d_partialSetoid_70 ~v0 ~v1 v2 = du_partialSetoid_70 v2
du_partialSetoid_70 :: T_Setoid_44 -> T_PartialSetoid_10
du_partialSetoid_70 v0
  = coe
      C_PartialSetoid'46'constructor_133
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_60 (coe v0)))
-- Relation.Binary.Bundles.Setoid._._≉_
d__'8777'__74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 -> AgdaAny -> AgdaAny -> ()
d__'8777'__74 = erased
-- Relation.Binary.Bundles.Setoid._.rawSetoid
d_rawSetoid_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_76 = erased
-- Relation.Binary.Bundles.Setoid._.sym
d_sym_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_78 ~v0 ~v1 v2 = du_sym_78 v2
du_sym_78 ::
  T_Setoid_44 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_78 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_60 (coe v0))
-- Relation.Binary.Bundles.Setoid._.trans
d_trans_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Setoid_44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_80 ~v0 ~v1 v2 = du_trans_80 v2
du_trans_80 ::
  T_Setoid_44 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_80 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_60 (coe v0))
-- Relation.Binary.Bundles.DecSetoid
d_DecSetoid_86 a0 a1 = ()
newtype T_DecSetoid_86
  = C_DecSetoid'46'constructor_1435 MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
-- Relation.Binary.Bundles.DecSetoid.Carrier
d_Carrier_98 :: T_DecSetoid_86 -> ()
d_Carrier_98 = erased
-- Relation.Binary.Bundles.DecSetoid._≈_
d__'8776'__100 :: T_DecSetoid_86 -> AgdaAny -> AgdaAny -> ()
d__'8776'__100 = erased
-- Relation.Binary.Bundles.DecSetoid.isDecEquivalence
d_isDecEquivalence_102 ::
  T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_102 v0
  = case coe v0 of
      C_DecSetoid'46'constructor_1435 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DecSetoid._._≟_
d__'8799'__106 ::
  T_DecSetoid_86 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__106 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52
      (coe d_isDecEquivalence_102 (coe v0))
-- Relation.Binary.Bundles.DecSetoid._.isEquivalence
d_isEquivalence_108 ::
  T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_108 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
      (coe d_isDecEquivalence_102 (coe v0))
-- Relation.Binary.Bundles.DecSetoid.setoid
d_setoid_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 -> T_Setoid_44
d_setoid_110 ~v0 ~v1 v2 = du_setoid_110 v2
du_setoid_110 :: T_DecSetoid_86 -> T_Setoid_44
du_setoid_110 v0
  = coe
      C_Setoid'46'constructor_761
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
         (coe d_isDecEquivalence_102 (coe v0)))
-- Relation.Binary.Bundles.DecSetoid._._≉_
d__'8777'__114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 -> AgdaAny -> AgdaAny -> ()
d__'8777'__114 = erased
-- Relation.Binary.Bundles.DecSetoid._.isPartialEquivalence
d_isPartialEquivalence_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_116 ~v0 ~v1 v2
  = du_isPartialEquivalence_116 v2
du_isPartialEquivalence_116 ::
  T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_116 v0
  = let v1 = coe du_setoid_110 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.DecSetoid._.partialSetoid
d_partialSetoid_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 -> T_PartialSetoid_10
d_partialSetoid_118 ~v0 ~v1 v2 = du_partialSetoid_118 v2
du_partialSetoid_118 :: T_DecSetoid_86 -> T_PartialSetoid_10
du_partialSetoid_118 v0
  = coe du_partialSetoid_70 (coe du_setoid_110 (coe v0))
-- Relation.Binary.Bundles.DecSetoid._.rawSetoid
d_rawSetoid_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_120 = erased
-- Relation.Binary.Bundles.DecSetoid._.refl
d_refl_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 -> AgdaAny -> AgdaAny
d_refl_122 ~v0 ~v1 v2 = du_refl_122 v2
du_refl_122 :: T_DecSetoid_86 -> AgdaAny -> AgdaAny
du_refl_122 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
         (coe d_isDecEquivalence_102 (coe v0)))
-- Relation.Binary.Bundles.DecSetoid._.reflexive
d_reflexive_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_124 ~v0 ~v1 v2 = du_reflexive_124 v2
du_reflexive_124 ::
  T_DecSetoid_86 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_124 v0
  = let v1 = coe du_setoid_110 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_60 (coe v1)) v2)
-- Relation.Binary.Bundles.DecSetoid._.sym
d_sym_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_126 ~v0 ~v1 v2 = du_sym_126 v2
du_sym_126 ::
  T_DecSetoid_86 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_126 v0
  = let v1 = coe du_setoid_110 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.DecSetoid._.trans
d_trans_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecSetoid_86 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_128 ~v0 ~v1 v2 = du_trans_128 v2
du_trans_128 ::
  T_DecSetoid_86 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_128 v0
  = let v1 = coe du_setoid_110 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.Preorder
d_Preorder_136 a0 a1 a2 = ()
newtype T_Preorder_136
  = C_Preorder'46'constructor_2331 MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
-- Relation.Binary.Bundles.Preorder.Carrier
d_Carrier_152 :: T_Preorder_136 -> ()
d_Carrier_152 = erased
-- Relation.Binary.Bundles.Preorder._≈_
d__'8776'__154 :: T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8776'__154 = erased
-- Relation.Binary.Bundles.Preorder._≲_
d__'8818'__156 :: T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8818'__156 = erased
-- Relation.Binary.Bundles.Preorder.isPreorder
d_isPreorder_158 ::
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_158 v0
  = case coe v0 of
      C_Preorder'46'constructor_2331 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.Preorder._.isEquivalence
d_isEquivalence_162 ::
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_162 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.refl
d_refl_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny
d_refl_164 ~v0 ~v1 ~v2 v3 = du_refl_164 v3
du_refl_164 :: T_Preorder_136 -> AgdaAny -> AgdaAny
du_refl_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_refl_98
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.reflexive
d_reflexive_166 ::
  T_Preorder_136 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.trans
d_trans_168 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_170 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_170 v3
du_'8764''45'resp'45''8776'_170 ::
  T_Preorder_136 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_172 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_172 v3
du_'8764''45'resp'691''45''8776'_172 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_174 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_174 v3
du_'8764''45'resp'737''45''8776'_174 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.≲-resp-≈
d_'8818''45'resp'45''8776'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_176 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_176 v3
du_'8818''45'resp'45''8776'_176 ::
  T_Preorder_136 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_176 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_178 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_178 v3
du_'8818''45'resp'691''45''8776'_178 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_180 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_180 v3
du_'8818''45'resp'737''45''8776'_180 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_180 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder.Eq.setoid
d_setoid_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> T_Setoid_44
d_setoid_184 ~v0 ~v1 ~v2 v3 = du_setoid_184 v3
du_setoid_184 :: T_Preorder_136 -> T_Setoid_44
du_setoid_184 v0
  = coe
      C_Setoid'46'constructor_761
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe d_isPreorder_158 (coe v0)))
-- Relation.Binary.Bundles.Preorder.Eq._._≈_
d__'8776'__188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8776'__188 = erased
-- Relation.Binary.Bundles.Preorder.Eq._._≉_
d__'8777'__190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8777'__190 = erased
-- Relation.Binary.Bundles.Preorder.Eq._.Carrier
d_Carrier_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Preorder_136 -> ()
d_Carrier_192 = erased
-- Relation.Binary.Bundles.Preorder.Eq._.isEquivalence
d_isEquivalence_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_194 ~v0 ~v1 ~v2 v3 = du_isEquivalence_194 v3
du_isEquivalence_194 ::
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe d_isPreorder_158 (coe v0))
-- Relation.Binary.Bundles.Preorder.Eq._.isPartialEquivalence
d_isPartialEquivalence_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_196 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_196 v3
du_isPartialEquivalence_196 ::
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_196 v0
  = let v1 = coe du_setoid_184 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.Preorder.Eq._.partialSetoid
d_partialSetoid_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> T_PartialSetoid_10
d_partialSetoid_198 ~v0 ~v1 ~v2 v3 = du_partialSetoid_198 v3
du_partialSetoid_198 :: T_Preorder_136 -> T_PartialSetoid_10
du_partialSetoid_198 v0
  = coe du_partialSetoid_70 (coe du_setoid_184 (coe v0))
-- Relation.Binary.Bundles.Preorder.Eq._.rawSetoid
d_rawSetoid_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_200 = erased
-- Relation.Binary.Bundles.Preorder.Eq._.refl
d_refl_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny
d_refl_202 ~v0 ~v1 ~v2 v3 = du_refl_202 v3
du_refl_202 :: T_Preorder_136 -> AgdaAny -> AgdaAny
du_refl_202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe d_isPreorder_158 (coe v0)))
-- Relation.Binary.Bundles.Preorder.Eq._.reflexive
d_reflexive_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_204 ~v0 ~v1 ~v2 v3 = du_reflexive_204 v3
du_reflexive_204 ::
  T_Preorder_136 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_204 v0
  = let v1 = coe du_setoid_184 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_60 (coe v1)) v2)
-- Relation.Binary.Bundles.Preorder.Eq._.sym
d_sym_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_206 ~v0 ~v1 ~v2 v3 = du_sym_206 v3
du_sym_206 ::
  T_Preorder_136 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_206 v0
  = let v1 = coe du_setoid_184 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.Preorder.Eq._.trans
d_trans_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_208 ~v0 ~v1 ~v2 v3 = du_trans_208 v3
du_trans_208 ::
  T_Preorder_136 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_208 v0
  = let v1 = coe du_setoid_184 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.Preorder.rawRelation
d_rawRelation_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_210 = erased
-- Relation.Binary.Bundles.Preorder._._∼_
d__'8764'__214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8764'__214 = erased
-- Relation.Binary.Bundles.Preorder._._≉_
d__'8777'__216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8777'__216 = erased
-- Relation.Binary.Bundles.Preorder._._∼ᵒ_
d__'8764''7506'__218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__218 = erased
-- Relation.Binary.Bundles.Preorder._._≁_
d__'8769'__220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8769'__220 = erased
-- Relation.Binary.Bundles.Preorder._._≁ᵒ_
d__'8769''7506'__222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__222 = erased
-- Relation.Binary.Bundles.Preorder._.rawSetoid
d_rawSetoid_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Preorder_136 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_224 = erased
-- Relation.Binary.Bundles.TotalPreorder
d_TotalPreorder_232 a0 a1 a2 = ()
newtype T_TotalPreorder_232
  = C_TotalPreorder'46'constructor_4405 MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
-- Relation.Binary.Bundles.TotalPreorder.Carrier
d_Carrier_248 :: T_TotalPreorder_232 -> ()
d_Carrier_248 = erased
-- Relation.Binary.Bundles.TotalPreorder._≈_
d__'8776'__250 :: T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8776'__250 = erased
-- Relation.Binary.Bundles.TotalPreorder._≲_
d__'8818'__252 :: T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8818'__252 = erased
-- Relation.Binary.Bundles.TotalPreorder.isTotalPreorder
d_isTotalPreorder_254 ::
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_isTotalPreorder_254 v0
  = case coe v0 of
      C_TotalPreorder'46'constructor_4405 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.TotalPreorder._.isPreorder
d_isPreorder_258 ::
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_258 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
      (coe d_isTotalPreorder_254 (coe v0))
-- Relation.Binary.Bundles.TotalPreorder._.total
d_total_260 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_260 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_134
      (coe d_isTotalPreorder_254 (coe v0))
-- Relation.Binary.Bundles.TotalPreorder.preorder
d_preorder_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> T_Preorder_136
d_preorder_262 ~v0 ~v1 ~v2 v3 = du_preorder_262 v3
du_preorder_262 :: T_TotalPreorder_232 -> T_Preorder_136
du_preorder_262 v0
  = coe
      C_Preorder'46'constructor_2331
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe d_isTotalPreorder_254 (coe v0)))
-- Relation.Binary.Bundles.TotalPreorder._._∼_
d__'8764'__266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8764'__266 = erased
-- Relation.Binary.Bundles.TotalPreorder._._≉_
d__'8777'__268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8777'__268 = erased
-- Relation.Binary.Bundles.TotalPreorder._._∼ᵒ_
d__'8764''7506'__270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__270 = erased
-- Relation.Binary.Bundles.TotalPreorder._._≁_
d__'8769'__272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8769'__272 = erased
-- Relation.Binary.Bundles.TotalPreorder._._≁ᵒ_
d__'8769''7506'__274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__274 = erased
-- Relation.Binary.Bundles.TotalPreorder._.isEquivalence
d_isEquivalence_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_276 ~v0 ~v1 ~v2 v3 = du_isEquivalence_276 v3
du_isEquivalence_276 ::
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_276 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe d_isTotalPreorder_254 (coe v0)))
-- Relation.Binary.Bundles.TotalPreorder._.rawRelation
d_rawRelation_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_278 = erased
-- Relation.Binary.Bundles.TotalPreorder._.rawSetoid
d_rawSetoid_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_280 = erased
-- Relation.Binary.Bundles.TotalPreorder._.refl
d_refl_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny
d_refl_282 ~v0 ~v1 ~v2 v3 = du_refl_282 v3
du_refl_282 :: T_TotalPreorder_232 -> AgdaAny -> AgdaAny
du_refl_282 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.reflexive
d_reflexive_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_284 ~v0 ~v1 ~v2 v3 = du_reflexive_284 v3
du_reflexive_284 ::
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_284 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe d_isTotalPreorder_254 (coe v0)))
-- Relation.Binary.Bundles.TotalPreorder._.trans
d_trans_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_286 ~v0 ~v1 ~v2 v3 = du_trans_286 v3
du_trans_286 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_286 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_132
         (coe d_isTotalPreorder_254 (coe v0)))
-- Relation.Binary.Bundles.TotalPreorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_288 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_288 v3
du_'8764''45'resp'45''8776'_288 ::
  T_TotalPreorder_232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_288 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_290 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_290 v3
du_'8764''45'resp'691''45''8776'_290 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_290 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_292 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_292 v3
du_'8764''45'resp'737''45''8776'_292 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_292 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.≲-resp-≈
d_'8818''45'resp'45''8776'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_294 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_294 v3
du_'8818''45'resp'45''8776'_294 ::
  T_TotalPreorder_232 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_294 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_296 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_296 v3
du_'8818''45'resp'691''45''8776'_296 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_296 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_298 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_298 v3
du_'8818''45'resp'737''45''8776'_298 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_298 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.Eq._≈_
d__'8776'__302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8776'__302 = erased
-- Relation.Binary.Bundles.TotalPreorder._.Eq._≉_
d__'8777'__304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> ()
d__'8777'__304 = erased
-- Relation.Binary.Bundles.TotalPreorder._.Eq.Carrier
d_Carrier_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_TotalPreorder_232 -> ()
d_Carrier_306 = erased
-- Relation.Binary.Bundles.TotalPreorder._.Eq.isEquivalence
d_isEquivalence_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_308 ~v0 ~v1 ~v2 v3 = du_isEquivalence_308 v3
du_isEquivalence_308 ::
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_308 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.isPartialEquivalence
d_isPartialEquivalence_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_310 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_310 v3
du_isPartialEquivalence_310 ::
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_310 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.partialSetoid
d_partialSetoid_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> T_PartialSetoid_10
d_partialSetoid_312 ~v0 ~v1 ~v2 v3 = du_partialSetoid_312 v3
du_partialSetoid_312 :: T_TotalPreorder_232 -> T_PartialSetoid_10
du_partialSetoid_312 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe (coe du_partialSetoid_70 (coe du_setoid_184 (coe v1)))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.rawSetoid
d_rawSetoid_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_314 = erased
-- Relation.Binary.Bundles.TotalPreorder._.Eq.refl
d_refl_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny
d_refl_316 ~v0 ~v1 ~v2 v3 = du_refl_316 v3
du_refl_316 :: T_TotalPreorder_232 -> AgdaAny -> AgdaAny
du_refl_316 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe d_isPreorder_158 (coe v1))))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.reflexive
d_reflexive_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_318 ~v0 ~v1 ~v2 v3 = du_reflexive_318 v3
du_reflexive_318 ::
  T_TotalPreorder_232 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_318 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_60 (coe v2)) v3))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.setoid
d_setoid_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> T_Setoid_44
d_setoid_320 ~v0 ~v1 ~v2 v3 = du_setoid_320 v3
du_setoid_320 :: T_TotalPreorder_232 -> T_Setoid_44
du_setoid_320 v0 = coe du_setoid_184 (coe du_preorder_262 (coe v0))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.sym
d_sym_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_322 ~v0 ~v1 ~v2 v3 = du_sym_322 v3
du_sym_322 ::
  T_TotalPreorder_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_322 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.TotalPreorder._.Eq.trans
d_trans_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_324 ~v0 ~v1 ~v2 v3 = du_trans_324 v3
du_trans_324 ::
  T_TotalPreorder_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_324 v0
  = let v1 = coe du_preorder_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.DecPreorder
d_DecPreorder_332 a0 a1 a2 = ()
newtype T_DecPreorder_332
  = C_DecPreorder'46'constructor_6325 MAlonzo.Code.Relation.Binary.Structures.T_IsDecPreorder_174
-- Relation.Binary.Bundles.DecPreorder.Carrier
d_Carrier_348 :: T_DecPreorder_332 -> ()
d_Carrier_348 = erased
-- Relation.Binary.Bundles.DecPreorder._≈_
d__'8776'__350 :: T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8776'__350 = erased
-- Relation.Binary.Bundles.DecPreorder._≲_
d__'8818'__352 :: T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8818'__352 = erased
-- Relation.Binary.Bundles.DecPreorder.isDecPreorder
d_isDecPreorder_354 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPreorder_174
d_isDecPreorder_354 v0
  = case coe v0 of
      C_DecPreorder'46'constructor_6325 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DecPreorder.DPO._≟_
d__'8799'__358 ::
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__186
      (coe d_isDecPreorder_354 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.DPO._≲?_
d__'8818''63'__360 ::
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8818''63'__360 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8818''63'__188
      (coe d_isDecPreorder_354 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.DPO.isPreorder
d_isPreorder_364 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_364 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
      (coe d_isDecPreorder_354 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.preorder
d_preorder_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> T_Preorder_136
d_preorder_402 ~v0 ~v1 ~v2 v3 = du_preorder_402 v3
du_preorder_402 :: T_DecPreorder_332 -> T_Preorder_136
du_preorder_402 v0
  = coe
      C_Preorder'46'constructor_2331
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder._._∼_
d__'8764'__406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8764'__406 = erased
-- Relation.Binary.Bundles.DecPreorder._._≉_
d__'8777'__408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8777'__408 = erased
-- Relation.Binary.Bundles.DecPreorder._._∼ᵒ_
d__'8764''7506'__410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__410 = erased
-- Relation.Binary.Bundles.DecPreorder._._≁_
d__'8769'__412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8769'__412 = erased
-- Relation.Binary.Bundles.DecPreorder._._≁ᵒ_
d__'8769''7506'__414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__414 = erased
-- Relation.Binary.Bundles.DecPreorder._.isEquivalence
d_isEquivalence_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_416 ~v0 ~v1 ~v2 v3 = du_isEquivalence_416 v3
du_isEquivalence_416 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_416 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder._.rawRelation
d_rawRelation_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_418 = erased
-- Relation.Binary.Bundles.DecPreorder._.rawSetoid
d_rawSetoid_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_420 = erased
-- Relation.Binary.Bundles.DecPreorder._.refl
d_refl_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny
d_refl_422 ~v0 ~v1 ~v2 v3 = du_refl_422 v3
du_refl_422 :: T_DecPreorder_332 -> AgdaAny -> AgdaAny
du_refl_422 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.reflexive
d_reflexive_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_424 ~v0 ~v1 ~v2 v3 = du_reflexive_424 v3
du_reflexive_424 ::
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_424 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder._.trans
d_trans_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_426 ~v0 ~v1 ~v2 v3 = du_trans_426 v3
du_trans_426 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_426 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder._.∼-resp-≈
d_'8764''45'resp'45''8776'_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_428 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_428 v3
du_'8764''45'resp'45''8776'_428 ::
  T_DecPreorder_332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_428 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_430 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_430 v3
du_'8764''45'resp'691''45''8776'_430 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_430 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_432 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_432 v3
du_'8764''45'resp'737''45''8776'_432 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_432 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.≲-resp-≈
d_'8818''45'resp'45''8776'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_434 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_434 v3
du_'8818''45'resp'45''8776'_434 ::
  T_DecPreorder_332 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_434 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_436 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_436 v3
du_'8818''45'resp'691''45''8776'_436 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_436 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_438 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_438 v3
du_'8818''45'resp'737''45''8776'_438 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_438 v0
  = let v1 = coe du_preorder_402 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder.Eq.decSetoid
d_decSetoid_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> T_DecSetoid_86
d_decSetoid_442 ~v0 ~v1 ~v2 v3 = du_decSetoid_442 v3
du_decSetoid_442 :: T_DecPreorder_332 -> T_DecSetoid_86
du_decSetoid_442 v0
  = coe
      C_DecSetoid'46'constructor_1435
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_214
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder.Eq._._≈_
d__'8776'__446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8776'__446 = erased
-- Relation.Binary.Bundles.DecPreorder.Eq._._≉_
d__'8777'__448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> ()
d__'8777'__448 = erased
-- Relation.Binary.Bundles.DecPreorder.Eq._._≟_
d__'8799'__450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__450 ~v0 ~v1 ~v2 v3 = du__'8799'__450 v3
du__'8799'__450 ::
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__186
      (coe d_isDecPreorder_354 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.Eq._.Carrier
d_Carrier_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_DecPreorder_332 -> ()
d_Carrier_452 = erased
-- Relation.Binary.Bundles.DecPreorder.Eq._.isDecEquivalence
d_isDecEquivalence_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_454 ~v0 ~v1 ~v2 v3 = du_isDecEquivalence_454 v3
du_isDecEquivalence_454 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_214
      (coe d_isDecPreorder_354 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.Eq._.isEquivalence
d_isEquivalence_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_456 ~v0 ~v1 ~v2 v3 = du_isEquivalence_456 v3
du_isEquivalence_456 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_456 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
         (coe d_isDecPreorder_354 (coe v0)))
-- Relation.Binary.Bundles.DecPreorder.Eq._.isPartialEquivalence
d_isPartialEquivalence_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_458 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_458 v3
du_isPartialEquivalence_458 ::
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_458 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.DecPreorder.Eq._.partialSetoid
d_partialSetoid_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> T_PartialSetoid_10
d_partialSetoid_460 ~v0 ~v1 ~v2 v3 = du_partialSetoid_460 v3
du_partialSetoid_460 :: T_DecPreorder_332 -> T_PartialSetoid_10
du_partialSetoid_460 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v1)))
-- Relation.Binary.Bundles.DecPreorder.Eq._.rawSetoid
d_rawSetoid_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_462 = erased
-- Relation.Binary.Bundles.DecPreorder.Eq._.refl
d_refl_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny
d_refl_464 ~v0 ~v1 ~v2 v3 = du_refl_464 v3
du_refl_464 :: T_DecPreorder_332 -> AgdaAny -> AgdaAny
du_refl_464 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe d_isDecEquivalence_102 (coe v1))))
-- Relation.Binary.Bundles.DecPreorder.Eq._.reflexive
d_reflexive_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_466 ~v0 ~v1 ~v2 v3 = du_reflexive_466 v3
du_reflexive_466 ::
  T_DecPreorder_332 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_466 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_60 (coe v2)) v3))
-- Relation.Binary.Bundles.DecPreorder.Eq._.setoid
d_setoid_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> T_Setoid_44
d_setoid_468 ~v0 ~v1 ~v2 v3 = du_setoid_468 v3
du_setoid_468 :: T_DecPreorder_332 -> T_Setoid_44
du_setoid_468 v0
  = coe du_setoid_110 (coe du_decSetoid_442 (coe v0))
-- Relation.Binary.Bundles.DecPreorder.Eq._.sym
d_sym_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_470 ~v0 ~v1 ~v2 v3 = du_sym_470 v3
du_sym_470 ::
  T_DecPreorder_332 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_470 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.DecPreorder.Eq._.trans
d_trans_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_472 ~v0 ~v1 ~v2 v3 = du_trans_472 v3
du_trans_472 ::
  T_DecPreorder_332 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_472 v0
  = let v1 = coe du_decSetoid_442 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.Poset
d_Poset_480 a0 a1 a2 = ()
newtype T_Poset_480
  = C_Poset'46'constructor_9149 MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
-- Relation.Binary.Bundles.Poset.Carrier
d_Carrier_496 :: T_Poset_480 -> ()
d_Carrier_496 = erased
-- Relation.Binary.Bundles.Poset._≈_
d__'8776'__498 :: T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8776'__498 = erased
-- Relation.Binary.Bundles.Poset._≤_
d__'8804'__500 :: T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8804'__500 = erased
-- Relation.Binary.Bundles.Poset.isPartialOrder
d_isPartialOrder_502 ::
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_502 v0
  = case coe v0 of
      C_Poset'46'constructor_9149 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.Poset._.antisym
d_antisym_506 ::
  T_Poset_480 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
      (coe d_isPartialOrder_502 (coe v0))
-- Relation.Binary.Bundles.Poset._.isPreorder
d_isPreorder_508 ::
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
      (coe d_isPartialOrder_502 (coe v0))
-- Relation.Binary.Bundles.Poset.preorder
d_preorder_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> T_Preorder_136
d_preorder_510 ~v0 ~v1 ~v2 v3 = du_preorder_510 v3
du_preorder_510 :: T_Poset_480 -> T_Preorder_136
du_preorder_510 v0
  = coe
      C_Preorder'46'constructor_2331
      (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
         (coe d_isPartialOrder_502 (coe v0)))
-- Relation.Binary.Bundles.Poset._._∼_
d__'8764'__514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8764'__514 = erased
-- Relation.Binary.Bundles.Poset._._≉_
d__'8777'__516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8777'__516 = erased
-- Relation.Binary.Bundles.Poset._.isEquivalence
d_isEquivalence_518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_518 ~v0 ~v1 ~v2 v3 = du_isEquivalence_518 v3
du_isEquivalence_518 ::
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_518 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
         (coe d_isPartialOrder_502 (coe v0)))
-- Relation.Binary.Bundles.Poset._.rawRelation
d_rawRelation_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_520 = erased
-- Relation.Binary.Bundles.Poset._.rawSetoid
d_rawSetoid_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_522 = erased
-- Relation.Binary.Bundles.Poset._.refl
d_refl_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny
d_refl_524 ~v0 ~v1 ~v2 v3 = du_refl_524 v3
du_refl_524 :: T_Poset_480 -> AgdaAny -> AgdaAny
du_refl_524 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_refl_98
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.reflexive
d_reflexive_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_526 ~v0 ~v1 ~v2 v3 = du_reflexive_526 v3
du_reflexive_526 ::
  T_Poset_480 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_526 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
         (coe d_isPartialOrder_502 (coe v0)))
-- Relation.Binary.Bundles.Poset._.trans
d_trans_528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_528 ~v0 ~v1 ~v2 v3 = du_trans_528 v3
du_trans_528 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_528 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_84
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
         (coe d_isPartialOrder_502 (coe v0)))
-- Relation.Binary.Bundles.Poset._.∼-resp-≈
d_'8764''45'resp'45''8776'_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_530 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_530 v3
du_'8764''45'resp'45''8776'_530 ::
  T_Poset_480 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_530 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_532 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_532 v3
du_'8764''45'resp'691''45''8776'_532 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_532 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_534 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_534 v3
du_'8764''45'resp'737''45''8776'_534 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_534 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.≲-resp-≈
d_'8818''45'resp'45''8776'_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_536 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_536 v3
du_'8818''45'resp'45''8776'_536 ::
  T_Poset_480 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_536 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_538 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_538 v3
du_'8818''45'resp'691''45''8776'_538 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_538 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_540 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_540 v3
du_'8818''45'resp'737''45''8776'_540 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_540 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.Eq._≈_
d__'8776'__544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8776'__544 = erased
-- Relation.Binary.Bundles.Poset._.Eq._≉_
d__'8777'__546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8777'__546 = erased
-- Relation.Binary.Bundles.Poset._.Eq.Carrier
d_Carrier_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_Poset_480 -> ()
d_Carrier_548 = erased
-- Relation.Binary.Bundles.Poset._.Eq.isEquivalence
d_isEquivalence_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_550 ~v0 ~v1 ~v2 v3 = du_isEquivalence_550 v3
du_isEquivalence_550 ::
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_550 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe d_isPreorder_158 (coe v1)))
-- Relation.Binary.Bundles.Poset._.Eq.isPartialEquivalence
d_isPartialEquivalence_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_552 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_552 v3
du_isPartialEquivalence_552 ::
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_552 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.Poset._.Eq.partialSetoid
d_partialSetoid_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> T_PartialSetoid_10
d_partialSetoid_554 ~v0 ~v1 ~v2 v3 = du_partialSetoid_554 v3
du_partialSetoid_554 :: T_Poset_480 -> T_PartialSetoid_10
du_partialSetoid_554 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe (coe du_partialSetoid_70 (coe du_setoid_184 (coe v1)))
-- Relation.Binary.Bundles.Poset._.Eq.rawSetoid
d_rawSetoid_556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_556 = erased
-- Relation.Binary.Bundles.Poset._.Eq.refl
d_refl_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny
d_refl_558 ~v0 ~v1 ~v2 v3 = du_refl_558 v3
du_refl_558 :: T_Poset_480 -> AgdaAny -> AgdaAny
du_refl_558 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe d_isPreorder_158 (coe v1))))
-- Relation.Binary.Bundles.Poset._.Eq.reflexive
d_reflexive_560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_560 ~v0 ~v1 ~v2 v3 = du_reflexive_560 v3
du_reflexive_560 ::
  T_Poset_480 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_560 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_60 (coe v2)) v3))
-- Relation.Binary.Bundles.Poset._.Eq.setoid
d_setoid_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> T_Setoid_44
d_setoid_562 ~v0 ~v1 ~v2 v3 = du_setoid_562 v3
du_setoid_562 :: T_Poset_480 -> T_Setoid_44
du_setoid_562 v0 = coe du_setoid_184 (coe du_preorder_510 (coe v0))
-- Relation.Binary.Bundles.Poset._.Eq.sym
d_sym_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_564 ~v0 ~v1 ~v2 v3 = du_sym_564 v3
du_sym_564 ::
  T_Poset_480 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_564 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.Poset._.Eq.trans
d_trans_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_566 ~v0 ~v1 ~v2 v3 = du_trans_566 v3
du_trans_566 ::
  T_Poset_480 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_566 v0
  = let v1 = coe du_preorder_510 (coe v0) in
    coe
      (let v2 = coe du_setoid_184 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.Poset._._∼ᵒ_
d__'8764''7506'__570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__570 = erased
-- Relation.Binary.Bundles.Poset._._≁_
d__'8769'__572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8769'__572 = erased
-- Relation.Binary.Bundles.Poset._._≁ᵒ_
d__'8769''7506'__574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_Poset_480 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__574 = erased
-- Relation.Binary.Bundles.DecPoset
d_DecPoset_582 a0 a1 a2 = ()
newtype T_DecPoset_582
  = C_DecPoset'46'constructor_11149 MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
-- Relation.Binary.Bundles.DecPoset.Carrier
d_Carrier_598 :: T_DecPoset_582 -> ()
d_Carrier_598 = erased
-- Relation.Binary.Bundles.DecPoset._≈_
d__'8776'__600 :: T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8776'__600 = erased
-- Relation.Binary.Bundles.DecPoset._≤_
d__'8804'__602 :: T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8804'__602 = erased
-- Relation.Binary.Bundles.DecPoset.isDecPartialOrder
d_isDecPartialOrder_604 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
d_isDecPartialOrder_604 v0
  = case coe v0 of
      C_DecPoset'46'constructor_11149 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DecPoset.DPO._≟_
d__'8799'__608 ::
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__608 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__298
      (coe d_isDecPartialOrder_604 (coe v0))
-- Relation.Binary.Bundles.DecPoset.DPO._≤?_
d__'8804''63'__610 ::
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__610 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__300
      (coe d_isDecPartialOrder_604 (coe v0))
-- Relation.Binary.Bundles.DecPoset.DPO.isDecPreorder
d_isDecPreorder_614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPreorder_174
d_isDecPreorder_614 ~v0 ~v1 ~v2 v3 = du_isDecPreorder_614 v3
du_isDecPreorder_614 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPreorder_174
du_isDecPreorder_614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecPreorder_328
      (coe d_isDecPartialOrder_604 (coe v0))
-- Relation.Binary.Bundles.DecPoset.DPO.isPartialOrder
d_isPartialOrder_618 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_296
      (coe d_isDecPartialOrder_604 (coe v0))
-- Relation.Binary.Bundles.DecPoset.poset
d_poset_658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_Poset_480
d_poset_658 ~v0 ~v1 ~v2 v3 = du_poset_658 v3
du_poset_658 :: T_DecPoset_582 -> T_Poset_480
du_poset_658 v0
  = coe
      C_Poset'46'constructor_9149
      (MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_296
         (coe d_isDecPartialOrder_604 (coe v0)))
-- Relation.Binary.Bundles.DecPoset._._∼_
d__'8764'__662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8764'__662 = erased
-- Relation.Binary.Bundles.DecPoset._._≉_
d__'8777'__664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8777'__664 = erased
-- Relation.Binary.Bundles.DecPoset._._∼ᵒ_
d__'8764''7506'__666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__666 = erased
-- Relation.Binary.Bundles.DecPoset._._≁_
d__'8769'__668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8769'__668 = erased
-- Relation.Binary.Bundles.DecPoset._._≁ᵒ_
d__'8769''7506'__670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__670 = erased
-- Relation.Binary.Bundles.DecPoset._.antisym
d_antisym_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_672 ~v0 ~v1 ~v2 v3 = du_antisym_672 v3
du_antisym_672 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_672 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_296
         (coe d_isDecPartialOrder_604 (coe v0)))
-- Relation.Binary.Bundles.DecPoset._.isEquivalence
d_isEquivalence_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_674 ~v0 ~v1 ~v2 v3 = du_isEquivalence_674 v3
du_isEquivalence_674 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_674 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.DecPoset._.isPreorder
d_isPreorder_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_676 ~v0 ~v1 ~v2 v3 = du_isPreorder_676 v3
du_isPreorder_676 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_676 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_296
         (coe d_isDecPartialOrder_604 (coe v0)))
-- Relation.Binary.Bundles.DecPoset._.preorder
d_preorder_678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_Preorder_136
d_preorder_678 ~v0 ~v1 ~v2 v3 = du_preorder_678 v3
du_preorder_678 :: T_DecPoset_582 -> T_Preorder_136
du_preorder_678 v0
  = coe du_preorder_510 (coe du_poset_658 (coe v0))
-- Relation.Binary.Bundles.DecPoset._.rawRelation
d_rawRelation_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_680 = erased
-- Relation.Binary.Bundles.DecPoset._.rawSetoid
d_rawSetoid_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_682 = erased
-- Relation.Binary.Bundles.DecPoset._.refl
d_refl_684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny
d_refl_684 ~v0 ~v1 ~v2 v3 = du_refl_684 v3
du_refl_684 :: T_DecPoset_582 -> AgdaAny -> AgdaAny
du_refl_684 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.reflexive
d_reflexive_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_686 ~v0 ~v1 ~v2 v3 = du_reflexive_686 v3
du_reflexive_686 ::
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_686 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.DecPoset._.trans
d_trans_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_688 ~v0 ~v1 ~v2 v3 = du_trans_688 v3
du_trans_688 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_688 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.DecPoset._.∼-resp-≈
d_'8764''45'resp'45''8776'_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_690 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_690 v3
du_'8764''45'resp'45''8776'_690 ::
  T_DecPoset_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_690 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_692 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_692 v3
du_'8764''45'resp'691''45''8776'_692 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_692 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_694 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_694 v3
du_'8764''45'resp'737''45''8776'_694 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_694 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.≲-resp-≈
d_'8818''45'resp'45''8776'_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_696 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_696 v3
du_'8818''45'resp'45''8776'_696 ::
  T_DecPoset_582 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_696 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_698 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_698 v3
du_'8818''45'resp'691''45''8776'_698 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_698 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_700 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_700 v3
du_'8818''45'resp'737''45''8776'_700 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_700 v0
  = let v1 = coe du_poset_658 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.DecPoset.decPreorder
d_decPreorder_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_DecPreorder_332
d_decPreorder_702 ~v0 ~v1 ~v2 v3 = du_decPreorder_702 v3
du_decPreorder_702 :: T_DecPoset_582 -> T_DecPreorder_332
du_decPreorder_702 v0
  = coe
      C_DecPreorder'46'constructor_6325
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecPreorder_328
         (coe d_isDecPartialOrder_604 (coe v0)))
-- Relation.Binary.Bundles.DecPoset._.Eq._≈_
d__'8776'__708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8776'__708 = erased
-- Relation.Binary.Bundles.DecPoset._.Eq._≉_
d__'8777'__710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> ()
d__'8777'__710 = erased
-- Relation.Binary.Bundles.DecPoset._.Eq._≟_
d__'8799'__712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__712 ~v0 ~v1 ~v2 v3 = du__'8799'__712 v3
du__'8799'__712 ::
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__712 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__186
         (coe d_isDecPreorder_354 (coe v1)))
-- Relation.Binary.Bundles.DecPoset._.Eq.Carrier
d_Carrier_714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_DecPoset_582 -> ()
d_Carrier_714 = erased
-- Relation.Binary.Bundles.DecPoset._.Eq.decSetoid
d_decSetoid_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_DecSetoid_86
d_decSetoid_716 ~v0 ~v1 ~v2 v3 = du_decSetoid_716 v3
du_decSetoid_716 :: T_DecPoset_582 -> T_DecSetoid_86
du_decSetoid_716 v0
  = coe du_decSetoid_442 (coe du_decPreorder_702 (coe v0))
-- Relation.Binary.Bundles.DecPoset._.Eq.isDecEquivalence
d_isDecEquivalence_718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_718 ~v0 ~v1 ~v2 v3 = du_isDecEquivalence_718 v3
du_isDecEquivalence_718 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_718 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_214
         (coe d_isDecPreorder_354 (coe v1)))
-- Relation.Binary.Bundles.DecPoset._.Eq.isEquivalence
d_isEquivalence_720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_720 ~v0 ~v1 ~v2 v3 = du_isEquivalence_720 v3
du_isEquivalence_720 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_720 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
            (coe d_isDecPreorder_354 (coe v1))))
-- Relation.Binary.Bundles.DecPoset._.Eq.isPartialEquivalence
d_isPartialEquivalence_722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_722 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_722 v3
du_isPartialEquivalence_722 ::
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_722 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.DecPoset._.Eq.partialSetoid
d_partialSetoid_724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_PartialSetoid_10
d_partialSetoid_724 ~v0 ~v1 ~v2 v3 = du_partialSetoid_724 v3
du_partialSetoid_724 :: T_DecPoset_582 -> T_PartialSetoid_10
du_partialSetoid_724 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v2))))
-- Relation.Binary.Bundles.DecPoset._.Eq.rawSetoid
d_rawSetoid_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_726 = erased
-- Relation.Binary.Bundles.DecPoset._.Eq.refl
d_refl_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny
d_refl_728 ~v0 ~v1 ~v2 v3 = du_refl_728 v3
du_refl_728 :: T_DecPoset_582 -> AgdaAny -> AgdaAny
du_refl_728 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
               (coe d_isDecEquivalence_102 (coe v2)))))
-- Relation.Binary.Bundles.DecPoset._.Eq.reflexive
d_reflexive_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_730 ~v0 ~v1 ~v2 v3 = du_reflexive_730 v3
du_reflexive_730 ::
  T_DecPoset_582 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_730 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_60 (coe v3)) v4)))
-- Relation.Binary.Bundles.DecPoset._.Eq.setoid
d_setoid_732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> T_Setoid_44
d_setoid_732 ~v0 ~v1 ~v2 v3 = du_setoid_732 v3
du_setoid_732 :: T_DecPoset_582 -> T_Setoid_44
du_setoid_732 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe (coe du_setoid_110 (coe du_decSetoid_442 (coe v1)))
-- Relation.Binary.Bundles.DecPoset._.Eq.sym
d_sym_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_734 ~v0 ~v1 ~v2 v3 = du_sym_734 v3
du_sym_734 ::
  T_DecPoset_582 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_734 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.DecPoset._.Eq.trans
d_trans_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_736 ~v0 ~v1 ~v2 v3 = du_trans_736 v3
du_trans_736 ::
  T_DecPoset_582 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_736 v0
  = let v1 = coe du_decPreorder_702 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_442 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.StrictPartialOrder
d_StrictPartialOrder_744 a0 a1 a2 = ()
newtype T_StrictPartialOrder_744
  = C_StrictPartialOrder'46'constructor_14243 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
-- Relation.Binary.Bundles.StrictPartialOrder.Carrier
d_Carrier_760 :: T_StrictPartialOrder_744 -> ()
d_Carrier_760 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._≈_
d__'8776'__762 ::
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8776'__762 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._<_
d__'60'__764 ::
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'60'__764 = erased
-- Relation.Binary.Bundles.StrictPartialOrder.isStrictPartialOrder
d_isStrictPartialOrder_766 ::
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_766 v0
  = case coe v0 of
      C_StrictPartialOrder'46'constructor_14243 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.StrictPartialOrder._.<-resp-≈
d_'60''45'resp'45''8776'_770 ::
  T_StrictPartialOrder_744 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_770 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_772 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_772 v3
du_'60''45'resp'691''45''8776'_772 ::
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_772 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_774 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_774 v3
du_'60''45'resp'737''45''8776'_774 ::
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_774 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder._.asym
d_asym_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_776 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._.irrefl
d_irrefl_778 ::
  T_StrictPartialOrder_744 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_778 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._.isEquivalence
d_isEquivalence_780 ::
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_780 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder._.trans
d_trans_782 ::
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_370
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq.setoid
d_setoid_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> T_Setoid_44
d_setoid_786 ~v0 ~v1 ~v2 v3 = du_setoid_786 v3
du_setoid_786 :: T_StrictPartialOrder_744 -> T_Setoid_44
du_setoid_786 v0
  = coe
      C_Setoid'46'constructor_761
      (MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
         (coe d_isStrictPartialOrder_766 (coe v0)))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._._≈_
d__'8776'__790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8776'__790 = erased
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._._≉_
d__'8777'__792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8777'__792 = erased
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.Carrier
d_Carrier_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> ()
d_Carrier_794 = erased
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.isEquivalence
d_isEquivalence_796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_796 ~v0 ~v1 ~v2 v3 = du_isEquivalence_796 v3
du_isEquivalence_796 ::
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_796 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
      (coe d_isStrictPartialOrder_766 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_798 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_798 v3
du_isPartialEquivalence_798 ::
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_798 v0
  = let v1 = coe du_setoid_786 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.partialSetoid
d_partialSetoid_800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> T_PartialSetoid_10
d_partialSetoid_800 ~v0 ~v1 ~v2 v3 = du_partialSetoid_800 v3
du_partialSetoid_800 ::
  T_StrictPartialOrder_744 -> T_PartialSetoid_10
du_partialSetoid_800 v0
  = coe du_partialSetoid_70 (coe du_setoid_786 (coe v0))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.rawSetoid
d_rawSetoid_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_802 = erased
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.refl
d_refl_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny
d_refl_804 ~v0 ~v1 ~v2 v3 = du_refl_804 v3
du_refl_804 :: T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny
du_refl_804 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
         (coe d_isStrictPartialOrder_766 (coe v0)))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.reflexive
d_reflexive_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_806 ~v0 ~v1 ~v2 v3 = du_reflexive_806 v3
du_reflexive_806 ::
  T_StrictPartialOrder_744 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_806 v0
  = let v1 = coe du_setoid_786 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_60 (coe v1)) v2)
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.sym
d_sym_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_808 ~v0 ~v1 ~v2 v3 = du_sym_808 v3
du_sym_808 ::
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_808 v0
  = let v1 = coe du_setoid_786 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.StrictPartialOrder.Eq._.trans
d_trans_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_810 ~v0 ~v1 ~v2 v3 = du_trans_810 v3
du_trans_810 ::
  T_StrictPartialOrder_744 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_810 v0
  = let v1 = coe du_setoid_786 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe d_isEquivalence_60 (coe v1)))
-- Relation.Binary.Bundles.StrictPartialOrder.rawRelation
d_rawRelation_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_812 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._._∼ᵒ_
d__'8764''7506'__816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__816 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._._≉_
d__'8777'__818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8777'__818 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._._≁_
d__'8769'__820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8769'__820 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._._≁ᵒ_
d__'8769''7506'__822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__822 = erased
-- Relation.Binary.Bundles.StrictPartialOrder._.rawSetoid
d_rawSetoid_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictPartialOrder_744 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_824 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder
d_DecStrictPartialOrder_832 a0 a1 a2 = ()
newtype T_DecStrictPartialOrder_832
  = C_DecStrictPartialOrder'46'constructor_16195 MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
-- Relation.Binary.Bundles.DecStrictPartialOrder.Carrier
d_Carrier_848 :: T_DecStrictPartialOrder_832 -> ()
d_Carrier_848 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._≈_
d__'8776'__850 ::
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8776'__850 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._<_
d__'60'__852 ::
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'60'__852 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder.isDecStrictPartialOrder
d_isDecStrictPartialOrder_854 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
d_isDecStrictPartialOrder_854 v0
  = case coe v0 of
      C_DecStrictPartialOrder'46'constructor_16195 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DecStrictPartialOrder.DSPO._<?_
d__'60''63'__858 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__858 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'60''63'__414
      (coe d_isDecStrictPartialOrder_854 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.DSPO._≟_
d__'8799'__860 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__860 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__412
      (coe d_isDecStrictPartialOrder_854 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.DSPO.isStrictPartialOrder
d_isStrictPartialOrder_874 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_874 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
      (coe d_isDecStrictPartialOrder_854 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.strictPartialOrder
d_strictPartialOrder_896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> T_StrictPartialOrder_744
d_strictPartialOrder_896 ~v0 ~v1 ~v2 v3
  = du_strictPartialOrder_896 v3
du_strictPartialOrder_896 ::
  T_DecStrictPartialOrder_832 -> T_StrictPartialOrder_744
du_strictPartialOrder_896 v0
  = coe
      C_StrictPartialOrder'46'constructor_14243
      (MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder._._∼ᵒ_
d__'8764''7506'__900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__900 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._._≉_
d__'8777'__902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8777'__902 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._._≁_
d__'8769'__904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8769'__904 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._._≁ᵒ_
d__'8769''7506'__906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__906 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._.<-resp-≈
d_'60''45'resp'45''8776'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_908 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_908 v3
du_'60''45'resp'45''8776'_908 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_908 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_910 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_910 v3
du_'60''45'resp'691''45''8776'_910 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_910 v0
  = let v1 = coe du_strictPartialOrder_896 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
         (coe d_isStrictPartialOrder_766 (coe v1)))
-- Relation.Binary.Bundles.DecStrictPartialOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_912 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_912 v3
du_'60''45'resp'737''45''8776'_912 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_912 v0
  = let v1 = coe du_strictPartialOrder_896 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
         (coe d_isStrictPartialOrder_766 (coe v1)))
-- Relation.Binary.Bundles.DecStrictPartialOrder._.asym
d_asym_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_914 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._.irrefl
d_irrefl_916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_916 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._.isEquivalence
d_isEquivalence_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_918 ~v0 ~v1 ~v2 v3 = du_isEquivalence_918 v3
du_isEquivalence_918 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_918 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder._.rawRelation
d_rawRelation_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_920 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._.rawSetoid
d_rawSetoid_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_922 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder._.trans
d_trans_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_924 ~v0 ~v1 ~v2 v3 = du_trans_924 v3
du_trans_924 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_924 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_370
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq.decSetoid
d_decSetoid_928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> T_DecSetoid_86
d_decSetoid_928 ~v0 ~v1 ~v2 v3 = du_decSetoid_928 v3
du_decSetoid_928 :: T_DecStrictPartialOrder_832 -> T_DecSetoid_86
du_decSetoid_928 v0
  = coe
      C_DecSetoid'46'constructor_1435
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_446
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≈_
d__'8776'__932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8776'__932 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≉_
d__'8777'__934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny -> ()
d__'8777'__934 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._._≟_
d__'8799'__936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__936 ~v0 ~v1 ~v2 v3 = du__'8799'__936 v3
du__'8799'__936 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__412
      (coe d_isDecStrictPartialOrder_854 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.Carrier
d_Carrier_938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> ()
d_Carrier_938 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isDecEquivalence
d_isDecEquivalence_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_940 ~v0 ~v1 ~v2 v3 = du_isDecEquivalence_940 v3
du_isDecEquivalence_940 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_940 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_446
      (coe d_isDecStrictPartialOrder_854 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isEquivalence
d_isEquivalence_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_942 ~v0 ~v1 ~v2 v3 = du_isEquivalence_942 v3
du_isEquivalence_942 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_942 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
         (coe d_isDecStrictPartialOrder_854 (coe v0)))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.isPartialEquivalence
d_isPartialEquivalence_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_944 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_944 v3
du_isPartialEquivalence_944 ::
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_944 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.partialSetoid
d_partialSetoid_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> T_PartialSetoid_10
d_partialSetoid_946 ~v0 ~v1 ~v2 v3 = du_partialSetoid_946 v3
du_partialSetoid_946 ::
  T_DecStrictPartialOrder_832 -> T_PartialSetoid_10
du_partialSetoid_946 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v1)))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.rawSetoid
d_rawSetoid_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_948 = erased
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.refl
d_refl_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny
d_refl_950 ~v0 ~v1 ~v2 v3 = du_refl_950 v3
du_refl_950 :: T_DecStrictPartialOrder_832 -> AgdaAny -> AgdaAny
du_refl_950 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe d_isDecEquivalence_102 (coe v1))))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.reflexive
d_reflexive_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_952 ~v0 ~v1 ~v2 v3 = du_reflexive_952 v3
du_reflexive_952 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_952 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_60 (coe v2)) v3))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.setoid
d_setoid_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 -> T_Setoid_44
d_setoid_954 ~v0 ~v1 ~v2 v3 = du_setoid_954 v3
du_setoid_954 :: T_DecStrictPartialOrder_832 -> T_Setoid_44
du_setoid_954 v0
  = coe du_setoid_110 (coe du_decSetoid_928 (coe v0))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.sym
d_sym_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_956 ~v0 ~v1 ~v2 v3 = du_sym_956 v3
du_sym_956 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_956 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.DecStrictPartialOrder.Eq._.trans
d_trans_958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_958 ~v0 ~v1 ~v2 v3 = du_trans_958 v3
du_trans_958 ::
  T_DecStrictPartialOrder_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_958 v0
  = let v1 = coe du_decSetoid_928 (coe v0) in
    coe
      (let v2 = coe du_setoid_110 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe d_isEquivalence_60 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder
d_TotalOrder_966 a0 a1 a2 = ()
newtype T_TotalOrder_966
  = C_TotalOrder'46'constructor_18801 MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
-- Relation.Binary.Bundles.TotalOrder.Carrier
d_Carrier_982 :: T_TotalOrder_966 -> ()
d_Carrier_982 = erased
-- Relation.Binary.Bundles.TotalOrder._≈_
d__'8776'__984 :: T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8776'__984 = erased
-- Relation.Binary.Bundles.TotalOrder._≤_
d__'8804'__986 :: T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8804'__986 = erased
-- Relation.Binary.Bundles.TotalOrder.isTotalOrder
d_isTotalOrder_988 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_isTotalOrder_988 v0
  = case coe v0 of
      C_TotalOrder'46'constructor_18801 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.TotalOrder._.isPartialOrder
d_isPartialOrder_992 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_992 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
      (coe d_isTotalOrder_988 (coe v0))
-- Relation.Binary.Bundles.TotalOrder._.isTotalPreorder
d_isTotalPreorder_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_isTotalPreorder_994 ~v0 ~v1 ~v2 v3 = du_isTotalPreorder_994 v3
du_isTotalPreorder_994 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
du_isTotalPreorder_994 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isTotalPreorder_518
      (coe d_isTotalOrder_988 (coe v0))
-- Relation.Binary.Bundles.TotalOrder._.total
d_total_996 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_996 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_478
      (coe d_isTotalOrder_988 (coe v0))
-- Relation.Binary.Bundles.TotalOrder.poset
d_poset_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> T_Poset_480
d_poset_998 ~v0 ~v1 ~v2 v3 = du_poset_998 v3
du_poset_998 :: T_TotalOrder_966 -> T_Poset_480
du_poset_998 v0
  = coe
      C_Poset'46'constructor_9149
      (MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
         (coe d_isTotalOrder_988 (coe v0)))
-- Relation.Binary.Bundles.TotalOrder._._∼_
d__'8764'__1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8764'__1002 = erased
-- Relation.Binary.Bundles.TotalOrder._._≉_
d__'8777'__1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1004 = erased
-- Relation.Binary.Bundles.TotalOrder._._∼ᵒ_
d__'8764''7506'__1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__1006 = erased
-- Relation.Binary.Bundles.TotalOrder._._≁_
d__'8769'__1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8769'__1008 = erased
-- Relation.Binary.Bundles.TotalOrder._._≁ᵒ_
d__'8769''7506'__1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__1010 = erased
-- Relation.Binary.Bundles.TotalOrder._.antisym
d_antisym_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1012 ~v0 ~v1 ~v2 v3 = du_antisym_1012 v3
du_antisym_1012 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_1012 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
         (coe d_isTotalOrder_988 (coe v0)))
-- Relation.Binary.Bundles.TotalOrder._.isEquivalence
d_isEquivalence_1014 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1014 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1014 v3
du_isEquivalence_1014 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1014 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.TotalOrder._.isPreorder
d_isPreorder_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1016 ~v0 ~v1 ~v2 v3 = du_isPreorder_1016 v3
du_isPreorder_1016 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1016 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
         (coe d_isTotalOrder_988 (coe v0)))
-- Relation.Binary.Bundles.TotalOrder._.preorder
d_preorder_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> T_Preorder_136
d_preorder_1018 ~v0 ~v1 ~v2 v3 = du_preorder_1018 v3
du_preorder_1018 :: T_TotalOrder_966 -> T_Preorder_136
du_preorder_1018 v0
  = coe du_preorder_510 (coe du_poset_998 (coe v0))
-- Relation.Binary.Bundles.TotalOrder._.rawRelation
d_rawRelation_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_1020 = erased
-- Relation.Binary.Bundles.TotalOrder._.rawSetoid
d_rawSetoid_1022 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1022 = erased
-- Relation.Binary.Bundles.TotalOrder._.refl
d_refl_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny
d_refl_1024 ~v0 ~v1 ~v2 v3 = du_refl_1024 v3
du_refl_1024 :: T_TotalOrder_966 -> AgdaAny -> AgdaAny
du_refl_1024 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_refl_98
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.reflexive
d_reflexive_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1026 ~v0 ~v1 ~v2 v3 = du_reflexive_1026 v3
du_reflexive_1026 ::
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_1026 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.TotalOrder._.trans
d_trans_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1028 ~v0 ~v1 ~v2 v3 = du_trans_1028 v3
du_trans_1028 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1028 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe d_isPartialOrder_502 (coe v1))))
-- Relation.Binary.Bundles.TotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1030 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_1030 v3
du_'8764''45'resp'45''8776'_1030 ::
  T_TotalOrder_966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1030 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1032 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_1032 v3
du_'8764''45'resp'691''45''8776'_1032 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1032 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1034 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_1034 v3
du_'8764''45'resp'737''45''8776'_1034 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1034 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_1036 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_1036 v3
du_'8818''45'resp'45''8776'_1036 ::
  T_TotalOrder_966 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_1036 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_1038 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_1038 v3
du_'8818''45'resp'691''45''8776'_1038 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_1038 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_1040 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_1040 v3
du_'8818''45'resp'737''45''8776'_1040 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_1040 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.Eq._≈_
d__'8776'__1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1044 = erased
-- Relation.Binary.Bundles.TotalOrder._.Eq._≉_
d__'8777'__1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1046 = erased
-- Relation.Binary.Bundles.TotalOrder._.Eq.Carrier
d_Carrier_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_TotalOrder_966 -> ()
d_Carrier_1048 = erased
-- Relation.Binary.Bundles.TotalOrder._.Eq.isEquivalence
d_isEquivalence_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1050 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1050 v3
du_isEquivalence_1050 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1050 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe d_isPreorder_158 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1052 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1052 v3
du_isPartialEquivalence_1052 ::
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1052 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (let v3 = coe du_setoid_184 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.TotalOrder._.Eq.partialSetoid
d_partialSetoid_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> T_PartialSetoid_10
d_partialSetoid_1054 ~v0 ~v1 ~v2 v3 = du_partialSetoid_1054 v3
du_partialSetoid_1054 :: T_TotalOrder_966 -> T_PartialSetoid_10
du_partialSetoid_1054 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe (coe du_partialSetoid_70 (coe du_setoid_184 (coe v2))))
-- Relation.Binary.Bundles.TotalOrder._.Eq.rawSetoid
d_rawSetoid_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1056 = erased
-- Relation.Binary.Bundles.TotalOrder._.Eq.refl
d_refl_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny
d_refl_1058 ~v0 ~v1 ~v2 v3 = du_refl_1058 v3
du_refl_1058 :: T_TotalOrder_966 -> AgdaAny -> AgdaAny
du_refl_1058 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
               (coe d_isPreorder_158 (coe v2)))))
-- Relation.Binary.Bundles.TotalOrder._.Eq.reflexive
d_reflexive_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1060 ~v0 ~v1 ~v2 v3 = du_reflexive_1060 v3
du_reflexive_1060 ::
  T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1060 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (let v3 = coe du_setoid_184 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_60 (coe v3)) v4)))
-- Relation.Binary.Bundles.TotalOrder._.Eq.setoid
d_setoid_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> T_Setoid_44
d_setoid_1062 ~v0 ~v1 ~v2 v3 = du_setoid_1062 v3
du_setoid_1062 :: T_TotalOrder_966 -> T_Setoid_44
du_setoid_1062 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe (coe du_setoid_184 (coe du_preorder_510 (coe v1)))
-- Relation.Binary.Bundles.TotalOrder._.Eq.sym
d_sym_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1064 ~v0 ~v1 ~v2 v3 = du_sym_1064 v3
du_sym_1064 ::
  T_TotalOrder_966 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1064 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (let v3 = coe du_setoid_184 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.TotalOrder._.Eq.trans
d_trans_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1066 ~v0 ~v1 ~v2 v3 = du_trans_1066 v3
du_trans_1066 ::
  T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1066 v0
  = let v1 = coe du_poset_998 (coe v0) in
    coe
      (let v2 = coe du_preorder_510 (coe v1) in
       coe
         (let v3 = coe du_setoid_184 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.TotalOrder.totalPreorder
d_totalPreorder_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_TotalOrder_966 -> T_TotalPreorder_232
d_totalPreorder_1068 ~v0 ~v1 ~v2 v3 = du_totalPreorder_1068 v3
du_totalPreorder_1068 :: T_TotalOrder_966 -> T_TotalPreorder_232
du_totalPreorder_1068 v0
  = coe
      C_TotalPreorder'46'constructor_4405
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isTotalPreorder_518
         (coe d_isTotalOrder_988 (coe v0)))
-- Relation.Binary.Bundles.DecTotalOrder
d_DecTotalOrder_1076 a0 a1 a2 = ()
newtype T_DecTotalOrder_1076
  = C_DecTotalOrder'46'constructor_21007 MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
-- Relation.Binary.Bundles.DecTotalOrder.Carrier
d_Carrier_1092 :: T_DecTotalOrder_1076 -> ()
d_Carrier_1092 = erased
-- Relation.Binary.Bundles.DecTotalOrder._≈_
d__'8776'__1094 :: T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1094 = erased
-- Relation.Binary.Bundles.DecTotalOrder._≤_
d__'8804'__1096 :: T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8804'__1096 = erased
-- Relation.Binary.Bundles.DecTotalOrder.isDecTotalOrder
d_isDecTotalOrder_1098 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecTotalOrder_524
d_isDecTotalOrder_1098 v0
  = case coe v0 of
      C_DecTotalOrder'46'constructor_21007 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DecTotalOrder.DTO._≟_
d__'8799'__1102 ::
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1102 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8799'__536
      (coe d_isDecTotalOrder_1098 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder.DTO._≤?_
d__'8804''63'__1104 ::
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8804''63'__1104 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d__'8804''63'__538
      (coe d_isDecTotalOrder_1098 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder.DTO.isDecPartialOrder
d_isDecPartialOrder_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
d_isDecPartialOrder_1108 ~v0 ~v1 ~v2 v3
  = du_isDecPartialOrder_1108 v3
du_isDecPartialOrder_1108 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecPartialOrder_286
du_isDecPartialOrder_1108 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecPartialOrder_572
      (coe d_isDecTotalOrder_1098 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder.DTO.isTotalOrder
d_isTotalOrder_1118 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalOrder_468
d_isTotalOrder_1118 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
      (coe d_isDecTotalOrder_1098 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder.totalOrder
d_totalOrder_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_TotalOrder_966
d_totalOrder_1160 ~v0 ~v1 ~v2 v3 = du_totalOrder_1160 v3
du_totalOrder_1160 :: T_DecTotalOrder_1076 -> T_TotalOrder_966
du_totalOrder_1160 v0
  = coe
      C_TotalOrder'46'constructor_18801
      (MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
         (coe d_isDecTotalOrder_1098 (coe v0)))
-- Relation.Binary.Bundles.DecTotalOrder._._∼_
d__'8764'__1164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8764'__1164 = erased
-- Relation.Binary.Bundles.DecTotalOrder._._≉_
d__'8777'__1166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1166 = erased
-- Relation.Binary.Bundles.DecTotalOrder._._∼ᵒ_
d__'8764''7506'__1168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__1168 = erased
-- Relation.Binary.Bundles.DecTotalOrder._._≁_
d__'8769'__1170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8769'__1170 = erased
-- Relation.Binary.Bundles.DecTotalOrder._._≁ᵒ_
d__'8769''7506'__1172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__1172 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.antisym
d_antisym_1174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_antisym_1174 ~v0 ~v1 ~v2 v3 = du_antisym_1174 v3
du_antisym_1174 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_antisym_1174 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
            (coe d_isTotalOrder_988 (coe v1))))
-- Relation.Binary.Bundles.DecTotalOrder._.isEquivalence
d_isEquivalence_1176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1176 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1176 v3
du_isEquivalence_1176 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1176 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe d_isPartialOrder_502 (coe v2)))))
-- Relation.Binary.Bundles.DecTotalOrder._.isPartialOrder
d_isPartialOrder_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
d_isPartialOrder_1178 ~v0 ~v1 ~v2 v3 = du_isPartialOrder_1178 v3
du_isPartialOrder_1178 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_236
du_isPartialOrder_1178 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
         (coe d_isDecTotalOrder_1098 (coe v0)))
-- Relation.Binary.Bundles.DecTotalOrder._.isPreorder
d_isPreorder_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_isPreorder_1180 ~v0 ~v1 ~v2 v3 = du_isPreorder_1180 v3
du_isPreorder_1180 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_isPreorder_1180 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
            (coe d_isTotalOrder_988 (coe v1))))
-- Relation.Binary.Bundles.DecTotalOrder._.isTotalPreorder
d_isTotalPreorder_1182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
d_isTotalPreorder_1182 ~v0 ~v1 ~v2 v3 = du_isTotalPreorder_1182 v3
du_isTotalPreorder_1182 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsTotalPreorder_124
du_isTotalPreorder_1182 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isTotalPreorder_518
         (coe d_isTotalOrder_988 (coe v1)))
-- Relation.Binary.Bundles.DecTotalOrder._.poset
d_poset_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_Poset_480
d_poset_1184 ~v0 ~v1 ~v2 v3 = du_poset_1184 v3
du_poset_1184 :: T_DecTotalOrder_1076 -> T_Poset_480
du_poset_1184 v0
  = coe du_poset_998 (coe du_totalOrder_1160 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder._.preorder
d_preorder_1186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_Preorder_136
d_preorder_1186 ~v0 ~v1 ~v2 v3 = du_preorder_1186 v3
du_preorder_1186 :: T_DecTotalOrder_1076 -> T_Preorder_136
du_preorder_1186 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe (coe du_preorder_510 (coe du_poset_998 (coe v1)))
-- Relation.Binary.Bundles.DecTotalOrder._.rawRelation
d_rawRelation_1188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_1188 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.rawSetoid
d_rawSetoid_1190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1190 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.refl
d_refl_1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny
d_refl_1192 ~v0 ~v1 ~v2 v3 = du_refl_1192 v3
du_refl_1192 :: T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny
du_refl_1192 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_refl_98
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.reflexive
d_reflexive_1194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_reflexive_1194 ~v0 ~v1 ~v2 v3 = du_reflexive_1194 v3
du_reflexive_1194 ::
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_reflexive_1194 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_reflexive_82
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe d_isPartialOrder_502 (coe v2)))))
-- Relation.Binary.Bundles.DecTotalOrder._.total
d_total_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_total_1196 ~v0 ~v1 ~v2 v3 = du_total_1196 v3
du_total_1196 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_total_1196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_total_478
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isTotalOrder_534
         (coe d_isDecTotalOrder_1098 (coe v0)))
-- Relation.Binary.Bundles.DecTotalOrder._.totalPreorder
d_totalPreorder_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_TotalPreorder_232
d_totalPreorder_1198 ~v0 ~v1 ~v2 v3 = du_totalPreorder_1198 v3
du_totalPreorder_1198 ::
  T_DecTotalOrder_1076 -> T_TotalPreorder_232
du_totalPreorder_1198 v0
  = coe du_totalPreorder_1068 (coe du_totalOrder_1160 (coe v0))
-- Relation.Binary.Bundles.DecTotalOrder._.trans
d_trans_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1200 ~v0 ~v1 ~v2 v3 = du_trans_1200 v3
du_trans_1200 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1200 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe d_isPartialOrder_502 (coe v2)))))
-- Relation.Binary.Bundles.DecTotalOrder._.∼-resp-≈
d_'8764''45'resp'45''8776'_1202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8764''45'resp'45''8776'_1202 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'45''8776'_1202 v3
du_'8764''45'resp'45''8776'_1202 ::
  T_DecTotalOrder_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8764''45'resp'45''8776'_1202 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'45''8776'_118
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.∼-respʳ-≈
d_'8764''45'resp'691''45''8776'_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'691''45''8776'_1204 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'691''45''8776'_1204 v3
du_'8764''45'resp'691''45''8776'_1204 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'691''45''8776'_1204 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'691''45''8776'_116
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.∼-respˡ-≈
d_'8764''45'resp'737''45''8776'_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8764''45'resp'737''45''8776'_1206 ~v0 ~v1 ~v2 v3
  = du_'8764''45'resp'737''45''8776'_1206 v3
du_'8764''45'resp'737''45''8776'_1206 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8764''45'resp'737''45''8776'_1206 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8764''45'resp'737''45''8776'_114
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.≲-resp-≈
d_'8818''45'resp'45''8776'_1208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8818''45'resp'45''8776'_1208 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'45''8776'_1208 v3
du_'8818''45'resp'45''8776'_1208 ::
  T_DecTotalOrder_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8818''45'resp'45''8776'_1208 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.≲-respʳ-≈
d_'8818''45'resp'691''45''8776'_1210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'691''45''8776'_1210 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'691''45''8776'_1210 v3
du_'8818''45'resp'691''45''8776'_1210 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'691''45''8776'_1210 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.≲-respˡ-≈
d_'8818''45'resp'737''45''8776'_1212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8818''45'resp'737''45''8776'_1212 ~v0 ~v1 ~v2 v3
  = du_'8818''45'resp'737''45''8776'_1212 v3
du_'8818''45'resp'737''45''8776'_1212 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8818''45'resp'737''45''8776'_1212 v0
  = let v1 = coe du_totalOrder_1160 (coe v0) in
    coe
      (let v2 = coe du_poset_998 (coe v1) in
       coe
         (let v3 = coe du_preorder_510 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
               (coe d_isPreorder_158 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder.decPoset
d_decPoset_1214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_DecPoset_582
d_decPoset_1214 ~v0 ~v1 ~v2 v3 = du_decPoset_1214 v3
du_decPoset_1214 :: T_DecTotalOrder_1076 -> T_DecPoset_582
du_decPoset_1214 v0
  = coe
      C_DecPoset'46'constructor_11149
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecPartialOrder_572
         (coe d_isDecTotalOrder_1098 (coe v0)))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq._≈_
d__'8776'__1220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1220 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.Eq._≉_
d__'8777'__1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1222 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.Eq._≟_
d__'8799'__1224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1224 ~v0 ~v1 ~v2 v3 = du__'8799'__1224 v3
du__'8799'__1224 ::
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__1224 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__186
            (coe d_isDecPreorder_354 (coe v2))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.Carrier
d_Carrier_1226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> ()
d_Carrier_1226 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.decSetoid
d_decSetoid_1228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_DecSetoid_86
d_decSetoid_1228 ~v0 ~v1 ~v2 v3 = du_decSetoid_1228 v3
du_decSetoid_1228 :: T_DecTotalOrder_1076 -> T_DecSetoid_86
du_decSetoid_1228 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe (coe du_decSetoid_442 (coe du_decPreorder_702 (coe v1)))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.isDecEquivalence
d_isDecEquivalence_1230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1230 ~v0 ~v1 ~v2 v3
  = du_isDecEquivalence_1230 v3
du_isDecEquivalence_1230 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_1230 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_214
            (coe d_isDecPreorder_354 (coe v2))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.isEquivalence
d_isEquivalence_1232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1232 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1232 v3
du_isEquivalence_1232 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1232 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_184
               (coe d_isDecPreorder_354 (coe v2)))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_1234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1234 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1234 v3
du_isPartialEquivalence_1234 ::
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1234 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.partialSetoid
d_partialSetoid_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_PartialSetoid_10
d_partialSetoid_1236 ~v0 ~v1 ~v2 v3 = du_partialSetoid_1236 v3
du_partialSetoid_1236 :: T_DecTotalOrder_1076 -> T_PartialSetoid_10
du_partialSetoid_1236 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v3)))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.rawSetoid
d_rawSetoid_1238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1238 = erased
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.refl
d_refl_1240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny
d_refl_1240 ~v0 ~v1 ~v2 v3 = du_refl_1240 v3
du_refl_1240 :: T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny
du_refl_1240 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
                  (coe d_isDecEquivalence_102 (coe v3))))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.reflexive
d_reflexive_1242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1242 ~v0 ~v1 ~v2 v3 = du_reflexive_1242 v3
du_reflexive_1242 ::
  T_DecTotalOrder_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1242 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_60 (coe v4)) v5))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.setoid
d_setoid_1244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> T_Setoid_44
d_setoid_1244 ~v0 ~v1 ~v2 v3 = du_setoid_1244 v3
du_setoid_1244 :: T_DecTotalOrder_1076 -> T_Setoid_44
du_setoid_1244 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe (coe du_setoid_110 (coe du_decSetoid_442 (coe v2))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.sym
d_sym_1246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1246 ~v0 ~v1 ~v2 v3 = du_sym_1246 v3
du_sym_1246 ::
  T_DecTotalOrder_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1246 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.DecTotalOrder._.Eq.trans
d_trans_1248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1248 ~v0 ~v1 ~v2 v3 = du_trans_1248 v3
du_trans_1248 ::
  T_DecTotalOrder_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1248 v0
  = let v1 = coe du_decPoset_1214 (coe v0) in
    coe
      (let v2 = coe du_decPreorder_702 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_442 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.StrictTotalOrder
d_StrictTotalOrder_1256 a0 a1 a2 = ()
newtype T_StrictTotalOrder_1256
  = C_StrictTotalOrder'46'constructor_24345 MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
-- Relation.Binary.Bundles.StrictTotalOrder.Carrier
d_Carrier_1272 :: T_StrictTotalOrder_1256 -> ()
d_Carrier_1272 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._≈_
d__'8776'__1274 ::
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1274 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._<_
d__'60'__1276 ::
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'60'__1276 = erased
-- Relation.Binary.Bundles.StrictTotalOrder.isStrictTotalOrder
d_isStrictTotalOrder_1278 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_isStrictTotalOrder_1278 v0
  = case coe v0 of
      C_StrictTotalOrder'46'constructor_24345 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.StrictTotalOrder._._<?_
d__'60''63'__1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__1282 ~v0 ~v1 ~v2 v3 = du__'60''63'__1282 v3
du__'60''63'__1282 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__1282 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du__'60''63'__630
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._._≟_
d__'8799'__1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1284 ~v0 ~v1 ~v2 v3 = du__'8799'__1284 v3
du__'8799'__1284 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__1284 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du__'8799'__628
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._.compare
d_compare_1286 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_1286 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_compare_610
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._.isDecEquivalence
d_isDecEquivalence_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1288 ~v0 ~v1 ~v2 v3
  = du_isDecEquivalence_1288 v3
du_isDecEquivalence_1288 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_1288 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_654
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._.isDecStrictPartialOrder
d_isDecStrictPartialOrder_1290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
d_isDecStrictPartialOrder_1290 ~v0 ~v1 ~v2 v3
  = du_isDecStrictPartialOrder_1290 v3
du_isDecStrictPartialOrder_1290 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
du_isDecStrictPartialOrder_1290 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isDecStrictPartialOrder_632
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._.isStrictPartialOrder
d_isStrictPartialOrder_1292 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_1292 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
      (coe d_isStrictTotalOrder_1278 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder.strictPartialOrder
d_strictPartialOrder_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_StrictPartialOrder_744
d_strictPartialOrder_1294 ~v0 ~v1 ~v2 v3
  = du_strictPartialOrder_1294 v3
du_strictPartialOrder_1294 ::
  T_StrictTotalOrder_1256 -> T_StrictPartialOrder_744
du_strictPartialOrder_1294 v0
  = coe
      C_StrictPartialOrder'46'constructor_14243
      (MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
         (coe d_isStrictTotalOrder_1278 (coe v0)))
-- Relation.Binary.Bundles.StrictTotalOrder._._∼ᵒ_
d__'8764''7506'__1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__1298 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._._≉_
d__'8777'__1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1300 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._._≁_
d__'8769'__1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8769'__1302 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._._≁ᵒ_
d__'8769''7506'__1304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__1304 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.<-resp-≈
d_'60''45'resp'45''8776'_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_1306 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_1306 v3
du_'60''45'resp'45''8776'_1306 ::
  T_StrictTotalOrder_1256 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_1306 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
         (coe d_isStrictTotalOrder_1278 (coe v0)))
-- Relation.Binary.Bundles.StrictTotalOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_1308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_1308 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_1308 v3
du_'60''45'resp'691''45''8776'_1308 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_1308 v0
  = let v1 = coe du_strictPartialOrder_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
         (coe d_isStrictPartialOrder_766 (coe v1)))
-- Relation.Binary.Bundles.StrictTotalOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_1310 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_1310 v3
du_'60''45'resp'737''45''8776'_1310 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_1310 v0
  = let v1 = coe du_strictPartialOrder_1294 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
         (coe d_isStrictPartialOrder_766 (coe v1)))
-- Relation.Binary.Bundles.StrictTotalOrder._.asym
d_asym_1312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_1312 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.irrefl
d_irrefl_1314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_1314 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.isEquivalence
d_isEquivalence_1316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1316 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1316 v3
du_isEquivalence_1316 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
         (coe d_isStrictTotalOrder_1278 (coe v0)))
-- Relation.Binary.Bundles.StrictTotalOrder._.rawRelation
d_rawRelation_1318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_1318 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.rawSetoid
d_rawSetoid_1320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1320 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.trans
d_trans_1322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1322 ~v0 ~v1 ~v2 v3 = du_trans_1322 v3
du_trans_1322 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_370
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
         (coe d_isStrictTotalOrder_1278 (coe v0)))
-- Relation.Binary.Bundles.StrictTotalOrder.decStrictPartialOrder
d_decStrictPartialOrder_1324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_DecStrictPartialOrder_832
d_decStrictPartialOrder_1324 ~v0 ~v1 ~v2 v3
  = du_decStrictPartialOrder_1324 v3
du_decStrictPartialOrder_1324 ::
  T_StrictTotalOrder_1256 -> T_DecStrictPartialOrder_832
du_decStrictPartialOrder_1324 v0
  = coe
      C_DecStrictPartialOrder'46'constructor_16195
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecStrictPartialOrder_632
         (coe d_isStrictTotalOrder_1278 (coe v0)))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq._≈_
d__'8776'__1330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1330 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq._≉_
d__'8777'__1332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1332 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq._≟_
d__'8799'__1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1334 ~v0 ~v1 ~v2 v3 = du__'8799'__1334 v3
du__'8799'__1334 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__1334 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d__'8799'__412
         (coe d_isDecStrictPartialOrder_854 (coe v1)))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.Carrier
d_Carrier_1336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> ()
d_Carrier_1336 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.decSetoid
d_decSetoid_1338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_DecSetoid_86
d_decSetoid_1338 ~v0 ~v1 ~v2 v3 = du_decSetoid_1338 v3
du_decSetoid_1338 :: T_StrictTotalOrder_1256 -> T_DecSetoid_86
du_decSetoid_1338 v0
  = coe du_decSetoid_928 (coe du_decStrictPartialOrder_1324 (coe v0))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.isDecEquivalence
d_isDecEquivalence_1340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1340 ~v0 ~v1 ~v2 v3
  = du_isDecEquivalence_1340 v3
du_isDecEquivalence_1340 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_1340 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_446
         (coe d_isDecStrictPartialOrder_854 (coe v1)))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.isEquivalence
d_isEquivalence_1342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1342 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1342 v3
du_isEquivalence_1342 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1342 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
            (coe d_isDecStrictPartialOrder_854 (coe v1))))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_1344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1344 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1344 v3
du_isPartialEquivalence_1344 ::
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1344 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.partialSetoid
d_partialSetoid_1346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_PartialSetoid_10
d_partialSetoid_1346 ~v0 ~v1 ~v2 v3 = du_partialSetoid_1346 v3
du_partialSetoid_1346 ::
  T_StrictTotalOrder_1256 -> T_PartialSetoid_10
du_partialSetoid_1346 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v2))))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.rawSetoid
d_rawSetoid_1348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1348 = erased
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.refl
d_refl_1350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny
d_refl_1350 ~v0 ~v1 ~v2 v3 = du_refl_1350 v3
du_refl_1350 :: T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny
du_refl_1350 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_34
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
               (coe d_isDecEquivalence_102 (coe v2)))))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.reflexive
d_reflexive_1352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1352 ~v0 ~v1 ~v2 v3 = du_reflexive_1352 v3
du_reflexive_1352 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1352 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_60 (coe v3)) v4)))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.setoid
d_setoid_1354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_Setoid_44
d_setoid_1354 ~v0 ~v1 ~v2 v3 = du_setoid_1354 v3
du_setoid_1354 :: T_StrictTotalOrder_1256 -> T_Setoid_44
du_setoid_1354 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe (coe du_setoid_110 (coe du_decSetoid_928 (coe v1)))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.sym
d_sym_1356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1356 ~v0 ~v1 ~v2 v3 = du_sym_1356 v3
du_sym_1356 ::
  T_StrictTotalOrder_1256 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1356 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.StrictTotalOrder._.Eq.trans
d_trans_1358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1358 ~v0 ~v1 ~v2 v3 = du_trans_1358 v3
du_trans_1358 ::
  T_StrictTotalOrder_1256 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1358 v0
  = let v1 = coe du_decStrictPartialOrder_1324 (coe v0) in
    coe
      (let v2 = coe du_decSetoid_928 (coe v1) in
       coe
         (let v3 = coe du_setoid_110 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
               (coe d_isEquivalence_60 (coe v3)))))
-- Relation.Binary.Bundles.StrictTotalOrder.decSetoid
d_decSetoid_1360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_StrictTotalOrder_1256 -> T_DecSetoid_86
d_decSetoid_1360 ~v0 ~v1 ~v2 v3 = du_decSetoid_1360 v3
du_decSetoid_1360 :: T_StrictTotalOrder_1256 -> T_DecSetoid_86
du_decSetoid_1360 v0
  = coe du_decSetoid_928 (coe du_decStrictPartialOrder_1324 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder
d_DenseLinearOrder_1368 a0 a1 a2 = ()
newtype T_DenseLinearOrder_1368
  = C_DenseLinearOrder'46'constructor_26715 MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_660
-- Relation.Binary.Bundles.DenseLinearOrder.Carrier
d_Carrier_1384 :: T_DenseLinearOrder_1368 -> ()
d_Carrier_1384 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._≈_
d__'8776'__1386 ::
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1386 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._<_
d__'60'__1388 ::
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'60'__1388 = erased
-- Relation.Binary.Bundles.DenseLinearOrder.isDenseLinearOrder
d_isDenseLinearOrder_1390 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDenseLinearOrder_660
d_isDenseLinearOrder_1390 v0
  = case coe v0 of
      C_DenseLinearOrder'46'constructor_26715 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.DenseLinearOrder._.dense
d_dense_1394 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dense_1394 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_dense_670
      (coe d_isDenseLinearOrder_1390 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder._.isStrictTotalOrder
d_isStrictTotalOrder_1396 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictTotalOrder_600
d_isStrictTotalOrder_1396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictTotalOrder_668
      (coe d_isDenseLinearOrder_1390 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder.strictTotalOrder
d_strictTotalOrder_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_StrictTotalOrder_1256
d_strictTotalOrder_1398 ~v0 ~v1 ~v2 v3
  = du_strictTotalOrder_1398 v3
du_strictTotalOrder_1398 ::
  T_DenseLinearOrder_1368 -> T_StrictTotalOrder_1256
du_strictTotalOrder_1398 v0
  = coe
      C_StrictTotalOrder'46'constructor_24345
      (MAlonzo.Code.Relation.Binary.Structures.d_isStrictTotalOrder_668
         (coe d_isDenseLinearOrder_1390 (coe v0)))
-- Relation.Binary.Bundles.DenseLinearOrder._._<?_
d__'60''63'__1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'60''63'__1402 ~v0 ~v1 ~v2 v3 = du__'60''63'__1402 v3
du__'60''63'__1402 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'60''63'__1402 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du__'60''63'__630
         (coe d_isStrictTotalOrder_1278 (coe v1)))
-- Relation.Binary.Bundles.DenseLinearOrder._._∼ᵒ_
d__'8764''7506'__1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__1404 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._._≉_
d__'8777'__1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1406 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._._≟_
d__'8799'__1408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1408 ~v0 ~v1 ~v2 v3 = du__'8799'__1408 v3
du__'8799'__1408 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__1408 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du__'8799'__628
         (coe d_isStrictTotalOrder_1278 (coe v1)))
-- Relation.Binary.Bundles.DenseLinearOrder._._≁_
d__'8769'__1410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8769'__1410 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._._≁ᵒ_
d__'8769''7506'__1412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__1412 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.<-resp-≈
d_'60''45'resp'45''8776'_1414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'resp'45''8776'_1414 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'45''8776'_1414 v3
du_'60''45'resp'45''8776'_1414 ::
  T_DenseLinearOrder_1368 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'resp'45''8776'_1414 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_'60''45'resp'45''8776'_372
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
            (coe d_isStrictTotalOrder_1278 (coe v1))))
-- Relation.Binary.Bundles.DenseLinearOrder._.<-respʳ-≈
d_'60''45'resp'691''45''8776'_1416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'691''45''8776'_1416 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'691''45''8776'_1416 v3
du_'60''45'resp'691''45''8776'_1416 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'691''45''8776'_1416 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_strictPartialOrder_1294 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'691''45''8776'_392
            (coe d_isStrictPartialOrder_766 (coe v2))))
-- Relation.Binary.Bundles.DenseLinearOrder._.<-respˡ-≈
d_'60''45'resp'737''45''8776'_1418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'60''45'resp'737''45''8776'_1418 ~v0 ~v1 ~v2 v3
  = du_'60''45'resp'737''45''8776'_1418 v3
du_'60''45'resp'737''45''8776'_1418 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'60''45'resp'737''45''8776'_1418 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_strictPartialOrder_1294 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_'60''45'resp'737''45''8776'_394
            (coe d_isStrictPartialOrder_766 (coe v2))))
-- Relation.Binary.Bundles.DenseLinearOrder._.asym
d_asym_1420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_asym_1420 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.compare
d_compare_1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
d_compare_1422 ~v0 ~v1 ~v2 v3 = du_compare_1422 v3
du_compare_1422 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Definitions.T_Tri_158
du_compare_1422 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_compare_610
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictTotalOrder_668
         (coe d_isDenseLinearOrder_1390 (coe v0)))
-- Relation.Binary.Bundles.DenseLinearOrder._.decSetoid
d_decSetoid_1424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_DecSetoid_86
d_decSetoid_1424 ~v0 ~v1 ~v2 v3 = du_decSetoid_1424 v3
du_decSetoid_1424 :: T_DenseLinearOrder_1368 -> T_DecSetoid_86
du_decSetoid_1424 v0
  = coe du_decSetoid_1360 (coe du_strictTotalOrder_1398 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder._.decStrictPartialOrder
d_decStrictPartialOrder_1426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_DecStrictPartialOrder_832
d_decStrictPartialOrder_1426 ~v0 ~v1 ~v2 v3
  = du_decStrictPartialOrder_1426 v3
du_decStrictPartialOrder_1426 ::
  T_DenseLinearOrder_1368 -> T_DecStrictPartialOrder_832
du_decStrictPartialOrder_1426 v0
  = coe
      du_decStrictPartialOrder_1324
      (coe du_strictTotalOrder_1398 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder._.irrefl
d_irrefl_1428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_1428 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.isDecEquivalence
d_isDecEquivalence_1430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1430 ~v0 ~v1 ~v2 v3
  = du_isDecEquivalence_1430 v3
du_isDecEquivalence_1430 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_1430 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_654
         (coe d_isStrictTotalOrder_1278 (coe v1)))
-- Relation.Binary.Bundles.DenseLinearOrder._.isDecStrictPartialOrder
d_isDecStrictPartialOrder_1432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
d_isDecStrictPartialOrder_1432 ~v0 ~v1 ~v2 v3
  = du_isDecStrictPartialOrder_1432 v3
du_isDecStrictPartialOrder_1432 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecStrictPartialOrder_400
du_isDecStrictPartialOrder_1432 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isDecStrictPartialOrder_632
         (coe d_isStrictTotalOrder_1278 (coe v1)))
-- Relation.Binary.Bundles.DenseLinearOrder._.isEquivalence
d_isEquivalence_1434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1434 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1434 v3
du_isEquivalence_1434 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1434 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
            (coe d_isStrictTotalOrder_1278 (coe v1))))
-- Relation.Binary.Bundles.DenseLinearOrder._.isStrictPartialOrder
d_isStrictPartialOrder_1436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
d_isStrictPartialOrder_1436 ~v0 ~v1 ~v2 v3
  = du_isStrictPartialOrder_1436 v3
du_isStrictPartialOrder_1436 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsStrictPartialOrder_354
du_isStrictPartialOrder_1436 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isStrictTotalOrder_668
         (coe d_isDenseLinearOrder_1390 (coe v0)))
-- Relation.Binary.Bundles.DenseLinearOrder._.rawRelation
d_rawRelation_1438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_1438 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.rawSetoid
d_rawSetoid_1440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1440 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.strictPartialOrder
d_strictPartialOrder_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_StrictPartialOrder_744
d_strictPartialOrder_1442 ~v0 ~v1 ~v2 v3
  = du_strictPartialOrder_1442 v3
du_strictPartialOrder_1442 ::
  T_DenseLinearOrder_1368 -> T_StrictPartialOrder_744
du_strictPartialOrder_1442 v0
  = coe
      du_strictPartialOrder_1294 (coe du_strictTotalOrder_1398 (coe v0))
-- Relation.Binary.Bundles.DenseLinearOrder._.trans
d_trans_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1444 ~v0 ~v1 ~v2 v3 = du_trans_1444 v3
du_trans_1444 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1444 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_370
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_608
            (coe d_isStrictTotalOrder_1278 (coe v1))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq._≈_
d__'8776'__1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1448 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq._≉_
d__'8777'__1450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1450 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq._≟_
d__'8799'__1452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8799'__1452 ~v0 ~v1 ~v2 v3 = du__'8799'__1452 v3
du__'8799'__1452 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du__'8799'__1452 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__412
            (coe d_isDecStrictPartialOrder_854 (coe v2))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.Carrier
d_Carrier_1454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> ()
d_Carrier_1454 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.decSetoid
d_decSetoid_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_DecSetoid_86
d_decSetoid_1456 ~v0 ~v1 ~v2 v3 = du_decSetoid_1456 v3
du_decSetoid_1456 :: T_DenseLinearOrder_1368 -> T_DecSetoid_86
du_decSetoid_1456 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (coe du_decSetoid_928 (coe du_decStrictPartialOrder_1324 (coe v1)))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.isDecEquivalence
d_isDecEquivalence_1458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_1458 ~v0 ~v1 ~v2 v3
  = du_isDecEquivalence_1458 v3
du_isDecEquivalence_1458 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_1458 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isDecEquivalence_446
            (coe d_isDecStrictPartialOrder_854 (coe v2))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.isEquivalence
d_isEquivalence_1460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1460 ~v0 ~v1 ~v2 v3 = du_isEquivalence_1460 v3
du_isEquivalence_1460 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1460 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_366
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isStrictPartialOrder_410
               (coe d_isDecStrictPartialOrder_854 (coe v2)))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.isPartialEquivalence
d_isPartialEquivalence_1462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1462 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_1462 v3
du_isPartialEquivalence_1462 ::
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1462 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.partialSetoid
d_partialSetoid_1464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_PartialSetoid_10
d_partialSetoid_1464 ~v0 ~v1 ~v2 v3 = du_partialSetoid_1464 v3
du_partialSetoid_1464 ::
  T_DenseLinearOrder_1368 -> T_PartialSetoid_10
du_partialSetoid_1464 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe (coe du_partialSetoid_70 (coe du_setoid_110 (coe v3)))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.rawSetoid
d_rawSetoid_1466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1466 = erased
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.refl
d_refl_1468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny
d_refl_1468 ~v0 ~v1 ~v2 v3 = du_refl_1468 v3
du_refl_1468 :: T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny
du_refl_1468 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_34
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
                  (coe d_isDecEquivalence_102 (coe v3))))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.reflexive
d_reflexive_1470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1470 ~v0 ~v1 ~v2 v3 = du_reflexive_1470 v3
du_reflexive_1470 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1470 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_60 (coe v4)) v5))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.setoid
d_setoid_1472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> T_Setoid_44
d_setoid_1472 ~v0 ~v1 ~v2 v3 = du_setoid_1472 v3
du_setoid_1472 :: T_DenseLinearOrder_1368 -> T_Setoid_44
du_setoid_1472 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe (coe du_setoid_110 (coe du_decSetoid_928 (coe v2))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.sym
d_sym_1474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1474 ~v0 ~v1 ~v2 v3 = du_sym_1474 v3
du_sym_1474 ::
  T_DenseLinearOrder_1368 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1474 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.DenseLinearOrder._.Eq.trans
d_trans_1476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1476 ~v0 ~v1 ~v2 v3 = du_trans_1476 v3
du_trans_1476 ::
  T_DenseLinearOrder_1368 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1476 v0
  = let v1 = coe du_strictTotalOrder_1398 (coe v0) in
    coe
      (let v2 = coe du_decStrictPartialOrder_1324 (coe v1) in
       coe
         (let v3 = coe du_decSetoid_928 (coe v2) in
          coe
            (let v4 = coe du_setoid_110 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe d_isEquivalence_60 (coe v4))))))
-- Relation.Binary.Bundles.ApartnessRelation
d_ApartnessRelation_1484 a0 a1 a2 = ()
newtype T_ApartnessRelation_1484
  = C_ApartnessRelation'46'constructor_28831 MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_722
-- Relation.Binary.Bundles.ApartnessRelation.Carrier
d_Carrier_1500 :: T_ApartnessRelation_1484 -> ()
d_Carrier_1500 = erased
-- Relation.Binary.Bundles.ApartnessRelation._≈_
d__'8776'__1502 ::
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1502 = erased
-- Relation.Binary.Bundles.ApartnessRelation._#_
d__'35'__1504 ::
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'35'__1504 = erased
-- Relation.Binary.Bundles.ApartnessRelation.isApartnessRelation
d_isApartnessRelation_1506 ::
  T_ApartnessRelation_1484 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsApartnessRelation_722
d_isApartnessRelation_1506 v0
  = case coe v0 of
      C_ApartnessRelation'46'constructor_28831 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Bundles.ApartnessRelation._.cotrans
d_cotrans_1510 ::
  T_ApartnessRelation_1484 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_cotrans_1510 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_cotrans_736
      (coe d_isApartnessRelation_1506 (coe v0))
-- Relation.Binary.Bundles.ApartnessRelation._.irrefl
d_irrefl_1512 ::
  T_ApartnessRelation_1484 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_irrefl_1512 = erased
-- Relation.Binary.Bundles.ApartnessRelation._.sym
d_sym_1514 ::
  T_ApartnessRelation_1484 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_734
      (coe d_isApartnessRelation_1506 (coe v0))
-- Relation.Binary.Bundles.ApartnessRelation.rawRelation
d_rawRelation_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawRelation_38
d_rawRelation_1516 = erased
-- Relation.Binary.Bundles.ApartnessRelation._._∼ᵒ_
d__'8764''7506'__1520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'8764''7506'__1520 = erased
-- Relation.Binary.Bundles.ApartnessRelation._._≁_
d__'8769'__1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'8769'__1522 = erased
-- Relation.Binary.Bundles.ApartnessRelation._._≁ᵒ_
d__'8769''7506'__1524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'8769''7506'__1524 = erased
-- Relation.Binary.Bundles.ApartnessRelation._._≉_
d__'8777'__1526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1526 = erased
-- Relation.Binary.Bundles.ApartnessRelation._.rawSetoid
d_rawSetoid_1528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  T_ApartnessRelation_1484 ->
  MAlonzo.Code.Relation.Binary.Bundles.Raw.T_RawSetoid_12
d_rawSetoid_1528 = erased
