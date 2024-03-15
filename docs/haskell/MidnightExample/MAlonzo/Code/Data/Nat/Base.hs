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

module MAlonzo.Code.Data.Nat.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Parity.Base
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.Nat.Base._≤ᵇ_
d__'8804''7495'__10 :: Integer -> Integer -> Bool
d__'8804''7495'__10 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe ltInt (coe v2) (coe v1))
-- Data.Nat.Base._≤_
d__'8804'__18 a0 a1 = ()
data T__'8804'__18 = C_z'8804'n_22 | C_s'8804's_30 T__'8804'__18
-- Data.Nat.Base._<_
d__'60'__32 :: Integer -> Integer -> ()
d__'60'__32 = erased
-- Data.Nat.Base.s≤s⁻¹
d_s'8804's'8315''185'_54 ::
  Integer -> Integer -> T__'8804'__18 -> T__'8804'__18
d_s'8804's'8315''185'_54 ~v0 ~v1 v2 = du_s'8804's'8315''185'_54 v2
du_s'8804's'8315''185'_54 :: T__'8804'__18 -> T__'8804'__18
du_s'8804's'8315''185'_54 v0
  = case coe v0 of
      C_s'8804's_30 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Base.s<s⁻¹
d_s'60's'8315''185'_62 ::
  Integer -> Integer -> T__'8804'__18 -> T__'8804'__18
d_s'60's'8315''185'_62 ~v0 ~v1 v2 = du_s'60's'8315''185'_62 v2
du_s'60's'8315''185'_62 :: T__'8804'__18 -> T__'8804'__18
du_s'60's'8315''185'_62 v0
  = case coe v0 of
      C_s'8804's_30 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Base._≥_
d__'8805'__66 :: Integer -> Integer -> ()
d__'8805'__66 = erased
-- Data.Nat.Base._>_
d__'62'__72 :: Integer -> Integer -> ()
d__'62'__72 = erased
-- Data.Nat.Base._≰_
d__'8816'__78 :: Integer -> Integer -> ()
d__'8816'__78 = erased
-- Data.Nat.Base._≮_
d__'8814'__84 :: Integer -> Integer -> ()
d__'8814'__84 = erased
-- Data.Nat.Base._≱_
d__'8817'__90 :: Integer -> Integer -> ()
d__'8817'__90 = erased
-- Data.Nat.Base._≯_
d__'8815'__96 :: Integer -> Integer -> ()
d__'8815'__96 = erased
-- Data.Nat.Base.NonZero
d_NonZero_104 a0 = ()
newtype T_NonZero_104 = C_NonZero'46'constructor_3581 AgdaAny
-- Data.Nat.Base.NonZero.nonZero
d_nonZero_110 :: T_NonZero_104 -> AgdaAny
d_nonZero_110 v0
  = case coe v0 of
      C_NonZero'46'constructor_3581 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Base.nonZero
d_nonZero_114 :: Integer -> T_NonZero_104
d_nonZero_114 ~v0 = du_nonZero_114
du_nonZero_114 :: T_NonZero_104
du_nonZero_114
  = coe
      C_NonZero'46'constructor_3581
      (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Base.≢-nonZero
d_'8802''45'nonZero_118 ::
  Integer ->
  (MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_NonZero_104
d_'8802''45'nonZero_118 v0 ~v1 = du_'8802''45'nonZero_118 v0
du_'8802''45'nonZero_118 :: Integer -> T_NonZero_104
du_'8802''45'nonZero_118 v0
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_38
      _ -> coe
             C_NonZero'46'constructor_3581
             (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
-- Data.Nat.Base.>-nonZero
d_'62''45'nonZero_128 :: Integer -> T__'8804'__18 -> T_NonZero_104
d_'62''45'nonZero_128 ~v0 v1 = du_'62''45'nonZero_128 v1
du_'62''45'nonZero_128 :: T__'8804'__18 -> T_NonZero_104
du_'62''45'nonZero_128 v0
  = case coe v0 of
      C_s'8804's_30 v3
        -> coe
             seq (coe v3)
             (coe
                C_NonZero'46'constructor_3581
                (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Nat.Base.≢-nonZero⁻¹
d_'8802''45'nonZero'8315''185'_132 ::
  Integer ->
  T_NonZero_104 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8802''45'nonZero'8315''185'_132 = erased
-- Data.Nat.Base.>-nonZero⁻¹
d_'62''45'nonZero'8315''185'_138 ::
  Integer -> T_NonZero_104 -> T__'8804'__18
d_'62''45'nonZero'8315''185'_138 ~v0 ~v1
  = du_'62''45'nonZero'8315''185'_138
du_'62''45'nonZero'8315''185'_138 :: T__'8804'__18
du_'62''45'nonZero'8315''185'_138
  = coe C_s'8804's_30 (coe C_z'8804'n_22)
-- Data.Nat.Base.+-rawMagma
d_'43''45'rawMagma_142 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'43''45'rawMagma_142
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_79
      addInt
-- Data.Nat.Base.+-0-rawMonoid
d_'43''45'0'45'rawMonoid_144 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_'43''45'0'45'rawMonoid_144
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMonoid'46'constructor_477
      addInt (0 :: Integer)
-- Data.Nat.Base.*-rawMagma
d_'42''45'rawMagma_146 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'42''45'rawMagma_146
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_79
      mulInt
-- Data.Nat.Base.*-1-rawMonoid
d_'42''45'1'45'rawMonoid_148 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_'42''45'1'45'rawMonoid_148
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMonoid'46'constructor_477
      mulInt (1 :: Integer)
-- Data.Nat.Base.+-*-rawNearSemiring
d_'43''45''42''45'rawNearSemiring_150 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawNearSemiring_108
d_'43''45''42''45'rawNearSemiring_150
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawNearSemiring'46'constructor_1429
      addInt mulInt (0 :: Integer)
-- Data.Nat.Base.+-*-rawSemiring
d_'43''45''42''45'rawSemiring_152 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawSemiring_148
d_'43''45''42''45'rawSemiring_152
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawSemiring'46'constructor_2033
      addInt mulInt (0 :: Integer) (1 :: Integer)
-- Data.Nat.Base.pred
d_pred_154 :: Integer -> Integer
d_pred_154 v0
  = coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v0 (1 :: Integer)
-- Data.Nat.Base._+⋎_
d__'43''8910'__158 :: Integer -> Integer -> Integer
d__'43''8910'__158 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                addInt (coe (1 :: Integer))
                (coe d__'43''8910'__158 (coe v1) (coe v2)))
-- Data.Nat.Base._⊔_
d__'8852'__166 :: Integer -> Integer -> Integer
d__'8852'__166 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe v0
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          addInt (coe (1 :: Integer))
                          (coe d__'8852'__166 (coe v2) (coe v3))))
-- Data.Nat.Base._⊔′_
d__'8852''8242'__176 :: Integer -> Integer -> Integer
d__'8852''8242'__176 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe (if coe v2 then coe v1 else coe v0)
-- Data.Nat.Base._⊓_
d__'8851'__194 :: Integer -> Integer -> Integer
d__'8851'__194 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe (0 :: Integer)
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe
                       (coe
                          addInt (coe (1 :: Integer))
                          (coe d__'8851'__194 (coe v2) (coe v3))))
-- Data.Nat.Base._⊓′_
d__'8851''8242'__204 :: Integer -> Integer -> Integer
d__'8851''8242'__204 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe (if coe v2 then coe v0 else coe v1)
-- Data.Nat.Base.parity
d_parity_222 :: Integer -> MAlonzo.Code.Data.Parity.Base.T_Parity_6
d_parity_222 v0
  = case coe v0 of
      0 -> coe MAlonzo.Code.Data.Parity.Base.C_0ℙ_8
      1 -> coe MAlonzo.Code.Data.Parity.Base.C_1ℙ_10
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe (coe d_parity_222 (coe v1))
-- Data.Nat.Base.⌊_/2⌋
d_'8970'_'47'2'8971'_226 :: Integer -> Integer
d_'8970'_'47'2'8971'_226 v0
  = case coe v0 of
      0 -> coe (0 :: Integer)
      1 -> coe (0 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (2 :: Integer)) in
           coe
             (coe
                addInt (coe (1 :: Integer))
                (coe d_'8970'_'47'2'8971'_226 (coe v1)))
-- Data.Nat.Base.⌈_/2⌉
d_'8968'_'47'2'8969'_230 :: Integer -> Integer
d_'8968'_'47'2'8969'_230 v0
  = coe
      d_'8970'_'47'2'8971'_226 (coe addInt (coe (1 :: Integer)) (coe v0))
-- Data.Nat.Base._^_
d__'94'__234 :: Integer -> Integer -> Integer
d__'94'__234 v0 v1
  = case coe v1 of
      0 -> coe (1 :: Integer)
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe (coe mulInt (coe v0) (coe d__'94'__234 (coe v0) (coe v2)))
-- Data.Nat.Base.∣_-_∣
d_'8739'_'45'_'8739'_242 :: Integer -> Integer -> Integer
d_'8739'_'45'_'8739'_242 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe v0
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe (coe d_'8739'_'45'_'8739'_242 (coe v2) (coe v3)))
-- Data.Nat.Base.∣_-_∣′
d_'8739'_'45'_'8739''8242'_252 :: Integer -> Integer -> Integer
d_'8739'_'45'_'8739''8242'_252 v0 v1
  = let v2 = ltInt (coe v0) (coe v1) in
    coe
      (if coe v2
         then coe subInt (coe v1) (coe v0)
         else coe subInt (coe v0) (coe v1))
-- Data.Nat.Base._/_
d__'47'__276 :: Integer -> Integer -> T_NonZero_104 -> Integer
d__'47'__276 v0 v1 ~v2 = du__'47'__276 v0 v1
du__'47'__276 :: Integer -> Integer -> Integer
du__'47'__276 v0 v1 = coe quotInt (coe v0) (coe v1)
-- Data.Nat.Base._%_
d__'37'__288 :: Integer -> Integer -> T_NonZero_104 -> Integer
d__'37'__288 v0 v1 ~v2 = du__'37'__288 v0 v1
du__'37'__288 :: Integer -> Integer -> Integer
du__'37'__288 v0 v1 = coe remInt (coe v0) (coe v1)
-- Data.Nat.Base._!
d__'33'_294 :: Integer -> Integer
d__'33'_294 v0
  = case coe v0 of
      0 -> coe (1 :: Integer)
      _ -> let v1 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe mulInt (coe v0) (coe d__'33'_294 (coe v1)))
-- Data.Nat.Base._≤′_
d__'8804''8242'__300 a0 a1 = ()
data T__'8804''8242'__300
  = C_'8804''8242''45'refl_304 |
    C_'8804''8242''45'step_310 T__'8804''8242'__300
-- Data.Nat.Base._<′_
d__'60''8242'__312 :: Integer -> Integer -> ()
d__'60''8242'__312 = erased
-- Data.Nat.Base._≥′_
d__'8805''8242'__326 :: Integer -> Integer -> ()
d__'8805''8242'__326 = erased
-- Data.Nat.Base._>′_
d__'62''8242'__332 :: Integer -> Integer -> ()
d__'62''8242'__332 = erased
-- Data.Nat.Base._≤″_
d__'8804''8243'__342 :: Integer -> Integer -> ()
d__'8804''8243'__342 = erased
-- Data.Nat.Base._<″_
d__'60''8243'__350 :: Integer -> Integer -> ()
d__'60''8243'__350 = erased
-- Data.Nat.Base._≥″_
d__'8805''8243'__356 :: Integer -> Integer -> ()
d__'8805''8243'__356 = erased
-- Data.Nat.Base._>″_
d__'62''8243'__362 :: Integer -> Integer -> ()
d__'62''8243'__362 = erased
-- Data.Nat.Base.s≤″s⁻¹
d_s'8804''8243's'8315''185'_380 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_s'8804''8243's'8315''185'_380 ~v0 ~v1 v2
  = du_s'8804''8243's'8315''185'_380 v2
du_s'8804''8243's'8315''185'_380 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_s'8804''8243's'8315''185'_380 v0 = coe v0
-- Data.Nat.Base.s<″s⁻¹
d_s'60''8243's'8315''185'_388 ::
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_s'60''8243's'8315''185'_388 ~v0 ~v1 v2
  = du_s'60''8243's'8315''185'_388 v2
du_s'60''8243's'8315''185'_388 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_s'60''8243's'8315''185'_388 v0 = coe v0
-- Data.Nat.Base._≤‴_
d__'8804''8244'__392 a0 a1 = ()
data T__'8804''8244'__392
  = C_'8804''8244''45'refl_396 |
    C_'8804''8244''45'step_402 T__'8804''8244'__392
-- Data.Nat.Base._<‴_
d__'60''8244'__404 :: Integer -> Integer -> ()
d__'60''8244'__404 = erased
-- Data.Nat.Base._≥‴_
d__'8805''8244'__410 :: Integer -> Integer -> ()
d__'8805''8244'__410 = erased
-- Data.Nat.Base._>‴_
d__'62''8244'__416 :: Integer -> Integer -> ()
d__'62''8244'__416 = erased
-- Data.Nat.Base.Ordering
d_Ordering_422 a0 a1 = ()
data T_Ordering_422
  = C_less_428 Integer | C_equal_432 | C_greater_438 Integer
-- Data.Nat.Base.compare
d_compare_444 :: Integer -> Integer -> T_Ordering_422
d_compare_444 v0 v1
  = case coe v0 of
      0 -> case coe v1 of
             0 -> coe C_equal_432
             _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (coe C_less_428 v2)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                0 -> coe C_greater_438 v2
                _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
                     coe (coe d_compare_444 (coe v2) (coe v3)))
