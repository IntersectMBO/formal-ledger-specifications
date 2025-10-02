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

module MAlonzo.Code.Class.Setoid.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Class.Setoid.Core.ISetoid
d_ISetoid_10 a0 a1 = ()
newtype T_ISetoid_10
  = C_constructor_158 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Class.Setoid.Core.ISetoid.relℓ
d_relℓ_18 :: T_ISetoid_10 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_relℓ_18 v0
  = case coe v0 of
      C_constructor_158 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Setoid.Core.ISetoid._≈_
d__'8776'__20 :: T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__20 = erased
-- Class.Setoid.Core.ISetoid._≉_
d__'8777'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8777'__22 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._Absorbs_
d__Absorbs__30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__30 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._DistributesOver_
d__DistributesOver__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__32 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._DistributesOverʳ_
d__DistributesOver'691'__34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__34 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._DistributesOverˡ_
d__DistributesOver'737'__36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__36 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._IdempotentOn_
d__IdempotentOn__38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d__IdempotentOn__38 = erased
-- Class.Setoid.Core.ISetoid.Alg≈._MiddleFourExchange_
d__MiddleFourExchange__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__MiddleFourExchange__40 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Absorptive
d_Absorptive_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_42 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.AlmostCancellative
d_AlmostCancellative_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostCancellative_44 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.AlmostLeftCancellative
d_AlmostLeftCancellative_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_46 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.AlmostRightCancellative
d_AlmostRightCancellative_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_48 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Alternative
d_Alternative_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Alternative_50 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Associative
d_Associative_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_52 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Cancellative
d_Cancellative_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_54 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Commutative
d_Commutative_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_56 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Congruent₁
d_Congruent'8321'_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_58 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Congruent₂
d_Congruent'8322'_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_60 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Conical
d_Conical_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Conical_62 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Flexible
d_Flexible_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_64 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Idempotent
d_Idempotent_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_66 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.IdempotentFun
d_IdempotentFun_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_IdempotentFun_68 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Identical
d_Identical_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_70 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Identity
d_Identity_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_72 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Interchangable
d_Interchangable_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Interchangable_74 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Inverse
d_Inverse_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_76 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Invertible
d_Invertible_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_78 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Involutive
d_Involutive_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Involutive_80 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftAlternative
d_LeftAlternative_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_82 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftBol
d_LeftBol_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_84 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftCancellative
d_LeftCancellative_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_86 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftCongruent
d_LeftCongruent_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_88 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftConical
d_LeftConical_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftConical_90 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDivides
d_LeftDivides_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_92 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDividesʳ
d_LeftDivides'691'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_94 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDividesˡ
d_LeftDivides'737'_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_96 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftIdentity
d_LeftIdentity_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_98 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftInverse
d_LeftInverse_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_100 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftInvertible
d_LeftInvertible_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_LeftInvertible_102 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftSemimedial
d_LeftSemimedial_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_104 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftZero
d_LeftZero_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_106 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Medial
d_Medial_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_108 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.MiddleBol
d_MiddleBol_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_110 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightAlternative
d_RightAlternative_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_112 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightBol
d_RightBol_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_114 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightCancellative
d_RightCancellative_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_116 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightCongruent
d_RightCongruent_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_118 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightConical
d_RightConical_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightConical_120 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDivides
d_RightDivides_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_122 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDividesʳ
d_RightDivides'691'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_124 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDividesˡ
d_RightDivides'737'_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_126 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightIdentity
d_RightIdentity_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_128 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightInverse
d_RightInverse_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_130 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightInvertible
d_RightInvertible_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_RightInvertible_132 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightSemimedial
d_RightSemimedial_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_134 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightZero
d_RightZero_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_136 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Selective
d_Selective_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_138 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.SelfInverse
d_SelfInverse_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_140 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Semimedial
d_Semimedial_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_142 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarDestructive
d_StarDestructive_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_144 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarExpansive
d_StarExpansive_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_146 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarLeftDestructive
d_StarLeftDestructive_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_148 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarLeftExpansive
d_StarLeftExpansive_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_150 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarRightDestructive
d_StarRightDestructive_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_152 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarRightExpansive
d_StarRightExpansive_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_154 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Zero
d_Zero_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_156 = erased
-- Class.Setoid.Core._._≈_
d__'8776'__162 :: T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__162 = erased
-- Class.Setoid.Core._._≉_
d__'8777'__164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8777'__164 = erased
-- Class.Setoid.Core._.relℓ
d_relℓ_166 ::
  T_ISetoid_10 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_relℓ_166 v0 = coe d_relℓ_18 (coe v0)
-- Class.Setoid.Core._.Alg≈._Absorbs_
d__Absorbs__170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__170 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOver_
d__DistributesOver__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__172 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOverʳ_
d__DistributesOver'691'__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__174 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOverˡ_
d__DistributesOver'737'__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__176 = erased
-- Class.Setoid.Core._.Alg≈._IdempotentOn_
d__IdempotentOn__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d__IdempotentOn__178 = erased
-- Class.Setoid.Core._.Alg≈._MiddleFourExchange_
d__MiddleFourExchange__180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__MiddleFourExchange__180 = erased
-- Class.Setoid.Core._.Alg≈.Absorptive
d_Absorptive_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_182 = erased
-- Class.Setoid.Core._.Alg≈.AlmostCancellative
d_AlmostCancellative_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostCancellative_184 = erased
-- Class.Setoid.Core._.Alg≈.AlmostLeftCancellative
d_AlmostLeftCancellative_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_186 = erased
-- Class.Setoid.Core._.Alg≈.AlmostRightCancellative
d_AlmostRightCancellative_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_188 = erased
-- Class.Setoid.Core._.Alg≈.Alternative
d_Alternative_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Alternative_190 = erased
-- Class.Setoid.Core._.Alg≈.Associative
d_Associative_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_192 = erased
-- Class.Setoid.Core._.Alg≈.Cancellative
d_Cancellative_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_194 = erased
-- Class.Setoid.Core._.Alg≈.Commutative
d_Commutative_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_196 = erased
-- Class.Setoid.Core._.Alg≈.Congruent₁
d_Congruent'8321'_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_198 = erased
-- Class.Setoid.Core._.Alg≈.Congruent₂
d_Congruent'8322'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_200 = erased
-- Class.Setoid.Core._.Alg≈.Conical
d_Conical_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Conical_202 = erased
-- Class.Setoid.Core._.Alg≈.Flexible
d_Flexible_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_204 = erased
-- Class.Setoid.Core._.Alg≈.Idempotent
d_Idempotent_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_206 = erased
-- Class.Setoid.Core._.Alg≈.IdempotentFun
d_IdempotentFun_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_IdempotentFun_208 = erased
-- Class.Setoid.Core._.Alg≈.Identical
d_Identical_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_210 = erased
-- Class.Setoid.Core._.Alg≈.Identity
d_Identity_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_212 = erased
-- Class.Setoid.Core._.Alg≈.Interchangable
d_Interchangable_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Interchangable_214 = erased
-- Class.Setoid.Core._.Alg≈.Inverse
d_Inverse_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_216 = erased
-- Class.Setoid.Core._.Alg≈.Invertible
d_Invertible_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_218 = erased
-- Class.Setoid.Core._.Alg≈.Involutive
d_Involutive_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Involutive_220 = erased
-- Class.Setoid.Core._.Alg≈.LeftAlternative
d_LeftAlternative_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_222 = erased
-- Class.Setoid.Core._.Alg≈.LeftBol
d_LeftBol_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_224 = erased
-- Class.Setoid.Core._.Alg≈.LeftCancellative
d_LeftCancellative_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_226 = erased
-- Class.Setoid.Core._.Alg≈.LeftCongruent
d_LeftCongruent_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_228 = erased
-- Class.Setoid.Core._.Alg≈.LeftConical
d_LeftConical_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftConical_230 = erased
-- Class.Setoid.Core._.Alg≈.LeftDivides
d_LeftDivides_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_232 = erased
-- Class.Setoid.Core._.Alg≈.LeftDividesʳ
d_LeftDivides'691'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_234 = erased
-- Class.Setoid.Core._.Alg≈.LeftDividesˡ
d_LeftDivides'737'_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_236 = erased
-- Class.Setoid.Core._.Alg≈.LeftIdentity
d_LeftIdentity_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_238 = erased
-- Class.Setoid.Core._.Alg≈.LeftInverse
d_LeftInverse_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_240 = erased
-- Class.Setoid.Core._.Alg≈.LeftInvertible
d_LeftInvertible_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_LeftInvertible_242 = erased
-- Class.Setoid.Core._.Alg≈.LeftSemimedial
d_LeftSemimedial_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_244 = erased
-- Class.Setoid.Core._.Alg≈.LeftZero
d_LeftZero_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_246 = erased
-- Class.Setoid.Core._.Alg≈.Medial
d_Medial_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_248 = erased
-- Class.Setoid.Core._.Alg≈.MiddleBol
d_MiddleBol_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_250 = erased
-- Class.Setoid.Core._.Alg≈.RightAlternative
d_RightAlternative_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_252 = erased
-- Class.Setoid.Core._.Alg≈.RightBol
d_RightBol_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_254 = erased
-- Class.Setoid.Core._.Alg≈.RightCancellative
d_RightCancellative_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_256 = erased
-- Class.Setoid.Core._.Alg≈.RightCongruent
d_RightCongruent_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_258 = erased
-- Class.Setoid.Core._.Alg≈.RightConical
d_RightConical_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightConical_260 = erased
-- Class.Setoid.Core._.Alg≈.RightDivides
d_RightDivides_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_262 = erased
-- Class.Setoid.Core._.Alg≈.RightDividesʳ
d_RightDivides'691'_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_264 = erased
-- Class.Setoid.Core._.Alg≈.RightDividesˡ
d_RightDivides'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_266 = erased
-- Class.Setoid.Core._.Alg≈.RightIdentity
d_RightIdentity_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_268 = erased
-- Class.Setoid.Core._.Alg≈.RightInverse
d_RightInverse_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_270 = erased
-- Class.Setoid.Core._.Alg≈.RightInvertible
d_RightInvertible_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_RightInvertible_272 = erased
-- Class.Setoid.Core._.Alg≈.RightSemimedial
d_RightSemimedial_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_274 = erased
-- Class.Setoid.Core._.Alg≈.RightZero
d_RightZero_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_276 = erased
-- Class.Setoid.Core._.Alg≈.Selective
d_Selective_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_278 = erased
-- Class.Setoid.Core._.Alg≈.SelfInverse
d_SelfInverse_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_280 = erased
-- Class.Setoid.Core._.Alg≈.Semimedial
d_Semimedial_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_282 = erased
-- Class.Setoid.Core._.Alg≈.StarDestructive
d_StarDestructive_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_284 = erased
-- Class.Setoid.Core._.Alg≈.StarExpansive
d_StarExpansive_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_286 = erased
-- Class.Setoid.Core._.Alg≈.StarLeftDestructive
d_StarLeftDestructive_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_288 = erased
-- Class.Setoid.Core._.Alg≈.StarLeftExpansive
d_StarLeftExpansive_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_290 = erased
-- Class.Setoid.Core._.Alg≈.StarRightDestructive
d_StarRightDestructive_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_292 = erased
-- Class.Setoid.Core._.Alg≈.StarRightExpansive
d_StarRightExpansive_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_294 = erased
-- Class.Setoid.Core._.Alg≈.Zero
d_Zero_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_296 = erased
-- Class.Setoid.Core.SetoidLaws
d_SetoidLaws_304 a0 a1 a2 = ()
newtype T_SetoidLaws_304
  = C_constructor_368 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
-- Class.Setoid.Core.SetoidLaws.isEquivalence
d_isEquivalence_312 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_312 v0
  = case coe v0 of
      C_constructor_368 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Setoid.Core.SetoidLaws._.isPartialEquivalence
d_isPartialEquivalence_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_316 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_316 v3
du_isPartialEquivalence_316 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_316 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.refl
d_refl_318 :: T_SetoidLaws_304 -> AgdaAny -> AgdaAny
d_refl_318 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.reflexive
d_reflexive_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_320 ~v0 ~v1 ~v2 v3 = du_reflexive_320 v3
du_reflexive_320 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_320 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_312 (coe v0)) v1
-- Class.Setoid.Core.SetoidLaws._.sym
d_sym_322 ::
  T_SetoidLaws_304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.trans
d_trans_324 ::
  T_SetoidLaws_304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core.SetoidLaws.mkSetoid
d_mkSetoid_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_mkSetoid_326 ~v0 ~v1 ~v2 v3 = du_mkSetoid_326 v3
du_mkSetoid_326 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_mkSetoid_326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning._IsRelatedTo_
d__IsRelatedTo__330 a0 a1 a2 a3 a4 a5 = ()
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning._∎
d__'8718'_332 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_332 ~v0 ~v1 ~v2 v3 = du__'8718'_332 v3
du__'8718'_332 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_332 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                    (coe v1)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v2))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.begin_
d_begin__334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_begin__334 ~v0 ~v1 ~v2 ~v3 = du_begin__334
du_begin__334 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_begin__334
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.start
d_start_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_start_338 ~v0 ~v1 ~v2 ~v3 = du_start_338
du_start_338 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_start_338 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≈
d_step'45''8776'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_340 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_340 v3
du_step'45''8776'_340 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776'_340 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_342 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_342 v3
du_step'45''8776''45''10216'_342 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10216'_342 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_344 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_344 v3
du_step'45''8776''45''10217'_344 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10217'_344 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≈˘
d_step'45''8776''728'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_346 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_346 v3
du_step'45''8776''728'_346 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''728'_346 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡
d_step'45''8801'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_348 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_348
du_step'45''8801'_348 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_348
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_350 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_350 v6
du_step'45''8801''45''8739'_350 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_350 v0 = coe v0
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_352 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_352
du_step'45''8801''45''10216'_352 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_352
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_354 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_354
du_step'45''8801''45''10217'_354 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_354
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡˘
d_step'45''8801''728'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_356 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_356
du_step'45''8801''728'_356 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_356
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.stop
d_stop_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_358 ~v0 ~v1 ~v2 v3 = du_stop_358 v3
du_stop_358 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_358 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.∼-go
d_'8764''45'go_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_360 ~v0 ~v1 ~v2 v3 = du_'8764''45'go_360 v3
du_'8764''45'go_360 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_360 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.≡-go
d_'8801''45'go_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_362 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_362 v8
du_'8801''45'go_362 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_362 v0 = coe v0
-- Class.Setoid.Core._.isEquivalence
d_isEquivalence_372 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_372 v0 = coe d_isEquivalence_312 (coe v0)
-- Class.Setoid.Core._.isPartialEquivalence
d_isPartialEquivalence_374 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_374 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_374 v3
du_isPartialEquivalence_374 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_374 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core._.mkSetoid
d_mkSetoid_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_mkSetoid_376 ~v0 ~v1 ~v2 v3 = du_mkSetoid_376 v3
du_mkSetoid_376 ::
  T_SetoidLaws_304 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_mkSetoid_376 v0 = coe du_mkSetoid_326 (coe v0)
-- Class.Setoid.Core._.refl
d_refl_378 :: T_SetoidLaws_304 -> AgdaAny -> AgdaAny
d_refl_378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core._.reflexive
d_reflexive_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_380 ~v0 ~v1 ~v2 v3 = du_reflexive_380 v3
du_reflexive_380 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_380 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_312 (coe v0)) v1
-- Class.Setoid.Core._.sym
d_sym_382 ::
  T_SetoidLaws_304 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core._.trans
d_trans_384 ::
  T_SetoidLaws_304 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_312 (coe v0))
-- Class.Setoid.Core._.≈-Reasoning._IsRelatedTo_
d__IsRelatedTo__388 a0 a1 a2 a3 a4 a5 = ()
-- Class.Setoid.Core._.≈-Reasoning._∎
d__'8718'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_390 ~v0 ~v1 ~v2 v3 = du__'8718'_390 v3
du__'8718'_390 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_390 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (let v2
             = MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                 (coe
                    MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                    (coe v1)) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
               (coe v2))))
-- Class.Setoid.Core._.≈-Reasoning.begin_
d_begin__392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_begin__392 ~v0 ~v1 ~v2 ~v3 = du_begin__392
du_begin__392 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_begin__392
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Class.Setoid.Core._.≈-Reasoning.start
d_start_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_start_396 ~v0 ~v1 ~v2 ~v3 = du_start_396
du_start_396 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_start_396 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Class.Setoid.Core._.≈-Reasoning.step-≈
d_step'45''8776'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_398 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_398 v3
du_step'45''8776'_398 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776'_398 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Class.Setoid.Core._.≈-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_400 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_400 v3
du_step'45''8776''45''10216'_400 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10216'_400 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_402 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_402 v3
du_step'45''8776''45''10217'_402 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10217'_402 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                  (coe v1)))))
-- Class.Setoid.Core._.≈-Reasoning.step-≈˘
d_step'45''8776''728'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_404 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_404 v3
du_step'45''8776''728'_404 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''728'_404 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_trans_40
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_sym_38
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.step-≡
d_step'45''8801'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_406 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_406
du_step'45''8801'_406 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_406
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_408 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_408 v6
du_step'45''8801''45''8739'_408 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_408 v0 = coe v0
-- Class.Setoid.Core._.≈-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_410 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_410
du_step'45''8801''45''10216'_410 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_410
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_412 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_412
du_step'45''8801''45''10217'_412 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_412
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡˘
d_step'45''8801''728'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_414 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_414
du_step'45''8801''728'_414 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_414
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.stop
d_stop_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_416 ~v0 ~v1 ~v2 v3 = du_stop_416 v3
du_stop_416 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_416 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.∼-go
d_'8764''45'go_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_418 ~v0 ~v1 ~v2 v3 = du_'8764''45'go_418 v3
du_'8764''45'go_418 ::
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_418 v0
  = let v1 = coe du_mkSetoid_326 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.≡-go
d_'8801''45'go_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_420 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_420 v8
du_'8801''45'go_420 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_420 v0 = coe v0
-- Class.Setoid.Core._⟶_
d__'10230'__434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_304 -> T_ISetoid_10 -> T_SetoidLaws_304 -> ()
d__'10230'__434 = erased
-- Class.Setoid.Core.mkISetoid≡
d_mkISetoid'8801'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_ISetoid_10
d_mkISetoid'8801'_444 v0 ~v1 = du_mkISetoid'8801'_444 v0
du_mkISetoid'8801'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_ISetoid_10
du_mkISetoid'8801'_444 v0 = coe C_constructor_158 v0
-- Class.Setoid.Core.mkSetoidLaws≡
d_mkSetoidLaws'8801'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_SetoidLaws_304
d_mkSetoidLaws'8801'_448 ~v0 ~v1 = du_mkSetoidLaws'8801'_448
du_mkSetoidLaws'8801'_448 :: T_SetoidLaws_304
du_mkSetoidLaws'8801'_448
  = coe
      C_constructor_368
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
