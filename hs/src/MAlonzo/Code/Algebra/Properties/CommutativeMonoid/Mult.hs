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

module MAlonzo.Code.Algebra.Properties.CommutativeMonoid.Mult where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Algebra.Definitions.RawMonoid
import qualified MAlonzo.Code.Algebra.Properties.CommutativeSemigroup
import qualified MAlonzo.Code.Algebra.Properties.Monoid.Mult
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Properties.CommutativeMonoid.Mult._._×_
d__'215'__192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer -> AgdaAny -> AgdaAny
d__'215'__192 ~v0 ~v1 v2 = du__'215'__192 v2
du__'215'__192 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer -> AgdaAny -> AgdaAny
du__'215'__192 v0
  = let v1
          = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
         (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v1)))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-assocˡ
d_'215''45'assoc'737'_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'assoc'737'_194 ~v0 ~v1 v2
  = du_'215''45'assoc'737'_194 v2
du_'215''45'assoc'737'_194 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'assoc'737'_194 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'assoc'737'_324
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-cong
d_'215''45'cong_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
d_'215''45'cong_196 ~v0 ~v1 v2 = du_'215''45'cong_196 v2
du_'215''45'cong_196 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  AgdaAny -> AgdaAny
du_'215''45'cong_196 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong_258
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)) v1 v3 v4
      v6
-- Algebra.Properties.CommutativeMonoid.Mult._.×-congʳ
d_'215''45'cong'691'_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'215''45'cong'691'_198 ~v0 ~v1 v2 = du_'215''45'cong'691'_198 v2
du_'215''45'cong'691'_198 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  Integer -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'215''45'cong'691'_198 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'691'_250
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-congˡ
d_'215''45'cong'737'_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'215''45'cong'737'_200 ~v0 ~v1 v2 = du_'215''45'cong'737'_200 v2
du_'215''45'cong'737'_200 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny ->
  Integer ->
  Integer ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
du_'215''45'cong'737'_200 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'cong'737'_268
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)) v1 v2
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-+
d_'215''45'homo'45''43'_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
d_'215''45'homo'45''43'_202 ~v0 ~v1 v2
  = du_'215''45'homo'45''43'_202 v2
du_'215''45'homo'45''43'_202 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> Integer -> Integer -> AgdaAny
du_'215''45'homo'45''43'_202 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45''43'_288
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-0
d_'215''45'homo'45'0_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny
d_'215''45'homo'45'0_204 ~v0 ~v1 v2 = du_'215''45'homo'45'0_204 v2
du_'215''45'homo'45'0_204 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny
du_'215''45'homo'45'0_204 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45'0_274
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-homo-1
d_'215''45'homo'45'1_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny
d_'215''45'homo'45'1_206 ~v0 ~v1 v2 = du_'215''45'homo'45'1_206 v2
du_'215''45'homo'45'1_206 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny
du_'215''45'homo'45'1_206 v0
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'homo'45'1_280
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0))
-- Algebra.Properties.CommutativeMonoid.Mult._.×-idem
d_'215''45'idem_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> AgdaAny
d_'215''45'idem_208 ~v0 ~v1 v2 = du_'215''45'idem_208 v2
du_'215''45'idem_208 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny ->
  AgdaAny ->
  Integer -> MAlonzo.Code.Data.Nat.Base.T_NonZero_112 -> AgdaAny
du_'215''45'idem_208 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Algebra.Properties.Monoid.Mult.du_'215''45'idem_306
      (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)) v1 v2 v3
-- Algebra.Properties.CommutativeMonoid.Mult.×-distrib-+
d_'215''45'distrib'45''43'_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
d_'215''45'distrib'45''43'_216 ~v0 ~v1 v2 v3 v4 v5
  = du_'215''45'distrib'45''43'_216 v2 v3 v4 v5
du_'215''45'distrib'45''43'_216 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_966 ->
  AgdaAny -> AgdaAny -> Integer -> AgdaAny
du_'215''45'distrib'45''43'_216 v0 v1 v2 v3
  = case coe v3 of
      0 -> coe
             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
             (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                (coe
                   MAlonzo.Code.Algebra.Structures.d_isMagma_480
                   (coe
                      MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                            (coe v0))))))
             (coe
                MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                (MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v0))
                (MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v0)))
             (MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v0))
             (let v4
                    = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                        (coe v0) in
              coe
                (coe
                   MAlonzo.Code.Algebra.Structures.du_identity'737'_726
                   (MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v4))
                   (MAlonzo.Code.Algebra.Bundles.d_ε_988 (coe v0))))
      _ -> let v4 = subInt (coe v3) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                   (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                      (coe v4)
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)))
                (coe
                   MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                      (coe v3) (coe v1))
                   (coe
                      MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                      (coe
                         MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                         (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                      (coe v3) (coe v2)))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                         (coe
                            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                            (let v5
                                   = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                       (coe v0) in
                             coe
                               (let v6
                                      = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                                coe
                                  (let v7
                                         = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                             (coe v6) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.du_setoid_200
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                           (coe v7)))))))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                         (coe v4)
                         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                      (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                            (coe v4) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                            (coe v4) (coe v2))))
                   (coe
                      MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                         (coe v3) (coe v1))
                      (coe
                         MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                         (coe
                            MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                            (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                         (coe v3) (coe v2)))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                            (coe
                               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                               (let v5
                                      = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                          (coe v0) in
                                coe
                                  (let v6
                                         = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                             (coe v5) in
                                   coe
                                     (let v7
                                            = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                (coe v6) in
                                      coe
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.du_setoid_200
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                              (coe v7)))))))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                         (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v4) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v2
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v4) (coe v2)))))
                      (coe
                         MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                            (coe v3) (coe v1))
                         (coe
                            MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                            (coe
                               MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                               (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                            (coe v3) (coe v2)))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                               (coe
                                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                  (let v5
                                         = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                             (coe v0) in
                                   coe
                                     (let v6
                                            = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                (coe v5) in
                                      coe
                                        (let v7
                                               = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                   (coe v6) in
                                         coe
                                           (coe
                                              MAlonzo.Code.Algebra.Structures.du_setoid_200
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                 (coe v7)))))))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v2
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v4) (coe v2)))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v4) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v3) (coe v2))))
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v3) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v3) (coe v2)))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                               (coe
                                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                     (let v5
                                            = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                                (coe v0) in
                                      coe
                                        (let v6
                                               = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                   (coe v5) in
                                         coe
                                           (let v7
                                                  = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                      (coe v6) in
                                            coe
                                              (coe
                                                 MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                    (coe v7)))))))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v3) (coe v2))))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v3) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v3) (coe v2)))
                            (coe
                               MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v3) (coe v1))
                               (coe
                                  MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                     (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                  (coe v3) (coe v2)))
                            (let v5
                                   = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                       (coe
                                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                          (let v5
                                                 = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                                     (coe v0) in
                                           coe
                                             (let v6
                                                    = MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                                        (coe v5) in
                                              coe
                                                (let v7
                                                       = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                                           (coe v6) in
                                                 coe
                                                   (coe
                                                      MAlonzo.Code.Algebra.Structures.du_setoid_200
                                                      (coe
                                                         MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                                         (coe v7))))))) in
                             coe
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                     (coe v5))
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                        (coe v3) (coe v1))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                        (coe v3) (coe v2)))))
                            (coe
                               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                               (MAlonzo.Code.Algebra.Structures.d_isEquivalence_184
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.d_isMagma_480
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                        (coe
                                           MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                              (coe v0))))))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                        (coe v4) (coe v1)))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v3) (coe v2)))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1
                                  (coe
                                     MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                        (coe v4) (coe v1))
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                        (coe v3) (coe v2))))
                               (coe
                                  MAlonzo.Code.Algebra.Structures.d_assoc_482
                                  (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                     (coe
                                        MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                           (coe v0))))
                                  v1
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v4) (coe v1))
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                        (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                                     (coe v3) (coe v2)))))
                         (let v5
                                = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                                    (coe v0) in
                          coe
                            (let v6
                                   = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                             coe
                               (let v7
                                      = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                                          (coe v6) in
                                coe
                                  (coe
                                     MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7))
                                     (coe v1)
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v2
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                           (coe
                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                                 (coe
                                                    MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                    (coe v0)))
                                              (coe v4) (coe v1))
                                           (coe
                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                                 (coe
                                                    MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                    (coe v0)))
                                              (coe v4) (coe v2))))
                                     (coe
                                        MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                 (coe v0)))
                                           (coe v4) (coe v1))
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v2
                                           (coe
                                              MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                                 (coe
                                                    MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                    (coe v0)))
                                              (coe v4) (coe v2))))
                                     (coe
                                        MAlonzo.Code.Algebra.Properties.CommutativeSemigroup.du_x'8729'yz'8776'y'8729'xz_260
                                        (coe
                                           MAlonzo.Code.Algebra.Bundles.du_commutativeSemigroup_1052
                                           (coe v0))
                                        (coe v2)
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                 (coe v0)))
                                           (coe v4) (coe v1))
                                        (coe
                                           MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                           (coe
                                              MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                              (coe
                                                 MAlonzo.Code.Algebra.Bundles.du_monoid_1036
                                                 (coe v0)))
                                           (coe v4) (coe v2))))))))
                      (coe
                         MAlonzo.Code.Algebra.Structures.d_assoc_482
                         (MAlonzo.Code.Algebra.Structures.d_isSemigroup_696
                            (coe
                               MAlonzo.Code.Algebra.Structures.d_isMonoid_746
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990 (coe v0))))
                         v1 v2
                         (coe
                            MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v4) (coe v1))
                            (coe
                               MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958
                                  (coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0)))
                               (coe v4) (coe v2)))))
                   (let v5
                          = MAlonzo.Code.Algebra.Bundles.d_isCommutativeMonoid_990
                              (coe v0) in
                    coe
                      (let v6
                             = MAlonzo.Code.Algebra.Structures.d_isMonoid_746 (coe v5) in
                       coe
                         (let v7
                                = MAlonzo.Code.Algebra.Structures.d_isSemigroup_696 (coe v6) in
                          coe
                            (coe
                               MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_202
                               (coe MAlonzo.Code.Algebra.Structures.d_isMagma_480 (coe v7))
                               (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)
                               (let v8
                                      = coe MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0) in
                                coe
                                  (coe
                                     MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                     (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v8))
                                     (coe v4)
                                     (coe MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0 v1 v2)))
                               (coe
                                  MAlonzo.Code.Algebra.Bundles.d__'8729'__986 v0
                                  (let v8
                                         = coe
                                             MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v8))
                                        (coe v4) (coe v1)))
                                  (let v8
                                         = coe
                                             MAlonzo.Code.Algebra.Bundles.du_monoid_1036 (coe v0) in
                                   coe
                                     (coe
                                        MAlonzo.Code.Algebra.Definitions.RawMonoid.du__'215'__60
                                        (coe MAlonzo.Code.Algebra.Bundles.du_rawMonoid_958 (coe v8))
                                        (coe v4) (coe v2))))
                               (coe
                                  du_'215''45'distrib'45''43'_216 (coe v0) (coe v1) (coe v2)
                                  (coe v4))))))))
