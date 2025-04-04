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

module MAlonzo.Code.Function.Properties.Bijection where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Construct.Composition
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Construct.Symmetry
import qualified MAlonzo.Code.Function.Properties.Inverse
import qualified MAlonzo.Code.Function.Properties.Surjection
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Properties.Bijection.refl
d_refl_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_refl_28 ~v0 ~v1 ~v2 = du_refl_28
du_refl_28 :: MAlonzo.Code.Function.Bundles.T_Bijection_978
du_refl_28
  = coe MAlonzo.Code.Function.Construct.Identity.du_bijection_830
-- Function.Properties.Bijection.sym-≡
d_sym'45''8801'_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_sym'45''8801'_30 ~v0 ~v1 v2 ~v3 ~v4 = du_sym'45''8801'_30 v2
du_sym'45''8801'_30 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_sym'45''8801'_30 v0
  = coe
      MAlonzo.Code.Function.Construct.Symmetry.du_bijection'45''8801'_750
      (coe v0)
-- Function.Properties.Bijection.trans
d_trans_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_trans_32 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_trans_32
du_trans_32 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_trans_32
  = coe MAlonzo.Code.Function.Construct.Composition.du_bijection_1686
-- Function.Properties.Bijection.⤖-isEquivalence
d_'10518''45'isEquivalence_34 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'10518''45'isEquivalence_34 ~v0 = du_'10518''45'isEquivalence_34
du_'10518''45'isEquivalence_34 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'10518''45'isEquivalence_34
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (coe (\ v0 -> coe du_refl_28))
      (coe
         (\ v0 v1 ->
            coe
              du_sym'45''8801'_30
              (coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)))
      (coe (\ v0 v1 v2 -> coe du_trans_32))
-- Function.Properties.Bijection.Bijection⇒Inverse
d_Bijection'8658'Inverse_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_Bijection'8658'Inverse_36 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Bijection'8658'Inverse_36 v2 v5 v6
du_Bijection'8658'Inverse_36 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_Bijection'8658'Inverse_36 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.C_Inverse'46'constructor_39905
      (coe MAlonzo.Code.Function.Bundles.d_to_986 (coe v2))
      (coe
         MAlonzo.Code.Function.Bundles.du_to'8315'_972
         (coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2)))
      (coe MAlonzo.Code.Function.Bundles.d_cong_988 (coe v2))
      (coe
         MAlonzo.Code.Function.Properties.Surjection.du_injective'8658'to'8315''45'cong_402
         (coe v0) (coe v1)
         (coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2))
         (coe MAlonzo.Code.Function.Bundles.du_injective_992 (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            (\ v3 v4 v5 ->
               let v6
                     = coe
                         MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0) (coe v1)
                         (coe v2) in
               coe
                 (let v7
                        = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v6) in
                  coe
                    (let v8
                           = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v7) in
                     coe
                       (let v9
                              = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v8) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                             (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                             (coe MAlonzo.Code.Function.Bundles.d_to_986 v2 v4)
                             (coe
                                MAlonzo.Code.Function.Bundles.d_to_986 v2
                                (coe
                                   MAlonzo.Code.Function.Bundles.du_to'8315'_972
                                   (coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2))
                                   (coe v3)))
                             v3
                             (coe
                                MAlonzo.Code.Function.Bundles.d_cong_988 v2 v4
                                (coe
                                   MAlonzo.Code.Function.Bundles.du_to'8315'_972
                                   (coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2))
                                   (coe v3))
                                v5)
                             (coe
                                du_to'8728'to'8315'_122 (coe v0) (coe v1) (coe v2) (coe v3))))))))
         (coe
            (\ v3 v4 v5 ->
               coe
                 MAlonzo.Code.Function.Bundles.du_injective_992 v2
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (let v6
                           = coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2) in
                     coe
                       (coe
                          MAlonzo.Code.Function.Structures.du_strictlySurjective_242
                          (coe
                             MAlonzo.Code.Function.Bundles.du_isSurjection_966 (coe v0) (coe v1)
                             (coe v6))
                          (coe v4))))
                 v3
                 (let v6
                        = coe
                            MAlonzo.Code.Function.Bundles.du_isBijection_1012 (coe v0) (coe v1)
                            (coe v2) in
                  coe
                    (let v7
                           = MAlonzo.Code.Function.Structures.d_isInjection_258 (coe v6) in
                     coe
                       (let v8
                              = MAlonzo.Code.Function.Structures.d_isCongruent_104 (coe v7) in
                        coe
                          (let v9
                                 = coe MAlonzo.Code.Function.Structures.du_setoid_68 (coe v8) in
                           coe
                             (coe
                                MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v9))
                                (coe
                                   MAlonzo.Code.Function.Bundles.d_to_986 v2
                                   (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                      (let v10
                                             = coe
                                                 MAlonzo.Code.Function.Bundles.du_surjection_998
                                                 (coe v2) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Function.Structures.du_strictlySurjective_242
                                            (coe
                                               MAlonzo.Code.Function.Bundles.du_isSurjection_966
                                               (coe v0) (coe v1) (coe v10))
                                            (coe v4)))))
                                v4 (coe MAlonzo.Code.Function.Bundles.d_to_986 v2 v3)
                                (coe du_to'8728'to'8315'_122 (coe v0) (coe v1) (coe v2) (coe v4))
                                v5))))))))
-- Function.Properties.Bijection._.to∘to⁻
d_to'8728'to'8315'_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 -> AgdaAny -> AgdaAny
d_to'8728'to'8315'_122 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_to'8728'to'8315'_122 v2 v5 v6 v7
du_to'8728'to'8315'_122 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 -> AgdaAny -> AgdaAny
du_to'8728'to'8315'_122 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (let v4
             = coe MAlonzo.Code.Function.Bundles.du_surjection_998 (coe v2) in
       coe
         (coe
            MAlonzo.Code.Function.Structures.du_strictlySurjective_242
            (coe
               MAlonzo.Code.Function.Bundles.du_isSurjection_966 (coe v0) (coe v1)
               (coe v4))
            (coe v3)))
-- Function.Properties.Bijection.Bijection⇒Equivalence
d_Bijection'8658'Equivalence_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_Bijection'8658'Equivalence_128 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Bijection'8658'Equivalence_128 v2 v5 v6
du_Bijection'8658'Equivalence_128 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_Bijection'8658'Equivalence_128 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Properties.Inverse.du_Inverse'8658'Equivalence_572
      (coe du_Bijection'8658'Inverse_36 (coe v0) (coe v1) (coe v2))
-- Function.Properties.Bijection.⤖⇒↔
d_'10518''8658''8596'_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'10518''8658''8596'_130 ~v0 ~v1 ~v2 ~v3
  = du_'10518''8658''8596'_130
du_'10518''8658''8596'_130 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'10518''8658''8596'_130
  = coe
      du_Bijection'8658'Inverse_36
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Function.Properties.Bijection.⤖⇒⇔
d_'10518''8658''8660'_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'10518''8658''8660'_132 ~v0 ~v1 ~v2 ~v3
  = du_'10518''8658''8660'_132
du_'10518''8658''8660'_132 ::
  MAlonzo.Code.Function.Bundles.T_Bijection_978 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'10518''8658''8660'_132
  = coe
      du_Bijection'8658'Equivalence_128
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
