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

module MAlonzo.Code.Data.Nat.DivMod where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.DivMod.Core
import qualified MAlonzo.Code.Data.Nat.Divisibility.Core
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Induction.WellFounded
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Core
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.Nat.DivMod.m≡m%n+[m/n]*n
d_m'8801'm'37'n'43''91'm'47'n'93''42'n_20 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8801'm'37'n'43''91'm'47'n'93''42'n_20 = erased
-- Data.Nat.DivMod.m%n≡m∸m/n*n
d_m'37'n'8801'm'8760'm'47'n'42'n_32 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37'n'8801'm'8760'm'47'n'42'n_32 = erased
-- Data.Nat.DivMod._.m/n*n
d_m'47'n'42'n_42 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_m'47'n'42'n_42 v0 v1 ~v2 = du_m'47'n'42'n_42 v0 v1
du_m'47'n'42'n_42 :: Integer -> Integer -> Integer
du_m'47'n'42'n_42 v0 v1
  = coe
      mulInt
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
      (coe v1)
-- Data.Nat.DivMod.%-congˡ
d_'37''45'cong'737'_48 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'cong'737'_48 = erased
-- Data.Nat.DivMod.%-congʳ
d_'37''45'cong'691'_54 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'cong'691'_54 = erased
-- Data.Nat.DivMod.n%1≡0
d_n'37'1'8801'0_58 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'37'1'8801'0_58 = erased
-- Data.Nat.DivMod.n%n≡0
d_n'37'n'8801'0_64 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'37'n'8801'0_64 = erased
-- Data.Nat.DivMod.m%n%n≡m%n
d_m'37'n'37'n'8801'm'37'n_74 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37'n'37'n'8801'm'37'n_74 = erased
-- Data.Nat.DivMod.[m+n]%n≡m%n
d_'91'm'43'n'93''37'n'8801'm'37'n_86 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'n'93''37'n'8801'm'37'n_86 = erased
-- Data.Nat.DivMod.[m+kn]%n≡m%n
d_'91'm'43'kn'93''37'n'8801'm'37'n_100 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'43'kn'93''37'n'8801'm'37'n_100 = erased
-- Data.Nat.DivMod.m≤n⇒[n∸m]%m≡n%m
d_m'8804'n'8658''91'n'8760'm'93''37'm'8801'n'37'm_118 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658''91'n'8760'm'93''37'm'8801'n'37'm_118 = erased
-- Data.Nat.DivMod.m*n≤o⇒[o∸m*n]%n≡o%n
d_m'42'n'8804'o'8658''91'o'8760'm'42'n'93''37'n'8801'o'37'n_136 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'8804'o'8658''91'o'8760'm'42'n'93''37'n'8801'o'37'n_136
  = erased
-- Data.Nat.DivMod.m∣n⇒o%n%m≡o%m
d_m'8739'n'8658'o'37'n'37'm'8801'o'37'm_158 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8739'n'8658'o'37'n'37'm'8801'o'37'm_158 = erased
-- Data.Nat.DivMod._.pm
d_pm_172 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_pm_172 v0 ~v1 ~v2 v3 ~v4 = du_pm_172 v0 v3
du_pm_172 :: Integer -> Integer -> Integer
du_pm_172 v0 v1 = coe mulInt (coe v1) (coe v0)
-- Data.Nat.DivMod._.lem
d_lem_174 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lem_174 v0 v1 ~v2 v3 ~v4 = du_lem_174 v0 v1 v3
du_lem_174 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lem_174 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v5))
      (mulInt
         (coe
            mulInt
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
               (coe du_pm_172 (coe v0) (coe v2)))
            (coe v2))
         (coe v0))
      v1
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7)
         (mulInt
            (coe
               mulInt
               (coe
                  MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                  (coe du_pm_172 (coe v0) (coe v2)))
               (coe v2))
            (coe v0))
         (mulInt
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
               (coe du_pm_172 (coe v0) (coe v2)))
            (coe du_pm_172 (coe v0) (coe v2)))
         v1
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
               (\ v3 v4 v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v6
                    v7))
            (mulInt
               (coe
                  MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                  (coe du_pm_172 (coe v0) (coe v2)))
               (coe du_pm_172 (coe v0) (coe v2)))
            (addInt
               (coe
                  MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                  (coe du_pm_172 (coe v0) (coe v2)))
               (coe
                  mulInt
                  (coe
                     MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                     (coe du_pm_172 (coe v0) (coe v2)))
                  (coe du_pm_172 (coe v0) (coe v2))))
            v1
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v3 v4 v5 v6 v7 -> v7)
               (addInt
                  (coe
                     MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                     (coe du_pm_172 (coe v0) (coe v2)))
                  (coe
                     mulInt
                     (coe
                        MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                        (coe du_pm_172 (coe v0) (coe v2)))
                     (coe du_pm_172 (coe v0) (coe v2))))
               (addInt
                  (coe
                     MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                     (coe du_pm_172 (coe v0) (coe v2)))
                  (coe
                     mulInt
                     (coe
                        MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                        (coe du_pm_172 (coe v0) (coe v2)))
                     (coe du_pm_172 (coe v0) (coe v2))))
               v1
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
                  (\ v3 v4 v5 v6 v7 -> v7)
                  (addInt
                     (coe
                        MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v1)
                        (coe du_pm_172 (coe v0) (coe v2)))
                     (coe
                        mulInt
                        (coe
                           MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                           (coe du_pm_172 (coe v0) (coe v2)))
                        (coe du_pm_172 (coe v0) (coe v2))))
                  v1 v1
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                        (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                     (coe v1))
                  erased)
               erased)
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344
               (coe
                  mulInt
                  (coe
                     MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v1)
                     (coe du_pm_172 (coe v0) (coe v2)))
                  (coe du_pm_172 (coe v0) (coe v2)))))
         erased)
-- Data.Nat.DivMod.m*n%n≡0
d_m'42'n'37'n'8801'0_184 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'37'n'8801'0_184 = erased
-- Data.Nat.DivMod.m%n<n
d_m'37'n'60'n_196 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'37'n'60'n_196 v0 v1 ~v2 = du_m'37'n'60'n_196 v0 v1
du_m'37'n'60'n_196 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'37'n'60'n_196 v0 v1
  = let v2 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (coe
         MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
         (MAlonzo.Code.Data.Nat.DivMod.Core.d_a'91'mod'8341''93'n'60'n_70
            (coe (0 :: Integer)) (coe v0) (coe v2)))
-- Data.Nat.DivMod.m%n≤n
d_m'37'n'8804'n_208 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'37'n'8804'n_208 v0 v1 ~v2 = du_m'37'n'8804'n_208 v0 v1
du_m'37'n'8804'n_208 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'37'n'8804'n_208 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716
      (coe du_m'37'n'60'n_196 (coe v0) (coe v1))
-- Data.Nat.DivMod.m%n≤m
d_m'37'n'8804'm_220 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'37'n'8804'm_220 v0 v1 ~v2 = du_m'37'n'8804'm_220 v0 v1
du_m'37'n'8804'm_220 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'37'n'8804'm_220 v0 v1
  = let v2 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (coe
         MAlonzo.Code.Data.Nat.DivMod.Core.d_a'91'mod'8341''93'n'8804'a_96
         (coe (0 :: Integer)) (coe v0) (coe v2))
-- Data.Nat.DivMod.m≤n⇒m%n≡m
d_m'8804'n'8658'm'37'n'8801'm_226 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'8804'n'8658'm'37'n'8801'm_226 = erased
-- Data.Nat.DivMod.m<n⇒m%n≡m
d_m'60'n'8658'm'37'n'8801'm_240 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60'n'8658'm'37'n'8801'm_240 = erased
-- Data.Nat.DivMod.%-pred-≡0
d_'37''45'pred'45''8801'0_250 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'pred'45''8801'0_250 = erased
-- Data.Nat.DivMod.m<[1+n%d]⇒m≤[n%d]
d_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_266 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_266 ~v0 v1 v2
                                                          ~v3
  = du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_266 v1 v2
du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_266 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60''91'1'43'n'37'd'93''8658'm'8804''91'n'37'd'93'_266 v0 v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.DivMod.Core.du_k'60'1'43'a'91'mod'8341''93'n'8658'k'8804'a'91'mod'8341''93'n_216
                (coe (0 :: Integer)) (coe v0) (coe v2))
-- Data.Nat.DivMod.[1+m%d]≤1+n⇒[m%d]≤n
d_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_282 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_282 v0
                                                                 ~v1 v2 ~v3 ~v4
  = du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_282
      v0 v2
du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_282 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'91'1'43'm'37'd'93''8804'1'43'n'8658''91'm'37'd'93''8804'n_282 v0
                                                                  v1
  = case coe v1 of
      0 -> coe (\ v2 -> MAlonzo.RTE.mazUnreachableError)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Data.Nat.DivMod.Core.du_1'43'a'91'mod'8341''93'n'8804'1'43'k'8658'a'91'mod'8341''93'n'8804'k_260
                (coe (0 :: Integer)) (coe v0) (coe v2))
-- Data.Nat.DivMod.%-distribˡ-+
d_'37''45'distrib'737''45''43'_300 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'distrib'737''45''43'_300 = erased
-- Data.Nat.DivMod.%-distribˡ-*
d_'37''45'distrib'737''45''42'_330 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'distrib'737''45''42'_330 = erased
-- Data.Nat.DivMod._.m′
d_m'8242'_344 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_m'8242'_344 v0 ~v1 v2 ~v3 = du_m'8242'_344 v0 v2
du_m'8242'_344 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
du_m'8242'_344 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
      (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.n′
d_n'8242'_346 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_n'8242'_346 ~v0 v1 v2 ~v3 = du_n'8242'_346 v1 v2
du_n'8242'_346 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
du_n'8242'_346 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
      (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.k
d_k_348 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_k_348 v0 ~v1 v2 ~v3 = du_k_348 v0 v2
du_k_348 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
du_k_348 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0)
      (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.j
d_j_350 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_j_350 ~v0 v1 v2 ~v3 = du_j_350 v1 v2
du_j_350 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
du_j_350 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0)
      (coe addInt (coe (1 :: Integer)) (coe v1))
-- Data.Nat.DivMod._.lemma
d_lemma_352 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lemma_352 = erased
-- Data.Nat.DivMod.%-remove-+ˡ
d_'37''45'remove'45''43''737'_372 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'remove'45''43''737'_372 = erased
-- Data.Nat.DivMod.%-remove-+ʳ
d_'37''45'remove'45''43''691'_392 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'37''45'remove'45''43''691'_392 = erased
-- Data.Nat.DivMod./-congˡ
d_'47''45'cong'737'_406 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong'737'_406 = erased
-- Data.Nat.DivMod./-congʳ
d_'47''45'cong'691'_412 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cong'691'_412 = erased
-- Data.Nat.DivMod.0/n≡0
d_0'47'n'8801'0_418 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_0'47'n'8801'0_418 = erased
-- Data.Nat.DivMod.n/1≡n
d_n'47'1'8801'n_422 ::
  Integer -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'47'1'8801'n_422 = erased
-- Data.Nat.DivMod.n/n≡1
d_n'47'n'8801'1_430 ::
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_n'47'n'8801'1_430 = erased
-- Data.Nat.DivMod.m*n/n≡m
d_m'42'n'47'n'8801'm_440 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'n'8801'm_440 = erased
-- Data.Nat.DivMod.m/n*n≡m
d_m'47'n'42'n'8801'm_452 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'n'42'n'8801'm_452 = erased
-- Data.Nat.DivMod.m*[n/m]≡n
d_m'42''91'n'47'm'93''8801'n_462 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42''91'n'47'm'93''8801'n_462 = erased
-- Data.Nat.DivMod.m/n*n≤m
d_m'47'n'42'n'8804'm_474 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'42'n'8804'm_474 v0 v1 ~v2
  = du_m'47'n'42'n'8804'm_474 v0 v1
du_m'47'n'42'n'8804'm_474 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'42'n'8804'm_474 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
         (\ v2 v3 v4 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v4))
      (mulInt
         (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
         (coe v1))
      v0
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
            (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
            (\ v2 v3 v4 v5 v6 ->
               coe
                 MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v5
                 v6))
         (mulInt
            (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
            (coe v1))
         (addInt
            (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0) (coe v1))
            (coe
               mulInt
               (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
               (coe v1)))
         v0
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
            (\ v2 v3 v4 v5 v6 -> v6)
            (addInt
               (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0) (coe v1))
               (coe
                  mulInt
                  (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
                  (coe v1)))
            (addInt
               (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0) (coe v1))
               (coe
                  mulInt
                  (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
                  (coe v1)))
            v0
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v2 v3 v4 v5 v6 -> v6)
               (addInt
                  (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0) (coe v1))
                  (coe
                     mulInt
                     (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
                     (coe v1)))
               v0 v0
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                  (coe v0))
               erased)
            erased)
         (coe
            MAlonzo.Code.Data.Nat.Properties.du_m'8804'm'43'n_3344
            (coe
               mulInt
               (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
               (coe v1))))
-- Data.Nat.DivMod.m/n≤m
d_m'47'n'8804'm_488 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'8804'm_488 v0 v1 ~v2 = du_m'47'n'8804'm_488 v0 v1
du_m'47'n'8804'm_488 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'8804'm_488 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''8804'_3840
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
-- Data.Nat.DivMod.m/n<m
d_m'47'n'60'm_502 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'47'n'60'm_502 v0 v1 ~v2 ~v3 ~v4 = du_m'47'n'60'm_502 v0 v1
du_m'47'n'60'm_502 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'47'n'60'm_502 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.du_'42''45'cancel'691''45''60'_4004
      (coe v1)
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
      (coe v0)
-- Data.Nat.DivMod./-mono-≤
d_'47''45'mono'45''8804'_514 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'45''8804'_514 v0 v1 v2 v3 ~v4 ~v5 v6 v7
  = du_'47''45'mono'45''8804'_514 v0 v1 v2 v3 v6 v7
du_'47''45'mono'45''8804'_514 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'45''8804'_514 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30 v8
        -> let v9 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (let v10 = subInt (coe v1) (coe (1 :: Integer)) in
              coe
                (coe
                   MAlonzo.Code.Data.Nat.DivMod.Core.d_div'8341''45'mono'45''8804'_886
                   (coe (0 :: Integer)) (coe (0 :: Integer)) (coe v2) (coe v3)
                   (coe v9) (coe v10) (coe v4) (coe v8)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod./-monoˡ-≤
d_'47''45'mono'737''45''8804'_524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'737''45''8804'_524 v0 v1 v2 ~v3 v4
  = du_'47''45'mono'737''45''8804'_524 v0 v1 v2 v4
du_'47''45'mono'737''45''8804'_524 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'737''45''8804'_524 v0 v1 v2 v3
  = coe
      du_'47''45'mono'45''8804'_514 (coe v2) (coe v2) (coe v0) (coe v1)
      (coe v3)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2638 (coe v2))
-- Data.Nat.DivMod./-monoʳ-≤
d_'47''45'mono'691''45''8804'_540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'47''45'mono'691''45''8804'_540 v0 v1 v2 ~v3 ~v4 v5
  = du_'47''45'mono'691''45''8804'_540 v0 v1 v2 v5
du_'47''45'mono'691''45''8804'_540 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'47''45'mono'691''45''8804'_540 v0 v1 v2 v3
  = coe
      du_'47''45'mono'45''8804'_514 (coe v1) (coe v2) (coe v0) (coe v0)
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2638 (coe v0))
      (coe v3)
-- Data.Nat.DivMod./-cancelʳ-≡
d_'47''45'cancel'691''45''8801'_554 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45'cancel'691''45''8801'_554 = erased
-- Data.Nat.DivMod.m<n⇒m/n≡0
d_m'60'n'8658'm'47'n'8801'0_576 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'60'n'8658'm'47'n'8801'0_576 = erased
-- Data.Nat.DivMod.m≥n⇒m/n>0
d_m'8805'n'8658'm'47'n'62'0_590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'8805'n'8658'm'47'n'62'0_590 v0 v1 ~v2 v3
  = du_m'8805'n'8658'm'47'n'62'0_590 v0 v1 v3
du_m'8805'n'8658'm'47'n'62'0_590 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'8805'n'8658'm'47'n'62'0_590 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v5))
      (1 :: Integer)
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
         (\ v3 v4 v5 v6 v7 -> v7) (1 :: Integer)
         (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v0))
         (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
               (\ v3 v4 v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v6
                    v7))
            (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v0))
            (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
            (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
               (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1)))
            (coe
               du_'47''45'mono'691''45''8804'_540 (coe v0) (coe v0) (coe v1)
               (coe v2)))
         erased)
-- Data.Nat.DivMod.+-distrib-/
d_'43''45'distrib'45''47'_606 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47'_606 = erased
-- Data.Nat.DivMod.+-distrib-/-∣ˡ
d_'43''45'distrib'45''47''45''8739''737'_624 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47''45''8739''737'_624 = erased
-- Data.Nat.DivMod.+-distrib-/-∣ʳ
d_'43''45'distrib'45''47''45''8739''691'_644 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'43''45'distrib'45''47''45''8739''691'_644 = erased
-- Data.Nat.DivMod.m/n≡1+[m∸n]/n
d_m'47'n'8801'1'43''91'm'8760'n'93''47'n_662 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'n'8801'1'43''91'm'8760'n'93''47'n_662 = erased
-- Data.Nat.DivMod.m*n/m*o≡n/o
d_m'42'n'47'm'42'o'8801'n'47'o_684 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'm'42'o'8801'n'47'o_684 = erased
-- Data.Nat.DivMod._.helper
d_helper_698 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  Integer ->
  MAlonzo.Code.Induction.WellFounded.T_Acc_42 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_helper_698 = erased
-- Data.Nat.DivMod._._.n∸o<n
d_n'8760'o'60'n_724 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  (Integer ->
   MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Induction.WellFounded.T_Acc_42) ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_n'8760'o'60'n_724 v0 v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7
  = du_n'8760'o'60'n_724 v0 v1
du_n'8760'o'60'n_724 ::
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_n'8760'o'60'n_724 v0 v1
  = coe
      MAlonzo.Code.Data.Nat.Properties.d_'8760''45'mono'691''45''60'_4946
      (coe v1) (coe v0) (coe (0 :: Integer))
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_n'8802'0'8658'n'62'0_2952
         (coe v0))
      (coe
         MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2764
         (coe v1) (coe v0))
-- Data.Nat.DivMod.m*n/o*n≡m/o
d_m'42'n'47'o'42'n'8801'm'47'o_740 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'o'42'n'8801'm'47'o_740 = erased
-- Data.Nat.DivMod.m<n*o⇒m/o<n
d_m'60'n'42'o'8658'm'47'o'60'n_764 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_m'60'n'42'o'8658'm'47'o'60'n_764 v0 v1 v2 ~v3 ~v4
  = du_m'60'n'42'o'8658'm'47'o'60'n_764 v0 v1 v2
du_m'60'n'42'o'8658'm'47'o'60'n_764 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_m'60'n'42'o'8658'm'47'o'60'n_764 v0 v1 v2
  = let v3 = subInt (coe v1) (coe (1 :: Integer)) in
    coe
      (let v4
             = MAlonzo.Code.Data.Nat.Properties.d__'60''63'__2892
                 (coe v0) (coe v2) in
       coe
         (case coe v4 of
            MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
              -> if coe v5
                   then coe
                          seq (coe v6)
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                             (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v2))
                             (coe v1)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v7 v8 v9 v10 v11 -> v11)
                                (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v2))
                                (0 :: Integer) v1
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                      (\ v7 v8 v9 v10 v11 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_2842 v8
                                           v10 v11)
                                      (coe
                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                      (\ v7 v8 v9 v10 v11 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2854
                                           v10 v11))
                                   (0 :: Integer) v1 v1
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe
                                            MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                                      (coe v1))
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                                      (coe MAlonzo.Code.Data.Nat.Base.C_z'8804'n_22)))
                                erased))
                   else coe
                          seq (coe v6)
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202)
                             (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v2))
                             (coe v1)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
                                (\ v7 v8 v9 v10 v11 -> v11)
                                (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v2))
                                (addInt
                                   (coe (1 :: Integer))
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                      (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v2)
                                      (coe v2)))
                                v1
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                                      (\ v7 v8 v9 v10 v11 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_2842 v8
                                           v10 v11)
                                      (coe
                                         MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
                                      (\ v7 v8 v9 v10 v11 ->
                                         coe
                                           MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2854
                                           v10 v11))
                                   (addInt
                                      (coe (1 :: Integer))
                                      (coe
                                         MAlonzo.Code.Data.Nat.Base.du__'47'__276
                                         (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v2)
                                         (coe v2)))
                                   v1 v1
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                                         (coe
                                            MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                                      (coe v1))
                                   (coe
                                      MAlonzo.Code.Data.Nat.Base.C_s'8804's_30
                                      (coe
                                         du_m'60'n'42'o'8658'm'47'o'60'n_764
                                         (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v2)
                                         (coe v3) (coe v2))))
                                erased))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.Nat.DivMod._.lem
d_lem_802 ::
  Integer ->
  Integer ->
  (MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lem_802 v0 v1 ~v2 v3 ~v4 v5 = du_lem_802 v0 v1 v3 v5
du_lem_802 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lem_802 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v4) (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
         (coe mulInt (coe v2) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v5 v6 v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_2842 v6 v8 v9)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
               (\ v5 v6 v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2854 v8
                    v9))
            (coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 v1)
            (coe
               MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
               (addInt (coe mulInt (coe v2) (coe v1)) (coe v1)) v1)
            (mulInt (coe v2) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v5 v6 v7 v8 v9 -> v9)
               (coe
                  MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                  (addInt (coe mulInt (coe v2) (coe v1)) (coe v1)) v1)
               (mulInt (coe v2) (coe v1)) (mulInt (coe v2) (coe v1))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                  (coe mulInt (coe v2) (coe v1)))
               erased)
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'8760''45'mono'737''45''60'_4920
               (coe v1) (coe v3)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_'8814''8658''8805'_2764
                  (coe v0) (coe v1)))))
-- Data.Nat.DivMod.[m∸n]/n≡m/n∸1
d_'91'm'8760'n'93''47'n'8801'm'47'n'8760'1_810 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'93''47'n'8801'm'47'n'8760'1_810 = erased
-- Data.Nat.DivMod.[m∸n*o]/o≡m/o∸n
d_'91'm'8760'n'42'o'93''47'o'8801'm'47'o'8760'n_844 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'8760'n'42'o'93''47'o'8801'm'47'o'8760'n_844 = erased
-- Data.Nat.DivMod.m/n/o≡m/[n*o]
d_m'47'n'47'o'8801'm'47''91'n'42'o'93'_870 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'47'n'47'o'8801'm'47''91'n'42'o'93'_870 = erased
-- Data.Nat.DivMod._.n*o
d_n'42'o_882 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_n'42'o_882 ~v0 v1 v2 ~v3 ~v4 ~v5 = du_n'42'o_882 v1 v2
du_n'42'o_882 :: Integer -> Integer -> Integer
du_n'42'o_882 v0 v1 = coe mulInt (coe v0) (coe v1)
-- Data.Nat.DivMod._.o*n
d_o'42'n_884 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_o'42'n_884 ~v0 v1 v2 ~v3 ~v4 ~v5 = du_o'42'n_884 v1 v2
du_o'42'n_884 :: Integer -> Integer -> Integer
du_o'42'n_884 v0 v1 = coe mulInt (coe v1) (coe v0)
-- Data.Nat.DivMod._.lem₁
d_lem'8321'_886 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
d_lem'8321'_886 v0 v1 v2 ~v3 ~v4 ~v5 = du_lem'8321'_886 v0 v1 v2
du_lem'8321'_886 ::
  Integer ->
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12
du_lem'8321'_886 v0 v1 v2
  = coe
      MAlonzo.Code.Data.Nat.Divisibility.Core.C_divides_26
      (mulInt
         (coe
            MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0)
            (coe du_n'42'o_882 (coe v1) (coe v2)))
         (coe v2))
-- Data.Nat.DivMod._.lem₂
d_lem'8322'_890 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lem'8322'_890 = erased
-- Data.Nat.DivMod._.lem₃
d_lem'8323'_894 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lem'8323'_894 v0 v1 v2 ~v3 ~v4 ~v5 = du_lem'8323'_894 v0 v1 v2
du_lem'8323'_894 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lem'8323'_894 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v3)
         (coe
            MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
            (coe du_n'42'o_882 (coe v1) (coe v2)))
         (coe du_o'42'n_884 (coe v1) (coe v2))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_2842 v5 v7 v8)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2854 v7
                    v8))
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
               (coe du_n'42'o_882 (coe v1) (coe v2)))
            (coe du_n'42'o_882 (coe v1) (coe v2))
            (coe du_o'42'n_884 (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v4 v5 v6 v7 v8 -> v8) (coe du_n'42'o_882 (coe v1) (coe v2))
               (coe du_o'42'n_884 (coe v1) (coe v2))
               (coe du_o'42'n_884 (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                  (coe du_o'42'n_884 (coe v1) (coe v2)))
               erased)
            (coe
               du_m'37'n'60'n_196 (coe v0)
               (coe du_n'42'o_882 (coe v1) (coe v2)))))
-- Data.Nat.DivMod.*-/-assoc
d_'42''45''47''45'assoc_910 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'42''45''47''45'assoc_910 = erased
-- Data.Nat.DivMod./-*-interchange
d_'47''45''42''45'interchange_940 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Data.Nat.Divisibility.Core.T__'8739'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'47''45''42''45'interchange_940 = erased
-- Data.Nat.DivMod.m*n/m!≡n/[m∸1]!
d_m'42'n'47'm'33''8801'n'47''91'm'8760'1'93''33'_960 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'42'n'47'm'33''8801'n'47''91'm'8760'1'93''33'_960 = erased
-- Data.Nat.DivMod.m%[n*o]/o≡m/o%n
d_m'37''91'n'42'o'93''47'o'8801'm'47'o'37'n_978 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37''91'n'42'o'93''47'o'8801'm'47'o'37'n_978 = erased
-- Data.Nat.DivMod.m%n*o≡m*o%[n*o]
d_m'37'n'42'o'8801'm'42'o'37''91'n'42'o'93'_1010 ::
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_m'37'n'42'o'8801'm'42'o'37''91'n'42'o'93'_1010 = erased
-- Data.Nat.DivMod.[m*n+o]%[p*n]≡[m*n]%[p*n]+o
d_'91'm'42'n'43'o'93''37''91'p'42'n'93''8801''91'm'42'n'93''37''91'p'42'n'93''43'o_1036 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91'm'42'n'43'o'93''37''91'p'42'n'93''8801''91'm'42'n'93''37''91'p'42'n'93''43'o_1036
  = erased
-- Data.Nat.DivMod._.mn
d_mn_1056 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> Integer
d_mn_1056 v0 v1 ~v2 ~v3 ~v4 ~v5 = du_mn_1056 v0 v1
du_mn_1056 :: Integer -> Integer -> Integer
du_mn_1056 v0 v1 = coe mulInt (coe v0) (coe v1)
-- Data.Nat.DivMod._.pn
d_pn_1058 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 -> Integer
d_pn_1058 ~v0 v1 ~v2 v3 ~v4 ~v5 = du_pn_1058 v1 v3
du_pn_1058 :: Integer -> Integer -> Integer
du_pn_1058 v0 v1
  = coe mulInt (coe addInt (coe (1 :: Integer)) (coe v1)) (coe v0)
-- Data.Nat.DivMod._.lem₁
d_lem'8321'_1060 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lem'8321'_1060 v0 v1 ~v2 v3 ~v4 ~v5 = du_lem'8321'_1060 v0 v1 v3
du_lem'8321'_1060 ::
  Integer ->
  Integer -> Integer -> MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lem'8321'_1060 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
         (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
         (\ v3 v4 v5 ->
            coe MAlonzo.Code.Data.Nat.Properties.du_'60''8658''8804'_2716 v5))
      (coe
         MAlonzo.Code.Data.Nat.Base.du__'37'__288
         (coe du_mn_1056 (coe v0) (coe v1))
         (coe du_pn_1058 (coe v1) (coe v2)))
      (mulInt (coe v2) (coe v1))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
         (\ v3 v4 v5 v6 v7 -> v7)
         (coe
            MAlonzo.Code.Data.Nat.Base.du__'37'__288
            (coe du_mn_1056 (coe v0) (coe v1))
            (coe du_pn_1058 (coe v1) (coe v2)))
         (mulInt
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
               (coe addInt (coe (1 :: Integer)) (coe v2)))
            (coe v1))
         (mulInt (coe v2) (coe v1))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672)
               (\ v3 v4 v5 v6 v7 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'8804''45''60''45'trans_2848 v6
                    v7))
            (mulInt
               (coe
                  MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0)
                  (coe addInt (coe (1 :: Integer)) (coe v2)))
               (coe v1))
            (mulInt (coe v2) (coe v1)) (mulInt (coe v2) (coe v1))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                  (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
               (coe mulInt (coe v2) (coe v1)))
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'42''45'mono'737''45''8804'_3882
               (coe v1) (coe v2)
               (coe
                  MAlonzo.Code.Data.Nat.Properties.du_m'60'1'43'n'8658'm'8804'n_2984
                  (coe
                     du_m'37'n'60'n_196 (coe v0)
                     (coe addInt (coe (1 :: Integer)) (coe v2))))))
         erased)
-- Data.Nat.DivMod._.lem₂
d_lem'8322'_1062 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_lem'8322'_1062 v0 v1 v2 v3 ~v4 v5
  = du_lem'8322'_1062 v0 v1 v2 v3 v5
du_lem'8322'_1062 ::
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_lem'8322'_1062 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
         (coe v5)
         (coe
            addInt
            (coe
               MAlonzo.Code.Data.Nat.Base.du__'37'__288
               (coe du_mn_1056 (coe v0) (coe v1))
               (coe du_pn_1058 (coe v1) (coe v3)))
            (coe v2))
         (coe du_pn_1058 (coe v1) (coe v3))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
               (\ v6 v7 v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45'trans_2842 v7 v9 v10)
               (coe
                  MAlonzo.Code.Relation.Binary.PropositionalEquality.Core.du_resp'8322'_144)
               (\ v6 v7 v8 v9 v10 ->
                  coe
                    MAlonzo.Code.Data.Nat.Properties.du_'60''45''8804''45'trans_2854 v9
                    v10))
            (addInt
               (coe
                  MAlonzo.Code.Data.Nat.Base.du__'37'__288
                  (coe du_mn_1056 (coe v0) (coe v1))
                  (coe du_pn_1058 (coe v1) (coe v3)))
               (coe v2))
            (addInt (coe mulInt (coe v3) (coe v1)) (coe v1))
            (coe du_pn_1058 (coe v1) (coe v3))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
               (\ v6 v7 v8 v9 v10 -> v10)
               (addInt (coe mulInt (coe v3) (coe v1)) (coe v1))
               (coe du_pn_1058 (coe v1) (coe v3))
               (coe du_pn_1058 (coe v1) (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
                     (coe MAlonzo.Code.Data.Nat.Properties.d_'8804''45'isPreorder_2672))
                  (coe du_pn_1058 (coe v1) (coe v3)))
               erased)
            (coe
               MAlonzo.Code.Data.Nat.Properties.du_'43''45'mono'45''8804''45''60'_3432
               (coe v1) (coe du_lem'8321'_1060 (coe v0) (coe v1) (coe v3))
               (coe v4))))
-- Data.Nat.DivMod.DivMod
d_DivMod_1070 a0 a1 = ()
data T_DivMod_1070
  = C_result_1088 Integer MAlonzo.Code.Data.Fin.Base.T_Fin_10
-- Data.Nat.DivMod.DivMod.quotient
d_quotient_1082 :: T_DivMod_1070 -> Integer
d_quotient_1082 v0
  = case coe v0 of
      C_result_1088 v1 v2 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod.DivMod.remainder
d_remainder_1084 ::
  T_DivMod_1070 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_remainder_1084 v0
  = case coe v0 of
      C_result_1088 v1 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.DivMod.DivMod.property
d_property_1086 ::
  T_DivMod_1070 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_property_1086 = erased
-- Data.Nat.DivMod._div_
d__div__1096 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d__div__1096 v0 v1 v2
  = coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 v0 v1
-- Data.Nat.DivMod._mod_
d__mod__1104 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10
d__mod__1104 v0 v1 ~v2 = du__mod__1104 v0 v1
du__mod__1104 ::
  Integer -> Integer -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
du__mod__1104 v0 v1
  = coe
      MAlonzo.Code.Data.Fin.Base.du_fromℕ'60'_52
      (coe MAlonzo.Code.Data.Nat.Base.du__'37'__288 (coe v0) (coe v1))
-- Data.Nat.DivMod._divMod_
d__divMod__1116 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> T_DivMod_1070
d__divMod__1116 v0 v1 ~v2 = du__divMod__1116 v0 v1
du__divMod__1116 :: Integer -> Integer -> T_DivMod_1070
du__divMod__1116 v0 v1
  = coe
      C_result_1088
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
      (coe du__mod__1104 (coe v0) (coe v1))
-- Data.Nat.DivMod._.[m/n]*n
d_'91'm'47'n'93''42'n_1126 ::
  Integer ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_104 -> Integer
d_'91'm'47'n'93''42'n_1126 v0 v1 ~v2
  = du_'91'm'47'n'93''42'n_1126 v0 v1
du_'91'm'47'n'93''42'n_1126 :: Integer -> Integer -> Integer
du_'91'm'47'n'93''42'n_1126 v0 v1
  = coe
      mulInt
      (coe MAlonzo.Code.Data.Nat.Base.du__'47'__276 (coe v0) (coe v1))
      (coe v1)
-- Data.Nat.DivMod._.[m%n]<n
d_'91'm'37'n'93''60'n_1128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
d_'91'm'37'n'93''60'n_1128 v0 v1 ~v2
  = du_'91'm'37'n'93''60'n_1128 v0 v1
du_'91'm'37'n'93''60'n_1128 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Nat.Base.T_NonZero_104 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__18
du_'91'm'37'n'93''60'n_1128 v0 v1 v2
  = coe du_m'37'n'60'n_196 (coe v0) (coe v1)
