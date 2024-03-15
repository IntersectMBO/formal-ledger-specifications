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

module MAlonzo.Code.Function.Properties.Inverse where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Consequences
import qualified MAlonzo.Code.Function.Construct.Composition
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Construct.Symmetry
import qualified MAlonzo.Code.Function.Properties.RightInverse
import qualified MAlonzo.Code.Function.Structures
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Properties.Inverse.isEquivalence
d_isEquivalence_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_32 ~v0 ~v1 = du_isEquivalence_32
du_isEquivalence_32 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_32
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_743
      (coe
         (\ v0 ->
            coe MAlonzo.Code.Function.Construct.Identity.du_inverse_796))
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Function.Construct.Symmetry.du_inverse_1052 v2)
      (\ v0 v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Function.Construct.Composition.du_inverse_2210 v3 v4)
-- Function.Properties.Inverse.↔-refl
d_'8596''45'refl_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8596''45'refl_36 ~v0 ~v1 = du_'8596''45'refl_36
du_'8596''45'refl_36 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8596''45'refl_36
  = coe MAlonzo.Code.Function.Construct.Identity.du_'8596''45'id_820
-- Function.Properties.Inverse.↔-sym
d_'8596''45'sym_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8596''45'sym_38 ~v0 ~v1 ~v2 ~v3 = du_'8596''45'sym_38
du_'8596''45'sym_38 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8596''45'sym_38
  = coe
      MAlonzo.Code.Function.Construct.Symmetry.du_'8596''45'sym_1148
-- Function.Properties.Inverse.↔-trans
d_'8596''45'trans_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8596''45'trans_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8596''45'trans_40
du_'8596''45'trans_40 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8596''45'trans_40
  = coe MAlonzo.Code.Function.Construct.Composition.du_inverse_2210
-- Function.Properties.Inverse.↔-isEquivalence
d_'8596''45'isEquivalence_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8596''45'isEquivalence_42 ~v0 = du_'8596''45'isEquivalence_42
du_'8596''45'isEquivalence_42 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8596''45'isEquivalence_42
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_743
      (\ v0 -> coe du_'8596''45'refl_36)
      (coe (\ v0 v1 -> coe du_'8596''45'sym_38))
      (coe (\ v0 v1 v2 -> coe du_'8596''45'trans_40))
-- Function.Properties.Inverse.toFunction
d_toFunction_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
d_toFunction_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_toFunction_44 v6
du_toFunction_44 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
du_toFunction_44 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6307
      (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1976 (coe v0))
-- Function.Properties.Inverse.fromFunction
d_fromFunction_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
d_fromFunction_130 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_fromFunction_130 v6
du_fromFunction_130 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
du_fromFunction_130 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6307
      (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1978 (coe v0))
-- Function.Properties.Inverse.Inverse⇒Injection
d_Inverse'8658'Injection_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776
d_Inverse'8658'Injection_216 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Inverse'8658'Injection_216 v2 v5 v6
du_Inverse'8658'Injection_216 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776
du_Inverse'8658'Injection_216 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_8673
      (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v2))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1976 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.du_inverse'691''8658'injective_48
         (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v2))
         (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v2))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
                        (coe v5))))))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v6)))))))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v6)))))))
         (coe MAlonzo.Code.Function.Bundles.du_inverse'691'_1984 (coe v2)))
-- Function.Properties.Inverse.Inverse⇒Surjection
d_Inverse'8658'Surjection_302 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_846
d_Inverse'8658'Surjection_302 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Inverse'8658'Surjection_302 v6
du_Inverse'8658'Surjection_302 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_846
du_Inverse'8658'Surjection_302 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11189
      (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1976 (coe v0))
      (coe
         MAlonzo.Code.Function.Consequences.du_inverse'737''8658'surjective_36
         (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.du_inverse'737'_1982 (coe v0)))
-- Function.Properties.Inverse.Inverse⇒Bijection
d_Inverse'8658'Bijection_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_926
d_Inverse'8658'Bijection_392 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Inverse'8658'Bijection_392 v2 v5 v6
du_Inverse'8658'Bijection_392 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_926
du_Inverse'8658'Bijection_392 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15263
      (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v2))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1976 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.du_inverse'7495''8658'bijective_70
         (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v2))
         (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v2))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                     (coe
                        MAlonzo.Code.Function.Structures.d_isEquivalence'8322'_36
                        (coe v5))))))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v6)))))))
         (let v3
                = coe
                    MAlonzo.Code.Function.Bundles.du_isInverse_2002 (coe v0) (coe v1)
                    (coe v2) in
          coe
            (let v4
                   = MAlonzo.Code.Function.Structures.d_isLeftInverse_500 (coe v3) in
             coe
               (let v5
                      = MAlonzo.Code.Function.Structures.d_isCongruent_334 (coe v4) in
                coe
                  (let v6
                         = coe MAlonzo.Code.Function.Structures.du_setoid_40 (coe v5) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                           (coe v6)))))))
         (coe MAlonzo.Code.Function.Bundles.d_inverse_1980 (coe v2)))
-- Function.Properties.Inverse.Inverse⇒Equivalence
d_Inverse'8658'Equivalence_478 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_Inverse'8658'Equivalence_478 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Inverse'8658'Equivalence_478 v6
du_Inverse'8658'Equivalence_478 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_Inverse'8658'Equivalence_478 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_25777
      (coe MAlonzo.Code.Function.Bundles.d_to_1972 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from_1974 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_1976 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_1978 (coe v0))
-- Function.Properties.Inverse.↔⇒⟶
d_'8596''8658''10230'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
d_'8596''8658''10230'_564 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10230'_564
du_'8596''8658''10230'_564 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
du_'8596''8658''10230'_564 = coe du_toFunction_44
-- Function.Properties.Inverse.↔⇒⟵
d_'8596''8658''10229'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
d_'8596''8658''10229'_566 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10229'_566
du_'8596''8658''10229'_566 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Func_714
du_'8596''8658''10229'_566 = coe du_fromFunction_130
-- Function.Properties.Inverse.↔⇒↣
d_'8596''8658''8611'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776
d_'8596''8658''8611'_568 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8611'_568
du_'8596''8658''8611'_568 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Injection_776
du_'8596''8658''8611'_568
  = coe
      du_Inverse'8658'Injection_216
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Function.Properties.Inverse.↔⇒↠
d_'8596''8658''8608'_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_846
d_'8596''8658''8608'_570 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8608'_570
du_'8596''8658''8608'_570 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_846
du_'8596''8658''8608'_570 = coe du_Inverse'8658'Surjection_302
-- Function.Properties.Inverse.↔⇒⤖
d_'8596''8658''10518'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_926
d_'8596''8658''10518'_572 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10518'_572
du_'8596''8658''10518'_572 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_926
du_'8596''8658''10518'_572
  = coe
      du_Inverse'8658'Bijection_392
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Function.Properties.Inverse.↔⇒⇔
d_'8596''8658''8660'_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8596''8658''8660'_574 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8660'_574
du_'8596''8658''8660'_574 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8596''8658''8660'_574 = coe du_Inverse'8658'Equivalence_478
-- Function.Properties.Inverse.↔⇒↩
d_'8596''8658''8617'_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
d_'8596''8658''8617'_576 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8617'_576
du_'8596''8658''8617'_576 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1792
du_'8596''8658''8617'_576
  = coe MAlonzo.Code.Function.Bundles.du_leftInverse_1986
-- Function.Properties.Inverse.↔⇒↪
d_'8596''8658''8618'_578 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1880
d_'8596''8658''8618'_578 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8618'_578
du_'8596''8658''8618'_578 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1880
du_'8596''8658''8618'_578
  = coe MAlonzo.Code.Function.Bundles.du_rightInverse_1988
-- Function.Properties.Inverse.transportVia
d_transportVia_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 -> ()) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> AgdaAny
d_transportVia_620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 ~v12 v13
                   v14 v15 v16 v17
  = du_transportVia_620
      v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v13 v14 v15 v16 v17
du_transportVia_620 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
   MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_1960 -> AgdaAny
du_transportVia_620 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
                    v14 v15 v16
  = coe
      v12 v0 v3 v9 v1 v4 v10 v2 v5 v11 (coe v13 v0 v3 v1 v4 v2 v5 v14)
      (coe
         v12 v3 v6 v9 v4 v7 v10 v5 v8 v11 v15
         (coe v13 v6 v9 v7 v10 v8 v11 v16))
-- Function.Properties.Inverse._.↔-fun
d_'8596''45'fun_642 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   MAlonzo.Code.Agda.Primitive.T_Level_18 ->
   () ->
   (AgdaAny -> ()) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny) ->
   (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
d_'8596''45'fun_642 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_'8596''45'fun_642 v9 v10
du_'8596''45'fun_642 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960
du_'8596''45'fun_642 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2364
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1972 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_1974 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1974 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_1972 v0 v3))))
-- Function.Properties.Inverse._._.Eq₁._≈_
d__'8776'__710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__710 = erased
-- Function.Properties.Inverse._._.Eq₂._≈_
d__'8776'__734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__734 = erased
-- Function.Properties.Inverse._.to-from
d_to'45'from_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'from_760 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_to'45'from_760 v2 v5 v6 v7 v8
du_to'45'from_760 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_1960 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_to'45'from_760 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Properties.RightInverse.du_to'45'from_486
      (coe v0) (coe v1)
      (coe MAlonzo.Code.Function.Bundles.du_rightInverse_1988 (coe v2))
      (coe v3) (coe v4)
