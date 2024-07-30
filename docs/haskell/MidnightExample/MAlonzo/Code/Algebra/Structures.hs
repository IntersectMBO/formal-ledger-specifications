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

module MAlonzo.Code.Algebra.Structures where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Setoid
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Structures._._DistributesOver_
d__DistributesOver__16 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__16 = erased
-- Algebra.Structures._._DistributesOverʳ_
d__DistributesOver'691'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__18 = erased
-- Algebra.Structures._._DistributesOverˡ_
d__DistributesOver'737'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__20 = erased
-- Algebra.Structures._.AlmostLeftCancellative
d_AlmostLeftCancellative_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_30 = erased
-- Algebra.Structures._.Alternative
d_Alternative_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Alternative_34 = erased
-- Algebra.Structures._.Associative
d_Associative_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_36 = erased
-- Algebra.Structures._.Commutative
d_Commutative_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_40 = erased
-- Algebra.Structures._.Congruent₁
d_Congruent'8321'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_42 = erased
-- Algebra.Structures._.Congruent₂
d_Congruent'8322'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_44 = erased
-- Algebra.Structures._.Flexible
d_Flexible_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_48 = erased
-- Algebra.Structures._.Idempotent
d_Idempotent_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_50 = erased
-- Algebra.Structures._.Identical
d_Identical_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_54 = erased
-- Algebra.Structures._.Identity
d_Identity_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_56 = erased
-- Algebra.Structures._.Inverse
d_Inverse_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_60 = erased
-- Algebra.Structures._.LeftAlternative
d_LeftAlternative_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_66 = erased
-- Algebra.Structures._.LeftBol
d_LeftBol_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_68 = erased
-- Algebra.Structures._.LeftCongruent
d_LeftCongruent_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_72 = erased
-- Algebra.Structures._.LeftDivides
d_LeftDivides_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_76 = erased
-- Algebra.Structures._.LeftDividesʳ
d_LeftDivides'691'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_78 = erased
-- Algebra.Structures._.LeftDividesˡ
d_LeftDivides'737'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_80 = erased
-- Algebra.Structures._.LeftIdentity
d_LeftIdentity_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_82 = erased
-- Algebra.Structures._.LeftInverse
d_LeftInverse_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_84 = erased
-- Algebra.Structures._.LeftSemimedial
d_LeftSemimedial_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_88 = erased
-- Algebra.Structures._.LeftZero
d_LeftZero_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_90 = erased
-- Algebra.Structures._.Medial
d_Medial_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_92 = erased
-- Algebra.Structures._.MiddleBol
d_MiddleBol_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_94 = erased
-- Algebra.Structures._.RightAlternative
d_RightAlternative_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_96 = erased
-- Algebra.Structures._.RightBol
d_RightBol_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_98 = erased
-- Algebra.Structures._.RightCongruent
d_RightCongruent_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_102 = erased
-- Algebra.Structures._.RightDivides
d_RightDivides_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_106 = erased
-- Algebra.Structures._.RightDividesʳ
d_RightDivides'691'_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_108 = erased
-- Algebra.Structures._.RightDividesˡ
d_RightDivides'737'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_110 = erased
-- Algebra.Structures._.RightIdentity
d_RightIdentity_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_112 = erased
-- Algebra.Structures._.RightInverse
d_RightInverse_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_114 = erased
-- Algebra.Structures._.RightSemimedial
d_RightSemimedial_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_118 = erased
-- Algebra.Structures._.RightZero
d_RightZero_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_120 = erased
-- Algebra.Structures._.Selective
d_Selective_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_122 = erased
-- Algebra.Structures._.Semimedial
d_Semimedial_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_126 = erased
-- Algebra.Structures._.StarDestructive
d_StarDestructive_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_128 = erased
-- Algebra.Structures._.StarExpansive
d_StarExpansive_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_130 = erased
-- Algebra.Structures._.StarLeftDestructive
d_StarLeftDestructive_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_132 = erased
-- Algebra.Structures._.StarLeftExpansive
d_StarLeftExpansive_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_134 = erased
-- Algebra.Structures._.StarRightDestructive
d_StarRightDestructive_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_136 = erased
-- Algebra.Structures._.StarRightExpansive
d_StarRightExpansive_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_138 = erased
-- Algebra.Structures._.Zero
d_Zero_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_140 = erased
-- Algebra.Structures.IsMagma
d_IsMagma_144 a0 a1 a2 a3 a4 = ()
data T_IsMagma_144
  = C_IsMagma'46'constructor_785 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
                                 (AgdaAny ->
                                  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMagma.isEquivalence
d_isEquivalence_152 ::
  T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_152 v0
  = case coe v0 of
      C_IsMagma'46'constructor_785 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma.∙-cong
d_'8729''45'cong_154 ::
  T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_154 v0
  = case coe v0 of
      C_IsMagma'46'constructor_785 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma._.isPartialEquivalence
d_isPartialEquivalence_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_158 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_158 v5
du_isPartialEquivalence_158 ::
  T_IsMagma_144 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_158 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
      (coe d_isEquivalence_152 (coe v0))
-- Algebra.Structures.IsMagma._.refl
d_refl_160 :: T_IsMagma_144 -> AgdaAny -> AgdaAny
d_refl_160 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe v0))
-- Algebra.Structures.IsMagma._.reflexive
d_reflexive_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_162 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_162 v5
du_reflexive_162 ::
  T_IsMagma_144 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
      (coe d_isEquivalence_152 (coe v0)) v1
-- Algebra.Structures.IsMagma._.sym
d_sym_164 ::
  T_IsMagma_144 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe v0))
-- Algebra.Structures.IsMagma._.trans
d_trans_166 ::
  T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe v0))
-- Algebra.Structures.IsMagma.setoid
d_setoid_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_144 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_168 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_168 v5
du_setoid_168 ::
  T_IsMagma_144 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (d_isEquivalence_152 (coe v0))
-- Algebra.Structures.IsMagma.∙-congˡ
d_'8729''45'cong'737'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_170 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8729''45'cong'737'_170 v5 v6 v7 v8 v9
du_'8729''45'cong'737'_170 ::
  T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_170 v0 v1 v2 v3 v4
  = coe
      d_'8729''45'cong_154 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe v0)) v1)
      v4
-- Algebra.Structures.IsMagma.∙-congʳ
d_'8729''45'cong'691'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_174 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8729''45'cong'691'_174 v5 v6 v7 v8 v9
du_'8729''45'cong'691'_174 ::
  T_IsMagma_144 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_174 v0 v1 v2 v3 v4
  = coe
      d_'8729''45'cong_154 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe v0)) v1)
-- Algebra.Structures.IsCommutativeMagma
d_IsCommutativeMagma_180 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeMagma_180
  = C_IsCommutativeMagma'46'constructor_2665 T_IsMagma_144
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMagma.isMagma
d_isMagma_188 :: T_IsCommutativeMagma_180 -> T_IsMagma_144
d_isMagma_188 v0
  = case coe v0 of
      C_IsCommutativeMagma'46'constructor_2665 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma.comm
d_comm_190 ::
  T_IsCommutativeMagma_180 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_190 v0
  = case coe v0 of
      C_IsCommutativeMagma'46'constructor_2665 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma._.isEquivalence
d_isEquivalence_194 ::
  T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_194 v0
  = coe d_isEquivalence_152 (coe d_isMagma_188 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.isPartialEquivalence
d_isPartialEquivalence_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_196 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_196 v5
du_isPartialEquivalence_196 ::
  T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_196 v0
  = let v1 = d_isMagma_188 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsCommutativeMagma._.refl
d_refl_198 :: T_IsCommutativeMagma_180 -> AgdaAny -> AgdaAny
d_refl_198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_188 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.reflexive
d_reflexive_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_200 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_200 v5
du_reflexive_200 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_200 v0
  = let v1 = d_isMagma_188 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsCommutativeMagma._.setoid
d_setoid_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_202 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_202 v5
du_setoid_202 ::
  T_IsCommutativeMagma_180 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_202 v0 = coe du_setoid_168 (coe d_isMagma_188 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.sym
d_sym_204 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_188 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.trans
d_trans_206 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_206 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_188 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.∙-cong
d_'8729''45'cong_208 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_208 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_188 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.∙-congʳ
d_'8729''45'cong'691'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_210 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_210 v5
du_'8729''45'cong'691'_210 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_210 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_188 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.∙-congˡ
d_'8729''45'cong'737'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_212 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_212 v5
du_'8729''45'cong'737'_212 ::
  T_IsCommutativeMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_212 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_188 (coe v0))
-- Algebra.Structures.IsIdempotentMagma
d_IsIdempotentMagma_216 a0 a1 a2 a3 a4 = ()
data T_IsIdempotentMagma_216
  = C_IsIdempotentMagma'46'constructor_3449 T_IsMagma_144
                                            (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentMagma.isMagma
d_isMagma_224 :: T_IsIdempotentMagma_216 -> T_IsMagma_144
d_isMagma_224 v0
  = case coe v0 of
      C_IsIdempotentMagma'46'constructor_3449 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMagma.idem
d_idem_226 :: T_IsIdempotentMagma_216 -> AgdaAny -> AgdaAny
d_idem_226 v0
  = case coe v0 of
      C_IsIdempotentMagma'46'constructor_3449 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMagma._.isEquivalence
d_isEquivalence_230 ::
  T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_230 v0
  = coe d_isEquivalence_152 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.isPartialEquivalence
d_isPartialEquivalence_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_232 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_232 v5
du_isPartialEquivalence_232 ::
  T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_232 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsIdempotentMagma._.refl
d_refl_234 :: T_IsIdempotentMagma_216 -> AgdaAny -> AgdaAny
d_refl_234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.reflexive
d_reflexive_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_216 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_236 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_236 v5
du_reflexive_236 ::
  T_IsIdempotentMagma_216 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_236 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsIdempotentMagma._.setoid
d_setoid_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_238 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_238 v5
du_setoid_238 ::
  T_IsIdempotentMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_238 v0 = coe du_setoid_168 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.sym
d_sym_240 ::
  T_IsIdempotentMagma_216 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.trans
d_trans_242 ::
  T_IsIdempotentMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_242 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.∙-cong
d_'8729''45'cong_244 ::
  T_IsIdempotentMagma_216 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_244 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.∙-congʳ
d_'8729''45'cong'691'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_246 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_246 v5
du_'8729''45'cong'691'_246 ::
  T_IsIdempotentMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_246 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.∙-congˡ
d_'8729''45'cong'737'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_248 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_248 v5
du_'8729''45'cong'737'_248 ::
  T_IsIdempotentMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_248 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsAlternativeMagma
d_IsAlternativeMagma_252 a0 a1 a2 a3 a4 = ()
data T_IsAlternativeMagma_252
  = C_IsAlternativeMagma'46'constructor_4231 T_IsMagma_144
                                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsAlternativeMagma.isMagma
d_isMagma_260 :: T_IsAlternativeMagma_252 -> T_IsMagma_144
d_isMagma_260 v0
  = case coe v0 of
      C_IsAlternativeMagma'46'constructor_4231 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAlternativeMagma.alter
d_alter_262 ::
  T_IsAlternativeMagma_252 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_262 v0
  = case coe v0 of
      C_IsAlternativeMagma'46'constructor_4231 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAlternativeMagma._.isEquivalence
d_isEquivalence_266 ::
  T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_266 v0
  = coe d_isEquivalence_152 (coe d_isMagma_260 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.isPartialEquivalence
d_isPartialEquivalence_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_268 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_268 v5
du_isPartialEquivalence_268 ::
  T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_268 v0
  = let v1 = d_isMagma_260 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsAlternativeMagma._.refl
d_refl_270 :: T_IsAlternativeMagma_252 -> AgdaAny -> AgdaAny
d_refl_270 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_260 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.reflexive
d_reflexive_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_272 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_272 v5
du_reflexive_272 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_272 v0
  = let v1 = d_isMagma_260 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsAlternativeMagma._.setoid
d_setoid_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_274 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_274 v5
du_setoid_274 ::
  T_IsAlternativeMagma_252 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_274 v0 = coe du_setoid_168 (coe d_isMagma_260 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.sym
d_sym_276 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_276 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_260 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.trans
d_trans_278 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_260 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.∙-cong
d_'8729''45'cong_280 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_280 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_260 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.∙-congʳ
d_'8729''45'cong'691'_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_282 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_282 v5
du_'8729''45'cong'691'_282 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_282 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_260 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.∙-congˡ
d_'8729''45'cong'737'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_284 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_284 v5
du_'8729''45'cong'737'_284 ::
  T_IsAlternativeMagma_252 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_284 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_260 (coe v0))
-- Algebra.Structures.IsAlternativeMagma.alternativeˡ
d_alternative'737'_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 -> AgdaAny -> AgdaAny -> AgdaAny
d_alternative'737'_286 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_alternative'737'_286 v5
du_alternative'737'_286 ::
  T_IsAlternativeMagma_252 -> AgdaAny -> AgdaAny -> AgdaAny
du_alternative'737'_286 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_alter_262 (coe v0))
-- Algebra.Structures.IsAlternativeMagma.alternativeʳ
d_alternative'691'_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_252 -> AgdaAny -> AgdaAny -> AgdaAny
d_alternative'691'_288 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_alternative'691'_288 v5
du_alternative'691'_288 ::
  T_IsAlternativeMagma_252 -> AgdaAny -> AgdaAny -> AgdaAny
du_alternative'691'_288 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_alter_262 (coe v0))
-- Algebra.Structures.IsFlexibleMagma
d_IsFlexibleMagma_292 a0 a1 a2 a3 a4 = ()
data T_IsFlexibleMagma_292
  = C_IsFlexibleMagma'46'constructor_5591 T_IsMagma_144
                                          (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsFlexibleMagma.isMagma
d_isMagma_300 :: T_IsFlexibleMagma_292 -> T_IsMagma_144
d_isMagma_300 v0
  = case coe v0 of
      C_IsFlexibleMagma'46'constructor_5591 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsFlexibleMagma.flex
d_flex_302 ::
  T_IsFlexibleMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny
d_flex_302 v0
  = case coe v0 of
      C_IsFlexibleMagma'46'constructor_5591 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsFlexibleMagma._.isEquivalence
d_isEquivalence_306 ::
  T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_306 v0
  = coe d_isEquivalence_152 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.isPartialEquivalence
d_isPartialEquivalence_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_308 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_308 v5
du_isPartialEquivalence_308 ::
  T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_308 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsFlexibleMagma._.refl
d_refl_310 :: T_IsFlexibleMagma_292 -> AgdaAny -> AgdaAny
d_refl_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.reflexive
d_reflexive_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_292 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_312 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_312 v5
du_reflexive_312 ::
  T_IsFlexibleMagma_292 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_312 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsFlexibleMagma._.setoid
d_setoid_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_314 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_314 v5
du_setoid_314 ::
  T_IsFlexibleMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_314 v0 = coe du_setoid_168 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.sym
d_sym_316 ::
  T_IsFlexibleMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.trans
d_trans_318 ::
  T_IsFlexibleMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.∙-cong
d_'8729''45'cong_320 ::
  T_IsFlexibleMagma_292 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_320 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.∙-congʳ
d_'8729''45'cong'691'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_322 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_322 v5
du_'8729''45'cong'691'_322 ::
  T_IsFlexibleMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_322 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.∙-congˡ
d_'8729''45'cong'737'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_324 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_324 v5
du_'8729''45'cong'737'_324 ::
  T_IsFlexibleMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_324 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsMedialMagma
d_IsMedialMagma_328 a0 a1 a2 a3 a4 = ()
data T_IsMedialMagma_328
  = C_IsMedialMagma'46'constructor_6375 T_IsMagma_144
                                        (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMedialMagma.isMagma
d_isMagma_336 :: T_IsMedialMagma_328 -> T_IsMagma_144
d_isMagma_336 v0
  = case coe v0 of
      C_IsMedialMagma'46'constructor_6375 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMedialMagma.medial
d_medial_338 ::
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_medial_338 v0
  = case coe v0 of
      C_IsMedialMagma'46'constructor_6375 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMedialMagma._.isEquivalence
d_isEquivalence_342 ::
  T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_342 v0
  = coe d_isEquivalence_152 (coe d_isMagma_336 (coe v0))
-- Algebra.Structures.IsMedialMagma._.isPartialEquivalence
d_isPartialEquivalence_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_344 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_344 v5
du_isPartialEquivalence_344 ::
  T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_344 v0
  = let v1 = d_isMagma_336 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsMedialMagma._.refl
d_refl_346 :: T_IsMedialMagma_328 -> AgdaAny -> AgdaAny
d_refl_346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_336 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.reflexive
d_reflexive_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_328 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_348 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_348 v5
du_reflexive_348 ::
  T_IsMedialMagma_328 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_348 v0
  = let v1 = d_isMagma_336 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsMedialMagma._.setoid
d_setoid_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_350 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_350 v5
du_setoid_350 ::
  T_IsMedialMagma_328 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_350 v0 = coe du_setoid_168 (coe d_isMagma_336 (coe v0))
-- Algebra.Structures.IsMedialMagma._.sym
d_sym_352 ::
  T_IsMedialMagma_328 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_352 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_336 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.trans
d_trans_354 ::
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_354 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_336 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.∙-cong
d_'8729''45'cong_356 ::
  T_IsMedialMagma_328 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_356 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_336 (coe v0))
-- Algebra.Structures.IsMedialMagma._.∙-congʳ
d_'8729''45'cong'691'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_358 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_358 v5
du_'8729''45'cong'691'_358 ::
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_358 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_336 (coe v0))
-- Algebra.Structures.IsMedialMagma._.∙-congˡ
d_'8729''45'cong'737'_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_360 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_360 v5
du_'8729''45'cong'737'_360 ::
  T_IsMedialMagma_328 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_360 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_336 (coe v0))
-- Algebra.Structures.IsSemimedialMagma
d_IsSemimedialMagma_364 a0 a1 a2 a3 a4 = ()
data T_IsSemimedialMagma_364
  = C_IsSemimedialMagma'46'constructor_7163 T_IsMagma_144
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemimedialMagma.isMagma
d_isMagma_372 :: T_IsSemimedialMagma_364 -> T_IsMagma_144
d_isMagma_372 v0
  = case coe v0 of
      C_IsSemimedialMagma'46'constructor_7163 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemimedialMagma.semiMedial
d_semiMedial_374 ::
  T_IsSemimedialMagma_364 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_374 v0
  = case coe v0 of
      C_IsSemimedialMagma'46'constructor_7163 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemimedialMagma._.isEquivalence
d_isEquivalence_378 ::
  T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_378 v0
  = coe d_isEquivalence_152 (coe d_isMagma_372 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.isPartialEquivalence
d_isPartialEquivalence_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_380 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_380 v5
du_isPartialEquivalence_380 ::
  T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_380 v0
  = let v1 = d_isMagma_372 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsSemimedialMagma._.refl
d_refl_382 :: T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny
d_refl_382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_372 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.reflexive
d_reflexive_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_384 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_384 v5
du_reflexive_384 ::
  T_IsSemimedialMagma_364 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_384 v0
  = let v1 = d_isMagma_372 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsSemimedialMagma._.setoid
d_setoid_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_386 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_386 v5
du_setoid_386 ::
  T_IsSemimedialMagma_364 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_386 v0 = coe du_setoid_168 (coe d_isMagma_372 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.sym
d_sym_388 ::
  T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_388 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_372 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.trans
d_trans_390 ::
  T_IsSemimedialMagma_364 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_372 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.∙-cong
d_'8729''45'cong_392 ::
  T_IsSemimedialMagma_364 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_392 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_372 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.∙-congʳ
d_'8729''45'cong'691'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_394 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_394 v5
du_'8729''45'cong'691'_394 ::
  T_IsSemimedialMagma_364 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_394 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_372 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.∙-congˡ
d_'8729''45'cong'737'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_396 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_396 v5
du_'8729''45'cong'737'_396 ::
  T_IsSemimedialMagma_364 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_396 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_372 (coe v0))
-- Algebra.Structures.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'737'_398 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_semimedial'737'_398 v5
du_semimedial'737'_398 ::
  T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'737'_398 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_semiMedial_374 (coe v0))
-- Algebra.Structures.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'691'_400 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_semimedial'691'_400 v5
du_semimedial'691'_400 ::
  T_IsSemimedialMagma_364 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'691'_400 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_semiMedial_374 (coe v0))
-- Algebra.Structures.IsSelectiveMagma
d_IsSelectiveMagma_404 a0 a1 a2 a3 a4 = ()
data T_IsSelectiveMagma_404
  = C_IsSelectiveMagma'46'constructor_8535 T_IsMagma_144
                                           (AgdaAny ->
                                            AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Algebra.Structures.IsSelectiveMagma.isMagma
d_isMagma_412 :: T_IsSelectiveMagma_404 -> T_IsMagma_144
d_isMagma_412 v0
  = case coe v0 of
      C_IsSelectiveMagma'46'constructor_8535 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma.sel
d_sel_414 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_414 v0
  = case coe v0 of
      C_IsSelectiveMagma'46'constructor_8535 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma._.isEquivalence
d_isEquivalence_418 ::
  T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_418 v0
  = coe d_isEquivalence_152 (coe d_isMagma_412 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.isPartialEquivalence
d_isPartialEquivalence_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_420 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_420 v5
du_isPartialEquivalence_420 ::
  T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_420 v0
  = let v1 = d_isMagma_412 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsSelectiveMagma._.refl
d_refl_422 :: T_IsSelectiveMagma_404 -> AgdaAny -> AgdaAny
d_refl_422 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_412 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.reflexive
d_reflexive_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_424 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_424 v5
du_reflexive_424 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_424 v0
  = let v1 = d_isMagma_412 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsSelectiveMagma._.setoid
d_setoid_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_426 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_426 v5
du_setoid_426 ::
  T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_426 v0 = coe du_setoid_168 (coe d_isMagma_412 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.sym
d_sym_428 ::
  T_IsSelectiveMagma_404 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_428 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_412 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.trans
d_trans_430 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_430 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_412 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.∙-cong
d_'8729''45'cong_432 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_432 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_412 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.∙-congʳ
d_'8729''45'cong'691'_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_434 v5
du_'8729''45'cong'691'_434 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_434 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_412 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.∙-congˡ
d_'8729''45'cong'737'_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_436 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_436 v5
du_'8729''45'cong'737'_436 ::
  T_IsSelectiveMagma_404 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_436 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_412 (coe v0))
-- Algebra.Structures.IsSemigroup
d_IsSemigroup_440 a0 a1 a2 a3 a4 = ()
data T_IsSemigroup_440
  = C_IsSemigroup'46'constructor_9319 T_IsMagma_144
                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsSemigroup.isMagma
d_isMagma_448 :: T_IsSemigroup_440 -> T_IsMagma_144
d_isMagma_448 v0
  = case coe v0 of
      C_IsSemigroup'46'constructor_9319 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup.assoc
d_assoc_450 ::
  T_IsSemigroup_440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_450 v0
  = case coe v0 of
      C_IsSemigroup'46'constructor_9319 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup._.isEquivalence
d_isEquivalence_454 ::
  T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_454 v0
  = coe d_isEquivalence_152 (coe d_isMagma_448 (coe v0))
-- Algebra.Structures.IsSemigroup._.isPartialEquivalence
d_isPartialEquivalence_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_456 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_456 v5
du_isPartialEquivalence_456 ::
  T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_456 v0
  = let v1 = d_isMagma_448 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsSemigroup._.refl
d_refl_458 :: T_IsSemigroup_440 -> AgdaAny -> AgdaAny
d_refl_458 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_448 (coe v0)))
-- Algebra.Structures.IsSemigroup._.reflexive
d_reflexive_460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_440 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_460 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_460 v5
du_reflexive_460 ::
  T_IsSemigroup_440 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_460 v0
  = let v1 = d_isMagma_448 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsSemigroup._.setoid
d_setoid_462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_462 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_462 v5
du_setoid_462 ::
  T_IsSemigroup_440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_462 v0 = coe du_setoid_168 (coe d_isMagma_448 (coe v0))
-- Algebra.Structures.IsSemigroup._.sym
d_sym_464 ::
  T_IsSemigroup_440 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_464 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_448 (coe v0)))
-- Algebra.Structures.IsSemigroup._.trans
d_trans_466 ::
  T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_448 (coe v0)))
-- Algebra.Structures.IsSemigroup._.∙-cong
d_'8729''45'cong_468 ::
  T_IsSemigroup_440 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_468 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_448 (coe v0))
-- Algebra.Structures.IsSemigroup._.∙-congʳ
d_'8729''45'cong'691'_470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_470 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_470 v5
du_'8729''45'cong'691'_470 ::
  T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_470 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v0))
-- Algebra.Structures.IsSemigroup._.∙-congˡ
d_'8729''45'cong'737'_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_472 v5
du_'8729''45'cong'737'_472 ::
  T_IsSemigroup_440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_472 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v0))
-- Algebra.Structures.IsBand
d_IsBand_476 a0 a1 a2 a3 a4 = ()
data T_IsBand_476
  = C_IsBand'46'constructor_10105 T_IsSemigroup_440
                                  (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBand.isSemigroup
d_isSemigroup_484 :: T_IsBand_476 -> T_IsSemigroup_440
d_isSemigroup_484 v0
  = case coe v0 of
      C_IsBand'46'constructor_10105 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand.idem
d_idem_486 :: T_IsBand_476 -> AgdaAny -> AgdaAny
d_idem_486 v0
  = case coe v0 of
      C_IsBand'46'constructor_10105 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand._.assoc
d_assoc_490 ::
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_490 v0 = coe d_assoc_450 (coe d_isSemigroup_484 (coe v0))
-- Algebra.Structures.IsBand._.isEquivalence
d_isEquivalence_492 ::
  T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_492 v0
  = coe
      d_isEquivalence_152
      (coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0)))
-- Algebra.Structures.IsBand._.isMagma
d_isMagma_494 :: T_IsBand_476 -> T_IsMagma_144
d_isMagma_494 v0
  = coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0))
-- Algebra.Structures.IsBand._.isPartialEquivalence
d_isPartialEquivalence_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_496 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_496 v5
du_isPartialEquivalence_496 ::
  T_IsBand_476 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_496 v0
  = let v1 = d_isSemigroup_484 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.IsBand._.refl
d_refl_498 :: T_IsBand_476 -> AgdaAny -> AgdaAny
d_refl_498 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0))))
-- Algebra.Structures.IsBand._.reflexive
d_reflexive_500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_476 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_500 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_500 v5
du_reflexive_500 ::
  T_IsBand_476 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_500 v0
  = let v1 = d_isSemigroup_484 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_152 (coe v2)) v3))
-- Algebra.Structures.IsBand._.setoid
d_setoid_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_476 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_502 v5
du_setoid_502 ::
  T_IsBand_476 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_502 v0
  = let v1 = d_isSemigroup_484 (coe v0) in
    coe (coe du_setoid_168 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsBand._.sym
d_sym_504 ::
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_504 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0))))
-- Algebra.Structures.IsBand._.trans
d_trans_506 ::
  T_IsBand_476 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0))))
-- Algebra.Structures.IsBand._.∙-cong
d_'8729''45'cong_508 ::
  T_IsBand_476 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_508 v0
  = coe
      d_'8729''45'cong_154
      (coe d_isMagma_448 (coe d_isSemigroup_484 (coe v0)))
-- Algebra.Structures.IsBand._.∙-congʳ
d_'8729''45'cong'691'_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_510 v5
du_'8729''45'cong'691'_510 ::
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_510 v0
  = let v1 = d_isSemigroup_484 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsBand._.∙-congˡ
d_'8729''45'cong'737'_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_512 v5
du_'8729''45'cong'737'_512 ::
  T_IsBand_476 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_512 v0
  = let v1 = d_isSemigroup_484 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsCommutativeSemigroup
d_IsCommutativeSemigroup_516 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeSemigroup_516
  = C_IsCommutativeSemigroup'46'constructor_10991 T_IsSemigroup_440
                                                  (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_524 ::
  T_IsCommutativeSemigroup_516 -> T_IsSemigroup_440
d_isSemigroup_524 v0
  = case coe v0 of
      C_IsCommutativeSemigroup'46'constructor_10991 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup.comm
d_comm_526 ::
  T_IsCommutativeSemigroup_516 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_526 v0
  = case coe v0 of
      C_IsCommutativeSemigroup'46'constructor_10991 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup._.assoc
d_assoc_530 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_530 v0 = coe d_assoc_450 (coe d_isSemigroup_524 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isEquivalence
d_isEquivalence_532 ::
  T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_532 v0
  = coe
      d_isEquivalence_152
      (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.isMagma
d_isMagma_534 :: T_IsCommutativeSemigroup_516 -> T_IsMagma_144
d_isMagma_534 v0
  = coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isPartialEquivalence
d_isPartialEquivalence_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_536 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_536 v5
du_isPartialEquivalence_536 ::
  T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_536 v0
  = let v1 = d_isSemigroup_524 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.IsCommutativeSemigroup._.refl
d_refl_538 :: T_IsCommutativeSemigroup_516 -> AgdaAny -> AgdaAny
d_refl_538 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.reflexive
d_reflexive_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_540 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_540 v5
du_reflexive_540 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_540 v0
  = let v1 = d_isSemigroup_524 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_152 (coe v2)) v3))
-- Algebra.Structures.IsCommutativeSemigroup._.setoid
d_setoid_542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_542 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_542 v5
du_setoid_542 ::
  T_IsCommutativeSemigroup_516 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_542 v0
  = let v1 = d_isSemigroup_524 (coe v0) in
    coe (coe du_setoid_168 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsCommutativeSemigroup._.sym
d_sym_544 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_544 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.trans
d_trans_546 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_546 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-cong
d_'8729''45'cong_548 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_548 v0
  = coe
      d_'8729''45'cong_154
      (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congʳ
d_'8729''45'cong'691'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_550 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_550 v5
du_'8729''45'cong'691'_550 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_550 v0
  = let v1 = d_isSemigroup_524 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congˡ
d_'8729''45'cong'737'_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_552 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_552 v5
du_'8729''45'cong'737'_552 ::
  T_IsCommutativeSemigroup_516 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_552 v0
  = let v1 = d_isSemigroup_524 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_516 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_554 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_554 v5
du_isCommutativeMagma_554 ::
  T_IsCommutativeSemigroup_516 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_554 v0
  = coe
      C_IsCommutativeMagma'46'constructor_2665
      (coe d_isMagma_448 (coe d_isSemigroup_524 (coe v0)))
      (coe d_comm_526 (coe v0))
-- Algebra.Structures.IsUnitalMagma
d_IsUnitalMagma_560 a0 a1 a2 a3 a4 a5 = ()
data T_IsUnitalMagma_560
  = C_IsUnitalMagma'46'constructor_12021 T_IsMagma_144
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsUnitalMagma.isMagma
d_isMagma_570 :: T_IsUnitalMagma_560 -> T_IsMagma_144
d_isMagma_570 v0
  = case coe v0 of
      C_IsUnitalMagma'46'constructor_12021 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsUnitalMagma.identity
d_identity_572 ::
  T_IsUnitalMagma_560 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_572 v0
  = case coe v0 of
      C_IsUnitalMagma'46'constructor_12021 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsUnitalMagma._.isEquivalence
d_isEquivalence_576 ::
  T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_576 v0
  = coe d_isEquivalence_152 (coe d_isMagma_570 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.isPartialEquivalence
d_isPartialEquivalence_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_578 v6
du_isPartialEquivalence_578 ::
  T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_578 v0
  = let v1 = d_isMagma_570 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsUnitalMagma._.refl
d_refl_580 :: T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny
d_refl_580 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_570 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.reflexive
d_reflexive_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_560 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_582 v6
du_reflexive_582 ::
  T_IsUnitalMagma_560 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_582 v0
  = let v1 = d_isMagma_570 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsUnitalMagma._.setoid
d_setoid_584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_584 v6
du_setoid_584 ::
  T_IsUnitalMagma_560 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_584 v0 = coe du_setoid_168 (coe d_isMagma_570 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.sym
d_sym_586 ::
  T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_586 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_570 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.trans
d_trans_588 ::
  T_IsUnitalMagma_560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_588 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_570 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.∙-cong
d_'8729''45'cong_590 ::
  T_IsUnitalMagma_560 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_590 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_570 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.∙-congʳ
d_'8729''45'cong'691'_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_592 v6
du_'8729''45'cong'691'_592 ::
  T_IsUnitalMagma_560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_592 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_570 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.∙-congˡ
d_'8729''45'cong'737'_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_594 v6
du_'8729''45'cong'737'_594 ::
  T_IsUnitalMagma_560 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_594 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_570 (coe v0))
-- Algebra.Structures.IsUnitalMagma.identityˡ
d_identity'737'_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny
d_identity'737'_596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_596 v6
du_identity'737'_596 :: T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny
du_identity'737'_596 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_572 (coe v0))
-- Algebra.Structures.IsUnitalMagma.identityʳ
d_identity'691'_598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny
d_identity'691'_598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_598 v6
du_identity'691'_598 :: T_IsUnitalMagma_560 -> AgdaAny -> AgdaAny
du_identity'691'_598 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_572 (coe v0))
-- Algebra.Structures.IsMonoid
d_IsMonoid_604 a0 a1 a2 a3 a4 a5 = ()
data T_IsMonoid_604
  = C_IsMonoid'46'constructor_13575 T_IsSemigroup_440
                                    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsMonoid.isSemigroup
d_isSemigroup_614 :: T_IsMonoid_604 -> T_IsSemigroup_440
d_isSemigroup_614 v0
  = case coe v0 of
      C_IsMonoid'46'constructor_13575 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid.identity
d_identity_616 ::
  T_IsMonoid_604 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_616 v0
  = case coe v0 of
      C_IsMonoid'46'constructor_13575 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid._.assoc
d_assoc_620 ::
  T_IsMonoid_604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_620 v0 = coe d_assoc_450 (coe d_isSemigroup_614 (coe v0))
-- Algebra.Structures.IsMonoid._.isEquivalence
d_isEquivalence_622 ::
  T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_622 v0
  = coe
      d_isEquivalence_152
      (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0)))
-- Algebra.Structures.IsMonoid._.isMagma
d_isMagma_624 :: T_IsMonoid_604 -> T_IsMagma_144
d_isMagma_624 v0
  = coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0))
-- Algebra.Structures.IsMonoid._.isPartialEquivalence
d_isPartialEquivalence_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_626 v6
du_isPartialEquivalence_626 ::
  T_IsMonoid_604 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_626 v0
  = let v1 = d_isSemigroup_614 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.IsMonoid._.refl
d_refl_628 :: T_IsMonoid_604 -> AgdaAny -> AgdaAny
d_refl_628 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0))))
-- Algebra.Structures.IsMonoid._.reflexive
d_reflexive_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_604 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_630 v6
du_reflexive_630 ::
  T_IsMonoid_604 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_630 v0
  = let v1 = d_isSemigroup_614 (coe v0) in
    coe
      (let v2 = d_isMagma_448 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_152 (coe v2)) v3))
-- Algebra.Structures.IsMonoid._.setoid
d_setoid_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_604 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_632 v6
du_setoid_632 ::
  T_IsMonoid_604 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_632 v0
  = let v1 = d_isSemigroup_614 (coe v0) in
    coe (coe du_setoid_168 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsMonoid._.sym
d_sym_634 ::
  T_IsMonoid_604 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0))))
-- Algebra.Structures.IsMonoid._.trans
d_trans_636 ::
  T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_636 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0))))
-- Algebra.Structures.IsMonoid._.∙-cong
d_'8729''45'cong_638 ::
  T_IsMonoid_604 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_638 v0
  = coe
      d_'8729''45'cong_154
      (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0)))
-- Algebra.Structures.IsMonoid._.∙-congʳ
d_'8729''45'cong'691'_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_640 v6
du_'8729''45'cong'691'_640 ::
  T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_640 v0
  = let v1 = d_isSemigroup_614 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsMonoid._.∙-congˡ
d_'8729''45'cong'737'_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_642 v6
du_'8729''45'cong'737'_642 ::
  T_IsMonoid_604 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_642 v0
  = let v1 = d_isSemigroup_614 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsMonoid.identityˡ
d_identity'737'_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_604 -> AgdaAny -> AgdaAny
d_identity'737'_644 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_644 v6
du_identity'737'_644 :: T_IsMonoid_604 -> AgdaAny -> AgdaAny
du_identity'737'_644 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_616 (coe v0))
-- Algebra.Structures.IsMonoid.identityʳ
d_identity'691'_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_604 -> AgdaAny -> AgdaAny
d_identity'691'_646 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_646 v6
du_identity'691'_646 :: T_IsMonoid_604 -> AgdaAny -> AgdaAny
du_identity'691'_646 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_616 (coe v0))
-- Algebra.Structures.IsMonoid.isUnitalMagma
d_isUnitalMagma_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_604 -> T_IsUnitalMagma_560
d_isUnitalMagma_648 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_648 v6
du_isUnitalMagma_648 :: T_IsMonoid_604 -> T_IsUnitalMagma_560
du_isUnitalMagma_648 v0
  = coe
      C_IsUnitalMagma'46'constructor_12021
      (coe d_isMagma_448 (coe d_isSemigroup_614 (coe v0)))
      (coe d_identity_616 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid
d_IsCommutativeMonoid_654 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid_654
  = C_IsCommutativeMonoid'46'constructor_15395 T_IsMonoid_604
                                               (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMonoid.isMonoid
d_isMonoid_664 :: T_IsCommutativeMonoid_654 -> T_IsMonoid_604
d_isMonoid_664 v0
  = case coe v0 of
      C_IsCommutativeMonoid'46'constructor_15395 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid.comm
d_comm_666 ::
  T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_666 v0
  = case coe v0 of
      C_IsCommutativeMonoid'46'constructor_15395 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid._.assoc
d_assoc_670 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_670 v0
  = coe
      d_assoc_450 (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.identity
d_identity_672 ::
  T_IsCommutativeMonoid_654 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_672 v0
  = coe d_identity_616 (coe d_isMonoid_664 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityʳ
d_identity'691'_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny
d_identity'691'_674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_674 v6
du_identity'691'_674 ::
  T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny
du_identity'691'_674 v0
  = coe du_identity'691'_646 (coe d_isMonoid_664 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityˡ
d_identity'737'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny
d_identity'737'_676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_676 v6
du_identity'737'_676 ::
  T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny
du_identity'737'_676 v0
  = coe du_identity'737'_644 (coe d_isMonoid_664 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isEquivalence
d_isEquivalence_678 ::
  T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_678 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.isMagma
d_isMagma_680 :: T_IsCommutativeMonoid_654 -> T_IsMagma_144
d_isMagma_680 v0
  = coe
      d_isMagma_448 (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_682 v6
du_isPartialEquivalence_682 ::
  T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_682 v0
  = let v1 = d_isMonoid_664 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsCommutativeMonoid._.isSemigroup
d_isSemigroup_684 :: T_IsCommutativeMonoid_654 -> T_IsSemigroup_440
d_isSemigroup_684 v0
  = coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isUnitalMagma
d_isUnitalMagma_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_654 -> T_IsUnitalMagma_560
d_isUnitalMagma_686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_686 v6
du_isUnitalMagma_686 ::
  T_IsCommutativeMonoid_654 -> T_IsUnitalMagma_560
du_isUnitalMagma_686 v0
  = coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.refl
d_refl_688 :: T_IsCommutativeMonoid_654 -> AgdaAny -> AgdaAny
d_refl_688 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.reflexive
d_reflexive_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_690 v6
du_reflexive_690 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_690 v0
  = let v1 = d_isMonoid_664 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsCommutativeMonoid._.setoid
d_setoid_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_692 v6
du_setoid_692 ::
  T_IsCommutativeMonoid_654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_692 v0
  = let v1 = d_isMonoid_664 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsCommutativeMonoid._.sym
d_sym_694 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_694 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.trans
d_trans_696 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-cong
d_'8729''45'cong_698 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_698 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_700 v6
du_'8729''45'cong'691'_700 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_700 v0
  = let v1 = d_isMonoid_664 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_702 v6
du_'8729''45'cong'737'_702 ::
  T_IsCommutativeMonoid_654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_702 v0
  = let v1 = d_isMonoid_664 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_654 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_704 v6
du_isCommutativeSemigroup_704 ::
  T_IsCommutativeMonoid_654 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_704 v0
  = coe
      C_IsCommutativeSemigroup'46'constructor_10991
      (coe d_isSemigroup_614 (coe d_isMonoid_664 (coe v0)))
      (coe d_comm_666 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_654 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_708 v6
du_isCommutativeMagma_708 ::
  T_IsCommutativeMonoid_654 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_708 v0
  = coe
      du_isCommutativeMagma_554
      (coe du_isCommutativeSemigroup_704 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_714 a0 a1 a2 a3 a4 a5 = ()
data T_IsIdempotentCommutativeMonoid_714
  = C_IsIdempotentCommutativeMonoid'46'constructor_16935 T_IsCommutativeMonoid_654
                                                         (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_724 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_724 v0
  = case coe v0 of
      C_IsIdempotentCommutativeMonoid'46'constructor_16935 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid.idem
d_idem_726 ::
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
d_idem_726 v0
  = case coe v0 of
      C_IsIdempotentCommutativeMonoid'46'constructor_16935 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc
d_assoc_730 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_730 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.comm
d_comm_732 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_732 v0
  = coe d_comm_666 (coe d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identity
d_identity_734 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_734 v0
  = coe
      d_identity_616
      (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ
d_identity'691'_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
d_identity'691'_736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_736 v6
du_identity'691'_736 ::
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
du_identity'691'_736 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ
d_identity'737'_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
d_identity'737'_738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_738 v6
du_identity'737'_738 ::
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
du_identity'737'_738 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_740 v6
du_isCommutativeMagma_740 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_740 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_554
         (coe du_isCommutativeSemigroup_704 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeSemigroup
d_isCommutativeSemigroup_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_742 v6
du_isCommutativeSemigroup_742 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_742 v0
  = coe
      du_isCommutativeSemigroup_704
      (coe d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence
d_isEquivalence_744 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_744 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma
d_isMagma_746 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsMagma_144
d_isMagma_746 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid
d_isMonoid_748 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsMonoid_604
d_isMonoid_748 v0
  = coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_750 v6
du_isPartialEquivalence_750 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_750 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup
d_isSemigroup_752 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsSemigroup_440
d_isSemigroup_752 v0
  = coe
      d_isSemigroup_614
      (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isUnitalMagma
d_isUnitalMagma_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 -> T_IsUnitalMagma_560
d_isUnitalMagma_754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_754 v6
du_isUnitalMagma_754 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsUnitalMagma_560
du_isUnitalMagma_754 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.refl
d_refl_756 ::
  T_IsIdempotentCommutativeMonoid_714 -> AgdaAny -> AgdaAny
d_refl_756 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive
d_reflexive_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_758 v6
du_reflexive_758 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_758 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_152 (coe v4)) v5))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid
d_setoid_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_760 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_760 v6
du_setoid_760 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_760 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.sym
d_sym_762 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_762 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.trans
d_trans_764 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_764 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong
d_'8729''45'cong_766 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_766 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_768 v6
du_'8729''45'cong'691'_768 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_768 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_770 v6
du_'8729''45'cong'737'_770 ::
  T_IsIdempotentCommutativeMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_770 v0
  = let v1 = d_isCommutativeMonoid_724 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isBand
d_isBand_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentCommutativeMonoid_714 -> T_IsBand_476
d_isBand_772 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_772 v6
du_isBand_772 ::
  T_IsIdempotentCommutativeMonoid_714 -> T_IsBand_476
du_isBand_772 v0
  = coe
      C_IsBand'46'constructor_10105
      (coe
         d_isSemigroup_614
         (coe d_isMonoid_664 (coe d_isCommutativeMonoid_724 (coe v0))))
      (coe d_idem_726 (coe v0))
-- Algebra.Structures.IsInvertibleMagma
d_IsInvertibleMagma_780 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsInvertibleMagma_780
  = C_IsInvertibleMagma'46'constructor_18661 T_IsMagma_144
                                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                             (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsInvertibleMagma.isMagma
d_isMagma_794 :: T_IsInvertibleMagma_780 -> T_IsMagma_144
d_isMagma_794 v0
  = case coe v0 of
      C_IsInvertibleMagma'46'constructor_18661 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma.inverse
d_inverse_796 ::
  T_IsInvertibleMagma_780 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_796 v0
  = case coe v0 of
      C_IsInvertibleMagma'46'constructor_18661 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_798 ::
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_798 v0
  = case coe v0 of
      C_IsInvertibleMagma'46'constructor_18661 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma._.isEquivalence
d_isEquivalence_802 ::
  T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_802 v0
  = coe d_isEquivalence_152 (coe d_isMagma_794 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.isPartialEquivalence
d_isPartialEquivalence_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_804 v7
du_isPartialEquivalence_804 ::
  T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_804 v0
  = let v1 = d_isMagma_794 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsInvertibleMagma._.refl
d_refl_806 :: T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny
d_refl_806 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_794 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.reflexive
d_reflexive_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_808 v7
du_reflexive_808 ::
  T_IsInvertibleMagma_780 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_808 v0
  = let v1 = d_isMagma_794 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsInvertibleMagma._.setoid
d_setoid_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_810 v7
du_setoid_810 ::
  T_IsInvertibleMagma_780 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_810 v0 = coe du_setoid_168 (coe d_isMagma_794 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.sym
d_sym_812 ::
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_812 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_794 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.trans
d_trans_814 ::
  T_IsInvertibleMagma_780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_794 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.∙-cong
d_'8729''45'cong_816 ::
  T_IsInvertibleMagma_780 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_816 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_794 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.∙-congʳ
d_'8729''45'cong'691'_818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_818 v7
du_'8729''45'cong'691'_818 ::
  T_IsInvertibleMagma_780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_818 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_794 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.∙-congˡ
d_'8729''45'cong'737'_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_820 v7
du_'8729''45'cong'737'_820 ::
  T_IsInvertibleMagma_780 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_820 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_794 (coe v0))
-- Algebra.Structures.IsInvertibleMagma.inverseˡ
d_inverse'737'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny
d_inverse'737'_822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_822 v7
du_inverse'737'_822 ::
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny
du_inverse'737'_822 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_inverse_796 (coe v0))
-- Algebra.Structures.IsInvertibleMagma.inverseʳ
d_inverse'691'_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny
d_inverse'691'_824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_824 v7
du_inverse'691'_824 ::
  T_IsInvertibleMagma_780 -> AgdaAny -> AgdaAny
du_inverse'691'_824 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_inverse_796 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_832 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsInvertibleUnitalMagma_832
  = C_IsInvertibleUnitalMagma'46'constructor_20531 T_IsInvertibleMagma_780
                                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_844 ::
  T_IsInvertibleUnitalMagma_832 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_844 v0
  = case coe v0 of
      C_IsInvertibleUnitalMagma'46'constructor_20531 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleUnitalMagma.identity
d_identity_846 ::
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_846 v0
  = case coe v0 of
      C_IsInvertibleUnitalMagma'46'constructor_20531 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverse
d_inverse_850 ::
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_850 v0
  = coe d_inverse_796 (coe d_isInvertibleMagma_844 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverseʳ
d_inverse'691'_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
d_inverse'691'_852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_852 v7
du_inverse'691'_852 ::
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
du_inverse'691'_852 v0
  = coe du_inverse'691'_824 (coe d_isInvertibleMagma_844 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverseˡ
d_inverse'737'_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
d_inverse'737'_854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_854 v7
du_inverse'737'_854 ::
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
du_inverse'737'_854 v0
  = coe du_inverse'737'_822 (coe d_isInvertibleMagma_844 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isEquivalence
d_isEquivalence_856 ::
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_856 v0
  = coe
      d_isEquivalence_152
      (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isMagma
d_isMagma_858 :: T_IsInvertibleUnitalMagma_832 -> T_IsMagma_144
d_isMagma_858 v0
  = coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isPartialEquivalence
d_isPartialEquivalence_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_860 v7
du_isPartialEquivalence_860 ::
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_860 v0
  = let v1 = d_isInvertibleMagma_844 (coe v0) in
    coe
      (let v2 = d_isMagma_794 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.refl
d_refl_862 :: T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
d_refl_862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.reflexive
d_reflexive_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_864 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_864 v7
du_reflexive_864 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_864 v0
  = let v1 = d_isInvertibleMagma_844 (coe v0) in
    coe
      (let v2 = d_isMagma_794 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_152 (coe v2)) v3))
-- Algebra.Structures.IsInvertibleUnitalMagma._.setoid
d_setoid_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_866 v7
du_setoid_866 ::
  T_IsInvertibleUnitalMagma_832 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_866 v0
  = let v1 = d_isInvertibleMagma_844 (coe v0) in
    coe (coe du_setoid_168 (coe d_isMagma_794 (coe v1)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.sym
d_sym_868 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.trans
d_trans_870 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.⁻¹-cong
d_'8315''185''45'cong_872 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_872 v0
  = coe
      d_'8315''185''45'cong_798 (coe d_isInvertibleMagma_844 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-cong
d_'8729''45'cong_874 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_874 v0
  = coe
      d_'8729''45'cong_154
      (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-congʳ
d_'8729''45'cong'691'_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_876 v7
du_'8729''45'cong'691'_876 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_876 v0
  = let v1 = d_isInvertibleMagma_844 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_794 (coe v1)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-congˡ
d_'8729''45'cong'737'_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_878 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_878 v7
du_'8729''45'cong'737'_878 ::
  T_IsInvertibleUnitalMagma_832 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_878 v0
  = let v1 = d_isInvertibleMagma_844 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_794 (coe v1)))
-- Algebra.Structures.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
d_identity'737'_880 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_880 v7
du_identity'737'_880 ::
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
du_identity'737'_880 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_846 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
d_identity'691'_882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_882 v7
du_identity'691'_882 ::
  T_IsInvertibleUnitalMagma_832 -> AgdaAny -> AgdaAny
du_identity'691'_882 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_846 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_832 -> T_IsUnitalMagma_560
d_isUnitalMagma_884 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_884 v7
du_isUnitalMagma_884 ::
  T_IsInvertibleUnitalMagma_832 -> T_IsUnitalMagma_560
du_isUnitalMagma_884 v0
  = coe
      C_IsUnitalMagma'46'constructor_12021
      (coe d_isMagma_794 (coe d_isInvertibleMagma_844 (coe v0)))
      (coe d_identity_846 (coe v0))
-- Algebra.Structures.IsGroup
d_IsGroup_892 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroup_892
  = C_IsGroup'46'constructor_22921 T_IsMonoid_604
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                   (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsGroup.isMonoid
d_isMonoid_906 :: T_IsGroup_892 -> T_IsMonoid_604
d_isMonoid_906 v0
  = case coe v0 of
      C_IsGroup'46'constructor_22921 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.inverse
d_inverse_908 ::
  T_IsGroup_892 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_908 v0
  = case coe v0 of
      C_IsGroup'46'constructor_22921 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.⁻¹-cong
d_'8315''185''45'cong_910 ::
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_910 v0
  = case coe v0 of
      C_IsGroup'46'constructor_22921 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup._.assoc
d_assoc_914 ::
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_914 v0
  = coe
      d_assoc_450 (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0)))
-- Algebra.Structures.IsGroup._.identity
d_identity_916 ::
  T_IsGroup_892 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_916 v0
  = coe d_identity_616 (coe d_isMonoid_906 (coe v0))
-- Algebra.Structures.IsGroup._.identityʳ
d_identity'691'_918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> AgdaAny -> AgdaAny
d_identity'691'_918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_918 v7
du_identity'691'_918 :: T_IsGroup_892 -> AgdaAny -> AgdaAny
du_identity'691'_918 v0
  = coe du_identity'691'_646 (coe d_isMonoid_906 (coe v0))
-- Algebra.Structures.IsGroup._.identityˡ
d_identity'737'_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> AgdaAny -> AgdaAny
d_identity'737'_920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_920 v7
du_identity'737'_920 :: T_IsGroup_892 -> AgdaAny -> AgdaAny
du_identity'737'_920 v0
  = coe du_identity'737'_644 (coe d_isMonoid_906 (coe v0))
-- Algebra.Structures.IsGroup._.isEquivalence
d_isEquivalence_922 ::
  T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_922 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0))))
-- Algebra.Structures.IsGroup._.isMagma
d_isMagma_924 :: T_IsGroup_892 -> T_IsMagma_144
d_isMagma_924 v0
  = coe
      d_isMagma_448 (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0)))
-- Algebra.Structures.IsGroup._.isPartialEquivalence
d_isPartialEquivalence_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_926 v7
du_isPartialEquivalence_926 ::
  T_IsGroup_892 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_926 v0
  = let v1 = d_isMonoid_906 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsGroup._.isSemigroup
d_isSemigroup_928 :: T_IsGroup_892 -> T_IsSemigroup_440
d_isSemigroup_928 v0
  = coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0))
-- Algebra.Structures.IsGroup._.isUnitalMagma
d_isUnitalMagma_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> T_IsUnitalMagma_560
d_isUnitalMagma_930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_930 v7
du_isUnitalMagma_930 :: T_IsGroup_892 -> T_IsUnitalMagma_560
du_isUnitalMagma_930 v0
  = coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v0))
-- Algebra.Structures.IsGroup._.refl
d_refl_932 :: T_IsGroup_892 -> AgdaAny -> AgdaAny
d_refl_932 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0)))))
-- Algebra.Structures.IsGroup._.reflexive
d_reflexive_934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_934 v7
du_reflexive_934 ::
  T_IsGroup_892 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_934 v0
  = let v1 = d_isMonoid_906 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsGroup._.setoid
d_setoid_936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_936 v7
du_setoid_936 ::
  T_IsGroup_892 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_936 v0
  = let v1 = d_isMonoid_906 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsGroup._.sym
d_sym_938 ::
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_938 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0)))))
-- Algebra.Structures.IsGroup._.trans
d_trans_940 ::
  T_IsGroup_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_940 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0)))))
-- Algebra.Structures.IsGroup._.∙-cong
d_'8729''45'cong_942 ::
  T_IsGroup_892 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_942 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0))))
-- Algebra.Structures.IsGroup._.∙-congʳ
d_'8729''45'cong'691'_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_944 v7
du_'8729''45'cong'691'_944 ::
  T_IsGroup_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_944 v0
  = let v1 = d_isMonoid_906 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsGroup._.∙-congˡ
d_'8729''45'cong'737'_946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_946 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_946 v7
du_'8729''45'cong'737'_946 ::
  T_IsGroup_892 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_946 v0
  = let v1 = d_isMonoid_906 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsGroup._-_
d__'45'__948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__948 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9
  = du__'45'__948 v4 v6 v8 v9
du__'45'__948 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__948 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
-- Algebra.Structures.IsGroup.inverseˡ
d_inverse'737'_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> AgdaAny -> AgdaAny
d_inverse'737'_954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_954 v7
du_inverse'737'_954 :: T_IsGroup_892 -> AgdaAny -> AgdaAny
du_inverse'737'_954 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_inverse_908 (coe v0))
-- Algebra.Structures.IsGroup.inverseʳ
d_inverse'691'_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> AgdaAny -> AgdaAny
d_inverse'691'_956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_956 v7
du_inverse'691'_956 :: T_IsGroup_892 -> AgdaAny -> AgdaAny
du_inverse'691'_956 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_inverse_908 (coe v0))
-- Algebra.Structures.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_962 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_962 v4 v5 v6 v7
du_unique'737''45''8315''185'_962 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_962 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_456
      (let v4 = d_isSemigroup_614 (coe d_isMonoid_906 (coe v3)) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_154
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v3)))))
      (coe
         d_assoc_450 (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v3))))
      (coe d_identity_616 (coe d_isMonoid_906 (coe v3)))
      (coe du_inverse'691'_956 (coe v3))
-- Algebra.Structures.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_968 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_968 v4 v5 v6 v7
du_unique'691''45''8315''185'_968 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_968 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_476
      (let v4 = d_isSemigroup_614 (coe d_isMonoid_906 (coe v3)) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_154
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v3)))))
      (coe
         d_assoc_450 (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v3))))
      (coe d_identity_616 (coe d_isMonoid_906 (coe v3)))
      (coe du_inverse'737'_954 (coe v3))
-- Algebra.Structures.IsGroup.isInvertibleMagma
d_isInvertibleMagma_970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_892 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_970 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_970 v7
du_isInvertibleMagma_970 ::
  T_IsGroup_892 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_970 v0
  = coe
      C_IsInvertibleMagma'46'constructor_18661
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_isMonoid_906 (coe v0))))
      (coe d_inverse_908 (coe v0))
      (coe d_'8315''185''45'cong_910 (coe v0))
-- Algebra.Structures.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_892 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_972 v7
du_isInvertibleUnitalMagma_972 ::
  T_IsGroup_892 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_972 v0
  = coe
      C_IsInvertibleUnitalMagma'46'constructor_20531
      (coe du_isInvertibleMagma_970 (coe v0))
      (coe d_identity_616 (coe d_isMonoid_906 (coe v0)))
-- Algebra.Structures.IsAbelianGroup
d_IsAbelianGroup_980 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsAbelianGroup_980
  = C_IsAbelianGroup'46'constructor_27921 T_IsGroup_892
                                          (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsAbelianGroup.isGroup
d_isGroup_992 :: T_IsAbelianGroup_980 -> T_IsGroup_892
d_isGroup_992 v0
  = case coe v0 of
      C_IsAbelianGroup'46'constructor_27921 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup.comm
d_comm_994 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_994 v0
  = case coe v0 of
      C_IsAbelianGroup'46'constructor_27921 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup._._-_
d__'45'__998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__998 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 = du__'45'__998 v4 v6
du__'45'__998 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__998 v0 v1 = coe du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.IsAbelianGroup._.assoc
d_assoc_1000 ::
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1000 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.identity
d_identity_1002 ::
  T_IsAbelianGroup_980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1002 v0
  = coe
      d_identity_616 (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.identityʳ
d_identity'691'_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
d_identity'691'_1004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1004 v7
du_identity'691'_1004 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
du_identity'691'_1004 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.identityˡ
d_identity'737'_1006 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
d_identity'737'_1006 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1006 v7
du_identity'737'_1006 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
du_identity'737'_1006 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe (coe du_identity'737'_644 (coe d_isMonoid_906 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.inverse
d_inverse_1008 ::
  T_IsAbelianGroup_980 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1008 v0 = coe d_inverse_908 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseʳ
d_inverse'691'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
d_inverse'691'_1010 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_1010 v7
du_inverse'691'_1010 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
du_inverse'691'_1010 v0
  = coe du_inverse'691'_956 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseˡ
d_inverse'737'_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
d_inverse'737'_1012 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_1012 v7
du_inverse'737'_1012 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
du_inverse'737'_1012 v0
  = coe du_inverse'737'_954 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isEquivalence
d_isEquivalence_1014 ::
  T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1014 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.isInvertibleMagma
d_isInvertibleMagma_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_1016 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_1016 v7
du_isInvertibleMagma_1016 ::
  T_IsAbelianGroup_980 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_1016 v0
  = coe du_isInvertibleMagma_970 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1018 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_1018 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_1018 v7
du_isInvertibleUnitalMagma_1018 ::
  T_IsAbelianGroup_980 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_1018 v0
  = coe du_isInvertibleUnitalMagma_972 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isMagma
d_isMagma_1020 :: T_IsAbelianGroup_980 -> T_IsMagma_144
d_isMagma_1020 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.isMonoid
d_isMonoid_1022 :: T_IsAbelianGroup_980 -> T_IsMonoid_604
d_isMonoid_1022 v0
  = coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isPartialEquivalence
d_isPartialEquivalence_1024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1024 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1024 v7
du_isPartialEquivalence_1024 ::
  T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1024 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe
      (let v2 = d_isMonoid_906 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.IsAbelianGroup._.isSemigroup
d_isSemigroup_1026 :: T_IsAbelianGroup_980 -> T_IsSemigroup_440
d_isSemigroup_1026 v0
  = coe
      d_isSemigroup_614 (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.isUnitalMagma
d_isUnitalMagma_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_980 -> T_IsUnitalMagma_560
d_isUnitalMagma_1028 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1028 v7
du_isUnitalMagma_1028 ::
  T_IsAbelianGroup_980 -> T_IsUnitalMagma_560
du_isUnitalMagma_1028 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe (coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.refl
d_refl_1030 :: T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny
d_refl_1030 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.reflexive
d_reflexive_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1032 v7
du_reflexive_1032 ::
  T_IsAbelianGroup_980 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1032 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe
      (let v2 = d_isMonoid_906 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_152 (coe v4)) v5))))
-- Algebra.Structures.IsAbelianGroup._.setoid
d_setoid_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1034 v7
du_setoid_1034 ::
  T_IsAbelianGroup_980 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1034 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe
      (let v2 = d_isMonoid_906 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsAbelianGroup._.sym
d_sym_1036 ::
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1036 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.trans
d_trans_1038 ::
  T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1038 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1040 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1040 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_1040 v4 v5 v6 v7
du_unique'691''45''8315''185'_1040 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1040 v0 v1 v2 v3
  = coe
      du_unique'691''45''8315''185'_968 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_992 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1042 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_1042 v4 v5 v6 v7
du_unique'737''45''8315''185'_1042 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1042 v0 v1 v2 v3
  = coe
      du_unique'737''45''8315''185'_962 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_992 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.⁻¹-cong
d_'8315''185''45'cong_1044 ::
  T_IsAbelianGroup_980 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1044 v0
  = coe d_'8315''185''45'cong_910 (coe d_isGroup_992 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.∙-cong
d_'8729''45'cong_1046 ::
  T_IsAbelianGroup_980 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1046 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.∙-congʳ
d_'8729''45'cong'691'_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1048 v7
du_'8729''45'cong'691'_1048 ::
  T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1048 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe
      (let v2 = d_isMonoid_906 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsAbelianGroup._.∙-congˡ
d_'8729''45'cong'737'_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1050 v7
du_'8729''45'cong'737'_1050 ::
  T_IsAbelianGroup_980 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1050 v0
  = let v1 = d_isGroup_992 (coe v0) in
    coe
      (let v2 = d_isMonoid_906 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_1052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMonoid_1052 v7
du_isCommutativeMonoid_1052 ::
  T_IsAbelianGroup_980 -> T_IsCommutativeMonoid_654
du_isCommutativeMonoid_1052 v0
  = coe
      C_IsCommutativeMonoid'46'constructor_15395
      (coe d_isMonoid_906 (coe d_isGroup_992 (coe v0)))
      (coe d_comm_994 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeMagma
d_isCommutativeMagma_1056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1056 v7
du_isCommutativeMagma_1056 ::
  T_IsAbelianGroup_980 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1056 v0
  = let v1 = coe du_isCommutativeMonoid_1052 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_554
         (coe du_isCommutativeSemigroup_704 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeSemigroup
d_isCommutativeSemigroup_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_980 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1058 v7
du_isCommutativeSemigroup_1058 ::
  T_IsAbelianGroup_980 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1058 v0
  = coe
      du_isCommutativeSemigroup_704
      (coe du_isCommutativeMonoid_1052 (coe v0))
-- Algebra.Structures.IsNearSemiring
d_IsNearSemiring_1066 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring_1066
  = C_IsNearSemiring'46'constructor_30503 T_IsMonoid_604
                                          (AgdaAny ->
                                           AgdaAny ->
                                           AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1084 :: T_IsNearSemiring_1066 -> T_IsMonoid_604
d_'43''45'isMonoid_1084 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_30503 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.*-cong
d_'42''45'cong_1086 ::
  T_IsNearSemiring_1066 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1086 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_30503 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.*-assoc
d_'42''45'assoc_1088 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1088 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_30503 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.distribʳ
d_distrib'691'_1090 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1090 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_30503 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.zeroˡ
d_zero'737'_1092 :: T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
d_zero'737'_1092 v0
  = case coe v0 of
      C_IsNearSemiring'46'constructor_30503 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring._.assoc
d_assoc_1096 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1096 v0
  = coe
      d_assoc_450
      (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.∙-cong
d_'8729''45'cong_1098 ::
  T_IsNearSemiring_1066 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1098 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1100 v7
du_'8729''45'cong'691'_1100 ::
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1100 v0
  = let v1 = d_'43''45'isMonoid_1084 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1102 v7
du_'8729''45'cong'737'_1102 ::
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1102 v0
  = let v1 = d_'43''45'isMonoid_1084 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsNearSemiring._.identity
d_identity_1104 ::
  T_IsNearSemiring_1066 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1104 v0
  = coe d_identity_616 (coe d_'43''45'isMonoid_1084 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityʳ
d_identity'691'_1106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
d_identity'691'_1106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1106 v7
du_identity'691'_1106 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
du_identity'691'_1106 v0
  = coe du_identity'691'_646 (coe d_'43''45'isMonoid_1084 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityˡ
d_identity'737'_1108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
d_identity'737'_1108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1108 v7
du_identity'737'_1108 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
du_identity'737'_1108 v0
  = coe du_identity'737'_644 (coe d_'43''45'isMonoid_1084 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isMagma
d_isMagma_1110 :: T_IsNearSemiring_1066 -> T_IsMagma_144
d_isMagma_1110 v0
  = coe
      d_isMagma_448
      (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.isSemigroup
d_isSemigroup_1112 :: T_IsNearSemiring_1066 -> T_IsSemigroup_440
d_isSemigroup_1112 v0
  = coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isUnitalMagma
d_isUnitalMagma_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1066 -> T_IsUnitalMagma_560
d_isUnitalMagma_1114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1114 v7
du_isUnitalMagma_1114 ::
  T_IsNearSemiring_1066 -> T_IsUnitalMagma_560
du_isUnitalMagma_1114 v0
  = coe du_isUnitalMagma_648 (coe d_'43''45'isMonoid_1084 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isEquivalence
d_isEquivalence_1116 ::
  T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1116 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.isPartialEquivalence
d_isPartialEquivalence_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1118 v7
du_isPartialEquivalence_1118 ::
  T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1118 v0
  = let v1 = d_'43''45'isMonoid_1084 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsNearSemiring._.refl
d_refl_1120 :: T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny
d_refl_1120 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.reflexive
d_reflexive_1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1122 v7
du_reflexive_1122 ::
  T_IsNearSemiring_1066 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1122 v0
  = let v1 = d_'43''45'isMonoid_1084 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsNearSemiring._.setoid
d_setoid_1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1124 v7
du_setoid_1124 ::
  T_IsNearSemiring_1066 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1124 v0
  = let v1 = d_'43''45'isMonoid_1084 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsNearSemiring._.sym
d_sym_1126 ::
  T_IsNearSemiring_1066 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1126 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.trans
d_trans_1128 ::
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1128 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))))
-- Algebra.Structures.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1066 -> T_IsMagma_144
d_'42''45'isMagma_1130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1130 v7
du_'42''45'isMagma_1130 :: T_IsNearSemiring_1066 -> T_IsMagma_144
du_'42''45'isMagma_1130 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_1084 (coe v0)))))
      (coe d_'42''45'cong_1086 (coe v0))
-- Algebra.Structures.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1066 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1132 v7
du_'42''45'isSemigroup_1132 ::
  T_IsNearSemiring_1066 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1132 v0
  = coe
      C_IsSemigroup'46'constructor_9319
      (coe du_'42''45'isMagma_1130 (coe v0))
      (coe d_'42''45'assoc_1088 (coe v0))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1136 v7
du_'8729''45'cong'691'_1136 ::
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1136 v0
  = coe
      du_'8729''45'cong'691'_174 (coe du_'42''45'isMagma_1130 (coe v0))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1138 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1138 v7
du_'8729''45'cong'737'_1138 ::
  T_IsNearSemiring_1066 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1138 v0
  = coe
      du_'8729''45'cong'737'_170 (coe du_'42''45'isMagma_1130 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne
d_IsSemiringWithoutOne_1146 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne_1146
  = C_IsSemiringWithoutOne'46'constructor_33087 T_IsCommutativeMonoid_654
                                                (AgdaAny ->
                                                 AgdaAny ->
                                                 AgdaAny ->
                                                 AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1164 ::
  T_IsSemiringWithoutOne_1146 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1164 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_33087 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.*-cong
d_'42''45'cong_1166 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1166 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_33087 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_1168 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1168 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_33087 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.distrib
d_distrib_1170 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1170 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_33087 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.zero
d_zero_1172 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1172 v0
  = case coe v0 of
      C_IsSemiringWithoutOne'46'constructor_33087 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne._.comm
d_comm_1176 ::
  T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1176 v0
  = coe d_comm_666 (coe d_'43''45'isCommutativeMonoid_1164 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1178 v7
du_isCommutativeMagma_1178 ::
  T_IsSemiringWithoutOne_1146 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1178 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1164 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_554
         (coe du_isCommutativeSemigroup_704 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1180 v7
du_isCommutativeSemigroup_1180 ::
  T_IsSemiringWithoutOne_1146 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1180 v0
  = coe
      du_isCommutativeSemigroup_704
      (coe d_'43''45'isCommutativeMonoid_1164 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isMonoid
d_isMonoid_1182 :: T_IsSemiringWithoutOne_1146 -> T_IsMonoid_604
d_isMonoid_1182 v0
  = coe
      d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1164 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.setoid
d_setoid_1184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1184 v7
du_setoid_1184 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1184 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1164 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutOne._._≈_
d__'8776'__1188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1188 = erased
-- Algebra.Structures.IsSemiringWithoutOne._._≉_
d__'8777'__1190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1190 = erased
-- Algebra.Structures.IsSemiringWithoutOne._.Carrier
d_Carrier_1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> ()
d_Carrier_1192 = erased
-- Algebra.Structures.IsSemiringWithoutOne._.isEquivalence
d_isEquivalence_1194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_1194 v7
du_isEquivalence_1194 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
      (let v1
             = d_isMonoid_664
                 (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
       coe
         (let v2 = d_isSemigroup_614 (coe v1) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))))
-- Algebra.Structures.IsSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1196 v7
du_isPartialEquivalence_1196 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1196 v0
  = let v1
          = let v1
                  = d_isMonoid_664
                      (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
            coe
              (let v2 = d_isSemigroup_614 (coe v1) in
               coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.partialSetoid
d_partialSetoid_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_1198 v7
du_partialSetoid_1198 ::
  T_IsSemiringWithoutOne_1146 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
      (let v1
             = d_isMonoid_664
                 (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
       coe
         (let v2 = d_isSemigroup_614 (coe v1) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))))
-- Algebra.Structures.IsSemiringWithoutOne._.refl
d_refl_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
d_refl_1200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_1200 v7
du_refl_1200 :: T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
du_refl_1200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
         (let v1
                = d_isMonoid_664
                    (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
          coe
            (let v2 = d_isSemigroup_614 (coe v1) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2))))))
-- Algebra.Structures.IsSemiringWithoutOne._.reflexive
d_reflexive_1202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1202 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1202 v7
du_reflexive_1202 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1202 v0
  = let v1
          = let v1
                  = d_isMonoid_664
                      (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
            coe
              (let v2 = d_isSemigroup_614 (coe v1) in
               coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe
              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1))
           v2)
-- Algebra.Structures.IsSemiringWithoutOne._.sym
d_sym_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_1204 v7
du_sym_1204 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1204 v0
  = let v1
          = let v1
                  = d_isMonoid_664
                      (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
            coe
              (let v2 = d_isSemigroup_614 (coe v1) in
               coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.trans
d_trans_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_1206 v7
du_trans_1206 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1206 v0
  = let v1
          = let v1
                  = d_isMonoid_664
                      (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)) in
            coe
              (let v2 = d_isSemigroup_614 (coe v1) in
               coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2)))) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> T_IsMagma_144
d_'42''45'isMagma_1208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1208 v7
du_'42''45'isMagma_1208 ::
  T_IsSemiringWithoutOne_1146 -> T_IsMagma_144
du_'42''45'isMagma_1208 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
         (let v1
                = d_isSemigroup_614
                    (coe
                       d_isMonoid_664
                       (coe d_'43''45'isCommutativeMonoid_1164 (coe v0))) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v1)))))
      (coe d_'42''45'cong_1166 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1210 v7
du_'42''45'isSemigroup_1210 ::
  T_IsSemiringWithoutOne_1146 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1210 v0
  = coe
      C_IsSemigroup'46'constructor_9319
      (coe du_'42''45'isMagma_1208 (coe v0))
      (coe d_'42''45'assoc_1168 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1214 v7
du_'8729''45'cong'691'_1214 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1214 v0
  = coe
      du_'8729''45'cong'691'_174 (coe du_'42''45'isMagma_1208 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1216 v7
du_'8729''45'cong'737'_1216 ::
  T_IsSemiringWithoutOne_1146 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1216 v0
  = coe
      du_'8729''45'cong'737'_170 (coe du_'42''45'isMagma_1208 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroˡ
d_zero'737'_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
d_zero'737'_1218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_1218 v7
du_zero'737'_1218 ::
  T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
du_zero'737'_1218 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_1172 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroʳ
d_zero'691'_1220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
d_zero'691'_1220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_1220 v7
du_zero'691'_1220 ::
  T_IsSemiringWithoutOne_1146 -> AgdaAny -> AgdaAny
du_zero'691'_1220 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_1172 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1146 -> T_IsNearSemiring_1066
d_isNearSemiring_1222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_1222 v7
du_isNearSemiring_1222 ::
  T_IsSemiringWithoutOne_1146 -> T_IsNearSemiring_1066
du_isNearSemiring_1222 v0
  = coe
      C_IsNearSemiring'46'constructor_30503
      (coe
         d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1164 (coe v0)))
      (coe d_'42''45'cong_1166 (coe v0))
      (coe d_'42''45'assoc_1168 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_1170 (coe v0)))
      (coe du_zero'737'_1218 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_1230 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsCommutativeSemiringWithoutOne_1230
  = C_IsCommutativeSemiringWithoutOne'46'constructor_36895 T_IsSemiringWithoutOne_1146
                                                           (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1242 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1242 v0
  = case coe v0 of
      C_IsCommutativeSemiringWithoutOne'46'constructor_36895 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1244 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1244 v0
  = case coe v0 of
      C_IsCommutativeSemiringWithoutOne'46'constructor_36895 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._._≈_
d__'8776'__1248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny -> ()
d__'8776'__1248 = erased
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._._≉_
d__'8777'__1250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny -> ()
d__'8777'__1250 = erased
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-assoc
d_'42''45'assoc_1252 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1252 v0
  = coe
      d_'42''45'assoc_1168 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-cong
d_'42''45'cong_1254 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1254 v0
  = coe
      d_'42''45'cong_1166 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1256 v7
du_'8729''45'cong'691'_1256 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1256 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         du_'8729''45'cong'691'_174 (coe du_'42''45'isMagma_1208 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1258 v7
du_'8729''45'cong'737'_1258 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1258 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         du_'8729''45'cong'737'_170 (coe du_'42''45'isMagma_1208 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isMagma
d_'42''45'isMagma_1260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiringWithoutOne_1230 -> T_IsMagma_144
d_'42''45'isMagma_1260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1260 v7
du_'42''45'isMagma_1260 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsMagma_144
du_'42''45'isMagma_1260 v0
  = coe
      du_'42''45'isMagma_1208 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_1262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1262 v7
du_'42''45'isSemigroup_1262 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1262 v0
  = coe
      du_'42''45'isSemigroup_1210
      (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm
d_comm_1264 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1264 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1164
         (coe d_isSemiringWithoutOne_1242 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1266 v7
du_isCommutativeMagma_1266 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1266 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1164 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_isCommutativeSemigroup_704 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1268 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1268 v0
  = coe
      d_'43''45'isCommutativeMonoid_1164
      (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1270 v7
du_isCommutativeSemigroup_1270 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1270 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_704
         (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid
d_isMonoid_1272 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsMonoid_604
d_isMonoid_1272 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1164
         (coe d_isSemiringWithoutOne_1242 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.Carrier
d_Carrier_1274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiringWithoutOne_1230 -> ()
d_Carrier_1274 = erased
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib
d_distrib_1276 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1276 v0
  = coe d_distrib_1170 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence
d_isEquivalence_1278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isEquivalence_1278 v7
du_isEquivalence_1278 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_1278 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
         (let v2
                = d_isMonoid_664
                    (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
          coe
            (let v3 = d_isSemigroup_614 (coe v2) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring
d_isNearSemiring_1280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsNearSemiring_1066
d_isNearSemiring_1280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_1280 v7
du_isNearSemiring_1280 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsNearSemiring_1066
du_isNearSemiring_1280 v0
  = coe
      du_isNearSemiring_1222 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1282 v7
du_isPartialEquivalence_1282 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1282 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2
             = let v2
                     = d_isMonoid_664
                         (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
               coe
                 (let v3 = d_isSemigroup_614 (coe v2) in
                  coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.partialSetoid
d_partialSetoid_1284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
d_partialSetoid_1284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_partialSetoid_1284 v7
du_partialSetoid_1284 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_PartialSetoid_10
du_partialSetoid_1284 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.du_partialSetoid_70
         (let v2
                = d_isMonoid_664
                    (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
          coe
            (let v3 = d_isSemigroup_614 (coe v2) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl
d_refl_1286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
d_refl_1286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_refl_1286 v7
du_refl_1286 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
du_refl_1286 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
            (let v2
                   = d_isMonoid_664
                       (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
             coe
               (let v3 = d_isSemigroup_614 (coe v2) in
                coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive
d_reflexive_1288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1288 v7
du_reflexive_1288 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1288 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2
             = let v2
                     = d_isMonoid_664
                         (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
               coe
                 (let v3 = d_isSemigroup_614 (coe v2) in
                  coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))
              v3))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid
d_setoid_1290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1290 v7
du_setoid_1290 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1290 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1164 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym
d_sym_1292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_sym_1292 v7
du_sym_1292 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_1292 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2
             = let v2
                     = d_isMonoid_664
                         (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
               coe
                 (let v3 = d_isSemigroup_614 (coe v2) in
                  coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans
d_trans_1294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_trans_1294 v7
du_trans_1294 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_1294 v0
  = let v1 = d_isSemiringWithoutOne_1242 (coe v0) in
    coe
      (let v2
             = let v2
                     = d_isMonoid_664
                         (coe d_'43''45'isCommutativeMonoid_1164 (coe v1)) in
               coe
                 (let v3 = d_isSemigroup_614 (coe v2) in
                  coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero
d_zero_1296 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1296 v0
  = coe d_zero_1172 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ
d_zero'691'_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
d_zero'691'_1298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_1298 v7
du_zero'691'_1298 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
du_zero'691'_1298 v0
  = coe du_zero'691'_1220 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ
d_zero'737'_1300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
d_zero'737'_1300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_1300 v7
du_zero'737'_1300 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> AgdaAny -> AgdaAny
du_zero'737'_1300 v0
  = coe du_zero'737'_1218 (coe d_isSemiringWithoutOne_1242 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 ->
  T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_1302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'42''45'isCommutativeSemigroup_1302 v7
du_'42''45'isCommutativeSemigroup_1302 ::
  T_IsCommutativeSemiringWithoutOne_1230 ->
  T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_1302 v0
  = coe
      C_IsCommutativeSemigroup'46'constructor_10991
      (coe
         du_'42''45'isSemigroup_1210
         (coe d_isSemiringWithoutOne_1242 (coe v0)))
      (coe d_'42''45'comm_1244 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1306 v7
du_isCommutativeMagma_1306 ::
  T_IsCommutativeSemiringWithoutOne_1230 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1306 v0
  = coe
      du_isCommutativeMagma_554
      (coe du_'42''45'isCommutativeSemigroup_1302 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_1316 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero_1316
  = C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 T_IsCommutativeMonoid_654
                                                             (AgdaAny ->
                                                              AgdaAny ->
                                                              AgdaAny ->
                                                              AgdaAny ->
                                                              AgdaAny -> AgdaAny -> AgdaAny)
                                                             (AgdaAny ->
                                                              AgdaAny -> AgdaAny -> AgdaAny)
                                                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                             MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1336 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1336 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_1338 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1338 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_1340 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1340 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_1342 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1342 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_1344 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1344 v0
  = case coe v0 of
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_1346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1346 v8
du_distrib'737'_1346 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1346 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_1344 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_1348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1348 v8
du_distrib'691'_1348 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1348 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_1344 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc
d_assoc_1352 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1352 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm
d_comm_1354 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1354 v0
  = coe d_comm_666 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1356 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1356 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1358 v8
du_'8729''45'cong'691'_1358 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1358 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1360 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1360 v8
du_'8729''45'cong'737'_1360 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1360 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity
d_identity_1362 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1362 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
d_identity'691'_1364 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1364 v8
du_identity'691'_1364 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
du_identity'691'_1364 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
d_identity'737'_1366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1366 v8
du_identity'737'_1366 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
du_identity'737'_1366 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeMagma
d_isCommutativeMagma_1368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  T_IsCommutativeMagma_180
d_isCommutativeMagma_1368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1368 v8
du_isCommutativeMagma_1368 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  T_IsCommutativeMagma_180
du_isCommutativeMagma_1368 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_554
         (coe du_isCommutativeSemigroup_704 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeSemigroup
d_isCommutativeSemigroup_1370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1370 v8
du_isCommutativeSemigroup_1370 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1370 v0
  = coe
      du_isCommutativeSemigroup_704
      (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1372 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMagma_144
d_isMagma_1372 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid
d_isMonoid_1374 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMonoid_604
d_isMonoid_1374 v0
  = coe
      d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1376 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsSemigroup_440
d_isSemigroup_1376 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isUnitalMagma
d_isUnitalMagma_1378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsUnitalMagma_560
d_isUnitalMagma_1378 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1378 v8
du_isUnitalMagma_1378 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsUnitalMagma_560
du_isUnitalMagma_1378 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence
d_isEquivalence_1380 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1380 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664 (coe d_'43''45'isCommutativeMonoid_1336 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isPartialEquivalence
d_isPartialEquivalence_1382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1382 v8
du_isPartialEquivalence_1382 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1382 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl
d_refl_1384 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
d_refl_1384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive
d_reflexive_1386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1386 v8
du_reflexive_1386 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1386 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_152 (coe v4)) v5))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid
d_setoid_1388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1388 v8
du_setoid_1388 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1388 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1336 (coe v0) in
    coe
      (let v2 = d_isMonoid_664 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym
d_sym_1390 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans
d_trans_1392 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1392 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_1394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMagma_144
d_'42''45'isMagma_1394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1394 v8
du_'42''45'isMagma_1394 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMagma_144
du_'42''45'isMagma_1394 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe d_'43''45'isCommutativeMonoid_1336 (coe v0))))))
      (coe d_'42''45'cong_1338 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_1396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1396 v8
du_'42''45'isSemigroup_1396 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1396 v0
  = coe
      C_IsSemigroup'46'constructor_9319
      (coe du_'42''45'isMagma_1394 (coe v0))
      (coe d_'42''45'assoc_1340 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMonoid_604
d_'42''45'isMonoid_1398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1398 v8
du_'42''45'isMonoid_1398 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> T_IsMonoid_604
du_'42''45'isMonoid_1398 v0
  = coe
      C_IsMonoid'46'constructor_13575
      (coe du_'42''45'isSemigroup_1396 (coe v0))
      (coe d_'42''45'identity_1342 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1402 v8
du_'8729''45'cong'691'_1402 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1402 v0
  = let v1 = coe du_'42''45'isMonoid_1398 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1404 v8
du_'8729''45'cong'737'_1404 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1404 v0
  = let v1 = coe du_'42''45'isMonoid_1398 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
d_identity'691'_1406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1406 v8
du_identity'691'_1406 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
du_identity'691'_1406 v0
  = coe du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
d_identity'737'_1408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1408 v8
du_identity'737'_1408 ::
  T_IsSemiringWithoutAnnihilatingZero_1316 -> AgdaAny -> AgdaAny
du_identity'737'_1408 v0
  = coe du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v0))
-- Algebra.Structures.IsSemiring
d_IsSemiring_1418 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsSemiring_1418
  = C_IsSemiring'46'constructor_43487 T_IsSemiringWithoutAnnihilatingZero_1316
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1432 ::
  T_IsSemiring_1418 -> T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1432 v0
  = case coe v0 of
      C_IsSemiring'46'constructor_43487 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring.zero
d_zero_1434 ::
  T_IsSemiring_1418 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1434 v0
  = case coe v0 of
      C_IsSemiring'46'constructor_43487 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring._.*-assoc
d_'42''45'assoc_1438 ::
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1438 v0
  = coe
      d_'42''45'assoc_1340
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.*-cong
d_'42''45'cong_1440 ::
  T_IsSemiring_1418 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1440 v0
  = coe
      d_'42''45'cong_1338
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1442 v8
du_'8729''45'cong'691'_1442 ::
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1442 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_1398 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1444 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1444 v8
du_'8729''45'cong'737'_1444 ::
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1444 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_1398 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsSemiring._.*-identity
d_'42''45'identity_1446 ::
  T_IsSemiring_1418 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1446 v0
  = coe
      d_'42''45'identity_1342
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_identity'691'_1448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1448 v8
du_identity'691'_1448 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_identity'691'_1448 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (coe du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v1)))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_identity'737'_1450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1450 v8
du_identity'737'_1450 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_identity'737'_1450 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (coe du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v1)))
-- Algebra.Structures.IsSemiring._.*-isMagma
d_'42''45'isMagma_1452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsMagma_144
d_'42''45'isMagma_1452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1452 v8
du_'42''45'isMagma_1452 :: T_IsSemiring_1418 -> T_IsMagma_144
du_'42''45'isMagma_1452 v0
  = coe
      du_'42''45'isMagma_1394
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.*-isMonoid
d_'42''45'isMonoid_1454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsMonoid_604
d_'42''45'isMonoid_1454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1454 v8
du_'42''45'isMonoid_1454 :: T_IsSemiring_1418 -> T_IsMonoid_604
du_'42''45'isMonoid_1454 v0
  = coe
      du_'42''45'isMonoid_1398
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1456 v8
du_'42''45'isSemigroup_1456 ::
  T_IsSemiring_1418 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1456 v0
  = coe
      du_'42''45'isSemigroup_1396
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.assoc
d_assoc_1458 ::
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1458 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))))
-- Algebra.Structures.IsSemiring._.comm
d_comm_1460 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1460 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
-- Algebra.Structures.IsSemiring._.∙-cong
d_'8729''45'cong_1462 ::
  T_IsSemiring_1418 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1462 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))))))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1464 v8
du_'8729''45'cong'691'_1464 ::
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1464 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1466 v8
du_'8729''45'cong'737'_1466 ::
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1466 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsSemiring._.identity
d_identity_1468 ::
  T_IsSemiring_1418 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1468 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_identity'691'_1470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1470 v8
du_identity'691'_1470 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_identity'691'_1470 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v2))))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_identity'737'_1472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1472 v8
du_identity'737'_1472 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_identity'737'_1472 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v2))))
-- Algebra.Structures.IsSemiring._.isCommutativeMagma
d_isCommutativeMagma_1474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1474 v8
du_isCommutativeMagma_1474 ::
  T_IsSemiring_1418 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1474 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_isCommutativeSemigroup_704 (coe v2))))
-- Algebra.Structures.IsSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1476 ::
  T_IsSemiring_1418 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1476 v0
  = coe
      d_'43''45'isCommutativeMonoid_1336
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1418 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1478 v8
du_isCommutativeSemigroup_1478 ::
  T_IsSemiring_1418 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1478 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_704
         (coe d_'43''45'isCommutativeMonoid_1336 (coe v1)))
-- Algebra.Structures.IsSemiring._.isMagma
d_isMagma_1480 :: T_IsSemiring_1418 -> T_IsMagma_144
d_isMagma_1480 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))))
-- Algebra.Structures.IsSemiring._.isMonoid
d_isMonoid_1482 :: T_IsSemiring_1418 -> T_IsMonoid_604
d_isMonoid_1482 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
-- Algebra.Structures.IsSemiring._.isSemigroup
d_isSemigroup_1484 :: T_IsSemiring_1418 -> T_IsSemigroup_440
d_isSemigroup_1484 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))))
-- Algebra.Structures.IsSemiring._.isUnitalMagma
d_isUnitalMagma_1486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsUnitalMagma_560
d_isUnitalMagma_1486 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1486 v8
du_isUnitalMagma_1486 :: T_IsSemiring_1418 -> T_IsUnitalMagma_560
du_isUnitalMagma_1486 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v2))))
-- Algebra.Structures.IsSemiring._.distrib
d_distrib_1488 ::
  T_IsSemiring_1418 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1488 v0
  = coe
      d_distrib_1344
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.distribʳ
d_distrib'691'_1490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1490 v8
du_distrib'691'_1490 ::
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1490 v0
  = coe
      du_distrib'691'_1348
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.distribˡ
d_distrib'737'_1492 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1492 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1492 v8
du_distrib'737'_1492 ::
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1492 v0
  = coe
      du_distrib'737'_1346
      (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))
-- Algebra.Structures.IsSemiring._.isEquivalence
d_isEquivalence_1494 ::
  T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1494 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0))))))
-- Algebra.Structures.IsSemiring._.isPartialEquivalence
d_isPartialEquivalence_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1496 v8
du_isPartialEquivalence_1496 ::
  T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1496 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe d_isEquivalence_152 (coe v5)))))))
-- Algebra.Structures.IsSemiring._.refl
d_refl_1498 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_refl_1498 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.reflexive
d_reflexive_1500 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1500 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1500 v8
du_reflexive_1500 ::
  T_IsSemiring_1418 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1500 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe d_isEquivalence_152 (coe v5)) v6)))))
-- Algebra.Structures.IsSemiring._.setoid
d_setoid_1502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1502 v8
du_setoid_1502 ::
  T_IsSemiring_1418 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1502 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1336 (coe v1) in
       coe
         (let v3 = d_isMonoid_664 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsSemiring._.sym
d_sym_1504 ::
  T_IsSemiring_1418 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1504 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.trans
d_trans_1506 ::
  T_IsSemiring_1418 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))))))
-- Algebra.Structures.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1418 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1508 v8
du_isSemiringWithoutOne_1508 ::
  T_IsSemiring_1418 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_1508 v0
  = coe
      C_IsSemiringWithoutOne'46'constructor_33087
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
      (coe
         d_'42''45'cong_1338
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
      (coe
         d_'42''45'assoc_1340
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
      (coe
         d_distrib_1344
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v0)))
      (coe d_zero_1434 (coe v0))
-- Algebra.Structures.IsSemiring._.isNearSemiring
d_isNearSemiring_1512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> T_IsNearSemiring_1066
d_isNearSemiring_1512 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1512 v8
du_isNearSemiring_1512 ::
  T_IsSemiring_1418 -> T_IsNearSemiring_1066
du_isNearSemiring_1512 v0
  = coe
      du_isNearSemiring_1222 (coe du_isSemiringWithoutOne_1508 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroʳ
d_zero'691'_1514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_zero'691'_1514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1514 v8
du_zero'691'_1514 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_zero'691'_1514 v0
  = coe du_zero'691'_1220 (coe du_isSemiringWithoutOne_1508 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroˡ
d_zero'737'_1516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1418 -> AgdaAny -> AgdaAny
d_zero'737'_1516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1516 v8
du_zero'737'_1516 :: T_IsSemiring_1418 -> AgdaAny -> AgdaAny
du_zero'737'_1516 v0
  = coe du_zero'737'_1218 (coe du_isSemiringWithoutOne_1508 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring
d_IsCommutativeSemiring_1526 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring_1526
  = C_IsCommutativeSemiring'46'constructor_47309 T_IsSemiring_1418
                                                 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiring.isSemiring
d_isSemiring_1540 ::
  T_IsCommutativeSemiring_1526 -> T_IsSemiring_1418
d_isSemiring_1540 v0
  = case coe v0 of
      C_IsCommutativeSemiring'46'constructor_47309 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring.*-comm
d_'42''45'comm_1542 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1542 v0
  = case coe v0 of
      C_IsCommutativeSemiring'46'constructor_47309 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring._.*-assoc
d_'42''45'assoc_1546 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1546 v0
  = coe
      d_'42''45'assoc_1340
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1540 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.*-cong
d_'42''45'cong_1548 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1548 v0
  = coe
      d_'42''45'cong_1338
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1540 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1550 v8
du_'8729''45'cong'691'_1550 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1550 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1398 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1552 v8
du_'8729''45'cong'737'_1552 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1552 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1398 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsCommutativeSemiring._.*-identity
d_'42''45'identity_1554 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1554 v0
  = coe
      d_'42''45'identity_1342
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1540 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_identity'691'_1556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1556 v8
du_identity'691'_1556 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_identity'691'_1556 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_identity'737'_1558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1558 v8
du_identity'737'_1558 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_identity'737'_1558 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.*-isMagma
d_'42''45'isMagma_1560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsMagma_144
d_'42''45'isMagma_1560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1560 v8
du_'42''45'isMagma_1560 ::
  T_IsCommutativeSemiring_1526 -> T_IsMagma_144
du_'42''45'isMagma_1560 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_1394
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsMonoid_604
d_'42''45'isMonoid_1562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1562 v8
du_'42''45'isMonoid_1562 ::
  T_IsCommutativeSemiring_1526 -> T_IsMonoid_604
du_'42''45'isMonoid_1562 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoid_1398
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1564 v8
du_'42''45'isSemigroup_1564 ::
  T_IsCommutativeSemiring_1526 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1564 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_1396
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.assoc
d_assoc_1566 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1566 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe d_isSemiring_1540 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.comm
d_comm_1568 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1568 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe d_isSemiring_1540 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-cong
d_'8729''45'cong_1570 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1570 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe d_isSemiring_1540 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1572 v8
du_'8729''45'cong'691'_1572 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1572 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1574 v8
du_'8729''45'cong'737'_1574 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1574 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsCommutativeSemiring._.identity
d_identity_1576 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1576 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe d_isSemiring_1540 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_identity'691'_1578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1578 v8
du_identity'691'_1578 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_identity'691'_1578 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_identity'737'_1580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1580 v8
du_identity'737'_1580 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_identity'737'_1580 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1582 v8
du_isCommutativeMagma_1582 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1582 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_554
               (coe du_isCommutativeSemigroup_704 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1584 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1584 v0
  = coe
      d_'43''45'isCommutativeMonoid_1336
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1540 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1586 v8
du_isCommutativeSemigroup_1586 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1586 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_704
            (coe d_'43''45'isCommutativeMonoid_1336 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.isMagma
d_isMagma_1588 :: T_IsCommutativeSemiring_1526 -> T_IsMagma_144
d_isMagma_1588 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe d_isSemiring_1540 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.isMonoid
d_isMonoid_1590 :: T_IsCommutativeSemiring_1526 -> T_IsMonoid_604
d_isMonoid_1590 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe d_isSemiring_1540 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.isSemigroup
d_isSemigroup_1592 ::
  T_IsCommutativeSemiring_1526 -> T_IsSemigroup_440
d_isSemigroup_1592 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe d_isSemiring_1540 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.isUnitalMagma
d_isUnitalMagma_1594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsUnitalMagma_560
d_isUnitalMagma_1594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1594 v8
du_isUnitalMagma_1594 ::
  T_IsCommutativeSemiring_1526 -> T_IsUnitalMagma_560
du_isUnitalMagma_1594 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.distrib
d_distrib_1596 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1596 v0
  = coe
      d_distrib_1344
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1540 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.distribʳ
d_distrib'691'_1598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1598 v8
du_distrib'691'_1598 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1598 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_distrib'691'_1348
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.distribˡ
d_distrib'737'_1600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1600 v8
du_distrib'737'_1600 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1600 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_distrib'737'_1346
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.isEquivalence
d_isEquivalence_1602 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1602 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe d_isSemiring_1540 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsNearSemiring_1066
d_isNearSemiring_1604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1604 v8
du_isNearSemiring_1604 ::
  T_IsCommutativeSemiring_1526 -> T_IsNearSemiring_1066
du_isNearSemiring_1604 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe
         du_isNearSemiring_1222 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1606 v8
du_isPartialEquivalence_1606 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1606 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe d_isEquivalence_152 (coe v6))))))))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1608 ::
  T_IsCommutativeSemiring_1526 ->
  T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1608 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1432
      (coe d_isSemiring_1540 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1610 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1610 v8
du_isSemiringWithoutOne_1610 ::
  T_IsCommutativeSemiring_1526 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_1610 v0
  = coe du_isSemiringWithoutOne_1508 (coe d_isSemiring_1540 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.refl
d_refl_1612 :: T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_refl_1612 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1540 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.reflexive
d_reflexive_1614 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1614 v8
du_reflexive_1614 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1614 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe d_isEquivalence_152 (coe v6)) v7))))))
-- Algebra.Structures.IsCommutativeSemiring._.setoid
d_setoid_1616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1616 v8
du_setoid_1616 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1616 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe (coe du_setoid_168 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsCommutativeSemiring._.sym
d_sym_1618 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1618 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1540 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.trans
d_trans_1620 ::
  T_IsCommutativeSemiring_1526 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1620 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1540 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.zero
d_zero_1622 ::
  T_IsCommutativeSemiring_1526 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1622 v0 = coe d_zero_1434 (coe d_isSemiring_1540 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.zeroʳ
d_zero'691'_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_zero'691'_1624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1624 v8
du_zero'691'_1624 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_zero'691'_1624 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe du_zero'691'_1220 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.zeroˡ
d_zero'737'_1626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
d_zero'737'_1626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1626 v8
du_zero'737'_1626 ::
  T_IsCommutativeSemiring_1526 -> AgdaAny -> AgdaAny
du_zero'737'_1626 v0
  = let v1 = d_isSemiring_1540 (coe v0) in
    coe
      (coe du_zero'737'_1218 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 ->
  T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_1628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1628 v8
du_isCommutativeSemiringWithoutOne_1628 ::
  T_IsCommutativeSemiring_1526 ->
  T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_1628 v0
  = coe
      C_IsCommutativeSemiringWithoutOne'46'constructor_36895
      (coe du_isSemiringWithoutOne_1508 (coe d_isSemiring_1540 (coe v0)))
      (coe d_'42''45'comm_1542 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1526 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1632 v8
du_isCommutativeMagma_1632 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1632 v0
  = let v1 = coe du_isCommutativeSemiringWithoutOne_1628 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_554
         (coe du_'42''45'isCommutativeSemigroup_1302 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_1634 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1634 v8
du_'42''45'isCommutativeSemigroup_1634 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_1634 v0
  = coe
      du_'42''45'isCommutativeSemigroup_1302
      (coe du_isCommutativeSemiringWithoutOne_1628 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_1636 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1636 v8
du_'42''45'isCommutativeMonoid_1636 ::
  T_IsCommutativeSemiring_1526 -> T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_1636 v0
  = coe
      C_IsCommutativeMonoid'46'constructor_15395
      (coe
         du_'42''45'isMonoid_1398
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe d_isSemiring_1540 (coe v0))))
      (coe d_'42''45'comm_1542 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_1646 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsCancellativeCommutativeSemiring_1646
  = C_IsCancellativeCommutativeSemiring'46'constructor_51275 T_IsCommutativeSemiring_1526
                                                             (AgdaAny ->
                                                              AgdaAny ->
                                                              AgdaAny ->
                                                              (AgdaAny ->
                                                               MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
                                                              AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_1660 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_1660 v0
  = case coe v0 of
      C_IsCancellativeCommutativeSemiring'46'constructor_51275 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_1662 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_'42''45'cancel'737''45'nonZero_1662 v0
  = case coe v0 of
      C_IsCancellativeCommutativeSemiring'46'constructor_51275 v1 v2
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-assoc
d_'42''45'assoc_1666 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1666 v0
  = coe
      d_'42''45'assoc_1340
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-comm
d_'42''45'comm_1668 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1668 v0
  = coe
      d_'42''45'comm_1542 (coe d_isCommutativeSemiring_1660 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-cong
d_'42''45'cong_1670 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1670 v0
  = coe
      d_'42''45'cong_1338
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1672 v8
du_'8729''45'cong'691'_1672 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1672 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1398 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1674 v8
du_'8729''45'cong'737'_1674 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1674 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1398 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-identity
d_'42''45'identity_1676 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1676 v0
  = coe
      d_'42''45'identity_1342
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_identity'691'_1678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1678 v8
du_identity'691'_1678 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_identity'691'_1678 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_identity'737'_1680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1680 v8
du_identity'737'_1680 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_identity'737'_1680 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMagma_180
d_isCommutativeMagma_1682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1682 v8
du_isCommutativeMagma_1682 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMagma_180
du_isCommutativeMagma_1682 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeSemiringWithoutOne_1628 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_'42''45'isCommutativeSemigroup_1302 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_1684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1684 v8
du_'42''45'isCommutativeMonoid_1684 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_1684 v0
  = coe
      du_'42''45'isCommutativeMonoid_1636
      (coe d_isCommutativeSemiring_1660 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_1686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1686 v8
du_'42''45'isCommutativeSemigroup_1686 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_1686 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (coe
         du_'42''45'isCommutativeSemigroup_1302
         (coe du_isCommutativeSemiringWithoutOne_1628 (coe v1)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isMagma
d_'42''45'isMagma_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMagma_144
d_'42''45'isMagma_1688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1688 v8
du_'42''45'isMagma_1688 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMagma_144
du_'42''45'isMagma_1688 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_'42''45'isMagma_1394
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMonoid_604
d_'42''45'isMonoid_1690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1690 v8
du_'42''45'isMonoid_1690 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMonoid_604
du_'42''45'isMonoid_1690 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoid_1398
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1692 v8
du_'42''45'isSemigroup_1692 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1692 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_'42''45'isSemigroup_1396
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.assoc
d_assoc_1694 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1694 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.comm
d_comm_1696 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1696 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_1698 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1698 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1700 v8
du_'8729''45'cong'691'_1700 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1700 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1702 v8
du_'8729''45'cong'737'_1702 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1702 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identity
d_identity_1704 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1704 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_identity'691'_1706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1706 v8
du_identity'691'_1706 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_identity'691'_1706 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_identity'737'_1708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1708 v8
du_identity'737'_1708 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_identity'737'_1708 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMagma_180
d_isCommutativeMagma_1710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1710 v8
du_isCommutativeMagma_1710 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMagma_180
du_isCommutativeMagma_1710 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_554
                  (coe du_isCommutativeSemigroup_704 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1712 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1712 v0
  = coe
      d_'43''45'isCommutativeMonoid_1336
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1714 v8
du_isCommutativeSemigroup_1714 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1714 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_704
               (coe d_'43''45'isCommutativeMonoid_1336 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMagma
d_isMagma_1716 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMagma_144
d_isMagma_1716 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMonoid
d_isMonoid_1718 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsMonoid_604
d_isMonoid_1718 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_1720 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsSemigroup_440
d_isSemigroup_1720 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isUnitalMagma
d_isUnitalMagma_1722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsUnitalMagma_560
d_isUnitalMagma_1722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1722 v8
du_isUnitalMagma_1722 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsUnitalMagma_560
du_isUnitalMagma_1722 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distrib
d_distrib_1724 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1724 v0
  = coe
      d_distrib_1344
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe
            d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribʳ
d_distrib'691'_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1726 v8
du_distrib'691'_1726 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1726 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_distrib'691'_1348
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribˡ
d_distrib'737'_1728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1728 v8
du_distrib'737'_1728 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1728 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_distrib'737'_1346
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_1730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1730 v8
du_isCommutativeSemiringWithoutOne_1730 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_1730 v0
  = coe
      du_isCommutativeSemiringWithoutOne_1628
      (coe d_isCommutativeSemiring_1660 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isEquivalence
d_isEquivalence_1732 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1732 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsNearSemiring_1066
d_isNearSemiring_1734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1734 v8
du_isNearSemiring_1734 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsNearSemiring_1066
du_isNearSemiring_1734 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_isNearSemiring_1222
            (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1736 v8
du_isPartialEquivalence_1736 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1736 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe d_isEquivalence_152 (coe v7)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiring
d_isSemiring_1738 ::
  T_IsCancellativeCommutativeSemiring_1646 -> T_IsSemiring_1418
d_isSemiring_1738 v0
  = coe d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1740 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1740 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1432
      (coe d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1742 v8
du_isSemiringWithoutOne_1742 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_1742 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (coe du_isSemiringWithoutOne_1508 (coe d_isSemiring_1540 (coe v1)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.refl
d_refl_1744 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_refl_1744 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1540
                           (coe d_isCommutativeSemiring_1660 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.reflexive
d_reflexive_1746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1746 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1746 v8
du_reflexive_1746 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1746 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                             (coe d_isEquivalence_152 (coe v7)) v8)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.setoid
d_setoid_1748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1748 v8
du_setoid_1748 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1748 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe (coe du_setoid_168 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.sym
d_sym_1750 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1750 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1540
                           (coe d_isCommutativeSemiring_1660 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.trans
d_trans_1752 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1752 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1540
                           (coe d_isCommutativeSemiring_1660 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zero
d_zero_1754 ::
  T_IsCancellativeCommutativeSemiring_1646 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1754 v0
  = coe
      d_zero_1434
      (coe d_isSemiring_1540 (coe d_isCommutativeSemiring_1660 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroʳ
d_zero'691'_1756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_zero'691'_1756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1756 v8
du_zero'691'_1756 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_zero'691'_1756 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_zero'691'_1220 (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroˡ
d_zero'737'_1758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
d_zero'737'_1758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1758 v8
du_zero'737'_1758 ::
  T_IsCancellativeCommutativeSemiring_1646 -> AgdaAny -> AgdaAny
du_zero'737'_1758 v0
  = let v1 = d_isCommutativeSemiring_1660 (coe v0) in
    coe
      (let v2 = d_isSemiring_1540 (coe v1) in
       coe
         (coe
            du_zero'737'_1218 (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring
d_IsIdempotentSemiring_1768 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsIdempotentSemiring_1768
  = C_IsIdempotentSemiring'46'constructor_54943 T_IsSemiring_1418
                                                (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentSemiring.isSemiring
d_isSemiring_1782 ::
  T_IsIdempotentSemiring_1768 -> T_IsSemiring_1418
d_isSemiring_1782 v0
  = case coe v0 of
      C_IsIdempotentSemiring'46'constructor_54943 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentSemiring.+-idem
d_'43''45'idem_1784 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_'43''45'idem_1784 v0
  = case coe v0 of
      C_IsIdempotentSemiring'46'constructor_54943 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentSemiring._.*-assoc
d_'42''45'assoc_1788 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1788 v0
  = coe
      d_'42''45'assoc_1340
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.*-cong
d_'42''45'cong_1790 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1790 v0
  = coe
      d_'42''45'cong_1338
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congʳ
d_'8729''45'cong'691'_1792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1792 v8
du_'8729''45'cong'691'_1792 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1792 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1398 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congˡ
d_'8729''45'cong'737'_1794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1794 v8
du_'8729''45'cong'737'_1794 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1794 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1398 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsIdempotentSemiring._.*-identity
d_'42''45'identity_1796 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1796 v0
  = coe
      d_'42''45'identity_1342
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.identityʳ
d_identity'691'_1798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_identity'691'_1798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1798 v8
du_identity'691'_1798 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_identity'691'_1798 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.identityˡ
d_identity'737'_1800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_identity'737'_1800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1800 v8
du_identity'737'_1800 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_identity'737'_1800 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.*-isMagma
d_'42''45'isMagma_1802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsMagma_144
d_'42''45'isMagma_1802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1802 v8
du_'42''45'isMagma_1802 ::
  T_IsIdempotentSemiring_1768 -> T_IsMagma_144
du_'42''45'isMagma_1802 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_1394
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.*-isMonoid
d_'42''45'isMonoid_1804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsMonoid_604
d_'42''45'isMonoid_1804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1804 v8
du_'42''45'isMonoid_1804 ::
  T_IsIdempotentSemiring_1768 -> T_IsMonoid_604
du_'42''45'isMonoid_1804 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoid_1398
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1806 v8
du_'42''45'isSemigroup_1806 ::
  T_IsIdempotentSemiring_1768 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1806 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_1396
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.assoc
d_assoc_1808 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1808 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe d_isSemiring_1782 (coe v0))))))
-- Algebra.Structures.IsIdempotentSemiring._.comm
d_comm_1810 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1810 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe d_isSemiring_1782 (coe v0))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-cong
d_'8729''45'cong_1812 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1812 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe d_isSemiring_1782 (coe v0)))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congʳ
d_'8729''45'cong'691'_1814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1814 v8
du_'8729''45'cong'691'_1814 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1814 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congˡ
d_'8729''45'cong'737'_1816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1816 v8
du_'8729''45'cong'737'_1816 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1816 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsIdempotentSemiring._.identity
d_identity_1818 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1818 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe d_isSemiring_1782 (coe v0)))))
-- Algebra.Structures.IsIdempotentSemiring._.identityʳ
d_identity'691'_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_identity'691'_1820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1820 v8
du_identity'691'_1820 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_identity'691'_1820 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.identityˡ
d_identity'737'_1822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_identity'737'_1822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1822 v8
du_identity'737'_1822 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_identity'737'_1822 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.isCommutativeMagma
d_isCommutativeMagma_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1824 v8
du_isCommutativeMagma_1824 ::
  T_IsIdempotentSemiring_1768 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1824 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_554
               (coe du_isCommutativeSemigroup_704 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1826 ::
  T_IsIdempotentSemiring_1768 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1826 v0
  = coe
      d_'43''45'isCommutativeMonoid_1336
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1828 v8
du_isCommutativeSemigroup_1828 ::
  T_IsIdempotentSemiring_1768 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1828 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_704
            (coe d_'43''45'isCommutativeMonoid_1336 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.isMagma
d_isMagma_1830 :: T_IsIdempotentSemiring_1768 -> T_IsMagma_144
d_isMagma_1830 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe d_isSemiring_1782 (coe v0))))))
-- Algebra.Structures.IsIdempotentSemiring._.isMonoid
d_isMonoid_1832 :: T_IsIdempotentSemiring_1768 -> T_IsMonoid_604
d_isMonoid_1832 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe d_isSemiring_1782 (coe v0))))
-- Algebra.Structures.IsIdempotentSemiring._.isSemigroup
d_isSemigroup_1834 ::
  T_IsIdempotentSemiring_1768 -> T_IsSemigroup_440
d_isSemigroup_1834 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe d_isSemiring_1782 (coe v0)))))
-- Algebra.Structures.IsIdempotentSemiring._.isUnitalMagma
d_isUnitalMagma_1836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsUnitalMagma_560
d_isUnitalMagma_1836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1836 v8
du_isUnitalMagma_1836 ::
  T_IsIdempotentSemiring_1768 -> T_IsUnitalMagma_560
du_isUnitalMagma_1836 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.distrib
d_distrib_1838 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1838 v0
  = coe
      d_distrib_1344
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.distribʳ
d_distrib'691'_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1840 v8
du_distrib'691'_1840 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1840 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_distrib'691'_1348
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.distribˡ
d_distrib'737'_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1842 v8
du_distrib'737'_1842 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1842 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_distrib'737'_1346
         (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.isEquivalence
d_isEquivalence_1844 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1844 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe d_isSemiring_1782 (coe v0)))))))
-- Algebra.Structures.IsIdempotentSemiring._.isNearSemiring
d_isNearSemiring_1846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> T_IsNearSemiring_1066
d_isNearSemiring_1846 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1846 v8
du_isNearSemiring_1846 ::
  T_IsIdempotentSemiring_1768 -> T_IsNearSemiring_1066
du_isNearSemiring_1846 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe
         du_isNearSemiring_1222 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.isPartialEquivalence
d_isPartialEquivalence_1848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1848 v8
du_isPartialEquivalence_1848 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1848 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe d_isEquivalence_152 (coe v6))))))))
-- Algebra.Structures.IsIdempotentSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1850 ::
  T_IsIdempotentSemiring_1768 ->
  T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1850 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1432
      (coe d_isSemiring_1782 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1852 v8
du_isSemiringWithoutOne_1852 ::
  T_IsIdempotentSemiring_1768 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_1852 v0
  = coe du_isSemiringWithoutOne_1508 (coe d_isSemiring_1782 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.refl
d_refl_1854 :: T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_refl_1854 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1782 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.reflexive
d_reflexive_1856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1856 v8
du_reflexive_1856 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1856 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe d_isEquivalence_152 (coe v6)) v7))))))
-- Algebra.Structures.IsIdempotentSemiring._.setoid
d_setoid_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1858 v8
du_setoid_1858 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1858 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1336 (coe v2) in
          coe
            (let v4 = d_isMonoid_664 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe (coe du_setoid_168 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsIdempotentSemiring._.sym
d_sym_1860 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1860 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1782 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.trans
d_trans_1862 ::
  T_IsIdempotentSemiring_1768 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe d_isSemiring_1782 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.zero
d_zero_1864 ::
  T_IsIdempotentSemiring_1768 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1864 v0 = coe d_zero_1434 (coe d_isSemiring_1782 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.zeroʳ
d_zero'691'_1866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_zero'691'_1866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1866 v8
du_zero'691'_1866 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_zero'691'_1866 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe du_zero'691'_1220 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.zeroˡ
d_zero'737'_1868 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
d_zero'737'_1868 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1868 v8
du_zero'737'_1868 ::
  T_IsIdempotentSemiring_1768 -> AgdaAny -> AgdaAny
du_zero'737'_1868 v0
  = let v1 = d_isSemiring_1782 (coe v0) in
    coe
      (coe du_zero'737'_1218 (coe du_isSemiringWithoutOne_1508 (coe v1)))
-- Algebra.Structures.IsKleeneAlgebra
d_IsKleeneAlgebra_1880 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsKleeneAlgebra_1880
  = C_IsKleeneAlgebra'46'constructor_58339 T_IsIdempotentSemiring_1768
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                           MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_1898 ::
  T_IsKleeneAlgebra_1880 -> T_IsIdempotentSemiring_1768
d_isIdempotentSemiring_1898 v0
  = case coe v0 of
      C_IsKleeneAlgebra'46'constructor_58339 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra.starExpansive
d_starExpansive_1900 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_1900 v0
  = case coe v0 of
      C_IsKleeneAlgebra'46'constructor_58339 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra.starDestructive
d_starDestructive_1902 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_1902 v0
  = case coe v0 of
      C_IsKleeneAlgebra'46'constructor_58339 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra._.*-assoc
d_'42''45'assoc_1906 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1906 v0
  = coe
      d_'42''45'assoc_1340
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.*-cong
d_'42''45'cong_1908 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1908 v0
  = coe
      d_'42''45'cong_1338
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congʳ
d_'8729''45'cong'691'_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1910 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1910 v9
du_'8729''45'cong'691'_1910 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1910 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1398 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congˡ
d_'8729''45'cong'737'_1912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1912 v9
du_'8729''45'cong'737'_1912 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1912 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1398 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsKleeneAlgebra._.*-identity
d_'42''45'identity_1914 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1914 v0
  = coe
      d_'42''45'identity_1342
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.identityʳ
d_identity'691'_1916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_identity'691'_1916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1916 v9
du_identity'691'_1916 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_identity'691'_1916 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_identity'691'_646 (coe du_'42''45'isMonoid_1398 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.identityˡ
d_identity'737'_1918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_identity'737'_1918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1918 v9
du_identity'737'_1918 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_identity'737'_1918 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_identity'737'_644 (coe du_'42''45'isMonoid_1398 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isMagma
d_'42''45'isMagma_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsMagma_144
d_'42''45'isMagma_1920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_1920 v9
du_'42''45'isMagma_1920 :: T_IsKleeneAlgebra_1880 -> T_IsMagma_144
du_'42''45'isMagma_1920 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_'42''45'isMagma_1394
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isMonoid
d_'42''45'isMonoid_1922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsMonoid_604
d_'42''45'isMonoid_1922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_1922 v9
du_'42''45'isMonoid_1922 ::
  T_IsKleeneAlgebra_1880 -> T_IsMonoid_604
du_'42''45'isMonoid_1922 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoid_1398
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isSemigroup
d_'42''45'isSemigroup_1924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsSemigroup_440
d_'42''45'isSemigroup_1924 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_1924 v9
du_'42''45'isSemigroup_1924 ::
  T_IsKleeneAlgebra_1880 -> T_IsSemigroup_440
du_'42''45'isSemigroup_1924 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_'42''45'isSemigroup_1396
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.assoc
d_assoc_1926 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1926 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))))
-- Algebra.Structures.IsKleeneAlgebra._.comm
d_comm_1928 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1928 v0
  = coe
      d_comm_666
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-cong
d_'8729''45'cong_1930 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1930 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congʳ
d_'8729''45'cong'691'_1932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_1932 v9
du_'8729''45'cong'691'_1932 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1932 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congˡ
d_'8729''45'cong'737'_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_1934 v9
du_'8729''45'cong'737'_1934 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1934 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsKleeneAlgebra._.+-idem
d_'43''45'idem_1936 :: T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_'43''45'idem_1936 v0
  = coe
      d_'43''45'idem_1784 (coe d_isIdempotentSemiring_1898 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra._.identity
d_identity_1938 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1938 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))))
-- Algebra.Structures.IsKleeneAlgebra._.identityʳ
d_identity'691'_1940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_identity'691'_1940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_1940 v9
du_identity'691'_1940 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_identity'691'_1940 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_identity'691'_646 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.identityˡ
d_identity'737'_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_identity'737'_1942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_1942 v9
du_identity'737'_1942 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_identity'737'_1942 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_identity'737'_644 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.isCommutativeMagma
d_isCommutativeMagma_1944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_1944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_1944 v9
du_isCommutativeMagma_1944 ::
  T_IsKleeneAlgebra_1880 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_1944 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_554
                  (coe du_isCommutativeSemigroup_704 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1946 ::
  T_IsKleeneAlgebra_1880 -> T_IsCommutativeMonoid_654
d_'43''45'isCommutativeMonoid_1946 v0
  = coe
      d_'43''45'isCommutativeMonoid_1336
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.isCommutativeSemigroup
d_isCommutativeSemigroup_1948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_1948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_1948 v9
du_isCommutativeSemigroup_1948 ::
  T_IsKleeneAlgebra_1880 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_1948 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_704
               (coe d_'43''45'isCommutativeMonoid_1336 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.isMagma
d_isMagma_1950 :: T_IsKleeneAlgebra_1880 -> T_IsMagma_144
d_isMagma_1950 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_664
            (coe
               d_'43''45'isCommutativeMonoid_1336
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1432
                  (coe
                     d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))))
-- Algebra.Structures.IsKleeneAlgebra._.isMonoid
d_isMonoid_1952 :: T_IsKleeneAlgebra_1880 -> T_IsMonoid_604
d_isMonoid_1952 v0
  = coe
      d_isMonoid_664
      (coe
         d_'43''45'isCommutativeMonoid_1336
         (coe
            d_isSemiringWithoutAnnihilatingZero_1432
            (coe
               d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))
-- Algebra.Structures.IsKleeneAlgebra._.isSemigroup
d_isSemigroup_1954 :: T_IsKleeneAlgebra_1880 -> T_IsSemigroup_440
d_isSemigroup_1954 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_664
         (coe
            d_'43''45'isCommutativeMonoid_1336
            (coe
               d_isSemiringWithoutAnnihilatingZero_1432
               (coe
                  d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))))
-- Algebra.Structures.IsKleeneAlgebra._.isUnitalMagma
d_isUnitalMagma_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsUnitalMagma_560
d_isUnitalMagma_1956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_1956 v9
du_isUnitalMagma_1956 ::
  T_IsKleeneAlgebra_1880 -> T_IsUnitalMagma_560
du_isUnitalMagma_1956 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe (coe du_isUnitalMagma_648 (coe d_isMonoid_664 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.distrib
d_distrib_1958 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1958 v0
  = coe
      d_distrib_1344
      (coe
         d_isSemiringWithoutAnnihilatingZero_1432
         (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.distribʳ
d_distrib'691'_1960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_1960 v9
du_distrib'691'_1960 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1960 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_distrib'691'_1348
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.distribˡ
d_distrib'737'_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_1962 v9
du_distrib'737'_1962 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1962 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_distrib'737'_1346
            (coe d_isSemiringWithoutAnnihilatingZero_1432 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.isEquivalence
d_isEquivalence_1964 ::
  T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_1964 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_664
               (coe
                  d_'43''45'isCommutativeMonoid_1336
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1432
                     (coe
                        d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))))))))
-- Algebra.Structures.IsKleeneAlgebra._.isNearSemiring
d_isNearSemiring_1966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsNearSemiring_1066
d_isNearSemiring_1966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_1966 v9
du_isNearSemiring_1966 ::
  T_IsKleeneAlgebra_1880 -> T_IsNearSemiring_1066
du_isNearSemiring_1966 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_isNearSemiring_1222
            (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.isPartialEquivalence
d_isPartialEquivalence_1968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_1968 v9
du_isPartialEquivalence_1968 ::
  T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1968 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe d_isEquivalence_152 (coe v7)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiring
d_isSemiring_1970 :: T_IsKleeneAlgebra_1880 -> T_IsSemiring_1418
d_isSemiring_1970 v0
  = coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1972 ::
  T_IsKleeneAlgebra_1880 -> T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_1972 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1432
      (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiringWithoutOne
d_isSemiringWithoutOne_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_1880 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_1974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_1974 v9
du_isSemiringWithoutOne_1974 ::
  T_IsKleeneAlgebra_1880 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_1974 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (coe du_isSemiringWithoutOne_1508 (coe d_isSemiring_1782 (coe v1)))
-- Algebra.Structures.IsKleeneAlgebra._.refl
d_refl_1976 :: T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_refl_1976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.reflexive
d_reflexive_1978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1978 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_1978 v9
du_reflexive_1978 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1978 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                             (coe d_isEquivalence_152 (coe v7)) v8)))))))
-- Algebra.Structures.IsKleeneAlgebra._.setoid
d_setoid_1980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_1980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_1980 v9
du_setoid_1980 ::
  T_IsKleeneAlgebra_1880 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_1980 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1432 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1336 (coe v3) in
             coe
               (let v5 = d_isMonoid_664 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe (coe du_setoid_168 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsKleeneAlgebra._.sym
d_sym_1982 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1982 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.trans
d_trans_1984 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1984 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_664
                  (coe
                     d_'43''45'isCommutativeMonoid_1336
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1432
                        (coe
                           d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.zero
d_zero_1986 ::
  T_IsKleeneAlgebra_1880 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1986 v0
  = coe
      d_zero_1434
      (coe d_isSemiring_1782 (coe d_isIdempotentSemiring_1898 (coe v0)))
-- Algebra.Structures.IsKleeneAlgebra._.zeroʳ
d_zero'691'_1988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_zero'691'_1988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_1988 v9
du_zero'691'_1988 :: T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_zero'691'_1988 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_zero'691'_1220 (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.zeroˡ
d_zero'737'_1990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_zero'737'_1990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_1990 v9
du_zero'737'_1990 :: T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_zero'737'_1990 v0
  = let v1 = d_isIdempotentSemiring_1898 (coe v0) in
    coe
      (let v2 = d_isSemiring_1782 (coe v1) in
       coe
         (coe
            du_zero'737'_1218 (coe du_isSemiringWithoutOne_1508 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_1992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_starExpansive'737'_1992 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starExpansive'737'_1992 v9
du_starExpansive'737'_1992 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_starExpansive'737'_1992 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_starExpansive_1900 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_1994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
d_starExpansive'691'_1994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starExpansive'691'_1994 v9
du_starExpansive'691'_1994 ::
  T_IsKleeneAlgebra_1880 -> AgdaAny -> AgdaAny
du_starExpansive'691'_1994 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_starExpansive_1900 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_1996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_starDestructive'737'_1996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starDestructive'737'_1996 v9
du_starDestructive'737'_1996 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_starDestructive'737'_1996 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_starDestructive_1902 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_1998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_starDestructive'691'_1998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starDestructive'691'_1998 v9
du_starDestructive'691'_1998 ::
  T_IsKleeneAlgebra_1880 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_starDestructive'691'_1998 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_starDestructive_1902 (coe v0))
-- Algebra.Structures.IsQuasiring
d_IsQuasiring_2008 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsQuasiring_2008
  = C_IsQuasiring'46'constructor_64211 T_IsMonoid_604
                                       (AgdaAny ->
                                        AgdaAny ->
                                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2030 :: T_IsQuasiring_2008 -> T_IsMonoid_604
d_'43''45'isMonoid_2030 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-cong
d_'42''45'cong_2032 ::
  T_IsQuasiring_2008 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2032 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-assoc
d_'42''45'assoc_2034 ::
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2034 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-identity
d_'42''45'identity_2036 ::
  T_IsQuasiring_2008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2036 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.distrib
d_distrib_2038 ::
  T_IsQuasiring_2008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2038 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.zero
d_zero_2040 ::
  T_IsQuasiring_2008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2040 v0
  = case coe v0 of
      C_IsQuasiring'46'constructor_64211 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring._.assoc
d_assoc_2044 ::
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2044 v0
  = coe
      d_assoc_450
      (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))
-- Algebra.Structures.IsQuasiring._.∙-cong
d_'8729''45'cong_2046 ::
  T_IsQuasiring_2008 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2046 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0))))
-- Algebra.Structures.IsQuasiring._.∙-congʳ
d_'8729''45'cong'691'_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2048 v8
du_'8729''45'cong'691'_2048 ::
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2048 v0
  = let v1 = d_'43''45'isMonoid_2030 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsQuasiring._.∙-congˡ
d_'8729''45'cong'737'_2050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2050 v8
du_'8729''45'cong'737'_2050 ::
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2050 v0
  = let v1 = d_'43''45'isMonoid_2030 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsQuasiring._.identity
d_identity_2052 ::
  T_IsQuasiring_2008 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2052 v0
  = coe d_identity_616 (coe d_'43''45'isMonoid_2030 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityʳ
d_identity'691'_2054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'691'_2054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2054 v8
du_identity'691'_2054 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'691'_2054 v0
  = coe du_identity'691'_646 (coe d_'43''45'isMonoid_2030 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityˡ
d_identity'737'_2056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'737'_2056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2056 v8
du_identity'737'_2056 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'737'_2056 v0
  = coe du_identity'737'_644 (coe d_'43''45'isMonoid_2030 (coe v0))
-- Algebra.Structures.IsQuasiring._.isMagma
d_isMagma_2058 :: T_IsQuasiring_2008 -> T_IsMagma_144
d_isMagma_2058 v0
  = coe
      d_isMagma_448
      (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))
-- Algebra.Structures.IsQuasiring._.isSemigroup
d_isSemigroup_2060 :: T_IsQuasiring_2008 -> T_IsSemigroup_440
d_isSemigroup_2060 v0
  = coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0))
-- Algebra.Structures.IsQuasiring._.isUnitalMagma
d_isUnitalMagma_2062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> T_IsUnitalMagma_560
d_isUnitalMagma_2062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2062 v8
du_isUnitalMagma_2062 :: T_IsQuasiring_2008 -> T_IsUnitalMagma_560
du_isUnitalMagma_2062 v0
  = coe du_isUnitalMagma_648 (coe d_'43''45'isMonoid_2030 (coe v0))
-- Algebra.Structures.IsQuasiring._.isEquivalence
d_isEquivalence_2064 ::
  T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2064 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0))))
-- Algebra.Structures.IsQuasiring._.isPartialEquivalence
d_isPartialEquivalence_2066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2066 v8
du_isPartialEquivalence_2066 ::
  T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2066 v0
  = let v1 = d_'43''45'isMonoid_2030 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsQuasiring._.refl
d_refl_2068 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_refl_2068 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))))
-- Algebra.Structures.IsQuasiring._.reflexive
d_reflexive_2070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2070 v8
du_reflexive_2070 ::
  T_IsQuasiring_2008 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2070 v0
  = let v1 = d_'43''45'isMonoid_2030 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe
         (let v3 = d_isMagma_448 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsQuasiring._.setoid
d_setoid_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2072 v8
du_setoid_2072 ::
  T_IsQuasiring_2008 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2072 v0
  = let v1 = d_'43''45'isMonoid_2030 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsQuasiring._.sym
d_sym_2074 ::
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2074 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))))
-- Algebra.Structures.IsQuasiring._.trans
d_trans_2076 ::
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2076 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))))
-- Algebra.Structures.IsQuasiring.distribˡ
d_distrib'737'_2078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2078 v8
du_distrib'737'_2078 ::
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2078 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2038 (coe v0))
-- Algebra.Structures.IsQuasiring.distribʳ
d_distrib'691'_2080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2080 v8
du_distrib'691'_2080 ::
  T_IsQuasiring_2008 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2080 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2038 (coe v0))
-- Algebra.Structures.IsQuasiring.zeroˡ
d_zero'737'_2082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_zero'737'_2082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_2082 v8
du_zero'737'_2082 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_zero'737'_2082 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_2040 (coe v0))
-- Algebra.Structures.IsQuasiring.zeroʳ
d_zero'691'_2084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_zero'691'_2084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_2084 v8
du_zero'691'_2084 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_zero'691'_2084 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_2040 (coe v0))
-- Algebra.Structures.IsQuasiring.identityˡ
d_identity'737'_2086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'737'_2086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2086 v8
du_identity'737'_2086 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'737'_2086 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'42''45'identity_2036 (coe v0))
-- Algebra.Structures.IsQuasiring.identityʳ
d_identity'691'_2088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'691'_2088 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2088 v8
du_identity'691'_2088 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'691'_2088 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'42''45'identity_2036 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isMagma
d_'42''45'isMagma_2090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> T_IsMagma_144
d_'42''45'isMagma_2090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_2090 v8
du_'42''45'isMagma_2090 :: T_IsQuasiring_2008 -> T_IsMagma_144
du_'42''45'isMagma_2090 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe d_isSemigroup_614 (coe d_'43''45'isMonoid_2030 (coe v0)))))
      (coe d_'42''45'cong_2032 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> T_IsSemigroup_440
d_'42''45'isSemigroup_2092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_2092 v8
du_'42''45'isSemigroup_2092 ::
  T_IsQuasiring_2008 -> T_IsSemigroup_440
du_'42''45'isSemigroup_2092 v0
  = coe
      C_IsSemigroup'46'constructor_9319
      (coe du_'42''45'isMagma_2090 (coe v0))
      (coe d_'42''45'assoc_2034 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> T_IsMonoid_604
d_'42''45'isMonoid_2094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_2094 v8
du_'42''45'isMonoid_2094 :: T_IsQuasiring_2008 -> T_IsMonoid_604
du_'42''45'isMonoid_2094 v0
  = coe
      C_IsMonoid'46'constructor_13575
      (coe du_'42''45'isSemigroup_2092 (coe v0))
      (coe d_'42''45'identity_2036 (coe v0))
-- Algebra.Structures.IsQuasiring._.∙-congʳ
d_'8729''45'cong'691'_2098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2098 v8
du_'8729''45'cong'691'_2098 ::
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2098 v0
  = let v1 = coe du_'42''45'isMonoid_2094 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsQuasiring._.∙-congˡ
d_'8729''45'cong'737'_2100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2100 v8
du_'8729''45'cong'737'_2100 ::
  T_IsQuasiring_2008 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2100 v0
  = let v1 = coe du_'42''45'isMonoid_2094 (coe v0) in
    coe
      (let v2 = d_isSemigroup_614 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsQuasiring._.identityʳ
d_identity'691'_2102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'691'_2102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2102 v8
du_identity'691'_2102 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'691'_2102 v0
  = coe du_identity'691'_646 (coe du_'42''45'isMonoid_2094 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityˡ
d_identity'737'_2104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
d_identity'737'_2104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2104 v8
du_identity'737'_2104 :: T_IsQuasiring_2008 -> AgdaAny -> AgdaAny
du_identity'737'_2104 v0
  = coe du_identity'737'_644 (coe du_'42''45'isMonoid_2094 (coe v0))
-- Algebra.Structures.IsRingWithoutOne
d_IsRingWithoutOne_2114 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsRingWithoutOne_2114
  = C_IsRingWithoutOne'46'constructor_70043 T_IsAbelianGroup_980
                                            (AgdaAny ->
                                             AgdaAny ->
                                             AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                            (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                            MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2132 ::
  T_IsRingWithoutOne_2114 -> T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2132 v0
  = case coe v0 of
      C_IsRingWithoutOne'46'constructor_70043 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.*-cong
d_'42''45'cong_2134 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2134 v0
  = case coe v0 of
      C_IsRingWithoutOne'46'constructor_70043 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2136 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2136 v0
  = case coe v0 of
      C_IsRingWithoutOne'46'constructor_70043 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.distrib
d_distrib_2138 ::
  T_IsRingWithoutOne_2114 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2138 v0
  = case coe v0 of
      C_IsRingWithoutOne'46'constructor_70043 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne._._-_
d__'45'__2142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2142 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8
  = du__'45'__2142 v4 v6
du__'45'__2142 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2142 v0 v1 = coe du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.IsRingWithoutOne._.assoc
d_assoc_2144 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2144 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))
-- Algebra.Structures.IsRingWithoutOne._.comm
d_comm_2146 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2146 v0
  = coe d_comm_994 (coe d_'43''45'isAbelianGroup_2132 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.∙-cong
d_'8729''45'cong_2148 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2148 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0))))))
-- Algebra.Structures.IsRingWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_2150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2150 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2150 v8
du_'8729''45'cong'691'_2150 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2150 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsRingWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_2152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2152 v8
du_'8729''45'cong'737'_2152 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2152 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsRingWithoutOne._.identity
d_identity_2154 ::
  T_IsRingWithoutOne_2114 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2154 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0))))
-- Algebra.Structures.IsRingWithoutOne._.identityʳ
d_identity'691'_2156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_identity'691'_2156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2156 v8
du_identity'691'_2156 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_identity'691'_2156 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.identityˡ
d_identity'737'_2158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_identity'737'_2158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2158 v8
du_identity'737'_2158 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_identity'737'_2158 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_identity'737'_644 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_2160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_2160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_2160 v8
du_isCommutativeMagma_2160 ::
  T_IsRingWithoutOne_2114 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_2160 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeMonoid_1052 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_isCommutativeSemigroup_704 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeMonoid
d_isCommutativeMonoid_2162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMonoid_2162 v8
du_isCommutativeMonoid_2162 ::
  T_IsRingWithoutOne_2114 -> T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2162 v0
  = coe
      du_isCommutativeMonoid_1052
      (coe d_'43''45'isAbelianGroup_2132 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_2164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_2164 v8
du_isCommutativeSemigroup_2164 ::
  T_IsRingWithoutOne_2114 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2164 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_704
         (coe du_isCommutativeMonoid_1052 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isGroup
d_isGroup_2166 :: T_IsRingWithoutOne_2114 -> T_IsGroup_892
d_isGroup_2166 v0
  = coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.isInvertibleMagma
d_isInvertibleMagma_2168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_2168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isInvertibleMagma_2168 v8
du_isInvertibleMagma_2168 ::
  T_IsRingWithoutOne_2114 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_2168 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe (coe du_isInvertibleMagma_970 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_2170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isInvertibleUnitalMagma_2170 v8
du_isInvertibleUnitalMagma_2170 ::
  T_IsRingWithoutOne_2114 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_2170 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (coe du_isInvertibleUnitalMagma_972 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isMagma
d_isMagma_2172 :: T_IsRingWithoutOne_2114 -> T_IsMagma_144
d_isMagma_2172 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))
-- Algebra.Structures.IsRingWithoutOne._.isMonoid
d_isMonoid_2174 :: T_IsRingWithoutOne_2114 -> T_IsMonoid_604
d_isMonoid_2174 v0
  = coe
      d_isMonoid_906
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.isSemigroup
d_isSemigroup_2176 :: T_IsRingWithoutOne_2114 -> T_IsSemigroup_440
d_isSemigroup_2176 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0))))
-- Algebra.Structures.IsRingWithoutOne._.isUnitalMagma
d_isUnitalMagma_2178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsUnitalMagma_560
d_isUnitalMagma_2178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2178 v8
du_isUnitalMagma_2178 ::
  T_IsRingWithoutOne_2114 -> T_IsUnitalMagma_560
du_isUnitalMagma_2178 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.⁻¹-cong
d_'8315''185''45'cong_2180 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2180 v0
  = coe
      d_'8315''185''45'cong_910
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.inverse
d_inverse_2182 ::
  T_IsRingWithoutOne_2114 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2182 v0
  = coe
      d_inverse_908
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.inverseʳ
d_inverse'691'_2184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_inverse'691'_2184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_inverse'691'_2184 v8
du_inverse'691'_2184 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_inverse'691'_2184 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe (coe du_inverse'691'_956 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.inverseˡ
d_inverse'737'_2186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_inverse'737'_2186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_inverse'737'_2186 v8
du_inverse'737'_2186 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_inverse'737'_2186 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe (coe du_inverse'737'_954 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isEquivalence
d_isEquivalence_2188 ::
  T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2188 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0))))))
-- Algebra.Structures.IsRingWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_2190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2190 v8
du_isPartialEquivalence_2190 ::
  T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2190 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe d_isEquivalence_152 (coe v5)))))))
-- Algebra.Structures.IsRingWithoutOne._.refl
d_refl_2192 :: T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_refl_2192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.reflexive
d_reflexive_2194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2194 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2194 v8
du_reflexive_2194 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2194 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe d_isEquivalence_152 (coe v5)) v6)))))
-- Algebra.Structures.IsRingWithoutOne._.setoid
d_setoid_2196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2196 v8
du_setoid_2196 ::
  T_IsRingWithoutOne_2114 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2196 v0
  = let v1 = d_'43''45'isAbelianGroup_2132 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsRingWithoutOne._.sym
d_sym_2198 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.trans
d_trans_2200 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2202 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_unique'691''45''8315''185'_2202 v4 v6 v7 v8
du_unique'691''45''8315''185'_2202 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2202 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2132 (coe v3) in
    coe
      (coe
         du_unique'691''45''8315''185'_968 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_992 (coe v4)))
-- Algebra.Structures.IsRingWithoutOne._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2204 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_unique'737''45''8315''185'_2204 v4 v6 v7 v8
du_unique'737''45''8315''185'_2204 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2204 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2132 (coe v3) in
    coe
      (coe
         du_unique'737''45''8315''185'_962 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_992 (coe v4)))
-- Algebra.Structures.IsRingWithoutOne.distribˡ
d_distrib'737'_2206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2206 v8
du_distrib'737'_2206 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2206 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2138 (coe v0))
-- Algebra.Structures.IsRingWithoutOne.distribʳ
d_distrib'691'_2208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2208 v8
du_distrib'691'_2208 ::
  T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2208 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2138 (coe v0))
-- Algebra.Structures.IsRingWithoutOne.zeroˡ
d_zero'737'_2210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_zero'737'_2210 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero'737'_2210 v4 v5 v6 v7 v8
du_zero'737'_2210 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_zero'737'_2210 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_594
      (let v5
             = d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)) in
       coe
         (let v6 = d_isMonoid_906 (coe v5) in
          coe
            (let v7 = d_isSemigroup_614 (coe v6) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v7))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         d_'8729''45'cong_154
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)))))))
      (coe d_'42''45'cong_2134 (coe v4))
      (coe
         d_assoc_450
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4))))))
      (coe du_distrib'691'_2208 (coe v4))
      (let v5
             = d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)) in
       coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v5))))
      (coe
         du_inverse'691'_956
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4))))
-- Algebra.Structures.IsRingWithoutOne.zeroʳ
d_zero'691'_2212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
d_zero'691'_2212 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero'691'_2212 v4 v5 v6 v7 v8
du_zero'691'_2212 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> AgdaAny -> AgdaAny
du_zero'691'_2212 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_606
      (let v5
             = d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)) in
       coe
         (let v6 = d_isMonoid_906 (coe v5) in
          coe
            (let v7 = d_isSemigroup_614 (coe v6) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v7))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         d_'8729''45'cong_154
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)))))))
      (coe d_'42''45'cong_2134 (coe v4))
      (coe
         d_assoc_450
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4))))))
      (coe du_distrib'737'_2206 (coe v4))
      (let v5
             = d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4)) in
       coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v5))))
      (coe
         du_inverse'691'_956
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v4))))
-- Algebra.Structures.IsRingWithoutOne.zero
d_zero_2214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2214 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero_2214 v4 v5 v6 v7 v8
du_zero_2214 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2214 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_2210 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_2212 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.IsRingWithoutOne.*-isMagma
d_'42''45'isMagma_2216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsMagma_144
d_'42''45'isMagma_2216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_2216 v8
du_'42''45'isMagma_2216 :: T_IsRingWithoutOne_2114 -> T_IsMagma_144
du_'42''45'isMagma_2216 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2132 (coe v0)))))))
      (coe d_'42''45'cong_2134 (coe v0))
-- Algebra.Structures.IsRingWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_2218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2114 -> T_IsSemigroup_440
d_'42''45'isSemigroup_2218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_2218 v8
du_'42''45'isSemigroup_2218 ::
  T_IsRingWithoutOne_2114 -> T_IsSemigroup_440
du_'42''45'isSemigroup_2218 v0
  = coe
      C_IsSemigroup'46'constructor_9319
      (coe du_'42''45'isMagma_2216 (coe v0))
      (coe d_'42''45'assoc_2136 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_2222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2222 v8
du_'8729''45'cong'691'_2222 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2222 v0
  = let v1 = coe du_'42''45'isSemigroup_2218 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_2224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2224 v8
du_'8729''45'cong'737'_2224 ::
  T_IsRingWithoutOne_2114 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2224 v0
  = let v1 = coe du_'42''45'isSemigroup_2218 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing
d_IsNonAssociativeRing_2236 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsNonAssociativeRing_2236
  = C_IsNonAssociativeRing'46'constructor_77623 T_IsAbelianGroup_980
                                                (AgdaAny ->
                                                 AgdaAny ->
                                                 AgdaAny ->
                                                 AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                                MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2258 ::
  T_IsNonAssociativeRing_2236 -> T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2258 v0
  = case coe v0 of
      C_IsNonAssociativeRing'46'constructor_77623 v1 v2 v3 v4 v5
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.*-cong
d_'42''45'cong_2260 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2260 v0
  = case coe v0 of
      C_IsNonAssociativeRing'46'constructor_77623 v1 v2 v3 v4 v5
        -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.*-identity
d_'42''45'identity_2262 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2262 v0
  = case coe v0 of
      C_IsNonAssociativeRing'46'constructor_77623 v1 v2 v3 v4 v5
        -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.distrib
d_distrib_2264 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2264 v0
  = case coe v0 of
      C_IsNonAssociativeRing'46'constructor_77623 v1 v2 v3 v4 v5
        -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.zero
d_zero_2266 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2266 v0
  = case coe v0 of
      C_IsNonAssociativeRing'46'constructor_77623 v1 v2 v3 v4 v5
        -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing._._-_
d__'45'__2270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2270 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__2270 v4 v6
du__'45'__2270 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2270 v0 v1 = coe du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.IsNonAssociativeRing._.assoc
d_assoc_2272 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2272 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))
-- Algebra.Structures.IsNonAssociativeRing._.comm
d_comm_2274 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2274 v0
  = coe d_comm_994 (coe d_'43''45'isAbelianGroup_2258 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.∙-cong
d_'8729''45'cong_2276 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2276 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0))))))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congʳ
d_'8729''45'cong'691'_2278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2278 v9
du_'8729''45'cong'691'_2278 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2278 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congˡ
d_'8729''45'cong'737'_2280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2280 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2280 v9
du_'8729''45'cong'737'_2280 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2280 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsNonAssociativeRing._.identity
d_identity_2282 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2282 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0))))
-- Algebra.Structures.IsNonAssociativeRing._.identityʳ
d_identity'691'_2284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_identity'691'_2284 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2284 v9
du_identity'691'_2284 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_identity'691'_2284 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.identityˡ
d_identity'737'_2286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_identity'737'_2286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2286 v9
du_identity'737'_2286 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_identity'737'_2286 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_identity'737'_644 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeMagma
d_isCommutativeMagma_2288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_2288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2288 v9
du_isCommutativeMagma_2288 ::
  T_IsNonAssociativeRing_2236 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_2288 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeMonoid_1052 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_isCommutativeSemigroup_704 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_2290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_2290 v9
du_isCommutativeMonoid_2290 ::
  T_IsNonAssociativeRing_2236 -> T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2290 v0
  = coe
      du_isCommutativeMonoid_1052
      (coe d_'43''45'isAbelianGroup_2258 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2292 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2292 v9
du_isCommutativeSemigroup_2292 ::
  T_IsNonAssociativeRing_2236 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2292 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_704
         (coe du_isCommutativeMonoid_1052 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isGroup
d_isGroup_2294 :: T_IsNonAssociativeRing_2236 -> T_IsGroup_892
d_isGroup_2294 v0
  = coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.isInvertibleMagma
d_isInvertibleMagma_2296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_2296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_2296 v9
du_isInvertibleMagma_2296 ::
  T_IsNonAssociativeRing_2236 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_2296 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe (coe du_isInvertibleMagma_970 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_2298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_2298 v9
du_isInvertibleUnitalMagma_2298 ::
  T_IsNonAssociativeRing_2236 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_2298 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (coe du_isInvertibleUnitalMagma_972 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isMagma
d_isMagma_2300 :: T_IsNonAssociativeRing_2236 -> T_IsMagma_144
d_isMagma_2300 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))
-- Algebra.Structures.IsNonAssociativeRing._.isMonoid
d_isMonoid_2302 :: T_IsNonAssociativeRing_2236 -> T_IsMonoid_604
d_isMonoid_2302 v0
  = coe
      d_isMonoid_906
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.isSemigroup
d_isSemigroup_2304 ::
  T_IsNonAssociativeRing_2236 -> T_IsSemigroup_440
d_isSemigroup_2304 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0))))
-- Algebra.Structures.IsNonAssociativeRing._.isUnitalMagma
d_isUnitalMagma_2306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsUnitalMagma_560
d_isUnitalMagma_2306 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2306 v9
du_isUnitalMagma_2306 ::
  T_IsNonAssociativeRing_2236 -> T_IsUnitalMagma_560
du_isUnitalMagma_2306 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe (coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.⁻¹-cong
d_'8315''185''45'cong_2308 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2308 v0
  = coe
      d_'8315''185''45'cong_910
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.inverse
d_inverse_2310 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2310 v0
  = coe
      d_inverse_908
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.inverseʳ
d_inverse'691'_2312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_inverse'691'_2312 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_2312 v9
du_inverse'691'_2312 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_inverse'691'_2312 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe (coe du_inverse'691'_956 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.inverseˡ
d_inverse'737'_2314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_inverse'737'_2314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_2314 v9
du_inverse'737'_2314 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_inverse'737'_2314 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe (coe du_inverse'737'_954 (coe d_isGroup_992 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isEquivalence
d_isEquivalence_2316 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2316 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0))))))
-- Algebra.Structures.IsNonAssociativeRing._.isPartialEquivalence
d_isPartialEquivalence_2318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2318 v9
du_isPartialEquivalence_2318 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2318 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                     (coe d_isEquivalence_152 (coe v5)))))))
-- Algebra.Structures.IsNonAssociativeRing._.refl
d_refl_2320 :: T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_refl_2320 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.reflexive
d_reflexive_2322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2322 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2322 v9
du_reflexive_2322 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2322 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe
               (let v5 = d_isMagma_448 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                       (coe d_isEquivalence_152 (coe v5)) v6)))))
-- Algebra.Structures.IsNonAssociativeRing._.setoid
d_setoid_2324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2324 v9
du_setoid_2324 ::
  T_IsNonAssociativeRing_2236 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2324 v0
  = let v1 = d_'43''45'isAbelianGroup_2258 (coe v0) in
    coe
      (let v2 = d_isGroup_992 (coe v1) in
       coe
         (let v3 = d_isMonoid_906 (coe v2) in
          coe
            (let v4 = d_isSemigroup_614 (coe v3) in
             coe (coe du_setoid_168 (coe d_isMagma_448 (coe v4))))))
-- Algebra.Structures.IsNonAssociativeRing._.sym
d_sym_2326 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.trans
d_trans_2328 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2330 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_2330 v4 v6 v7 v9
du_unique'691''45''8315''185'_2330 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2330 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2258 (coe v3) in
    coe
      (coe
         du_unique'691''45''8315''185'_968 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_992 (coe v4)))
-- Algebra.Structures.IsNonAssociativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2332 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_2332 v4 v6 v7 v9
du_unique'737''45''8315''185'_2332 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2332 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2258 (coe v3) in
    coe
      (coe
         du_unique'737''45''8315''185'_962 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_992 (coe v4)))
-- Algebra.Structures.IsNonAssociativeRing.zeroˡ
d_zero'737'_2334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_zero'737'_2334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_2334 v9
du_zero'737'_2334 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_zero'737'_2334 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_2266 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.zeroʳ
d_zero'691'_2336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_zero'691'_2336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_2336 v9
du_zero'691'_2336 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_zero'691'_2336 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_2266 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.distribˡ
d_distrib'737'_2338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2338 v9
du_distrib'737'_2338 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2338 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2264 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.distribʳ
d_distrib'691'_2340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2340 v9
du_distrib'691'_2340 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2340 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2264 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsMagma_144
d_'42''45'isMagma_2342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2342 v9
du_'42''45'isMagma_2342 ::
  T_IsNonAssociativeRing_2236 -> T_IsMagma_144
du_'42''45'isMagma_2342 v0
  = coe
      C_IsMagma'46'constructor_785
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2258 (coe v0)))))))
      (coe d_'42''45'cong_2260 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_'42''45'identity'737'_2344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'identity'737'_2344 v9
du_'42''45'identity'737'_2344 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_'42''45'identity'737'_2344 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'42''45'identity_2262 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
d_'42''45'identity'691'_2346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'identity'691'_2346 v9
du_'42''45'identity'691'_2346 ::
  T_IsNonAssociativeRing_2236 -> AgdaAny -> AgdaAny
du_'42''45'identity'691'_2346 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'42''45'identity_2262 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2236 -> T_IsUnitalMagma_560
d_'42''45'isUnitalMagma_2348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isUnitalMagma_2348 v9
du_'42''45'isUnitalMagma_2348 ::
  T_IsNonAssociativeRing_2236 -> T_IsUnitalMagma_560
du_'42''45'isUnitalMagma_2348 v0
  = coe
      C_IsUnitalMagma'46'constructor_12021
      (coe du_'42''45'isMagma_2342 (coe v0))
      (coe d_'42''45'identity_2262 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congʳ
d_'8729''45'cong'691'_2352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2352 v9
du_'8729''45'cong'691'_2352 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2352 v0
  = let v1 = coe du_'42''45'isUnitalMagma_2348 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_570 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congˡ
d_'8729''45'cong'737'_2354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2354 v9
du_'8729''45'cong'737'_2354 ::
  T_IsNonAssociativeRing_2236 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2354 v0
  = let v1 = coe du_'42''45'isUnitalMagma_2348 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_570 (coe v1)))
-- Algebra.Structures.IsNearring
d_IsNearring_2366 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsNearring_2366
  = C_IsNearring'46'constructor_84765 T_IsQuasiring_2008
                                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsNearring.isQuasiring
d_isQuasiring_2384 :: T_IsNearring_2366 -> T_IsQuasiring_2008
d_isQuasiring_2384 v0
  = case coe v0 of
      C_IsNearring'46'constructor_84765 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring.+-inverse
d_'43''45'inverse_2386 ::
  T_IsNearring_2366 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_2386 v0
  = case coe v0 of
      C_IsNearring'46'constructor_84765 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2388 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2388 v0
  = case coe v0 of
      C_IsNearring'46'constructor_84765 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring._.*-assoc
d_'42''45'assoc_2392 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2392 v0
  = coe d_'42''45'assoc_2034 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.*-cong
d_'42''45'cong_2394 ::
  T_IsNearring_2366 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2394 v0
  = coe d_'42''45'cong_2032 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.∙-congʳ
d_'8729''45'cong'691'_2396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2396 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2396 v9
du_'8729''45'cong'691'_2396 ::
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2396 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_2094 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsNearring._.∙-congˡ
d_'8729''45'cong'737'_2398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2398 v9
du_'8729''45'cong'737'_2398 ::
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2398 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_2094 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsNearring._.*-identity
d_'42''45'identity_2400 ::
  T_IsNearring_2366 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2400 v0
  = coe d_'42''45'identity_2036 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'691'_2402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2402 v9
du_identity'691'_2402 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'691'_2402 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (coe du_identity'691'_646 (coe du_'42''45'isMonoid_2094 (coe v1)))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'737'_2404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2404 v9
du_identity'737'_2404 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'737'_2404 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (coe du_identity'737'_644 (coe du_'42''45'isMonoid_2094 (coe v1)))
-- Algebra.Structures.IsNearring._.*-isMagma
d_'42''45'isMagma_2406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> T_IsMagma_144
d_'42''45'isMagma_2406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2406 v9
du_'42''45'isMagma_2406 :: T_IsNearring_2366 -> T_IsMagma_144
du_'42''45'isMagma_2406 v0
  = coe du_'42''45'isMagma_2090 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.*-isMonoid
d_'42''45'isMonoid_2408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> T_IsMonoid_604
d_'42''45'isMonoid_2408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_2408 v9
du_'42''45'isMonoid_2408 :: T_IsNearring_2366 -> T_IsMonoid_604
du_'42''45'isMonoid_2408 v0
  = coe du_'42''45'isMonoid_2094 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.*-isSemigroup
d_'42''45'isSemigroup_2410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> T_IsSemigroup_440
d_'42''45'isSemigroup_2410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_2410 v9
du_'42''45'isSemigroup_2410 ::
  T_IsNearring_2366 -> T_IsSemigroup_440
du_'42''45'isSemigroup_2410 v0
  = coe du_'42''45'isSemigroup_2092 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.assoc
d_assoc_2412 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2412 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))))
-- Algebra.Structures.IsNearring._.∙-cong
d_'8729''45'cong_2414 ::
  T_IsNearring_2366 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2414 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0)))))
-- Algebra.Structures.IsNearring._.∙-congʳ
d_'8729''45'cong'691'_2416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2416 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2416 v9
du_'8729''45'cong'691'_2416 ::
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2416 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2030 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsNearring._.∙-congˡ
d_'8729''45'cong'737'_2418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2418 v9
du_'8729''45'cong'737'_2418 ::
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2418 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2030 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsNearring._.identity
d_identity_2420 ::
  T_IsNearring_2366 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2420 v0
  = coe
      d_identity_616
      (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0)))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'691'_2422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2422 v9
du_identity'691'_2422 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'691'_2422 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (coe du_identity'691'_646 (coe d_'43''45'isMonoid_2030 (coe v1)))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'737'_2424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2424 v9
du_identity'737'_2424 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'737'_2424 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (coe du_identity'737'_644 (coe d_'43''45'isMonoid_2030 (coe v1)))
-- Algebra.Structures.IsNearring._.isMagma
d_isMagma_2426 :: T_IsNearring_2366 -> T_IsMagma_144
d_isMagma_2426 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))))
-- Algebra.Structures.IsNearring._.+-isMonoid
d_'43''45'isMonoid_2428 :: T_IsNearring_2366 -> T_IsMonoid_604
d_'43''45'isMonoid_2428 v0
  = coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.isSemigroup
d_isSemigroup_2430 :: T_IsNearring_2366 -> T_IsSemigroup_440
d_isSemigroup_2430 v0
  = coe
      d_isSemigroup_614
      (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0)))
-- Algebra.Structures.IsNearring._.isUnitalMagma
d_isUnitalMagma_2432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> T_IsUnitalMagma_560
d_isUnitalMagma_2432 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2432 v9
du_isUnitalMagma_2432 :: T_IsNearring_2366 -> T_IsUnitalMagma_560
du_isUnitalMagma_2432 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (coe du_isUnitalMagma_648 (coe d_'43''45'isMonoid_2030 (coe v1)))
-- Algebra.Structures.IsNearring._.distrib
d_distrib_2434 ::
  T_IsNearring_2366 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2434 v0
  = coe d_distrib_2038 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.distribʳ
d_distrib'691'_2436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2436 v9
du_distrib'691'_2436 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2436 v0
  = coe du_distrib'691'_2080 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.distribˡ
d_distrib'737'_2438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2438 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2438 v9
du_distrib'737'_2438 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2438 v0
  = coe du_distrib'737'_2078 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'691'_2440 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2440 v9
du_identity'691'_2440 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'691'_2440 v0
  = coe du_identity'691'_2088 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_identity'737'_2442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2442 v9
du_identity'737'_2442 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_identity'737'_2442 v0
  = coe du_identity'737'_2086 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.isEquivalence
d_isEquivalence_2444 ::
  T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2444 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0)))))
-- Algebra.Structures.IsNearring._.isPartialEquivalence
d_isPartialEquivalence_2446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2446 v9
du_isPartialEquivalence_2446 ::
  T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2446 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2030 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.IsNearring._.refl
d_refl_2448 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_refl_2448 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))))))
-- Algebra.Structures.IsNearring._.reflexive
d_reflexive_2450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2450 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2450 v9
du_reflexive_2450 ::
  T_IsNearring_2366 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2450 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2030 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe
            (let v4 = d_isMagma_448 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_152 (coe v4)) v5))))
-- Algebra.Structures.IsNearring._.setoid
d_setoid_2452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2452 v9
du_setoid_2452 ::
  T_IsNearring_2366 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2452 v0
  = let v1 = d_isQuasiring_2384 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2030 (coe v1) in
       coe
         (let v3 = d_isSemigroup_614 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsNearring._.sym
d_sym_2454 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2454 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))))))
-- Algebra.Structures.IsNearring._.trans
d_trans_2456 ::
  T_IsNearring_2366 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2456 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe d_'43''45'isMonoid_2030 (coe d_isQuasiring_2384 (coe v0))))))
-- Algebra.Structures.IsNearring._.zero
d_zero_2458 ::
  T_IsNearring_2366 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2458 v0 = coe d_zero_2040 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.zeroʳ
d_zero'691'_2460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_zero'691'_2460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_2460 v9
du_zero'691'_2460 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_zero'691'_2460 v0
  = coe du_zero'691'_2084 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring._.zeroˡ
d_zero'737'_2462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_zero'737'_2462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_2462 v9
du_zero'737'_2462 :: T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_zero'737'_2462 v0
  = coe du_zero'737'_2082 (coe d_isQuasiring_2384 (coe v0))
-- Algebra.Structures.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_2464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_'43''45'inverse'737'_2464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'43''45'inverse'737'_2464 v9
du_'43''45'inverse'737'_2464 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_'43''45'inverse'737'_2464 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'43''45'inverse_2386 (coe v0))
-- Algebra.Structures.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_2466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2366 -> AgdaAny -> AgdaAny
d_'43''45'inverse'691'_2466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'43''45'inverse'691'_2466 v9
du_'43''45'inverse'691'_2466 ::
  T_IsNearring_2366 -> AgdaAny -> AgdaAny
du_'43''45'inverse'691'_2466 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'43''45'inverse_2386 (coe v0))
-- Algebra.Structures.IsRing
d_IsRing_2478 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing_2478
  = C_IsRing'46'constructor_89183 T_IsAbelianGroup_980
                                  (AgdaAny ->
                                   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2500 ::
  T_IsRing_2478 -> T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2500 v0
  = case coe v0 of
      C_IsRing'46'constructor_89183 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-cong
d_'42''45'cong_2502 ::
  T_IsRing_2478 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2502 v0
  = case coe v0 of
      C_IsRing'46'constructor_89183 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-assoc
d_'42''45'assoc_2504 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2504 v0
  = case coe v0 of
      C_IsRing'46'constructor_89183 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-identity
d_'42''45'identity_2506 ::
  T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2506 v0
  = case coe v0 of
      C_IsRing'46'constructor_89183 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.distrib
d_distrib_2508 ::
  T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2508 v0
  = case coe v0 of
      C_IsRing'46'constructor_89183 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.isRingWithoutOne
d_isRingWithoutOne_2510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsRingWithoutOne_2114
d_isRingWithoutOne_2510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRingWithoutOne_2510 v9
du_isRingWithoutOne_2510 ::
  T_IsRing_2478 -> T_IsRingWithoutOne_2114
du_isRingWithoutOne_2510 v0
  = coe
      C_IsRingWithoutOne'46'constructor_70043
      (coe d_'43''45'isAbelianGroup_2500 (coe v0))
      (coe d_'42''45'cong_2502 (coe v0))
      (coe d_'42''45'assoc_2504 (coe v0)) (coe d_distrib_2508 (coe v0))
-- Algebra.Structures.IsRing._._-_
d__'45'__2514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2514 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__2514 v4 v6
du__'45'__2514 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2514 v0 v1 = coe du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_2516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2516 v9
du_'8729''45'cong'691'_2516 ::
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2516 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isSemigroup_2218 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_2518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2518 v9
du_'8729''45'cong'737'_2518 ::
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2518 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isSemigroup_2218 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v2))))
-- Algebra.Structures.IsRing._.*-isMagma
d_'42''45'isMagma_2520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsMagma_144
d_'42''45'isMagma_2520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2520 v9
du_'42''45'isMagma_2520 :: T_IsRing_2478 -> T_IsMagma_144
du_'42''45'isMagma_2520 v0
  = coe
      du_'42''45'isMagma_2216 (coe du_isRingWithoutOne_2510 (coe v0))
-- Algebra.Structures.IsRing._.*-isSemigroup
d_'42''45'isSemigroup_2522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsSemigroup_440
d_'42''45'isSemigroup_2522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_2522 v9
du_'42''45'isSemigroup_2522 :: T_IsRing_2478 -> T_IsSemigroup_440
du_'42''45'isSemigroup_2522 v0
  = coe
      du_'42''45'isSemigroup_2218 (coe du_isRingWithoutOne_2510 (coe v0))
-- Algebra.Structures.IsRing._.assoc
d_assoc_2524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_assoc_2524 v9
du_assoc_2524 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2524 v0
  = coe
      d_assoc_450
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))))
-- Algebra.Structures.IsRing._.comm
d_comm_2526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_comm_2526 v9
du_comm_2526 :: T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_2526 v0
  = coe d_comm_994 (coe d_'43''45'isAbelianGroup_2500 (coe v0))
-- Algebra.Structures.IsRing._.∙-cong
d_'8729''45'cong_2528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong_2528 v9
du_'8729''45'cong_2528 ::
  T_IsRing_2478 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2528 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0))))))
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_2530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2530 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2530 v9
du_'8729''45'cong'691'_2530 ::
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2530 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe
            (let v4 = d_isMonoid_906 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_2532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2532 v9
du_'8729''45'cong'737'_2532 ::
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2532 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe
            (let v4 = d_isMonoid_906 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsRing._.identity
d_identity_2534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity_2534 v9
du_identity_2534 ::
  T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2534 v0
  = coe
      d_identity_616
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0))))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_2536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_identity'691'_2536 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2536 v9
du_identity'691'_2536 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_identity'691'_2536 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v3)))))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_2538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_identity'737'_2538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2538 v9
du_identity'737'_2538 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_identity'737'_2538 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe (coe du_identity'737'_644 (coe d_isMonoid_906 (coe v3)))))
-- Algebra.Structures.IsRing._.isCommutativeMagma
d_isCommutativeMagma_2540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_2540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2540 v9
du_isCommutativeMagma_2540 ::
  T_IsRing_2478 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_2540 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = coe du_isCommutativeMonoid_1052 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_554
               (coe du_isCommutativeSemigroup_704 (coe v3)))))
-- Algebra.Structures.IsRing._.isCommutativeMonoid
d_isCommutativeMonoid_2542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_2542 v9
du_isCommutativeMonoid_2542 ::
  T_IsRing_2478 -> T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2542 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (coe
         du_isCommutativeMonoid_1052
         (coe d_'43''45'isAbelianGroup_2132 (coe v1)))
-- Algebra.Structures.IsRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2544 v9
du_isCommutativeSemigroup_2544 ::
  T_IsRing_2478 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2544 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_704
            (coe du_isCommutativeMonoid_1052 (coe v2))))
-- Algebra.Structures.IsRing._.isGroup
d_isGroup_2546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsGroup_892
d_isGroup_2546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isGroup_2546 v9
du_isGroup_2546 :: T_IsRing_2478 -> T_IsGroup_892
du_isGroup_2546 v0
  = coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0))
-- Algebra.Structures.IsRing._.isInvertibleMagma
d_isInvertibleMagma_2548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_2548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_2548 v9
du_isInvertibleMagma_2548 ::
  T_IsRing_2478 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_2548 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe (coe du_isInvertibleMagma_970 (coe d_isGroup_992 (coe v2))))
-- Algebra.Structures.IsRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_2550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_2550 v9
du_isInvertibleUnitalMagma_2550 ::
  T_IsRing_2478 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_2550 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (coe du_isInvertibleUnitalMagma_972 (coe d_isGroup_992 (coe v2))))
-- Algebra.Structures.IsRing._.isMagma
d_isMagma_2552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsMagma_144
d_isMagma_2552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMagma_2552 v9
du_isMagma_2552 :: T_IsRing_2478 -> T_IsMagma_144
du_isMagma_2552 v0
  = coe
      d_isMagma_448
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))))
-- Algebra.Structures.IsRing._.isMonoid
d_isMonoid_2554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsMonoid_604
d_isMonoid_2554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMonoid_2554 v9
du_isMonoid_2554 :: T_IsRing_2478 -> T_IsMonoid_604
du_isMonoid_2554 v0
  = coe
      d_isMonoid_906
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))
-- Algebra.Structures.IsRing._.isSemigroup
d_isSemigroup_2556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsSemigroup_440
d_isSemigroup_2556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemigroup_2556 v9
du_isSemigroup_2556 :: T_IsRing_2478 -> T_IsSemigroup_440
du_isSemigroup_2556 v0
  = coe
      d_isSemigroup_614
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0))))
-- Algebra.Structures.IsRing._.isUnitalMagma
d_isUnitalMagma_2558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsUnitalMagma_560
d_isUnitalMagma_2558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2558 v9
du_isUnitalMagma_2558 :: T_IsRing_2478 -> T_IsUnitalMagma_560
du_isUnitalMagma_2558 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe (coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v3)))))
-- Algebra.Structures.IsRing._.⁻¹-cong
d_'8315''185''45'cong_2560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8315''185''45'cong_2560 v9
du_'8315''185''45'cong_2560 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_2560 v0
  = coe
      d_'8315''185''45'cong_910
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))
-- Algebra.Structures.IsRing._.inverse
d_inverse_2562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2562 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse_2562 v9
du_inverse_2562 ::
  T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2562 v0
  = coe
      d_inverse_908
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))
-- Algebra.Structures.IsRing._.inverseʳ
d_inverse'691'_2564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_inverse'691'_2564 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_2564 v9
du_inverse'691'_2564 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_inverse'691'_2564 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe (coe du_inverse'691'_956 (coe d_isGroup_992 (coe v2))))
-- Algebra.Structures.IsRing._.inverseˡ
d_inverse'737'_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_inverse'737'_2566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_2566 v9
du_inverse'737'_2566 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_inverse'737'_2566 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe (coe du_inverse'737'_954 (coe d_isGroup_992 (coe v2))))
-- Algebra.Structures.IsRing._.distribʳ
d_distrib'691'_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2568 v9
du_distrib'691'_2568 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2568 v0
  = coe du_distrib'691'_2208 (coe du_isRingWithoutOne_2510 (coe v0))
-- Algebra.Structures.IsRing._.distribˡ
d_distrib'737'_2570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2570 v9
du_distrib'737'_2570 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2570 v0
  = coe du_distrib'737'_2206 (coe du_isRingWithoutOne_2510 (coe v0))
-- Algebra.Structures.IsRing._.isEquivalence
d_isEquivalence_2572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_2572 v9
du_isEquivalence_2572 ::
  T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2572 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0))))))
-- Algebra.Structures.IsRing._.isPartialEquivalence
d_isPartialEquivalence_2574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2574 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2574 v9
du_isPartialEquivalence_2574 ::
  T_IsRing_2478 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2574 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe
            (let v4 = d_isMonoid_906 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                        (coe d_isEquivalence_152 (coe v6))))))))
-- Algebra.Structures.IsRing._.refl
d_refl_2576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_refl_2576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_refl_2576 v9
du_refl_2576 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_refl_2576 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))))))
-- Algebra.Structures.IsRing._.reflexive
d_reflexive_2578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2578 v9
du_reflexive_2578 ::
  T_IsRing_2478 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2578 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe
            (let v4 = d_isMonoid_906 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe
                  (let v6 = d_isMagma_448 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                          (coe d_isEquivalence_152 (coe v6)) v7))))))
-- Algebra.Structures.IsRing._.setoid
d_setoid_2580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2580 v9
du_setoid_2580 ::
  T_IsRing_2478 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2580 v0
  = let v1 = coe du_isRingWithoutOne_2510 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2132 (coe v1) in
       coe
         (let v3 = d_isGroup_992 (coe v2) in
          coe
            (let v4 = d_isMonoid_906 (coe v3) in
             coe
               (let v5 = d_isSemigroup_614 (coe v4) in
                coe (coe du_setoid_168 (coe d_isMagma_448 (coe v5)))))))
-- Algebra.Structures.IsRing._.sym
d_sym_2582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_2582 v9
du_sym_2582 ::
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2582 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))))))
-- Algebra.Structures.IsRing._.trans
d_trans_2584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2584 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_2584 v9
du_trans_2584 ::
  T_IsRing_2478 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2584 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v0)))))))
-- Algebra.Structures.IsRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_2586 v4 v6 v7 v9
du_unique'691''45''8315''185'_2586 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2586 v0 v1 v2 v3
  = let v4 = coe du_isRingWithoutOne_2510 (coe v3) in
    coe
      (let v5 = d_'43''45'isAbelianGroup_2132 (coe v4) in
       coe
         (coe
            du_unique'691''45''8315''185'_968 (coe v0) (coe v2) (coe v1)
            (coe d_isGroup_992 (coe v5))))
-- Algebra.Structures.IsRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2588 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_2588 v4 v6 v7 v9
du_unique'737''45''8315''185'_2588 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2478 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2588 v0 v1 v2 v3
  = let v4 = coe du_isRingWithoutOne_2510 (coe v3) in
    coe
      (let v5 = d_'43''45'isAbelianGroup_2132 (coe v4) in
       coe
         (coe
            du_unique'737''45''8315''185'_962 (coe v0) (coe v2) (coe v1)
            (coe d_isGroup_992 (coe v5))))
-- Algebra.Structures.IsRing._.zero
d_zero_2590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2590 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_2590 v4 v5 v6 v7 v9
du_zero_2590 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2590 v0 v1 v2 v3 v4
  = coe
      du_zero_2214 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2510 (coe v4))
-- Algebra.Structures.IsRing._.zeroʳ
d_zero'691'_2592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_zero'691'_2592 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_2592 v4 v5 v6 v7 v9
du_zero'691'_2592 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
du_zero'691'_2592 v0 v1 v2 v3 v4
  = coe
      du_zero'691'_2212 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2510 (coe v4))
-- Algebra.Structures.IsRing._.zeroˡ
d_zero'737'_2594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_zero'737'_2594 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_2594 v4 v5 v6 v7 v9
du_zero'737'_2594 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
du_zero'737'_2594 v0 v1 v2 v3 v4
  = coe
      du_zero'737'_2210 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2510 (coe v4))
-- Algebra.Structures.IsRing.*-isMonoid
d_'42''45'isMonoid_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsMonoid_604
d_'42''45'isMonoid_2596 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_2596 v9
du_'42''45'isMonoid_2596 :: T_IsRing_2478 -> T_IsMonoid_604
du_'42''45'isMonoid_2596 v0
  = coe
      C_IsMonoid'46'constructor_13575
      (coe
         du_'42''45'isSemigroup_2218
         (coe du_isRingWithoutOne_2510 (coe v0)))
      (coe d_'42''45'identity_2506 (coe v0))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_2600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_identity'691'_2600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2600 v9
du_identity'691'_2600 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_identity'691'_2600 v0
  = coe du_identity'691'_646 (coe du_'42''45'isMonoid_2596 (coe v0))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_2602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> AgdaAny -> AgdaAny
d_identity'737'_2602 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2602 v9
du_identity'737'_2602 :: T_IsRing_2478 -> AgdaAny -> AgdaAny
du_identity'737'_2602 v0
  = coe du_identity'737'_644 (coe du_'42''45'isMonoid_2596 (coe v0))
-- Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2478 -> T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_2604 v9
du_isSemiringWithoutAnnihilatingZero_2604 ::
  T_IsRing_2478 -> T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_2604 v0
  = coe
      C_IsSemiringWithoutAnnihilatingZero'46'constructor_39247
      (coe
         du_isCommutativeMonoid_1052
         (coe d_'43''45'isAbelianGroup_2500 (coe v0)))
      (coe d_'42''45'cong_2502 (coe v0))
      (coe d_'42''45'assoc_2504 (coe v0))
      (coe d_'42''45'identity_2506 (coe v0))
      (coe d_distrib_2508 (coe v0))
-- Algebra.Structures.IsRing.isSemiring
d_isSemiring_2606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsSemiring_1418
d_isSemiring_2606 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiring_2606 v4 v5 v6 v7 v9
du_isSemiring_2606 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> T_IsSemiring_1418
du_isSemiring_2606 v0 v1 v2 v3 v4
  = coe
      C_IsSemiring'46'constructor_43487
      (coe du_isSemiringWithoutAnnihilatingZero_2604 (coe v4))
      (coe
         du_zero_2214 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2510 (coe v4)))
-- Algebra.Structures.IsRing._.isNearSemiring
d_isNearSemiring_2610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsNearSemiring_1066
d_isNearSemiring_2610 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isNearSemiring_2610 v4 v5 v6 v7 v9
du_isNearSemiring_2610 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> T_IsNearSemiring_1066
du_isNearSemiring_2610 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) in
    coe
      (coe
         du_isNearSemiring_1222 (coe du_isSemiringWithoutOne_1508 (coe v5)))
-- Algebra.Structures.IsRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_2612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2478 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_2612 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiringWithoutOne_2612 v4 v5 v6 v7 v9
du_isSemiringWithoutOne_2612 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2478 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_2612 v0 v1 v2 v3 v4
  = coe
      du_isSemiringWithoutOne_1508
      (coe
         du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.IsCommutativeRing
d_IsCommutativeRing_2624 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsCommutativeRing_2624
  = C_IsCommutativeRing'46'constructor_95075 T_IsRing_2478
                                             (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeRing.isRing
d_isRing_2640 :: T_IsCommutativeRing_2624 -> T_IsRing_2478
d_isRing_2640 v0
  = case coe v0 of
      C_IsCommutativeRing'46'constructor_95075 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing.*-comm
d_'42''45'comm_2642 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_2642 v0
  = case coe v0 of
      C_IsCommutativeRing'46'constructor_95075 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing._._-_
d__'45'__2646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__2646 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'45'__2646 v4 v6
du__'45'__2646 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__2646 v0 v1 = coe du__'45'__948 (coe v0) (coe v1)
-- Algebra.Structures.IsCommutativeRing._.*-assoc
d_'42''45'assoc_2648 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2648 v0
  = coe d_'42''45'assoc_2504 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.*-cong
d_'42''45'cong_2650 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2650 v0
  = coe d_'42''45'cong_2502 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_2652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2652 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2652 v9
du_'8729''45'cong'691'_2652 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2652 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isSemigroup_2218 (coe v2) in
          coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_2654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2654 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2654 v9
du_'8729''45'cong'737'_2654 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2654 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isSemigroup_2218 (coe v2) in
          coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.*-identity
d_'42''45'identity_2656 ::
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2656 v0
  = coe d_'42''45'identity_2506 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_2658 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_identity'691'_2658 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2658 v9
du_identity'691'_2658 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_identity'691'_2658 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe du_identity'691'_646 (coe du_'42''45'isMonoid_2596 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_2660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_identity'737'_2660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2660 v9
du_identity'737'_2660 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_identity'737'_2660 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe du_identity'737'_644 (coe du_'42''45'isMonoid_2596 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.*-isMagma
d_'42''45'isMagma_2662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsMagma_144
d_'42''45'isMagma_2662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2662 v9
du_'42''45'isMagma_2662 ::
  T_IsCommutativeRing_2624 -> T_IsMagma_144
du_'42''45'isMagma_2662 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_2216 (coe du_isRingWithoutOne_2510 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_2664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsMonoid_604
d_'42''45'isMonoid_2664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_2664 v9
du_'42''45'isMonoid_2664 ::
  T_IsCommutativeRing_2624 -> T_IsMonoid_604
du_'42''45'isMonoid_2664 v0
  = coe du_'42''45'isMonoid_2596 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_2666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemigroup_440
d_'42''45'isSemigroup_2666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_2666 v9
du_'42''45'isSemigroup_2666 ::
  T_IsCommutativeRing_2624 -> T_IsSemigroup_440
du_'42''45'isSemigroup_2666 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_2218
         (coe du_isRingWithoutOne_2510 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.assoc
d_assoc_2668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_assoc_2668 v9
du_assoc_2668 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2668 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_assoc_450
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))))
-- Algebra.Structures.IsCommutativeRing._.comm
d_comm_2670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_comm_2670 v9
du_comm_2670 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_2670 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe (coe d_comm_994 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.∙-cong
d_'8729''45'cong_2672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong_2672 v9
du_'8729''45'cong_2672 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2672 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_'8729''45'cong_154
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2674 v9
du_'8729''45'cong'691'_2674 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2674 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe
               (let v5 = d_isMonoid_906 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'691'_174 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2676 v9
du_'8729''45'cong'737'_2676 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2676 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe
               (let v5 = d_isMonoid_906 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (coe du_'8729''45'cong'737'_170 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCommutativeRing._.identity
d_identity_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity_2678 v9
du_identity_2678 ::
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2678 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_identity_616
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_2680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_identity'691'_2680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2680 v9
du_identity'691'_2680 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_identity'691'_2680 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe (coe du_identity'691'_646 (coe d_isMonoid_906 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_identity'737'_2682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2682 v9
du_identity'737'_2682 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_identity'737'_2682 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe (coe du_identity'737'_644 (coe d_isMonoid_906 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_2684 ::
  T_IsCommutativeRing_2624 -> T_IsAbelianGroup_980
d_'43''45'isAbelianGroup_2684 v0
  = coe d_'43''45'isAbelianGroup_2500 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_2686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_2686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2686 v9
du_isCommutativeMagma_2686 ::
  T_IsCommutativeRing_2624 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_2686 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = coe du_isCommutativeMonoid_1052 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_554
                  (coe du_isCommutativeSemigroup_704 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_2688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMonoid_654
d_isCommutativeMonoid_2688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_2688 v9
du_isCommutativeMonoid_2688 ::
  T_IsCommutativeRing_2624 -> T_IsCommutativeMonoid_654
du_isCommutativeMonoid_2688 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (coe
            du_isCommutativeMonoid_1052
            (coe d_'43''45'isAbelianGroup_2132 (coe v2))))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeSemigroup_516
d_isCommutativeSemigroup_2690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2690 v9
du_isCommutativeSemigroup_2690 ::
  T_IsCommutativeRing_2624 -> T_IsCommutativeSemigroup_516
du_isCommutativeSemigroup_2690 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_704
               (coe du_isCommutativeMonoid_1052 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isGroup
d_isGroup_2692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsGroup_892
d_isGroup_2692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isGroup_2692 v9
du_isGroup_2692 :: T_IsCommutativeRing_2624 -> T_IsGroup_892
du_isGroup_2692 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.isInvertibleMagma
d_isInvertibleMagma_2694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsInvertibleMagma_780
d_isInvertibleMagma_2694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_2694 v9
du_isInvertibleMagma_2694 ::
  T_IsCommutativeRing_2624 -> T_IsInvertibleMagma_780
du_isInvertibleMagma_2694 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe (coe du_isInvertibleMagma_970 (coe d_isGroup_992 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> T_IsInvertibleUnitalMagma_832
d_isInvertibleUnitalMagma_2696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_2696 v9
du_isInvertibleUnitalMagma_2696 ::
  T_IsCommutativeRing_2624 -> T_IsInvertibleUnitalMagma_832
du_isInvertibleUnitalMagma_2696 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (coe du_isInvertibleUnitalMagma_972 (coe d_isGroup_992 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isMagma
d_isMagma_2698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsMagma_144
d_isMagma_2698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMagma_2698 v9
du_isMagma_2698 :: T_IsCommutativeRing_2624 -> T_IsMagma_144
du_isMagma_2698 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_isMagma_448
         (coe
            d_isSemigroup_614
            (coe
               d_isMonoid_906
               (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))))
-- Algebra.Structures.IsCommutativeRing._.isMonoid
d_isMonoid_2700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsMonoid_604
d_isMonoid_2700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMonoid_2700 v9
du_isMonoid_2700 :: T_IsCommutativeRing_2624 -> T_IsMonoid_604
du_isMonoid_2700 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_isMonoid_906
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.isSemigroup
d_isSemigroup_2702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemigroup_440
d_isSemigroup_2702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemigroup_2702 v9
du_isSemigroup_2702 ::
  T_IsCommutativeRing_2624 -> T_IsSemigroup_440
du_isSemigroup_2702 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_isSemigroup_614
         (coe
            d_isMonoid_906
            (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))))
-- Algebra.Structures.IsCommutativeRing._.isUnitalMagma
d_isUnitalMagma_2704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsUnitalMagma_560
d_isUnitalMagma_2704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2704 v9
du_isUnitalMagma_2704 ::
  T_IsCommutativeRing_2624 -> T_IsUnitalMagma_560
du_isUnitalMagma_2704 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe (coe du_isUnitalMagma_648 (coe d_isMonoid_906 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_2706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8315''185''45'cong_2706 v9
du_'8315''185''45'cong_2706 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_2706 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_'8315''185''45'cong_910
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.inverse
d_inverse_2708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse_2708 v9
du_inverse_2708 ::
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2708 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_inverse_908
         (coe d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.inverseʳ
d_inverse'691'_2710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_inverse'691'_2710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_2710 v9
du_inverse'691'_2710 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_inverse'691'_2710 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe (coe du_inverse'691'_956 (coe d_isGroup_992 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.inverseˡ
d_inverse'737'_2712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_inverse'737'_2712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_2712 v9
du_inverse'737'_2712 ::
  T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_inverse'737'_2712 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe (coe du_inverse'737'_954 (coe d_isGroup_992 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.distrib
d_distrib_2714 ::
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2714 v0 = coe d_distrib_2508 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.distribʳ
d_distrib'691'_2716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2716 v9
du_distrib'691'_2716 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2716 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe du_distrib'691'_2208 (coe du_isRingWithoutOne_2510 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.distribˡ
d_distrib'737'_2718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2718 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2718 v9
du_distrib'737'_2718 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2718 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe du_distrib'737'_2206 (coe du_isRingWithoutOne_2510 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.isEquivalence
d_isEquivalence_2720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_2720 v9
du_isEquivalence_2720 ::
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_2720 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_448
            (coe
               d_isSemigroup_614
               (coe
                  d_isMonoid_906
                  (coe
                     d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1)))))))
-- Algebra.Structures.IsCommutativeRing._.isNearSemiring
d_isNearSemiring_2722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsNearSemiring_1066
d_isNearSemiring_2722 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isNearSemiring_2722 v4 v5 v6 v7 v9
du_isNearSemiring_2722 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsNearSemiring_1066
du_isNearSemiring_2722 v0 v1 v2 v3 v4
  = let v5 = d_isRing_2640 (coe v4) in
    coe
      (let v6
             = coe
                 du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5) in
       coe
         (coe
            du_isNearSemiring_1222
            (coe du_isSemiringWithoutOne_1508 (coe v6))))
-- Algebra.Structures.IsCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_2724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2724 v9
du_isPartialEquivalence_2724 ::
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2724 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe
               (let v5 = d_isMonoid_906 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                           (coe d_isEquivalence_152 (coe v7)))))))))
-- Algebra.Structures.IsCommutativeRing._.isRingWithoutOne
d_isRingWithoutOne_2726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsRingWithoutOne_2114
d_isRingWithoutOne_2726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRingWithoutOne_2726 v9
du_isRingWithoutOne_2726 ::
  T_IsCommutativeRing_2624 -> T_IsRingWithoutOne_2114
du_isRingWithoutOne_2726 v0
  = coe du_isRingWithoutOne_2510 (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiring
d_isSemiring_2728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemiring_1418
d_isSemiring_2728 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiring_2728 v4 v5 v6 v7 v9
du_isSemiring_2728 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemiring_1418
du_isSemiring_2728 v0 v1 v2 v3 v4
  = coe
      du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe d_isRing_2640 (coe v4))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  T_IsSemiringWithoutAnnihilatingZero_1316
d_isSemiringWithoutAnnihilatingZero_2730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_2730 v9
du_isSemiringWithoutAnnihilatingZero_2730 ::
  T_IsCommutativeRing_2624 ->
  T_IsSemiringWithoutAnnihilatingZero_1316
du_isSemiringWithoutAnnihilatingZero_2730 v0
  = coe
      du_isSemiringWithoutAnnihilatingZero_2604
      (coe d_isRing_2640 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_2732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemiringWithoutOne_1146
d_isSemiringWithoutOne_2732 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiringWithoutOne_2732 v4 v5 v6 v7 v9
du_isSemiringWithoutOne_2732 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsSemiringWithoutOne_1146
du_isSemiringWithoutOne_2732 v0 v1 v2 v3 v4
  = let v5 = d_isRing_2640 (coe v4) in
    coe
      (coe
         du_isSemiringWithoutOne_1508
         (coe
            du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.refl
d_refl_2734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_refl_2734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_refl_2734 v9
du_refl_2734 :: T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_refl_2734 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (coe
            d_isEquivalence_152
            (coe
               d_isMagma_448
               (coe
                  d_isSemigroup_614
                  (coe
                     d_isMonoid_906
                     (coe
                        d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.reflexive
d_reflexive_2736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2736 v9
du_reflexive_2736 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2736 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe
               (let v5 = d_isMonoid_906 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe
                     (let v7 = d_isMagma_448 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                             (coe d_isEquivalence_152 (coe v7)) v8)))))))
-- Algebra.Structures.IsCommutativeRing._.setoid
d_setoid_2738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2738 v9
du_setoid_2738 ::
  T_IsCommutativeRing_2624 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2738 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2510 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2132 (coe v2) in
          coe
            (let v4 = d_isGroup_992 (coe v3) in
             coe
               (let v5 = d_isMonoid_906 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_614 (coe v5) in
                   coe (coe du_setoid_168 (coe d_isMagma_448 (coe v6))))))))
-- Algebra.Structures.IsCommutativeRing._.sym
d_sym_2740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_2740 v9
du_sym_2740 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2740 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_36
         (coe
            d_isEquivalence_152
            (coe
               d_isMagma_448
               (coe
                  d_isSemigroup_614
                  (coe
                     d_isMonoid_906
                     (coe
                        d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.trans
d_trans_2742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_2742 v9
du_trans_2742 ::
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2742 v0
  = let v1 = d_isRing_2640 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
         (coe
            d_isEquivalence_152
            (coe
               d_isMagma_448
               (coe
                  d_isSemigroup_614
                  (coe
                     d_isMonoid_906
                     (coe
                        d_isGroup_992 (coe d_'43''45'isAbelianGroup_2500 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2744 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2744 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_2744 v4 v6 v7 v9
du_unique'691''45''8315''185'_2744 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2744 v0 v1 v2 v3
  = let v4 = d_isRing_2640 (coe v3) in
    coe
      (let v5 = coe du_isRingWithoutOne_2510 (coe v4) in
       coe
         (let v6 = d_'43''45'isAbelianGroup_2132 (coe v5) in
          coe
            (coe
               du_unique'691''45''8315''185'_968 (coe v0) (coe v2) (coe v1)
               (coe d_isGroup_992 (coe v6)))))
-- Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2746 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2746 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_2746 v4 v6 v7 v9
du_unique'737''45''8315''185'_2746 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_2624 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2746 v0 v1 v2 v3
  = let v4 = d_isRing_2640 (coe v3) in
    coe
      (let v5 = coe du_isRingWithoutOne_2510 (coe v4) in
       coe
         (let v6 = d_'43''45'isAbelianGroup_2132 (coe v5) in
          coe
            (coe
               du_unique'737''45''8315''185'_962 (coe v0) (coe v2) (coe v1)
               (coe d_isGroup_992 (coe v6)))))
-- Algebra.Structures.IsCommutativeRing._.zero
d_zero_2748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2748 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_2748 v4 v5 v6 v7 v9
du_zero_2748 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2748 v0 v1 v2 v3 v4
  = let v5 = d_isRing_2640 (coe v4) in
    coe
      (coe
         du_zero_2214 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2510 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.zeroʳ
d_zero'691'_2750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_zero'691'_2750 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_2750 v4 v5 v6 v7 v9
du_zero'691'_2750 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_zero'691'_2750 v0 v1 v2 v3 v4
  = let v5 = d_isRing_2640 (coe v4) in
    coe
      (coe
         du_zero'691'_2212 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2510 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.zeroˡ
d_zero'737'_2752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
d_zero'737'_2752 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_2752 v4 v5 v6 v7 v9
du_zero'737'_2752 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> AgdaAny -> AgdaAny
du_zero'737'_2752 v0 v1 v2 v3 v4
  = let v5 = d_isRing_2640 (coe v4) in
    coe
      (coe
         du_zero'737'_2210 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2510 (coe v5)))
-- Algebra.Structures.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_2754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeSemiring_1526
d_isCommutativeSemiring_2754 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeSemiring_2754 v4 v5 v6 v7 v9
du_isCommutativeSemiring_2754 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeSemiring_1526
du_isCommutativeSemiring_2754 v0 v1 v2 v3 v4
  = coe
      C_IsCommutativeSemiring'46'constructor_47309
      (coe
         du_isSemiring_2606 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_isRing_2640 (coe v4)))
      (coe d_'42''45'comm_2642 (coe v4))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_2758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMagma_180
d_isCommutativeMagma_2758 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeMagma_2758 v4 v5 v6 v7 v9
du_isCommutativeMagma_2758 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMagma_180
du_isCommutativeMagma_2758 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isCommutativeSemiring_2754 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (let v6 = coe du_isCommutativeSemiringWithoutOne_1628 (coe v5) in
       coe
         (coe
            du_isCommutativeMagma_554
            (coe du_'42''45'isCommutativeSemigroup_1302 (coe v6))))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_2760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMonoid_654
d_'42''45'isCommutativeMonoid_2760 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8
                                   v9
  = du_'42''45'isCommutativeMonoid_2760 v4 v5 v6 v7 v9
du_'42''45'isCommutativeMonoid_2760 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeMonoid_654
du_'42''45'isCommutativeMonoid_2760 v0 v1 v2 v3 v4
  = coe
      du_'42''45'isCommutativeMonoid_1636
      (coe
         du_isCommutativeSemiring_2754 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_2762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeSemigroup_516
d_'42''45'isCommutativeSemigroup_2762 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                      ~v8 v9
  = du_'42''45'isCommutativeSemigroup_2762 v4 v5 v6 v7 v9
du_'42''45'isCommutativeSemigroup_2762 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_2624 -> T_IsCommutativeSemigroup_516
du_'42''45'isCommutativeSemigroup_2762 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isCommutativeSemiring_2754 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (coe
         du_'42''45'isCommutativeSemigroup_1302
         (coe du_isCommutativeSemiringWithoutOne_1628 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_2764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> T_IsCommutativeSemiringWithoutOne_1230
d_isCommutativeSemiringWithoutOne_2764 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                       ~v8 v9
  = du_isCommutativeSemiringWithoutOne_2764 v4 v5 v6 v7 v9
du_isCommutativeSemiringWithoutOne_2764 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_2624 -> T_IsCommutativeSemiringWithoutOne_1230
du_isCommutativeSemiringWithoutOne_2764 v0 v1 v2 v3 v4
  = coe
      du_isCommutativeSemiringWithoutOne_1628
      (coe
         du_isCommutativeSemiring_2754 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsQuasigroup
d_IsQuasigroup_2772 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroup_2772
  = C_IsQuasigroup'46'constructor_100185 T_IsMagma_144
                                         (AgdaAny ->
                                          AgdaAny ->
                                          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                         (AgdaAny ->
                                          AgdaAny ->
                                          AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsQuasigroup.isMagma
d_isMagma_2790 :: T_IsQuasigroup_2772 -> T_IsMagma_144
d_isMagma_2790 v0
  = case coe v0 of
      C_IsQuasigroup'46'constructor_100185 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.\\-cong
d_'92''92''45'cong_2792 ::
  T_IsQuasigroup_2772 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_2792 v0
  = case coe v0 of
      C_IsQuasigroup'46'constructor_100185 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.//-cong
d_'47''47''45'cong_2794 ::
  T_IsQuasigroup_2772 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_2794 v0
  = case coe v0 of
      C_IsQuasigroup'46'constructor_100185 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.leftDivides
d_leftDivides_2796 ::
  T_IsQuasigroup_2772 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2796 v0
  = case coe v0 of
      C_IsQuasigroup'46'constructor_100185 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.rightDivides
d_rightDivides_2798 ::
  T_IsQuasigroup_2772 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2798 v0
  = case coe v0 of
      C_IsQuasigroup'46'constructor_100185 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup._.isEquivalence
d_isEquivalence_2802 ::
  T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2802 v0
  = coe d_isEquivalence_152 (coe d_isMagma_2790 (coe v0))
-- Algebra.Structures.IsQuasigroup._.isPartialEquivalence
d_isPartialEquivalence_2804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_2804 v7
du_isPartialEquivalence_2804 ::
  T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2804 v0
  = let v1 = d_isMagma_2790 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
         (coe d_isEquivalence_152 (coe v1)))
-- Algebra.Structures.IsQuasigroup._.refl
d_refl_2806 :: T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny
d_refl_2806 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe d_isEquivalence_152 (coe d_isMagma_2790 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.reflexive
d_reflexive_2808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_2808 v7
du_reflexive_2808 ::
  T_IsQuasigroup_2772 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2808 v0
  = let v1 = d_isMagma_2790 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
           (coe d_isEquivalence_152 (coe v1)) v2)
-- Algebra.Structures.IsQuasigroup._.setoid
d_setoid_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_2810 v7
du_setoid_2810 ::
  T_IsQuasigroup_2772 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2810 v0 = coe du_setoid_168 (coe d_isMagma_2790 (coe v0))
-- Algebra.Structures.IsQuasigroup._.sym
d_sym_2812 ::
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2812 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe d_isEquivalence_152 (coe d_isMagma_2790 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.trans
d_trans_2814 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2814 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe d_isEquivalence_152 (coe d_isMagma_2790 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.∙-cong
d_'8729''45'cong_2816 ::
  T_IsQuasigroup_2772 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2816 v0
  = coe d_'8729''45'cong_154 (coe d_isMagma_2790 (coe v0))
-- Algebra.Structures.IsQuasigroup._.∙-congʳ
d_'8729''45'cong'691'_2818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_2818 v7
du_'8729''45'cong'691'_2818 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2818 v0
  = coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v0))
-- Algebra.Structures.IsQuasigroup._.∙-congˡ
d_'8729''45'cong'737'_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_2820 v7
du_'8729''45'cong'737'_2820 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2820 v0
  = coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v0))
-- Algebra.Structures.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_2822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_2822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'92''92''45'cong'737'_2822 v7 v8 v9 v10 v11
du_'92''92''45'cong'737'_2822 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_2822 v0 v1 v2 v3 v4
  = coe
      d_'92''92''45'cong_2792 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe d_isMagma_2790 (coe v0))) v1)
      v4
-- Algebra.Structures.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_2826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_2826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'92''92''45'cong'691'_2826 v7 v8 v9 v10 v11
du_'92''92''45'cong'691'_2826 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_2826 v0 v1 v2 v3 v4
  = coe
      d_'92''92''45'cong_2792 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe d_isMagma_2790 (coe v0))) v1)
-- Algebra.Structures.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_2830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_2830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'47''47''45'cong'737'_2830 v7 v8 v9 v10 v11
du_'47''47''45'cong'737'_2830 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_2830 v0 v1 v2 v3 v4
  = coe
      d_'47''47''45'cong_2794 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe d_isMagma_2790 (coe v0))) v1)
      v4
-- Algebra.Structures.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_2834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'47''47''45'cong'691'_2834 v7 v8 v9 v10 v11
du_'47''47''45'cong'691'_2834 ::
  T_IsQuasigroup_2772 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_2834 v0 v1 v2 v3 v4
  = coe
      d_'47''47''45'cong_2794 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_34
         (d_isEquivalence_152 (coe d_isMagma_2790 (coe v0))) v1)
-- Algebra.Structures.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_2838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_2838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_leftDivides'737'_2838 v7
du_leftDivides'737'_2838 ::
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_2838 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_leftDivides_2796 (coe v0))
-- Algebra.Structures.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_2840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_leftDivides'691'_2840 v7
du_leftDivides'691'_2840 ::
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_2840 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_leftDivides_2796 (coe v0))
-- Algebra.Structures.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_2842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_2842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_rightDivides'737'_2842 v7
du_rightDivides'737'_2842 ::
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_2842 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_rightDivides_2798 (coe v0))
-- Algebra.Structures.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_2844 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_2844 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_rightDivides'691'_2844 v7
du_rightDivides'691'_2844 ::
  T_IsQuasigroup_2772 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_2844 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_rightDivides_2798 (coe v0))
-- Algebra.Structures.IsLoop
d_IsLoop_2854 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsLoop_2854
  = C_IsLoop'46'constructor_105393 T_IsQuasigroup_2772
                                   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsLoop.isQuasigroup
d_isQuasigroup_2868 :: T_IsLoop_2854 -> T_IsQuasigroup_2772
d_isQuasigroup_2868 v0
  = case coe v0 of
      C_IsLoop'46'constructor_105393 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLoop.identity
d_identity_2870 ::
  T_IsLoop_2854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2870 v0
  = case coe v0 of
      C_IsLoop'46'constructor_105393 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLoop._.//-cong
d_'47''47''45'cong_2874 ::
  T_IsLoop_2854 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_2874 v0
  = coe d_'47''47''45'cong_2794 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.//-congʳ
d_'47''47''45'cong'691'_2876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_2876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_2876 v8
du_'47''47''45'cong'691'_2876 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_2876 v0
  = coe
      du_'47''47''45'cong'691'_2834 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.//-congˡ
d_'47''47''45'cong'737'_2878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_2878 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_2878 v8
du_'47''47''45'cong'737'_2878 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_2878 v0
  = coe
      du_'47''47''45'cong'737'_2830 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.\\-cong
d_'92''92''45'cong_2880 ::
  T_IsLoop_2854 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_2880 v0
  = coe d_'92''92''45'cong_2792 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.\\-congʳ
d_'92''92''45'cong'691'_2882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_2882 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_2882 v8
du_'92''92''45'cong'691'_2882 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_2882 v0
  = coe
      du_'92''92''45'cong'691'_2826 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.\\-congˡ
d_'92''92''45'cong'737'_2884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_2884 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_2884 v8
du_'92''92''45'cong'737'_2884 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_2884 v0
  = coe
      du_'92''92''45'cong'737'_2822 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.isEquivalence
d_isEquivalence_2886 ::
  T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2886 v0
  = coe
      d_isEquivalence_152
      (coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0)))
-- Algebra.Structures.IsLoop._.isMagma
d_isMagma_2888 :: T_IsLoop_2854 -> T_IsMagma_144
d_isMagma_2888 v0
  = coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.isPartialEquivalence
d_isPartialEquivalence_2890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2890 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2890 v8
du_isPartialEquivalence_2890 ::
  T_IsLoop_2854 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2890 v0
  = let v1 = d_isQuasigroup_2868 (coe v0) in
    coe
      (let v2 = d_isMagma_2790 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
            (coe d_isEquivalence_152 (coe v2))))
-- Algebra.Structures.IsLoop._.leftDivides
d_leftDivides_2892 ::
  T_IsLoop_2854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2892 v0
  = coe d_leftDivides_2796 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.leftDividesʳ
d_leftDivides'691'_2894 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_2894 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_2894 v8
du_leftDivides'691'_2894 ::
  T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_2894 v0
  = coe du_leftDivides'691'_2840 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.leftDividesˡ
d_leftDivides'737'_2896 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_2896 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_2896 v8
du_leftDivides'737'_2896 ::
  T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_2896 v0
  = coe du_leftDivides'737'_2838 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.refl
d_refl_2898 :: T_IsLoop_2854 -> AgdaAny -> AgdaAny
d_refl_2898 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0))))
-- Algebra.Structures.IsLoop._.reflexive
d_reflexive_2900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2900 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2900 v8
du_reflexive_2900 ::
  T_IsLoop_2854 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2900 v0
  = let v1 = d_isQuasigroup_2868 (coe v0) in
    coe
      (let v2 = d_isMagma_2790 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
              (coe d_isEquivalence_152 (coe v2)) v3))
-- Algebra.Structures.IsLoop._.rightDivides
d_rightDivides_2902 ::
  T_IsLoop_2854 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2902 v0
  = coe d_rightDivides_2798 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.rightDividesʳ
d_rightDivides'691'_2904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_2904 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_2904 v8
du_rightDivides'691'_2904 ::
  T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_2904 v0
  = coe du_rightDivides'691'_2844 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.rightDividesˡ
d_rightDivides'737'_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_2906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_2906 v8
du_rightDivides'737'_2906 ::
  T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_2906 v0
  = coe du_rightDivides'737'_2842 (coe d_isQuasigroup_2868 (coe v0))
-- Algebra.Structures.IsLoop._.setoid
d_setoid_2908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2908 v8
du_setoid_2908 ::
  T_IsLoop_2854 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2908 v0
  = let v1 = d_isQuasigroup_2868 (coe v0) in
    coe (coe du_setoid_168 (coe d_isMagma_2790 (coe v1)))
-- Algebra.Structures.IsLoop._.sym
d_sym_2910 ::
  T_IsLoop_2854 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2910 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0))))
-- Algebra.Structures.IsLoop._.trans
d_trans_2912 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2912 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0))))
-- Algebra.Structures.IsLoop._.∙-cong
d_'8729''45'cong_2914 ::
  T_IsLoop_2854 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2914 v0
  = coe
      d_'8729''45'cong_154
      (coe d_isMagma_2790 (coe d_isQuasigroup_2868 (coe v0)))
-- Algebra.Structures.IsLoop._.∙-congʳ
d_'8729''45'cong'691'_2916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2916 v8
du_'8729''45'cong'691'_2916 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2916 v0
  = let v1 = d_isQuasigroup_2868 (coe v0) in
    coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v1)))
-- Algebra.Structures.IsLoop._.∙-congˡ
d_'8729''45'cong'737'_2918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2918 v8
du_'8729''45'cong'737'_2918 ::
  T_IsLoop_2854 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2918 v0
  = let v1 = d_isQuasigroup_2868 (coe v0) in
    coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v1)))
-- Algebra.Structures.IsLoop.identityˡ
d_identity'737'_2920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny
d_identity'737'_2920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2920 v8
du_identity'737'_2920 :: T_IsLoop_2854 -> AgdaAny -> AgdaAny
du_identity'737'_2920 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_2870 (coe v0))
-- Algebra.Structures.IsLoop.identityʳ
d_identity'691'_2922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_2854 -> AgdaAny -> AgdaAny
d_identity'691'_2922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2922 v8
du_identity'691'_2922 :: T_IsLoop_2854 -> AgdaAny -> AgdaAny
du_identity'691'_2922 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_2870 (coe v0))
-- Algebra.Structures.IsLeftBolLoop
d_IsLeftBolLoop_2932 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsLeftBolLoop_2932
  = C_IsLeftBolLoop'46'constructor_108389 T_IsLoop_2854
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsLeftBolLoop.isLoop
d_isLoop_2946 :: T_IsLeftBolLoop_2932 -> T_IsLoop_2854
d_isLoop_2946 v0
  = case coe v0 of
      C_IsLeftBolLoop'46'constructor_108389 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLeftBolLoop.leftBol
d_leftBol_2948 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leftBol_2948 v0
  = case coe v0 of
      C_IsLeftBolLoop'46'constructor_108389 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLeftBolLoop._.//-cong
d_'47''47''45'cong_2952 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_2952 v0
  = coe
      d_'47''47''45'cong_2794
      (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.//-congʳ
d_'47''47''45'cong'691'_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_2954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_2954 v8
du_'47''47''45'cong'691'_2954 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_2954 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_2834 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.//-congˡ
d_'47''47''45'cong'737'_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_2956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_2956 v8
du_'47''47''45'cong'737'_2956 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_2956 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_2830 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.\\-cong
d_'92''92''45'cong_2958 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_2958 v0
  = coe
      d_'92''92''45'cong_2792
      (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_2960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_2960 v8
du_'92''92''45'cong'691'_2960 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_2960 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_2826 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_2962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_2962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_2962 v8
du_'92''92''45'cong'737'_2962 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_2962 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_2822 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.identity
d_identity_2964 ::
  T_IsLeftBolLoop_2932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2964 v0
  = coe d_identity_2870 (coe d_isLoop_2946 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.identityʳ
d_identity'691'_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny
d_identity'691'_2966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2966 v8
du_identity'691'_2966 :: T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny
du_identity'691'_2966 v0
  = coe du_identity'691'_2922 (coe d_isLoop_2946 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.identityˡ
d_identity'737'_2968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny
d_identity'737'_2968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2968 v8
du_identity'737'_2968 :: T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny
du_identity'737'_2968 v0
  = coe du_identity'737'_2920 (coe d_isLoop_2946 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.isEquivalence
d_isEquivalence_2970 ::
  T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_2970 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0))))
-- Algebra.Structures.IsLeftBolLoop._.isMagma
d_isMagma_2972 :: T_IsLeftBolLoop_2932 -> T_IsMagma_144
d_isMagma_2972 v0
  = coe
      d_isMagma_2790
      (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.isPartialEquivalence
d_isPartialEquivalence_2974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2974 v8
du_isPartialEquivalence_2974 ::
  T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2974 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsLeftBolLoop._.isQuasigroup
d_isQuasigroup_2976 :: T_IsLeftBolLoop_2932 -> T_IsQuasigroup_2772
d_isQuasigroup_2976 v0
  = coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.leftDivides
d_leftDivides_2978 ::
  T_IsLeftBolLoop_2932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_2978 v0
  = coe
      d_leftDivides_2796
      (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.leftDividesʳ
d_leftDivides'691'_2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_2980 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_2980 v8
du_leftDivides'691'_2980 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_2980 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe du_leftDivides'691'_2840 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.leftDividesˡ
d_leftDivides'737'_2982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_2982 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_2982 v8
du_leftDivides'737'_2982 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_2982 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe du_leftDivides'737'_2838 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.refl
d_refl_2984 :: T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny
d_refl_2984 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.reflexive
d_reflexive_2986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2986 v8
du_reflexive_2986 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2986 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsLeftBolLoop._.rightDivides
d_rightDivides_2988 ::
  T_IsLeftBolLoop_2932 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_2988 v0
  = coe
      d_rightDivides_2798
      (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.rightDividesʳ
d_rightDivides'691'_2990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_2990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_2990 v8
du_rightDivides'691'_2990 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_2990 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe du_rightDivides'691'_2844 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.rightDividesˡ
d_rightDivides'737'_2992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_2992 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_2992 v8
du_rightDivides'737'_2992 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_2992 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (coe du_rightDivides'737'_2842 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.setoid
d_setoid_2994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_2994 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2994 v8
du_setoid_2994 ::
  T_IsLeftBolLoop_2932 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_2994 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsLeftBolLoop._.sym
d_sym_2996 ::
  T_IsLeftBolLoop_2932 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2996 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.trans
d_trans_2998 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2998 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.∙-cong
d_'8729''45'cong_3000 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3000 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_2946 (coe v0))))
-- Algebra.Structures.IsLeftBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3002 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3002 v8
du_'8729''45'cong'691'_3002 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3002 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsLeftBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3004 v8
du_'8729''45'cong'737'_3004 ::
  T_IsLeftBolLoop_2932 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3004 v0
  = let v1 = d_isLoop_2946 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsRightBolLoop
d_IsRightBolLoop_3014 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsRightBolLoop_3014
  = C_IsRightBolLoop'46'constructor_110865 T_IsLoop_2854
                                           (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsRightBolLoop.isLoop
d_isLoop_3028 :: T_IsRightBolLoop_3014 -> T_IsLoop_2854
d_isLoop_3028 v0
  = case coe v0 of
      C_IsRightBolLoop'46'constructor_110865 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRightBolLoop.rightBol
d_rightBol_3030 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_rightBol_3030 v0
  = case coe v0 of
      C_IsRightBolLoop'46'constructor_110865 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRightBolLoop._.//-cong
d_'47''47''45'cong_3034 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3034 v0
  = coe
      d_'47''47''45'cong_2794
      (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.//-congʳ
d_'47''47''45'cong'691'_3036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3036 v8
du_'47''47''45'cong'691'_3036 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3036 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_2834 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.//-congˡ
d_'47''47''45'cong'737'_3038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3038 v8
du_'47''47''45'cong'737'_3038 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3038 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_2830 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.\\-cong
d_'92''92''45'cong_3040 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3040 v0
  = coe
      d_'92''92''45'cong_2792
      (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_3042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3042 v8
du_'92''92''45'cong'691'_3042 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3042 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_2826 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_3044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3044 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3044 v8
du_'92''92''45'cong'737'_3044 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3044 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_2822 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.identity
d_identity_3046 ::
  T_IsRightBolLoop_3014 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3046 v0
  = coe d_identity_2870 (coe d_isLoop_3028 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.identityʳ
d_identity'691'_3048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny
d_identity'691'_3048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3048 v8
du_identity'691'_3048 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny
du_identity'691'_3048 v0
  = coe du_identity'691'_2922 (coe d_isLoop_3028 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.identityˡ
d_identity'737'_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny
d_identity'737'_3050 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3050 v8
du_identity'737'_3050 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny
du_identity'737'_3050 v0
  = coe du_identity'737'_2920 (coe d_isLoop_3028 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.isEquivalence
d_isEquivalence_3052 ::
  T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3052 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0))))
-- Algebra.Structures.IsRightBolLoop._.isMagma
d_isMagma_3054 :: T_IsRightBolLoop_3014 -> T_IsMagma_144
d_isMagma_3054 v0
  = coe
      d_isMagma_2790
      (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.isPartialEquivalence
d_isPartialEquivalence_3056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3056 v8
du_isPartialEquivalence_3056 ::
  T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3056 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsRightBolLoop._.isQuasigroup
d_isQuasigroup_3058 :: T_IsRightBolLoop_3014 -> T_IsQuasigroup_2772
d_isQuasigroup_3058 v0
  = coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.leftDivides
d_leftDivides_3060 ::
  T_IsRightBolLoop_3014 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3060 v0
  = coe
      d_leftDivides_2796
      (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.leftDividesʳ
d_leftDivides'691'_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3062 v8
du_leftDivides'691'_3062 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3062 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe du_leftDivides'691'_2840 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.leftDividesˡ
d_leftDivides'737'_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3064 v8
du_leftDivides'737'_3064 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3064 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe du_leftDivides'737'_2838 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.refl
d_refl_3066 :: T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny
d_refl_3066 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.reflexive
d_reflexive_3068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3068 v8
du_reflexive_3068 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3068 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsRightBolLoop._.rightDivides
d_rightDivides_3070 ::
  T_IsRightBolLoop_3014 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3070 v0
  = coe
      d_rightDivides_2798
      (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.rightDividesʳ
d_rightDivides'691'_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3072 v8
du_rightDivides'691'_3072 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3072 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe du_rightDivides'691'_2844 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.rightDividesˡ
d_rightDivides'737'_3074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3074 v8
du_rightDivides'737'_3074 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3074 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (coe du_rightDivides'737'_2842 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.setoid
d_setoid_3076 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3076 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3076 v8
du_setoid_3076 ::
  T_IsRightBolLoop_3014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3076 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsRightBolLoop._.sym
d_sym_3078 ::
  T_IsRightBolLoop_3014 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3078 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.trans
d_trans_3080 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3080 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.∙-cong
d_'8729''45'cong_3082 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3082 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_3028 (coe v0))))
-- Algebra.Structures.IsRightBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3084 v8
du_'8729''45'cong'691'_3084 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3084 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsRightBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3086 v8
du_'8729''45'cong'737'_3086 ::
  T_IsRightBolLoop_3014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3086 v0
  = let v1 = d_isLoop_3028 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsMoufangLoop
d_IsMoufangLoop_3096 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsMoufangLoop_3096
  = C_IsMoufangLoop'46'constructor_113365 T_IsLeftBolLoop_2932
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                                          (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_3112 ::
  T_IsMoufangLoop_3096 -> T_IsLeftBolLoop_2932
d_isLeftBolLoop_3112 v0
  = case coe v0 of
      C_IsMoufangLoop'46'constructor_113365 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop.rightBol
d_rightBol_3114 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_rightBol_3114 v0
  = case coe v0 of
      C_IsMoufangLoop'46'constructor_113365 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop.identical
d_identical_3116 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identical_3116 v0
  = case coe v0 of
      C_IsMoufangLoop'46'constructor_113365 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop._.//-cong
d_'47''47''45'cong_3120 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3120 v0
  = coe
      d_'47''47''45'cong_2794
      (coe
         d_isQuasigroup_2868
         (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.//-congʳ
d_'47''47''45'cong'691'_3122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3122 v8
du_'47''47''45'cong'691'_3122 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3122 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe
            du_'47''47''45'cong'691'_2834 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.//-congˡ
d_'47''47''45'cong'737'_3124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3124 v8
du_'47''47''45'cong'737'_3124 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3124 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe
            du_'47''47''45'cong'737'_2830 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.\\-cong
d_'92''92''45'cong_3126 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3126 v0
  = coe
      d_'92''92''45'cong_2792
      (coe
         d_isQuasigroup_2868
         (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.\\-congʳ
d_'92''92''45'cong'691'_3128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3128 v8
du_'92''92''45'cong'691'_3128 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3128 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe
            du_'92''92''45'cong'691'_2826 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.\\-congˡ
d_'92''92''45'cong'737'_3130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3130 v8
du_'92''92''45'cong'737'_3130 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3130 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe
            du_'92''92''45'cong'737'_2822 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.identity
d_identity_3132 ::
  T_IsMoufangLoop_3096 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3132 v0
  = coe
      d_identity_2870
      (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0)))
-- Algebra.Structures.IsMoufangLoop._.identityʳ
d_identity'691'_3134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny
d_identity'691'_3134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3134 v8
du_identity'691'_3134 :: T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny
du_identity'691'_3134 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe (coe du_identity'691'_2922 (coe d_isLoop_2946 (coe v1)))
-- Algebra.Structures.IsMoufangLoop._.identityˡ
d_identity'737'_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny
d_identity'737'_3136 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3136 v8
du_identity'737'_3136 :: T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny
du_identity'737'_3136 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe (coe du_identity'737'_2920 (coe d_isLoop_2946 (coe v1)))
-- Algebra.Structures.IsMoufangLoop._.isEquivalence
d_isEquivalence_3138 ::
  T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3138 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_2790
         (coe
            d_isQuasigroup_2868
            (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0)))))
-- Algebra.Structures.IsMoufangLoop._.isLoop
d_isLoop_3140 :: T_IsMoufangLoop_3096 -> T_IsLoop_2854
d_isLoop_3140 v0
  = coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))
-- Algebra.Structures.IsMoufangLoop._.isMagma
d_isMagma_3142 :: T_IsMoufangLoop_3096 -> T_IsMagma_144
d_isMagma_3142 v0
  = coe
      d_isMagma_2790
      (coe
         d_isQuasigroup_2868
         (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.isPartialEquivalence
d_isPartialEquivalence_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3144 v8
du_isPartialEquivalence_3144 ::
  T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3144 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_2868 (coe v2) in
          coe
            (let v4 = d_isMagma_2790 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
                  (coe d_isEquivalence_152 (coe v4))))))
-- Algebra.Structures.IsMoufangLoop._.isQuasigroup
d_isQuasigroup_3146 :: T_IsMoufangLoop_3096 -> T_IsQuasigroup_2772
d_isQuasigroup_3146 v0
  = coe
      d_isQuasigroup_2868
      (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0)))
-- Algebra.Structures.IsMoufangLoop._.leftBol
d_leftBol_3148 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leftBol_3148 v0
  = coe d_leftBol_2948 (coe d_isLeftBolLoop_3112 (coe v0))
-- Algebra.Structures.IsMoufangLoop._.leftDivides
d_leftDivides_3150 ::
  T_IsMoufangLoop_3096 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3150 v0
  = coe
      d_leftDivides_2796
      (coe
         d_isQuasigroup_2868
         (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.leftDividesʳ
d_leftDivides'691'_3152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3152 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3152 v8
du_leftDivides'691'_3152 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3152 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe du_leftDivides'691'_2840 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.leftDividesˡ
d_leftDivides'737'_3154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3154 v8
du_leftDivides'737'_3154 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3154 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe du_leftDivides'737'_2838 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.refl
d_refl_3156 :: T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny
d_refl_3156 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe
               d_isQuasigroup_2868
               (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.reflexive
d_reflexive_3158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3158 v8
du_reflexive_3158 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3158 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_2868 (coe v2) in
          coe
            (let v4 = d_isMagma_2790 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                    (coe d_isEquivalence_152 (coe v4)) v5))))
-- Algebra.Structures.IsMoufangLoop._.rightDivides
d_rightDivides_3160 ::
  T_IsMoufangLoop_3096 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3160 v0
  = coe
      d_rightDivides_2798
      (coe
         d_isQuasigroup_2868
         (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.rightDividesʳ
d_rightDivides'691'_3162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3162 v8
du_rightDivides'691'_3162 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3162 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe du_rightDivides'691'_2844 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.rightDividesˡ
d_rightDivides'737'_3164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3164 v8
du_rightDivides'737'_3164 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3164 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (coe du_rightDivides'737'_2842 (coe d_isQuasigroup_2868 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.setoid
d_setoid_3166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3166 v8
du_setoid_3166 ::
  T_IsMoufangLoop_3096 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3166 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_2868 (coe v2) in
          coe (coe du_setoid_168 (coe d_isMagma_2790 (coe v3)))))
-- Algebra.Structures.IsMoufangLoop._.sym
d_sym_3168 ::
  T_IsMoufangLoop_3096 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe
               d_isQuasigroup_2868
               (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.trans
d_trans_3170 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe
               d_isQuasigroup_2868
               (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.∙-cong
d_'8729''45'cong_3172 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3172 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_2790
         (coe
            d_isQuasigroup_2868
            (coe d_isLoop_2946 (coe d_isLeftBolLoop_3112 (coe v0)))))
-- Algebra.Structures.IsMoufangLoop._.∙-congʳ
d_'8729''45'cong'691'_3174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3174 v8
du_'8729''45'cong'691'_3174 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3174 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_2868 (coe v2) in
          coe
            (coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v3)))))
-- Algebra.Structures.IsMoufangLoop._.∙-congˡ
d_'8729''45'cong'737'_3176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3176 v8
du_'8729''45'cong'737'_3176 ::
  T_IsMoufangLoop_3096 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3176 v0
  = let v1 = d_isLeftBolLoop_3112 (coe v0) in
    coe
      (let v2 = d_isLoop_2946 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_2868 (coe v2) in
          coe
            (coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v3)))))
-- Algebra.Structures.IsMiddleBolLoop
d_IsMiddleBolLoop_3186 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsMiddleBolLoop_3186
  = C_IsMiddleBolLoop'46'constructor_116069 T_IsLoop_2854
                                            (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMiddleBolLoop.isLoop
d_isLoop_3200 :: T_IsMiddleBolLoop_3186 -> T_IsLoop_2854
d_isLoop_3200 v0
  = case coe v0 of
      C_IsMiddleBolLoop'46'constructor_116069 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMiddleBolLoop.middleBol
d_middleBol_3202 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_middleBol_3202 v0
  = case coe v0 of
      C_IsMiddleBolLoop'46'constructor_116069 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMiddleBolLoop._.//-cong
d_'47''47''45'cong_3206 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3206 v0
  = coe
      d_'47''47''45'cong_2794
      (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.//-congʳ
d_'47''47''45'cong'691'_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3208 v8
du_'47''47''45'cong'691'_3208 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3208 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_2834 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.//-congˡ
d_'47''47''45'cong'737'_3210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3210 v8
du_'47''47''45'cong'737'_3210 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3210 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_2830 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-cong
d_'92''92''45'cong_3212 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3212 v0
  = coe
      d_'92''92''45'cong_2792
      (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_3214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3214 v8
du_'92''92''45'cong'691'_3214 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3214 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_2826 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_3216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3216 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3216 v8
du_'92''92''45'cong'737'_3216 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3216 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_2822 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.identity
d_identity_3218 ::
  T_IsMiddleBolLoop_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3218 v0
  = coe d_identity_2870 (coe d_isLoop_3200 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.identityʳ
d_identity'691'_3220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny
d_identity'691'_3220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3220 v8
du_identity'691'_3220 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny
du_identity'691'_3220 v0
  = coe du_identity'691'_2922 (coe d_isLoop_3200 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.identityˡ
d_identity'737'_3222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny
d_identity'737'_3222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3222 v8
du_identity'737'_3222 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny
du_identity'737'_3222 v0
  = coe du_identity'737'_2920 (coe d_isLoop_3200 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.isEquivalence
d_isEquivalence_3224 ::
  T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_3224 v0
  = coe
      d_isEquivalence_152
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0))))
-- Algebra.Structures.IsMiddleBolLoop._.isMagma
d_isMagma_3226 :: T_IsMiddleBolLoop_3186 -> T_IsMagma_144
d_isMagma_3226 v0
  = coe
      d_isMagma_2790
      (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.isPartialEquivalence
d_isPartialEquivalence_3228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3228 v8
du_isPartialEquivalence_3228 ::
  T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3228 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_42
               (coe d_isEquivalence_152 (coe v3)))))
-- Algebra.Structures.IsMiddleBolLoop._.isQuasigroup
d_isQuasigroup_3230 ::
  T_IsMiddleBolLoop_3186 -> T_IsQuasigroup_2772
d_isQuasigroup_3230 v0
  = coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.leftDivides
d_leftDivides_3232 ::
  T_IsMiddleBolLoop_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3232 v0
  = coe
      d_leftDivides_2796
      (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.leftDividesʳ
d_leftDivides'691'_3234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3234 v8
du_leftDivides'691'_3234 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3234 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe du_leftDivides'691'_2840 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.leftDividesˡ
d_leftDivides'737'_3236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3236 v8
du_leftDivides'737'_3236 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3236 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe du_leftDivides'737'_2838 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.refl
d_refl_3238 :: T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny
d_refl_3238 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_34
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.reflexive
d_reflexive_3240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3240 v8
du_reflexive_3240 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3240 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe
         (let v3 = d_isMagma_2790 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40
                 (coe d_isEquivalence_152 (coe v3)) v4)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDivides
d_rightDivides_3242 ::
  T_IsMiddleBolLoop_3186 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3242 v0
  = coe
      d_rightDivides_2798
      (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDividesʳ
d_rightDivides'691'_3244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3244 v8
du_rightDivides'691'_3244 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3244 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe du_rightDivides'691'_2844 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDividesˡ
d_rightDivides'737'_3246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3246 v8
du_rightDivides'737'_3246 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3246 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (coe du_rightDivides'737'_2842 (coe d_isQuasigroup_2868 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.setoid
d_setoid_3248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_3248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3248 v8
du_setoid_3248 ::
  T_IsMiddleBolLoop_3186 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_3248 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_setoid_168 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsMiddleBolLoop._.sym
d_sym_3250 ::
  T_IsMiddleBolLoop_3186 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3250 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_36
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.trans
d_trans_3252 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3252 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
      (coe
         d_isEquivalence_152
         (coe
            d_isMagma_2790
            (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-cong
d_'8729''45'cong_3254 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3254 v0
  = coe
      d_'8729''45'cong_154
      (coe
         d_isMagma_2790
         (coe d_isQuasigroup_2868 (coe d_isLoop_3200 (coe v0))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3256 v8
du_'8729''45'cong'691'_3256 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3256 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'691'_174 (coe d_isMagma_2790 (coe v2))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3258 v8
du_'8729''45'cong'737'_3258 ::
  T_IsMiddleBolLoop_3186 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3258 v0
  = let v1 = d_isLoop_3200 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_2868 (coe v1) in
       coe (coe du_'8729''45'cong'737'_170 (coe d_isMagma_2790 (coe v2))))
