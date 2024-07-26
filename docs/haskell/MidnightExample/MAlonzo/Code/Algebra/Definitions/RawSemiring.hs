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

module MAlonzo.Code.Algebra.Definitions.RawSemiring where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Algebra.Definitions.RawMagma
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Sum.Base

-- Algebra.Definitions.RawSemiring._._≉_
d__'8777'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> AgdaAny -> ()
d__'8777'__20 = erased
-- Algebra.Definitions.RawSemiring._._×_
d__'215'__40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__40 ~v0 ~v1 v2 = du__'215'__40 v2
du__'215'__40 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__40 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178 (coe v0)))
-- Algebra.Definitions.RawSemiring._._×′_
d__'215''8242'__42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer -> AgdaAny -> AgdaAny
d__'215''8242'__42 ~v0 ~v1 v2 = du__'215''8242'__42 v2
du__'215''8242'__42 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer -> AgdaAny -> AgdaAny
du__'215''8242'__42 v0
  = let v1
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
              (coe
                 MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178
                 (coe v0)) in
    coe
      (coe
         (\ v2 v3 ->
            let v4 = subInt (coe v2) (coe (1 :: Integer)) in
            coe
              (let v5
                     = coe
                         MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__56 v1
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                            (coe v1) (coe v4) (coe v3))
                         v3 in
               coe
                 (case coe v2 of
                    0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v1)
                    1 -> coe v3
                    _ -> coe v5))))
-- Algebra.Definitions.RawSemiring._.sum
d_sum_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
d_sum_44 ~v0 ~v1 v2 = du_sum_44 v2
du_sum_44 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
du_sum_44 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du_sum_80
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'43''45'rawMonoid_134
         (coe
            MAlonzo.Code.Algebra.Bundles.Raw.du_rawNearSemiring_178 (coe v0)))
-- Algebra.Definitions.RawSemiring.Mult._∣_
d__'8739'__56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> AgdaAny -> ()
d__'8739'__56 = erased
-- Algebra.Definitions.RawSemiring.Mult._∤_
d__'8740'__64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> AgdaAny -> ()
d__'8740'__64 = erased
-- Algebra.Definitions.RawSemiring.Mult.sum
d_sum_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
d_sum_72 ~v0 ~v1 v2 = du_sum_72 v2
du_sum_72 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> AgdaAny
du_sum_72 v0
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du_sum_80
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190 (coe v0))
-- Algebra.Definitions.RawSemiring._^_
d__'94'__86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
d__'94'__86 ~v0 ~v1 v2 v3 v4 = du__'94'__86 v2 v3 v4
du__'94'__86 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
du__'94'__86 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
      (coe
         MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190 (coe v0))
      (coe v2) (coe v1)
-- Algebra.Definitions.RawSemiring._^′_
d__'94''8242'__92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
d__'94''8242'__92 ~v0 ~v1 v2 v3 v4 = du__'94''8242'__92 v2 v3 v4
du__'94''8242'__92 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
du__'94''8242'__92 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Algebra.Bundles.Raw.du_'42''45'rawMonoid_190
              (coe v0) in
    coe
      (let v4 = subInt (coe v2) (coe (1 :: Integer)) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Bundles.Raw.d__'8729'__56 v3
                    (coe
                       MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215''8242'__68
                       (coe v3) (coe v4) (coe v1))
                    v1 in
          coe
            (case coe v2 of
               0 -> coe MAlonzo.Code.Algebra.Bundles.Raw.d_ε_58 (coe v3)
               1 -> coe v1
               _ -> coe v5)))
-- Algebra.Definitions.RawSemiring._^[_]*_
d__'94''91'_'93''42'__98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny -> AgdaAny
d__'94''91'_'93''42'__98 ~v0 ~v1 v2 v3 v4 v5
  = du__'94''91'_'93''42'__98 v2 v3 v4 v5
du__'94''91'_'93''42'__98 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny -> AgdaAny
du__'94''91'_'93''42'__98 v0 v1 v2 v3
  = case coe v2 of
      0 -> coe v3
      _ -> let v4 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                du__'94''91'_'93''42'__98 (coe v0) (coe v1) (coe v4)
                (coe MAlonzo.Code.Algebra.Bundles.Raw.d__'42'__172 v0 v1 v3))
-- Algebra.Definitions.RawSemiring._^ᵗ_
d__'94''7511'__110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
d__'94''7511'__110 ~v0 ~v1 v2 v3 v4 = du__'94''7511'__110 v2 v3 v4
du__'94''7511'__110 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> Integer -> AgdaAny
du__'94''7511'__110 v0 v1 v2
  = coe
      du__'94''91'_'93''42'__98 (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Algebra.Bundles.Raw.d_1'35'_176 (coe v0))
-- Algebra.Definitions.RawSemiring.Coprime
d_Coprime_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148 ->
  AgdaAny -> AgdaAny -> ()
d_Coprime_116 = erased
-- Algebra.Definitions.RawSemiring.Irreducible
d_Irreducible_126 a0 a1 a2 a3 = ()
newtype T_Irreducible_126
  = C_mkIrred_146 (AgdaAny ->
                   AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Algebra.Definitions.RawSemiring.Irreducible.p∤1
d_p'8740'1_138 ::
  T_Irreducible_126 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__52 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_p'8740'1_138 = erased
-- Algebra.Definitions.RawSemiring.Irreducible.split-∣1
d_split'45''8739'1_144 ::
  T_Irreducible_126 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_split'45''8739'1_144 v0
  = case coe v0 of
      C_mkIrred_146 v2 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Definitions.RawSemiring.Prime
d_Prime_150 a0 a1 a2 a3 = ()
newtype T_Prime_150
  = C_mkPrime_174 (AgdaAny ->
                   AgdaAny ->
                   MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__52 ->
                   MAlonzo.Code.Data.Sum.Base.T__'8846'__30)
-- Algebra.Definitions.RawSemiring.Prime.p≉0
d_p'8777'0_164 ::
  T_Prime_150 ->
  AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_p'8777'0_164 = erased
-- Algebra.Definitions.RawSemiring.Prime.p∤1
d_p'8740'1_166 ::
  T_Prime_150 ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__52 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_p'8740'1_166 = erased
-- Algebra.Definitions.RawSemiring.Prime.split-∣
d_split'45''8739'_172 ::
  T_Prime_150 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Algebra.Definitions.RawMagma.T__'8739''691'__52 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_split'45''8739'_172 v0
  = case coe v0 of
      C_mkPrime_174 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
