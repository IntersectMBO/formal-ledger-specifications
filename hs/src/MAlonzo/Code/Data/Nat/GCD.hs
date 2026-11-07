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

module MAlonzo.Code.Data.Nat.GCD where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Divisibility
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.GCD.Lemmas
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Induction
import qualified MAlonzo.Code.Induction.Lexicographic
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.Definitions
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Nat.GCD.Algebra._Absorbs_
d__Absorbs__8 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__Absorbs__8 = erased
-- Data.Nat.GCD.Algebra._DistributesOver_
d__DistributesOver__10 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver__10 = erased
-- Data.Nat.GCD.Algebra._DistributesOverʳ_
d__DistributesOver'691'__12 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'691'__12 = erased
-- Data.Nat.GCD.Algebra._DistributesOverˡ_
d__DistributesOver'737'__14 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__DistributesOver'737'__14 = erased
-- Data.Nat.GCD.Algebra._IdempotentOn_
d__IdempotentOn__16 ::
  (Integer -> Integer -> Integer) -> Integer -> ()
d__IdempotentOn__16 = erased
-- Data.Nat.GCD.Algebra._MiddleFourExchange_
d__MiddleFourExchange__18 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d__MiddleFourExchange__18 = erased
-- Data.Nat.GCD.Algebra.Absorptive
d_Absorptive_20 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Absorptive_20 = erased
-- Data.Nat.GCD.Algebra.AlmostCancellative
d_AlmostCancellative_22 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostCancellative_22 = erased
-- Data.Nat.GCD.Algebra.AlmostLeftCancellative
d_AlmostLeftCancellative_24 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostLeftCancellative_24 = erased
-- Data.Nat.GCD.Algebra.AlmostRightCancellative
d_AlmostRightCancellative_26 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_AlmostRightCancellative_26 = erased
-- Data.Nat.GCD.Algebra.Alternative
d_Alternative_28 :: (Integer -> Integer -> Integer) -> ()
d_Alternative_28 = erased
-- Data.Nat.GCD.Algebra.Associative
d_Associative_30 :: (Integer -> Integer -> Integer) -> ()
d_Associative_30 = erased
-- Data.Nat.GCD.Algebra.Cancellative
d_Cancellative_32 :: (Integer -> Integer -> Integer) -> ()
d_Cancellative_32 = erased
-- Data.Nat.GCD.Algebra.Central
d_Central_34 :: (Integer -> Integer -> Integer) -> Integer -> ()
d_Central_34 = erased
-- Data.Nat.GCD.Algebra.Commutative
d_Commutative_36 :: (Integer -> Integer -> Integer) -> ()
d_Commutative_36 = erased
-- Data.Nat.GCD.Algebra.Congruent₁
d_Congruent'8321'_38 :: (Integer -> Integer) -> ()
d_Congruent'8321'_38 = erased
-- Data.Nat.GCD.Algebra.Congruent₂
d_Congruent'8322'_40 :: (Integer -> Integer -> Integer) -> ()
d_Congruent'8322'_40 = erased
-- Data.Nat.GCD.Algebra.Conical
d_Conical_42 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Conical_42 = erased
-- Data.Nat.GCD.Algebra.Flexible
d_Flexible_44 :: (Integer -> Integer -> Integer) -> ()
d_Flexible_44 = erased
-- Data.Nat.GCD.Algebra.Idempotent
d_Idempotent_46 :: (Integer -> Integer -> Integer) -> ()
d_Idempotent_46 = erased
-- Data.Nat.GCD.Algebra.IdempotentFun
d_IdempotentFun_48 :: (Integer -> Integer) -> ()
d_IdempotentFun_48 = erased
-- Data.Nat.GCD.Algebra.Identical
d_Identical_50 :: (Integer -> Integer -> Integer) -> ()
d_Identical_50 = erased
-- Data.Nat.GCD.Algebra.Identity
d_Identity_52 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Identity_52 = erased
-- Data.Nat.GCD.Algebra.Interchangable
d_Interchangable_54 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_Interchangable_54 = erased
-- Data.Nat.GCD.Algebra.Inverse
d_Inverse_56 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_Inverse_56 = erased
-- Data.Nat.GCD.Algebra.Invertible
d_Invertible_58 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_Invertible_58 = erased
-- Data.Nat.GCD.Algebra.Involutive
d_Involutive_60 :: (Integer -> Integer) -> ()
d_Involutive_60 = erased
-- Data.Nat.GCD.Algebra.LeftAlternative
d_LeftAlternative_62 :: (Integer -> Integer -> Integer) -> ()
d_LeftAlternative_62 = erased
-- Data.Nat.GCD.Algebra.LeftBol
d_LeftBol_64 :: (Integer -> Integer -> Integer) -> ()
d_LeftBol_64 = erased
-- Data.Nat.GCD.Algebra.LeftCancellative
d_LeftCancellative_66 :: (Integer -> Integer -> Integer) -> ()
d_LeftCancellative_66 = erased
-- Data.Nat.GCD.Algebra.LeftCongruent
d_LeftCongruent_68 :: (Integer -> Integer -> Integer) -> ()
d_LeftCongruent_68 = erased
-- Data.Nat.GCD.Algebra.LeftConical
d_LeftConical_70 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftConical_70 = erased
-- Data.Nat.GCD.Algebra.LeftDivides
d_LeftDivides_72 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides_72 = erased
-- Data.Nat.GCD.Algebra.LeftDividesʳ
d_LeftDivides'691'_74 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'691'_74 = erased
-- Data.Nat.GCD.Algebra.LeftDividesˡ
d_LeftDivides'737'_76 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_LeftDivides'737'_76 = erased
-- Data.Nat.GCD.Algebra.LeftIdentity
d_LeftIdentity_78 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftIdentity_78 = erased
-- Data.Nat.GCD.Algebra.LeftInverse
d_LeftInverse_80 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_LeftInverse_80 = erased
-- Data.Nat.GCD.Algebra.LeftInvertible
d_LeftInvertible_82 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_LeftInvertible_82 = erased
-- Data.Nat.GCD.Algebra.LeftSemimedial
d_LeftSemimedial_84 :: (Integer -> Integer -> Integer) -> ()
d_LeftSemimedial_84 = erased
-- Data.Nat.GCD.Algebra.LeftZero
d_LeftZero_86 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_LeftZero_86 = erased
-- Data.Nat.GCD.Algebra.Medial
d_Medial_88 :: (Integer -> Integer -> Integer) -> ()
d_Medial_88 = erased
-- Data.Nat.GCD.Algebra.MiddleBol
d_MiddleBol_90 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_MiddleBol_90 = erased
-- Data.Nat.GCD.Algebra.RightAlternative
d_RightAlternative_92 :: (Integer -> Integer -> Integer) -> ()
d_RightAlternative_92 = erased
-- Data.Nat.GCD.Algebra.RightBol
d_RightBol_94 :: (Integer -> Integer -> Integer) -> ()
d_RightBol_94 = erased
-- Data.Nat.GCD.Algebra.RightCancellative
d_RightCancellative_96 :: (Integer -> Integer -> Integer) -> ()
d_RightCancellative_96 = erased
-- Data.Nat.GCD.Algebra.RightCongruent
d_RightCongruent_98 :: (Integer -> Integer -> Integer) -> ()
d_RightCongruent_98 = erased
-- Data.Nat.GCD.Algebra.RightConical
d_RightConical_100 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightConical_100 = erased
-- Data.Nat.GCD.Algebra.RightDivides
d_RightDivides_102 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides_102 = erased
-- Data.Nat.GCD.Algebra.RightDividesʳ
d_RightDivides'691'_104 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'691'_104 = erased
-- Data.Nat.GCD.Algebra.RightDividesˡ
d_RightDivides'737'_106 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> ()
d_RightDivides'737'_106 = erased
-- Data.Nat.GCD.Algebra.RightIdentity
d_RightIdentity_108 ::
  Integer -> (Integer -> Integer -> Integer) -> ()
d_RightIdentity_108 = erased
-- Data.Nat.GCD.Algebra.RightInverse
d_RightInverse_110 ::
  Integer ->
  (Integer -> Integer) -> (Integer -> Integer -> Integer) -> ()
d_RightInverse_110 = erased
-- Data.Nat.GCD.Algebra.RightInvertible
d_RightInvertible_112 ::
  Integer -> (Integer -> Integer -> Integer) -> Integer -> ()
d_RightInvertible_112 = erased
-- Data.Nat.GCD.Algebra.RightSemimedial
d_RightSemimedial_114 :: (Integer -> Integer -> Integer) -> ()
d_RightSemimedial_114 = erased
-- Data.Nat.GCD.Algebra.RightZero
d_RightZero_116 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_RightZero_116 = erased
-- Data.Nat.GCD.Algebra.Selective
d_Selective_118 :: (Integer -> Integer -> Integer) -> ()
d_Selective_118 = erased
-- Data.Nat.GCD.Algebra.SelfInverse
d_SelfInverse_120 :: (Integer -> Integer) -> ()
d_SelfInverse_120 = erased
-- Data.Nat.GCD.Algebra.Semimedial
d_Semimedial_122 :: (Integer -> Integer -> Integer) -> ()
d_Semimedial_122 = erased
-- Data.Nat.GCD.Algebra.StarDestructive
d_StarDestructive_124 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarDestructive_124 = erased
-- Data.Nat.GCD.Algebra.StarExpansive
d_StarExpansive_126 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarExpansive_126 = erased
-- Data.Nat.GCD.Algebra.StarLeftDestructive
d_StarLeftDestructive_128 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftDestructive_128 = erased
-- Data.Nat.GCD.Algebra.StarLeftExpansive
d_StarLeftExpansive_130 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarLeftExpansive_130 = erased
-- Data.Nat.GCD.Algebra.StarRightDestructive
d_StarRightDestructive_132 ::
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightDestructive_132 = erased
-- Data.Nat.GCD.Algebra.StarRightExpansive
d_StarRightExpansive_134 ::
  Integer ->
  (Integer -> Integer -> Integer) ->
  (Integer -> Integer -> Integer) -> (Integer -> Integer) -> ()
d_StarRightExpansive_134 = erased
-- Data.Nat.GCD.Algebra.Zero
d_Zero_136 :: Integer -> (Integer -> Integer -> Integer) -> ()
d_Zero_136 = erased
-- Data.Nat.GCD.gcd′
d_gcd'8242'_142 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 -> Integer
d_gcd'8242'_142 v0 v1 ~v2 ~v3 = du_gcd'8242'_142 v0 v1
du_gcd'8242'_142 :: Integer -> Integer -> Integer
du_gcd'8242'_142 v0 v1
  = case coe v1 of
      0 -> coe v0
      _ -> coe
             du_gcd'8242'_142 (coe v1)
             (coe MAlonzo.Code.Data.Nat.Base.du__'37'__330 (coe v0) (coe v1))
-- Data.Nat.GCD.gcd
d_gcd_154 :: Integer -> Integer -> Integer
d_gcd_154 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                   (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe eqInt (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe eqInt (coe v0) (coe v1)))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe seq (coe v4) (coe v0)
                else (let v5
                            = seq
                                (coe v4)
                                (let v5 = ltInt (coe v0) (coe v1) in
                                 coe
                                   (if coe v5
                                      then coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                   (coe v0)))
                                      else coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                      (coe v0) (coe v1)))))) in
                      coe
                        (case coe v5 of
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
                             -> coe du_gcd'8242'_142 (coe v1) (coe v0)
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
                             -> coe v0
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
                             -> coe du_gcd'8242'_142 (coe v0) (coe v1)
                           _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.gcd′[m,n]∣m,n
d_gcd'8242''91'm'44'n'93''8739'm'44'n_188 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gcd'8242''91'm'44'n'93''8739'm'44'n_188 v0 v1 ~v2 ~v3
  = du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 v0 v1
du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 v0 v1
  = case coe v1 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166)
             (coe MAlonzo.Code.Data.Nat.Divisibility.du__'8739'0_282)
      _ -> let v2
                 = coe
                     du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 (coe v1)
                     (coe remInt (coe v0) (coe v1)) in
           coe
             (case coe v2 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Data.Nat.Divisibility.du_'8739'n'8739'm'37'n'8658''8739'm_670
                          (coe du_gcd'8242'_142 (coe v1) (coe remInt (coe v0) (coe v1)))
                          (coe v0) (coe v3) (coe v4))
                       (coe v3)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.gcd′-greatest
d_gcd'8242''45'greatest_222 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'8242''45'greatest_222 v0 v1 v2 ~v3 ~v4 v5 v6
  = du_gcd'8242''45'greatest_222 v0 v1 v2 v5 v6
du_gcd'8242''45'greatest_222 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'8242''45'greatest_222 v0 v1 v2 v3 v4
  = case coe v1 of
      0 -> coe v3
      _ -> coe
             du_gcd'8242''45'greatest_222 (coe v1)
             (coe remInt (coe v0) (coe v1)) (coe v2) (coe v4)
             (coe
                MAlonzo.Code.Data.Nat.Divisibility.du_'37''45'pres'737''45''8739'_694
                (coe v1) (coe v2) (coe v3) (coe v4))
-- Data.Nat.GCD.gcd[m,n]∣m
d_gcd'91'm'44'n'93''8739'm_250 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'n'93''8739'm_250 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                   (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe eqInt (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe eqInt (coe v0) (coe v1)))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       seq (coe v4)
                       (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166)
                else (let v5
                            = seq
                                (coe v4)
                                (let v5 = ltInt (coe v0) (coe v1) in
                                 coe
                                   (if coe v5
                                      then coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                   (coe v0)))
                                      else coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                      (coe v0) (coe v1)))))) in
                      coe
                        (case coe v5 of
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 (coe v1) (coe v0))
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
                             -> coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 (coe v0) (coe v1))
                           _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.gcd[m,n]∣n
d_gcd'91'm'44'n'93''8739'n_280 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'n'93''8739'n_280 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased
              (\ v2 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                   (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe eqInt (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe eqInt (coe v0) (coe v1)))) in
    coe
      (case coe v2 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v3 v4
           -> if coe v3
                then coe
                       seq (coe v4)
                       (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166)
                else (let v5
                            = seq
                                (coe v4)
                                (let v5 = ltInt (coe v0) (coe v1) in
                                 coe
                                   (if coe v5
                                      then coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                   (coe v0)))
                                      else coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v5))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                      (coe v0) (coe v1)))))) in
                      coe
                        (case coe v5 of
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v6
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                  (coe du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 (coe v1) (coe v0))
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v7
                             -> coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v8
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe du_gcd'8242''91'm'44'n'93''8739'm'44'n_188 (coe v0) (coe v1))
                           _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.gcd-greatest
d_gcd'45'greatest_312 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'45'greatest_312 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
              erased
              (\ v5 ->
                 coe
                   MAlonzo.Code.Data.Nat.Properties.du_'8801''8658''8801''7495'_3022
                   (coe v0))
              (coe
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                 (coe eqInt (coe v0) (coe v1))
                 (coe
                    MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                    (coe eqInt (coe v0) (coe v1)))) in
    coe
      (case coe v5 of
         MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v6 v7
           -> if coe v6
                then coe seq (coe v7) (coe v3)
                else (let v8
                            = seq
                                (coe v7)
                                (let v8 = ltInt (coe v0) (coe v1) in
                                 coe
                                   (if coe v8
                                      then coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'60''7495''8658''60'_3064
                                                   (coe v0)))
                                      else coe
                                             seq
                                             (coe
                                                MAlonzo.Code.Relation.Nullary.Reflects.d_T'45'reflects_70
                                                (coe v8))
                                             (coe
                                                MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188
                                                (coe
                                                   MAlonzo.Code.Data.Nat.Properties.du_'8804''8743''8802''8658''60'_3300
                                                   (coe v0)
                                                   (coe
                                                      MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_3284
                                                      (coe v0) (coe v1)))))) in
                      coe
                        (case coe v8 of
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'60'_172 v9
                             -> coe
                                  du_gcd'8242''45'greatest_222 (coe v1) (coe v0) (coe v2) (coe v4)
                                  (coe v3)
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'8776'_180 v10
                             -> coe v3
                           MAlonzo.Code.Relation.Binary.Definitions.C_tri'62'_188 v11
                             -> coe
                                  du_gcd'8242''45'greatest_222 (coe v0) (coe v1) (coe v2) (coe v3)
                                  (coe v4)
                           _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.gcd[0,0]≡0
d_gcd'91'0'44'0'93''8801'0_354 ::
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'0'44'0'93''8801'0_354 = erased
-- Data.Nat.GCD.gcd[m,n]≢0
d_gcd'91'm'44'n'93''8802'0_360 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_gcd'91'm'44'n'93''8802'0_360 = erased
-- Data.Nat.GCD.gcd[m,n]≡0⇒m≡0
d_gcd'91'm'44'n'93''8801'0'8658'm'8801'0_386 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'm'44'n'93''8801'0'8658'm'8801'0_386 = erased
-- Data.Nat.GCD.gcd[m,n]≡0⇒n≡0
d_gcd'91'm'44'n'93''8801'0'8658'n'8801'0_402 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'm'44'n'93''8801'0'8658'n'8801'0_402 = erased
-- Data.Nat.GCD.gcd-comm
d_gcd'45'comm_414 ::
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'comm_414 = erased
-- Data.Nat.GCD.gcd-assoc
d_gcd'45'assoc_420 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'assoc_420 = erased
-- Data.Nat.GCD._.gcd[gcd[m,n],p]|m
d_gcd'91'gcd'91'm'44'n'93''44'p'93''124'm_432 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'gcd'91'm'44'n'93''44'p'93''124'm_432 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
      (d_gcd_154 (coe d_gcd_154 (coe v0) (coe v1)) (coe v2)) v0
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
         (d_gcd_154 (coe d_gcd_154 (coe v0) (coe v1)) (coe v2))
         (d_gcd_154 (coe v0) (coe v1)) v0
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
            (d_gcd_154 (coe v0) (coe v1)) v0 v0
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
               (coe v0))
            (d_gcd'91'm'44'n'93''8739'm_250 (coe v0) (coe v1)))
         (d_gcd'91'm'44'n'93''8739'm_250
            (coe d_gcd_154 (coe v0) (coe v1)) (coe v2)))
-- Data.Nat.GCD._.gcd[gcd[m,n],p]∣n
d_gcd'91'gcd'91'm'44'n'93''44'p'93''8739'n_434 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'gcd'91'm'44'n'93''44'p'93''8739'n_434 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
      (d_gcd_154 (coe d_gcd_154 (coe v0) (coe v1)) (coe v2)) v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
         (d_gcd_154 (coe d_gcd_154 (coe v0) (coe v1)) (coe v2))
         (d_gcd_154 (coe v0) (coe v1)) v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
            (d_gcd_154 (coe v0) (coe v1)) v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
               (coe v1))
            (d_gcd'91'm'44'n'93''8739'n_280 (coe v0) (coe v1)))
         (d_gcd'91'm'44'n'93''8739'm_250
            (coe d_gcd_154 (coe v0) (coe v1)) (coe v2)))
-- Data.Nat.GCD._.gcd[gcd[m,n],p]∣p
d_gcd'91'gcd'91'm'44'n'93''44'p'93''8739'p_436 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'gcd'91'm'44'n'93''44'p'93''8739'p_436 v0 v1 v2
  = coe
      d_gcd'91'm'44'n'93''8739'n_280 (coe d_gcd_154 (coe v0) (coe v1))
      (coe v2)
-- Data.Nat.GCD._.gcd[m,gcd[n,p]]∣m
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'm_438 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'm_438 v0 v1 v2
  = coe
      d_gcd'91'm'44'n'93''8739'm_250 (coe v0)
      (coe d_gcd_154 (coe v1) (coe v2))
-- Data.Nat.GCD._.gcd[m,gcd[n,p]]∣n
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'n_440 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'n_440 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
      (d_gcd_154 (coe v0) (coe d_gcd_154 (coe v1) (coe v2))) v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
         (d_gcd_154 (coe v0) (coe d_gcd_154 (coe v1) (coe v2)))
         (d_gcd_154 (coe v1) (coe v2)) v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
            (d_gcd_154 (coe v1) (coe v2)) v1 v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
               (coe v1))
            (d_gcd'91'm'44'n'93''8739'm_250 (coe v1) (coe v2)))
         (d_gcd'91'm'44'n'93''8739'n_280
            (coe v0) (coe d_gcd_154 (coe v1) (coe v2))))
-- Data.Nat.GCD._.gcd[m,gcd[n,p]]∣p
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'p_442 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'm'44'gcd'91'n'44'p'93''93''8739'p_442 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
      (d_gcd_154 (coe v0) (coe d_gcd_154 (coe v1) (coe v2))) v2
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
         (d_gcd_154 (coe v0) (coe d_gcd_154 (coe v1) (coe v2)))
         (d_gcd_154 (coe v1) (coe v2)) v2
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8739'_334
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
            (d_gcd_154 (coe v1) (coe v2)) v2 v2
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Data.Nat.Divisibility.d_'8739''45'isPreorder_200))
               (coe v2))
            (d_gcd'91'm'44'n'93''8739'n_280 (coe v1) (coe v2)))
         (d_gcd'91'm'44'n'93''8739'n_280
            (coe v0) (coe d_gcd_154 (coe v1) (coe v2))))
-- Data.Nat.GCD.gcd-identityˡ
d_gcd'45'identity'737'_444 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'identity'737'_444 = erased
-- Data.Nat.GCD.gcd-identityʳ
d_gcd'45'identity'691'_446 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'identity'691'_446 = erased
-- Data.Nat.GCD.gcd-identity
d_gcd'45'identity_448 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gcd'45'identity_448
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.GCD.gcd-zeroˡ
d_gcd'45'zero'737'_450 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'zero'737'_450 = erased
-- Data.Nat.GCD._.gcd[1,n]∣1
d_gcd'91'1'44'n'93''8739'1_458 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'1'44'n'93''8739'1_458 v0
  = coe d_gcd'91'm'44'n'93''8739'm_250 (coe (1 :: Integer)) (coe v0)
-- Data.Nat.GCD._.1∣gcd[1,n]
d_1'8739'gcd'91'1'44'n'93'_460 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_1'8739'gcd'91'1'44'n'93'_460 v0
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.d_1'8739'__294
      (coe d_gcd_154 (coe (1 :: Integer)) (coe v0))
-- Data.Nat.GCD.gcd-zeroʳ
d_gcd'45'zero'691'_462 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'zero'691'_462 = erased
-- Data.Nat.GCD._.gcd[n,1]∣1
d_gcd'91'n'44'1'93''8739'1_470 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'91'n'44'1'93''8739'1_470 v0
  = coe d_gcd'91'm'44'n'93''8739'n_280 (coe v0) (coe (1 :: Integer))
-- Data.Nat.GCD._.1∣gcd[n,1]
d_1'8739'gcd'91'n'44'1'93'_472 ::
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_1'8739'gcd'91'n'44'1'93'_472 v0
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.d_1'8739'__294
      (coe d_gcd_154 (coe v0) (coe (1 :: Integer)))
-- Data.Nat.GCD.gcd-zero
d_gcd'45'zero_474 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_gcd'45'zero_474
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased erased
-- Data.Nat.GCD.gcd-universality
d_gcd'45'universality_486 ::
  Integer ->
  Integer ->
  Integer ->
  (Integer ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20) ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'45'universality_486 = erased
-- Data.Nat.GCD.gcd[cm,cn]/c≡gcd[m,n]
d_gcd'91'cm'44'cn'93''47'c'8801'gcd'91'm'44'n'93'_512 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_gcd'91'cm'44'cn'93''47'c'8801'gcd'91'm'44'n'93'_512 = erased
-- Data.Nat.GCD._.forwards
d_forwards_526 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_forwards_526 v0 v1 v2 ~v3 v4 v5 = du_forwards_526 v0 v1 v2 v4 v5
du_forwards_526 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_forwards_526 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             d_gcd'45'greatest_312 (coe mulInt (coe v0) (coe v1))
             (coe mulInt (coe v0) (coe v2)) (coe mulInt (coe v0) (coe v3))
             (coe
                MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'mono'691''45''8739'_444
                v5)
             (coe
                MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'mono'691''45''8739'_444
                v6)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD._.backwards
d_backwards_536 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_backwards_536 v0 v1 v2 ~v3 v4 v5
  = du_backwards_536 v0 v1 v2 v4 v5
du_backwards_536 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_backwards_536 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Data.Nat.Divisibility.du_m'8739'n'47'o'8658'm'42'o'8739'n_600
              (coe v0) (coe v3)
              (coe
                 d_gcd'45'greatest_312 (coe mulInt (coe v0) (coe v1))
                 (coe mulInt (coe v0) (coe v2)) (coe v0)
                 (coe
                    MAlonzo.Code.Data.Nat.Divisibility.du_m'8739'm'42'n_364 (coe v1))
                 (coe
                    MAlonzo.Code.Data.Nat.Divisibility.du_m'8739'm'42'n_364 (coe v2)))
              (coe v4) in
    coe
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'cancel'737''45''8739'_458
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'trans_168 (coe v5)
               (coe
                  d_gcd'91'm'44'n'93''8739'm_250 (coe mulInt (coe v0) (coe v1))
                  (coe mulInt (coe v0) (coe v2)))))
         (coe
            MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'cancel'737''45''8739'_458
            (coe
               MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'trans_168 (coe v5)
               (coe
                  d_gcd'91'm'44'n'93''8739'n_280 (coe mulInt (coe v0) (coe v1))
                  (coe mulInt (coe v0) (coe v2))))))
-- Data.Nat.GCD.c*gcd[m,n]≡gcd[cm,cn]
d_c'42'gcd'91'm'44'n'93''8801'gcd'91'cm'44'cn'93'_554 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_c'42'gcd'91'm'44'n'93''8801'gcd'91'cm'44'cn'93'_554 = erased
-- Data.Nat.GCD.gcd[m,n]≤n
d_gcd'91'm'44'n'93''8804'n_578 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_gcd'91'm'44'n'93''8804'n_578 v0 v1 ~v2
  = du_gcd'91'm'44'n'93''8804'n_578 v0 v1
du_gcd'91'm'44'n'93''8804'n_578 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_gcd'91'm'44'n'93''8804'n_578 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.du_'8739''8658''8804'_142
      (coe d_gcd_154 (coe v0) (coe v1))
      (coe d_gcd'91'm'44'n'93''8739'n_280 (coe v0) (coe v1))
-- Data.Nat.GCD.n/gcd[m,n]≢0
d_n'47'gcd'91'm'44'n'93''8802'0_592 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_n'47'gcd'91'm'44'n'93''8802'0_592 = erased
-- Data.Nat.GCD.m/gcd[m,n]≢0
d_m'47'gcd'91'm'44'n'93''8802'0_606 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_m'47'gcd'91'm'44'n'93''8802'0_606 = erased
-- Data.Nat.GCD.GCD.GCD
d_GCD_624 a0 a1 a2 = ()
data T_GCD_624
  = C_is_648 MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
             (Integer ->
              MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
              MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20)
-- Data.Nat.GCD.GCD.GCD.commonDivisor
d_commonDivisor_638 ::
  T_GCD_624 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_commonDivisor_638 v0
  = case coe v0 of
      C_is_648 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.GCD.GCD.greatest
d_greatest_642 ::
  T_GCD_624 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_greatest_642 v0
  = case coe v0 of
      C_is_648 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.GCD.GCD.gcd∣m
d_gcd'8739'm_644 ::
  Integer ->
  Integer ->
  Integer ->
  T_GCD_624 -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'8739'm_644 ~v0 ~v1 ~v2 v3 = du_gcd'8739'm_644 v3
du_gcd'8739'm_644 ::
  T_GCD_624 -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'8739'm_644 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe d_commonDivisor_638 (coe v0))
-- Data.Nat.GCD.GCD.GCD.gcd∣n
d_gcd'8739'n_646 ::
  Integer ->
  Integer ->
  Integer ->
  T_GCD_624 -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_gcd'8739'n_646 ~v0 ~v1 ~v2 v3 = du_gcd'8739'n_646 v3
du_gcd'8739'n_646 ::
  T_GCD_624 -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_gcd'8739'n_646 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe d_commonDivisor_638 (coe v0))
-- Data.Nat.GCD.GCD.unique
d_unique_658 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  T_GCD_624 ->
  T_GCD_624 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_unique_658 = erased
-- Data.Nat.GCD.GCD.sym
d_sym_670 ::
  Integer -> Integer -> Integer -> T_GCD_624 -> T_GCD_624
d_sym_670 ~v0 ~v1 ~v2 v3 = du_sym_670 v3
du_sym_670 :: T_GCD_624 -> T_GCD_624
du_sym_670 v0
  = coe
      C_is_648
      (coe
         MAlonzo.Code.Data.Product.Base.du_swap_370
         (coe d_commonDivisor_638 (coe v0)))
      (coe
         (\ v1 v2 ->
            coe
              d_greatest_642 v0 v1
              (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v2))))
-- Data.Nat.GCD.GCD.refl
d_refl_676 :: Integer -> T_GCD_624
d_refl_676 ~v0 = du_refl_676
du_refl_676 :: T_GCD_624
du_refl_676
  = coe
      C_is_648
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166)
         (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166))
      (coe
         (\ v0 v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)))
-- Data.Nat.GCD.GCD.base
d_base_680 :: Integer -> T_GCD_624
d_base_680 ~v0 = du_base_680
du_base_680 :: T_GCD_624
du_base_680
  = coe
      C_is_648
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Data.Nat.Divisibility.du__'8739'0_282)
         (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166))
      (coe
         (\ v0 v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
-- Data.Nat.GCD.GCD.step
d_step_690 ::
  Integer -> Integer -> Integer -> T_GCD_624 -> T_GCD_624
d_step_690 ~v0 ~v1 ~v2 v3 = du_step_690 v3
du_step_690 :: T_GCD_624 -> T_GCD_624
du_step_690 v0
  = let v1 = d_commonDivisor_638 (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
           -> coe
                C_is_648
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                   (coe
                      MAlonzo.Code.Data.Nat.Divisibility.du_'8739'm'8739'n'8658''8739'm'43'n_306
                      (coe v2) (coe v3)))
                (coe du_greatest'8242'_710 (coe v0))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.Nat.GCD.GCD._.greatest′
d_greatest'8242'_710 ::
  Integer ->
  Integer ->
  Integer ->
  T_GCD_624 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
d_greatest'8242'_710 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7
  = du_greatest'8242'_710 v3 v6 v7
du_greatest'8242'_710 ::
  T_GCD_624 ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20
du_greatest'8242'_710 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             d_greatest_642 v0 v1
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                (coe
                   MAlonzo.Code.Data.Nat.Divisibility.du_'8739'm'43'n'8739'm'8658''8739'n_312
                   (coe v4) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.gcd-GCD
d_gcd'45'GCD_724 :: Integer -> Integer -> T_GCD_624
d_gcd'45'GCD_724 v0 v1
  = coe
      C_is_648
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe d_gcd'91'm'44'n'93''8739'm_250 (coe v0) (coe v1))
         (coe d_gcd'91'm'44'n'93''8739'n_280 (coe v0) (coe v1)))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Data.Product.Base.du_uncurry'8242'_320
              (d_gcd'45'greatest_312 (coe v0) (coe v1) (coe v2))))
-- Data.Nat.GCD.mkGCD
d_mkGCD_736 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mkGCD_736 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_gcd_154 (coe v0) (coe v1))
      (coe d_gcd'45'GCD_724 (coe v0) (coe v1))
-- Data.Nat.GCD.gcd?
d_gcd'63'_748 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_gcd'63'_748 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
      (\ v3 -> coe du_'46'extendedlambda0_756 (coe v0) (coe v1)) erased
      (coe
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__3032
         (coe d_gcd_154 (coe v0) (coe v1)) (coe v2))
-- Data.Nat.GCD..extendedlambda0
d_'46'extendedlambda0_756 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_GCD_624
d_'46'extendedlambda0_756 v0 v1 ~v2 ~v3
  = du_'46'extendedlambda0_756 v0 v1
du_'46'extendedlambda0_756 :: Integer -> Integer -> T_GCD_624
du_'46'extendedlambda0_756 v0 v1
  = coe d_gcd'45'GCD_724 (coe v0) (coe v1)
-- Data.Nat.GCD.GCD-*
d_GCD'45''42'_768 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_GCD_624 -> T_GCD_624
d_GCD'45''42'_768 ~v0 ~v1 ~v2 v3 ~v4 v5 = du_GCD'45''42'_768 v3 v5
du_GCD'45''42'_768 :: Integer -> T_GCD_624 -> T_GCD_624
du_GCD'45''42'_768 v0 v1
  = case coe v1 of
      C_is_648 v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> coe
                    C_is_648
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'cancel'691''45''8739'_480
                          v4)
                       (coe
                          MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'cancel'691''45''8739'_480
                          v5))
                    (coe
                       (\ v6 v7 ->
                          coe
                            MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'cancel'691''45''8739'_480
                            (coe
                               v3 (mulInt (coe v6) (coe v0))
                               (coe
                                  MAlonzo.Code.Data.Product.Base.du_map_128
                                  (coe
                                     MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'mono'737''45''8739'_450)
                                  (coe
                                     (\ v8 ->
                                        coe
                                          MAlonzo.Code.Data.Nat.Divisibility.du_'42''45'mono'737''45''8739'_450))
                                  (coe v7)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.GCD-/
d_GCD'45''47'_788 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_112 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  T_GCD_624 -> T_GCD_624
d_GCD'45''47'_788 ~v0 ~v1 ~v2 v3 ~v4 v5 v6 v7 v8
  = du_GCD'45''47'_788 v3 v5 v6 v7 v8
du_GCD'45''47'_788 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__20 ->
  T_GCD_624 -> T_GCD_624
du_GCD'45''47'_788 v0 v1 v2 v3 v4
  = coe
      seq (coe v1)
      (coe
         seq (coe v2)
         (coe seq (coe v3) (coe du_GCD'45''42'_768 (coe v0) (coe v4))))
-- Data.Nat.GCD.GCD-/gcd
d_GCD'45''47'gcd_826 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> T_GCD_624
d_GCD'45''47'gcd_826 v0 v1 ~v2 = du_GCD'45''47'gcd_826 v0 v1
du_GCD'45''47'gcd_826 :: Integer -> Integer -> T_GCD_624
du_GCD'45''47'gcd_826 v0 v1
  = coe
      du_GCD'45''47'_788 (coe d_gcd_154 (coe v0) (coe v1))
      (coe d_gcd'91'm'44'n'93''8739'm_250 (coe v0) (coe v1))
      (coe d_gcd'91'm'44'n'93''8739'n_280 (coe v0) (coe v1))
      (coe MAlonzo.Code.Data.Nat.Divisibility.du_'8739''45'refl_166)
      (coe d_gcd'45'GCD_724 (coe v0) (coe v1))
-- Data.Nat.GCD.Bézout.Identity.Identity
d_Identity_846 a0 a1 a2 = ()
data T_Identity_846
  = C_'43''45'_860 Integer Integer | C_'45''43'_868 Integer Integer
-- Data.Nat.GCD.Bézout.Identity.sym
d_sym_872 ::
  Integer -> Integer -> Integer -> T_Identity_846 -> T_Identity_846
d_sym_872 ~v0 ~v1 ~v2 v3 = du_sym_872 v3
du_sym_872 :: T_Identity_846 -> T_Identity_846
du_sym_872 v0
  = case coe v0 of
      C_'43''45'_860 v1 v2 -> coe C_'45''43'_868 v2 v1
      C_'45''43'_868 v1 v2 -> coe C_'43''45'_860 v2 v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.Bézout.Identity.refl
d_refl_888 :: Integer -> T_Identity_846
d_refl_888 ~v0 = du_refl_888
du_refl_888 :: T_Identity_846
du_refl_888 = coe C_'45''43'_868 (0 :: Integer) (1 :: Integer)
-- Data.Nat.GCD.Bézout.Identity.base
d_base_892 :: Integer -> T_Identity_846
d_base_892 ~v0 = du_base_892
du_base_892 :: T_Identity_846
du_base_892 = coe C_'45''43'_868 (0 :: Integer) (1 :: Integer)
-- Data.Nat.GCD.Bézout.Identity._⊕_
d__'8853'__894 :: Integer -> Integer -> Integer
d__'8853'__894 v0 v1
  = coe addInt (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v1)
-- Data.Nat.GCD.Bézout.Identity.step
d_step_906 ::
  Integer -> Integer -> Integer -> T_Identity_846 -> T_Identity_846
d_step_906 ~v0 ~v1 ~v2 v3 = du_step_906 v3
du_step_906 :: T_Identity_846 -> T_Identity_846
du_step_906 v0
  = case coe v0 of
      C_'43''45'_860 v1 v2
        -> let v4
                 = MAlonzo.Code.Data.Nat.Base.d_compare_474 (coe v1) (coe v2) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_less_458 v6
                  -> coe
                       C_'43''45'_860
                       (d__'8853'__894
                          (coe mulInt (coe (2 :: Integer)) (coe v1)) (coe v6))
                       (d__'8853'__894 (coe v1) (coe v6))
                MAlonzo.Code.Data.Nat.Base.C_equal_462
                  -> coe C_'43''45'_860 (mulInt (coe (2 :: Integer)) (coe v1)) v1
                MAlonzo.Code.Data.Nat.Base.C_greater_468 v6
                  -> coe
                       C_'43''45'_860
                       (d__'8853'__894
                          (coe mulInt (coe (2 :: Integer)) (coe v2)) (coe v6))
                       v2
                _ -> MAlonzo.RTE.mazUnreachableError)
      C_'45''43'_868 v1 v2
        -> let v4
                 = MAlonzo.Code.Data.Nat.Base.d_compare_474 (coe v1) (coe v2) in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Nat.Base.C_less_458 v6
                  -> coe
                       C_'45''43'_868
                       (d__'8853'__894
                          (coe mulInt (coe (2 :: Integer)) (coe v1)) (coe v6))
                       (d__'8853'__894 (coe v1) (coe v6))
                MAlonzo.Code.Data.Nat.Base.C_equal_462
                  -> coe C_'45''43'_868 (mulInt (coe (2 :: Integer)) (coe v1)) v1
                MAlonzo.Code.Data.Nat.Base.C_greater_468 v6
                  -> coe
                       C_'45''43'_868
                       (d__'8853'__894
                          (coe mulInt (coe (2 :: Integer)) (coe v2)) (coe v6))
                       v2
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.Bézout.Lemma.Lemma
d_Lemma_1022 a0 a1 = ()
data T_Lemma_1022 = C_result_1034 Integer T_GCD_624 T_Identity_846
-- Data.Nat.GCD.Bézout.Lemma.sym
d_sym_1036 :: Integer -> Integer -> T_Lemma_1022 -> T_Lemma_1022
d_sym_1036 ~v0 ~v1 v2 = du_sym_1036 v2
du_sym_1036 :: T_Lemma_1022 -> T_Lemma_1022
du_sym_1036 v0
  = case coe v0 of
      C_result_1034 v1 v2 v3
        -> coe
             C_result_1034 (coe v1) (coe du_sym_670 (coe v2))
             (coe du_sym_872 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.Bézout.Lemma.base
d_base_1046 :: Integer -> T_Lemma_1022
d_base_1046 v0
  = coe C_result_1034 (coe v0) (coe du_base_680) (coe du_base_892)
-- Data.Nat.GCD.Bézout.Lemma.refl
d_refl_1052 :: Integer -> T_Lemma_1022
d_refl_1052 v0
  = coe C_result_1034 (coe v0) (coe du_refl_676) (coe du_refl_888)
-- Data.Nat.GCD.Bézout.Lemma.stepˡ
d_step'737'_1060 ::
  Integer -> Integer -> T_Lemma_1022 -> T_Lemma_1022
d_step'737'_1060 ~v0 ~v1 v2 = du_step'737'_1060 v2
du_step'737'_1060 :: T_Lemma_1022 -> T_Lemma_1022
du_step'737'_1060 v0
  = case coe v0 of
      C_result_1034 v1 v2 v3
        -> coe
             C_result_1034 (coe v1) (coe du_step_690 (coe v2))
             (coe du_step_906 (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.Bézout.Lemma.stepʳ
d_step'691'_1076 ::
  Integer -> Integer -> T_Lemma_1022 -> T_Lemma_1022
d_step'691'_1076 ~v0 ~v1 v2 = du_step'691'_1076 v2
du_step'691'_1076 :: T_Lemma_1022 -> T_Lemma_1022
du_step'691'_1076 v0
  = coe
      du_sym_1036 (coe du_step'737'_1060 (coe du_sym_1036 (coe v0)))
-- Data.Nat.GCD.Bézout.lemma
d_lemma_1082 :: Integer -> Integer -> T_Lemma_1022
d_lemma_1082 v0 v1
  = coe
      MAlonzo.Code.Induction.du_build_36
      (coe
         MAlonzo.Code.Induction.Lexicographic.du_'91'_'8855'_'93'_166
         (\ v2 v3 v4 v5 ->
            coe MAlonzo.Code.Induction.WellFounded.du_wfRecBuilder_160 v3 v5)
         (\ v2 v3 v4 v5 ->
            coe MAlonzo.Code.Induction.WellFounded.du_wfRecBuilder_160 v3 v5))
      erased (coe du_gcd'8243'_1100)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))
-- Data.Nat.GCD.Bézout._.P
d_P_1092 ::
  Integer -> Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d_P_1092 = erased
-- Data.Nat.GCD.Bézout._.gcd″
d_gcd'8243'_1100 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Lemma_1022
d_gcd'8243'_1100 ~v0 ~v1 v2 v3 = du_gcd'8243'_1100 v2 v3
du_gcd'8243'_1100 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_Lemma_1022
du_gcd'8243'_1100 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v2 of
             0 -> coe d_base_1046 (coe v3)
             _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
                  coe
                    (case coe v3 of
                       0 -> coe du_sym_1036 (coe d_base_1046 (coe v2))
                       _ -> let v5 = subInt (coe v3) (coe (1 :: Integer)) in
                            coe
                              (let v6
                                     = MAlonzo.Code.Data.Nat.Base.d_compare_474 (coe v4) (coe v5) in
                               coe
                                 (case coe v6 of
                                    MAlonzo.Code.Data.Nat.Base.C_less_458 v8
                                      -> coe
                                           du_step'737'_1060
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v1
                                              (addInt (coe (1 :: Integer)) (coe v8))
                                              (MAlonzo.Code.Data.Nat.GCD.Lemmas.d_lem'8321'_70
                                                 (coe v8) (coe v4)))
                                    MAlonzo.Code.Data.Nat.Base.C_equal_462
                                      -> coe d_refl_1052 (coe v2)
                                    MAlonzo.Code.Data.Nat.Base.C_greater_468 v8
                                      -> coe
                                           du_step'691'_1076
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v1
                                              (addInt (coe (1 :: Integer)) (coe v8))
                                              (MAlonzo.Code.Data.Nat.GCD.Lemmas.d_lem'8321'_70
                                                 (coe v8) (coe v5))
                                              v3)
                                    _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.GCD.Bézout.identity
d_identity_1170 ::
  Integer -> Integer -> Integer -> T_GCD_624 -> T_Identity_846
d_identity_1170 v0 v1 ~v2 ~v3 = du_identity_1170 v0 v1
du_identity_1170 :: Integer -> Integer -> T_Identity_846
du_identity_1170 v0 v1
  = let v2
          = coe
              du_gcd'8243'_1100
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))
              (coe
                 MAlonzo.Code.Induction.Lexicographic.du_'91'_'8855'_'93'_166
                 (\ v2 v3 v4 v5 ->
                    coe MAlonzo.Code.Induction.WellFounded.du_wfRecBuilder_160 v3 v5)
                 (\ v2 v3 v4 v5 ->
                    coe MAlonzo.Code.Induction.WellFounded.du_wfRecBuilder_160 v3 v5)
                 erased (coe du_gcd'8243'_1100)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1))) in
    coe
      (case coe v2 of
         C_result_1034 v3 v4 v5 -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
