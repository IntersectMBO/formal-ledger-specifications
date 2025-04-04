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
import qualified MAlonzo.Code.Function.Consequences.Setoid
import qualified MAlonzo.Code.Function.Construct.Composition
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Construct.Symmetry
import qualified MAlonzo.Code.Function.Properties.RightInverse
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
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (coe
         (\ v0 ->
            coe MAlonzo.Code.Function.Construct.Identity.du_inverse_838))
      (\ v0 v1 v2 ->
         coe MAlonzo.Code.Function.Construct.Symmetry.du_inverse_1096 v2)
      (\ v0 v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Function.Construct.Composition.du_inverse_2322 v3 v4)
-- Function.Properties.Inverse.↔-refl
d_'8596''45'refl_36 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'refl_36 ~v0 ~v1 = du_'8596''45'refl_36
du_'8596''45'refl_36 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'refl_36
  = coe MAlonzo.Code.Function.Construct.Identity.du_'8596''45'id_862
-- Function.Properties.Inverse.↔-sym
d_'8596''45'sym_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'sym_38 ~v0 ~v1 ~v2 ~v3 = du_'8596''45'sym_38
du_'8596''45'sym_38 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'sym_38
  = coe
      MAlonzo.Code.Function.Construct.Symmetry.du_'8596''45'sym_1196
-- Function.Properties.Inverse.↔-trans
d_'8596''45'trans_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'trans_40 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8596''45'trans_40
du_'8596''45'trans_40 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'trans_40
  = coe MAlonzo.Code.Function.Construct.Composition.du_inverse_2322
-- Function.Properties.Inverse.↔-isEquivalence
d_'8596''45'isEquivalence_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8596''45'isEquivalence_42 ~v0 = du_'8596''45'isEquivalence_42
du_'8596''45'isEquivalence_42 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8596''45'isEquivalence_42
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
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
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_toFunction_44 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_toFunction_44 v6
du_toFunction_44 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_toFunction_44 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v0))
-- Function.Properties.Inverse.fromFunction
d_fromFunction_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_fromFunction_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_fromFunction_134 v6
du_fromFunction_134 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_fromFunction_134 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Func'46'constructor_6655
      (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 (coe v0))
-- Function.Properties.Inverse.Inverse⇒Injection
d_Inverse'8658'Injection_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
d_Inverse'8658'Injection_224 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Inverse'8658'Injection_224 v2 v5 v6
du_Inverse'8658'Injection_224 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
du_Inverse'8658'Injection_224 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.C_Injection'46'constructor_9107
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v2))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_inverse'691''8658'injective_80
         v0 v1 (MAlonzo.Code.Function.Bundles.d_from_2082 (coe v2))
         (MAlonzo.Code.Function.Bundles.d_to_2080 (coe v2))
         (coe MAlonzo.Code.Function.Bundles.du_inverse'691'_2092 (coe v2)))
-- Function.Properties.Inverse.Inverse⇒Surjection
d_Inverse'8658'Surjection_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
d_Inverse'8658'Surjection_340 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Inverse'8658'Surjection_340 v6
du_Inverse'8658'Surjection_340 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
du_Inverse'8658'Surjection_340 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Surjection'46'constructor_11713
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v0))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_inverse'737''8658'surjective_76
         (MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
         (coe MAlonzo.Code.Function.Bundles.du_inverse'737'_2090 (coe v0)))
-- Function.Properties.Inverse.Inverse⇒Bijection
d_Inverse'8658'Bijection_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_Inverse'8658'Bijection_456 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_Inverse'8658'Bijection_456 v2 v5 v6
du_Inverse'8658'Bijection_456 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_Inverse'8658'Bijection_456 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.C_Bijection'46'constructor_15877
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v2))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v2))
      (coe
         MAlonzo.Code.Function.Consequences.Setoid.du_inverse'7495''8658'bijective_84
         v0 v1 (MAlonzo.Code.Function.Bundles.d_to_2080 (coe v2))
         (MAlonzo.Code.Function.Bundles.d_from_2082 (coe v2))
         (MAlonzo.Code.Function.Bundles.d_inverse_2088 (coe v2)))
-- Function.Properties.Inverse.Inverse⇒Equivalence
d_Inverse'8658'Equivalence_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_Inverse'8658'Equivalence_572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_Inverse'8658'Equivalence_572 v6
du_Inverse'8658'Equivalence_572 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_Inverse'8658'Equivalence_572 v0
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe MAlonzo.Code.Function.Bundles.d_to_2080 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from_2082 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to'45'cong_2084 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_from'45'cong_2086 (coe v0))
-- Function.Properties.Inverse.↔⇒⟶
d_'8596''8658''10230'_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_'8596''8658''10230'_662 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10230'_662
du_'8596''8658''10230'_662 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'8596''8658''10230'_662 = coe du_toFunction_44
-- Function.Properties.Inverse.↔⇒⟵
d_'8596''8658''10229'_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_'8596''8658''10229'_664 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10229'_664
du_'8596''8658''10229'_664 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'8596''8658''10229'_664 = coe du_fromFunction_134
-- Function.Properties.Inverse.↔⇒↣
d_'8596''8658''8611'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
d_'8596''8658''8611'_666 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8611'_666
du_'8596''8658''8611'_666 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Injection_820
du_'8596''8658''8611'_666
  = coe
      du_Inverse'8658'Injection_224
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Function.Properties.Inverse.↔⇒↠
d_'8596''8658''8608'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
d_'8596''8658''8608'_668 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8608'_668
du_'8596''8658''8608'_668 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Surjection_894
du_'8596''8658''8608'_668 = coe du_Inverse'8658'Surjection_340
-- Function.Properties.Inverse.↔⇒⤖
d_'8596''8658''10518'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
d_'8596''8658''10518'_670 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''10518'_670
du_'8596''8658''10518'_670 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Bijection_978
du_'8596''8658''10518'_670
  = coe
      du_Inverse'8658'Bijection_456
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
      (coe
         MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
-- Function.Properties.Inverse.↔⇒⇔
d_'8596''8658''8660'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'8596''8658''8660'_672 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8660'_672
du_'8596''8658''8660'_672 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'8596''8658''8660'_672 = coe du_Inverse'8658'Equivalence_572
-- Function.Properties.Inverse.↔⇒↩
d_'8596''8658''8617'_674 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
d_'8596''8658''8617'_674 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8617'_674
du_'8596''8658''8617'_674 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_LeftInverse_1892
du_'8596''8658''8617'_674
  = coe MAlonzo.Code.Function.Bundles.du_leftInverse_2094
-- Function.Properties.Inverse.↔⇒↪
d_'8596''8658''8618'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
d_'8596''8658''8618'_676 ~v0 ~v1 ~v2 ~v3
  = du_'8596''8658''8618'_676
du_'8596''8658''8618'_676 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_RightInverse_1984
du_'8596''8658''8618'_676
  = coe MAlonzo.Code.Function.Bundles.du_rightInverse_2096
-- Function.Properties.Inverse.transportVia
d_transportVia_718 ::
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
   MAlonzo.Code.Function.Bundles.T_Inverse_2068 -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2068 -> AgdaAny
d_transportVia_718 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 ~v12 v13
                   v14 v15 v16 v17
  = du_transportVia_718
      v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v13 v14 v15 v16 v17
du_transportVia_718 ::
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
   MAlonzo.Code.Function.Bundles.T_Inverse_2068 -> AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Inverse_2068 -> AgdaAny
du_transportVia_718 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12 v13
                    v14 v15 v16
  = coe
      v12 v0 v3 v9 v1 v4 v10 v2 v5 v11 (coe v13 v0 v3 v1 v4 v2 v5 v14)
      (coe
         v12 v3 v6 v9 v4 v7 v10 v5 v8 v11 v15
         (coe v13 v6 v9 v7 v10 v8 v11 v16))
-- Function.Properties.Inverse._.↔-fun
d_'8596''45'fun_740 ::
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
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
d_'8596''45'fun_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_'8596''45'fun_740 v9 v10
du_'8596''45'fun_740 ::
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068
du_'8596''45'fun_740 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8596''8347''8242'_2482
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_2080 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_from_2082 v0 v3))))
      (coe
         (\ v2 v3 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_2082 v1
              (coe v2 (coe MAlonzo.Code.Function.Bundles.d_to_2080 v0 v3))))
-- Function.Properties.Inverse._._.Eq₁._≈_
d__'8776'__808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__808 = erased
-- Function.Properties.Inverse._._.Eq₂._≈_
d__'8776'__834 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> ()
d__'8776'__834 = erased
-- Function.Properties.Inverse._.to-from
d_to'45'from_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_to'45'from_862 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_to'45'from_862 v2 v5 v6 v7 v8
du_to'45'from_862 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Inverse_2068 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_to'45'from_862 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Properties.RightInverse.du_to'45'from_510
      (coe v0) (coe v1)
      (coe MAlonzo.Code.Function.Bundles.du_rightInverse_2096 (coe v2))
      (coe v3) (coe v4)
