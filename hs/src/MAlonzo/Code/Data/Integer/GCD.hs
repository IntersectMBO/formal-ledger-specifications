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

module MAlonzo.Code.Data.Integer.GCD where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Integer.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.GCD
import qualified MAlonzo.Code.Function.Base

-- Data.Integer.GCD.Algebra._Absorbs_
d__Absorbs__8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__Absorbs__8 = erased
-- Data.Integer.GCD.Algebra._DistributesOver_
d__DistributesOver__10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver__10 = erased
-- Data.Integer.GCD.Algebra._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Integer.GCD.Algebra._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Integer.GCD.Algebra._IdempotentOn_
d__IdempotentOn__16 ::
  (Integer -> Integer -> Integer) -> Integer -> ()
d__IdempotentOn__16 = erased
-- Data.Integer.GCD.Algebra._MiddleFourExchange_
d__MiddleFourExchange__18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__MiddleFourExchange__18 = erased
-- Data.Integer.GCD.Algebra.Absorptive
d_Absorptive_20 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Absorptive_20 = erased
-- Data.Integer.GCD.Algebra.AlmostCancellative
d_AlmostCancellative_22 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostCancellative_22 = erased
-- Data.Integer.GCD.Algebra.AlmostLeftCancellative
d_AlmostLeftCancellative_24 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostLeftCancellative_24 = erased
-- Data.Integer.GCD.Algebra.AlmostRightCancellative
d_AlmostRightCancellative_26 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostRightCancellative_26 = erased
-- Data.Integer.GCD.Algebra.Alternative
d_Alternative_28 :: (Integer -> Integer -> Integer) -> ()
d_Alternative_28 = erased
-- Data.Integer.GCD.Algebra.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Integer.GCD.Algebra.Cancellative
d_Cancellative_32 :: (Integer -> Integer -> Integer) -> ()
d_Cancellative_32 = erased
-- Data.Integer.GCD.Algebra.Commutative
d_Commutative_34 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_34 = erased
-- Data.Integer.GCD.Algebra.Congruent₁
d_Congruent'8321'_36 :: (Integer -> Integer) -> ()
d_Congruent'8321'_36 = erased
-- Data.Integer.GCD.Algebra.Congruent₂
d_Congruent'8322'_38 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_38 = erased
-- Data.Integer.GCD.Algebra.Conical
d_Conical_40 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_40 = erased
-- Data.Integer.GCD.Algebra.Flexible
d_Flexible_42 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_42 = erased
-- Data.Integer.GCD.Algebra.Idempotent
d_Idempotent_44 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_44 = erased
-- Data.Integer.GCD.Algebra.IdempotentFun
d_IdempotentFun_46 :: (Integer -> Integer) -> ()
d_IdempotentFun_46 = erased
-- Data.Integer.GCD.Algebra.Identical
d_Identical_48 :: (Integer -> Integer -> Integer) -> ()
d_Identical_48 = erased
-- Data.Integer.GCD.Algebra.Identity
d_Identity_50 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_50 = erased
-- Data.Integer.GCD.Algebra.Interchangable
d_Interchangable_52 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_52 = erased
-- Data.Integer.GCD.Algebra.Inverse
d_Inverse_54 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_54 = erased
-- Data.Integer.GCD.Algebra.Invertible
d_Invertible_56 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_56 = erased
-- Data.Integer.GCD.Algebra.Involutive
d_Involutive_58 :: (Integer -> Integer) -> ()
d_Involutive_58 = erased
-- Data.Integer.GCD.Algebra.LeftAlternative
d_LeftAlternative_60 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_60 = erased
-- Data.Integer.GCD.Algebra.LeftBol
d_LeftBol_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_62 = erased
-- Data.Integer.GCD.Algebra.LeftCancellative
d_LeftCancellative_64 :: (Integer -> Integer -> Integer) -> ()
d_LeftCancellative_64 = erased
-- Data.Integer.GCD.Algebra.LeftCongruent
d_LeftCongruent_66 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_66 = erased
-- Data.Integer.GCD.Algebra.LeftConical
d_LeftConical_68 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_68 = erased
-- Data.Integer.GCD.Algebra.LeftDivides
d_LeftDivides_70 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_70 = erased
-- Data.Integer.GCD.Algebra.LeftDividesʳ
d_LeftDivides'691'_72 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_72 = erased
-- Data.Integer.GCD.Algebra.LeftDividesˡ
d_LeftDivides'737'_74 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_74 = erased
-- Data.Integer.GCD.Algebra.LeftIdentity
d_LeftIdentity_76 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_76 = erased
-- Data.Integer.GCD.Algebra.LeftInverse
d_LeftInverse_78 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_78 = erased
-- Data.Integer.GCD.Algebra.LeftInvertible
d_LeftInvertible_80 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_80 = erased
-- Data.Integer.GCD.Algebra.LeftSemimedial
d_LeftSemimedial_82 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_82 = erased
-- Data.Integer.GCD.Algebra.LeftZero
d_LeftZero_84 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_84 = erased
-- Data.Integer.GCD.Algebra.Medial
d_Medial_86 :: (Integer -> Integer -> Integer) -> ()
d_Medial_86 = erased
-- Data.Integer.GCD.Algebra.MiddleBol
d_MiddleBol_88 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_88 = erased
-- Data.Integer.GCD.Algebra.RightAlternative
d_RightAlternative_90 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_90 = erased
-- Data.Integer.GCD.Algebra.RightBol
d_RightBol_92 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_92 = erased
-- Data.Integer.GCD.Algebra.RightCancellative
d_RightCancellative_94 :: (Integer -> Integer -> Integer) -> ()
d_RightCancellative_94 = erased
-- Data.Integer.GCD.Algebra.RightCongruent
d_RightCongruent_96 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_96 = erased
-- Data.Integer.GCD.Algebra.RightConical
d_RightConical_98 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_98 = erased
-- Data.Integer.GCD.Algebra.RightDivides
d_RightDivides_100 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_100 = erased
-- Data.Integer.GCD.Algebra.RightDividesʳ
d_RightDivides'691'_102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_102 = erased
-- Data.Integer.GCD.Algebra.RightDividesˡ
d_RightDivides'737'_104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_104 = erased
-- Data.Integer.GCD.Algebra.RightIdentity
d_RightIdentity_106 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_106 = erased
-- Data.Integer.GCD.Algebra.RightInverse
d_RightInverse_108 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_108 = erased
-- Data.Integer.GCD.Algebra.RightInvertible
d_RightInvertible_110 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_110 = erased
-- Data.Integer.GCD.Algebra.RightSemimedial
d_RightSemimedial_112 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_112 = erased
-- Data.Integer.GCD.Algebra.RightZero
d_RightZero_114 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_114 = erased
-- Data.Integer.GCD.Algebra.Selective
d_Selective_116 :: (Integer -> Integer -> Integer) -> ()
d_Selective_116 = erased
-- Data.Integer.GCD.Algebra.SelfInverse
d_SelfInverse_118 :: (Integer -> Integer) -> ()
d_SelfInverse_118 = erased
-- Data.Integer.GCD.Algebra.Semimedial
d_Semimedial_120 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_120 = erased
-- Data.Integer.GCD.Algebra.StarDestructive
d_StarDestructive_122 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_122 = erased
-- Data.Integer.GCD.Algebra.StarExpansive
d_StarExpansive_124 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_124 = erased
-- Data.Integer.GCD.Algebra.StarLeftDestructive
d_StarLeftDestructive_126 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_126 = erased
-- Data.Integer.GCD.Algebra.StarLeftExpansive
d_StarLeftExpansive_128 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_128 = erased
-- Data.Integer.GCD.Algebra.StarRightDestructive
d_StarRightDestructive_130 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_130 = erased
-- Data.Integer.GCD.Algebra.StarRightExpansive
d_StarRightExpansive_132 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_132 = erased
-- Data.Integer.GCD.Algebra.Zero
d_Zero_134 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_134 = erased
-- Data.Integer.GCD.gcd
d_gcd_136 :: Integer -> Integer -> Integer
d_gcd_136 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd_152
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
-- Data.Integer.GCD.gcd[i,j]∣i
d_gcd'91'i'44'j'93''8739'i_146 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'i'44'j'93''8739'i_146 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'm_248
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
-- Data.Integer.GCD.gcd[i,j]∣j
d_gcd'91'i'44'j'93''8739'j_156 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'i'44'j'93''8739'j_156 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'91'm'44'n'93''8739'n_278
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v0))
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
-- Data.Integer.GCD.gcd-greatest
d_gcd'45'greatest_168 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'45'greatest_168 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Nat.GCD.d_gcd'45'greatest_310
      (coe
         MAlonzo.Code.Function.Base.du_'8739'_'10217''45'__298
         (\ v5 v6 -> v6) MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18
         v2 v0)
      (coe MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (coe v1))
      (coe
         MAlonzo.Code.Function.Base.du__'45''10216'_'8739'_292
         MAlonzo.Code.Data.Integer.Base.d_'8739'_'8739'_18 (\ v5 v6 -> v5)
         v2 (d_gcd_136 (coe v0) (coe v1)))
      (coe v3) (coe v4)
-- Data.Integer.GCD.gcd[0,0]≡0
d_gcd'91'0'44'0'93''8801'0_174 ::
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'0'44'0'93''8801'0_174 = erased
-- Data.Integer.GCD.gcd[i,j]≡0⇒i≡0
d_gcd'91'i'44'j'93''8801'0'8658'i'8801'0_180 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'i'44'j'93''8801'0'8658'i'8801'0_180 = erased
-- Data.Integer.GCD.gcd[i,j]≡0⇒j≡0
d_gcd'91'i'44'j'93''8801'0'8658'j'8801'0_192 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'i'44'j'93''8801'0'8658'j'8801'0_192 = erased
-- Data.Integer.GCD.gcd-comm
d_gcd'45'comm_198 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'comm_198 = erased
-- Data.Integer.GCD.gcd-assoc
d_gcd'45'assoc_204 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'assoc_204 = erased
-- Data.Integer.GCD.gcd-zeroˡ
d_gcd'45'zero'737'_212 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'zero'737'_212 = erased
-- Data.Integer.GCD.gcd-zeroʳ
d_gcd'45'zero'691'_216 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'zero'691'_216 = erased
-- Data.Integer.GCD.gcd-zero
d_gcd'45'zero_220 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gcd'45'zero_220
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
