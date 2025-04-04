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

module MAlonzo.Code.Function.Properties.Equivalence where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Construct.Composition
import qualified MAlonzo.Code.Function.Construct.Identity
import qualified MAlonzo.Code.Function.Construct.Symmetry
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Function.Properties.Equivalence.mkEquivalence
d_mkEquivalence_28 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_mkEquivalence_28 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_mkEquivalence_28 v6 v7
du_mkEquivalence_28 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_mkEquivalence_28 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.C_Equivalence'46'constructor_26829
      (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_to_760 (coe v1))
      (coe MAlonzo.Code.Function.Bundles.d_cong_762 (coe v0))
      (coe MAlonzo.Code.Function.Bundles.d_cong_762 (coe v1))
-- Function.Properties.Equivalence.⟶×⟵⇒⇔
d_'10230''215''10229''8658''8660'_38 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_'10230''215''10229''8658''8660'_38 ~v0 ~v1 ~v2 ~v3
  = du_'10230''215''10229''8658''8660'_38
du_'10230''215''10229''8658''8660'_38 ::
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Func_754 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_'10230''215''10229''8658''8660'_38 = coe du_mkEquivalence_28
-- Function.Properties.Equivalence.⇔⇒⟶
d_'8660''8658''10230'_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_'8660''8658''10230'_40 ~v0 ~v1 ~v2 ~v3
  = du_'8660''8658''10230'_40
du_'8660''8658''10230'_40 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'8660''8658''10230'_40
  = coe MAlonzo.Code.Function.Bundles.du_toFunction_1828
-- Function.Properties.Equivalence.⇔⇒⟵
d_'8660''8658''10229'_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
d_'8660''8658''10229'_42 ~v0 ~v1 ~v2 ~v3
  = du_'8660''8658''10229'_42
du_'8660''8658''10229'_42 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Func_754
du_'8660''8658''10229'_42
  = coe MAlonzo.Code.Function.Bundles.du_fromFunction_1886
-- Function.Properties.Equivalence.refl
d_refl_44 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_refl_44 ~v0 ~v1 ~v2 = du_refl_44
du_refl_44 :: MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_refl_44
  = coe MAlonzo.Code.Function.Construct.Identity.du_equivalence_832
-- Function.Properties.Equivalence.sym
d_sym_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_sym_48 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_sym_48
du_sym_48 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_sym_48
  = coe MAlonzo.Code.Function.Construct.Symmetry.du_equivalence_852
-- Function.Properties.Equivalence.trans
d_trans_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_trans_50 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 = du_trans_50
du_trans_50 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_trans_50
  = coe
      MAlonzo.Code.Function.Construct.Composition.du_equivalence_1852
-- Function.Properties.Equivalence.isEquivalence
d_isEquivalence_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_52 ~v0 ~v1 = du_isEquivalence_52
du_isEquivalence_52 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_52
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (\ v0 -> coe du_refl_44) (\ v0 v1 -> coe du_sym_48)
      (\ v0 v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Function.Construct.Composition.du_equivalence_1852 v3
           v4)
-- Function.Properties.Equivalence.setoid
d_setoid_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_58 ~v0 ~v1 = du_setoid_58
du_setoid_58 :: MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_58
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (coe du_isEquivalence_52)
-- Function.Properties.Equivalence.⇔-isEquivalence
d_'8660''45'isEquivalence_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8660''45'isEquivalence_64 ~v0 = du_'8660''45'isEquivalence_64
du_'8660''45'isEquivalence_64 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8660''45'isEquivalence_64
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (coe
         (\ v0 ->
            coe MAlonzo.Code.Function.Construct.Identity.du_equivalence_832))
      (coe
         (\ v0 v1 ->
            coe MAlonzo.Code.Function.Construct.Symmetry.du_equivalence_852))
      (coe
         (\ v0 v1 v2 ->
            coe
              MAlonzo.Code.Function.Construct.Composition.du_equivalence_1852))
-- Function.Properties.Equivalence.⇔-setoid
d_'8660''45'setoid_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8660''45'setoid_70 ~v0 = du_'8660''45'setoid_70
du_'8660''45'setoid_70 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8660''45'setoid_70
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (coe du_'8660''45'isEquivalence_64)
