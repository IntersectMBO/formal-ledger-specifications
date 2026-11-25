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
  = C_constructor_160 MAlonzo.Code.Agda.Primitive.T_Level_18
-- Class.Setoid.Core.ISetoid.relℓ
d_relℓ_18 :: T_ISetoid_10 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_relℓ_18 v0
  = case coe v0 of
      C_constructor_160 v1 -> coe v1
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
-- Class.Setoid.Core.ISetoid.Alg≈.Central
d_Central_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Central_56 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Commutative
d_Commutative_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_58 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Congruent₁
d_Congruent'8321'_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_60 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Congruent₂
d_Congruent'8322'_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_62 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Conical
d_Conical_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Conical_64 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Flexible
d_Flexible_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_66 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Idempotent
d_Idempotent_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_68 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.IdempotentFun
d_IdempotentFun_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_IdempotentFun_70 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Identical
d_Identical_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_72 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Identity
d_Identity_74 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_74 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Interchangable
d_Interchangable_76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Interchangable_76 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Inverse
d_Inverse_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_78 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Invertible
d_Invertible_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_80 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Involutive
d_Involutive_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Involutive_82 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftAlternative
d_LeftAlternative_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_84 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftBol
d_LeftBol_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_86 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftCancellative
d_LeftCancellative_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_88 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftCongruent
d_LeftCongruent_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_90 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftConical
d_LeftConical_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftConical_92 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDivides
d_LeftDivides_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_94 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDividesʳ
d_LeftDivides'691'_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_96 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftDividesˡ
d_LeftDivides'737'_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_98 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftIdentity
d_LeftIdentity_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_100 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftInverse
d_LeftInverse_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_102 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftInvertible
d_LeftInvertible_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_LeftInvertible_104 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftSemimedial
d_LeftSemimedial_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_106 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.LeftZero
d_LeftZero_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_108 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Medial
d_Medial_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_110 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.MiddleBol
d_MiddleBol_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_112 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightAlternative
d_RightAlternative_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_114 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightBol
d_RightBol_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_116 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightCancellative
d_RightCancellative_118 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_118 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightCongruent
d_RightCongruent_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_120 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightConical
d_RightConical_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightConical_122 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDivides
d_RightDivides_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_124 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDividesʳ
d_RightDivides'691'_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_126 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightDividesˡ
d_RightDivides'737'_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_128 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightIdentity
d_RightIdentity_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_130 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightInverse
d_RightInverse_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_132 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightInvertible
d_RightInvertible_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_RightInvertible_134 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightSemimedial
d_RightSemimedial_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_136 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.RightZero
d_RightZero_138 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_138 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Selective
d_Selective_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_140 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.SelfInverse
d_SelfInverse_142 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_142 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Semimedial
d_Semimedial_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_144 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarDestructive
d_StarDestructive_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_146 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarExpansive
d_StarExpansive_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_148 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarLeftDestructive
d_StarLeftDestructive_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_150 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarLeftExpansive
d_StarLeftExpansive_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_152 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarRightDestructive
d_StarRightDestructive_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_154 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.StarRightExpansive
d_StarRightExpansive_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_156 = erased
-- Class.Setoid.Core.ISetoid.Alg≈.Zero
d_Zero_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_158 = erased
-- Class.Setoid.Core._._≈_
d__'8776'__164 :: T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8776'__164 = erased
-- Class.Setoid.Core._._≉_
d__'8777'__166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> AgdaAny -> AgdaAny -> ()
d__'8777'__166 = erased
-- Class.Setoid.Core._.relℓ
d_relℓ_168 ::
  T_ISetoid_10 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_relℓ_168 v0 = coe d_relℓ_18 (coe v0)
-- Class.Setoid.Core._.Alg≈._Absorbs_
d__Absorbs__172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__Absorbs__172 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOver_
d__DistributesOver__174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver__174 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOverʳ_
d__DistributesOver'691'__176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'691'__176 = erased
-- Class.Setoid.Core._.Alg≈._DistributesOverˡ_
d__DistributesOver'737'__178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__DistributesOver'737'__178 = erased
-- Class.Setoid.Core._.Alg≈._IdempotentOn_
d__IdempotentOn__180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d__IdempotentOn__180 = erased
-- Class.Setoid.Core._.Alg≈._MiddleFourExchange_
d__MiddleFourExchange__182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d__MiddleFourExchange__182 = erased
-- Class.Setoid.Core._.Alg≈.Absorptive
d_Absorptive_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Absorptive_184 = erased
-- Class.Setoid.Core._.Alg≈.AlmostCancellative
d_AlmostCancellative_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostCancellative_186 = erased
-- Class.Setoid.Core._.Alg≈.AlmostLeftCancellative
d_AlmostLeftCancellative_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostLeftCancellative_188 = erased
-- Class.Setoid.Core._.Alg≈.AlmostRightCancellative
d_AlmostRightCancellative_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_AlmostRightCancellative_190 = erased
-- Class.Setoid.Core._.Alg≈.Alternative
d_Alternative_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Alternative_192 = erased
-- Class.Setoid.Core._.Alg≈.Associative
d_Associative_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Associative_194 = erased
-- Class.Setoid.Core._.Alg≈.Cancellative
d_Cancellative_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Cancellative_196 = erased
-- Class.Setoid.Core._.Alg≈.Central
d_Central_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Central_198 = erased
-- Class.Setoid.Core._.Alg≈.Commutative
d_Commutative_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Commutative_200 = erased
-- Class.Setoid.Core._.Alg≈.Congruent₁
d_Congruent'8321'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Congruent'8321'_202 = erased
-- Class.Setoid.Core._.Alg≈.Congruent₂
d_Congruent'8322'_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Congruent'8322'_204 = erased
-- Class.Setoid.Core._.Alg≈.Conical
d_Conical_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Conical_206 = erased
-- Class.Setoid.Core._.Alg≈.Flexible
d_Flexible_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Flexible_208 = erased
-- Class.Setoid.Core._.Alg≈.Idempotent
d_Idempotent_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Idempotent_210 = erased
-- Class.Setoid.Core._.Alg≈.IdempotentFun
d_IdempotentFun_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_IdempotentFun_212 = erased
-- Class.Setoid.Core._.Alg≈.Identical
d_Identical_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identical_214 = erased
-- Class.Setoid.Core._.Alg≈.Identity
d_Identity_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Identity_216 = erased
-- Class.Setoid.Core._.Alg≈.Interchangable
d_Interchangable_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Interchangable_218 = erased
-- Class.Setoid.Core._.Alg≈.Inverse
d_Inverse_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Inverse_220 = erased
-- Class.Setoid.Core._.Alg≈.Invertible
d_Invertible_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_Invertible_222 = erased
-- Class.Setoid.Core._.Alg≈.Involutive
d_Involutive_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_Involutive_224 = erased
-- Class.Setoid.Core._.Alg≈.LeftAlternative
d_LeftAlternative_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftAlternative_226 = erased
-- Class.Setoid.Core._.Alg≈.LeftBol
d_LeftBol_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftBol_228 = erased
-- Class.Setoid.Core._.Alg≈.LeftCancellative
d_LeftCancellative_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCancellative_230 = erased
-- Class.Setoid.Core._.Alg≈.LeftCongruent
d_LeftCongruent_232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftCongruent_232 = erased
-- Class.Setoid.Core._.Alg≈.LeftConical
d_LeftConical_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftConical_234 = erased
-- Class.Setoid.Core._.Alg≈.LeftDivides
d_LeftDivides_236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides_236 = erased
-- Class.Setoid.Core._.Alg≈.LeftDividesʳ
d_LeftDivides'691'_238 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'691'_238 = erased
-- Class.Setoid.Core._.Alg≈.LeftDividesˡ
d_LeftDivides'737'_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftDivides'737'_240 = erased
-- Class.Setoid.Core._.Alg≈.LeftIdentity
d_LeftIdentity_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftIdentity_242 = erased
-- Class.Setoid.Core._.Alg≈.LeftInverse
d_LeftInverse_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftInverse_244 = erased
-- Class.Setoid.Core._.Alg≈.LeftInvertible
d_LeftInvertible_246 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_LeftInvertible_246 = erased
-- Class.Setoid.Core._.Alg≈.LeftSemimedial
d_LeftSemimedial_248 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftSemimedial_248 = erased
-- Class.Setoid.Core._.Alg≈.LeftZero
d_LeftZero_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_LeftZero_250 = erased
-- Class.Setoid.Core._.Alg≈.Medial
d_Medial_252 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Medial_252 = erased
-- Class.Setoid.Core._.Alg≈.MiddleBol
d_MiddleBol_254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_MiddleBol_254 = erased
-- Class.Setoid.Core._.Alg≈.RightAlternative
d_RightAlternative_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightAlternative_256 = erased
-- Class.Setoid.Core._.Alg≈.RightBol
d_RightBol_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightBol_258 = erased
-- Class.Setoid.Core._.Alg≈.RightCancellative
d_RightCancellative_260 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCancellative_260 = erased
-- Class.Setoid.Core._.Alg≈.RightCongruent
d_RightCongruent_262 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightCongruent_262 = erased
-- Class.Setoid.Core._.Alg≈.RightConical
d_RightConical_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightConical_264 = erased
-- Class.Setoid.Core._.Alg≈.RightDivides
d_RightDivides_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides_266 = erased
-- Class.Setoid.Core._.Alg≈.RightDividesʳ
d_RightDivides'691'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'691'_268 = erased
-- Class.Setoid.Core._.Alg≈.RightDividesˡ
d_RightDivides'737'_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightDivides'737'_270 = erased
-- Class.Setoid.Core._.Alg≈.RightIdentity
d_RightIdentity_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightIdentity_272 = erased
-- Class.Setoid.Core._.Alg≈.RightInverse
d_RightInverse_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightInverse_274 = erased
-- Class.Setoid.Core._.Alg≈.RightInvertible
d_RightInvertible_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> ()
d_RightInvertible_276 = erased
-- Class.Setoid.Core._.Alg≈.RightSemimedial
d_RightSemimedial_278 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightSemimedial_278 = erased
-- Class.Setoid.Core._.Alg≈.RightZero
d_RightZero_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_RightZero_280 = erased
-- Class.Setoid.Core._.Alg≈.Selective
d_Selective_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Selective_282 = erased
-- Class.Setoid.Core._.Alg≈.SelfInverse
d_SelfInverse_284 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny) -> ()
d_SelfInverse_284 = erased
-- Class.Setoid.Core._.Alg≈.Semimedial
d_Semimedial_286 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> T_ISetoid_10 -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Semimedial_286 = erased
-- Class.Setoid.Core._.Alg≈.StarDestructive
d_StarDestructive_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarDestructive_288 = erased
-- Class.Setoid.Core._.Alg≈.StarExpansive
d_StarExpansive_290 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarExpansive_290 = erased
-- Class.Setoid.Core._.Alg≈.StarLeftDestructive
d_StarLeftDestructive_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftDestructive_292 = erased
-- Class.Setoid.Core._.Alg≈.StarLeftExpansive
d_StarLeftExpansive_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarLeftExpansive_294 = erased
-- Class.Setoid.Core._.Alg≈.StarRightDestructive
d_StarRightDestructive_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightDestructive_296 = erased
-- Class.Setoid.Core._.Alg≈.StarRightExpansive
d_StarRightExpansive_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> ()
d_StarRightExpansive_298 = erased
-- Class.Setoid.Core._.Alg≈.Zero
d_Zero_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 -> AgdaAny -> (AgdaAny -> AgdaAny -> AgdaAny) -> ()
d_Zero_300 = erased
-- Class.Setoid.Core.SetoidLaws
d_SetoidLaws_308 a0 a1 a2 = ()
newtype T_SetoidLaws_308
  = C_constructor_372 MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
-- Class.Setoid.Core.SetoidLaws.isEquivalence
d_isEquivalence_316 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_316 v0
  = case coe v0 of
      C_constructor_372 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Class.Setoid.Core.SetoidLaws._.isPartialEquivalence
d_isPartialEquivalence_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_320 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_320 v3
du_isPartialEquivalence_320 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_320 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.refl
d_refl_322 :: T_SetoidLaws_308 -> AgdaAny -> AgdaAny
d_refl_322 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.reflexive
d_reflexive_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_324 ~v0 ~v1 ~v2 v3 = du_reflexive_324 v3
du_reflexive_324 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_324 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_316 (coe v0)) v1
-- Class.Setoid.Core.SetoidLaws._.sym
d_sym_326 ::
  T_SetoidLaws_308 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_326 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core.SetoidLaws._.trans
d_trans_328 ::
  T_SetoidLaws_308 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_328 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core.SetoidLaws.mkSetoid
d_mkSetoid_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_mkSetoid_330 ~v0 ~v1 ~v2 v3 = du_mkSetoid_330 v3
du_mkSetoid_330 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_mkSetoid_330 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning._IsRelatedTo_
d__IsRelatedTo__334 a0 a1 a2 a3 a4 a5 = ()
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning._∎
d__'8718'_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_336 ~v0 ~v1 ~v2 v3 = du__'8718'_336 v3
du__'8718'_336 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_336 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_begin__338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_begin__338 ~v0 ~v1 ~v2 ~v3 = du_begin__338
du_begin__338 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_begin__338
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.start
d_start_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_start_342 ~v0 ~v1 ~v2 ~v3 = du_start_342
du_start_342 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_start_342 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≈
d_step'45''8776'_344 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_344 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_344 v3
du_step'45''8776'_344 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776'_344 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''45''10216'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_346 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_346 v3
du_step'45''8776''45''10216'_346 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10216'_346 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''45''10217'_348 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_348 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_348 v3
du_step'45''8776''45''10217'_348 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10217'_348 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''728'_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_350 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_350 v3
du_step'45''8776''728'_350 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''728'_350 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8801'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_352 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_352
du_step'45''8801'_352 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_352
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_354 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_354 v6
du_step'45''8801''45''8739'_354 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_354 v0 = coe v0
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_356 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_356 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_356
du_step'45''8801''45''10216'_356 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_356
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_358 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_358
du_step'45''8801''45''10217'_358 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_358
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.step-≡˘
d_step'45''8801''728'_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_360 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_360
du_step'45''8801''728'_360 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_360
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.stop
d_stop_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_362 ~v0 ~v1 ~v2 v3 = du_stop_362 v3
du_stop_362 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_362 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.∼-go
d_'8764''45'go_364 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_364 ~v0 ~v1 ~v2 v3 = du_'8764''45'go_364 v3
du_'8764''45'go_364 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_364 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core.SetoidLaws.≈-Reasoning.≡-go
d_'8801''45'go_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_366 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_366 v8
du_'8801''45'go_366 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_366 v0 = coe v0
-- Class.Setoid.Core._.isEquivalence
d_isEquivalence_376 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_376 v0 = coe d_isEquivalence_316 (coe v0)
-- Class.Setoid.Core._.isPartialEquivalence
d_isPartialEquivalence_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
d_isPartialEquivalence_378 ~v0 ~v1 ~v2 v3
  = du_isPartialEquivalence_378 v3
du_isPartialEquivalence_378 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialEquivalence_16
du_isPartialEquivalence_378 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_isPartialEquivalence_44
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core._.mkSetoid
d_mkSetoid_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_mkSetoid_380 ~v0 ~v1 ~v2 v3 = du_mkSetoid_380 v3
du_mkSetoid_380 ::
  T_SetoidLaws_308 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_mkSetoid_380 v0 = coe du_mkSetoid_330 (coe v0)
-- Class.Setoid.Core._.refl
d_refl_382 :: T_SetoidLaws_308 -> AgdaAny -> AgdaAny
d_refl_382 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_refl_36
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core._.reflexive
d_reflexive_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_reflexive_384 ~v0 ~v1 ~v2 v3 = du_reflexive_384 v3
du_reflexive_384 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_reflexive_384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
      (coe d_isEquivalence_316 (coe v0)) v1
-- Class.Setoid.Core._.sym
d_sym_386 ::
  T_SetoidLaws_308 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_sym_386 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_sym_38
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core._.trans
d_trans_388 ::
  T_SetoidLaws_308 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_388 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe d_isEquivalence_316 (coe v0))
-- Class.Setoid.Core._.≈-Reasoning._IsRelatedTo_
d__IsRelatedTo__392 a0 a1 a2 a3 a4 a5 = ()
-- Class.Setoid.Core._.≈-Reasoning._∎
d__'8718'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d__'8718'_394 ~v0 ~v1 ~v2 v3 = du__'8718'_394 v3
du__'8718'_394 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du__'8718'_394 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_begin__396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_begin__396 ~v0 ~v1 ~v2 ~v3 = du_begin__396
du_begin__396 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_begin__396
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v0 v1 v2 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2)
-- Class.Setoid.Core._.≈-Reasoning.start
d_start_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
d_start_400 ~v0 ~v1 ~v2 ~v3 = du_start_400
du_start_400 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny
du_start_400 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v2
-- Class.Setoid.Core._.≈-Reasoning.step-≈
d_step'45''8776'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776'_402 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_402 v3
du_step'45''8776'_402 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776'_402 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''45''10216'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10216'_404 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_404 v3
du_step'45''8776''45''10216'_404 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10216'_404 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''45''10217'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''45''10217'_406 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_406 v3
du_step'45''8776''45''10217'_406 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''45''10217'_406 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8776''728'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8776''728'_408 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_408 v3
du_step'45''8776''728'_408 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8776''728'_408 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
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
d_step'45''8801'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801'_410 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_410
du_step'45''8801'_410 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801'_410
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''8739'_412 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_412 v6
du_step'45''8801''45''8739'_412 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''8739'_412 v0 = coe v0
-- Class.Setoid.Core._.≈-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10216'_414 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_414
du_step'45''8801''45''10216'_414 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10216'_414
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''45''10217'_416 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_416
du_step'45''8801''45''10217'_416 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''45''10217'_416
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.step-≡˘
d_step'45''8801''728'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_step'45''8801''728'_418 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_418
du_step'45''8801''728'_418 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_step'45''8801''728'_418
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Class.Setoid.Core._.≈-Reasoning.stop
d_stop_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_stop_420 ~v0 ~v1 ~v2 v3 = du_stop_420 v3
du_stop_420 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_stop_420 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.∼-go
d_'8764''45'go_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8764''45'go_422 ~v0 ~v1 ~v2 v3 = du_'8764''45'go_422 v3
du_'8764''45'go_422 ::
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8764''45'go_422 v0
  = let v1 = coe du_mkSetoid_330 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_40
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v1))))
-- Class.Setoid.Core._.≈-Reasoning.≡-go
d_'8801''45'go_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
d_'8801''45'go_424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_424 v8
du_'8801''45'go_424 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.T__IsRelatedTo__26
du_'8801''45'go_424 v0 = coe v0
-- Class.Setoid.Core._⟶_
d__'10230'__438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  T_ISetoid_10 ->
  T_SetoidLaws_308 -> T_ISetoid_10 -> T_SetoidLaws_308 -> ()
d__'10230'__438 = erased
-- Class.Setoid.Core.mkISetoid≡
d_mkISetoid'8801'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_ISetoid_10
d_mkISetoid'8801'_448 v0 ~v1 = du_mkISetoid'8801'_448 v0
du_mkISetoid'8801'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> T_ISetoid_10
du_mkISetoid'8801'_448 v0 = coe C_constructor_160 v0
-- Class.Setoid.Core.mkSetoidLaws≡
d_mkSetoidLaws'8801'_452 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> T_SetoidLaws_308
d_mkSetoidLaws'8801'_452 ~v0 ~v1 = du_mkSetoidLaws'8801'_452
du_mkSetoidLaws'8801'_452 :: T_SetoidLaws_308
du_mkSetoidLaws'8801'_452
  = coe
      C_constructor_372
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_isEquivalence_396)
