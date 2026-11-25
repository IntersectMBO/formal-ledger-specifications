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
import qualified MAlonzo.Code.Algebra.Consequences.Base
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
-- Algebra.Structures._.AlmostRightCancellative
d_AlmostRightCancellative_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_32 = erased
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
-- Algebra.Structures._.Cancellative
d_Cancellative_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_38 = erased
-- Algebra.Structures._.Commutative
d_Commutative_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_42 = erased
-- Algebra.Structures._.Congruent₁
d_Congruent'8321'_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_44 = erased
-- Algebra.Structures._.Congruent₂
d_Congruent'8322'_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_46 = erased
-- Algebra.Structures._.Flexible
d_Flexible_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_50 = erased
-- Algebra.Structures._.Idempotent
d_Idempotent_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_52 = erased
-- Algebra.Structures._.Identical
d_Identical_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_56 = erased
-- Algebra.Structures._.Identity
d_Identity_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_58 = erased
-- Algebra.Structures._.Inverse
d_Inverse_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_62 = erased
-- Algebra.Structures._.LeftAlternative
d_LeftAlternative_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_68 = erased
-- Algebra.Structures._.LeftBol
d_LeftBol_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_70 = erased
-- Algebra.Structures._.LeftCancellative
d_LeftCancellative_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_72 = erased
-- Algebra.Structures._.LeftCongruent
d_LeftCongruent_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_74 = erased
-- Algebra.Structures._.LeftDivides
d_LeftDivides_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_78 = erased
-- Algebra.Structures._.LeftDividesʳ
d_LeftDivides'691'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_80 = erased
-- Algebra.Structures._.LeftDividesˡ
d_LeftDivides'737'_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_82 = erased
-- Algebra.Structures._.LeftIdentity
d_LeftIdentity_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_84 = erased
-- Algebra.Structures._.LeftInverse
d_LeftInverse_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_86 = erased
-- Algebra.Structures._.LeftSemimedial
d_LeftSemimedial_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_90 = erased
-- Algebra.Structures._.LeftZero
d_LeftZero_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_92 = erased
-- Algebra.Structures._.Medial
d_Medial_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_94 = erased
-- Algebra.Structures._.MiddleBol
d_MiddleBol_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_96 = erased
-- Algebra.Structures._.RightAlternative
d_RightAlternative_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_98 = erased
-- Algebra.Structures._.RightBol
d_RightBol_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_100 = erased
-- Algebra.Structures._.RightCancellative
d_RightCancellative_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_102 = erased
-- Algebra.Structures._.RightCongruent
d_RightCongruent_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_104 = erased
-- Algebra.Structures._.RightDivides
d_RightDivides_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_108 = erased
-- Algebra.Structures._.RightDividesʳ
d_RightDivides'691'_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_110 = erased
-- Algebra.Structures._.RightDividesˡ
d_RightDivides'737'_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_112 = erased
-- Algebra.Structures._.RightIdentity
d_RightIdentity_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_114 = erased
-- Algebra.Structures._.RightInverse
d_RightInverse_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_116 = erased
-- Algebra.Structures._.RightSemimedial
d_RightSemimedial_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_120 = erased
-- Algebra.Structures._.RightZero
d_RightZero_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_122 = erased
-- Algebra.Structures._.Selective
d_Selective_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_124 = erased
-- Algebra.Structures._.Semimedial
d_Semimedial_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_128 = erased
-- Algebra.Structures._.StarDestructive
d_StarDestructive_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_130 = erased
-- Algebra.Structures._.StarExpansive
d_StarExpansive_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_132 = erased
-- Algebra.Structures._.StarLeftDestructive
d_StarLeftDestructive_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_134 = erased
-- Algebra.Structures._.StarLeftExpansive
d_StarLeftExpansive_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_136 = erased
-- Algebra.Structures._.StarRightDestructive
d_StarRightDestructive_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_138 = erased
-- Algebra.Structures._.StarRightExpansive
d_StarRightExpansive_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_140 = erased
-- Algebra.Structures._.Zero
d_Zero_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_142 = erased
-- Algebra.Structures.IsSuccessorSet
d_IsSuccessorSet_148 a0 a1 a2 a3 a4 a5 = ()
data T_IsSuccessorSet_148
  = C_constructor_176 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsSuccessorSet.isEquivalence
d_isEquivalence_158 ::
  T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_158 v0
  = case coe v0 of
      C_constructor_176 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSuccessorSet.suc#-cong
d_suc'35''45'cong_160 ::
  T_IsSuccessorSet_148 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_suc'35''45'cong_160 v0
  = case coe v0 of
      C_constructor_176 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSuccessorSet._.isPartialEquivalence
d_isPartialEquivalence_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_164 v6
du_isPartialEquivalence_164 ::
  T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_164 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_158 (coe v0))
-- Algebra.Structures.IsSuccessorSet._.refl
d_refl_166 :: T_IsSuccessorSet_148 -> AgdaAny -> AgdaAny
d_refl_166 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_158 (coe v0))
-- Algebra.Structures.IsSuccessorSet._.reflexive
d_reflexive_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSuccessorSet_148 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_168 v6
du_reflexive_168 ::
  T_IsSuccessorSet_148 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_158 (coe v0)) v1
-- Algebra.Structures.IsSuccessorSet._.sym
d_sym_170 ::
  T_IsSuccessorSet_148 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_170 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_158 (coe v0))
-- Algebra.Structures.IsSuccessorSet._.trans
d_trans_172 ::
  T_IsSuccessorSet_148 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_172 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_158 (coe v0))
-- Algebra.Structures.IsSuccessorSet.setoid
d_setoid_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_174 v6
du_setoid_174 ::
  T_IsSuccessorSet_148 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_174 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (d_isEquivalence_158 (coe v0))
-- Algebra.Structures.IsMagma
d_IsMagma_180 a0 a1 a2 a3 a4 = ()
data T_IsMagma_180
  = C_constructor_212 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
                      (AgdaAny ->
                       AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMagma.isEquivalence
d_isEquivalence_188 ::
  T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_188 v0
  = case coe v0 of
      C_constructor_212 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma.∙-cong
d_'8729''45'cong_190 ::
  T_IsMagma_180 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_190 v0
  = case coe v0 of
      C_constructor_212 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMagma._.isPartialEquivalence
d_isPartialEquivalence_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_194 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_194 v5
du_isPartialEquivalence_194 ::
  T_IsMagma_180 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_194 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_188 (coe v0))
-- Algebra.Structures.IsMagma._.refl
d_refl_196 :: T_IsMagma_180 -> AgdaAny -> AgdaAny
d_refl_196 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe v0))
-- Algebra.Structures.IsMagma._.reflexive
d_reflexive_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_198 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_198 v5
du_reflexive_198 ::
  T_IsMagma_180 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_188 (coe v0)) v1
-- Algebra.Structures.IsMagma._.sym
d_sym_200 ::
  T_IsMagma_180 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_200 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe v0))
-- Algebra.Structures.IsMagma._.trans
d_trans_202 ::
  T_IsMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe v0))
-- Algebra.Structures.IsMagma.setoid
d_setoid_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_180 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_204 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_204 v5
du_setoid_204 ::
  T_IsMagma_180 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_204 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (d_isEquivalence_188 (coe v0))
-- Algebra.Structures.IsMagma._.∙-congʳ
d_'8729''45'cong'691'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_208 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_208 v5
du_'8729''45'cong'691'_208 ::
  T_IsMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_208 v0
  = let v1 = coe du_setoid_204 (coe v0) in
    coe
      (let v2 = d_'8729''45'cong_190 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
            (coe v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Algebra.Structures.IsMagma._.∙-congˡ
d_'8729''45'cong'737'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_210 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_210 v5
du_'8729''45'cong'737'_210 ::
  T_IsMagma_180 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_210 v0
  = let v1 = coe du_setoid_204 (coe v0) in
    coe
      (let v2 = d_'8729''45'cong_190 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
            (coe v2)
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_refl_36
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Algebra.Structures.IsCommutativeMagma
d_IsCommutativeMagma_216 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeMagma_216
  = C_constructor_250 T_IsMagma_180 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMagma.isMagma
d_isMagma_224 :: T_IsCommutativeMagma_216 -> T_IsMagma_180
d_isMagma_224 v0
  = case coe v0 of
      C_constructor_250 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma.comm
d_comm_226 ::
  T_IsCommutativeMagma_216 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_226 v0
  = case coe v0 of
      C_constructor_250 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMagma._.isEquivalence
d_isEquivalence_230 ::
  T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_230 v0
  = coe d_isEquivalence_188 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.isPartialEquivalence
d_isPartialEquivalence_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_232 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_232 v5
du_isPartialEquivalence_232 ::
  T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_232 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsCommutativeMagma._.refl
d_refl_234 :: T_IsCommutativeMagma_216 -> AgdaAny -> AgdaAny
d_refl_234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.reflexive
d_reflexive_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_216 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_236 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_236 v5
du_reflexive_236 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_236 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsCommutativeMagma._.setoid
d_setoid_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_238 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_238 v5
du_setoid_238 ::
  T_IsCommutativeMagma_216 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_238 v0 = coe du_setoid_204 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.sym
d_sym_240 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_240 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.trans
d_trans_242 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_242 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_224 (coe v0)))
-- Algebra.Structures.IsCommutativeMagma._.∙-cong
d_'8729''45'cong_244 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_244 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_224 (coe v0))
-- Algebra.Structures.IsCommutativeMagma._.∙-congʳ
d_'8729''45'cong'691'_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_246 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_246 v5
du_'8729''45'cong'691'_246 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_246 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsCommutativeMagma._.∙-congˡ
d_'8729''45'cong'737'_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_248 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_248 v5
du_'8729''45'cong'737'_248 ::
  T_IsCommutativeMagma_216 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_248 v0
  = let v1 = d_isMagma_224 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsIdempotentMagma
d_IsIdempotentMagma_254 a0 a1 a2 a3 a4 = ()
data T_IsIdempotentMagma_254
  = C_constructor_288 T_IsMagma_180 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentMagma.isMagma
d_isMagma_262 :: T_IsIdempotentMagma_254 -> T_IsMagma_180
d_isMagma_262 v0
  = case coe v0 of
      C_constructor_288 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMagma.idem
d_idem_264 :: T_IsIdempotentMagma_254 -> AgdaAny -> AgdaAny
d_idem_264 v0
  = case coe v0 of
      C_constructor_288 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMagma._.isEquivalence
d_isEquivalence_268 ::
  T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_268 v0
  = coe d_isEquivalence_188 (coe d_isMagma_262 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.isPartialEquivalence
d_isPartialEquivalence_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_270 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_270 v5
du_isPartialEquivalence_270 ::
  T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_270 v0
  = let v1 = d_isMagma_262 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsIdempotentMagma._.refl
d_refl_272 :: T_IsIdempotentMagma_254 -> AgdaAny -> AgdaAny
d_refl_272 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_262 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.reflexive
d_reflexive_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_254 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_274 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_274 v5
du_reflexive_274 ::
  T_IsIdempotentMagma_254 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_274 v0
  = let v1 = d_isMagma_262 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsIdempotentMagma._.setoid
d_setoid_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_276 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_276 v5
du_setoid_276 ::
  T_IsIdempotentMagma_254 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_276 v0 = coe du_setoid_204 (coe d_isMagma_262 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.sym
d_sym_278 ::
  T_IsIdempotentMagma_254 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_278 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_262 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.trans
d_trans_280 ::
  T_IsIdempotentMagma_254 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_280 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_262 (coe v0)))
-- Algebra.Structures.IsIdempotentMagma._.∙-cong
d_'8729''45'cong_282 ::
  T_IsIdempotentMagma_254 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_282 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_262 (coe v0))
-- Algebra.Structures.IsIdempotentMagma._.∙-congʳ
d_'8729''45'cong'691'_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_254 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_284 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_284 v5
du_'8729''45'cong'691'_284 ::
  T_IsIdempotentMagma_254 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_284 v0
  = let v1 = d_isMagma_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsIdempotentMagma._.∙-congˡ
d_'8729''45'cong'737'_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsIdempotentMagma_254 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_286 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_286 v5
du_'8729''45'cong'737'_286 ::
  T_IsIdempotentMagma_254 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_286 v0
  = let v1 = d_isMagma_262 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsAlternativeMagma
d_IsAlternativeMagma_292 a0 a1 a2 a3 a4 = ()
data T_IsAlternativeMagma_292
  = C_constructor_330 T_IsMagma_180
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsAlternativeMagma.isMagma
d_isMagma_300 :: T_IsAlternativeMagma_292 -> T_IsMagma_180
d_isMagma_300 v0
  = case coe v0 of
      C_constructor_330 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAlternativeMagma.alter
d_alter_302 ::
  T_IsAlternativeMagma_292 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_alter_302 v0
  = case coe v0 of
      C_constructor_330 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAlternativeMagma._.isEquivalence
d_isEquivalence_306 ::
  T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_306 v0
  = coe d_isEquivalence_188 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.isPartialEquivalence
d_isPartialEquivalence_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_308 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_308 v5
du_isPartialEquivalence_308 ::
  T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_308 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsAlternativeMagma._.refl
d_refl_310 :: T_IsAlternativeMagma_292 -> AgdaAny -> AgdaAny
d_refl_310 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.reflexive
d_reflexive_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_312 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_312 v5
du_reflexive_312 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_312 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsAlternativeMagma._.setoid
d_setoid_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_314 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_314 v5
du_setoid_314 ::
  T_IsAlternativeMagma_292 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_314 v0 = coe du_setoid_204 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.sym
d_sym_316 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.trans
d_trans_318 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_300 (coe v0)))
-- Algebra.Structures.IsAlternativeMagma._.∙-cong
d_'8729''45'cong_320 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_320 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_300 (coe v0))
-- Algebra.Structures.IsAlternativeMagma._.∙-congʳ
d_'8729''45'cong'691'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_322 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_322 v5
du_'8729''45'cong'691'_322 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_322 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsAlternativeMagma._.∙-congˡ
d_'8729''45'cong'737'_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_324 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_324 v5
du_'8729''45'cong'737'_324 ::
  T_IsAlternativeMagma_292 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_324 v0
  = let v1 = d_isMagma_300 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsAlternativeMagma.alternativeˡ
d_alternative'737'_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny
d_alternative'737'_326 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_alternative'737'_326 v5
du_alternative'737'_326 ::
  T_IsAlternativeMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny
du_alternative'737'_326 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_alter_302 (coe v0))
-- Algebra.Structures.IsAlternativeMagma.alternativeʳ
d_alternative'691'_328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsAlternativeMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny
d_alternative'691'_328 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_alternative'691'_328 v5
du_alternative'691'_328 ::
  T_IsAlternativeMagma_292 -> AgdaAny -> AgdaAny -> AgdaAny
du_alternative'691'_328 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_alter_302 (coe v0))
-- Algebra.Structures.IsFlexibleMagma
d_IsFlexibleMagma_334 a0 a1 a2 a3 a4 = ()
data T_IsFlexibleMagma_334
  = C_constructor_368 T_IsMagma_180 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsFlexibleMagma.isMagma
d_isMagma_342 :: T_IsFlexibleMagma_334 -> T_IsMagma_180
d_isMagma_342 v0
  = case coe v0 of
      C_constructor_368 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsFlexibleMagma.flex
d_flex_344 ::
  T_IsFlexibleMagma_334 -> AgdaAny -> AgdaAny -> AgdaAny
d_flex_344 v0
  = case coe v0 of
      C_constructor_368 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsFlexibleMagma._.isEquivalence
d_isEquivalence_348 ::
  T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_348 v0
  = coe d_isEquivalence_188 (coe d_isMagma_342 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.isPartialEquivalence
d_isPartialEquivalence_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_350 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_350 v5
du_isPartialEquivalence_350 ::
  T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_350 v0
  = let v1 = d_isMagma_342 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsFlexibleMagma._.refl
d_refl_352 :: T_IsFlexibleMagma_334 -> AgdaAny -> AgdaAny
d_refl_352 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_342 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.reflexive
d_reflexive_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_334 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_354 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_354 v5
du_reflexive_354 ::
  T_IsFlexibleMagma_334 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_354 v0
  = let v1 = d_isMagma_342 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsFlexibleMagma._.setoid
d_setoid_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_356 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_356 v5
du_setoid_356 ::
  T_IsFlexibleMagma_334 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_356 v0 = coe du_setoid_204 (coe d_isMagma_342 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.sym
d_sym_358 ::
  T_IsFlexibleMagma_334 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_358 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_342 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.trans
d_trans_360 ::
  T_IsFlexibleMagma_334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_360 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_342 (coe v0)))
-- Algebra.Structures.IsFlexibleMagma._.∙-cong
d_'8729''45'cong_362 ::
  T_IsFlexibleMagma_334 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_362 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_342 (coe v0))
-- Algebra.Structures.IsFlexibleMagma._.∙-congʳ
d_'8729''45'cong'691'_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_364 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_364 v5
du_'8729''45'cong'691'_364 ::
  T_IsFlexibleMagma_334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_364 v0
  = let v1 = d_isMagma_342 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsFlexibleMagma._.∙-congˡ
d_'8729''45'cong'737'_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsFlexibleMagma_334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_366 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_366 v5
du_'8729''45'cong'737'_366 ::
  T_IsFlexibleMagma_334 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_366 v0
  = let v1 = d_isMagma_342 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsMedialMagma
d_IsMedialMagma_372 a0 a1 a2 a3 a4 = ()
data T_IsMedialMagma_372
  = C_constructor_406 T_IsMagma_180
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMedialMagma.isMagma
d_isMagma_380 :: T_IsMedialMagma_372 -> T_IsMagma_180
d_isMagma_380 v0
  = case coe v0 of
      C_constructor_406 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMedialMagma.medial
d_medial_382 ::
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_medial_382 v0
  = case coe v0 of
      C_constructor_406 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMedialMagma._.isEquivalence
d_isEquivalence_386 ::
  T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_386 v0
  = coe d_isEquivalence_188 (coe d_isMagma_380 (coe v0))
-- Algebra.Structures.IsMedialMagma._.isPartialEquivalence
d_isPartialEquivalence_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_388 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_388 v5
du_isPartialEquivalence_388 ::
  T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_388 v0
  = let v1 = d_isMagma_380 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsMedialMagma._.refl
d_refl_390 :: T_IsMedialMagma_372 -> AgdaAny -> AgdaAny
d_refl_390 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_380 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.reflexive
d_reflexive_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_392 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_392 v5
du_reflexive_392 ::
  T_IsMedialMagma_372 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_392 v0
  = let v1 = d_isMagma_380 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsMedialMagma._.setoid
d_setoid_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_394 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_394 v5
du_setoid_394 ::
  T_IsMedialMagma_372 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_394 v0 = coe du_setoid_204 (coe d_isMagma_380 (coe v0))
-- Algebra.Structures.IsMedialMagma._.sym
d_sym_396 ::
  T_IsMedialMagma_372 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_380 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.trans
d_trans_398 ::
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_398 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_380 (coe v0)))
-- Algebra.Structures.IsMedialMagma._.∙-cong
d_'8729''45'cong_400 ::
  T_IsMedialMagma_372 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_400 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_380 (coe v0))
-- Algebra.Structures.IsMedialMagma._.∙-congʳ
d_'8729''45'cong'691'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_402 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_402 v5
du_'8729''45'cong'691'_402 ::
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_402 v0
  = let v1 = d_isMagma_380 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsMedialMagma._.∙-congˡ
d_'8729''45'cong'737'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_404 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_404 v5
du_'8729''45'cong'737'_404 ::
  T_IsMedialMagma_372 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_404 v0
  = let v1 = d_isMagma_380 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemimedialMagma
d_IsSemimedialMagma_410 a0 a1 a2 a3 a4 = ()
data T_IsSemimedialMagma_410
  = C_constructor_448 T_IsMagma_180
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemimedialMagma.isMagma
d_isMagma_418 :: T_IsSemimedialMagma_410 -> T_IsMagma_180
d_isMagma_418 v0
  = case coe v0 of
      C_constructor_448 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemimedialMagma.semiMedial
d_semiMedial_420 ::
  T_IsSemimedialMagma_410 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_semiMedial_420 v0
  = case coe v0 of
      C_constructor_448 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemimedialMagma._.isEquivalence
d_isEquivalence_424 ::
  T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_424 v0
  = coe d_isEquivalence_188 (coe d_isMagma_418 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.isPartialEquivalence
d_isPartialEquivalence_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_426 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_426 v5
du_isPartialEquivalence_426 ::
  T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_426 v0
  = let v1 = d_isMagma_418 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsSemimedialMagma._.refl
d_refl_428 :: T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny
d_refl_428 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_418 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.reflexive
d_reflexive_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_430 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_430 v5
du_reflexive_430 ::
  T_IsSemimedialMagma_410 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_430 v0
  = let v1 = d_isMagma_418 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsSemimedialMagma._.setoid
d_setoid_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_432 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_432 v5
du_setoid_432 ::
  T_IsSemimedialMagma_410 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_432 v0 = coe du_setoid_204 (coe d_isMagma_418 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.sym
d_sym_434 ::
  T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_434 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_418 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.trans
d_trans_436 ::
  T_IsSemimedialMagma_410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_436 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_418 (coe v0)))
-- Algebra.Structures.IsSemimedialMagma._.∙-cong
d_'8729''45'cong_438 ::
  T_IsSemimedialMagma_410 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_438 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_418 (coe v0))
-- Algebra.Structures.IsSemimedialMagma._.∙-congʳ
d_'8729''45'cong'691'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_440 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_440 v5
du_'8729''45'cong'691'_440 ::
  T_IsSemimedialMagma_410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_440 v0
  = let v1 = d_isMagma_418 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemimedialMagma._.∙-congˡ
d_'8729''45'cong'737'_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_442 v5
du_'8729''45'cong'737'_442 ::
  T_IsSemimedialMagma_410 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_442 v0
  = let v1 = d_isMagma_418 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemimedialMagma.semimedialˡ
d_semimedial'737'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'737'_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_semimedial'737'_444 v5
du_semimedial'737'_444 ::
  T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'737'_444 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_semiMedial_420 (coe v0))
-- Algebra.Structures.IsSemimedialMagma.semimedialʳ
d_semimedial'691'_446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_semimedial'691'_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_semimedial'691'_446 v5
du_semimedial'691'_446 ::
  T_IsSemimedialMagma_410 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_semimedial'691'_446 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_semiMedial_420 (coe v0))
-- Algebra.Structures.IsSelectiveMagma
d_IsSelectiveMagma_452 a0 a1 a2 a3 a4 = ()
data T_IsSelectiveMagma_452
  = C_constructor_486 T_IsMagma_180
                      (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Algebra.Structures.IsSelectiveMagma.isMagma
d_isMagma_460 :: T_IsSelectiveMagma_452 -> T_IsMagma_180
d_isMagma_460 v0
  = case coe v0 of
      C_constructor_486 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma.sel
d_sel_462 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_462 v0
  = case coe v0 of
      C_constructor_486 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSelectiveMagma._.isEquivalence
d_isEquivalence_466 ::
  T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_466 v0
  = coe d_isEquivalence_188 (coe d_isMagma_460 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.isPartialEquivalence
d_isPartialEquivalence_468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_468 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_468 v5
du_isPartialEquivalence_468 ::
  T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_468 v0
  = let v1 = d_isMagma_460 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsSelectiveMagma._.refl
d_refl_470 :: T_IsSelectiveMagma_452 -> AgdaAny -> AgdaAny
d_refl_470 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_460 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.reflexive
d_reflexive_472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_452 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_472 v5
du_reflexive_472 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_472 v0
  = let v1 = d_isMagma_460 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsSelectiveMagma._.setoid
d_setoid_474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_474 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_474 v5
du_setoid_474 ::
  T_IsSelectiveMagma_452 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_474 v0 = coe du_setoid_204 (coe d_isMagma_460 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.sym
d_sym_476 ::
  T_IsSelectiveMagma_452 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_476 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_460 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.trans
d_trans_478 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_478 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_460 (coe v0)))
-- Algebra.Structures.IsSelectiveMagma._.∙-cong
d_'8729''45'cong_480 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_480 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_460 (coe v0))
-- Algebra.Structures.IsSelectiveMagma._.∙-congʳ
d_'8729''45'cong'691'_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_482 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_482 v5
du_'8729''45'cong'691'_482 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_482 v0
  = let v1 = d_isMagma_460 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSelectiveMagma._.∙-congˡ
d_'8729''45'cong'737'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_484 v5
du_'8729''45'cong'737'_484 ::
  T_IsSelectiveMagma_452 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_484 v0
  = let v1 = d_isMagma_460 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemigroup
d_IsSemigroup_490 a0 a1 a2 a3 a4 = ()
data T_IsSemigroup_490
  = C_constructor_524 T_IsMagma_180
                      (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsSemigroup.isMagma
d_isMagma_498 :: T_IsSemigroup_490 -> T_IsMagma_180
d_isMagma_498 v0
  = case coe v0 of
      C_constructor_524 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup.assoc
d_assoc_500 ::
  T_IsSemigroup_490 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_500 v0
  = case coe v0 of
      C_constructor_524 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemigroup._.isEquivalence
d_isEquivalence_504 ::
  T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_504 v0
  = coe d_isEquivalence_188 (coe d_isMagma_498 (coe v0))
-- Algebra.Structures.IsSemigroup._.isPartialEquivalence
d_isPartialEquivalence_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_506 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_506 v5
du_isPartialEquivalence_506 ::
  T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_506 v0
  = let v1 = d_isMagma_498 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsSemigroup._.refl
d_refl_508 :: T_IsSemigroup_490 -> AgdaAny -> AgdaAny
d_refl_508 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_498 (coe v0)))
-- Algebra.Structures.IsSemigroup._.reflexive
d_reflexive_510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_490 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_510 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_510 v5
du_reflexive_510 ::
  T_IsSemigroup_490 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_510 v0
  = let v1 = d_isMagma_498 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsSemigroup._.setoid
d_setoid_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_512 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_512 v5
du_setoid_512 ::
  T_IsSemigroup_490 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_512 v0 = coe du_setoid_204 (coe d_isMagma_498 (coe v0))
-- Algebra.Structures.IsSemigroup._.sym
d_sym_514 ::
  T_IsSemigroup_490 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_498 (coe v0)))
-- Algebra.Structures.IsSemigroup._.trans
d_trans_516 ::
  T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_516 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_498 (coe v0)))
-- Algebra.Structures.IsSemigroup._.∙-cong
d_'8729''45'cong_518 ::
  T_IsSemigroup_490 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_518 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_498 (coe v0))
-- Algebra.Structures.IsSemigroup._.∙-congʳ
d_'8729''45'cong'691'_520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_520 v5
du_'8729''45'cong'691'_520 ::
  T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_520 v0
  = let v1 = d_isMagma_498 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemigroup._.∙-congˡ
d_'8729''45'cong'737'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_522 v5
du_'8729''45'cong'737'_522 ::
  T_IsSemigroup_490 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_522 v0
  = let v1 = d_isMagma_498 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsBand
d_IsBand_528 a0 a1 a2 a3 a4 = ()
data T_IsBand_528
  = C_constructor_566 T_IsSemigroup_490 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBand.isSemigroup
d_isSemigroup_536 :: T_IsBand_528 -> T_IsSemigroup_490
d_isSemigroup_536 v0
  = case coe v0 of
      C_constructor_566 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand.idem
d_idem_538 :: T_IsBand_528 -> AgdaAny -> AgdaAny
d_idem_538 v0
  = case coe v0 of
      C_constructor_566 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBand._.assoc
d_assoc_542 ::
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_542 v0 = coe d_assoc_500 (coe d_isSemigroup_536 (coe v0))
-- Algebra.Structures.IsBand._.isEquivalence
d_isEquivalence_544 ::
  T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_544 v0
  = coe
      d_isEquivalence_188
      (coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0)))
-- Algebra.Structures.IsBand._.isMagma
d_isMagma_546 :: T_IsBand_528 -> T_IsMagma_180
d_isMagma_546 v0
  = coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0))
-- Algebra.Structures.IsBand._.isPartialEquivalence
d_isPartialEquivalence_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_548 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_548 v5
du_isPartialEquivalence_548 ::
  T_IsBand_528 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_548 v0
  = let v1 = d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.IsBand._.refl
d_refl_550 :: T_IsBand_528 -> AgdaAny -> AgdaAny
d_refl_550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0))))
-- Algebra.Structures.IsBand._.reflexive
d_reflexive_552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_528 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_552 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_552 v5
du_reflexive_552 ::
  T_IsBand_528 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_552 v0
  = let v1 = d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe d_isEquivalence_188 (coe v2)) v3))
-- Algebra.Structures.IsBand._.setoid
d_setoid_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_528 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_554 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_554 v5
du_setoid_554 ::
  T_IsBand_528 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_554 v0
  = let v1 = d_isSemigroup_536 (coe v0) in
    coe (coe du_setoid_204 (coe d_isMagma_498 (coe v1)))
-- Algebra.Structures.IsBand._.sym
d_sym_556 ::
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_556 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0))))
-- Algebra.Structures.IsBand._.trans
d_trans_558 ::
  T_IsBand_528 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_558 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0))))
-- Algebra.Structures.IsBand._.∙-cong
d_'8729''45'cong_560 ::
  T_IsBand_528 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_560 v0
  = coe
      d_'8729''45'cong_190
      (coe d_isMagma_498 (coe d_isSemigroup_536 (coe v0)))
-- Algebra.Structures.IsBand._.∙-congʳ
d_'8729''45'cong'691'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_562 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_562 v5
du_'8729''45'cong'691'_562 ::
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_562 v0
  = let v1 = d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsBand._.∙-congˡ
d_'8729''45'cong'737'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_564 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_564 v5
du_'8729''45'cong'737'_564 ::
  T_IsBand_528 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_564 v0
  = let v1 = d_isSemigroup_536 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemigroup
d_IsCommutativeSemigroup_570 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeSemigroup_570
  = C_constructor_610 T_IsSemigroup_490
                      (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemigroup.isSemigroup
d_isSemigroup_578 ::
  T_IsCommutativeSemigroup_570 -> T_IsSemigroup_490
d_isSemigroup_578 v0
  = case coe v0 of
      C_constructor_610 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup.comm
d_comm_580 ::
  T_IsCommutativeSemigroup_570 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_580 v0
  = case coe v0 of
      C_constructor_610 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemigroup._.assoc
d_assoc_584 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_584 v0 = coe d_assoc_500 (coe d_isSemigroup_578 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isEquivalence
d_isEquivalence_586 ::
  T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_586 v0
  = coe
      d_isEquivalence_188
      (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.isMagma
d_isMagma_588 :: T_IsCommutativeSemigroup_570 -> T_IsMagma_180
d_isMagma_588 v0
  = coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0))
-- Algebra.Structures.IsCommutativeSemigroup._.isPartialEquivalence
d_isPartialEquivalence_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_590 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_590 v5
du_isPartialEquivalence_590 ::
  T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_590 v0
  = let v1 = d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.IsCommutativeSemigroup._.refl
d_refl_592 :: T_IsCommutativeSemigroup_570 -> AgdaAny -> AgdaAny
d_refl_592 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.reflexive
d_reflexive_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_594 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_594 v5
du_reflexive_594 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_594 v0
  = let v1 = d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe d_isEquivalence_188 (coe v2)) v3))
-- Algebra.Structures.IsCommutativeSemigroup._.setoid
d_setoid_596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_596 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_596 v5
du_setoid_596 ::
  T_IsCommutativeSemigroup_570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_596 v0
  = let v1 = d_isSemigroup_578 (coe v0) in
    coe (coe du_setoid_204 (coe d_isMagma_498 (coe v1)))
-- Algebra.Structures.IsCommutativeSemigroup._.sym
d_sym_598 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_598 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.trans
d_trans_600 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_600 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0))))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-cong
d_'8729''45'cong_602 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_602 v0
  = coe
      d_'8729''45'cong_190
      (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0)))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congʳ
d_'8729''45'cong'691'_604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_604 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_604 v5
du_'8729''45'cong'691'_604 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_604 v0
  = let v1 = d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemigroup._.∙-congˡ
d_'8729''45'cong'737'_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_606 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_606 v5
du_'8729''45'cong'737'_606 ::
  T_IsCommutativeSemigroup_570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_606 v0
  = let v1 = d_isSemigroup_578 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemigroup.isCommutativeMagma
d_isCommutativeMagma_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeSemigroup_570 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_608 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_608 v5
du_isCommutativeMagma_608 ::
  T_IsCommutativeSemigroup_570 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_608 v0
  = coe
      C_constructor_250
      (coe d_isMagma_498 (coe d_isSemigroup_578 (coe v0)))
      (coe d_comm_580 (coe v0))
-- Algebra.Structures.IsCommutativeBand
d_IsCommutativeBand_614 a0 a1 a2 a3 a4 = ()
data T_IsCommutativeBand_614
  = C_constructor_662 T_IsBand_528 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeBand.isBand
d_isBand_622 :: T_IsCommutativeBand_614 -> T_IsBand_528
d_isBand_622 v0
  = case coe v0 of
      C_constructor_662 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeBand.comm
d_comm_624 ::
  T_IsCommutativeBand_614 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_624 v0
  = case coe v0 of
      C_constructor_662 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeBand._.assoc
d_assoc_628 ::
  T_IsCommutativeBand_614 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_628 v0
  = coe
      d_assoc_500 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))
-- Algebra.Structures.IsCommutativeBand._.idem
d_idem_630 :: T_IsCommutativeBand_614 -> AgdaAny -> AgdaAny
d_idem_630 v0 = coe d_idem_538 (coe d_isBand_622 (coe v0))
-- Algebra.Structures.IsCommutativeBand._.isEquivalence
d_isEquivalence_632 ::
  T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_632 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0))))
-- Algebra.Structures.IsCommutativeBand._.isMagma
d_isMagma_634 :: T_IsCommutativeBand_614 -> T_IsMagma_180
d_isMagma_634 v0
  = coe
      d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))
-- Algebra.Structures.IsCommutativeBand._.isPartialEquivalence
d_isPartialEquivalence_636 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isPartialEquivalence_636 v5
du_isPartialEquivalence_636 ::
  T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_636 v0
  = let v1 = d_isBand_622 (coe v0) in
    coe
      (let v2 = d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsCommutativeBand._.isSemigroup
d_isSemigroup_638 :: T_IsCommutativeBand_614 -> T_IsSemigroup_490
d_isSemigroup_638 v0
  = coe d_isSemigroup_536 (coe d_isBand_622 (coe v0))
-- Algebra.Structures.IsCommutativeBand._.refl
d_refl_640 :: T_IsCommutativeBand_614 -> AgdaAny -> AgdaAny
d_refl_640 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))))
-- Algebra.Structures.IsCommutativeBand._.reflexive
d_reflexive_642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_reflexive_642 v5
du_reflexive_642 ::
  T_IsCommutativeBand_614 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_642 v0
  = let v1 = d_isBand_622 (coe v0) in
    coe
      (let v2 = d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsCommutativeBand._.setoid
d_setoid_644 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_setoid_644 v5
du_setoid_644 ::
  T_IsCommutativeBand_614 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_644 v0
  = let v1 = d_isBand_622 (coe v0) in
    coe
      (let v2 = d_isSemigroup_536 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsCommutativeBand._.sym
d_sym_646 ::
  T_IsCommutativeBand_614 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_646 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))))
-- Algebra.Structures.IsCommutativeBand._.trans
d_trans_648 ::
  T_IsCommutativeBand_614 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_648 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))))
-- Algebra.Structures.IsCommutativeBand._.∙-cong
d_'8729''45'cong_650 ::
  T_IsCommutativeBand_614 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_650 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498 (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0))))
-- Algebra.Structures.IsCommutativeBand._.∙-congʳ
d_'8729''45'cong'691'_652 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_652 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'691'_652 v5
du_'8729''45'cong'691'_652 ::
  T_IsCommutativeBand_614 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_652 v0
  = let v1 = d_isBand_622 (coe v0) in
    coe
      (let v2 = d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsCommutativeBand._.∙-congˡ
d_'8729''45'cong'737'_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_654 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8729''45'cong'737'_654 v5
du_'8729''45'cong'737'_654 ::
  T_IsCommutativeBand_614 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_654 v0
  = let v1 = d_isBand_622 (coe v0) in
    coe
      (let v2 = d_isSemigroup_536 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsCommutativeBand.isCommutativeSemigroup
d_isCommutativeSemigroup_656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_656 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeSemigroup_656 v5
du_isCommutativeSemigroup_656 ::
  T_IsCommutativeBand_614 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_656 v0
  = coe
      C_constructor_610
      (coe d_isSemigroup_536 (coe d_isBand_622 (coe v0)))
      (coe d_comm_624 (coe v0))
-- Algebra.Structures.IsCommutativeBand._.isCommutativeMagma
d_isCommutativeMagma_660 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCommutativeBand_614 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_660 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_isCommutativeMagma_660 v5
du_isCommutativeMagma_660 ::
  T_IsCommutativeBand_614 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_660 v0
  = coe
      du_isCommutativeMagma_608
      (coe du_isCommutativeSemigroup_656 (coe v0))
-- Algebra.Structures.IsUnitalMagma
d_IsUnitalMagma_668 a0 a1 a2 a3 a4 a5 = ()
data T_IsUnitalMagma_668
  = C_constructor_708 T_IsMagma_180
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsUnitalMagma.isMagma
d_isMagma_678 :: T_IsUnitalMagma_668 -> T_IsMagma_180
d_isMagma_678 v0
  = case coe v0 of
      C_constructor_708 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsUnitalMagma.identity
d_identity_680 ::
  T_IsUnitalMagma_668 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_680 v0
  = case coe v0 of
      C_constructor_708 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsUnitalMagma._.isEquivalence
d_isEquivalence_684 ::
  T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_684 v0
  = coe d_isEquivalence_188 (coe d_isMagma_678 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.isPartialEquivalence
d_isPartialEquivalence_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_686 v6
du_isPartialEquivalence_686 ::
  T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_686 v0
  = let v1 = d_isMagma_678 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsUnitalMagma._.refl
d_refl_688 :: T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny
d_refl_688 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_678 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.reflexive
d_reflexive_690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_690 v6
du_reflexive_690 ::
  T_IsUnitalMagma_668 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_690 v0
  = let v1 = d_isMagma_678 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsUnitalMagma._.setoid
d_setoid_692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_692 v6
du_setoid_692 ::
  T_IsUnitalMagma_668 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_692 v0 = coe du_setoid_204 (coe d_isMagma_678 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.sym
d_sym_694 ::
  T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_694 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_678 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.trans
d_trans_696 ::
  T_IsUnitalMagma_668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_696 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_678 (coe v0)))
-- Algebra.Structures.IsUnitalMagma._.∙-cong
d_'8729''45'cong_698 ::
  T_IsUnitalMagma_668 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_698 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_678 (coe v0))
-- Algebra.Structures.IsUnitalMagma._.∙-congʳ
d_'8729''45'cong'691'_700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_700 v6
du_'8729''45'cong'691'_700 ::
  T_IsUnitalMagma_668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_700 v0
  = let v1 = d_isMagma_678 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsUnitalMagma._.∙-congˡ
d_'8729''45'cong'737'_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsUnitalMagma_668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_702 v6
du_'8729''45'cong'737'_702 ::
  T_IsUnitalMagma_668 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_702 v0
  = let v1 = d_isMagma_678 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsUnitalMagma.identityˡ
d_identity'737'_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny
d_identity'737'_704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_704 v6
du_identity'737'_704 :: T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny
du_identity'737'_704 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_680 (coe v0))
-- Algebra.Structures.IsUnitalMagma.identityʳ
d_identity'691'_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny
d_identity'691'_706 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_706 v6
du_identity'691'_706 :: T_IsUnitalMagma_668 -> AgdaAny -> AgdaAny
du_identity'691'_706 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_680 (coe v0))
-- Algebra.Structures.IsMonoid
d_IsMonoid_714 a0 a1 a2 a3 a4 a5 = ()
data T_IsMonoid_714
  = C_constructor_760 T_IsSemigroup_490
                      MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsMonoid.isSemigroup
d_isSemigroup_724 :: T_IsMonoid_714 -> T_IsSemigroup_490
d_isSemigroup_724 v0
  = case coe v0 of
      C_constructor_760 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid.identity
d_identity_726 ::
  T_IsMonoid_714 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_726 v0
  = case coe v0 of
      C_constructor_760 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMonoid._.assoc
d_assoc_730 ::
  T_IsMonoid_714 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_730 v0 = coe d_assoc_500 (coe d_isSemigroup_724 (coe v0))
-- Algebra.Structures.IsMonoid._.isEquivalence
d_isEquivalence_732 ::
  T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_732 v0
  = coe
      d_isEquivalence_188
      (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0)))
-- Algebra.Structures.IsMonoid._.isMagma
d_isMagma_734 :: T_IsMonoid_714 -> T_IsMagma_180
d_isMagma_734 v0
  = coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0))
-- Algebra.Structures.IsMonoid._.isPartialEquivalence
d_isPartialEquivalence_736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_736 v6
du_isPartialEquivalence_736 ::
  T_IsMonoid_714 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_736 v0
  = let v1 = d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.IsMonoid._.refl
d_refl_738 :: T_IsMonoid_714 -> AgdaAny -> AgdaAny
d_refl_738 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0))))
-- Algebra.Structures.IsMonoid._.reflexive
d_reflexive_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_740 v6
du_reflexive_740 ::
  T_IsMonoid_714 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_740 v0
  = let v1 = d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe d_isEquivalence_188 (coe v2)) v3))
-- Algebra.Structures.IsMonoid._.setoid
d_setoid_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_714 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_742 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_742 v6
du_setoid_742 ::
  T_IsMonoid_714 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_742 v0
  = let v1 = d_isSemigroup_724 (coe v0) in
    coe (coe du_setoid_204 (coe d_isMagma_498 (coe v1)))
-- Algebra.Structures.IsMonoid._.sym
d_sym_744 ::
  T_IsMonoid_714 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_744 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0))))
-- Algebra.Structures.IsMonoid._.trans
d_trans_746 ::
  T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_746 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0))))
-- Algebra.Structures.IsMonoid._.∙-cong
d_'8729''45'cong_748 ::
  T_IsMonoid_714 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_748 v0
  = coe
      d_'8729''45'cong_190
      (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0)))
-- Algebra.Structures.IsMonoid._.∙-congʳ
d_'8729''45'cong'691'_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_750 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_750 v6
du_'8729''45'cong'691'_750 ::
  T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_750 v0
  = let v1 = d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsMonoid._.∙-congˡ
d_'8729''45'cong'737'_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_752 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_752 v6
du_'8729''45'cong'737'_752 ::
  T_IsMonoid_714 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_752 v0
  = let v1 = d_isSemigroup_724 (coe v0) in
    coe
      (let v2 = d_isMagma_498 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsMonoid.identityˡ
d_identity'737'_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_714 -> AgdaAny -> AgdaAny
d_identity'737'_754 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_754 v6
du_identity'737'_754 :: T_IsMonoid_714 -> AgdaAny -> AgdaAny
du_identity'737'_754 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_726 (coe v0))
-- Algebra.Structures.IsMonoid.identityʳ
d_identity'691'_756 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_714 -> AgdaAny -> AgdaAny
d_identity'691'_756 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_756 v6
du_identity'691'_756 :: T_IsMonoid_714 -> AgdaAny -> AgdaAny
du_identity'691'_756 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_726 (coe v0))
-- Algebra.Structures.IsMonoid.isUnitalMagma
d_isUnitalMagma_758 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMonoid_714 -> T_IsUnitalMagma_668
d_isUnitalMagma_758 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_758 v6
du_isUnitalMagma_758 :: T_IsMonoid_714 -> T_IsUnitalMagma_668
du_isUnitalMagma_758 v0
  = coe
      C_constructor_708
      (coe d_isMagma_498 (coe d_isSemigroup_724 (coe v0)))
      (coe d_identity_726 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid
d_IsCommutativeMonoid_766 a0 a1 a2 a3 a4 a5 = ()
data T_IsCommutativeMonoid_766
  = C_constructor_822 T_IsMonoid_714 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeMonoid.isMonoid
d_isMonoid_776 :: T_IsCommutativeMonoid_766 -> T_IsMonoid_714
d_isMonoid_776 v0
  = case coe v0 of
      C_constructor_822 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid.comm
d_comm_778 ::
  T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_778 v0
  = case coe v0 of
      C_constructor_822 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeMonoid._.assoc
d_assoc_782 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_782 v0
  = coe
      d_assoc_500 (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.identity
d_identity_784 ::
  T_IsCommutativeMonoid_766 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_784 v0
  = coe d_identity_726 (coe d_isMonoid_776 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityʳ
d_identity'691'_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny
d_identity'691'_786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_786 v6
du_identity'691'_786 ::
  T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny
du_identity'691'_786 v0
  = coe du_identity'691'_756 (coe d_isMonoid_776 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.identityˡ
d_identity'737'_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny
d_identity'737'_788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_788 v6
du_identity'737'_788 ::
  T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny
du_identity'737'_788 v0
  = coe du_identity'737'_754 (coe d_isMonoid_776 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isEquivalence
d_isEquivalence_790 ::
  T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_790 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.isMagma
d_isMagma_792 :: T_IsCommutativeMonoid_766 -> T_IsMagma_180
d_isMagma_792 v0
  = coe
      d_isMagma_498 (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))
-- Algebra.Structures.IsCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_794 v6
du_isPartialEquivalence_794 ::
  T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_794 v0
  = let v1 = d_isMonoid_776 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsCommutativeMonoid._.isSemigroup
d_isSemigroup_796 :: T_IsCommutativeMonoid_766 -> T_IsSemigroup_490
d_isSemigroup_796 v0
  = coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isUnitalMagma
d_isUnitalMagma_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_766 -> T_IsUnitalMagma_668
d_isUnitalMagma_798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_798 v6
du_isUnitalMagma_798 ::
  T_IsCommutativeMonoid_766 -> T_IsUnitalMagma_668
du_isUnitalMagma_798 v0
  = coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.refl
d_refl_800 :: T_IsCommutativeMonoid_766 -> AgdaAny -> AgdaAny
d_refl_800 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.reflexive
d_reflexive_802 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_802 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_802 v6
du_reflexive_802 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_802 v0
  = let v1 = d_isMonoid_776 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsCommutativeMonoid._.setoid
d_setoid_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_804 v6
du_setoid_804 ::
  T_IsCommutativeMonoid_766 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_804 v0
  = let v1 = d_isMonoid_776 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsCommutativeMonoid._.sym
d_sym_806 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_806 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.trans
d_trans_808 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_808 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-cong
d_'8729''45'cong_810 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_810 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_812 v6
du_'8729''45'cong'691'_812 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_812 v0
  = let v1 = d_isMonoid_776 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_814 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_814 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_814 v6
du_'8729''45'cong'737'_814 ::
  T_IsCommutativeMonoid_766 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_814 v0
  = let v1 = d_isMonoid_776 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsCommutativeMonoid.isCommutativeSemigroup
d_isCommutativeSemigroup_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeMonoid_766 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_816 v6
du_isCommutativeSemigroup_816 ::
  T_IsCommutativeMonoid_766 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_816 v0
  = coe
      C_constructor_610
      (coe d_isSemigroup_724 (coe d_isMonoid_776 (coe v0)))
      (coe d_comm_778 (coe v0))
-- Algebra.Structures.IsCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeMonoid_766 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_820 v6
du_isCommutativeMagma_820 ::
  T_IsCommutativeMonoid_766 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_820 v0
  = coe
      du_isCommutativeMagma_608
      (coe du_isCommutativeSemigroup_816 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid
d_IsIdempotentMonoid_828 a0 a1 a2 a3 a4 a5 = ()
data T_IsIdempotentMonoid_828
  = C_constructor_880 T_IsMonoid_714 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentMonoid.isMonoid
d_isMonoid_838 :: T_IsIdempotentMonoid_828 -> T_IsMonoid_714
d_isMonoid_838 v0
  = case coe v0 of
      C_constructor_880 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMonoid.idem
d_idem_840 :: T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
d_idem_840 v0
  = case coe v0 of
      C_constructor_880 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentMonoid._.assoc
d_assoc_844 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_844 v0
  = coe
      d_assoc_500 (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))
-- Algebra.Structures.IsIdempotentMonoid._.identity
d_identity_846 ::
  T_IsIdempotentMonoid_828 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_846 v0
  = coe d_identity_726 (coe d_isMonoid_838 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid._.identityʳ
d_identity'691'_848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
d_identity'691'_848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_848 v6
du_identity'691'_848 ::
  T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
du_identity'691'_848 v0
  = coe du_identity'691'_756 (coe d_isMonoid_838 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid._.identityˡ
d_identity'737'_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
d_identity'737'_850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_850 v6
du_identity'737'_850 ::
  T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
du_identity'737'_850 v0
  = coe du_identity'737'_754 (coe d_isMonoid_838 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid._.isEquivalence
d_isEquivalence_852 ::
  T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_852 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0))))
-- Algebra.Structures.IsIdempotentMonoid._.isMagma
d_isMagma_854 :: T_IsIdempotentMonoid_828 -> T_IsMagma_180
d_isMagma_854 v0
  = coe
      d_isMagma_498 (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))
-- Algebra.Structures.IsIdempotentMonoid._.isPartialEquivalence
d_isPartialEquivalence_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_856 v6
du_isPartialEquivalence_856 ::
  T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_856 v0
  = let v1 = d_isMonoid_838 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsIdempotentMonoid._.isSemigroup
d_isSemigroup_858 :: T_IsIdempotentMonoid_828 -> T_IsSemigroup_490
d_isSemigroup_858 v0
  = coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid._.isUnitalMagma
d_isUnitalMagma_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentMonoid_828 -> T_IsUnitalMagma_668
d_isUnitalMagma_860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_860 v6
du_isUnitalMagma_860 ::
  T_IsIdempotentMonoid_828 -> T_IsUnitalMagma_668
du_isUnitalMagma_860 v0
  = coe du_isUnitalMagma_758 (coe d_isMonoid_838 (coe v0))
-- Algebra.Structures.IsIdempotentMonoid._.refl
d_refl_862 :: T_IsIdempotentMonoid_828 -> AgdaAny -> AgdaAny
d_refl_862 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))))
-- Algebra.Structures.IsIdempotentMonoid._.reflexive
d_reflexive_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentMonoid_828 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_864 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_864 v6
du_reflexive_864 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_864 v0
  = let v1 = d_isMonoid_838 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsIdempotentMonoid._.setoid
d_setoid_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_866 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_866 v6
du_setoid_866 ::
  T_IsIdempotentMonoid_828 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_866 v0
  = let v1 = d_isMonoid_838 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsIdempotentMonoid._.sym
d_sym_868 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_868 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))))
-- Algebra.Structures.IsIdempotentMonoid._.trans
d_trans_870 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_870 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))))
-- Algebra.Structures.IsIdempotentMonoid._.∙-cong
d_'8729''45'cong_872 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_872 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0))))
-- Algebra.Structures.IsIdempotentMonoid._.∙-congʳ
d_'8729''45'cong'691'_874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_874 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_874 v6
du_'8729''45'cong'691'_874 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_874 v0
  = let v1 = d_isMonoid_838 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsIdempotentMonoid._.∙-congˡ
d_'8729''45'cong'737'_876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_876 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_876 v6
du_'8729''45'cong'737'_876 ::
  T_IsIdempotentMonoid_828 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_876 v0
  = let v1 = d_isMonoid_838 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsIdempotentMonoid.isBand
d_isBand_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentMonoid_828 -> T_IsBand_528
d_isBand_878 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_878 v6
du_isBand_878 :: T_IsIdempotentMonoid_828 -> T_IsBand_528
du_isBand_878 v0
  = coe
      C_constructor_566
      (coe d_isSemigroup_724 (coe d_isMonoid_838 (coe v0)))
      (coe d_idem_840 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid
d_IsIdempotentCommutativeMonoid_886 a0 a1 a2 a3 a4 a5 = ()
data T_IsIdempotentCommutativeMonoid_886
  = C_constructor_952 T_IsCommutativeMonoid_766 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeMonoid
d_isCommutativeMonoid_896 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_896 v0
  = case coe v0 of
      C_constructor_952 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid.idem
d_idem_898 ::
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
d_idem_898 v0
  = case coe v0 of
      C_constructor_952 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.assoc
d_assoc_902 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_902 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.comm
d_comm_904 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_904 v0
  = coe d_comm_778 (coe d_isCommutativeMonoid_896 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identity
d_identity_906 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_906 v0
  = coe
      d_identity_726
      (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityʳ
d_identity'691'_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
d_identity'691'_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'691'_908 v6
du_identity'691'_908 ::
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
du_identity'691'_908 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.identityˡ
d_identity'737'_910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
d_identity'737'_910 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_identity'737'_910 v6
du_identity'737'_910 ::
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
du_identity'737'_910 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeMagma
d_isCommutativeMagma_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeMagma_912 v6
du_isCommutativeMagma_912 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_912 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_608
         (coe du_isCommutativeSemigroup_816 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isCommutativeSemigroup
d_isCommutativeSemigroup_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_914 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeSemigroup_914 v6
du_isCommutativeSemigroup_914 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_914 v0
  = coe
      du_isCommutativeSemigroup_816
      (coe d_isCommutativeMonoid_896 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isEquivalence
d_isEquivalence_916 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_916 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMagma
d_isMagma_918 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsMagma_180
d_isMagma_918 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isMonoid
d_isMonoid_920 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsMonoid_714
d_isMonoid_920 v0
  = coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isPartialEquivalence
d_isPartialEquivalence_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isPartialEquivalence_922 v6
du_isPartialEquivalence_922 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_922 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isSemigroup
d_isSemigroup_924 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsSemigroup_490
d_isSemigroup_924 v0
  = coe
      d_isSemigroup_724
      (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isUnitalMagma
d_isUnitalMagma_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> T_IsUnitalMagma_668
d_isUnitalMagma_926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isUnitalMagma_926 v6
du_isUnitalMagma_926 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsUnitalMagma_668
du_isUnitalMagma_926 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.refl
d_refl_928 ::
  T_IsIdempotentCommutativeMonoid_886 -> AgdaAny -> AgdaAny
d_refl_928 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.reflexive
d_reflexive_930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_reflexive_930 v6
du_reflexive_930 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_930 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe d_isEquivalence_188 (coe v4)) v5))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.setoid
d_setoid_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_setoid_932 v6
du_setoid_932 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_932 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_498 (coe v3)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.sym
d_sym_934 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_934 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.trans
d_trans_936 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_936 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-cong
d_'8729''45'cong_938 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_938 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0)))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congʳ
d_'8729''45'cong'691'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'691'_940 v6
du_'8729''45'cong'691'_940 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_940 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.∙-congˡ
d_'8729''45'cong'737'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8729''45'cong'737'_942 v6
du_'8729''45'cong'737'_942 ::
  T_IsIdempotentCommutativeMonoid_886 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_942 v0
  = let v1 = d_isCommutativeMonoid_896 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isIdempotentMonoid
d_isIdempotentMonoid_944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> T_IsIdempotentMonoid_828
d_isIdempotentMonoid_944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isIdempotentMonoid_944 v6
du_isIdempotentMonoid_944 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsIdempotentMonoid_828
du_isIdempotentMonoid_944 v0
  = coe
      C_constructor_880
      (coe d_isMonoid_776 (coe d_isCommutativeMonoid_896 (coe v0)))
      (coe d_idem_898 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid._.isBand
d_isBand_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsIdempotentCommutativeMonoid_886 -> T_IsBand_528
d_isBand_948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_isBand_948 v6
du_isBand_948 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsBand_528
du_isBand_948 v0
  = coe du_isBand_878 (coe du_isIdempotentMonoid_944 (coe v0))
-- Algebra.Structures.IsIdempotentCommutativeMonoid.isCommutativeBand
d_isCommutativeBand_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeBand_614
d_isCommutativeBand_950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_isCommutativeBand_950 v6
du_isCommutativeBand_950 ::
  T_IsIdempotentCommutativeMonoid_886 -> T_IsCommutativeBand_614
du_isCommutativeBand_950 v0
  = coe
      C_constructor_662
      (coe du_isBand_878 (coe du_isIdempotentMonoid_944 (coe v0)))
      (coe d_comm_778 (coe d_isCommutativeMonoid_896 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma
d_IsInvertibleMagma_960 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsInvertibleMagma_960
  = C_constructor_1006 T_IsMagma_180
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsInvertibleMagma.isMagma
d_isMagma_974 :: T_IsInvertibleMagma_960 -> T_IsMagma_180
d_isMagma_974 v0
  = case coe v0 of
      C_constructor_1006 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma.inverse
d_inverse_976 ::
  T_IsInvertibleMagma_960 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_976 v0
  = case coe v0 of
      C_constructor_1006 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma.⁻¹-cong
d_'8315''185''45'cong_978 ::
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_978 v0
  = case coe v0 of
      C_constructor_1006 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleMagma._.isEquivalence
d_isEquivalence_982 ::
  T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_982 v0
  = coe d_isEquivalence_188 (coe d_isMagma_974 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.isPartialEquivalence
d_isPartialEquivalence_984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_984 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_984 v7
du_isPartialEquivalence_984 ::
  T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_984 v0
  = let v1 = d_isMagma_974 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsInvertibleMagma._.refl
d_refl_986 :: T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny
d_refl_986 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_974 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.reflexive
d_reflexive_988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_988 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_988 v7
du_reflexive_988 ::
  T_IsInvertibleMagma_960 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_988 v0
  = let v1 = d_isMagma_974 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsInvertibleMagma._.setoid
d_setoid_990 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_990 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_990 v7
du_setoid_990 ::
  T_IsInvertibleMagma_960 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_990 v0 = coe du_setoid_204 (coe d_isMagma_974 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.sym
d_sym_992 ::
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_992 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_974 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.trans
d_trans_994 ::
  T_IsInvertibleMagma_960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_994 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_974 (coe v0)))
-- Algebra.Structures.IsInvertibleMagma._.∙-cong
d_'8729''45'cong_996 ::
  T_IsInvertibleMagma_960 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_996 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_974 (coe v0))
-- Algebra.Structures.IsInvertibleMagma._.∙-congʳ
d_'8729''45'cong'691'_998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_998 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_998 v7
du_'8729''45'cong'691'_998 ::
  T_IsInvertibleMagma_960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_998 v0
  = let v1 = d_isMagma_974 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsInvertibleMagma._.∙-congˡ
d_'8729''45'cong'737'_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1000 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1000 v7
du_'8729''45'cong'737'_1000 ::
  T_IsInvertibleMagma_960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1000 v0
  = let v1 = d_isMagma_974 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsInvertibleMagma.inverseˡ
d_inverse'737'_1002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny
d_inverse'737'_1002 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_1002 v7
du_inverse'737'_1002 ::
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny
du_inverse'737'_1002 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_inverse_976 (coe v0))
-- Algebra.Structures.IsInvertibleMagma.inverseʳ
d_inverse'691'_1004 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny
d_inverse'691'_1004 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_1004 v7
du_inverse'691'_1004 ::
  T_IsInvertibleMagma_960 -> AgdaAny -> AgdaAny
du_inverse'691'_1004 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_inverse_976 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma
d_IsInvertibleUnitalMagma_1014 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsInvertibleUnitalMagma_1014
  = C_constructor_1068 T_IsInvertibleMagma_960
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsInvertibleUnitalMagma.isInvertibleMagma
d_isInvertibleMagma_1026 ::
  T_IsInvertibleUnitalMagma_1014 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_1026 v0
  = case coe v0 of
      C_constructor_1068 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleUnitalMagma.identity
d_identity_1028 ::
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1028 v0
  = case coe v0 of
      C_constructor_1068 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverse
d_inverse_1032 ::
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1032 v0
  = coe d_inverse_976 (coe d_isInvertibleMagma_1026 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverseʳ
d_inverse'691'_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
d_inverse'691'_1034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_1034 v7
du_inverse'691'_1034 ::
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
du_inverse'691'_1034 v0
  = coe du_inverse'691'_1004 (coe d_isInvertibleMagma_1026 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.inverseˡ
d_inverse'737'_1036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
d_inverse'737'_1036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_1036 v7
du_inverse'737'_1036 ::
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
du_inverse'737'_1036 v0
  = coe du_inverse'737'_1002 (coe d_isInvertibleMagma_1026 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isEquivalence
d_isEquivalence_1038 ::
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1038 v0
  = coe
      d_isEquivalence_188
      (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isMagma
d_isMagma_1040 :: T_IsInvertibleUnitalMagma_1014 -> T_IsMagma_180
d_isMagma_1040 v0
  = coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.isPartialEquivalence
d_isPartialEquivalence_1042 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1042 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1042 v7
du_isPartialEquivalence_1042 ::
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1042 v0
  = let v1 = d_isInvertibleMagma_1026 (coe v0) in
    coe
      (let v2 = d_isMagma_974 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.refl
d_refl_1044 :: T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
d_refl_1044 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.reflexive
d_reflexive_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1046 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1046 v7
du_reflexive_1046 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1046 v0
  = let v1 = d_isInvertibleMagma_1026 (coe v0) in
    coe
      (let v2 = d_isMagma_974 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe d_isEquivalence_188 (coe v2)) v3))
-- Algebra.Structures.IsInvertibleUnitalMagma._.setoid
d_setoid_1048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1048 v7
du_setoid_1048 ::
  T_IsInvertibleUnitalMagma_1014 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1048 v0
  = let v1 = d_isInvertibleMagma_1026 (coe v0) in
    coe (coe du_setoid_204 (coe d_isMagma_974 (coe v1)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.sym
d_sym_1050 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1050 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.trans
d_trans_1052 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1052 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.⁻¹-cong
d_'8315''185''45'cong_1054 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1054 v0
  = coe
      d_'8315''185''45'cong_978 (coe d_isInvertibleMagma_1026 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-cong
d_'8729''45'cong_1056 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1056 v0
  = coe
      d_'8729''45'cong_190
      (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0)))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-congʳ
d_'8729''45'cong'691'_1058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1058 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1058 v7
du_'8729''45'cong'691'_1058 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1058 v0
  = let v1 = d_isInvertibleMagma_1026 (coe v0) in
    coe
      (let v2 = d_isMagma_974 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsInvertibleUnitalMagma._.∙-congˡ
d_'8729''45'cong'737'_1060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1060 v7
du_'8729''45'cong'737'_1060 ::
  T_IsInvertibleUnitalMagma_1014 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1060 v0
  = let v1 = d_isInvertibleMagma_1026 (coe v0) in
    coe
      (let v2 = d_isMagma_974 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsInvertibleUnitalMagma.identityˡ
d_identity'737'_1062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
d_identity'737'_1062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1062 v7
du_identity'737'_1062 ::
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
du_identity'737'_1062 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_1028 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma.identityʳ
d_identity'691'_1064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
d_identity'691'_1064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1064 v7
du_identity'691'_1064 ::
  T_IsInvertibleUnitalMagma_1014 -> AgdaAny -> AgdaAny
du_identity'691'_1064 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_1028 (coe v0))
-- Algebra.Structures.IsInvertibleUnitalMagma.isUnitalMagma
d_isUnitalMagma_1066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsInvertibleUnitalMagma_1014 -> T_IsUnitalMagma_668
d_isUnitalMagma_1066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1066 v7
du_isUnitalMagma_1066 ::
  T_IsInvertibleUnitalMagma_1014 -> T_IsUnitalMagma_668
du_isUnitalMagma_1066 v0
  = coe
      C_constructor_708
      (coe d_isMagma_974 (coe d_isInvertibleMagma_1026 (coe v0)))
      (coe d_identity_1028 (coe v0))
-- Algebra.Structures.IsGroup
d_IsGroup_1076 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsGroup_1076
  = C_constructor_1166 T_IsMonoid_714
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsGroup.isMonoid
d_isMonoid_1090 :: T_IsGroup_1076 -> T_IsMonoid_714
d_isMonoid_1090 v0
  = case coe v0 of
      C_constructor_1166 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.inverse
d_inverse_1092 ::
  T_IsGroup_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1092 v0
  = case coe v0 of
      C_constructor_1166 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup.⁻¹-cong
d_'8315''185''45'cong_1094 ::
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1094 v0
  = case coe v0 of
      C_constructor_1166 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsGroup._.assoc
d_assoc_1098 ::
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1098 v0
  = coe
      d_assoc_500 (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0)))
-- Algebra.Structures.IsGroup._.identity
d_identity_1100 ::
  T_IsGroup_1076 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1100 v0
  = coe d_identity_726 (coe d_isMonoid_1090 (coe v0))
-- Algebra.Structures.IsGroup._.identityʳ
d_identity'691'_1102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> AgdaAny -> AgdaAny
d_identity'691'_1102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1102 v7
du_identity'691'_1102 :: T_IsGroup_1076 -> AgdaAny -> AgdaAny
du_identity'691'_1102 v0
  = coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v0))
-- Algebra.Structures.IsGroup._.identityˡ
d_identity'737'_1104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> AgdaAny -> AgdaAny
d_identity'737'_1104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1104 v7
du_identity'737'_1104 :: T_IsGroup_1076 -> AgdaAny -> AgdaAny
du_identity'737'_1104 v0
  = coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v0))
-- Algebra.Structures.IsGroup._.isEquivalence
d_isEquivalence_1106 ::
  T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1106 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0))))
-- Algebra.Structures.IsGroup._.isMagma
d_isMagma_1108 :: T_IsGroup_1076 -> T_IsMagma_180
d_isMagma_1108 v0
  = coe
      d_isMagma_498
      (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0)))
-- Algebra.Structures.IsGroup._.isPartialEquivalence
d_isPartialEquivalence_1110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1110 v7
du_isPartialEquivalence_1110 ::
  T_IsGroup_1076 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1110 v0
  = let v1 = d_isMonoid_1090 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsGroup._.isSemigroup
d_isSemigroup_1112 :: T_IsGroup_1076 -> T_IsSemigroup_490
d_isSemigroup_1112 v0
  = coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0))
-- Algebra.Structures.IsGroup._.isUnitalMagma
d_isUnitalMagma_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> T_IsUnitalMagma_668
d_isUnitalMagma_1114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1114 v7
du_isUnitalMagma_1114 :: T_IsGroup_1076 -> T_IsUnitalMagma_668
du_isUnitalMagma_1114 v0
  = coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v0))
-- Algebra.Structures.IsGroup._.refl
d_refl_1116 :: T_IsGroup_1076 -> AgdaAny -> AgdaAny
d_refl_1116 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0)))))
-- Algebra.Structures.IsGroup._.reflexive
d_reflexive_1118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1118 v7
du_reflexive_1118 ::
  T_IsGroup_1076 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1118 v0
  = let v1 = d_isMonoid_1090 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsGroup._.setoid
d_setoid_1120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1120 v7
du_setoid_1120 ::
  T_IsGroup_1076 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1120 v0
  = let v1 = d_isMonoid_1090 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsGroup._.sym
d_sym_1122 ::
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1122 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0)))))
-- Algebra.Structures.IsGroup._.trans
d_trans_1124 ::
  T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1124 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0)))))
-- Algebra.Structures.IsGroup._.∙-cong
d_'8729''45'cong_1126 ::
  T_IsGroup_1076 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1126 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0))))
-- Algebra.Structures.IsGroup._.∙-congʳ
d_'8729''45'cong'691'_1128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1128 v7
du_'8729''45'cong'691'_1128 ::
  T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1128 v0
  = let v1 = d_isMonoid_1090 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsGroup._.∙-congˡ
d_'8729''45'cong'737'_1130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1130 v7
du_'8729''45'cong'737'_1130 ::
  T_IsGroup_1076 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1130 v0
  = let v1 = d_isMonoid_1090 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsGroup._\\_
d__'92''92'__1132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny
d__'92''92'__1132 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9
  = du__'92''92'__1132 v4 v6 v8 v9
du__'92''92'__1132 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'92''92'__1132 v0 v1 v2 v3 = coe v0 (coe v1 v2) v3
-- Algebra.Structures.IsGroup._//_
d__'47''47'__1138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__1138 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 v8 v9
  = du__'47''47'__1138 v4 v6 v8 v9
du__'47''47'__1138 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__1138 v0 v1 v2 v3 = coe v0 v2 (coe v1 v3)
-- Algebra.Structures.IsGroup._-_
d__'45'__1144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny
d__'45'__1144 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 = du__'45'__1144 v4 v6
du__'45'__1144 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'45'__1144 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsGroup.inverseˡ
d_inverse'737'_1146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> AgdaAny -> AgdaAny
d_inverse'737'_1146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_1146 v7
du_inverse'737'_1146 :: T_IsGroup_1076 -> AgdaAny -> AgdaAny
du_inverse'737'_1146 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_inverse_1092 (coe v0))
-- Algebra.Structures.IsGroup.inverseʳ
d_inverse'691'_1148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> AgdaAny -> AgdaAny
d_inverse'691'_1148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_1148 v7
du_inverse'691'_1148 :: T_IsGroup_1076 -> AgdaAny -> AgdaAny
du_inverse'691'_1148 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_inverse_1092 (coe v0))
-- Algebra.Structures.IsGroup.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1154 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_1154 v4 v5 v6 v7
du_unique'737''45''8315''185'_1154 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1154 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'id'8743'inv'691''8658'inv'737''45'unique_516
      (coe
         du_setoid_204
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3)))))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_190
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3)))))
      (coe
         d_assoc_500 (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3))))
      (coe d_identity_726 (coe d_isMonoid_1090 (coe v3)))
      (coe du_inverse'691'_1148 (coe v3))
-- Algebra.Structures.IsGroup.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1160 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_1160 v4 v5 v6 v7
du_unique'691''45''8315''185'_1160 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'id'8743'inv'737''8658'inv'691''45'unique_536
      (coe
         du_setoid_204
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3)))))
      (coe v0) (coe v2) (coe v1)
      (coe
         d_'8729''45'cong_190
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3)))))
      (coe
         d_assoc_500 (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v3))))
      (coe d_identity_726 (coe d_isMonoid_1090 (coe v3)))
      (coe du_inverse'737'_1146 (coe v3))
-- Algebra.Structures.IsGroup.isInvertibleMagma
d_isInvertibleMagma_1162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsGroup_1076 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_1162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_1162 v7
du_isInvertibleMagma_1162 ::
  T_IsGroup_1076 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_1162 v0
  = coe
      C_constructor_1006
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_isMonoid_1090 (coe v0))))
      (coe d_inverse_1092 (coe v0))
      (coe d_'8315''185''45'cong_1094 (coe v0))
-- Algebra.Structures.IsGroup.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsGroup_1076 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_1164 v7
du_isInvertibleUnitalMagma_1164 ::
  T_IsGroup_1076 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_1164 v0
  = coe
      C_constructor_1068 (coe du_isInvertibleMagma_1162 (coe v0))
      (coe d_identity_726 (coe d_isMonoid_1090 (coe v0)))
-- Algebra.Structures.IsAbelianGroup
d_IsAbelianGroup_1174 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsAbelianGroup_1174
  = C_constructor_1254 T_IsGroup_1076 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsAbelianGroup.isGroup
d_isGroup_1186 :: T_IsAbelianGroup_1174 -> T_IsGroup_1076
d_isGroup_1186 v0
  = case coe v0 of
      C_constructor_1254 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup.comm
d_comm_1188 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1188 v0
  = case coe v0 of
      C_constructor_1254 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsAbelianGroup._._//_
d__'47''47'__1192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__1192 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7
  = du__'47''47'__1192 v4 v6
du__'47''47'__1192 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__1192 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsAbelianGroup._.assoc
d_assoc_1194 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1194 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.identity
d_identity_1196 ::
  T_IsAbelianGroup_1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1196 v0
  = coe
      d_identity_726 (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.identityʳ
d_identity'691'_1198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
d_identity'691'_1198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1198 v7
du_identity'691'_1198 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
du_identity'691'_1198 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.identityˡ
d_identity'737'_1200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
d_identity'737'_1200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1200 v7
du_identity'737'_1200 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
du_identity'737'_1200 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.inverse
d_inverse_1202 ::
  T_IsAbelianGroup_1174 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_1202 v0
  = coe d_inverse_1092 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseʳ
d_inverse'691'_1204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
d_inverse'691'_1204 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'691'_1204 v7
du_inverse'691'_1204 :: T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
du_inverse'691'_1204 v0
  = coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.inverseˡ
d_inverse'737'_1206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
d_inverse'737'_1206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_inverse'737'_1206 v7
du_inverse'737'_1206 :: T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
du_inverse'737'_1206 v0
  = coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isEquivalence
d_isEquivalence_1208 ::
  T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1208 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.isInvertibleMagma
d_isInvertibleMagma_1210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_1210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleMagma_1210 v7
du_isInvertibleMagma_1210 ::
  T_IsAbelianGroup_1174 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_1210 v0
  = coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_1212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_1212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isInvertibleUnitalMagma_1212 v7
du_isInvertibleUnitalMagma_1212 ::
  T_IsAbelianGroup_1174 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_1212 v0
  = coe du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isMagma
d_isMagma_1214 :: T_IsAbelianGroup_1174 -> T_IsMagma_180
d_isMagma_1214 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))))
-- Algebra.Structures.IsAbelianGroup._.isMonoid
d_isMonoid_1216 :: T_IsAbelianGroup_1174 -> T_IsMonoid_714
d_isMonoid_1216 v0
  = coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isPartialEquivalence
d_isPartialEquivalence_1218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1218 v7
du_isPartialEquivalence_1218 ::
  T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1218 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe
      (let v2 = d_isMonoid_1090 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.IsAbelianGroup._.isSemigroup
d_isSemigroup_1220 :: T_IsAbelianGroup_1174 -> T_IsSemigroup_490
d_isSemigroup_1220 v0
  = coe
      d_isSemigroup_724
      (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0)))
-- Algebra.Structures.IsAbelianGroup._.isUnitalMagma
d_isUnitalMagma_1222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsUnitalMagma_668
d_isUnitalMagma_1222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1222 v7
du_isUnitalMagma_1222 ::
  T_IsAbelianGroup_1174 -> T_IsUnitalMagma_668
du_isUnitalMagma_1222 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.refl
d_refl_1224 :: T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny
d_refl_1224 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.reflexive
d_reflexive_1226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1226 v7
du_reflexive_1226 ::
  T_IsAbelianGroup_1174 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1226 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe
      (let v2 = d_isMonoid_1090 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe d_isEquivalence_188 (coe v4)) v5))))
-- Algebra.Structures.IsAbelianGroup._.setoid
d_setoid_1228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1228 v7
du_setoid_1228 ::
  T_IsAbelianGroup_1174 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1228 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe
      (let v2 = d_isMonoid_1090 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_498 (coe v3)))))
-- Algebra.Structures.IsAbelianGroup._.sym
d_sym_1230 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1230 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.trans
d_trans_1232 ::
  T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1232 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0))))))
-- Algebra.Structures.IsAbelianGroup._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_1234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_1234 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'691''45''8315''185'_1234 v4 v5 v6 v7
du_unique'691''45''8315''185'_1234 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_1234 v0 v1 v2 v3
  = coe
      du_unique'691''45''8315''185'_1160 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_1186 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_1236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_1236 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_unique'737''45''8315''185'_1236 v4 v5 v6 v7
du_unique'737''45''8315''185'_1236 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_1236 v0 v1 v2 v3
  = coe
      du_unique'737''45''8315''185'_1154 (coe v0) (coe v1) (coe v2)
      (coe d_isGroup_1186 (coe v3))
-- Algebra.Structures.IsAbelianGroup._.⁻¹-cong
d_'8315''185''45'cong_1238 ::
  T_IsAbelianGroup_1174 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_1238 v0
  = coe d_'8315''185''45'cong_1094 (coe d_isGroup_1186 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.∙-cong
d_'8729''45'cong_1240 ::
  T_IsAbelianGroup_1174 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1240 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0)))))
-- Algebra.Structures.IsAbelianGroup._.∙-congʳ
d_'8729''45'cong'691'_1242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1242 v7
du_'8729''45'cong'691'_1242 ::
  T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1242 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe
      (let v2 = d_isMonoid_1090 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsAbelianGroup._.∙-congˡ
d_'8729''45'cong'737'_1244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1244 v7
du_'8729''45'cong'737'_1244 ::
  T_IsAbelianGroup_1174 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1244 v0
  = let v1 = d_isGroup_1186 (coe v0) in
    coe
      (let v2 = d_isMonoid_1090 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsAbelianGroup.isCommutativeMonoid
d_isCommutativeMonoid_1246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_1246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMonoid_1246 v7
du_isCommutativeMonoid_1246 ::
  T_IsAbelianGroup_1174 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_1246 v0
  = coe
      C_constructor_822
      (coe d_isMonoid_1090 (coe d_isGroup_1186 (coe v0)))
      (coe d_comm_1188 (coe v0))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeMagma
d_isCommutativeMagma_1250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1250 v7
du_isCommutativeMagma_1250 ::
  T_IsAbelianGroup_1174 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1250 v0
  = let v1 = coe du_isCommutativeMonoid_1246 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_608
         (coe du_isCommutativeSemigroup_816 (coe v1)))
-- Algebra.Structures.IsAbelianGroup._.isCommutativeSemigroup
d_isCommutativeSemigroup_1252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsAbelianGroup_1174 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1252 v7
du_isCommutativeSemigroup_1252 ::
  T_IsAbelianGroup_1174 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1252 v0
  = coe
      du_isCommutativeSemigroup_816
      (coe du_isCommutativeMonoid_1246 (coe v0))
-- Algebra.Structures.IsNearSemiring
d_IsNearSemiring_1262 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsNearSemiring_1262
  = C_constructor_1336 T_IsMonoid_714
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsNearSemiring.+-isMonoid
d_'43''45'isMonoid_1280 :: T_IsNearSemiring_1262 -> T_IsMonoid_714
d_'43''45'isMonoid_1280 v0
  = case coe v0 of
      C_constructor_1336 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.*-cong
d_'42''45'cong_1282 ::
  T_IsNearSemiring_1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1282 v0
  = case coe v0 of
      C_constructor_1336 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.*-assoc
d_'42''45'assoc_1284 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1284 v0
  = case coe v0 of
      C_constructor_1336 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.distribʳ
d_distrib'691'_1286 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1286 v0
  = case coe v0 of
      C_constructor_1336 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring.zeroˡ
d_zero'737'_1288 :: T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
d_zero'737'_1288 v0
  = case coe v0 of
      C_constructor_1336 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearSemiring._.assoc
d_assoc_1292 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1292 v0
  = coe
      d_assoc_500
      (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.∙-cong
d_'8729''45'cong_1294 ::
  T_IsNearSemiring_1262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1294 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1296 v7
du_'8729''45'cong'691'_1296 ::
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1296 v0
  = let v1 = d_'43''45'isMonoid_1280 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1298 v7
du_'8729''45'cong'737'_1298 ::
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1298 v0
  = let v1 = d_'43''45'isMonoid_1280 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsNearSemiring._.identity
d_identity_1300 ::
  T_IsNearSemiring_1262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1300 v0
  = coe d_identity_726 (coe d_'43''45'isMonoid_1280 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityʳ
d_identity'691'_1302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
d_identity'691'_1302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1302 v7
du_identity'691'_1302 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
du_identity'691'_1302 v0
  = coe du_identity'691'_756 (coe d_'43''45'isMonoid_1280 (coe v0))
-- Algebra.Structures.IsNearSemiring._.identityˡ
d_identity'737'_1304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
d_identity'737'_1304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1304 v7
du_identity'737'_1304 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
du_identity'737'_1304 v0
  = coe du_identity'737'_754 (coe d_'43''45'isMonoid_1280 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isMagma
d_isMagma_1306 :: T_IsNearSemiring_1262 -> T_IsMagma_180
d_isMagma_1306 v0
  = coe
      d_isMagma_498
      (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))
-- Algebra.Structures.IsNearSemiring._.isSemigroup
d_isSemigroup_1308 :: T_IsNearSemiring_1262 -> T_IsSemigroup_490
d_isSemigroup_1308 v0
  = coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isUnitalMagma
d_isUnitalMagma_1310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1262 -> T_IsUnitalMagma_668
d_isUnitalMagma_1310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isUnitalMagma_1310 v7
du_isUnitalMagma_1310 ::
  T_IsNearSemiring_1262 -> T_IsUnitalMagma_668
du_isUnitalMagma_1310 v0
  = coe du_isUnitalMagma_758 (coe d_'43''45'isMonoid_1280 (coe v0))
-- Algebra.Structures.IsNearSemiring._.isEquivalence
d_isEquivalence_1312 ::
  T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1312 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0))))
-- Algebra.Structures.IsNearSemiring._.isPartialEquivalence
d_isPartialEquivalence_1314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1314 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1314 v7
du_isPartialEquivalence_1314 ::
  T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1314 v0
  = let v1 = d_'43''45'isMonoid_1280 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsNearSemiring._.refl
d_refl_1316 :: T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny
d_refl_1316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.reflexive
d_reflexive_1318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1318 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1318 v7
du_reflexive_1318 ::
  T_IsNearSemiring_1262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1318 v0
  = let v1 = d_'43''45'isMonoid_1280 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsNearSemiring._.setoid
d_setoid_1320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1320 v7
du_setoid_1320 ::
  T_IsNearSemiring_1262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1320 v0
  = let v1 = d_'43''45'isMonoid_1280 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsNearSemiring._.sym
d_sym_1322 ::
  T_IsNearSemiring_1262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))))
-- Algebra.Structures.IsNearSemiring._.trans
d_trans_1324 ::
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))))
-- Algebra.Structures.IsNearSemiring.*-isMagma
d_'42''45'isMagma_1326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1262 -> T_IsMagma_180
d_'42''45'isMagma_1326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1326 v7
du_'42''45'isMagma_1326 :: T_IsNearSemiring_1262 -> T_IsMagma_180
du_'42''45'isMagma_1326 v0
  = coe
      C_constructor_212
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_1280 (coe v0)))))
      (coe d_'42''45'cong_1282 (coe v0))
-- Algebra.Structures.IsNearSemiring.*-isSemigroup
d_'42''45'isSemigroup_1328 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsNearSemiring_1262 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1328 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1328 v7
du_'42''45'isSemigroup_1328 ::
  T_IsNearSemiring_1262 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1328 v0
  = coe
      C_constructor_524 (coe du_'42''45'isMagma_1326 (coe v0))
      (coe d_'42''45'assoc_1284 (coe v0))
-- Algebra.Structures.IsNearSemiring._.∙-congʳ
d_'8729''45'cong'691'_1332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1332 v7
du_'8729''45'cong'691'_1332 ::
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1332 v0
  = let v1 = coe du_'42''45'isMagma_1326 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsNearSemiring._.∙-congˡ
d_'8729''45'cong'737'_1334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1334 v7
du_'8729''45'cong'737'_1334 ::
  T_IsNearSemiring_1262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1334 v0
  = let v1 = coe du_'42''45'isMagma_1326 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemiringWithoutOne
d_IsSemiringWithoutOne_1344 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsSemiringWithoutOne_1344
  = C_constructor_1432 T_IsCommutativeMonoid_766
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutOne.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1362 ::
  T_IsSemiringWithoutOne_1344 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1362 v0
  = case coe v0 of
      C_constructor_1432 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.*-cong
d_'42''45'cong_1364 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1364 v0
  = case coe v0 of
      C_constructor_1432 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.*-assoc
d_'42''45'assoc_1366 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1366 v0
  = case coe v0 of
      C_constructor_1432 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.distrib
d_distrib_1368 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1368 v0
  = case coe v0 of
      C_constructor_1432 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne.zero
d_zero_1370 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1370 v0
  = case coe v0 of
      C_constructor_1432 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutOne._.assoc
d_assoc_1374 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1374 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutOne._.comm
d_comm_1376 ::
  T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1376 v0
  = coe d_comm_778 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1378 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1378 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1380 v7
du_'8729''45'cong'691'_1380 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1380 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1382 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1382 v7
du_'8729''45'cong'737'_1382 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1382 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiringWithoutOne._.identity
d_identity_1384 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1384 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutOne._.identityʳ
d_identity'691'_1386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
d_identity'691'_1386 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1386 v7
du_identity'691'_1386 ::
  T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
du_identity'691'_1386 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.identityˡ
d_identity'737'_1388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
d_identity'737'_1388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1388 v7
du_identity'737'_1388 ::
  T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
du_identity'737'_1388 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1390 v7
du_isCommutativeMagma_1390 ::
  T_IsSemiringWithoutOne_1344 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1390 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_608
         (coe du_isCommutativeSemigroup_816 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1392 v7
du_isCommutativeSemigroup_1392 ::
  T_IsSemiringWithoutOne_1344 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1392 v0
  = coe
      du_isCommutativeSemigroup_816
      (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isMonoid
d_isMonoid_1394 :: T_IsSemiringWithoutOne_1344 -> T_IsMonoid_714
d_isMonoid_1394 v0
  = coe
      d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.isEquivalence
d_isEquivalence_1396 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1396 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutOne._.setoid
d_setoid_1398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1398 v7
du_setoid_1398 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1398 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1362 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_498 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1402 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1402 v7
du_isPartialEquivalence_1402 ::
  T_IsSemiringWithoutOne_1344 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1402 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne._.refl
d_refl_1404 :: T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
d_refl_1404 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne._.reflexive
d_reflexive_1406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1406 v7
du_reflexive_1406 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1406 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
      v1
-- Algebra.Structures.IsSemiringWithoutOne._.sym
d_sym_1408 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1408 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne._.trans
d_trans_1410 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1410 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutOne.*-isMagma
d_'42''45'isMagma_1412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> T_IsMagma_180
d_'42''45'isMagma_1412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1412 v7
du_'42''45'isMagma_1412 ::
  T_IsSemiringWithoutOne_1344 -> T_IsMagma_180
du_'42''45'isMagma_1412 v0
  = coe
      C_constructor_212
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1362 (coe v0))))))
      (coe d_'42''45'cong_1364 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.*-isSemigroup
d_'42''45'isSemigroup_1414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1414 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1414 v7
du_'42''45'isSemigroup_1414 ::
  T_IsSemiringWithoutOne_1344 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1414 v0
  = coe
      C_constructor_524 (coe du_'42''45'isMagma_1412 (coe v0))
      (coe d_'42''45'assoc_1366 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1418 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1418 v7
du_'8729''45'cong'691'_1418 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1418 v0
  = let v1 = coe du_'42''45'isMagma_1412 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1420 v7
du_'8729''45'cong'737'_1420 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1420 v0
  = let v1 = coe du_'42''45'isMagma_1412 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsSemiringWithoutOne.distribˡ
d_distrib'737'_1422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'737'_1422 v7
du_distrib'737'_1422 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1422 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_1368 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.distribʳ
d_distrib'691'_1424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'691'_1424 v7
du_distrib'691'_1424 ::
  T_IsSemiringWithoutOne_1344 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1424 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_1368 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroˡ
d_zero'737'_1426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
d_zero'737'_1426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_1426 v7
du_zero'737'_1426 ::
  T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
du_zero'737'_1426 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_1370 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.zeroʳ
d_zero'691'_1428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
d_zero'691'_1428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_1428 v7
du_zero'691'_1428 ::
  T_IsSemiringWithoutOne_1344 -> AgdaAny -> AgdaAny
du_zero'691'_1428 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_1370 (coe v0))
-- Algebra.Structures.IsSemiringWithoutOne.isNearSemiring
d_isNearSemiring_1430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsSemiringWithoutOne_1344 -> T_IsNearSemiring_1262
d_isNearSemiring_1430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_1430 v7
du_isNearSemiring_1430 ::
  T_IsSemiringWithoutOne_1344 -> T_IsNearSemiring_1262
du_isNearSemiring_1430 v0
  = coe
      C_constructor_1336
      (coe
         d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1362 (coe v0)))
      (coe d_'42''45'cong_1364 (coe v0))
      (coe d_'42''45'assoc_1366 (coe v0))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (coe d_distrib_1368 (coe v0)))
      (coe du_zero'737'_1426 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne
d_IsCommutativeSemiringWithoutOne_1440 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsCommutativeSemiringWithoutOne_1440
  = C_constructor_1528 T_IsSemiringWithoutOne_1344
                       (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.isSemiringWithoutOne
d_isSemiringWithoutOne_1452 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1452 v0
  = case coe v0 of
      C_constructor_1528 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-comm
d_'42''45'comm_1454 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1454 v0
  = case coe v0 of
      C_constructor_1528 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-assoc
d_'42''45'assoc_1458 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1458 v0
  = coe
      d_'42''45'assoc_1366 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-cong
d_'42''45'cong_1460 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1460 v0
  = coe
      d_'42''45'cong_1364 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1462 v7
du_'8729''45'cong'691'_1462 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1462 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMagma_1412 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1464 v7
du_'8729''45'cong'737'_1464 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1464 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMagma_1412 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isMagma
d_'42''45'isMagma_1466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeSemiringWithoutOne_1440 -> T_IsMagma_180
d_'42''45'isMagma_1466 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isMagma_1466 v7
du_'42''45'isMagma_1466 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsMagma_180
du_'42''45'isMagma_1466 v0
  = coe
      du_'42''45'isMagma_1412 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_1468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1468 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'42''45'isSemigroup_1468 v7
du_'42''45'isSemigroup_1468 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1468 v0
  = coe
      du_'42''45'isSemigroup_1414
      (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.assoc
d_assoc_1470 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1470 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1362
               (coe d_isSemiringWithoutOne_1452 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.comm
d_comm_1472 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1472 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1362
         (coe d_isSemiringWithoutOne_1452 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-cong
d_'8729''45'cong_1474 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1474 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1362
                  (coe d_isSemiringWithoutOne_1452 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_1476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_1476 v7
du_'8729''45'cong'691'_1476 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1476 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_1478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_1478 v7
du_'8729''45'cong'737'_1478 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1478 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identity
d_identity_1480 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1480 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1362
            (coe d_isSemiringWithoutOne_1452 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityʳ
d_identity'691'_1482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
d_identity'691'_1482 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'691'_1482 v7
du_identity'691'_1482 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
du_identity'691'_1482 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.identityˡ
d_identity'737'_1484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
d_identity'737'_1484 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_identity'737'_1484 v7
du_identity'737'_1484 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
du_identity'737'_1484 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1486 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1486 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1486 v7
du_isCommutativeMagma_1486 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1486 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_isCommutativeSemigroup_816 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1488 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1488 v0
  = coe
      d_'43''45'isCommutativeMonoid_1362
      (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_1490 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1490 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeSemigroup_1490 v7
du_isCommutativeSemigroup_1490 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1490 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_816
         (coe d_'43''45'isCommutativeMonoid_1362 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isMonoid
d_isMonoid_1492 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsMonoid_714
d_isMonoid_1492 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1362
         (coe d_isSemiringWithoutOne_1452 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distrib
d_distrib_1494 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1494 v0
  = coe d_distrib_1368 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribʳ
d_distrib'691'_1496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1496 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'691'_1496 v7
du_distrib'691'_1496 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1496 v0
  = coe
      du_distrib'691'_1424 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.distribˡ
d_distrib'737'_1498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_distrib'737'_1498 v7
du_distrib'737'_1498 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1498 v0
  = coe
      du_distrib'737'_1422 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isEquivalence
d_isEquivalence_1500 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1500 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1362
                  (coe d_isSemiringWithoutOne_1452 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isNearSemiring
d_isNearSemiring_1502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsNearSemiring_1262
d_isNearSemiring_1502 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isNearSemiring_1502 v7
du_isNearSemiring_1502 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsNearSemiring_1262
du_isNearSemiring_1502 v0
  = coe
      du_isNearSemiring_1430 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_1504 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1504 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_1504 v7
du_isPartialEquivalence_1504 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1504 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe
            d_isEquivalence_188
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_776
                     (coe d_'43''45'isCommutativeMonoid_1362 (coe v1)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.refl
d_refl_1506 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
d_refl_1506 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1362
                     (coe d_isSemiringWithoutOne_1452 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.reflexive
d_reflexive_1508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_1508 v7
du_reflexive_1508 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1508 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe
              d_isEquivalence_188
              (coe
                 d_isMagma_498
                 (coe
                    d_isSemigroup_724
                    (coe
                       d_isMonoid_776
                       (coe d_'43''45'isCommutativeMonoid_1362 (coe v1))))))
           v2)
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.setoid
d_setoid_1510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_1510 v7
du_setoid_1510 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1510 v0
  = let v1 = d_isSemiringWithoutOne_1452 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1362 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe (coe du_setoid_204 (coe d_isMagma_498 (coe v4))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.sym
d_sym_1512 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1512 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1362
                     (coe d_isSemiringWithoutOne_1452 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.trans
d_trans_1514 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1514 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1362
                     (coe d_isSemiringWithoutOne_1452 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zero
d_zero_1516 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1516 v0
  = coe d_zero_1370 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroʳ
d_zero'691'_1518 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
d_zero'691'_1518 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'691'_1518 v7
du_zero'691'_1518 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
du_zero'691'_1518 v0
  = coe du_zero'691'_1428 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.zeroˡ
d_zero'737'_1520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
d_zero'737'_1520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_zero'737'_1520 v7
du_zero'737'_1520 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> AgdaAny -> AgdaAny
du_zero'737'_1520 v0
  = coe du_zero'737'_1426 (coe d_isSemiringWithoutOne_1452 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 ->
  T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      v7
  = du_'42''45'isCommutativeSemigroup_1522 v7
du_'42''45'isCommutativeSemigroup_1522 ::
  T_IsCommutativeSemiringWithoutOne_1440 ->
  T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_1522 v0
  = coe
      C_constructor_610
      (coe
         du_'42''45'isSemigroup_1414
         (coe d_isSemiringWithoutOne_1452 (coe v0)))
      (coe d_'42''45'comm_1454 (coe v0))
-- Algebra.Structures.IsCommutativeSemiringWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_1526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isCommutativeMagma_1526 v7
du_isCommutativeMagma_1526 ::
  T_IsCommutativeSemiringWithoutOne_1440 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1526 v0
  = coe
      du_isCommutativeMagma_608
      (coe du_'42''45'isCommutativeSemigroup_1522 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero
d_IsSemiringWithoutAnnihilatingZero_1538 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsSemiringWithoutAnnihilatingZero_1538
  = C_constructor_1632 T_IsCommutativeMonoid_766
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1558 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1558 v0
  = case coe v0 of
      C_constructor_1632 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-cong
d_'42''45'cong_1560 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1560 v0
  = case coe v0 of
      C_constructor_1632 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-assoc
d_'42''45'assoc_1562 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1562 v0
  = case coe v0 of
      C_constructor_1632 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-identity
d_'42''45'identity_1564 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1564 v0
  = case coe v0 of
      C_constructor_1632 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distrib
d_distrib_1566 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1566 v0
  = case coe v0 of
      C_constructor_1632 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribˡ
d_distrib'737'_1568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1568 v8
du_distrib'737'_1568 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1568 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_1566 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.distribʳ
d_distrib'691'_1570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1570 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1570 v8
du_distrib'691'_1570 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1570 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_1566 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.assoc
d_assoc_1574 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1574 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.comm
d_comm_1576 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1576 v0
  = coe d_comm_778 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-cong
d_'8729''45'cong_1578 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1578 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1580 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1580 v8
du_'8729''45'cong'691'_1580 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1580 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1582 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1582 v8
du_'8729''45'cong'737'_1582 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1582 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identity
d_identity_1584 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1584 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
d_identity'691'_1586 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1586 v8
du_identity'691'_1586 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
du_identity'691'_1586 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
d_identity'737'_1588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1588 v8
du_identity'737'_1588 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
du_identity'737'_1588 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeMagma
d_isCommutativeMagma_1590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  T_IsCommutativeMagma_216
d_isCommutativeMagma_1590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1590 v8
du_isCommutativeMagma_1590 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  T_IsCommutativeMagma_216
du_isCommutativeMagma_1590 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_608
         (coe du_isCommutativeSemigroup_816 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isCommutativeSemigroup
d_isCommutativeSemigroup_1592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1592 v8
du_isCommutativeSemigroup_1592 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1592 v0
  = coe
      du_isCommutativeSemigroup_816
      (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMagma
d_isMagma_1594 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMagma_180
d_isMagma_1594 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isMonoid
d_isMonoid_1596 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMonoid_714
d_isMonoid_1596 v0
  = coe
      d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isSemigroup
d_isSemigroup_1598 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsSemigroup_490
d_isSemigroup_1598 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isUnitalMagma
d_isUnitalMagma_1600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsUnitalMagma_668
d_isUnitalMagma_1600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1600 v8
du_isUnitalMagma_1600 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsUnitalMagma_668
du_isUnitalMagma_1600 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v1)))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isEquivalence
d_isEquivalence_1602 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1602 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776 (coe d_'43''45'isCommutativeMonoid_1558 (coe v0)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.isPartialEquivalence
d_isPartialEquivalence_1604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1604 v8
du_isPartialEquivalence_1604 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1604 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.refl
d_refl_1606 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
d_refl_1606 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.reflexive
d_reflexive_1608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1608 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1608 v8
du_reflexive_1608 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1608 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe d_isEquivalence_188 (coe v4)) v5))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.setoid
d_setoid_1610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1610 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1610 v8
du_setoid_1610 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1610 v0
  = let v1 = d_'43''45'isCommutativeMonoid_1558 (coe v0) in
    coe
      (let v2 = d_isMonoid_776 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_498 (coe v3)))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.sym
d_sym_1612 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1612 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.trans
d_trans_1614 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1614 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMagma
d_'42''45'isMagma_1616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMagma_180
d_'42''45'isMagma_1616 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1616 v8
du_'42''45'isMagma_1616 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMagma_180
du_'42''45'isMagma_1616 v0
  = coe
      C_constructor_212
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe d_'43''45'isCommutativeMonoid_1558 (coe v0))))))
      (coe d_'42''45'cong_1560 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isSemigroup
d_'42''45'isSemigroup_1618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1618 v8
du_'42''45'isSemigroup_1618 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1618 v0
  = coe
      C_constructor_524 (coe du_'42''45'isMagma_1616 (coe v0))
      (coe d_'42''45'assoc_1562 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero.*-isMonoid
d_'42''45'isMonoid_1620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMonoid_714
d_'42''45'isMonoid_1620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1620 v8
du_'42''45'isMonoid_1620 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> T_IsMonoid_714
du_'42''45'isMonoid_1620 v0
  = coe
      C_constructor_760 (coe du_'42''45'isSemigroup_1618 (coe v0))
      (coe d_'42''45'identity_1564 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congʳ
d_'8729''45'cong'691'_1624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1624 v8
du_'8729''45'cong'691'_1624 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1624 v0
  = let v1 = coe du_'42''45'isMonoid_1620 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.∙-congˡ
d_'8729''45'cong'737'_1626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1626 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1626 v8
du_'8729''45'cong'737'_1626 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1626 v0
  = let v1 = coe du_'42''45'isMonoid_1620 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityʳ
d_identity'691'_1628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
d_identity'691'_1628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1628 v8
du_identity'691'_1628 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
du_identity'691'_1628 v0
  = coe du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v0))
-- Algebra.Structures.IsSemiringWithoutAnnihilatingZero._.identityˡ
d_identity'737'_1630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
d_identity'737'_1630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1630 v8
du_identity'737'_1630 ::
  T_IsSemiringWithoutAnnihilatingZero_1538 -> AgdaAny -> AgdaAny
du_identity'737'_1630 v0
  = coe du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v0))
-- Algebra.Structures.IsSemiring
d_IsSemiring_1642 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsSemiring_1642
  = C_constructor_1742 T_IsSemiringWithoutAnnihilatingZero_1538
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsSemiring.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1656 ::
  T_IsSemiring_1642 -> T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1656 v0
  = case coe v0 of
      C_constructor_1742 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring.zero
d_zero_1658 ::
  T_IsSemiring_1642 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1658 v0
  = case coe v0 of
      C_constructor_1742 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsSemiring._.*-assoc
d_'42''45'assoc_1662 ::
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1662 v0
  = coe
      d_'42''45'assoc_1562
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.*-cong
d_'42''45'cong_1664 ::
  T_IsSemiring_1642 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1664 v0
  = coe
      d_'42''45'cong_1560
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1666 v8
du_'8729''45'cong'691'_1666 ::
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1666 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_1620 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1668 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1668 v8
du_'8729''45'cong'737'_1668 ::
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1668 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_1620 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsSemiring._.*-identity
d_'42''45'identity_1670 ::
  T_IsSemiring_1642 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1670 v0
  = coe
      d_'42''45'identity_1564
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_identity'691'_1672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1672 v8
du_identity'691'_1672 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_identity'691'_1672 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (coe du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v1)))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_identity'737'_1674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1674 v8
du_identity'737'_1674 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_identity'737'_1674 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (coe du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v1)))
-- Algebra.Structures.IsSemiring._.*-isMagma
d_'42''45'isMagma_1676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsMagma_180
d_'42''45'isMagma_1676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1676 v8
du_'42''45'isMagma_1676 :: T_IsSemiring_1642 -> T_IsMagma_180
du_'42''45'isMagma_1676 v0
  = coe
      du_'42''45'isMagma_1616
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.*-isMonoid
d_'42''45'isMonoid_1678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsMonoid_714
d_'42''45'isMonoid_1678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1678 v8
du_'42''45'isMonoid_1678 :: T_IsSemiring_1642 -> T_IsMonoid_714
du_'42''45'isMonoid_1678 v0
  = coe
      du_'42''45'isMonoid_1620
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1680 v8
du_'42''45'isSemigroup_1680 ::
  T_IsSemiring_1642 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1680 v0
  = coe
      du_'42''45'isSemigroup_1618
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.assoc
d_assoc_1682 ::
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1682 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))))
-- Algebra.Structures.IsSemiring._.comm
d_comm_1684 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1684 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
-- Algebra.Structures.IsSemiring._.∙-cong
d_'8729''45'cong_1686 ::
  T_IsSemiring_1642 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1686 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))))))
-- Algebra.Structures.IsSemiring._.∙-congʳ
d_'8729''45'cong'691'_1688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1688 v8
du_'8729''45'cong'691'_1688 ::
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1688 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsSemiring._.∙-congˡ
d_'8729''45'cong'737'_1690 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1690 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1690 v8
du_'8729''45'cong'737'_1690 ::
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1690 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsSemiring._.identity
d_identity_1692 ::
  T_IsSemiring_1642 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1692 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))))
-- Algebra.Structures.IsSemiring._.identityʳ
d_identity'691'_1694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_identity'691'_1694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1694 v8
du_identity'691'_1694 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_identity'691'_1694 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v2))))
-- Algebra.Structures.IsSemiring._.identityˡ
d_identity'737'_1696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_identity'737'_1696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1696 v8
du_identity'737'_1696 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_identity'737'_1696 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v2))))
-- Algebra.Structures.IsSemiring._.isCommutativeMagma
d_isCommutativeMagma_1698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1698 v8
du_isCommutativeMagma_1698 ::
  T_IsSemiring_1642 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1698 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_isCommutativeSemigroup_816 (coe v2))))
-- Algebra.Structures.IsSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1700 ::
  T_IsSemiring_1642 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1700 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1642 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1702 v8
du_isCommutativeSemigroup_1702 ::
  T_IsSemiring_1642 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1702 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_816
         (coe d_'43''45'isCommutativeMonoid_1558 (coe v1)))
-- Algebra.Structures.IsSemiring._.isMagma
d_isMagma_1704 :: T_IsSemiring_1642 -> T_IsMagma_180
d_isMagma_1704 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))))
-- Algebra.Structures.IsSemiring._.isMonoid
d_isMonoid_1706 :: T_IsSemiring_1642 -> T_IsMonoid_714
d_isMonoid_1706 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
-- Algebra.Structures.IsSemiring._.isSemigroup
d_isSemigroup_1708 :: T_IsSemiring_1642 -> T_IsSemigroup_490
d_isSemigroup_1708 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))))
-- Algebra.Structures.IsSemiring._.isUnitalMagma
d_isUnitalMagma_1710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsUnitalMagma_668
d_isUnitalMagma_1710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1710 v8
du_isUnitalMagma_1710 :: T_IsSemiring_1642 -> T_IsUnitalMagma_668
du_isUnitalMagma_1710 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v2))))
-- Algebra.Structures.IsSemiring._.distrib
d_distrib_1712 ::
  T_IsSemiring_1642 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1712 v0
  = coe
      d_distrib_1566
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.distribʳ
d_distrib'691'_1714 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1714 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1714 v8
du_distrib'691'_1714 ::
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1714 v0
  = coe
      du_distrib'691'_1570
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.distribˡ
d_distrib'737'_1716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1716 v8
du_distrib'737'_1716 ::
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1716 v0
  = coe
      du_distrib'737'_1568
      (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))
-- Algebra.Structures.IsSemiring._.isEquivalence
d_isEquivalence_1718 ::
  T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1718 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0))))))
-- Algebra.Structures.IsSemiring._.isPartialEquivalence
d_isPartialEquivalence_1720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1720 v8
du_isPartialEquivalence_1720 ::
  T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1720 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe d_isEquivalence_188 (coe v5)))))))
-- Algebra.Structures.IsSemiring._.refl
d_refl_1722 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_refl_1722 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.reflexive
d_reflexive_1724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1724 v8
du_reflexive_1724 ::
  T_IsSemiring_1642 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1724 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                       (coe d_isEquivalence_188 (coe v5)) v6)))))
-- Algebra.Structures.IsSemiring._.setoid
d_setoid_1726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1726 v8
du_setoid_1726 ::
  T_IsSemiring_1642 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1726 v0
  = let v1 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v0) in
    coe
      (let v2 = d_'43''45'isCommutativeMonoid_1558 (coe v1) in
       coe
         (let v3 = d_isMonoid_776 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe (coe du_setoid_204 (coe d_isMagma_498 (coe v4))))))
-- Algebra.Structures.IsSemiring._.sym
d_sym_1728 ::
  T_IsSemiring_1642 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))))))
-- Algebra.Structures.IsSemiring._.trans
d_trans_1730 ::
  T_IsSemiring_1642 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))))))
-- Algebra.Structures.IsSemiring.isSemiringWithoutOne
d_isSemiringWithoutOne_1732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsSemiring_1642 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1732 v8
du_isSemiringWithoutOne_1732 ::
  T_IsSemiring_1642 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1732 v0
  = coe
      C_constructor_1432
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
      (coe
         d_'42''45'cong_1560
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
      (coe
         d_'42''45'assoc_1562
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
      (coe
         d_distrib_1566
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v0)))
      (coe d_zero_1658 (coe v0))
-- Algebra.Structures.IsSemiring._.isNearSemiring
d_isNearSemiring_1736 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> T_IsNearSemiring_1262
d_isNearSemiring_1736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1736 v8
du_isNearSemiring_1736 ::
  T_IsSemiring_1642 -> T_IsNearSemiring_1262
du_isNearSemiring_1736 v0
  = coe
      du_isNearSemiring_1430 (coe du_isSemiringWithoutOne_1732 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroʳ
d_zero'691'_1738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_zero'691'_1738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1738 v8
du_zero'691'_1738 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_zero'691'_1738 v0
  = coe du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v0))
-- Algebra.Structures.IsSemiring._.zeroˡ
d_zero'737'_1740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsSemiring_1642 -> AgdaAny -> AgdaAny
d_zero'737'_1740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1740 v8
du_zero'737'_1740 :: T_IsSemiring_1642 -> AgdaAny -> AgdaAny
du_zero'737'_1740 v0
  = coe du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring
d_IsCommutativeSemiring_1752 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsCommutativeSemiring_1752
  = C_constructor_1864 T_IsSemiring_1642
                       (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeSemiring.isSemiring
d_isSemiring_1766 ::
  T_IsCommutativeSemiring_1752 -> T_IsSemiring_1642
d_isSemiring_1766 v0
  = case coe v0 of
      C_constructor_1864 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring.*-comm
d_'42''45'comm_1768 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1768 v0
  = case coe v0 of
      C_constructor_1864 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeSemiring._.*-assoc
d_'42''45'assoc_1772 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1772 v0
  = coe
      d_'42''45'assoc_1562
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_1766 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.*-cong
d_'42''45'cong_1774 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1774 v0
  = coe
      d_'42''45'cong_1560
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_1766 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1776 v8
du_'8729''45'cong'691'_1776 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1776 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1778 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1778 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1778 v8
du_'8729''45'cong'737'_1778 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1778 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsCommutativeSemiring._.*-identity
d_'42''45'identity_1780 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1780 v0
  = coe
      d_'42''45'identity_1564
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_1766 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_identity'691'_1782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1782 v8
du_identity'691'_1782 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_identity'691'_1782 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_identity'737'_1784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1784 v8
du_identity'737'_1784 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_identity'737'_1784 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.*-isMagma
d_'42''45'isMagma_1786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsMagma_180
d_'42''45'isMagma_1786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1786 v8
du_'42''45'isMagma_1786 ::
  T_IsCommutativeSemiring_1752 -> T_IsMagma_180
du_'42''45'isMagma_1786 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_1616
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsMonoid_714
d_'42''45'isMonoid_1788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1788 v8
du_'42''45'isMonoid_1788 ::
  T_IsCommutativeSemiring_1752 -> T_IsMonoid_714
du_'42''45'isMonoid_1788 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoid_1620
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1790 v8
du_'42''45'isSemigroup_1790 ::
  T_IsCommutativeSemiring_1752 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1790 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_1618
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.assoc
d_assoc_1792 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1792 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_1766 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.comm
d_comm_1794 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_1794 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_1766 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-cong
d_'8729''45'cong_1796 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1796 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_1766 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1798 v8
du_'8729''45'cong'691'_1798 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1798 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1800 v8
du_'8729''45'cong'737'_1800 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1800 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsCommutativeSemiring._.identity
d_identity_1802 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1802 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_1766 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.identityʳ
d_identity'691'_1804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_identity'691'_1804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1804 v8
du_identity'691'_1804 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_identity'691'_1804 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.identityˡ
d_identity'737'_1806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_identity'737'_1806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1806 v8
du_identity'737'_1806 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_identity'737'_1806 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1808 v8
du_isCommutativeMagma_1808 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1808 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_608
               (coe du_isCommutativeSemigroup_816 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1810 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1810 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_1766 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1812 v8
du_isCommutativeSemigroup_1812 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1812 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_816
            (coe d_'43''45'isCommutativeMonoid_1558 (coe v2))))
-- Algebra.Structures.IsCommutativeSemiring._.isMagma
d_isMagma_1814 :: T_IsCommutativeSemiring_1752 -> T_IsMagma_180
d_isMagma_1814 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_1766 (coe v0))))))
-- Algebra.Structures.IsCommutativeSemiring._.isMonoid
d_isMonoid_1816 :: T_IsCommutativeSemiring_1752 -> T_IsMonoid_714
d_isMonoid_1816 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_1766 (coe v0))))
-- Algebra.Structures.IsCommutativeSemiring._.isSemigroup
d_isSemigroup_1818 ::
  T_IsCommutativeSemiring_1752 -> T_IsSemigroup_490
d_isSemigroup_1818 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_1766 (coe v0)))))
-- Algebra.Structures.IsCommutativeSemiring._.isUnitalMagma
d_isUnitalMagma_1820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsUnitalMagma_668
d_isUnitalMagma_1820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1820 v8
du_isUnitalMagma_1820 ::
  T_IsCommutativeSemiring_1752 -> T_IsUnitalMagma_668
du_isUnitalMagma_1820 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsCommutativeSemiring._.distrib
d_distrib_1822 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1822 v0
  = coe
      d_distrib_1566
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_1766 (coe v0)))
-- Algebra.Structures.IsCommutativeSemiring._.distribʳ
d_distrib'691'_1824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1824 v8
du_distrib'691'_1824 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1824 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_distrib'691'_1570
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.distribˡ
d_distrib'737'_1826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1826 v8
du_distrib'737'_1826 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1826 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_distrib'737'_1568
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.isEquivalence
d_isEquivalence_1828 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1828 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_1766 (coe v0)))))))
-- Algebra.Structures.IsCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsNearSemiring_1262
d_isNearSemiring_1830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1830 v8
du_isNearSemiring_1830 ::
  T_IsCommutativeSemiring_1752 -> T_IsNearSemiring_1262
du_isNearSemiring_1830 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe
         du_isNearSemiring_1430 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1832 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1832 v8
du_isPartialEquivalence_1832 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1832 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe d_isEquivalence_188 (coe v6))))))))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1834 ::
  T_IsCommutativeSemiring_1752 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1834 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1656
      (coe d_isSemiring_1766 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1836 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1836 v8
du_isSemiringWithoutOne_1836 ::
  T_IsCommutativeSemiring_1752 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1836 v0
  = coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_1766 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.refl
d_refl_1838 :: T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_refl_1838 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_1766 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.reflexive
d_reflexive_1840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1840 v8
du_reflexive_1840 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1840 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                          (coe d_isEquivalence_188 (coe v6)) v7))))))
-- Algebra.Structures.IsCommutativeSemiring._.setoid
d_setoid_1842 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1842 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1842 v8
du_setoid_1842 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1842 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe (coe du_setoid_204 (coe d_isMagma_498 (coe v5)))))))
-- Algebra.Structures.IsCommutativeSemiring._.sym
d_sym_1844 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_1766 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.trans
d_trans_1846 ::
  T_IsCommutativeSemiring_1752 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1846 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_1766 (coe v0))))))))
-- Algebra.Structures.IsCommutativeSemiring._.zero
d_zero_1848 ::
  T_IsCommutativeSemiring_1752 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1848 v0 = coe d_zero_1658 (coe d_isSemiring_1766 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.zeroʳ
d_zero'691'_1850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_zero'691'_1850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1850 v8
du_zero'691'_1850 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_zero'691'_1850 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.zeroˡ
d_zero'737'_1852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
d_zero'737'_1852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1852 v8
du_zero'737'_1852 ::
  T_IsCommutativeSemiring_1752 -> AgdaAny -> AgdaAny
du_zero'737'_1852 v0
  = let v1 = d_isSemiring_1766 (coe v0) in
    coe
      (coe du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 ->
  T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_1854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1854 v8
du_isCommutativeSemiringWithoutOne_1854 ::
  T_IsCommutativeSemiring_1752 ->
  T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_1854 v0
  = coe
      C_constructor_1528
      (coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_1766 (coe v0)))
      (coe d_'42''45'comm_1768 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1858 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeSemiring_1752 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_1858 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1858 v8
du_isCommutativeMagma_1858 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_1858 v0
  = let v1 = coe du_isCommutativeSemiringWithoutOne_1854 (coe v0) in
    coe
      (coe
         du_isCommutativeMagma_608
         (coe du_'42''45'isCommutativeSemigroup_1522 (coe v1)))
-- Algebra.Structures.IsCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1860 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1860 v8
du_'42''45'isCommutativeSemigroup_1860 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_1860 v0
  = coe
      du_'42''45'isCommutativeSemigroup_1522
      (coe du_isCommutativeSemiringWithoutOne_1854 (coe v0))
-- Algebra.Structures.IsCommutativeSemiring.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_1862 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1862 v8
du_'42''45'isCommutativeMonoid_1862 ::
  T_IsCommutativeSemiring_1752 -> T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_1862 v0
  = coe
      C_constructor_822
      (coe
         du_'42''45'isMonoid_1620
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_1766 (coe v0))))
      (coe d_'42''45'comm_1768 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring
d_IsCancellativeCommutativeSemiring_1874 a0 a1 a2 a3 a4 a5 a6 a7
  = ()
data T_IsCancellativeCommutativeSemiring_1874
  = C_constructor_1990 T_IsCommutativeSemiring_1752
                       (AgdaAny ->
                        AgdaAny ->
                        AgdaAny ->
                        (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
                        AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCancellativeCommutativeSemiring.isCommutativeSemiring
d_isCommutativeSemiring_1888 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_1888 v0
  = case coe v0 of
      C_constructor_1990 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring.*-cancelˡ-nonZero
d_'42''45'cancel'737''45'nonZero_1890 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_'42''45'cancel'737''45'nonZero_1890 v0
  = case coe v0 of
      C_constructor_1990 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-assoc
d_'42''45'assoc_1894 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_1894 v0
  = coe
      d_'42''45'assoc_1562
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-comm
d_'42''45'comm_1896 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_1896 v0
  = coe
      d_'42''45'comm_1768 (coe d_isCommutativeSemiring_1888 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-cong
d_'42''45'cong_1898 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_1898 v0
  = coe
      d_'42''45'cong_1560
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1900 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1900 v8
du_'8729''45'cong'691'_1900 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1900 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1620 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1902 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1902 v8
du_'8729''45'cong'737'_1902 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1902 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1620 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-identity
d_'42''45'identity_1904 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_1904 v0
  = coe
      d_'42''45'identity_1564
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_identity'691'_1906 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1906 v8
du_identity'691'_1906 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_identity'691'_1906 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_identity'737'_1908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1908 v8
du_identity'737'_1908 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_identity'737'_1908 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMagma_216
d_isCommutativeMagma_1910 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1910 v8
du_isCommutativeMagma_1910 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMagma_216
du_isCommutativeMagma_1910 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeSemiringWithoutOne_1854 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_'42''45'isCommutativeSemigroup_1522 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_1912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_1912 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                   v8
  = du_'42''45'isCommutativeMonoid_1912 v8
du_'42''45'isCommutativeMonoid_1912 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_1912 v0
  = coe
      du_'42''45'isCommutativeMonoid_1862
      (coe d_isCommutativeSemiring_1888 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_1914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_1914 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                      ~v7 v8
  = du_'42''45'isCommutativeSemigroup_1914 v8
du_'42''45'isCommutativeSemigroup_1914 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_1914 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (coe
         du_'42''45'isCommutativeSemigroup_1522
         (coe du_isCommutativeSemiringWithoutOne_1854 (coe v1)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isMagma
d_'42''45'isMagma_1916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMagma_180
d_'42''45'isMagma_1916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_1916 v8
du_'42''45'isMagma_1916 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMagma_180
du_'42''45'isMagma_1916 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_'42''45'isMagma_1616
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isMonoid
d_'42''45'isMonoid_1918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMonoid_714
d_'42''45'isMonoid_1918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_1918 v8
du_'42''45'isMonoid_1918 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMonoid_714
du_'42''45'isMonoid_1918 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoid_1620
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.*-isSemigroup
d_'42''45'isSemigroup_1920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsSemigroup_490
d_'42''45'isSemigroup_1920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_1920 v8
du_'42''45'isSemigroup_1920 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsSemigroup_490
du_'42''45'isSemigroup_1920 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_'42''45'isSemigroup_1618
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.assoc
d_assoc_1922 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_1922 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.comm
d_comm_1924 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_comm_1924 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-cong
d_'8729''45'cong_1926 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_1926 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congʳ
d_'8729''45'cong'691'_1928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_1928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_1928 v8
du_'8729''45'cong'691'_1928 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_1928 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.∙-congˡ
d_'8729''45'cong'737'_1930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_1930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_1930 v8
du_'8729''45'cong'737'_1930 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_1930 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identity
d_identity_1932 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_1932 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityʳ
d_identity'691'_1934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_identity'691'_1934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_1934 v8
du_identity'691'_1934 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_identity'691'_1934 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.identityˡ
d_identity'737'_1936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_identity'737'_1936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_1936 v8
du_identity'737'_1936 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_identity'737'_1936 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeMagma
d_isCommutativeMagma_1938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMagma_216
d_isCommutativeMagma_1938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_1938 v8
du_isCommutativeMagma_1938 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMagma_216
du_isCommutativeMagma_1938 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_608
                  (coe du_isCommutativeSemigroup_816 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_1940 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_1940 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_1942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_1942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_1942 v8
du_isCommutativeSemigroup_1942 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_1942 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_816
               (coe d_'43''45'isCommutativeMonoid_1558 (coe v3)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMagma
d_isMagma_1944 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMagma_180
d_isMagma_1944 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isMonoid
d_isMonoid_1946 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsMonoid_714
d_isMonoid_1946 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemigroup
d_isSemigroup_1948 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsSemigroup_490
d_isSemigroup_1948 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isUnitalMagma
d_isUnitalMagma_1950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsUnitalMagma_668
d_isUnitalMagma_1950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_1950 v8
du_isUnitalMagma_1950 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsUnitalMagma_668
du_isUnitalMagma_1950 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distrib
d_distrib_1952 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_1952 v0
  = coe
      d_distrib_1566
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe
            d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribʳ
d_distrib'691'_1954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_1954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_1954 v8
du_distrib'691'_1954 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_1954 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_distrib'691'_1570
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.distribˡ
d_distrib'737'_1956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_1956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_1956 v8
du_distrib'737'_1956 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_1956 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_distrib'737'_1568
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_1958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_1958 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
                                       ~v7 v8
  = du_isCommutativeSemiringWithoutOne_1958 v8
du_isCommutativeSemiringWithoutOne_1958 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_1958 v0
  = coe
      du_isCommutativeSemiringWithoutOne_1854
      (coe d_isCommutativeSemiring_1888 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isEquivalence
d_isEquivalence_1960 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_1960 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isNearSemiring
d_isNearSemiring_1962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsNearSemiring_1262
d_isNearSemiring_1962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_1962 v8
du_isNearSemiring_1962 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsNearSemiring_1262
du_isNearSemiring_1962 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_isNearSemiring_1430
            (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isPartialEquivalence
d_isPartialEquivalence_1964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_1964 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_1964 v8
du_isPartialEquivalence_1964 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_1964 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe d_isEquivalence_188 (coe v7)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiring
d_isSemiring_1966 ::
  T_IsCancellativeCommutativeSemiring_1874 -> T_IsSemiring_1642
d_isSemiring_1966 v0
  = coe d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_1968 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_1968 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1656
      (coe d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_1970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_1970 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_1970 v8
du_isSemiringWithoutOne_1970 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_1970 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_1766 (coe v1)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.refl
d_refl_1972 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_refl_1972 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_1766
                           (coe d_isCommutativeSemiring_1888 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.reflexive
d_reflexive_1974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_1974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_1974 v8
du_reflexive_1974 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_1974 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                             (coe d_isEquivalence_188 (coe v7)) v8)))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.setoid
d_setoid_1976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_1976 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_1976 v8
du_setoid_1976 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_1976 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe (coe du_setoid_204 (coe d_isMagma_498 (coe v6))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.sym
d_sym_1978 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_1978 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_1766
                           (coe d_isCommutativeSemiring_1888 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.trans
d_trans_1980 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_1980 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_1766
                           (coe d_isCommutativeSemiring_1888 (coe v0)))))))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zero
d_zero_1982 ::
  T_IsCancellativeCommutativeSemiring_1874 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_1982 v0
  = coe
      d_zero_1658
      (coe d_isSemiring_1766 (coe d_isCommutativeSemiring_1888 (coe v0)))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroʳ
d_zero'691'_1984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_zero'691'_1984 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_1984 v8
du_zero'691'_1984 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_zero'691'_1984 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring._.zeroˡ
d_zero'737'_1986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
d_zero'737'_1986 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_1986 v8
du_zero'737'_1986 ::
  T_IsCancellativeCommutativeSemiring_1874 -> AgdaAny -> AgdaAny
du_zero'737'_1986 v0
  = let v1 = d_isCommutativeSemiring_1888 (coe v0) in
    coe
      (let v2 = d_isSemiring_1766 (coe v1) in
       coe
         (coe
            du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsCancellativeCommutativeSemiring.*-cancelʳ-nonZero
d_'42''45'cancel'691''45'nonZero_1988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
d_'42''45'cancel'691''45'nonZero_1988 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                      ~v7 v8
  = du_'42''45'cancel'691''45'nonZero_1988 v5 v8
du_'42''45'cancel'691''45'nonZero_1988 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsCancellativeCommutativeSemiring_1874 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny -> AgdaAny
du_'42''45'cancel'691''45'nonZero_1988 v0 v1
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_comm'8743'almostCancel'737''8658'almostCancel'691'_410
      (coe
         du_setoid_204
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_1766
                           (coe d_isCommutativeSemiring_1888 (coe v1)))))))))
      (coe v0)
      (coe
         d_'42''45'comm_1768 (coe d_isCommutativeSemiring_1888 (coe v1)))
      (coe d_'42''45'cancel'737''45'nonZero_1890 (coe v1))
-- Algebra.Structures.IsIdempotentSemiring
d_IsIdempotentSemiring_2000 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsIdempotentSemiring_2000
  = C_constructor_2112 T_IsSemiring_1642 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsIdempotentSemiring.isSemiring
d_isSemiring_2014 ::
  T_IsIdempotentSemiring_2000 -> T_IsSemiring_1642
d_isSemiring_2014 v0
  = case coe v0 of
      C_constructor_2112 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentSemiring.+-idem
d_'43''45'idem_2016 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_'43''45'idem_2016 v0
  = case coe v0 of
      C_constructor_2112 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsIdempotentSemiring._.*-assoc
d_'42''45'assoc_2020 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2020 v0
  = coe
      d_'42''45'assoc_1562
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.*-cong
d_'42''45'cong_2022 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2022 v0
  = coe
      d_'42''45'cong_1560
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congʳ
d_'8729''45'cong'691'_2024 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2024 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2024 v8
du_'8729''45'cong'691'_2024 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2024 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congˡ
d_'8729''45'cong'737'_2026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2026 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2026 v8
du_'8729''45'cong'737'_2026 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2026 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsIdempotentSemiring._.*-identity
d_'42''45'identity_2028 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2028 v0
  = coe
      d_'42''45'identity_1564
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.identityʳ
d_identity'691'_2030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_identity'691'_2030 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2030 v8
du_identity'691'_2030 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_identity'691'_2030 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.identityˡ
d_identity'737'_2032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_identity'737'_2032 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2032 v8
du_identity'737'_2032 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_identity'737'_2032 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.*-isMagma
d_'42''45'isMagma_2034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsMagma_180
d_'42''45'isMagma_2034 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_2034 v8
du_'42''45'isMagma_2034 ::
  T_IsIdempotentSemiring_2000 -> T_IsMagma_180
du_'42''45'isMagma_2034 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_1616
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.*-isMonoid
d_'42''45'isMonoid_2036 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsMonoid_714
d_'42''45'isMonoid_2036 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_2036 v8
du_'42''45'isMonoid_2036 ::
  T_IsIdempotentSemiring_2000 -> T_IsMonoid_714
du_'42''45'isMonoid_2036 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoid_1620
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.*-isSemigroup
d_'42''45'isSemigroup_2038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2038 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_2038 v8
du_'42''45'isSemigroup_2038 ::
  T_IsIdempotentSemiring_2000 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2038 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_1618
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.assoc
d_assoc_2040 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2040 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_2014 (coe v0))))))
-- Algebra.Structures.IsIdempotentSemiring._.comm
d_comm_2042 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2042 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2014 (coe v0))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-cong
d_'8729''45'cong_2044 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2044 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_2014 (coe v0)))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congʳ
d_'8729''45'cong'691'_2046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2046 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2046 v8
du_'8729''45'cong'691'_2046 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2046 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsIdempotentSemiring._.∙-congˡ
d_'8729''45'cong'737'_2048 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2048 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2048 v8
du_'8729''45'cong'737'_2048 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2048 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsIdempotentSemiring._.identity
d_identity_2050 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2050 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_2014 (coe v0)))))
-- Algebra.Structures.IsIdempotentSemiring._.identityʳ
d_identity'691'_2052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_identity'691'_2052 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2052 v8
du_identity'691'_2052 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_identity'691'_2052 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.identityˡ
d_identity'737'_2054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_identity'737'_2054 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2054 v8
du_identity'737'_2054 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_identity'737'_2054 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.isCommutativeMagma
d_isCommutativeMagma_2056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2056 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_2056 v8
du_isCommutativeMagma_2056 ::
  T_IsIdempotentSemiring_2000 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2056 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_608
               (coe du_isCommutativeSemigroup_816 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2058 ::
  T_IsIdempotentSemiring_2000 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2058 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_2060 v8
du_isCommutativeSemigroup_2060 ::
  T_IsIdempotentSemiring_2000 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2060 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_816
            (coe d_'43''45'isCommutativeMonoid_1558 (coe v2))))
-- Algebra.Structures.IsIdempotentSemiring._.isMagma
d_isMagma_2062 :: T_IsIdempotentSemiring_2000 -> T_IsMagma_180
d_isMagma_2062 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_2014 (coe v0))))))
-- Algebra.Structures.IsIdempotentSemiring._.isMonoid
d_isMonoid_2064 :: T_IsIdempotentSemiring_2000 -> T_IsMonoid_714
d_isMonoid_2064 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2014 (coe v0))))
-- Algebra.Structures.IsIdempotentSemiring._.isSemigroup
d_isSemigroup_2066 ::
  T_IsIdempotentSemiring_2000 -> T_IsSemigroup_490
d_isSemigroup_2066 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_2014 (coe v0)))))
-- Algebra.Structures.IsIdempotentSemiring._.isUnitalMagma
d_isUnitalMagma_2068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsUnitalMagma_668
d_isUnitalMagma_2068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2068 v8
du_isUnitalMagma_2068 ::
  T_IsIdempotentSemiring_2000 -> T_IsUnitalMagma_668
du_isUnitalMagma_2068 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsIdempotentSemiring._.distrib
d_distrib_2070 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2070 v0
  = coe
      d_distrib_1566
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe v0)))
-- Algebra.Structures.IsIdempotentSemiring._.distribʳ
d_distrib'691'_2072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2072 v8
du_distrib'691'_2072 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2072 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_distrib'691'_1570
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.distribˡ
d_distrib'737'_2074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2074 v8
du_distrib'737'_2074 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2074 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_distrib'737'_1568
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.isEquivalence
d_isEquivalence_2076 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2076 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_2014 (coe v0)))))))
-- Algebra.Structures.IsIdempotentSemiring._.isNearSemiring
d_isNearSemiring_2078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsNearSemiring_1262
d_isNearSemiring_2078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_2078 v8
du_isNearSemiring_2078 ::
  T_IsIdempotentSemiring_2000 -> T_IsNearSemiring_1262
du_isNearSemiring_2078 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe
         du_isNearSemiring_1430 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.isPartialEquivalence
d_isPartialEquivalence_2080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2080 v8
du_isPartialEquivalence_2080 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2080 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe d_isEquivalence_188 (coe v6))))))))
-- Algebra.Structures.IsIdempotentSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2082 ::
  T_IsIdempotentSemiring_2000 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2082 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1656
      (coe d_isSemiring_2014 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_2084 v8
du_isSemiringWithoutOne_2084 ::
  T_IsIdempotentSemiring_2000 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2084 v0
  = coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_2014 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.refl
d_refl_2086 :: T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_refl_2086 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2014 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.reflexive
d_reflexive_2088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2088 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2088 v8
du_reflexive_2088 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2088 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                          (coe d_isEquivalence_188 (coe v6)) v7))))))
-- Algebra.Structures.IsIdempotentSemiring._.setoid
d_setoid_2090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2090 v8
du_setoid_2090 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2090 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe (coe du_setoid_204 (coe d_isMagma_498 (coe v5)))))))
-- Algebra.Structures.IsIdempotentSemiring._.sym
d_sym_2092 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2092 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2014 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.trans
d_trans_2094 ::
  T_IsIdempotentSemiring_2000 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2094 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2014 (coe v0))))))))
-- Algebra.Structures.IsIdempotentSemiring._.zero
d_zero_2096 ::
  T_IsIdempotentSemiring_2000 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2096 v0 = coe d_zero_1658 (coe d_isSemiring_2014 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.zeroʳ
d_zero'691'_2098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_zero'691'_2098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_2098 v8
du_zero'691'_2098 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_zero'691'_2098 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.zeroˡ
d_zero'737'_2100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
d_zero'737'_2100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_2100 v8
du_zero'737'_2100 ::
  T_IsIdempotentSemiring_2000 -> AgdaAny -> AgdaAny
du_zero'737'_2100 v0
  = let v1 = d_isSemiring_2014 (coe v0) in
    coe
      (coe du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_2102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsIdempotentSemiring_2000 -> T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_2102 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6 ~v7 v8
  = du_'43''45'isIdempotentCommutativeMonoid_2102 v8
du_'43''45'isIdempotentCommutativeMonoid_2102 ::
  T_IsIdempotentSemiring_2000 -> T_IsIdempotentCommutativeMonoid_886
du_'43''45'isIdempotentCommutativeMonoid_2102 v0
  = coe
      C_constructor_952
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2014 (coe v0))))
      (coe d_'43''45'idem_2016 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.isBand
d_isBand_2106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsBand_528
d_isBand_2106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isBand_2106 v8
du_isBand_2106 :: T_IsIdempotentSemiring_2000 -> T_IsBand_528
du_isBand_2106 v0
  = let v1
          = coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v0) in
    coe (coe du_isBand_878 (coe du_isIdempotentMonoid_944 (coe v1)))
-- Algebra.Structures.IsIdempotentSemiring._.isCommutativeBand
d_isCommutativeBand_2108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsCommutativeBand_614
d_isCommutativeBand_2108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeBand_2108 v8
du_isCommutativeBand_2108 ::
  T_IsIdempotentSemiring_2000 -> T_IsCommutativeBand_614
du_isCommutativeBand_2108 v0
  = coe
      du_isCommutativeBand_950
      (coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v0))
-- Algebra.Structures.IsIdempotentSemiring._.isIdempotentMonoid
d_isIdempotentMonoid_2110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsIdempotentSemiring_2000 -> T_IsIdempotentMonoid_828
d_isIdempotentMonoid_2110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isIdempotentMonoid_2110 v8
du_isIdempotentMonoid_2110 ::
  T_IsIdempotentSemiring_2000 -> T_IsIdempotentMonoid_828
du_isIdempotentMonoid_2110 v0
  = coe
      du_isIdempotentMonoid_944
      (coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra
d_IsKleeneAlgebra_2124 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsKleeneAlgebra_2124
  = C_constructor_2252 T_IsIdempotentSemiring_2000
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsKleeneAlgebra.isIdempotentSemiring
d_isIdempotentSemiring_2142 ::
  T_IsKleeneAlgebra_2124 -> T_IsIdempotentSemiring_2000
d_isIdempotentSemiring_2142 v0
  = case coe v0 of
      C_constructor_2252 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra.starExpansive
d_starExpansive_2144 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starExpansive_2144 v0
  = case coe v0 of
      C_constructor_2252 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra.starDestructive
d_starDestructive_2146 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_starDestructive_2146 v0
  = case coe v0 of
      C_constructor_2252 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsKleeneAlgebra._.*-assoc
d_'42''45'assoc_2150 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2150 v0
  = coe
      d_'42''45'assoc_1562
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.*-cong
d_'42''45'cong_2152 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2152 v0
  = coe
      d_'42''45'cong_1560
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congʳ
d_'8729''45'cong'691'_2154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2154 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2154 v9
du_'8729''45'cong'691'_2154 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2154 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1620 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congˡ
d_'8729''45'cong'737'_2156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2156 v9
du_'8729''45'cong'737'_2156 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2156 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = coe du_'42''45'isMonoid_1620 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsKleeneAlgebra._.*-identity
d_'42''45'identity_2158 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2158 v0
  = coe
      d_'42''45'identity_1564
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.identityʳ
d_identity'691'_2160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_identity'691'_2160 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2160 v9
du_identity'691'_2160 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_identity'691'_2160 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.identityˡ
d_identity'737'_2162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_identity'737'_2162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2162 v9
du_identity'737'_2162 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_identity'737'_2162 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isMagma
d_'42''45'isMagma_2164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsMagma_180
d_'42''45'isMagma_2164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2164 v9
du_'42''45'isMagma_2164 :: T_IsKleeneAlgebra_2124 -> T_IsMagma_180
du_'42''45'isMagma_2164 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_'42''45'isMagma_1616
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isMonoid
d_'42''45'isMonoid_2166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsMonoid_714
d_'42''45'isMonoid_2166 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_2166 v9
du_'42''45'isMonoid_2166 ::
  T_IsKleeneAlgebra_2124 -> T_IsMonoid_714
du_'42''45'isMonoid_2166 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_'42''45'isMonoid_1620
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.*-isSemigroup
d_'42''45'isSemigroup_2168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2168 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_2168 v9
du_'42''45'isSemigroup_2168 ::
  T_IsKleeneAlgebra_2124 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2168 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_'42''45'isSemigroup_1618
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.assoc
d_assoc_2170 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2170 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))))
-- Algebra.Structures.IsKleeneAlgebra._.comm
d_comm_2172 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2172 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-cong
d_'8729''45'cong_2174 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2174 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congʳ
d_'8729''45'cong'691'_2176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2176 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2176 v9
du_'8729''45'cong'691'_2176 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2176 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsKleeneAlgebra._.∙-congˡ
d_'8729''45'cong'737'_2178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2178 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2178 v9
du_'8729''45'cong'737'_2178 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2178 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsKleeneAlgebra._.+-idem
d_'43''45'idem_2180 :: T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_'43''45'idem_2180 v0
  = coe
      d_'43''45'idem_2016 (coe d_isIdempotentSemiring_2142 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra._.identity
d_identity_2182 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2182 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))))
-- Algebra.Structures.IsKleeneAlgebra._.identityʳ
d_identity'691'_2184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_identity'691'_2184 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2184 v9
du_identity'691'_2184 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_identity'691'_2184 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.identityˡ
d_identity'737'_2186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_identity'737'_2186 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2186 v9
du_identity'737'_2186 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_identity'737'_2186 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.isBand
d_isBand_2188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsBand_528
d_isBand_2188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isBand_2188 v9
du_isBand_2188 :: T_IsKleeneAlgebra_2124 -> T_IsBand_528
du_isBand_2188 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2
             = coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v1) in
       coe (coe du_isBand_878 (coe du_isIdempotentMonoid_944 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.isCommutativeBand
d_isCommutativeBand_2190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsCommutativeBand_614
d_isCommutativeBand_2190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeBand_2190 v9
du_isCommutativeBand_2190 ::
  T_IsKleeneAlgebra_2124 -> T_IsCommutativeBand_614
du_isCommutativeBand_2190 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (coe
         du_isCommutativeBand_950
         (coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v1)))
-- Algebra.Structures.IsKleeneAlgebra._.isCommutativeMagma
d_isCommutativeMagma_2192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2192 v9
du_isCommutativeMagma_2192 ::
  T_IsKleeneAlgebra_2124 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2192 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_608
                  (coe du_isCommutativeSemigroup_816 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2194 ::
  T_IsKleeneAlgebra_2124 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2194 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.isCommutativeSemigroup
d_isCommutativeSemigroup_2196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2196 v9
du_isCommutativeSemigroup_2196 ::
  T_IsKleeneAlgebra_2124 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2196 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_816
               (coe d_'43''45'isCommutativeMonoid_1558 (coe v3)))))
-- Algebra.Structures.IsKleeneAlgebra._.+-isIdempotentCommutativeMonoid
d_'43''45'isIdempotentCommutativeMonoid_2198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 -> T_IsIdempotentCommutativeMonoid_886
d_'43''45'isIdempotentCommutativeMonoid_2198 ~v0 ~v1 ~v2 ~v3 ~v4
                                             ~v5 ~v6 ~v7 ~v8 v9
  = du_'43''45'isIdempotentCommutativeMonoid_2198 v9
du_'43''45'isIdempotentCommutativeMonoid_2198 ::
  T_IsKleeneAlgebra_2124 -> T_IsIdempotentCommutativeMonoid_886
du_'43''45'isIdempotentCommutativeMonoid_2198 v0
  = coe
      du_'43''45'isIdempotentCommutativeMonoid_2102
      (coe d_isIdempotentSemiring_2142 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra._.isIdempotentMonoid
d_isIdempotentMonoid_2200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsIdempotentMonoid_828
d_isIdempotentMonoid_2200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isIdempotentMonoid_2200 v9
du_isIdempotentMonoid_2200 ::
  T_IsKleeneAlgebra_2124 -> T_IsIdempotentMonoid_828
du_isIdempotentMonoid_2200 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (coe
         du_isIdempotentMonoid_944
         (coe du_'43''45'isIdempotentCommutativeMonoid_2102 (coe v1)))
-- Algebra.Structures.IsKleeneAlgebra._.isMagma
d_isMagma_2202 :: T_IsKleeneAlgebra_2124 -> T_IsMagma_180
d_isMagma_2202 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe
                     d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))))
-- Algebra.Structures.IsKleeneAlgebra._.isMonoid
d_isMonoid_2204 :: T_IsKleeneAlgebra_2124 -> T_IsMonoid_714
d_isMonoid_2204 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe
               d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))
-- Algebra.Structures.IsKleeneAlgebra._.isSemigroup
d_isSemigroup_2206 :: T_IsKleeneAlgebra_2124 -> T_IsSemigroup_490
d_isSemigroup_2206 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe
                  d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))))
-- Algebra.Structures.IsKleeneAlgebra._.isUnitalMagma
d_isUnitalMagma_2208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsUnitalMagma_668
d_isUnitalMagma_2208 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2208 v9
du_isUnitalMagma_2208 ::
  T_IsKleeneAlgebra_2124 -> T_IsUnitalMagma_668
du_isUnitalMagma_2208 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v4))))))
-- Algebra.Structures.IsKleeneAlgebra._.distrib
d_distrib_2210 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2210 v0
  = coe
      d_distrib_1566
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))
-- Algebra.Structures.IsKleeneAlgebra._.distribʳ
d_distrib'691'_2212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2212 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2212 v9
du_distrib'691'_2212 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2212 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_distrib'691'_1570
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.distribˡ
d_distrib'737'_2214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2214 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2214 v9
du_distrib'737'_2214 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2214 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_distrib'737'_1568
            (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.isEquivalence
d_isEquivalence_2216 ::
  T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2216 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe
                        d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))))))))
-- Algebra.Structures.IsKleeneAlgebra._.isNearSemiring
d_isNearSemiring_2218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsNearSemiring_1262
d_isNearSemiring_2218 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isNearSemiring_2218 v9
du_isNearSemiring_2218 ::
  T_IsKleeneAlgebra_2124 -> T_IsNearSemiring_1262
du_isNearSemiring_2218 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_isNearSemiring_1430
            (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.isPartialEquivalence
d_isPartialEquivalence_2220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2220 v9
du_isPartialEquivalence_2220 ::
  T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2220 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe d_isEquivalence_188 (coe v7)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiring
d_isSemiring_2222 :: T_IsKleeneAlgebra_2124 -> T_IsSemiring_1642
d_isSemiring_2222 v0
  = coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2224 ::
  T_IsKleeneAlgebra_2124 -> T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2224 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1656
      (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))
-- Algebra.Structures.IsKleeneAlgebra._.isSemiringWithoutOne
d_isSemiringWithoutOne_2226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsKleeneAlgebra_2124 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutOne_2226 v9
du_isSemiringWithoutOne_2226 ::
  T_IsKleeneAlgebra_2124 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2226 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_2014 (coe v1)))
-- Algebra.Structures.IsKleeneAlgebra._.refl
d_refl_2228 :: T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_refl_2228 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.reflexive
d_reflexive_2230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2230 v9
du_reflexive_2230 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2230 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                             (coe d_isEquivalence_188 (coe v7)) v8)))))))
-- Algebra.Structures.IsKleeneAlgebra._.setoid
d_setoid_2232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2232 v9
du_setoid_2232 ::
  T_IsKleeneAlgebra_2124 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2232 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (let v3 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v2) in
          coe
            (let v4 = d_'43''45'isCommutativeMonoid_1558 (coe v3) in
             coe
               (let v5 = d_isMonoid_776 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe (coe du_setoid_204 (coe d_isMagma_498 (coe v6))))))))
-- Algebra.Structures.IsKleeneAlgebra._.sym
d_sym_2234 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2234 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.trans
d_trans_2236 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2236 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe
                           d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))))))))
-- Algebra.Structures.IsKleeneAlgebra._.zero
d_zero_2238 ::
  T_IsKleeneAlgebra_2124 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2238 v0
  = coe
      d_zero_1658
      (coe d_isSemiring_2014 (coe d_isIdempotentSemiring_2142 (coe v0)))
-- Algebra.Structures.IsKleeneAlgebra._.zeroʳ
d_zero'691'_2240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_zero'691'_2240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_2240 v9
du_zero'691'_2240 :: T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_zero'691'_2240 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra._.zeroˡ
d_zero'737'_2242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_zero'737'_2242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_2242 v9
du_zero'737'_2242 :: T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_zero'737'_2242 v0
  = let v1 = d_isIdempotentSemiring_2142 (coe v0) in
    coe
      (let v2 = d_isSemiring_2014 (coe v1) in
       coe
         (coe
            du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v2))))
-- Algebra.Structures.IsKleeneAlgebra.starExpansiveˡ
d_starExpansive'737'_2244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_starExpansive'737'_2244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starExpansive'737'_2244 v9
du_starExpansive'737'_2244 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_starExpansive'737'_2244 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_starExpansive_2144 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starExpansiveʳ
d_starExpansive'691'_2246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
d_starExpansive'691'_2246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starExpansive'691'_2246 v9
du_starExpansive'691'_2246 ::
  T_IsKleeneAlgebra_2124 -> AgdaAny -> AgdaAny
du_starExpansive'691'_2246 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_starExpansive_2144 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starDestructiveˡ
d_starDestructive'737'_2248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_starDestructive'737'_2248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starDestructive'737'_2248 v9
du_starDestructive'737'_2248 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_starDestructive'737'_2248 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_starDestructive_2146 (coe v0))
-- Algebra.Structures.IsKleeneAlgebra.starDestructiveʳ
d_starDestructive'691'_2250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_starDestructive'691'_2250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_starDestructive'691'_2250 v9
du_starDestructive'691'_2250 ::
  T_IsKleeneAlgebra_2124 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_starDestructive'691'_2250 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_starDestructive_2146 (coe v0))
-- Algebra.Structures.IsQuasiring
d_IsQuasiring_2262 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsQuasiring_2262
  = C_constructor_2360 T_IsMonoid_714
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsQuasiring.+-isMonoid
d_'43''45'isMonoid_2284 :: T_IsQuasiring_2262 -> T_IsMonoid_714
d_'43''45'isMonoid_2284 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-cong
d_'42''45'cong_2286 ::
  T_IsQuasiring_2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2286 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-assoc
d_'42''45'assoc_2288 ::
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2288 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.*-identity
d_'42''45'identity_2290 ::
  T_IsQuasiring_2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2290 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.distrib
d_distrib_2292 ::
  T_IsQuasiring_2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2292 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring.zero
d_zero_2294 ::
  T_IsQuasiring_2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2294 v0
  = case coe v0 of
      C_constructor_2360 v1 v2 v3 v4 v5 v6 -> coe v6
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasiring._.assoc
d_assoc_2298 ::
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2298 v0
  = coe
      d_assoc_500
      (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))
-- Algebra.Structures.IsQuasiring._.∙-cong
d_'8729''45'cong_2300 ::
  T_IsQuasiring_2262 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2300 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0))))
-- Algebra.Structures.IsQuasiring._.∙-congʳ
d_'8729''45'cong'691'_2302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2302 v8
du_'8729''45'cong'691'_2302 ::
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2302 v0
  = let v1 = d_'43''45'isMonoid_2284 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsQuasiring._.∙-congˡ
d_'8729''45'cong'737'_2304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2304 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2304 v8
du_'8729''45'cong'737'_2304 ::
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2304 v0
  = let v1 = d_'43''45'isMonoid_2284 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsQuasiring._.identity
d_identity_2306 ::
  T_IsQuasiring_2262 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2306 v0
  = coe d_identity_726 (coe d_'43''45'isMonoid_2284 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityʳ
d_identity'691'_2308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'691'_2308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2308 v8
du_identity'691'_2308 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'691'_2308 v0
  = coe du_identity'691'_756 (coe d_'43''45'isMonoid_2284 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityˡ
d_identity'737'_2310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'737'_2310 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2310 v8
du_identity'737'_2310 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'737'_2310 v0
  = coe du_identity'737'_754 (coe d_'43''45'isMonoid_2284 (coe v0))
-- Algebra.Structures.IsQuasiring._.isMagma
d_isMagma_2312 :: T_IsQuasiring_2262 -> T_IsMagma_180
d_isMagma_2312 v0
  = coe
      d_isMagma_498
      (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))
-- Algebra.Structures.IsQuasiring._.isSemigroup
d_isSemigroup_2314 :: T_IsQuasiring_2262 -> T_IsSemigroup_490
d_isSemigroup_2314 v0
  = coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0))
-- Algebra.Structures.IsQuasiring._.isUnitalMagma
d_isUnitalMagma_2316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> T_IsUnitalMagma_668
d_isUnitalMagma_2316 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2316 v8
du_isUnitalMagma_2316 :: T_IsQuasiring_2262 -> T_IsUnitalMagma_668
du_isUnitalMagma_2316 v0
  = coe du_isUnitalMagma_758 (coe d_'43''45'isMonoid_2284 (coe v0))
-- Algebra.Structures.IsQuasiring._.isEquivalence
d_isEquivalence_2318 ::
  T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2318 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0))))
-- Algebra.Structures.IsQuasiring._.isPartialEquivalence
d_isPartialEquivalence_2320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2320 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2320 v8
du_isPartialEquivalence_2320 ::
  T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2320 v0
  = let v1 = d_'43''45'isMonoid_2284 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsQuasiring._.refl
d_refl_2322 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_refl_2322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))))
-- Algebra.Structures.IsQuasiring._.reflexive
d_reflexive_2324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2324 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2324 v8
du_reflexive_2324 ::
  T_IsQuasiring_2262 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2324 v0
  = let v1 = d_'43''45'isMonoid_2284 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsQuasiring._.setoid
d_setoid_2326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2326 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2326 v8
du_setoid_2326 ::
  T_IsQuasiring_2262 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2326 v0
  = let v1 = d_'43''45'isMonoid_2284 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_498 (coe v2))))
-- Algebra.Structures.IsQuasiring._.sym
d_sym_2328 ::
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))))
-- Algebra.Structures.IsQuasiring._.trans
d_trans_2330 ::
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2330 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))))
-- Algebra.Structures.IsQuasiring.distribˡ
d_distrib'737'_2332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2332 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2332 v8
du_distrib'737'_2332 ::
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2332 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2292 (coe v0))
-- Algebra.Structures.IsQuasiring.distribʳ
d_distrib'691'_2334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2334 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2334 v8
du_distrib'691'_2334 ::
  T_IsQuasiring_2262 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2334 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2292 (coe v0))
-- Algebra.Structures.IsQuasiring.zeroˡ
d_zero'737'_2336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_zero'737'_2336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_2336 v8
du_zero'737'_2336 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_zero'737'_2336 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_2294 (coe v0))
-- Algebra.Structures.IsQuasiring.zeroʳ
d_zero'691'_2338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_zero'691'_2338 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_2338 v8
du_zero'691'_2338 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_zero'691'_2338 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_2294 (coe v0))
-- Algebra.Structures.IsQuasiring.identityˡ
d_identity'737'_2340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'737'_2340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2340 v8
du_identity'737'_2340 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'737'_2340 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'42''45'identity_2290 (coe v0))
-- Algebra.Structures.IsQuasiring.identityʳ
d_identity'691'_2342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'691'_2342 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2342 v8
du_identity'691'_2342 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'691'_2342 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'42''45'identity_2290 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isMagma
d_'42''45'isMagma_2344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> T_IsMagma_180
d_'42''45'isMagma_2344 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_2344 v8
du_'42''45'isMagma_2344 :: T_IsQuasiring_2262 -> T_IsMagma_180
du_'42''45'isMagma_2344 v0
  = coe
      C_constructor_212
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe d_isSemigroup_724 (coe d_'43''45'isMonoid_2284 (coe v0)))))
      (coe d_'42''45'cong_2286 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isSemigroup
d_'42''45'isSemigroup_2346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2346 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_2346 v8
du_'42''45'isSemigroup_2346 ::
  T_IsQuasiring_2262 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2346 v0
  = coe
      C_constructor_524 (coe du_'42''45'isMagma_2344 (coe v0))
      (coe d_'42''45'assoc_2288 (coe v0))
-- Algebra.Structures.IsQuasiring.*-isMonoid
d_'42''45'isMonoid_2348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> T_IsMonoid_714
d_'42''45'isMonoid_2348 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_2348 v8
du_'42''45'isMonoid_2348 :: T_IsQuasiring_2262 -> T_IsMonoid_714
du_'42''45'isMonoid_2348 v0
  = coe
      C_constructor_760 (coe du_'42''45'isSemigroup_2346 (coe v0))
      (coe d_'42''45'identity_2290 (coe v0))
-- Algebra.Structures.IsQuasiring._.∙-congʳ
d_'8729''45'cong'691'_2352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2352 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2352 v8
du_'8729''45'cong'691'_2352 ::
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2352 v0
  = let v1 = coe du_'42''45'isMonoid_2348 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsQuasiring._.∙-congˡ
d_'8729''45'cong'737'_2354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2354 v8
du_'8729''45'cong'737'_2354 ::
  T_IsQuasiring_2262 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2354 v0
  = let v1 = coe du_'42''45'isMonoid_2348 (coe v0) in
    coe
      (let v2 = d_isSemigroup_724 (coe v1) in
       coe
         (let v3 = d_isMagma_498 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsQuasiring._.identityʳ
d_identity'691'_2356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'691'_2356 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2356 v8
du_identity'691'_2356 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'691'_2356 v0
  = coe du_identity'691'_756 (coe du_'42''45'isMonoid_2348 (coe v0))
-- Algebra.Structures.IsQuasiring._.identityˡ
d_identity'737'_2358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
d_identity'737'_2358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2358 v8
du_identity'737'_2358 :: T_IsQuasiring_2262 -> AgdaAny -> AgdaAny
du_identity'737'_2358 v0
  = coe du_identity'737'_754 (coe du_'42''45'isMonoid_2348 (coe v0))
-- Algebra.Structures.IsBooleanSemiring
d_IsBooleanSemiring_2370 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsBooleanSemiring_2370
  = C_constructor_2486 T_IsSemiring_1642
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBooleanSemiring.isSemiring
d_isSemiring_2386 :: T_IsBooleanSemiring_2370 -> T_IsSemiring_1642
d_isSemiring_2386 v0
  = case coe v0 of
      C_constructor_2486 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanSemiring.+-cancel
d_'43''45'cancel_2388 ::
  T_IsBooleanSemiring_2370 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'cancel_2388 v0
  = case coe v0 of
      C_constructor_2486 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanSemiring.*-idem
d_'42''45'idem_2390 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_'42''45'idem_2390 v0
  = case coe v0 of
      C_constructor_2486 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanSemiring._.*-assoc
d_'42''45'assoc_2394 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2394 v0
  = coe
      d_'42''45'assoc_1562
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2386 (coe v0)))
-- Algebra.Structures.IsBooleanSemiring._.*-cong
d_'42''45'cong_2396 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2396 v0
  = coe
      d_'42''45'cong_1560
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2386 (coe v0)))
-- Algebra.Structures.IsBooleanSemiring._.∙-congʳ
d_'8729''45'cong'691'_2398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2398 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2398 v8
du_'8729''45'cong'691'_2398 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2398 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsBooleanSemiring._.∙-congˡ
d_'8729''45'cong'737'_2400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2400 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2400 v8
du_'8729''45'cong'737'_2400 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2400 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = coe du_'42''45'isMonoid_1620 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsBooleanSemiring._.*-identity
d_'42''45'identity_2402 ::
  T_IsBooleanSemiring_2370 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2402 v0
  = coe
      d_'42''45'identity_1564
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2386 (coe v0)))
-- Algebra.Structures.IsBooleanSemiring._.identityʳ
d_identity'691'_2404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_identity'691'_2404 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2404 v8
du_identity'691'_2404 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_identity'691'_2404 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'691'_756 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsBooleanSemiring._.identityˡ
d_identity'737'_2406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_identity'737'_2406 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2406 v8
du_identity'737'_2406 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_identity'737'_2406 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe du_identity'737'_754 (coe du_'42''45'isMonoid_1620 (coe v2))))
-- Algebra.Structures.IsBooleanSemiring._.*-isMagma
d_'42''45'isMagma_2408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsMagma_180
d_'42''45'isMagma_2408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMagma_2408 v8
du_'42''45'isMagma_2408 ::
  T_IsBooleanSemiring_2370 -> T_IsMagma_180
du_'42''45'isMagma_2408 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_'42''45'isMagma_1616
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.*-isMonoid
d_'42''45'isMonoid_2410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsMonoid_714
d_'42''45'isMonoid_2410 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isMonoid_2410 v8
du_'42''45'isMonoid_2410 ::
  T_IsBooleanSemiring_2370 -> T_IsMonoid_714
du_'42''45'isMonoid_2410 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_'42''45'isMonoid_1620
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.*-isSemigroup
d_'42''45'isSemigroup_2412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'42''45'isSemigroup_2412 v8
du_'42''45'isSemigroup_2412 ::
  T_IsBooleanSemiring_2370 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2412 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_'42''45'isSemigroup_1618
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.assoc
d_assoc_2414 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2414 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_2386 (coe v0))))))
-- Algebra.Structures.IsBooleanSemiring._.comm
d_comm_2416 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2416 v0
  = coe
      d_comm_778
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2386 (coe v0))))
-- Algebra.Structures.IsBooleanSemiring._.∙-cong
d_'8729''45'cong_2418 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2418 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_2386 (coe v0)))))))
-- Algebra.Structures.IsBooleanSemiring._.∙-congʳ
d_'8729''45'cong'691'_2420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2420 v8
du_'8729''45'cong'691'_2420 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2420 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsBooleanSemiring._.∙-congˡ
d_'8729''45'cong'737'_2422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2422 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2422 v8
du_'8729''45'cong'737'_2422 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2422 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsBooleanSemiring._.identity
d_identity_2424 ::
  T_IsBooleanSemiring_2370 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2424 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_2386 (coe v0)))))
-- Algebra.Structures.IsBooleanSemiring._.identityʳ
d_identity'691'_2426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_identity'691'_2426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2426 v8
du_identity'691'_2426 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_identity'691'_2426 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'691'_756 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsBooleanSemiring._.identityˡ
d_identity'737'_2428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_identity'737'_2428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2428 v8
du_identity'737'_2428 ::
  T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_identity'737'_2428 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_identity'737'_754 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsBooleanSemiring._.isCommutativeMagma
d_isCommutativeMagma_2430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_2430 v8
du_isCommutativeMagma_2430 ::
  T_IsBooleanSemiring_2370 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2430 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_608
               (coe du_isCommutativeSemigroup_816 (coe v3)))))
-- Algebra.Structures.IsBooleanSemiring._.+-isCommutativeMonoid
d_'43''45'isCommutativeMonoid_2432 ::
  T_IsBooleanSemiring_2370 -> T_IsCommutativeMonoid_766
d_'43''45'isCommutativeMonoid_2432 v0
  = coe
      d_'43''45'isCommutativeMonoid_1558
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2386 (coe v0)))
-- Algebra.Structures.IsBooleanSemiring._.isCommutativeSemigroup
d_isCommutativeSemigroup_2434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_2434 v8
du_isCommutativeSemigroup_2434 ::
  T_IsBooleanSemiring_2370 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2434 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_816
            (coe d_'43''45'isCommutativeMonoid_1558 (coe v2))))
-- Algebra.Structures.IsBooleanSemiring._.isMagma
d_isMagma_2436 :: T_IsBooleanSemiring_2370 -> T_IsMagma_180
d_isMagma_2436 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_776
            (coe
               d_'43''45'isCommutativeMonoid_1558
               (coe
                  d_isSemiringWithoutAnnihilatingZero_1656
                  (coe d_isSemiring_2386 (coe v0))))))
-- Algebra.Structures.IsBooleanSemiring._.isMonoid
d_isMonoid_2438 :: T_IsBooleanSemiring_2370 -> T_IsMonoid_714
d_isMonoid_2438 v0
  = coe
      d_isMonoid_776
      (coe
         d_'43''45'isCommutativeMonoid_1558
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2386 (coe v0))))
-- Algebra.Structures.IsBooleanSemiring._.isSemigroup
d_isSemigroup_2440 :: T_IsBooleanSemiring_2370 -> T_IsSemigroup_490
d_isSemigroup_2440 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_776
         (coe
            d_'43''45'isCommutativeMonoid_1558
            (coe
               d_isSemiringWithoutAnnihilatingZero_1656
               (coe d_isSemiring_2386 (coe v0)))))
-- Algebra.Structures.IsBooleanSemiring._.isUnitalMagma
d_isUnitalMagma_2442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsUnitalMagma_668
d_isUnitalMagma_2442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2442 v8
du_isUnitalMagma_2442 ::
  T_IsBooleanSemiring_2370 -> T_IsUnitalMagma_668
du_isUnitalMagma_2442 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe (coe du_isUnitalMagma_758 (coe d_isMonoid_776 (coe v3)))))
-- Algebra.Structures.IsBooleanSemiring._.distrib
d_distrib_2444 ::
  T_IsBooleanSemiring_2370 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2444 v0
  = coe
      d_distrib_1566
      (coe
         d_isSemiringWithoutAnnihilatingZero_1656
         (coe d_isSemiring_2386 (coe v0)))
-- Algebra.Structures.IsBooleanSemiring._.distribʳ
d_distrib'691'_2446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2446 v8
du_distrib'691'_2446 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2446 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_distrib'691'_1570
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.distribˡ
d_distrib'737'_2448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2448 v8
du_distrib'737'_2448 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2448 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_distrib'737'_1568
         (coe d_isSemiringWithoutAnnihilatingZero_1656 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.isEquivalence
d_isEquivalence_2450 ::
  T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2450 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_776
               (coe
                  d_'43''45'isCommutativeMonoid_1558
                  (coe
                     d_isSemiringWithoutAnnihilatingZero_1656
                     (coe d_isSemiring_2386 (coe v0)))))))
-- Algebra.Structures.IsBooleanSemiring._.isNearSemiring
d_isNearSemiring_2452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsNearSemiring_1262
d_isNearSemiring_2452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isNearSemiring_2452 v8
du_isNearSemiring_2452 ::
  T_IsBooleanSemiring_2370 -> T_IsNearSemiring_1262
du_isNearSemiring_2452 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe
         du_isNearSemiring_1430 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.isPartialEquivalence
d_isPartialEquivalence_2454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2454 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2454 v8
du_isPartialEquivalence_2454 ::
  T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2454 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe d_isEquivalence_188 (coe v6))))))))
-- Algebra.Structures.IsBooleanSemiring._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2456 ::
  T_IsBooleanSemiring_2370 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2456 v0
  = coe
      d_isSemiringWithoutAnnihilatingZero_1656
      (coe d_isSemiring_2386 (coe v0))
-- Algebra.Structures.IsBooleanSemiring._.isSemiringWithoutOne
d_isSemiringWithoutOne_2458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_2458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isSemiringWithoutOne_2458 v8
du_isSemiringWithoutOne_2458 ::
  T_IsBooleanSemiring_2370 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_2458 v0
  = coe du_isSemiringWithoutOne_1732 (coe d_isSemiring_2386 (coe v0))
-- Algebra.Structures.IsBooleanSemiring._.refl
d_refl_2460 :: T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_refl_2460 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2386 (coe v0))))))))
-- Algebra.Structures.IsBooleanSemiring._.reflexive
d_reflexive_2462 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2462 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2462 v8
du_reflexive_2462 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2462 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                          (coe d_isEquivalence_188 (coe v6)) v7))))))
-- Algebra.Structures.IsBooleanSemiring._.setoid
d_setoid_2464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2464 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2464 v8
du_setoid_2464 ::
  T_IsBooleanSemiring_2370 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2464 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (let v2 = d_isSemiringWithoutAnnihilatingZero_1656 (coe v1) in
       coe
         (let v3 = d_'43''45'isCommutativeMonoid_1558 (coe v2) in
          coe
            (let v4 = d_isMonoid_776 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe (coe du_setoid_204 (coe d_isMagma_498 (coe v5)))))))
-- Algebra.Structures.IsBooleanSemiring._.sym
d_sym_2466 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2466 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2386 (coe v0))))))))
-- Algebra.Structures.IsBooleanSemiring._.trans
d_trans_2468 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2468 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_776
                  (coe
                     d_'43''45'isCommutativeMonoid_1558
                     (coe
                        d_isSemiringWithoutAnnihilatingZero_1656
                        (coe d_isSemiring_2386 (coe v0))))))))
-- Algebra.Structures.IsBooleanSemiring._.zero
d_zero_2470 ::
  T_IsBooleanSemiring_2370 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2470 v0 = coe d_zero_1658 (coe d_isSemiring_2386 (coe v0))
-- Algebra.Structures.IsBooleanSemiring._.zeroʳ
d_zero'691'_2472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_zero'691'_2472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'691'_2472 v8
du_zero'691'_2472 :: T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_zero'691'_2472 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe du_zero'691'_1428 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring._.zeroˡ
d_zero'737'_2474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
d_zero'737'_2474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_zero'737'_2474 v8
du_zero'737'_2474 :: T_IsBooleanSemiring_2370 -> AgdaAny -> AgdaAny
du_zero'737'_2474 v0
  = let v1 = d_isSemiring_2386 (coe v0) in
    coe
      (coe du_zero'737'_1426 (coe du_isSemiringWithoutOne_1732 (coe v1)))
-- Algebra.Structures.IsBooleanSemiring.+-cancelˡ
d_'43''45'cancel'737'_2476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'cancel'737'_2476 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'43''45'cancel'737'_2476 v8
du_'43''45'cancel'737'_2476 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'cancel'737'_2476 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'43''45'cancel_2388 (coe v0))
-- Algebra.Structures.IsBooleanSemiring.+-cancelʳ
d_'43''45'cancel'691'_2478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'43''45'cancel'691'_2478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'43''45'cancel'691'_2478 v8
du_'43''45'cancel'691'_2478 ::
  T_IsBooleanSemiring_2370 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'43''45'cancel'691'_2478 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'43''45'cancel_2388 (coe v0))
-- Algebra.Structures.IsBooleanSemiring.*-isIdempotentMonoid
d_'42''45'isIdempotentMonoid_2480 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsIdempotentMonoid_828
d_'42''45'isIdempotentMonoid_2480 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
                                  v8
  = du_'42''45'isIdempotentMonoid_2480 v8
du_'42''45'isIdempotentMonoid_2480 ::
  T_IsBooleanSemiring_2370 -> T_IsIdempotentMonoid_828
du_'42''45'isIdempotentMonoid_2480 v0
  = coe
      C_constructor_880
      (coe
         du_'42''45'isMonoid_1620
         (coe
            d_isSemiringWithoutAnnihilatingZero_1656
            (coe d_isSemiring_2386 (coe v0))))
      (coe d_'42''45'idem_2390 (coe v0))
-- Algebra.Structures.IsBooleanSemiring._.isBand
d_isBand_2484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanSemiring_2370 -> T_IsBand_528
d_isBand_2484 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isBand_2484 v8
du_isBand_2484 :: T_IsBooleanSemiring_2370 -> T_IsBand_528
du_isBand_2484 v0
  = coe
      du_isBand_878 (coe du_'42''45'isIdempotentMonoid_2480 (coe v0))
-- Algebra.Structures.IsRingWithoutOne
d_IsRingWithoutOne_2496 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsRingWithoutOne_2496
  = C_constructor_2610 T_IsAbelianGroup_1174
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsRingWithoutOne.+-isAbelianGroup
d_'43''45'isAbelianGroup_2514 ::
  T_IsRingWithoutOne_2496 -> T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2514 v0
  = case coe v0 of
      C_constructor_2610 v1 v2 v3 v4 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.*-cong
d_'42''45'cong_2516 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2516 v0
  = case coe v0 of
      C_constructor_2610 v1 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.*-assoc
d_'42''45'assoc_2518 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2518 v0
  = case coe v0 of
      C_constructor_2610 v1 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne.distrib
d_distrib_2520 ::
  T_IsRingWithoutOne_2496 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2520 v0
  = case coe v0 of
      C_constructor_2610 v1 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRingWithoutOne._._//_
d__'47''47'__2524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__2524 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8
  = du__'47''47'__2524 v4 v6
du__'47''47'__2524 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__2524 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsRingWithoutOne._.assoc
d_assoc_2526 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2526 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))))
-- Algebra.Structures.IsRingWithoutOne._.comm
d_comm_2528 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2528 v0
  = coe d_comm_1188 (coe d_'43''45'isAbelianGroup_2514 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.∙-cong
d_'8729''45'cong_2530 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2530 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0))))))
-- Algebra.Structures.IsRingWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_2532 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2532 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_2532 v8
du_'8729''45'cong'691'_2532 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2532 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsRingWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_2534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_2534 v8
du_'8729''45'cong'737'_2534 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2534 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsRingWithoutOne._.identity
d_identity_2536 ::
  T_IsRingWithoutOne_2496 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2536 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0))))
-- Algebra.Structures.IsRingWithoutOne._.identityʳ
d_identity'691'_2538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_identity'691'_2538 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_2538 v8
du_identity'691'_2538 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_identity'691'_2538 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.identityˡ
d_identity'737'_2540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_identity'737'_2540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_2540 v8
du_identity'737'_2540 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_identity'737'_2540 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeMagma
d_isCommutativeMagma_2542 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2542 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMagma_2542 v8
du_isCommutativeMagma_2542 ::
  T_IsRingWithoutOne_2496 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2542 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeMonoid_1246 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_isCommutativeSemigroup_816 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeMonoid
d_isCommutativeMonoid_2544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeMonoid_2544 v8
du_isCommutativeMonoid_2544 ::
  T_IsRingWithoutOne_2496 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2544 v0
  = coe
      du_isCommutativeMonoid_1246
      (coe d_'43''45'isAbelianGroup_2514 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.isCommutativeSemigroup
d_isCommutativeSemigroup_2546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isCommutativeSemigroup_2546 v8
du_isCommutativeSemigroup_2546 ::
  T_IsRingWithoutOne_2496 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2546 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_816
         (coe du_isCommutativeMonoid_1246 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isGroup
d_isGroup_2548 :: T_IsRingWithoutOne_2496 -> T_IsGroup_1076
d_isGroup_2548 v0
  = coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0))
-- Algebra.Structures.IsRingWithoutOne._.isInvertibleMagma
d_isInvertibleMagma_2550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_2550 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isInvertibleMagma_2550 v8
du_isInvertibleMagma_2550 ::
  T_IsRingWithoutOne_2496 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_2550 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe (coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2552 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2552 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isInvertibleUnitalMagma_2552 v8
du_isInvertibleUnitalMagma_2552 ::
  T_IsRingWithoutOne_2496 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2552 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (coe du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isMagma
d_isMagma_2554 :: T_IsRingWithoutOne_2496 -> T_IsMagma_180
d_isMagma_2554 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))))
-- Algebra.Structures.IsRingWithoutOne._.isMonoid
d_isMonoid_2556 :: T_IsRingWithoutOne_2496 -> T_IsMonoid_714
d_isMonoid_2556 v0
  = coe
      d_isMonoid_1090
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.isSemigroup
d_isSemigroup_2558 :: T_IsRingWithoutOne_2496 -> T_IsSemigroup_490
d_isSemigroup_2558 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0))))
-- Algebra.Structures.IsRingWithoutOne._.isUnitalMagma
d_isUnitalMagma_2560 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsUnitalMagma_668
d_isUnitalMagma_2560 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isUnitalMagma_2560 v8
du_isUnitalMagma_2560 ::
  T_IsRingWithoutOne_2496 -> T_IsUnitalMagma_668
du_isUnitalMagma_2560 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsRingWithoutOne._.⁻¹-cong
d_'8315''185''45'cong_2562 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2562 v0
  = coe
      d_'8315''185''45'cong_1094
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.inverse
d_inverse_2564 ::
  T_IsRingWithoutOne_2496 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2564 v0
  = coe
      d_inverse_1092
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))
-- Algebra.Structures.IsRingWithoutOne._.inverseʳ
d_inverse'691'_2566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_inverse'691'_2566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_inverse'691'_2566 v8
du_inverse'691'_2566 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_inverse'691'_2566 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe (coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.inverseˡ
d_inverse'737'_2568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_inverse'737'_2568 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_inverse'737'_2568 v8
du_inverse'737'_2568 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_inverse'737'_2568 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe (coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsRingWithoutOne._.isEquivalence
d_isEquivalence_2570 ::
  T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2570 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0))))))
-- Algebra.Structures.IsRingWithoutOne._.isPartialEquivalence
d_isPartialEquivalence_2572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_2572 v8
du_isPartialEquivalence_2572 ::
  T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2572 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe d_isEquivalence_188 (coe v5)))))))
-- Algebra.Structures.IsRingWithoutOne._.refl
d_refl_2574 :: T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_refl_2574 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.reflexive
d_reflexive_2576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2576 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_2576 v8
du_reflexive_2576 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2576 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                       (coe d_isEquivalence_188 (coe v5)) v6)))))
-- Algebra.Structures.IsRingWithoutOne._.setoid
d_setoid_2578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2578 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_2578 v8
du_setoid_2578 ::
  T_IsRingWithoutOne_2496 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2578 v0
  = let v1 = d_'43''45'isAbelianGroup_2514 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe (coe du_setoid_204 (coe d_isMagma_498 (coe v4))))))
-- Algebra.Structures.IsRingWithoutOne._.sym
d_sym_2580 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2580 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.trans
d_trans_2582 ::
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2582 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v0)))))))
-- Algebra.Structures.IsRingWithoutOne._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2584 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2584 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_unique'691''45''8315''185'_2584 v4 v6 v7 v8
du_unique'691''45''8315''185'_2584 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2584 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
    coe
      (coe
         du_unique'691''45''8315''185'_1160 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_1186 (coe v4)))
-- Algebra.Structures.IsRingWithoutOne._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2586 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_unique'737''45''8315''185'_2586 v4 v6 v7 v8
du_unique'737''45''8315''185'_2586 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2586 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
    coe
      (coe
         du_unique'737''45''8315''185'_1154 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_1186 (coe v4)))
-- Algebra.Structures.IsRingWithoutOne.distribˡ
d_distrib'737'_2588 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2588 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'737'_2588 v8
du_distrib'737'_2588 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2588 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2520 (coe v0))
-- Algebra.Structures.IsRingWithoutOne.distribʳ
d_distrib'691'_2590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2590 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_distrib'691'_2590 v8
du_distrib'691'_2590 ::
  T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2590 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2520 (coe v0))
-- Algebra.Structures.IsRingWithoutOne.zeroˡ
d_zero'737'_2592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_zero'737'_2592 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero'737'_2592 v4 v5 v6 v7 v8
du_zero'737'_2592 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_zero'737'_2592 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'691''8743'id'691''8743'inv'691''8658'ze'737'_714
      (coe
         du_setoid_204
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         d_'8729''45'cong_190
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))))
      (coe d_'42''45'cong_2516 (coe v4))
      (coe
         d_assoc_500
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4))))))
      (coe du_distrib'691'_2590 (coe v4))
      (coe
         du_identity'691'_756
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))
      (coe
         du_inverse'691'_1148
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4))))
-- Algebra.Structures.IsRingWithoutOne.zeroʳ
d_zero'691'_2594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
d_zero'691'_2594 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero'691'_2594 v4 v5 v6 v7 v8
du_zero'691'_2594 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> AgdaAny -> AgdaAny
du_zero'691'_2594 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Consequences.Setoid.du_assoc'8743'distrib'737''8743'id'691''8743'inv'691''8658'ze'691'_726
      (coe
         du_setoid_204
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))))
      (coe v0) (coe v1) (coe v2) (coe v3)
      (coe
         d_'8729''45'cong_190
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))))
      (coe d_'42''45'cong_2516 (coe v4))
      (coe
         d_assoc_500
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4))))))
      (coe du_distrib'737'_2588 (coe v4))
      (coe
         du_identity'691'_756
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4)))))
      (coe
         du_inverse'691'_1148
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4))))
-- Algebra.Structures.IsRingWithoutOne.zero
d_zero_2596 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2596 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_zero_2596 v4 v5 v6 v7 v8
du_zero_2596 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2596 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_zero'737'_2592 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
      (coe
         du_zero'691'_2594 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.IsRingWithoutOne.isNearSemiring
d_isNearSemiring_2598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsNearSemiring_1262
d_isNearSemiring_2598 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_isNearSemiring_2598 v4 v5 v6 v7 v8
du_isNearSemiring_2598 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsNearSemiring_1262
du_isNearSemiring_2598 v0 v1 v2 v3 v4
  = coe
      C_constructor_1336
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2514 (coe v4))))
      (coe d_'42''45'cong_2516 (coe v4))
      (coe d_'42''45'assoc_2518 (coe v4))
      (coe du_distrib'691'_2590 (coe v4))
      (coe
         du_zero'737'_2592 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.IsRingWithoutOne._.∙-congʳ
d_'8729''45'cong'691'_2602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2602 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8729''45'cong'691'_2602 v4 v5 v6 v7 v8
du_'8729''45'cong'691'_2602 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2602 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (let v6 = coe du_'42''45'isMagma_1326 (coe v5) in
       coe
         (let v7 = coe du_setoid_204 (coe v6) in
          coe
            (let v8 = d_'8729''45'cong_190 (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v8)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v7)))))))
-- Algebra.Structures.IsRingWithoutOne._.∙-congˡ
d_'8729''45'cong'737'_2604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2604 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8729''45'cong'737'_2604 v4 v5 v6 v7 v8
du_'8729''45'cong'737'_2604 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRingWithoutOne_2496 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2604 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (let v6 = coe du_'42''45'isMagma_1326 (coe v5) in
       coe
         (let v7 = coe du_setoid_204 (coe v6) in
          coe
            (let v8 = d_'8729''45'cong_190 (coe v6) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v8)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v7)))))))
-- Algebra.Structures.IsRingWithoutOne._.*-isMagma
d_'42''45'isMagma_2606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsMagma_180
d_'42''45'isMagma_2606 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'42''45'isMagma_2606 v4 v5 v6 v7 v8
du_'42''45'isMagma_2606 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsMagma_180
du_'42''45'isMagma_2606 v0 v1 v2 v3 v4
  = coe
      du_'42''45'isMagma_1326
      (coe
         du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsRingWithoutOne._.*-isSemigroup
d_'42''45'isSemigroup_2608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2608 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'42''45'isSemigroup_2608 v4 v5 v6 v7 v8
du_'42''45'isSemigroup_2608 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRingWithoutOne_2496 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2608 v0 v1 v2 v3 v4
  = coe
      du_'42''45'isSemigroup_1328
      (coe
         du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsNonAssociativeRing
d_IsNonAssociativeRing_2622 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsNonAssociativeRing_2622
  = C_constructor_2742 T_IsAbelianGroup_1174
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsNonAssociativeRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2644 ::
  T_IsNonAssociativeRing_2622 -> T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2644 v0
  = case coe v0 of
      C_constructor_2742 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.*-cong
d_'42''45'cong_2646 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2646 v0
  = case coe v0 of
      C_constructor_2742 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.*-identity
d_'42''45'identity_2648 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2648 v0
  = case coe v0 of
      C_constructor_2742 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.distrib
d_distrib_2650 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2650 v0
  = case coe v0 of
      C_constructor_2742 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing.zero
d_zero_2652 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2652 v0
  = case coe v0 of
      C_constructor_2742 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNonAssociativeRing._._//_
d__'47''47'__2656 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__2656 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__2656 v4 v6
du__'47''47'__2656 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__2656 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsNonAssociativeRing._.assoc
d_assoc_2658 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2658 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))
-- Algebra.Structures.IsNonAssociativeRing._.comm
d_comm_2660 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2660 v0
  = coe d_comm_1188 (coe d_'43''45'isAbelianGroup_2644 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.∙-cong
d_'8729''45'cong_2662 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2662 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0))))))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congʳ
d_'8729''45'cong'691'_2664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2664 v9
du_'8729''45'cong'691'_2664 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2664 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congˡ
d_'8729''45'cong'737'_2666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2666 v9
du_'8729''45'cong'737'_2666 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2666 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (let v6 = coe du_setoid_204 (coe v5) in
                   coe
                     (let v7 = d_'8729''45'cong_190 (coe v5) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v7)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v6))))))))))
-- Algebra.Structures.IsNonAssociativeRing._.identity
d_identity_2668 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2668 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0))))
-- Algebra.Structures.IsNonAssociativeRing._.identityʳ
d_identity'691'_2670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_identity'691'_2670 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2670 v9
du_identity'691'_2670 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_identity'691'_2670 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.identityˡ
d_identity'737'_2672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_identity'737'_2672 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2672 v9
du_identity'737'_2672 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_identity'737'_2672 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeMagma
d_isCommutativeMagma_2674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2674 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2674 v9
du_isCommutativeMagma_2674 ::
  T_IsNonAssociativeRing_2622 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2674 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = coe du_isCommutativeMonoid_1246 (coe v1) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_isCommutativeSemigroup_816 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_2676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2676 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_2676 v9
du_isCommutativeMonoid_2676 ::
  T_IsNonAssociativeRing_2622 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2676 v0
  = coe
      du_isCommutativeMonoid_1246
      (coe d_'43''45'isAbelianGroup_2644 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2678 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2678 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2678 v9
du_isCommutativeSemigroup_2678 ::
  T_IsNonAssociativeRing_2622 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2678 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (coe
         du_isCommutativeSemigroup_816
         (coe du_isCommutativeMonoid_1246 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isGroup
d_isGroup_2680 :: T_IsNonAssociativeRing_2622 -> T_IsGroup_1076
d_isGroup_2680 v0
  = coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.isInvertibleMagma
d_isInvertibleMagma_2682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_2682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_2682 v9
du_isInvertibleMagma_2682 ::
  T_IsNonAssociativeRing_2622 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_2682 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe (coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2684 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2684 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_2684 v9
du_isInvertibleUnitalMagma_2684 ::
  T_IsNonAssociativeRing_2622 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2684 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (coe du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isMagma
d_isMagma_2686 :: T_IsNonAssociativeRing_2622 -> T_IsMagma_180
d_isMagma_2686 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))
-- Algebra.Structures.IsNonAssociativeRing._.isMonoid
d_isMonoid_2688 :: T_IsNonAssociativeRing_2622 -> T_IsMonoid_714
d_isMonoid_2688 v0
  = coe
      d_isMonoid_1090
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.isSemigroup
d_isSemigroup_2690 ::
  T_IsNonAssociativeRing_2622 -> T_IsSemigroup_490
d_isSemigroup_2690 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0))))
-- Algebra.Structures.IsNonAssociativeRing._.isUnitalMagma
d_isUnitalMagma_2692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsUnitalMagma_668
d_isUnitalMagma_2692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2692 v9
du_isUnitalMagma_2692 ::
  T_IsNonAssociativeRing_2622 -> T_IsUnitalMagma_668
du_isUnitalMagma_2692 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v2))))
-- Algebra.Structures.IsNonAssociativeRing._.⁻¹-cong
d_'8315''185''45'cong_2694 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2694 v0
  = coe
      d_'8315''185''45'cong_1094
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.inverse
d_inverse_2696 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2696 v0
  = coe
      d_inverse_1092
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))
-- Algebra.Structures.IsNonAssociativeRing._.inverseʳ
d_inverse'691'_2698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_inverse'691'_2698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_2698 v9
du_inverse'691'_2698 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_inverse'691'_2698 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe (coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.inverseˡ
d_inverse'737'_2700 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_inverse'737'_2700 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_2700 v9
du_inverse'737'_2700 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_inverse'737'_2700 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe (coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v1)))
-- Algebra.Structures.IsNonAssociativeRing._.isEquivalence
d_isEquivalence_2702 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2702 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0))))))
-- Algebra.Structures.IsNonAssociativeRing._.isPartialEquivalence
d_isPartialEquivalence_2704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2704 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2704 v9
du_isPartialEquivalence_2704 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2704 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                     (coe d_isEquivalence_188 (coe v5)))))))
-- Algebra.Structures.IsNonAssociativeRing._.refl
d_refl_2706 :: T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_refl_2706 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.reflexive
d_reflexive_2708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2708 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2708 v9
du_reflexive_2708 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2708 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe
               (let v5 = d_isMagma_498 (coe v4) in
                coe
                  (\ v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                       (coe d_isEquivalence_188 (coe v5)) v6)))))
-- Algebra.Structures.IsNonAssociativeRing._.setoid
d_setoid_2710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2710 v9
du_setoid_2710 ::
  T_IsNonAssociativeRing_2622 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2710 v0
  = let v1 = d_'43''45'isAbelianGroup_2644 (coe v0) in
    coe
      (let v2 = d_isGroup_1186 (coe v1) in
       coe
         (let v3 = d_isMonoid_1090 (coe v2) in
          coe
            (let v4 = d_isSemigroup_724 (coe v3) in
             coe (coe du_setoid_204 (coe d_isMagma_498 (coe v4))))))
-- Algebra.Structures.IsNonAssociativeRing._.sym
d_sym_2712 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2712 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.trans
d_trans_2714 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2714 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))))
-- Algebra.Structures.IsNonAssociativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2716 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_2716 v4 v6 v7 v9
du_unique'691''45''8315''185'_2716 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2716 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2644 (coe v3) in
    coe
      (coe
         du_unique'691''45''8315''185'_1160 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_1186 (coe v4)))
-- Algebra.Structures.IsNonAssociativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2718 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2718 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_2718 v4 v6 v7 v9
du_unique'737''45''8315''185'_2718 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2718 v0 v1 v2 v3
  = let v4 = d_'43''45'isAbelianGroup_2644 (coe v3) in
    coe
      (coe
         du_unique'737''45''8315''185'_1154 (coe v0) (coe v2) (coe v1)
         (coe d_isGroup_1186 (coe v4)))
-- Algebra.Structures.IsNonAssociativeRing.zeroˡ
d_zero'737'_2720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_zero'737'_2720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_2720 v9
du_zero'737'_2720 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_zero'737'_2720 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe d_zero_2652 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.zeroʳ
d_zero'691'_2722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_zero'691'_2722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_2722 v9
du_zero'691'_2722 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_zero'691'_2722 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe d_zero_2652 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.distribˡ
d_distrib'737'_2724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2724 v9
du_distrib'737'_2724 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2724 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_distrib_2650 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.distribʳ
d_distrib'691'_2726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2726 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2726 v9
du_distrib'691'_2726 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2726 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_distrib_2650 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-isMagma
d_'42''45'isMagma_2728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsMagma_180
d_'42''45'isMagma_2728 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2728 v9
du_'42''45'isMagma_2728 ::
  T_IsNonAssociativeRing_2622 -> T_IsMagma_180
du_'42''45'isMagma_2728 v0
  = coe
      C_constructor_212
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2644 (coe v0)))))))
      (coe d_'42''45'cong_2646 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-identityˡ
d_'42''45'identity'737'_2730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_'42''45'identity'737'_2730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'identity'737'_2730 v9
du_'42''45'identity'737'_2730 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_'42''45'identity'737'_2730 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'42''45'identity_2648 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-identityʳ
d_'42''45'identity'691'_2732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
d_'42''45'identity'691'_2732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'identity'691'_2732 v9
du_'42''45'identity'691'_2732 ::
  T_IsNonAssociativeRing_2622 -> AgdaAny -> AgdaAny
du_'42''45'identity'691'_2732 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'42''45'identity_2648 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing.*-isUnitalMagma
d_'42''45'isUnitalMagma_2734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsNonAssociativeRing_2622 -> T_IsUnitalMagma_668
d_'42''45'isUnitalMagma_2734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isUnitalMagma_2734 v9
du_'42''45'isUnitalMagma_2734 ::
  T_IsNonAssociativeRing_2622 -> T_IsUnitalMagma_668
du_'42''45'isUnitalMagma_2734 v0
  = coe
      C_constructor_708 (coe du_'42''45'isMagma_2728 (coe v0))
      (coe d_'42''45'identity_2648 (coe v0))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congʳ
d_'8729''45'cong'691'_2738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2738 v9
du_'8729''45'cong'691'_2738 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2738 v0
  = let v1 = coe du_'42''45'isUnitalMagma_2734 (coe v0) in
    coe
      (let v2 = d_isMagma_678 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsNonAssociativeRing._.∙-congˡ
d_'8729''45'cong'737'_2740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2740 v9
du_'8729''45'cong'737'_2740 ::
  T_IsNonAssociativeRing_2622 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2740 v0
  = let v1 = coe du_'42''45'isUnitalMagma_2734 (coe v0) in
    coe
      (let v2 = d_isMagma_678 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsNearring
d_IsNearring_2754 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsNearring_2754
  = C_constructor_2856 T_IsQuasiring_2262
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsNearring.isQuasiring
d_isQuasiring_2772 :: T_IsNearring_2754 -> T_IsQuasiring_2262
d_isQuasiring_2772 v0
  = case coe v0 of
      C_constructor_2856 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring.+-inverse
d_'43''45'inverse_2774 ::
  T_IsNearring_2754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''45'inverse_2774 v0
  = case coe v0 of
      C_constructor_2856 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring.⁻¹-cong
d_'8315''185''45'cong_2776 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2776 v0
  = case coe v0 of
      C_constructor_2856 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsNearring._.*-assoc
d_'42''45'assoc_2780 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2780 v0
  = coe d_'42''45'assoc_2288 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.*-cong
d_'42''45'cong_2782 ::
  T_IsNearring_2754 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2782 v0
  = coe d_'42''45'cong_2286 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.∙-congʳ
d_'8729''45'cong'691'_2784 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2784 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2784 v9
du_'8729''45'cong'691'_2784 ::
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2784 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_2348 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsNearring._.∙-congˡ
d_'8729''45'cong'737'_2786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2786 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2786 v9
du_'8729''45'cong'737'_2786 ::
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2786 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = coe du_'42''45'isMonoid_2348 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsNearring._.*-identity
d_'42''45'identity_2788 ::
  T_IsNearring_2754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2788 v0
  = coe d_'42''45'identity_2290 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'691'_2790 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2790 v9
du_identity'691'_2790 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'691'_2790 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (coe du_identity'691'_756 (coe du_'42''45'isMonoid_2348 (coe v1)))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'737'_2792 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2792 v9
du_identity'737'_2792 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'737'_2792 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (coe du_identity'737'_754 (coe du_'42''45'isMonoid_2348 (coe v1)))
-- Algebra.Structures.IsNearring._.*-isMagma
d_'42''45'isMagma_2794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> T_IsMagma_180
d_'42''45'isMagma_2794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMagma_2794 v9
du_'42''45'isMagma_2794 :: T_IsNearring_2754 -> T_IsMagma_180
du_'42''45'isMagma_2794 v0
  = coe du_'42''45'isMagma_2344 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.*-isMonoid
d_'42''45'isMonoid_2796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> T_IsMonoid_714
d_'42''45'isMonoid_2796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isMonoid_2796 v9
du_'42''45'isMonoid_2796 :: T_IsNearring_2754 -> T_IsMonoid_714
du_'42''45'isMonoid_2796 v0
  = coe du_'42''45'isMonoid_2348 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.*-isSemigroup
d_'42''45'isSemigroup_2798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'42''45'isSemigroup_2798 v9
du_'42''45'isSemigroup_2798 ::
  T_IsNearring_2754 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2798 v0
  = coe du_'42''45'isSemigroup_2346 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.assoc
d_assoc_2800 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2800 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))))
-- Algebra.Structures.IsNearring._.∙-cong
d_'8729''45'cong_2802 ::
  T_IsNearring_2754 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2802 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0)))))
-- Algebra.Structures.IsNearring._.∙-congʳ
d_'8729''45'cong'691'_2804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2804 v9
du_'8729''45'cong'691'_2804 ::
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2804 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2284 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsNearring._.∙-congˡ
d_'8729''45'cong'737'_2806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2806 v9
du_'8729''45'cong'737'_2806 ::
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2806 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2284 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsNearring._.identity
d_identity_2808 ::
  T_IsNearring_2754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2808 v0
  = coe
      d_identity_726
      (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0)))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'691'_2810 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2810 v9
du_identity'691'_2810 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'691'_2810 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (coe du_identity'691'_756 (coe d_'43''45'isMonoid_2284 (coe v1)))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'737'_2812 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2812 v9
du_identity'737'_2812 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'737'_2812 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (coe du_identity'737'_754 (coe d_'43''45'isMonoid_2284 (coe v1)))
-- Algebra.Structures.IsNearring._.isMagma
d_isMagma_2814 :: T_IsNearring_2754 -> T_IsMagma_180
d_isMagma_2814 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))))
-- Algebra.Structures.IsNearring._.+-isMonoid
d_'43''45'isMonoid_2816 :: T_IsNearring_2754 -> T_IsMonoid_714
d_'43''45'isMonoid_2816 v0
  = coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.isSemigroup
d_isSemigroup_2818 :: T_IsNearring_2754 -> T_IsSemigroup_490
d_isSemigroup_2818 v0
  = coe
      d_isSemigroup_724
      (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0)))
-- Algebra.Structures.IsNearring._.isUnitalMagma
d_isUnitalMagma_2820 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> T_IsUnitalMagma_668
d_isUnitalMagma_2820 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2820 v9
du_isUnitalMagma_2820 :: T_IsNearring_2754 -> T_IsUnitalMagma_668
du_isUnitalMagma_2820 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (coe du_isUnitalMagma_758 (coe d_'43''45'isMonoid_2284 (coe v1)))
-- Algebra.Structures.IsNearring._.distrib
d_distrib_2822 ::
  T_IsNearring_2754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2822 v0
  = coe d_distrib_2292 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.distribʳ
d_distrib'691'_2824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2824 v9
du_distrib'691'_2824 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2824 v0
  = coe du_distrib'691'_2334 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.distribˡ
d_distrib'737'_2826 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2826 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2826 v9
du_distrib'737'_2826 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2826 v0
  = coe du_distrib'737'_2332 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.identityʳ
d_identity'691'_2828 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'691'_2828 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2828 v9
du_identity'691'_2828 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'691'_2828 v0
  = coe du_identity'691'_2342 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.identityˡ
d_identity'737'_2830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_identity'737'_2830 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2830 v9
du_identity'737'_2830 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_identity'737'_2830 v0
  = coe du_identity'737'_2340 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.isEquivalence
d_isEquivalence_2832 ::
  T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2832 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0)))))
-- Algebra.Structures.IsNearring._.isPartialEquivalence
d_isPartialEquivalence_2834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2834 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2834 v9
du_isPartialEquivalence_2834 ::
  T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2834 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2284 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.IsNearring._.refl
d_refl_2836 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_refl_2836 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))))))
-- Algebra.Structures.IsNearring._.reflexive
d_reflexive_2838 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2838 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2838 v9
du_reflexive_2838 ::
  T_IsNearring_2754 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2838 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2284 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe
            (let v4 = d_isMagma_498 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe d_isEquivalence_188 (coe v4)) v5))))
-- Algebra.Structures.IsNearring._.setoid
d_setoid_2840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2840 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2840 v9
du_setoid_2840 ::
  T_IsNearring_2754 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2840 v0
  = let v1 = d_isQuasiring_2772 (coe v0) in
    coe
      (let v2 = d_'43''45'isMonoid_2284 (coe v1) in
       coe
         (let v3 = d_isSemigroup_724 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_498 (coe v3)))))
-- Algebra.Structures.IsNearring._.sym
d_sym_2842 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2842 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))))))
-- Algebra.Structures.IsNearring._.trans
d_trans_2844 ::
  T_IsNearring_2754 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2844 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe d_'43''45'isMonoid_2284 (coe d_isQuasiring_2772 (coe v0))))))
-- Algebra.Structures.IsNearring._.zero
d_zero_2846 ::
  T_IsNearring_2754 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2846 v0 = coe d_zero_2294 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.zeroʳ
d_zero'691'_2848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_zero'691'_2848 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'691'_2848 v9
du_zero'691'_2848 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_zero'691'_2848 v0
  = coe du_zero'691'_2338 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring._.zeroˡ
d_zero'737'_2850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_zero'737'_2850 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_zero'737'_2850 v9
du_zero'737'_2850 :: T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_zero'737'_2850 v0
  = coe du_zero'737'_2336 (coe d_isQuasiring_2772 (coe v0))
-- Algebra.Structures.IsNearring.+-inverseˡ
d_'43''45'inverse'737'_2852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_'43''45'inverse'737'_2852 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'43''45'inverse'737'_2852 v9
du_'43''45'inverse'737'_2852 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_'43''45'inverse'737'_2852 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_'43''45'inverse_2774 (coe v0))
-- Algebra.Structures.IsNearring.+-inverseʳ
d_'43''45'inverse'691'_2854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> T_IsNearring_2754 -> AgdaAny -> AgdaAny
d_'43''45'inverse'691'_2854 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'43''45'inverse'691'_2854 v9
du_'43''45'inverse'691'_2854 ::
  T_IsNearring_2754 -> AgdaAny -> AgdaAny
du_'43''45'inverse'691'_2854 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_'43''45'inverse_2774 (coe v0))
-- Algebra.Structures.IsRing
d_IsRing_2868 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsRing_2868
  = C_constructor_3004 T_IsAbelianGroup_1174
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsRing.+-isAbelianGroup
d_'43''45'isAbelianGroup_2890 ::
  T_IsRing_2868 -> T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_2890 v0
  = case coe v0 of
      C_constructor_3004 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-cong
d_'42''45'cong_2892 ::
  T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_2892 v0
  = case coe v0 of
      C_constructor_3004 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-assoc
d_'42''45'assoc_2894 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_2894 v0
  = case coe v0 of
      C_constructor_3004 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.*-identity
d_'42''45'identity_2896 ::
  T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_2896 v0
  = case coe v0 of
      C_constructor_3004 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.distrib
d_distrib_2898 ::
  T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_2898 v0
  = case coe v0 of
      C_constructor_3004 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRing.isRingWithoutOne
d_isRingWithoutOne_2900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsRingWithoutOne_2496
d_isRingWithoutOne_2900 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRingWithoutOne_2900 v9
du_isRingWithoutOne_2900 ::
  T_IsRing_2868 -> T_IsRingWithoutOne_2496
du_isRingWithoutOne_2900 v0
  = coe
      C_constructor_2610 (coe d_'43''45'isAbelianGroup_2890 (coe v0))
      (coe d_'42''45'cong_2892 (coe v0))
      (coe d_'42''45'assoc_2894 (coe v0)) (coe d_distrib_2898 (coe v0))
-- Algebra.Structures.IsRing._._//_
d__'47''47'__2904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__2904 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__2904 v4 v6
du__'47''47'__2904 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__2904 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_2906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2906 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'691'_2906 v4 v5 v6 v7 v9
du_'8729''45'cong'691'_2906 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2906 v0 v1 v2 v3 v4
  = let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
    coe
      (let v6
             = coe
                 du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v5) in
       coe
         (let v7 = coe du_'42''45'isMagma_1326 (coe v6) in
          coe
            (let v8 = coe du_setoid_204 (coe v7) in
             coe
               (let v9 = d_'8729''45'cong_190 (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v9)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v8))))))))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_2908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2908 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'737'_2908 v4 v5 v6 v7 v9
du_'8729''45'cong'737'_2908 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2908 v0 v1 v2 v3 v4
  = let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
    coe
      (let v6
             = coe
                 du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v5) in
       coe
         (let v7 = coe du_'42''45'isMagma_1326 (coe v6) in
          coe
            (let v8 = coe du_setoid_204 (coe v7) in
             coe
               (let v9 = d_'8729''45'cong_190 (coe v7) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v9)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v8))))))))
-- Algebra.Structures.IsRing._.*-isMagma
d_'42''45'isMagma_2910 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsMagma_180
d_'42''45'isMagma_2910 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMagma_2910 v4 v5 v6 v7 v9
du_'42''45'isMagma_2910 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T_IsRing_2868 -> T_IsMagma_180
du_'42''45'isMagma_2910 v0 v1 v2 v3 v4
  = let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
    coe
      (coe
         du_'42''45'isMagma_1326
         (coe
            du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsRing._.*-isSemigroup
d_'42''45'isSemigroup_2912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsSemigroup_490
d_'42''45'isSemigroup_2912 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isSemigroup_2912 v4 v5 v6 v7 v9
du_'42''45'isSemigroup_2912 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> T_IsSemigroup_490
du_'42''45'isSemigroup_2912 v0 v1 v2 v3 v4
  = let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
    coe
      (coe
         du_'42''45'isSemigroup_1328
         (coe
            du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsRing._.assoc
d_assoc_2914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_2914 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_assoc_2914 v9
du_assoc_2914 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_2914 v0
  = coe
      d_assoc_500
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))))
-- Algebra.Structures.IsRing._.comm
d_comm_2916 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_2916 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_comm_2916 v9
du_comm_2916 :: T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_2916 v0
  = coe d_comm_1188 (coe d_'43''45'isAbelianGroup_2890 (coe v0))
-- Algebra.Structures.IsRing._.∙-cong
d_'8729''45'cong_2918 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_2918 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong_2918 v9
du_'8729''45'cong_2918 ::
  T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_2918 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0))))))
-- Algebra.Structures.IsRing._.∙-congʳ
d_'8729''45'cong'691'_2920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_2920 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_2920 v9
du_'8729''45'cong'691'_2920 ::
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_2920 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe
            (let v4 = d_isMonoid_1090 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsRing._.∙-congˡ
d_'8729''45'cong'737'_2922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_2922 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_2922 v9
du_'8729''45'cong'737'_2922 ::
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_2922 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe
            (let v4 = d_isMonoid_1090 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (let v7 = coe du_setoid_204 (coe v6) in
                      coe
                        (let v8 = d_'8729''45'cong_190 (coe v6) in
                         coe
                           (coe
                              MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                              (coe v8)
                              (coe
                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                    (coe v7)))))))))))
-- Algebra.Structures.IsRing._.identity
d_identity_2924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_2924 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity_2924 v9
du_identity_2924 ::
  T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_2924 v0
  = coe
      d_identity_726
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0))))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_2926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_identity'691'_2926 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_2926 v9
du_identity'691'_2926 :: T_IsRing_2868 -> AgdaAny -> AgdaAny
du_identity'691'_2926 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v3)))))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_2928 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_identity'737'_2928 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_2928 v9
du_identity'737'_2928 :: T_IsRing_2868 -> AgdaAny -> AgdaAny
du_identity'737'_2928 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v3)))))
-- Algebra.Structures.IsRing._.isCommutativeMagma
d_isCommutativeMagma_2930 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_2930 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_2930 v9
du_isCommutativeMagma_2930 ::
  T_IsRing_2868 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_2930 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = coe du_isCommutativeMonoid_1246 (coe v2) in
          coe
            (coe
               du_isCommutativeMagma_608
               (coe du_isCommutativeSemigroup_816 (coe v3)))))
-- Algebra.Structures.IsRing._.isCommutativeMonoid
d_isCommutativeMonoid_2932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_2932 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_2932 v9
du_isCommutativeMonoid_2932 ::
  T_IsRing_2868 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_2932 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (coe
         du_isCommutativeMonoid_1246
         (coe d_'43''45'isAbelianGroup_2514 (coe v1)))
-- Algebra.Structures.IsRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_2934 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_2934 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_2934 v9
du_isCommutativeSemigroup_2934 ::
  T_IsRing_2868 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_2934 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (coe
            du_isCommutativeSemigroup_816
            (coe du_isCommutativeMonoid_1246 (coe v2))))
-- Algebra.Structures.IsRing._.isGroup
d_isGroup_2936 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsGroup_1076
d_isGroup_2936 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isGroup_2936 v9
du_isGroup_2936 :: T_IsRing_2868 -> T_IsGroup_1076
du_isGroup_2936 v0
  = coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0))
-- Algebra.Structures.IsRing._.isInvertibleMagma
d_isInvertibleMagma_2938 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_2938 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_2938 v9
du_isInvertibleMagma_2938 ::
  T_IsRing_2868 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_2938 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe (coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v2))))
-- Algebra.Structures.IsRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_2940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_2940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_2940 v9
du_isInvertibleUnitalMagma_2940 ::
  T_IsRing_2868 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_2940 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (coe
            du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v2))))
-- Algebra.Structures.IsRing._.isMagma
d_isMagma_2942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsMagma_180
d_isMagma_2942 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMagma_2942 v9
du_isMagma_2942 :: T_IsRing_2868 -> T_IsMagma_180
du_isMagma_2942 v0
  = coe
      d_isMagma_498
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))))
-- Algebra.Structures.IsRing._.isMonoid
d_isMonoid_2944 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsMonoid_714
d_isMonoid_2944 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMonoid_2944 v9
du_isMonoid_2944 :: T_IsRing_2868 -> T_IsMonoid_714
du_isMonoid_2944 v0
  = coe
      d_isMonoid_1090
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))
-- Algebra.Structures.IsRing._.isSemigroup
d_isSemigroup_2946 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsSemigroup_490
d_isSemigroup_2946 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemigroup_2946 v9
du_isSemigroup_2946 :: T_IsRing_2868 -> T_IsSemigroup_490
du_isSemigroup_2946 v0
  = coe
      d_isSemigroup_724
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0))))
-- Algebra.Structures.IsRing._.isUnitalMagma
d_isUnitalMagma_2948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsUnitalMagma_668
d_isUnitalMagma_2948 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_2948 v9
du_isUnitalMagma_2948 :: T_IsRing_2868 -> T_IsUnitalMagma_668
du_isUnitalMagma_2948 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v3)))))
-- Algebra.Structures.IsRing._.⁻¹-cong
d_'8315''185''45'cong_2950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_2950 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8315''185''45'cong_2950 v9
du_'8315''185''45'cong_2950 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_2950 v0
  = coe
      d_'8315''185''45'cong_1094
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))
-- Algebra.Structures.IsRing._.inverse
d_inverse_2952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_2952 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse_2952 v9
du_inverse_2952 ::
  T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_2952 v0
  = coe
      d_inverse_1092
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))
-- Algebra.Structures.IsRing._.inverseʳ
d_inverse'691'_2954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_inverse'691'_2954 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_2954 v9
du_inverse'691'_2954 :: T_IsRing_2868 -> AgdaAny -> AgdaAny
du_inverse'691'_2954 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe (coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v2))))
-- Algebra.Structures.IsRing._.inverseˡ
d_inverse'737'_2956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_inverse'737'_2956 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_2956 v9
du_inverse'737'_2956 :: T_IsRing_2868 -> AgdaAny -> AgdaAny
du_inverse'737'_2956 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe (coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v2))))
-- Algebra.Structures.IsRing._.distribʳ
d_distrib'691'_2958 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_2958 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_2958 v9
du_distrib'691'_2958 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_2958 v0
  = coe du_distrib'691'_2590 (coe du_isRingWithoutOne_2900 (coe v0))
-- Algebra.Structures.IsRing._.distribˡ
d_distrib'737'_2960 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_2960 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_2960 v9
du_distrib'737'_2960 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_2960 v0
  = coe du_distrib'737'_2588 (coe du_isRingWithoutOne_2900 (coe v0))
-- Algebra.Structures.IsRing._.isEquivalence
d_isEquivalence_2962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_2962 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_2962 v9
du_isEquivalence_2962 ::
  T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_2962 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0))))))
-- Algebra.Structures.IsRing._.isNearSemiring
d_isNearSemiring_2964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsNearSemiring_1262
d_isNearSemiring_2964 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isNearSemiring_2964 v4 v5 v6 v7 v9
du_isNearSemiring_2964 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> T_IsNearSemiring_1262
du_isNearSemiring_2964 v0 v1 v2 v3 v4
  = coe
      du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2900 (coe v4))
-- Algebra.Structures.IsRing._.isPartialEquivalence
d_isPartialEquivalence_2966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_2966 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_2966 v9
du_isPartialEquivalence_2966 ::
  T_IsRing_2868 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_2966 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe
            (let v4 = d_isMonoid_1090 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                        (coe d_isEquivalence_188 (coe v6))))))))
-- Algebra.Structures.IsRing._.refl
d_refl_2968 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_refl_2968 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_refl_2968 v9
du_refl_2968 :: T_IsRing_2868 -> AgdaAny -> AgdaAny
du_refl_2968 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))))))
-- Algebra.Structures.IsRing._.reflexive
d_reflexive_2970 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_2970 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_2970 v9
du_reflexive_2970 ::
  T_IsRing_2868 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_2970 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe
            (let v4 = d_isMonoid_1090 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe
                  (let v6 = d_isMagma_498 (coe v5) in
                   coe
                     (\ v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                          (coe d_isEquivalence_188 (coe v6)) v7))))))
-- Algebra.Structures.IsRing._.setoid
d_setoid_2972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_2972 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_2972 v9
du_setoid_2972 ::
  T_IsRing_2868 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_2972 v0
  = let v1 = coe du_isRingWithoutOne_2900 (coe v0) in
    coe
      (let v2 = d_'43''45'isAbelianGroup_2514 (coe v1) in
       coe
         (let v3 = d_isGroup_1186 (coe v2) in
          coe
            (let v4 = d_isMonoid_1090 (coe v3) in
             coe
               (let v5 = d_isSemigroup_724 (coe v4) in
                coe (coe du_setoid_204 (coe d_isMagma_498 (coe v5)))))))
-- Algebra.Structures.IsRing._.sym
d_sym_2974 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_2974 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_2974 v9
du_sym_2974 ::
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_2974 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))))))
-- Algebra.Structures.IsRing._.trans
d_trans_2976 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_2976 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_2976 v9
du_trans_2976 ::
  T_IsRing_2868 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_2976 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v0)))))))
-- Algebra.Structures.IsRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_2978 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_2978 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_2978 v4 v6 v7 v9
du_unique'691''45''8315''185'_2978 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_2978 v0 v1 v2 v3
  = let v4 = coe du_isRingWithoutOne_2900 (coe v3) in
    coe
      (let v5 = d_'43''45'isAbelianGroup_2514 (coe v4) in
       coe
         (coe
            du_unique'691''45''8315''185'_1160 (coe v0) (coe v2) (coe v1)
            (coe d_isGroup_1186 (coe v5))))
-- Algebra.Structures.IsRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_2980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_2980 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_2980 v4 v6 v7 v9
du_unique'737''45''8315''185'_2980 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRing_2868 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_2980 v0 v1 v2 v3
  = let v4 = coe du_isRingWithoutOne_2900 (coe v3) in
    coe
      (let v5 = d_'43''45'isAbelianGroup_2514 (coe v4) in
       coe
         (coe
            du_unique'737''45''8315''185'_1154 (coe v0) (coe v2) (coe v1)
            (coe d_isGroup_1186 (coe v5))))
-- Algebra.Structures.IsRing._.zero
d_zero_2982 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_2982 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_2982 v4 v5 v6 v7 v9
du_zero_2982 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_2982 v0 v1 v2 v3 v4
  = coe
      du_zero_2596 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2900 (coe v4))
-- Algebra.Structures.IsRing._.zeroʳ
d_zero'691'_2984 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_zero'691'_2984 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_2984 v4 v5 v6 v7 v9
du_zero'691'_2984 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
du_zero'691'_2984 v0 v1 v2 v3 v4
  = coe
      du_zero'691'_2594 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2900 (coe v4))
-- Algebra.Structures.IsRing._.zeroˡ
d_zero'737'_2986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_zero'737'_2986 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_2986 v4 v5 v6 v7 v9
du_zero'737'_2986 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
du_zero'737'_2986 v0 v1 v2 v3 v4
  = coe
      du_zero'737'_2592 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe du_isRingWithoutOne_2900 (coe v4))
-- Algebra.Structures.IsRing.*-isMonoid
d_'42''45'isMonoid_2988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsMonoid_714
d_'42''45'isMonoid_2988 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMonoid_2988 v4 v5 v6 v7 v9
du_'42''45'isMonoid_2988 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> T_IsRing_2868 -> T_IsMonoid_714
du_'42''45'isMonoid_2988 v0 v1 v2 v3 v4
  = coe
      C_constructor_760
      (coe
         du_'42''45'isSemigroup_1328
         (coe
            du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe du_isRingWithoutOne_2900 (coe v4))))
      (coe d_'42''45'identity_2896 (coe v4))
-- Algebra.Structures.IsRing._.identityʳ
d_identity'691'_2992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_identity'691'_2992 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'691'_2992 v4 v5 v6 v7 v9
du_identity'691'_2992 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
du_identity'691'_2992 v0 v1 v2 v3 v4
  = coe
      du_identity'691'_756
      (coe
         du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsRing._.identityˡ
d_identity'737'_2994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
d_identity'737'_2994 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'737'_2994 v4 v5 v6 v7 v9
du_identity'737'_2994 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> AgdaAny -> AgdaAny
du_identity'737'_2994 v0 v1 v2 v3 v4
  = coe
      du_identity'737'_754
      (coe
         du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsRing.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_2996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsRing_2868 -> T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_2996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_2996 v9
du_isSemiringWithoutAnnihilatingZero_2996 ::
  T_IsRing_2868 -> T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_2996 v0
  = coe
      C_constructor_1632
      (coe
         du_isCommutativeMonoid_1246
         (coe d_'43''45'isAbelianGroup_2890 (coe v0)))
      (coe d_'42''45'cong_2892 (coe v0))
      (coe d_'42''45'assoc_2894 (coe v0))
      (coe d_'42''45'identity_2896 (coe v0))
      (coe d_distrib_2898 (coe v0))
-- Algebra.Structures.IsRing.isSemiring
d_isSemiring_2998 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsSemiring_1642
d_isSemiring_2998 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiring_2998 v4 v5 v6 v7 v9
du_isSemiring_2998 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> T_IsSemiring_1642
du_isSemiring_2998 v0 v1 v2 v3 v4
  = coe
      C_constructor_1742
      (coe du_isSemiringWithoutAnnihilatingZero_2996 (coe v4))
      (coe
         du_zero_2596 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2900 (coe v4)))
-- Algebra.Structures.IsRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_3002 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsRing_2868 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_3002 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiringWithoutOne_3002 v4 v5 v6 v7 v9
du_isSemiringWithoutOne_3002 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRing_2868 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_3002 v0 v1 v2 v3 v4
  = coe
      du_isSemiringWithoutOne_1732
      (coe
         du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Structures.IsCommutativeRing
d_IsCommutativeRing_3016 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsCommutativeRing_3016
  = C_constructor_3158 T_IsRing_2868 (AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsCommutativeRing.isRing
d_isRing_3032 :: T_IsCommutativeRing_3016 -> T_IsRing_2868
d_isRing_3032 v0
  = case coe v0 of
      C_constructor_3158 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing.*-comm
d_'42''45'comm_3034 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_3034 v0
  = case coe v0 of
      C_constructor_3158 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsCommutativeRing._._//_
d__'47''47'__3038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__3038 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__3038 v4 v6
du__'47''47'__3038 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__3038 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsCommutativeRing._.*-assoc
d_'42''45'assoc_3040 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_3040 v0
  = coe d_'42''45'assoc_2894 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.*-cong
d_'42''45'cong_3042 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_3042 v0
  = coe d_'42''45'cong_2892 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_3044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3044 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'691'_3044 v4 v5 v6 v7 v9
du_'8729''45'cong'691'_3044 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3044 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
       coe
         (let v7
                = coe
                    du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                    (coe v6) in
          coe
            (let v8 = coe du_'42''45'isMagma_1326 (coe v7) in
             coe
               (let v9 = coe du_setoid_204 (coe v8) in
                coe
                  (let v10 = d_'8729''45'cong_190 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_3046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3046 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'737'_3046 v4 v5 v6 v7 v9
du_'8729''45'cong'737'_3046 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3046 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
       coe
         (let v7
                = coe
                    du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                    (coe v6) in
          coe
            (let v8 = coe du_'42''45'isMagma_1326 (coe v7) in
             coe
               (let v9 = coe du_setoid_204 (coe v8) in
                coe
                  (let v10 = d_'8729''45'cong_190 (coe v8) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v10)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v9)))))))))
-- Algebra.Structures.IsCommutativeRing._.*-identity
d_'42''45'identity_3048 ::
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_3048 v0
  = coe d_'42''45'identity_2896 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_3050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_identity'691'_3050 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'691'_3050 v4 v5 v6 v7 v9
du_identity'691'_3050 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_identity'691'_3050 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_identity'691'_756
         (coe
            du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_3052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_identity'737'_3052 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'737'_3052 v4 v5 v6 v7 v9
du_identity'737'_3052 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_identity'737'_3052 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_identity'737'_754
         (coe
            du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.*-isMagma
d_'42''45'isMagma_3054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMagma_180
d_'42''45'isMagma_3054 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMagma_3054 v4 v5 v6 v7 v9
du_'42''45'isMagma_3054 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMagma_180
du_'42''45'isMagma_3054 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
       coe
         (coe
            du_'42''45'isMagma_1326
            (coe
               du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v6))))
-- Algebra.Structures.IsCommutativeRing._.*-isMonoid
d_'42''45'isMonoid_3056 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMonoid_714
d_'42''45'isMonoid_3056 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMonoid_3056 v4 v5 v6 v7 v9
du_'42''45'isMonoid_3056 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMonoid_714
du_'42''45'isMonoid_3056 v0 v1 v2 v3 v4
  = coe
      du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe d_isRing_3032 (coe v4))
-- Algebra.Structures.IsCommutativeRing._.*-isSemigroup
d_'42''45'isSemigroup_3058 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemigroup_490
d_'42''45'isSemigroup_3058 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isSemigroup_3058 v4 v5 v6 v7 v9
du_'42''45'isSemigroup_3058 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemigroup_490
du_'42''45'isSemigroup_3058 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
       coe
         (coe
            du_'42''45'isSemigroup_1328
            (coe
               du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v6))))
-- Algebra.Structures.IsCommutativeRing._.assoc
d_assoc_3060 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3060 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_assoc_3060 v9
du_assoc_3060 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_3060 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_assoc_500
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))))
-- Algebra.Structures.IsCommutativeRing._.comm
d_comm_3062 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_3062 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_comm_3062 v9
du_comm_3062 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_3062 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe (coe d_comm_1188 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.∙-cong
d_'8729''45'cong_3064 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3064 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong_3064 v9
du_'8729''45'cong_3064 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_3064 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_'8729''45'cong_190
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congʳ
d_'8729''45'cong'691'_3066 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3066 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3066 v9
du_'8729''45'cong'691'_3066 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3066 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe
               (let v5 = d_isMonoid_1090 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsCommutativeRing._.∙-congˡ
d_'8729''45'cong'737'_3068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3068 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3068 v9
du_'8729''45'cong'737'_3068 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3068 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe
               (let v5 = d_isMonoid_1090 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (let v8 = coe du_setoid_204 (coe v7) in
                         coe
                           (let v9 = d_'8729''45'cong_190 (coe v7) in
                            coe
                              (coe
                                 MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                 (coe v9)
                                 (coe
                                    MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                       (coe v8))))))))))))
-- Algebra.Structures.IsCommutativeRing._.identity
d_identity_3070 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3070 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity_3070 v9
du_identity_3070 ::
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_3070 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_identity_726
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))))
-- Algebra.Structures.IsCommutativeRing._.identityʳ
d_identity'691'_3072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_identity'691'_3072 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3072 v9
du_identity'691'_3072 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_identity'691'_3072 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.identityˡ
d_identity'737'_3074 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_identity'737'_3074 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3074 v9
du_identity'737'_3074 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_identity'737'_3074 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_3076 ::
  T_IsCommutativeRing_3016 -> T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_3076 v0
  = coe d_'43''45'isAbelianGroup_2890 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_3078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_3078 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_3078 v9
du_isCommutativeMagma_3078 ::
  T_IsCommutativeRing_3016 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_3078 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = coe du_isCommutativeMonoid_1246 (coe v3) in
             coe
               (coe
                  du_isCommutativeMagma_608
                  (coe du_isCommutativeSemigroup_816 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMonoid
d_isCommutativeMonoid_3080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3080 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_3080 v9
du_isCommutativeMonoid_3080 ::
  T_IsCommutativeRing_3016 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_3080 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (coe
            du_isCommutativeMonoid_1246
            (coe d_'43''45'isAbelianGroup_2514 (coe v2))))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_3082 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_3082 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_3082 v9
du_isCommutativeSemigroup_3082 ::
  T_IsCommutativeRing_3016 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_3082 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (coe
               du_isCommutativeSemigroup_816
               (coe du_isCommutativeMonoid_1246 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isGroup
d_isGroup_3084 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsGroup_1076
d_isGroup_3084 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isGroup_3084 v9
du_isGroup_3084 :: T_IsCommutativeRing_3016 -> T_IsGroup_1076
du_isGroup_3084 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.isInvertibleMagma
d_isInvertibleMagma_3086 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_3086 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_3086 v9
du_isInvertibleMagma_3086 ::
  T_IsCommutativeRing_3016 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_3086 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe (coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_3088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_3088 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_3088 v9
du_isInvertibleUnitalMagma_3088 ::
  T_IsCommutativeRing_3016 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_3088 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (coe
               du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.isMagma
d_isMagma_3090 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMagma_180
d_isMagma_3090 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMagma_3090 v9
du_isMagma_3090 :: T_IsCommutativeRing_3016 -> T_IsMagma_180
du_isMagma_3090 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_isMagma_498
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))))
-- Algebra.Structures.IsCommutativeRing._.isMonoid
d_isMonoid_3092 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsMonoid_714
d_isMonoid_3092 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMonoid_3092 v9
du_isMonoid_3092 :: T_IsCommutativeRing_3016 -> T_IsMonoid_714
du_isMonoid_3092 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_isMonoid_1090
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.isSemigroup
d_isSemigroup_3094 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemigroup_490
d_isSemigroup_3094 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemigroup_3094 v9
du_isSemigroup_3094 ::
  T_IsCommutativeRing_3016 -> T_IsSemigroup_490
du_isSemigroup_3094 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_isSemigroup_724
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))))
-- Algebra.Structures.IsCommutativeRing._.isUnitalMagma
d_isUnitalMagma_3096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsUnitalMagma_668
d_isUnitalMagma_3096 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3096 v9
du_isUnitalMagma_3096 ::
  T_IsCommutativeRing_3016 -> T_IsUnitalMagma_668
du_isUnitalMagma_3096 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v4))))))
-- Algebra.Structures.IsCommutativeRing._.⁻¹-cong
d_'8315''185''45'cong_3098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_3098 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8315''185''45'cong_3098 v9
du_'8315''185''45'cong_3098 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_3098 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_'8315''185''45'cong_1094
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.inverse
d_inverse_3100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_3100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse_3100 v9
du_inverse_3100 ::
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_3100 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_inverse_1092
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))
-- Algebra.Structures.IsCommutativeRing._.inverseʳ
d_inverse'691'_3102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_inverse'691'_3102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_3102 v9
du_inverse'691'_3102 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_inverse'691'_3102 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe (coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.inverseˡ
d_inverse'737'_3104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_inverse'737'_3104 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_3104 v9
du_inverse'737'_3104 ::
  T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_inverse'737'_3104 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe (coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v3)))))
-- Algebra.Structures.IsCommutativeRing._.distrib
d_distrib_3106 ::
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3106 v0 = coe d_distrib_2898 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.distribʳ
d_distrib'691'_3108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_3108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_3108 v9
du_distrib'691'_3108 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_3108 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe du_distrib'691'_2590 (coe du_isRingWithoutOne_2900 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.distribˡ
d_distrib'737'_3110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_3110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_3110 v9
du_distrib'737'_3110 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_3110 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe du_distrib'737'_2588 (coe du_isRingWithoutOne_2900 (coe v1)))
-- Algebra.Structures.IsCommutativeRing._.isEquivalence
d_isEquivalence_3112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3112 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_3112 v9
du_isEquivalence_3112 ::
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3112 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1)))))))
-- Algebra.Structures.IsCommutativeRing._.isNearSemiring
d_isNearSemiring_3114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsNearSemiring_1262
d_isNearSemiring_3114 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isNearSemiring_3114 v4 v5 v6 v7 v9
du_isNearSemiring_3114 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsNearSemiring_1262
du_isNearSemiring_3114 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2900 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.isPartialEquivalence
d_isPartialEquivalence_3116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3116 v9
du_isPartialEquivalence_3116 ::
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3116 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe
               (let v5 = d_isMonoid_1090 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                           (coe d_isEquivalence_188 (coe v7)))))))))
-- Algebra.Structures.IsCommutativeRing._.isRingWithoutOne
d_isRingWithoutOne_3118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsRingWithoutOne_2496
d_isRingWithoutOne_3118 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRingWithoutOne_3118 v9
du_isRingWithoutOne_3118 ::
  T_IsCommutativeRing_3016 -> T_IsRingWithoutOne_2496
du_isRingWithoutOne_3118 v0
  = coe du_isRingWithoutOne_2900 (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiring
d_isSemiring_3120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemiring_1642
d_isSemiring_3120 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiring_3120 v4 v5 v6 v7 v9
du_isSemiring_3120 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemiring_1642
du_isSemiring_3120 v0 v1 v2 v3 v4
  = coe
      du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe d_isRing_3032 (coe v4))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_3122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_3122 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_3122 v9
du_isSemiringWithoutAnnihilatingZero_3122 ::
  T_IsCommutativeRing_3016 ->
  T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_3122 v0
  = coe
      du_isSemiringWithoutAnnihilatingZero_2996
      (coe d_isRing_3032 (coe v0))
-- Algebra.Structures.IsCommutativeRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_3124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_3124 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiringWithoutOne_3124 v4 v5 v6 v7 v9
du_isSemiringWithoutOne_3124 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_3124 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_isSemiringWithoutOne_1732
         (coe
            du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.refl
d_refl_3126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_refl_3126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_refl_3126 v9
du_refl_3126 :: T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_refl_3126 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            d_isEquivalence_188
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_1090
                     (coe
                        d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.reflexive
d_reflexive_3128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3128 v9
du_reflexive_3128 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3128 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe
               (let v5 = d_isMonoid_1090 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe
                     (let v7 = d_isMagma_498 (coe v6) in
                      coe
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                             (coe d_isEquivalence_188 (coe v7)) v8)))))))
-- Algebra.Structures.IsCommutativeRing._.setoid
d_setoid_3130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3130 v9
du_setoid_3130 ::
  T_IsCommutativeRing_3016 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3130 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (let v2 = coe du_isRingWithoutOne_2900 (coe v1) in
       coe
         (let v3 = d_'43''45'isAbelianGroup_2514 (coe v2) in
          coe
            (let v4 = d_isGroup_1186 (coe v3) in
             coe
               (let v5 = d_isMonoid_1090 (coe v4) in
                coe
                  (let v6 = d_isSemigroup_724 (coe v5) in
                   coe (coe du_setoid_204 (coe d_isMagma_498 (coe v6))))))))
-- Algebra.Structures.IsCommutativeRing._.sym
d_sym_3132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3132 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_3132 v9
du_sym_3132 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_3132 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_sym_38
         (coe
            d_isEquivalence_188
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_1090
                     (coe
                        d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.trans
d_trans_3134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_3134 v9
du_trans_3134 ::
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_3134 v0
  = let v1 = d_isRing_3032 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            d_isEquivalence_188
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_1090
                     (coe
                        d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v1))))))))
-- Algebra.Structures.IsCommutativeRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_3136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_3136 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_3136 v4 v6 v7 v9
du_unique'691''45''8315''185'_3136 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_3136 v0 v1 v2 v3
  = let v4 = d_isRing_3032 (coe v3) in
    coe
      (let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
       coe
         (let v6 = d_'43''45'isAbelianGroup_2514 (coe v5) in
          coe
            (coe
               du_unique'691''45''8315''185'_1160 (coe v0) (coe v2) (coe v1)
               (coe d_isGroup_1186 (coe v6)))))
-- Algebra.Structures.IsCommutativeRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_3138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_3138 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_3138 v4 v6 v7 v9
du_unique'737''45''8315''185'_3138 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_3138 v0 v1 v2 v3
  = let v4 = d_isRing_3032 (coe v3) in
    coe
      (let v5 = coe du_isRingWithoutOne_2900 (coe v4) in
       coe
         (let v6 = d_'43''45'isAbelianGroup_2514 (coe v5) in
          coe
            (coe
               du_unique'737''45''8315''185'_1154 (coe v0) (coe v2) (coe v1)
               (coe d_isGroup_1186 (coe v6)))))
-- Algebra.Structures.IsCommutativeRing._.zero
d_zero_3140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3140 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_3140 v4 v5 v6 v7 v9
du_zero_3140 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_3140 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_zero_2596 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2900 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.zeroʳ
d_zero'691'_3142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_zero'691'_3142 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_3142 v4 v5 v6 v7 v9
du_zero'691'_3142 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_zero'691'_3142 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_zero'691'_2594 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2900 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.zeroˡ
d_zero'737'_3144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
d_zero'737'_3144 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_3144 v4 v5 v6 v7 v9
du_zero'737'_3144 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> AgdaAny -> AgdaAny
du_zero'737'_3144 v0 v1 v2 v3 v4
  = let v5 = d_isRing_3032 (coe v4) in
    coe
      (coe
         du_zero'737'_2592 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe du_isRingWithoutOne_2900 (coe v5)))
-- Algebra.Structures.IsCommutativeRing.isCommutativeSemiring
d_isCommutativeSemiring_3146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_3146 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeSemiring_3146 v4 v5 v6 v7 v9
du_isCommutativeSemiring_3146 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_3146 v0 v1 v2 v3 v4
  = coe
      C_constructor_1864
      (coe
         du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_isRing_3032 (coe v4)))
      (coe d_'42''45'comm_3034 (coe v4))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeMagma
d_isCommutativeMagma_3150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_3150 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeMagma_3150 v4 v5 v6 v7 v9
du_isCommutativeMagma_3150 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_3150 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (let v6 = coe du_isCommutativeSemiringWithoutOne_1854 (coe v5) in
       coe
         (coe
            du_isCommutativeMagma_608
            (coe du_'42''45'isCommutativeSemigroup_1522 (coe v6))))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_3152 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8
                                   v9
  = du_'42''45'isCommutativeMonoid_3152 v4 v5 v6 v7 v9
du_'42''45'isCommutativeMonoid_3152 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_3152 v0 v1 v2 v3 v4
  = coe
      du_'42''45'isCommutativeMonoid_1862
      (coe
         du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsCommutativeRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_3154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_3154 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                      ~v8 v9
  = du_'42''45'isCommutativeSemigroup_3154 v4 v5 v6 v7 v9
du_'42''45'isCommutativeSemigroup_3154 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsCommutativeRing_3016 -> T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_3154 v0 v1 v2 v3 v4
  = let v5
          = coe
              du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe v4) in
    coe
      (coe
         du_'42''45'isCommutativeSemigroup_1522
         (coe du_isCommutativeSemiringWithoutOne_1854 (coe v5)))
-- Algebra.Structures.IsCommutativeRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_3156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_3156 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                       ~v8 v9
  = du_isCommutativeSemiringWithoutOne_3156 v4 v5 v6 v7 v9
du_isCommutativeSemiringWithoutOne_3156 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsCommutativeRing_3016 -> T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_3156 v0 v1 v2 v3 v4
  = coe
      du_isCommutativeSemiringWithoutOne_1854
      (coe
         du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4))
-- Algebra.Structures.IsBooleanRing
d_IsBooleanRing_3170 a0 a1 a2 a3 a4 a5 a6 a7 a8 = ()
data T_IsBooleanRing_3170
  = C_constructor_3314 T_IsCommutativeRing_3016 (AgdaAny -> AgdaAny)
-- Algebra.Structures.IsBooleanRing.isCommutativeRing
d_isCommutativeRing_3186 ::
  T_IsBooleanRing_3170 -> T_IsCommutativeRing_3016
d_isCommutativeRing_3186 v0
  = case coe v0 of
      C_constructor_3314 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanRing.*-idem
d_'42''45'idem_3188 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_'42''45'idem_3188 v0
  = case coe v0 of
      C_constructor_3314 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsBooleanRing._._//_
d__'47''47'__3192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny
d__'47''47'__3192 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 ~v7 ~v8 ~v9
  = du__'47''47'__3192 v4 v6
du__'47''47'__3192 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'47''47'__3192 v0 v1 = coe du__'47''47'__1138 (coe v0) (coe v1)
-- Algebra.Structures.IsBooleanRing._.*-assoc
d_'42''45'assoc_3194 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'assoc_3194 v0
  = coe
      d_'42''45'assoc_2894
      (coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0)))
-- Algebra.Structures.IsBooleanRing._.*-comm
d_'42''45'comm_3196 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'comm_3196 v0
  = coe d_'42''45'comm_3034 (coe d_isCommutativeRing_3186 (coe v0))
-- Algebra.Structures.IsBooleanRing._.*-cong
d_'42''45'cong_3198 ::
  T_IsBooleanRing_3170 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'42''45'cong_3198 v0
  = coe
      d_'42''45'cong_2892
      (coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0)))
-- Algebra.Structures.IsBooleanRing._.∙-congʳ
d_'8729''45'cong'691'_3200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3200 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'691'_3200 v4 v5 v6 v7 v9
du_'8729''45'cong'691'_3200 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3200 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (let v7 = coe du_isRingWithoutOne_2900 (coe v6) in
          coe
            (let v8
                   = coe
                       du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v7) in
             coe
               (let v9 = coe du_'42''45'isMagma_1326 (coe v8) in
                coe
                  (let v10 = coe du_setoid_204 (coe v9) in
                   coe
                     (let v11 = d_'8729''45'cong_190 (coe v9) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                           (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v10))))))))))
-- Algebra.Structures.IsBooleanRing._.∙-congˡ
d_'8729''45'cong'737'_3202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3202 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'8729''45'cong'737'_3202 v4 v5 v6 v7 v9
du_'8729''45'cong'737'_3202 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3202 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (let v7 = coe du_isRingWithoutOne_2900 (coe v6) in
          coe
            (let v8
                   = coe
                       du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                       (coe v7) in
             coe
               (let v9 = coe du_'42''45'isMagma_1326 (coe v8) in
                coe
                  (let v10 = coe du_setoid_204 (coe v9) in
                   coe
                     (let v11 = d_'8729''45'cong_190 (coe v9) in
                      coe
                        (coe
                           MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                           (coe v11)
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                              (coe
                                 MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                 (coe v10))))))))))
-- Algebra.Structures.IsBooleanRing._.*-identity
d_'42''45'identity_3204 ::
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'42''45'identity_3204 v0
  = coe
      d_'42''45'identity_2896
      (coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0)))
-- Algebra.Structures.IsBooleanRing._.identityʳ
d_identity'691'_3206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_identity'691'_3206 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'691'_3206 v4 v5 v6 v7 v9
du_identity'691'_3206 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_identity'691'_3206 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_identity'691'_756
            (coe
               du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v6))))
-- Algebra.Structures.IsBooleanRing._.identityˡ
d_identity'737'_3208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_identity'737'_3208 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_identity'737'_3208 v4 v5 v6 v7 v9
du_identity'737'_3208 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_identity'737'_3208 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_identity'737'_754
            (coe
               du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
               (coe v6))))
-- Algebra.Structures.IsBooleanRing._.isCommutativeMagma
d_isCommutativeMagma_3210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_3210 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeMagma_3210 v4 v5 v6 v7 v9
du_isCommutativeMagma_3210 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_3210 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6
             = coe
                 du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v5) in
       coe
         (let v7 = coe du_isCommutativeSemiringWithoutOne_1854 (coe v6) in
          coe
            (coe
               du_isCommutativeMagma_608
               (coe du_'42''45'isCommutativeSemigroup_1522 (coe v7)))))
-- Algebra.Structures.IsBooleanRing._.*-isCommutativeMonoid
d_'42''45'isCommutativeMonoid_3212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMonoid_766
d_'42''45'isCommutativeMonoid_3212 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8
                                   v9
  = du_'42''45'isCommutativeMonoid_3212 v4 v5 v6 v7 v9
du_'42''45'isCommutativeMonoid_3212 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMonoid_766
du_'42''45'isCommutativeMonoid_3212 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (coe
         du_'42''45'isCommutativeMonoid_1862
         (coe
            du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsBooleanRing._.*-isCommutativeSemigroup
d_'42''45'isCommutativeSemigroup_3214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeSemigroup_570
d_'42''45'isCommutativeSemigroup_3214 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                      ~v8 v9
  = du_'42''45'isCommutativeSemigroup_3214 v4 v5 v6 v7 v9
du_'42''45'isCommutativeSemigroup_3214 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeSemigroup_570
du_'42''45'isCommutativeSemigroup_3214 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6
             = coe
                 du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v5) in
       coe
         (coe
            du_'42''45'isCommutativeSemigroup_1522
            (coe du_isCommutativeSemiringWithoutOne_1854 (coe v6))))
-- Algebra.Structures.IsBooleanRing._.*-isMagma
d_'42''45'isMagma_3216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsMagma_180
d_'42''45'isMagma_3216 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMagma_3216 v4 v5 v6 v7 v9
du_'42''45'isMagma_3216 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsMagma_180
du_'42''45'isMagma_3216 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (let v7 = coe du_isRingWithoutOne_2900 (coe v6) in
          coe
            (coe
               du_'42''45'isMagma_1326
               (coe
                  du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe v7)))))
-- Algebra.Structures.IsBooleanRing._.*-isMonoid
d_'42''45'isMonoid_3218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsMonoid_714
d_'42''45'isMonoid_3218 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isMonoid_3218 v4 v5 v6 v7 v9
du_'42''45'isMonoid_3218 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsMonoid_714
du_'42''45'isMonoid_3218 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (coe
         du_'42''45'isMonoid_2988 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_isRing_3032 (coe v5)))
-- Algebra.Structures.IsBooleanRing._.*-isSemigroup
d_'42''45'isSemigroup_3220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemigroup_490
d_'42''45'isSemigroup_3220 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_'42''45'isSemigroup_3220 v4 v5 v6 v7 v9
du_'42''45'isSemigroup_3220 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemigroup_490
du_'42''45'isSemigroup_3220 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (let v7 = coe du_isRingWithoutOne_2900 (coe v6) in
          coe
            (coe
               du_'42''45'isSemigroup_1328
               (coe
                  du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe v7)))))
-- Algebra.Structures.IsBooleanRing._.assoc
d_assoc_3222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_3222 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_assoc_3222 v9
du_assoc_3222 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_3222 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_assoc_500
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))))
-- Algebra.Structures.IsBooleanRing._.comm
d_comm_3224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_3224 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_comm_3224 v9
du_comm_3224 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_3224 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe (coe d_comm_1188 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))
-- Algebra.Structures.IsBooleanRing._.∙-cong
d_'8729''45'cong_3226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3226 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong_3226 v9
du_'8729''45'cong_3226 ::
  T_IsBooleanRing_3170 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong_3226 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_'8729''45'cong_190
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_1090
                     (coe
                        d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))))))
-- Algebra.Structures.IsBooleanRing._.∙-congʳ
d_'8729''45'cong'691'_3228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3228 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'691'_3228 v9
du_'8729''45'cong'691'_3228 ::
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3228 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe
                  (let v6 = d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7 = d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = d_isMagma_498 (coe v7) in
                         coe
                           (let v9 = coe du_setoid_204 (coe v8) in
                            coe
                              (let v10 = d_'8729''45'cong_190 (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Algebra.Structures.IsBooleanRing._.∙-congˡ
d_'8729''45'cong'737'_3230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3230 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8729''45'cong'737'_3230 v9
du_'8729''45'cong'737'_3230 ::
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3230 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe
                  (let v6 = d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7 = d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = d_isMagma_498 (coe v7) in
                         coe
                           (let v9 = coe du_setoid_204 (coe v8) in
                            coe
                              (let v10 = d_'8729''45'cong_190 (coe v8) in
                               coe
                                 (coe
                                    MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                                    (coe v10)
                                    (coe
                                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                          (coe v9)))))))))))))
-- Algebra.Structures.IsBooleanRing._.identity
d_identity_3232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3232 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity_3232 v9
du_identity_3232 ::
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_identity_3232 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_identity_726
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))))
-- Algebra.Structures.IsBooleanRing._.identityʳ
d_identity'691'_3234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_identity'691'_3234 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'691'_3234 v9
du_identity'691'_3234 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_identity'691'_3234 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe (coe du_identity'691'_756 (coe d_isMonoid_1090 (coe v5)))))))
-- Algebra.Structures.IsBooleanRing._.identityˡ
d_identity'737'_3236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_identity'737'_3236 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_identity'737'_3236 v9
du_identity'737'_3236 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_identity'737'_3236 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe (coe du_identity'737'_754 (coe d_isMonoid_1090 (coe v5)))))))
-- Algebra.Structures.IsBooleanRing._.+-isAbelianGroup
d_'43''45'isAbelianGroup_3238 ::
  T_IsBooleanRing_3170 -> T_IsAbelianGroup_1174
d_'43''45'isAbelianGroup_3238 v0
  = coe
      d_'43''45'isAbelianGroup_2890
      (coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0)))
-- Algebra.Structures.IsBooleanRing._.isCommutativeMagma
d_isCommutativeMagma_3240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMagma_216
d_isCommutativeMagma_3240 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMagma_3240 v9
du_isCommutativeMagma_3240 ::
  T_IsBooleanRing_3170 -> T_IsCommutativeMagma_216
du_isCommutativeMagma_3240 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = coe du_isCommutativeMonoid_1246 (coe v4) in
                coe
                  (coe
                     du_isCommutativeMagma_608
                     (coe du_isCommutativeSemigroup_816 (coe v5)))))))
-- Algebra.Structures.IsBooleanRing._.isCommutativeMonoid
d_isCommutativeMonoid_3242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeMonoid_766
d_isCommutativeMonoid_3242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isCommutativeMonoid_3242 v9
du_isCommutativeMonoid_3242 ::
  T_IsBooleanRing_3170 -> T_IsCommutativeMonoid_766
du_isCommutativeMonoid_3242 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (coe
               du_isCommutativeMonoid_1246
               (coe d_'43''45'isAbelianGroup_2514 (coe v3)))))
-- Algebra.Structures.IsBooleanRing._.isCommutativeSemigroup
d_isCommutativeSemigroup_3244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeSemigroup_570
d_isCommutativeSemigroup_3244 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                              v9
  = du_isCommutativeSemigroup_3244 v9
du_isCommutativeSemigroup_3244 ::
  T_IsBooleanRing_3170 -> T_IsCommutativeSemigroup_570
du_isCommutativeSemigroup_3244 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (coe
                  du_isCommutativeSemigroup_816
                  (coe du_isCommutativeMonoid_1246 (coe v4))))))
-- Algebra.Structures.IsBooleanRing._.isGroup
d_isGroup_3246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsGroup_1076
d_isGroup_3246 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isGroup_3246 v9
du_isGroup_3246 :: T_IsBooleanRing_3170 -> T_IsGroup_1076
du_isGroup_3246 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))
-- Algebra.Structures.IsBooleanRing._.isInvertibleMagma
d_isInvertibleMagma_3248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsInvertibleMagma_960
d_isInvertibleMagma_3248 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isInvertibleMagma_3248 v9
du_isInvertibleMagma_3248 ::
  T_IsBooleanRing_3170 -> T_IsInvertibleMagma_960
du_isInvertibleMagma_3248 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (coe du_isInvertibleMagma_1162 (coe d_isGroup_1186 (coe v4))))))
-- Algebra.Structures.IsBooleanRing._.isInvertibleUnitalMagma
d_isInvertibleUnitalMagma_3250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsInvertibleUnitalMagma_1014
d_isInvertibleUnitalMagma_3250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8
                               v9
  = du_isInvertibleUnitalMagma_3250 v9
du_isInvertibleUnitalMagma_3250 ::
  T_IsBooleanRing_3170 -> T_IsInvertibleUnitalMagma_1014
du_isInvertibleUnitalMagma_3250 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (coe
                  du_isInvertibleUnitalMagma_1164 (coe d_isGroup_1186 (coe v4))))))
-- Algebra.Structures.IsBooleanRing._.isMagma
d_isMagma_3252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsMagma_180
d_isMagma_3252 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMagma_3252 v9
du_isMagma_3252 :: T_IsBooleanRing_3170 -> T_IsMagma_180
du_isMagma_3252 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_isMagma_498
            (coe
               d_isSemigroup_724
               (coe
                  d_isMonoid_1090
                  (coe
                     d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))))
-- Algebra.Structures.IsBooleanRing._.isMonoid
d_isMonoid_3254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsMonoid_714
d_isMonoid_3254 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isMonoid_3254 v9
du_isMonoid_3254 :: T_IsBooleanRing_3170 -> T_IsMonoid_714
du_isMonoid_3254 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_isMonoid_1090
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))
-- Algebra.Structures.IsBooleanRing._.isSemigroup
d_isSemigroup_3256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemigroup_490
d_isSemigroup_3256 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isSemigroup_3256 v9
du_isSemigroup_3256 :: T_IsBooleanRing_3170 -> T_IsSemigroup_490
du_isSemigroup_3256 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_isSemigroup_724
            (coe
               d_isMonoid_1090
               (coe
                  d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))))
-- Algebra.Structures.IsBooleanRing._.isUnitalMagma
d_isUnitalMagma_3258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsUnitalMagma_668
d_isUnitalMagma_3258 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isUnitalMagma_3258 v9
du_isUnitalMagma_3258 ::
  T_IsBooleanRing_3170 -> T_IsUnitalMagma_668
du_isUnitalMagma_3258 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe (coe du_isUnitalMagma_758 (coe d_isMonoid_1090 (coe v5)))))))
-- Algebra.Structures.IsBooleanRing._.⁻¹-cong
d_'8315''185''45'cong_3260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8315''185''45'cong_3260 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_'8315''185''45'cong_3260 v9
du_'8315''185''45'cong_3260 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8315''185''45'cong_3260 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_'8315''185''45'cong_1094
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))
-- Algebra.Structures.IsBooleanRing._.inverse
d_inverse_3262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_inverse_3262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse_3262 v9
du_inverse_3262 ::
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_inverse_3262 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_inverse_1092
            (coe d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))
-- Algebra.Structures.IsBooleanRing._.inverseʳ
d_inverse'691'_3264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_inverse'691'_3264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'691'_3264 v9
du_inverse'691'_3264 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_inverse'691'_3264 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe (coe du_inverse'691'_1148 (coe d_isGroup_1186 (coe v4))))))
-- Algebra.Structures.IsBooleanRing._.inverseˡ
d_inverse'737'_3266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_inverse'737'_3266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_inverse'737'_3266 v9
du_inverse'737'_3266 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_inverse'737'_3266 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe (coe du_inverse'737'_1146 (coe d_isGroup_1186 (coe v4))))))
-- Algebra.Structures.IsBooleanRing._.distrib
d_distrib_3268 ::
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_distrib_3268 v0
  = coe
      d_distrib_2898
      (coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0)))
-- Algebra.Structures.IsBooleanRing._.distribʳ
d_distrib'691'_3270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'691'_3270 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'691'_3270 v9
du_distrib'691'_3270 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'691'_3270 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe du_distrib'691'_2590 (coe du_isRingWithoutOne_2900 (coe v2))))
-- Algebra.Structures.IsBooleanRing._.distribˡ
d_distrib'737'_3272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib'737'_3272 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_distrib'737'_3272 v9
du_distrib'737'_3272 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib'737'_3272 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe du_distrib'737'_2588 (coe du_isRingWithoutOne_2900 (coe v2))))
-- Algebra.Structures.IsBooleanRing._.isCommutativeSemiring
d_isCommutativeSemiring_3274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeSemiring_1752
d_isCommutativeSemiring_3274 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isCommutativeSemiring_3274 v4 v5 v6 v7 v9
du_isCommutativeSemiring_3274 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsCommutativeSemiring_1752
du_isCommutativeSemiring_3274 v0 v1 v2 v3 v4
  = coe
      du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe d_isCommutativeRing_3186 (coe v4))
-- Algebra.Structures.IsBooleanRing._.isCommutativeSemiringWithoutOne
d_isCommutativeSemiringWithoutOne_3276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> T_IsCommutativeSemiringWithoutOne_1440
d_isCommutativeSemiringWithoutOne_3276 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
                                       ~v8 v9
  = du_isCommutativeSemiringWithoutOne_3276 v4 v5 v6 v7 v9
du_isCommutativeSemiringWithoutOne_3276 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> T_IsCommutativeSemiringWithoutOne_1440
du_isCommutativeSemiringWithoutOne_3276 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (coe
         du_isCommutativeSemiringWithoutOne_1854
         (coe
            du_isCommutativeSemiring_3146 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe v5)))
-- Algebra.Structures.IsBooleanRing._.isEquivalence
d_isEquivalence_3278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3278 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isEquivalence_3278 v9
du_isEquivalence_3278 ::
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_3278 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            d_isEquivalence_188
            (coe
               d_isMagma_498
               (coe
                  d_isSemigroup_724
                  (coe
                     d_isMonoid_1090
                     (coe
                        d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2))))))))
-- Algebra.Structures.IsBooleanRing._.isNearSemiring
d_isNearSemiring_3280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsNearSemiring_1262
d_isNearSemiring_3280 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isNearSemiring_3280 v4 v5 v6 v7 v9
du_isNearSemiring_3280 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsNearSemiring_1262
du_isNearSemiring_3280 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_isNearSemiring_2598 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe du_isRingWithoutOne_2900 (coe v6))))
-- Algebra.Structures.IsBooleanRing._.isPartialEquivalence
d_isPartialEquivalence_3282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3282 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isPartialEquivalence_3282 v9
du_isPartialEquivalence_3282 ::
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3282 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe
                  (let v6 = d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7 = d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = d_isMagma_498 (coe v7) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                              (coe d_isEquivalence_188 (coe v8))))))))))
-- Algebra.Structures.IsBooleanRing._.isRing
d_isRing_3284 :: T_IsBooleanRing_3170 -> T_IsRing_2868
d_isRing_3284 v0
  = coe d_isRing_3032 (coe d_isCommutativeRing_3186 (coe v0))
-- Algebra.Structures.IsBooleanRing._.isRingWithoutOne
d_isRingWithoutOne_3286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsRingWithoutOne_2496
d_isRingWithoutOne_3286 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_isRingWithoutOne_3286 v9
du_isRingWithoutOne_3286 ::
  T_IsBooleanRing_3170 -> T_IsRingWithoutOne_2496
du_isRingWithoutOne_3286 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe (coe du_isRingWithoutOne_2900 (coe d_isRing_3032 (coe v1)))
-- Algebra.Structures.IsBooleanRing._.isSemiring
d_isSemiring_3288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemiring_1642
d_isSemiring_3288 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiring_3288 v4 v5 v6 v7 v9
du_isSemiring_3288 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemiring_1642
du_isSemiring_3288 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (coe
         du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe d_isRing_3032 (coe v5)))
-- Algebra.Structures.IsBooleanRing._.isSemiringWithoutAnnihilatingZero
d_isSemiringWithoutAnnihilatingZero_3290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> T_IsSemiringWithoutAnnihilatingZero_1538
d_isSemiringWithoutAnnihilatingZero_3290 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
                                         ~v6 ~v7 ~v8 v9
  = du_isSemiringWithoutAnnihilatingZero_3290 v9
du_isSemiringWithoutAnnihilatingZero_3290 ::
  T_IsBooleanRing_3170 -> T_IsSemiringWithoutAnnihilatingZero_1538
du_isSemiringWithoutAnnihilatingZero_3290 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (coe
         du_isSemiringWithoutAnnihilatingZero_2996
         (coe d_isRing_3032 (coe v1)))
-- Algebra.Structures.IsBooleanRing._.isSemiringWithoutOne
d_isSemiringWithoutOne_3292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemiringWithoutOne_1344
d_isSemiringWithoutOne_3292 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_isSemiringWithoutOne_3292 v4 v5 v6 v7 v9
du_isSemiringWithoutOne_3292 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> T_IsSemiringWithoutOne_1344
du_isSemiringWithoutOne_3292 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_isSemiringWithoutOne_1732
            (coe
               du_isSemiring_2998 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))))
-- Algebra.Structures.IsBooleanRing._.refl
d_refl_3294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_refl_3294 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_refl_3294 v9
du_refl_3294 :: T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_refl_3294 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               d_isEquivalence_188
               (coe
                  d_isMagma_498
                  (coe
                     d_isSemigroup_724
                     (coe
                        d_isMonoid_1090
                        (coe
                           d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))))))
-- Algebra.Structures.IsBooleanRing._.reflexive
d_reflexive_3296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3296 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_reflexive_3296 v9
du_reflexive_3296 ::
  T_IsBooleanRing_3170 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3296 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe
                  (let v6 = d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7 = d_isSemigroup_724 (coe v6) in
                      coe
                        (let v8 = d_isMagma_498 (coe v7) in
                         coe
                           (\ v9 v10 v11 ->
                              coe
                                MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                                (coe d_isEquivalence_188 (coe v8)) v9))))))))
-- Algebra.Structures.IsBooleanRing._.setoid
d_setoid_3298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3298 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_setoid_3298 v9
du_setoid_3298 ::
  T_IsBooleanRing_3170 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3298 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (let v3 = coe du_isRingWithoutOne_2900 (coe v2) in
          coe
            (let v4 = d_'43''45'isAbelianGroup_2514 (coe v3) in
             coe
               (let v5 = d_isGroup_1186 (coe v4) in
                coe
                  (let v6 = d_isMonoid_1090 (coe v5) in
                   coe
                     (let v7 = d_isSemigroup_724 (coe v6) in
                      coe (coe du_setoid_204 (coe d_isMagma_498 (coe v7)))))))))
-- Algebra.Structures.IsBooleanRing._.sym
d_sym_3300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3300 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_sym_3300 v9
du_sym_3300 ::
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_sym_3300 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               d_isEquivalence_188
               (coe
                  d_isMagma_498
                  (coe
                     d_isSemigroup_724
                     (coe
                        d_isMonoid_1090
                        (coe
                           d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))))))
-- Algebra.Structures.IsBooleanRing._.trans
d_trans_3302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
  = du_trans_3302 v9
du_trans_3302 ::
  T_IsBooleanRing_3170 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_3302 v0
  = let v1 = d_isCommutativeRing_3186 (coe v0) in
    coe
      (let v2 = d_isRing_3032 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               d_isEquivalence_188
               (coe
                  d_isMagma_498
                  (coe
                     d_isSemigroup_724
                     (coe
                        d_isMonoid_1090
                        (coe
                           d_isGroup_1186 (coe d_'43''45'isAbelianGroup_2890 (coe v2)))))))))
-- Algebra.Structures.IsBooleanRing._.uniqueʳ-⁻¹
d_unique'691''45''8315''185'_3304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'691''45''8315''185'_3304 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'691''45''8315''185'_3304 v4 v6 v7 v9
du_unique'691''45''8315''185'_3304 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'691''45''8315''185'_3304 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_3186 (coe v3) in
    coe
      (let v5 = d_isRing_3032 (coe v4) in
       coe
         (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
          coe
            (let v7 = d_'43''45'isAbelianGroup_2514 (coe v6) in
             coe
               (coe
                  du_unique'691''45''8315''185'_1160 (coe v0) (coe v2) (coe v1)
                  (coe d_isGroup_1186 (coe v7))))))
-- Algebra.Structures.IsBooleanRing._.uniqueˡ-⁻¹
d_unique'737''45''8315''185'_3306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_unique'737''45''8315''185'_3306 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 ~v8
                                  v9
  = du_unique'737''45''8315''185'_3306 v4 v6 v7 v9
du_unique'737''45''8315''185'_3306 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_unique'737''45''8315''185'_3306 v0 v1 v2 v3
  = let v4 = d_isCommutativeRing_3186 (coe v3) in
    coe
      (let v5 = d_isRing_3032 (coe v4) in
       coe
         (let v6 = coe du_isRingWithoutOne_2900 (coe v5) in
          coe
            (let v7 = d_'43''45'isAbelianGroup_2514 (coe v6) in
             coe
               (coe
                  du_unique'737''45''8315''185'_1154 (coe v0) (coe v2) (coe v1)
                  (coe d_isGroup_1186 (coe v7))))))
-- Algebra.Structures.IsBooleanRing._.zero
d_zero_3308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_zero_3308 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero_3308 v4 v5 v6 v7 v9
du_zero_3308 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsBooleanRing_3170 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_zero_3308 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_zero_2596 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe du_isRingWithoutOne_2900 (coe v6))))
-- Algebra.Structures.IsBooleanRing._.zeroʳ
d_zero'691'_3310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_zero'691'_3310 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'691'_3310 v4 v5 v6 v7 v9
du_zero'691'_3310 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_zero'691'_3310 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_zero'691'_2594 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe du_isRingWithoutOne_2900 (coe v6))))
-- Algebra.Structures.IsBooleanRing._.zeroˡ
d_zero'737'_3312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
d_zero'737'_3312 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 ~v8 v9
  = du_zero'737'_3312 v4 v5 v6 v7 v9
du_zero'737'_3312 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsBooleanRing_3170 -> AgdaAny -> AgdaAny
du_zero'737'_3312 v0 v1 v2 v3 v4
  = let v5 = d_isCommutativeRing_3186 (coe v4) in
    coe
      (let v6 = d_isRing_3032 (coe v5) in
       coe
         (coe
            du_zero'737'_2592 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe du_isRingWithoutOne_2900 (coe v6))))
-- Algebra.Structures.IsQuasigroup
d_IsQuasigroup_3322 a0 a1 a2 a3 a4 a5 a6 = ()
data T_IsQuasigroup_3322
  = C_constructor_3396 T_IsMagma_180
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny ->
                        AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsQuasigroup.isMagma
d_isMagma_3340 :: T_IsQuasigroup_3322 -> T_IsMagma_180
d_isMagma_3340 v0
  = case coe v0 of
      C_constructor_3396 v1 v2 v3 v4 v5 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.\\-cong
d_'92''92''45'cong_3342 ::
  T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3342 v0
  = case coe v0 of
      C_constructor_3396 v1 v2 v3 v4 v5 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.//-cong
d_'47''47''45'cong_3344 ::
  T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3344 v0
  = case coe v0 of
      C_constructor_3396 v1 v2 v3 v4 v5 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.leftDivides
d_leftDivides_3346 ::
  T_IsQuasigroup_3322 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3346 v0
  = case coe v0 of
      C_constructor_3396 v1 v2 v3 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup.rightDivides
d_rightDivides_3348 ::
  T_IsQuasigroup_3322 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3348 v0
  = case coe v0 of
      C_constructor_3396 v1 v2 v3 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsQuasigroup._.isEquivalence
d_isEquivalence_3352 ::
  T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3352 v0
  = coe d_isEquivalence_188 (coe d_isMagma_3340 (coe v0))
-- Algebra.Structures.IsQuasigroup._.isPartialEquivalence
d_isPartialEquivalence_3354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_isPartialEquivalence_3354 v7
du_isPartialEquivalence_3354 ::
  T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3354 v0
  = let v1 = d_isMagma_3340 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
         (coe d_isEquivalence_188 (coe v1)))
-- Algebra.Structures.IsQuasigroup._.refl
d_refl_3356 :: T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny
d_refl_3356 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_188 (coe d_isMagma_3340 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.reflexive
d_reflexive_3358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3358 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_reflexive_3358 v7
du_reflexive_3358 ::
  T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3358 v0
  = let v1 = d_isMagma_3340 (coe v0) in
    coe
      (\ v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
           (coe d_isEquivalence_188 (coe v1)) v2)
-- Algebra.Structures.IsQuasigroup._.setoid
d_setoid_3360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3360 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_setoid_3360 v7
du_setoid_3360 ::
  T_IsQuasigroup_3322 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3360 v0 = coe du_setoid_204 (coe d_isMagma_3340 (coe v0))
-- Algebra.Structures.IsQuasigroup._.sym
d_sym_3362 ::
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3362 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_188 (coe d_isMagma_3340 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.trans
d_trans_3364 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3364 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_188 (coe d_isMagma_3340 (coe v0)))
-- Algebra.Structures.IsQuasigroup._.∙-cong
d_'8729''45'cong_3366 ::
  T_IsQuasigroup_3322 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3366 v0
  = coe d_'8729''45'cong_190 (coe d_isMagma_3340 (coe v0))
-- Algebra.Structures.IsQuasigroup._.∙-congʳ
d_'8729''45'cong'691'_3368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3368 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'691'_3368 v7
du_'8729''45'cong'691'_3368 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3368 v0
  = let v1 = d_isMagma_3340 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsQuasigroup._.∙-congˡ
d_'8729''45'cong'737'_3370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3370 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8729''45'cong'737'_3370 v7
du_'8729''45'cong'737'_3370 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3370 v0
  = let v1 = d_isMagma_3340 (coe v0) in
    coe
      (let v2 = coe du_setoid_204 (coe v1) in
       coe
         (let v3 = d_'8729''45'cong_190 (coe v1) in
          coe
            (coe
               MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
               (coe v3)
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                     (coe v2))))))
-- Algebra.Structures.IsQuasigroup.\\-congˡ
d_'92''92''45'cong'737'_3372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3372 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'92''92''45'cong'737'_3372 v7 v8 v9 v10 v11
du_'92''92''45'cong'737'_3372 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3372 v0 v1 v2 v3 v4
  = coe
      d_'92''92''45'cong_3342 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (d_isEquivalence_188 (coe d_isMagma_3340 (coe v0))) v1)
      v4
-- Algebra.Structures.IsQuasigroup.\\-congʳ
d_'92''92''45'cong'691'_3376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3376 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'92''92''45'cong'691'_3376 v7 v8 v9 v10 v11
du_'92''92''45'cong'691'_3376 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3376 v0 v1 v2 v3 v4
  = coe
      d_'92''92''45'cong_3342 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (d_isEquivalence_188 (coe d_isMagma_3340 (coe v0))) v1)
-- Algebra.Structures.IsQuasigroup.//-congˡ
d_'47''47''45'cong'737'_3380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3380 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'47''47''45'cong'737'_3380 v7 v8 v9 v10 v11
du_'47''47''45'cong'737'_3380 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3380 v0 v1 v2 v3 v4
  = coe
      d_'47''47''45'cong_3344 v0 v1 v1 v2 v3
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (d_isEquivalence_188 (coe d_isMagma_3340 (coe v0))) v1)
      v4
-- Algebra.Structures.IsQuasigroup.//-congʳ
d_'47''47''45'cong'691'_3384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3384 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
                             v10 v11
  = du_'47''47''45'cong'691'_3384 v7 v8 v9 v10 v11
du_'47''47''45'cong'691'_3384 ::
  T_IsQuasigroup_3322 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3384 v0 v1 v2 v3 v4
  = coe
      d_'47''47''45'cong_3344 v0 v2 v3 v1 v1 v4
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (d_isEquivalence_188 (coe d_isMagma_3340 (coe v0))) v1)
-- Algebra.Structures.IsQuasigroup.leftDividesˡ
d_leftDivides'737'_3388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_leftDivides'737'_3388 v7
du_leftDivides'737'_3388 ::
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3388 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_leftDivides_3346 (coe v0))
-- Algebra.Structures.IsQuasigroup.leftDividesʳ
d_leftDivides'691'_3390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3390 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_leftDivides'691'_3390 v7
du_leftDivides'691'_3390 ::
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3390 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_leftDivides_3346 (coe v0))
-- Algebra.Structures.IsQuasigroup.rightDividesˡ
d_rightDivides'737'_3392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3392 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_rightDivides'737'_3392 v7
du_rightDivides'737'_3392 ::
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3392 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_rightDivides_3348 (coe v0))
-- Algebra.Structures.IsQuasigroup.rightDividesʳ
d_rightDivides'691'_3394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3394 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_rightDivides'691'_3394 v7
du_rightDivides'691'_3394 ::
  T_IsQuasigroup_3322 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3394 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_rightDivides_3348 (coe v0))
-- Algebra.Structures.IsLoop
d_IsLoop_3406 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsLoop_3406
  = C_constructor_3476 T_IsQuasigroup_3322
                       MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
-- Algebra.Structures.IsLoop.isQuasigroup
d_isQuasigroup_3420 :: T_IsLoop_3406 -> T_IsQuasigroup_3322
d_isQuasigroup_3420 v0
  = case coe v0 of
      C_constructor_3476 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLoop.identity
d_identity_3422 ::
  T_IsLoop_3406 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3422 v0
  = case coe v0 of
      C_constructor_3476 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLoop._.//-cong
d_'47''47''45'cong_3426 ::
  T_IsLoop_3406 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3426 v0
  = coe d_'47''47''45'cong_3344 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.//-congʳ
d_'47''47''45'cong'691'_3428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3428 v8
du_'47''47''45'cong'691'_3428 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3428 v0
  = coe
      du_'47''47''45'cong'691'_3384 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.//-congˡ
d_'47''47''45'cong'737'_3430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3430 v8
du_'47''47''45'cong'737'_3430 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3430 v0
  = coe
      du_'47''47''45'cong'737'_3380 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.\\-cong
d_'92''92''45'cong_3432 ::
  T_IsLoop_3406 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3432 v0
  = coe d_'92''92''45'cong_3342 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.\\-congʳ
d_'92''92''45'cong'691'_3434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3434 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3434 v8
du_'92''92''45'cong'691'_3434 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3434 v0
  = coe
      du_'92''92''45'cong'691'_3376 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.\\-congˡ
d_'92''92''45'cong'737'_3436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3436 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3436 v8
du_'92''92''45'cong'737'_3436 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3436 v0
  = coe
      du_'92''92''45'cong'737'_3372 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.isEquivalence
d_isEquivalence_3438 ::
  T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3438 v0
  = coe
      d_isEquivalence_188
      (coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0)))
-- Algebra.Structures.IsLoop._.isMagma
d_isMagma_3440 :: T_IsLoop_3406 -> T_IsMagma_180
d_isMagma_3440 v0
  = coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.isPartialEquivalence
d_isPartialEquivalence_3442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3442 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3442 v8
du_isPartialEquivalence_3442 ::
  T_IsLoop_3406 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3442 v0
  = let v1 = d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2 = d_isMagma_3340 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
            (coe d_isEquivalence_188 (coe v2))))
-- Algebra.Structures.IsLoop._.leftDivides
d_leftDivides_3444 ::
  T_IsLoop_3406 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3444 v0
  = coe d_leftDivides_3346 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.leftDividesʳ
d_leftDivides'691'_3446 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3446 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3446 v8
du_leftDivides'691'_3446 ::
  T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3446 v0
  = coe du_leftDivides'691'_3390 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.leftDividesˡ
d_leftDivides'737'_3448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3448 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3448 v8
du_leftDivides'737'_3448 ::
  T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3448 v0
  = coe du_leftDivides'737'_3388 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.refl
d_refl_3450 :: T_IsLoop_3406 -> AgdaAny -> AgdaAny
d_refl_3450 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0))))
-- Algebra.Structures.IsLoop._.reflexive
d_reflexive_3452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3452 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3452 v8
du_reflexive_3452 ::
  T_IsLoop_3406 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3452 v0
  = let v1 = d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2 = d_isMagma_3340 (coe v1) in
       coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
              (coe d_isEquivalence_188 (coe v2)) v3))
-- Algebra.Structures.IsLoop._.rightDivides
d_rightDivides_3454 ::
  T_IsLoop_3406 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3454 v0
  = coe d_rightDivides_3348 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.rightDividesʳ
d_rightDivides'691'_3456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3456 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3456 v8
du_rightDivides'691'_3456 ::
  T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3456 v0
  = coe du_rightDivides'691'_3394 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.rightDividesˡ
d_rightDivides'737'_3458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3458 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3458 v8
du_rightDivides'737'_3458 ::
  T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3458 v0
  = coe du_rightDivides'737'_3392 (coe d_isQuasigroup_3420 (coe v0))
-- Algebra.Structures.IsLoop._.setoid
d_setoid_3460 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3460 v8
du_setoid_3460 ::
  T_IsLoop_3406 -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3460 v0
  = let v1 = d_isQuasigroup_3420 (coe v0) in
    coe (coe du_setoid_204 (coe d_isMagma_3340 (coe v1)))
-- Algebra.Structures.IsLoop._.sym
d_sym_3462 ::
  T_IsLoop_3406 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3462 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0))))
-- Algebra.Structures.IsLoop._.trans
d_trans_3464 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3464 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0))))
-- Algebra.Structures.IsLoop._.∙-cong
d_'8729''45'cong_3466 ::
  T_IsLoop_3406 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3466 v0
  = coe
      d_'8729''45'cong_190
      (coe d_isMagma_3340 (coe d_isQuasigroup_3420 (coe v0)))
-- Algebra.Structures.IsLoop._.∙-congʳ
d_'8729''45'cong'691'_3468 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3468 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3468 v8
du_'8729''45'cong'691'_3468 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3468 v0
  = let v1 = d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2 = d_isMagma_3340 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsLoop._.∙-congˡ
d_'8729''45'cong'737'_3470 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3470 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3470 v8
du_'8729''45'cong'737'_3470 ::
  T_IsLoop_3406 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3470 v0
  = let v1 = d_isQuasigroup_3420 (coe v0) in
    coe
      (let v2 = d_isMagma_3340 (coe v1) in
       coe
         (let v3 = coe du_setoid_204 (coe v2) in
          coe
            (let v4 = d_'8729''45'cong_190 (coe v2) in
             coe
               (coe
                  MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                  (coe v4)
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                     (coe
                        MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                        (coe v3)))))))
-- Algebra.Structures.IsLoop.identityˡ
d_identity'737'_3472 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny
d_identity'737'_3472 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3472 v8
du_identity'737'_3472 :: T_IsLoop_3406 -> AgdaAny -> AgdaAny
du_identity'737'_3472 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_identity_3422 (coe v0))
-- Algebra.Structures.IsLoop.identityʳ
d_identity'691'_3474 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLoop_3406 -> AgdaAny -> AgdaAny
d_identity'691'_3474 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3474 v8
du_identity'691'_3474 :: T_IsLoop_3406 -> AgdaAny -> AgdaAny
du_identity'691'_3474 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_identity_3422 (coe v0))
-- Algebra.Structures.IsLeftBolLoop
d_IsLeftBolLoop_3486 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsLeftBolLoop_3486
  = C_constructor_3560 T_IsLoop_3406
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsLeftBolLoop.isLoop
d_isLoop_3500 :: T_IsLeftBolLoop_3486 -> T_IsLoop_3406
d_isLoop_3500 v0
  = case coe v0 of
      C_constructor_3560 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLeftBolLoop.leftBol
d_leftBol_3502 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leftBol_3502 v0
  = case coe v0 of
      C_constructor_3560 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsLeftBolLoop._.//-cong
d_'47''47''45'cong_3506 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3506 v0
  = coe
      d_'47''47''45'cong_3344
      (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.//-congʳ
d_'47''47''45'cong'691'_3508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3508 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3508 v8
du_'47''47''45'cong'691'_3508 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3508 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_3384 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.//-congˡ
d_'47''47''45'cong'737'_3510 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3510 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3510 v8
du_'47''47''45'cong'737'_3510 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3510 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_3380 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.\\-cong
d_'92''92''45'cong_3512 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3512 v0
  = coe
      d_'92''92''45'cong_3342
      (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_3514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3514 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3514 v8
du_'92''92''45'cong'691'_3514 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3514 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_3376 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_3516 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3516 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3516 v8
du_'92''92''45'cong'737'_3516 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3516 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_3372 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.identity
d_identity_3518 ::
  T_IsLeftBolLoop_3486 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3518 v0
  = coe d_identity_3422 (coe d_isLoop_3500 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.identityʳ
d_identity'691'_3520 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny
d_identity'691'_3520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3520 v8
du_identity'691'_3520 :: T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny
du_identity'691'_3520 v0
  = coe du_identity'691'_3474 (coe d_isLoop_3500 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.identityˡ
d_identity'737'_3522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny
d_identity'737'_3522 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3522 v8
du_identity'737'_3522 :: T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny
du_identity'737'_3522 v0
  = coe du_identity'737'_3472 (coe d_isLoop_3500 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.isEquivalence
d_isEquivalence_3524 ::
  T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3524 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0))))
-- Algebra.Structures.IsLeftBolLoop._.isMagma
d_isMagma_3526 :: T_IsLeftBolLoop_3486 -> T_IsMagma_180
d_isMagma_3526 v0
  = coe
      d_isMagma_3340
      (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.isPartialEquivalence
d_isPartialEquivalence_3528 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3528 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3528 v8
du_isPartialEquivalence_3528 ::
  T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3528 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsLeftBolLoop._.isQuasigroup
d_isQuasigroup_3530 :: T_IsLeftBolLoop_3486 -> T_IsQuasigroup_3322
d_isQuasigroup_3530 v0
  = coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0))
-- Algebra.Structures.IsLeftBolLoop._.leftDivides
d_leftDivides_3532 ::
  T_IsLeftBolLoop_3486 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3532 v0
  = coe
      d_leftDivides_3346
      (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.leftDividesʳ
d_leftDivides'691'_3534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3534 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3534 v8
du_leftDivides'691'_3534 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3534 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe du_leftDivides'691'_3390 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.leftDividesˡ
d_leftDivides'737'_3536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3536 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3536 v8
du_leftDivides'737'_3536 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3536 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe du_leftDivides'737'_3388 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.refl
d_refl_3538 :: T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny
d_refl_3538 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.reflexive
d_reflexive_3540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3540 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3540 v8
du_reflexive_3540 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3540 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsLeftBolLoop._.rightDivides
d_rightDivides_3542 ::
  T_IsLeftBolLoop_3486 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3542 v0
  = coe
      d_rightDivides_3348
      (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))
-- Algebra.Structures.IsLeftBolLoop._.rightDividesʳ
d_rightDivides'691'_3544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3544 v8
du_rightDivides'691'_3544 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3544 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe du_rightDivides'691'_3394 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.rightDividesˡ
d_rightDivides'737'_3546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3546 v8
du_rightDivides'737'_3546 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3546 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (coe du_rightDivides'737'_3392 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsLeftBolLoop._.setoid
d_setoid_3548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3548 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3548 v8
du_setoid_3548 ::
  T_IsLeftBolLoop_3486 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3548 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_3340 (coe v2))))
-- Algebra.Structures.IsLeftBolLoop._.sym
d_sym_3550 ::
  T_IsLeftBolLoop_3486 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3550 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.trans
d_trans_3552 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3552 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0)))))
-- Algebra.Structures.IsLeftBolLoop._.∙-cong
d_'8729''45'cong_3554 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3554 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3500 (coe v0))))
-- Algebra.Structures.IsLeftBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3556 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3556 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3556 v8
du_'8729''45'cong'691'_3556 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3556 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsLeftBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3558 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3558 v8
du_'8729''45'cong'737'_3558 ::
  T_IsLeftBolLoop_3486 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3558 v0
  = let v1 = d_isLoop_3500 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsRightBolLoop
d_IsRightBolLoop_3570 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsRightBolLoop_3570
  = C_constructor_3644 T_IsLoop_3406
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsRightBolLoop.isLoop
d_isLoop_3584 :: T_IsRightBolLoop_3570 -> T_IsLoop_3406
d_isLoop_3584 v0
  = case coe v0 of
      C_constructor_3644 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRightBolLoop.rightBol
d_rightBol_3586 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_rightBol_3586 v0
  = case coe v0 of
      C_constructor_3644 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsRightBolLoop._.//-cong
d_'47''47''45'cong_3590 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3590 v0
  = coe
      d_'47''47''45'cong_3344
      (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.//-congʳ
d_'47''47''45'cong'691'_3592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3592 v8
du_'47''47''45'cong'691'_3592 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3592 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_3384 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.//-congˡ
d_'47''47''45'cong'737'_3594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3594 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3594 v8
du_'47''47''45'cong'737'_3594 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3594 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_3380 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.\\-cong
d_'92''92''45'cong_3596 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3596 v0
  = coe
      d_'92''92''45'cong_3342
      (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_3598 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3598 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3598 v8
du_'92''92''45'cong'691'_3598 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3598 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_3376 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_3600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3600 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3600 v8
du_'92''92''45'cong'737'_3600 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3600 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_3372 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.identity
d_identity_3602 ::
  T_IsRightBolLoop_3570 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3602 v0
  = coe d_identity_3422 (coe d_isLoop_3584 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.identityʳ
d_identity'691'_3604 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny
d_identity'691'_3604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3604 v8
du_identity'691'_3604 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny
du_identity'691'_3604 v0
  = coe du_identity'691'_3474 (coe d_isLoop_3584 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.identityˡ
d_identity'737'_3606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny
d_identity'737'_3606 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3606 v8
du_identity'737'_3606 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny
du_identity'737'_3606 v0
  = coe du_identity'737'_3472 (coe d_isLoop_3584 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.isEquivalence
d_isEquivalence_3608 ::
  T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3608 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0))))
-- Algebra.Structures.IsRightBolLoop._.isMagma
d_isMagma_3610 :: T_IsRightBolLoop_3570 -> T_IsMagma_180
d_isMagma_3610 v0
  = coe
      d_isMagma_3340
      (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.isPartialEquivalence
d_isPartialEquivalence_3612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3612 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3612 v8
du_isPartialEquivalence_3612 ::
  T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3612 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsRightBolLoop._.isQuasigroup
d_isQuasigroup_3614 :: T_IsRightBolLoop_3570 -> T_IsQuasigroup_3322
d_isQuasigroup_3614 v0
  = coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0))
-- Algebra.Structures.IsRightBolLoop._.leftDivides
d_leftDivides_3616 ::
  T_IsRightBolLoop_3570 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3616 v0
  = coe
      d_leftDivides_3346
      (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.leftDividesʳ
d_leftDivides'691'_3618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3618 v8
du_leftDivides'691'_3618 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3618 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe du_leftDivides'691'_3390 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.leftDividesˡ
d_leftDivides'737'_3620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3620 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3620 v8
du_leftDivides'737'_3620 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3620 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe du_leftDivides'737'_3388 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.refl
d_refl_3622 :: T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny
d_refl_3622 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.reflexive
d_reflexive_3624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3624 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3624 v8
du_reflexive_3624 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3624 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsRightBolLoop._.rightDivides
d_rightDivides_3626 ::
  T_IsRightBolLoop_3570 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3626 v0
  = coe
      d_rightDivides_3348
      (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))
-- Algebra.Structures.IsRightBolLoop._.rightDividesʳ
d_rightDivides'691'_3628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3628 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3628 v8
du_rightDivides'691'_3628 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3628 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe du_rightDivides'691'_3394 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.rightDividesˡ
d_rightDivides'737'_3630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3630 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3630 v8
du_rightDivides'737'_3630 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3630 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (coe du_rightDivides'737'_3392 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsRightBolLoop._.setoid
d_setoid_3632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3632 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3632 v8
du_setoid_3632 ::
  T_IsRightBolLoop_3570 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3632 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_3340 (coe v2))))
-- Algebra.Structures.IsRightBolLoop._.sym
d_sym_3634 ::
  T_IsRightBolLoop_3570 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3634 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.trans
d_trans_3636 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3636 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0)))))
-- Algebra.Structures.IsRightBolLoop._.∙-cong
d_'8729''45'cong_3638 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3638 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3584 (coe v0))))
-- Algebra.Structures.IsRightBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3640 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3640 v8
du_'8729''45'cong'691'_3640 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3640 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsRightBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3642 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3642 v8
du_'8729''45'cong'737'_3642 ::
  T_IsRightBolLoop_3570 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3642 v0
  = let v1 = d_isLoop_3584 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsMoufangLoop
d_IsMoufangLoop_3654 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsMoufangLoop_3654
  = C_constructor_3736 T_IsLeftBolLoop_3486
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMoufangLoop.isLeftBolLoop
d_isLeftBolLoop_3670 ::
  T_IsMoufangLoop_3654 -> T_IsLeftBolLoop_3486
d_isLeftBolLoop_3670 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop.rightBol
d_rightBol_3672 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_rightBol_3672 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop.identical
d_identical_3674 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_identical_3674 v0
  = case coe v0 of
      C_constructor_3736 v1 v2 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMoufangLoop._.//-cong
d_'47''47''45'cong_3678 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3678 v0
  = coe
      d_'47''47''45'cong_3344
      (coe
         d_isQuasigroup_3420
         (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.//-congʳ
d_'47''47''45'cong'691'_3680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3680 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3680 v8
du_'47''47''45'cong'691'_3680 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3680 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe
            du_'47''47''45'cong'691'_3384 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.//-congˡ
d_'47''47''45'cong'737'_3682 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3682 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3682 v8
du_'47''47''45'cong'737'_3682 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3682 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe
            du_'47''47''45'cong'737'_3380 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.\\-cong
d_'92''92''45'cong_3684 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3684 v0
  = coe
      d_'92''92''45'cong_3342
      (coe
         d_isQuasigroup_3420
         (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.\\-congʳ
d_'92''92''45'cong'691'_3686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3686 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3686 v8
du_'92''92''45'cong'691'_3686 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3686 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe
            du_'92''92''45'cong'691'_3376 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.\\-congˡ
d_'92''92''45'cong'737'_3688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3688 v8
du_'92''92''45'cong'737'_3688 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3688 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe
            du_'92''92''45'cong'737'_3372 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.identity
d_identity_3690 ::
  T_IsMoufangLoop_3654 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3690 v0
  = coe
      d_identity_3422
      (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0)))
-- Algebra.Structures.IsMoufangLoop._.identityʳ
d_identity'691'_3692 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny
d_identity'691'_3692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3692 v8
du_identity'691'_3692 :: T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny
du_identity'691'_3692 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe (coe du_identity'691'_3474 (coe d_isLoop_3500 (coe v1)))
-- Algebra.Structures.IsMoufangLoop._.identityˡ
d_identity'737'_3694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny
d_identity'737'_3694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3694 v8
du_identity'737'_3694 :: T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny
du_identity'737'_3694 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe (coe du_identity'737'_3472 (coe d_isLoop_3500 (coe v1)))
-- Algebra.Structures.IsMoufangLoop._.isEquivalence
d_isEquivalence_3696 ::
  T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3696 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_3340
         (coe
            d_isQuasigroup_3420
            (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0)))))
-- Algebra.Structures.IsMoufangLoop._.isLoop
d_isLoop_3698 :: T_IsMoufangLoop_3654 -> T_IsLoop_3406
d_isLoop_3698 v0
  = coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))
-- Algebra.Structures.IsMoufangLoop._.isMagma
d_isMagma_3700 :: T_IsMoufangLoop_3654 -> T_IsMagma_180
d_isMagma_3700 v0
  = coe
      d_isMagma_3340
      (coe
         d_isQuasigroup_3420
         (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.isPartialEquivalence
d_isPartialEquivalence_3702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3702 v8
du_isPartialEquivalence_3702 ::
  T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3702 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4 = d_isMagma_3340 (coe v3) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
                  (coe d_isEquivalence_188 (coe v4))))))
-- Algebra.Structures.IsMoufangLoop._.isQuasigroup
d_isQuasigroup_3704 :: T_IsMoufangLoop_3654 -> T_IsQuasigroup_3322
d_isQuasigroup_3704 v0
  = coe
      d_isQuasigroup_3420
      (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0)))
-- Algebra.Structures.IsMoufangLoop._.leftBol
d_leftBol_3706 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_leftBol_3706 v0
  = coe d_leftBol_3502 (coe d_isLeftBolLoop_3670 (coe v0))
-- Algebra.Structures.IsMoufangLoop._.leftDivides
d_leftDivides_3708 ::
  T_IsMoufangLoop_3654 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3708 v0
  = coe
      d_leftDivides_3346
      (coe
         d_isQuasigroup_3420
         (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.leftDividesʳ
d_leftDivides'691'_3710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3710 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3710 v8
du_leftDivides'691'_3710 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3710 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe du_leftDivides'691'_3390 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.leftDividesˡ
d_leftDivides'737'_3712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3712 v8
du_leftDivides'737'_3712 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3712 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe du_leftDivides'737'_3388 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.refl
d_refl_3714 :: T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny
d_refl_3714 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe
               d_isQuasigroup_3420
               (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.reflexive
d_reflexive_3716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3716 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3716 v8
du_reflexive_3716 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3716 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4 = d_isMagma_3340 (coe v3) in
             coe
               (\ v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                    (coe d_isEquivalence_188 (coe v4)) v5))))
-- Algebra.Structures.IsMoufangLoop._.rightDivides
d_rightDivides_3718 ::
  T_IsMoufangLoop_3654 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3718 v0
  = coe
      d_rightDivides_3348
      (coe
         d_isQuasigroup_3420
         (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))
-- Algebra.Structures.IsMoufangLoop._.rightDividesʳ
d_rightDivides'691'_3720 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3720 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3720 v8
du_rightDivides'691'_3720 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3720 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe du_rightDivides'691'_3394 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.rightDividesˡ
d_rightDivides'737'_3722 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3722 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3722 v8
du_rightDivides'737'_3722 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3722 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (coe du_rightDivides'737'_3392 (coe d_isQuasigroup_3420 (coe v2))))
-- Algebra.Structures.IsMoufangLoop._.setoid
d_setoid_3724 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3724 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3724 v8
du_setoid_3724 ::
  T_IsMoufangLoop_3654 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3724 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_3420 (coe v2) in
          coe (coe du_setoid_204 (coe d_isMagma_3340 (coe v3)))))
-- Algebra.Structures.IsMoufangLoop._.sym
d_sym_3726 ::
  T_IsMoufangLoop_3654 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3726 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe
               d_isQuasigroup_3420
               (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.trans
d_trans_3728 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe
               d_isQuasigroup_3420
               (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0))))))
-- Algebra.Structures.IsMoufangLoop._.∙-cong
d_'8729''45'cong_3730 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3730 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_3340
         (coe
            d_isQuasigroup_3420
            (coe d_isLoop_3500 (coe d_isLeftBolLoop_3670 (coe v0)))))
-- Algebra.Structures.IsMoufangLoop._.∙-congʳ
d_'8729''45'cong'691'_3732 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3732 v8
du_'8729''45'cong'691'_3732 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3732 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4 = d_isMagma_3340 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsMoufangLoop._.∙-congˡ
d_'8729''45'cong'737'_3734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3734 v8
du_'8729''45'cong'737'_3734 ::
  T_IsMoufangLoop_3654 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3734 v0
  = let v1 = d_isLeftBolLoop_3670 (coe v0) in
    coe
      (let v2 = d_isLoop_3500 (coe v1) in
       coe
         (let v3 = d_isQuasigroup_3420 (coe v2) in
          coe
            (let v4 = d_isMagma_3340 (coe v3) in
             coe
               (let v5 = coe du_setoid_204 (coe v4) in
                coe
                  (let v6 = d_'8729''45'cong_190 (coe v4) in
                   coe
                     (coe
                        MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                        (coe v6)
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                           (coe
                              MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                              (coe v5)))))))))
-- Algebra.Structures.IsMiddleBolLoop
d_IsMiddleBolLoop_3746 a0 a1 a2 a3 a4 a5 a6 a7 = ()
data T_IsMiddleBolLoop_3746
  = C_constructor_3820 T_IsLoop_3406
                       (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny)
-- Algebra.Structures.IsMiddleBolLoop.isLoop
d_isLoop_3760 :: T_IsMiddleBolLoop_3746 -> T_IsLoop_3406
d_isLoop_3760 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMiddleBolLoop.middleBol
d_middleBol_3762 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_middleBol_3762 v0
  = case coe v0 of
      C_constructor_3820 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Structures.IsMiddleBolLoop._.//-cong
d_'47''47''45'cong_3766 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong_3766 v0
  = coe
      d_'47''47''45'cong_3344
      (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.//-congʳ
d_'47''47''45'cong'691'_3768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'691'_3768 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'691'_3768 v8
du_'47''47''45'cong'691'_3768 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'691'_3768 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'691'_3384 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.//-congˡ
d_'47''47''45'cong'737'_3770 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'47''47''45'cong'737'_3770 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'47''47''45'cong'737'_3770 v8
du_'47''47''45'cong'737'_3770 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'47''47''45'cong'737'_3770 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe
         du_'47''47''45'cong'737'_3380 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-cong
d_'92''92''45'cong_3772 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong_3772 v0
  = coe
      d_'92''92''45'cong_3342
      (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-congʳ
d_'92''92''45'cong'691'_3774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'691'_3774 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'691'_3774 v8
du_'92''92''45'cong'691'_3774 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'691'_3774 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'691'_3376 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.\\-congˡ
d_'92''92''45'cong'737'_3776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'92''92''45'cong'737'_3776 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'92''92''45'cong'737'_3776 v8
du_'92''92''45'cong'737'_3776 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'92''92''45'cong'737'_3776 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe
         du_'92''92''45'cong'737'_3372 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.identity
d_identity_3778 ::
  T_IsMiddleBolLoop_3746 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_identity_3778 v0
  = coe d_identity_3422 (coe d_isLoop_3760 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.identityʳ
d_identity'691'_3780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny
d_identity'691'_3780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'691'_3780 v8
du_identity'691'_3780 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny
du_identity'691'_3780 v0
  = coe du_identity'691'_3474 (coe d_isLoop_3760 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.identityˡ
d_identity'737'_3782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny
d_identity'737'_3782 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_identity'737'_3782 v8
du_identity'737'_3782 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny
du_identity'737'_3782 v0
  = coe du_identity'737'_3472 (coe d_isLoop_3760 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.isEquivalence
d_isEquivalence_3784 ::
  T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_3784 v0
  = coe
      d_isEquivalence_188
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0))))
-- Algebra.Structures.IsMiddleBolLoop._.isMagma
d_isMagma_3786 :: T_IsMiddleBolLoop_3746 -> T_IsMagma_180
d_isMagma_3786 v0
  = coe
      d_isMagma_3340
      (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.isPartialEquivalence
d_isPartialEquivalence_3788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_3788 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_isPartialEquivalence_3788 v8
du_isPartialEquivalence_3788 ::
  T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_3788 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
               (coe d_isEquivalence_188 (coe v3)))))
-- Algebra.Structures.IsMiddleBolLoop._.isQuasigroup
d_isQuasigroup_3790 ::
  T_IsMiddleBolLoop_3746 -> T_IsQuasigroup_3322
d_isQuasigroup_3790 v0
  = coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0))
-- Algebra.Structures.IsMiddleBolLoop._.leftDivides
d_leftDivides_3792 ::
  T_IsMiddleBolLoop_3746 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_leftDivides_3792 v0
  = coe
      d_leftDivides_3346
      (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.leftDividesʳ
d_leftDivides'691'_3794 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'691'_3794 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'691'_3794 v8
du_leftDivides'691'_3794 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'691'_3794 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe du_leftDivides'691'_3390 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.leftDividesˡ
d_leftDivides'737'_3796 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
d_leftDivides'737'_3796 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_leftDivides'737'_3796 v8
du_leftDivides'737'_3796 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
du_leftDivides'737'_3796 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe du_leftDivides'737'_3388 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.refl
d_refl_3798 :: T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny
d_refl_3798 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.reflexive
d_reflexive_3800 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_3800 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_reflexive_3800 v8
du_reflexive_3800 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_3800 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (\ v4 v5 v6 ->
               coe
                 MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
                 (coe d_isEquivalence_188 (coe v3)) v4)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDivides
d_rightDivides_3802 ::
  T_IsMiddleBolLoop_3746 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_rightDivides_3802 v0
  = coe
      d_rightDivides_3348
      (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDividesʳ
d_rightDivides'691'_3804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'691'_3804 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'691'_3804 v8
du_rightDivides'691'_3804 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'691'_3804 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe du_rightDivides'691'_3394 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.rightDividesˡ
d_rightDivides'737'_3806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
d_rightDivides'737'_3806 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_rightDivides'737'_3806 v8
du_rightDivides'737'_3806 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny
du_rightDivides'737'_3806 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (coe du_rightDivides'737'_3392 (coe d_isQuasigroup_3420 (coe v1)))
-- Algebra.Structures.IsMiddleBolLoop._.setoid
d_setoid_3808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_3808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_setoid_3808 v8
du_setoid_3808 ::
  T_IsMiddleBolLoop_3746 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_3808 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe (coe du_setoid_204 (coe d_isMagma_3340 (coe v2))))
-- Algebra.Structures.IsMiddleBolLoop._.sym
d_sym_3810 ::
  T_IsMiddleBolLoop_3746 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_3810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.trans
d_trans_3812 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_3812 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         d_isEquivalence_188
         (coe
            d_isMagma_3340
            (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0)))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-cong
d_'8729''45'cong_3814 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong_3814 v0
  = coe
      d_'8729''45'cong_190
      (coe
         d_isMagma_3340
         (coe d_isQuasigroup_3420 (coe d_isLoop_3760 (coe v0))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-congʳ
d_'8729''45'cong'691'_3816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'691'_3816 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'691'_3816 v8
du_'8729''45'cong'691'_3816 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'691'_3816 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'691'_46
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
-- Algebra.Structures.IsMiddleBolLoop._.∙-congˡ
d_'8729''45'cong'737'_3818 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8729''45'cong'737'_3818 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8729''45'cong'737'_3818 v8
du_'8729''45'cong'737'_3818 ::
  T_IsMiddleBolLoop_3746 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8729''45'cong'737'_3818 v0
  = let v1 = d_isLoop_3760 (coe v0) in
    coe
      (let v2 = d_isQuasigroup_3420 (coe v1) in
       coe
         (let v3 = d_isMagma_3340 (coe v2) in
          coe
            (let v4 = coe du_setoid_204 (coe v3) in
             coe
               (let v5 = d_'8729''45'cong_190 (coe v3) in
                coe
                  (coe
                     MAlonzo.Code.Algebra.Consequences.Base.du_'8729''45'cong'737'_42
                     (coe v5)
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                           (coe v4))))))))
