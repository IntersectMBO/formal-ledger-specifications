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

module MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties
import qualified MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Maybe.Relation.Unary.All
import qualified MAlonzo.Code.Data.Nat.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Properties.Setoid
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Double
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.trans
d_trans_26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_trans_26 ~v0 ~v1 v2 = du_trans_26 v2
du_trans_26 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_trans_26 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_trans_40
      (coe
         MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._≋_
d__'8779'__32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8779'__32 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._⊆_
d__'8838'__76 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__76 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint
d_Disjoint_84 a0 a1 a2 a3 a4 a5 a6 a7 = ()
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.fromAny
d_fromAny_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_fromAny_102 ~v0 ~v1 ~v2 = du_fromAny_102
du_fromAny_102 ::
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_fromAny_102 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_fromAny_74
      v1 v2
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.toAny
d_toAny_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_toAny_108 ~v0 ~v1 ~v2 = du_toAny_108
du_toAny_108 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_toAny_108 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_toAny_60
      v2 v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.refl
d_refl_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_refl_130 ~v0 ~v1 v2 = du_refl_130 v2
du_refl_130 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_refl_130 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.trans
d_trans_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_trans_134 ~v0 ~v1 v2 = du_trans_134 v2
du_trans_134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_trans_134 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_trans_1140
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_40
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Sublist
d_Sublist_217 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷-injectiveˡ
d_'8759''45'injective'737'_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'737'_234 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷-injectiveʳ
d_'8759''45'injective'691'_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''45'injective'691'_244 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷ʳ-injective
d_'8759''691''45'injective_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8759''691''45'injective_250 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-trans-idˡ
d_'8838''45'trans'45'id'737'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'737'_266 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-trans-idʳ
d_'8838''45'trans'45'id'691'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'id'691'_292 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-trans-assoc
d_'8838''45'trans'45'assoc_330 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'trans'45'assoc_330 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning._IsRelatedTo_
d__IsRelatedTo__370 a0 a1 a2 a3 a4 = ()
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning._∎
d__'8718'_372 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d__'8718'_372 ~v0 ~v1 v2 = du__'8718'_372 v2
du__'8718'_372 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du__'8718'_372 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.IsEquality
d_IsEquality_374 a0 a1 a2 a3 a4 a5 = ()
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.IsEquality?
d_IsEquality'63'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_376 ~v0 ~v1 ~v2 = du_IsEquality'63'_376
du_IsEquality'63'_376 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_376 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_IsEquality'63'_138
      v2
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.begin_
d_begin__378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_begin__378 ~v0 ~v1 v2 = du_begin__378 v2
du_begin__378 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_begin__378 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.begin_
d_begin__380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_begin__380 ~v0 ~v1 ~v2 = du_begin__380
du_begin__380 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_begin__380
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__128
           (coe v0) v1 v2 v3)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.equalitySubRelation
d_equalitySubRelation_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_equalitySubRelation_382 ~v0 ~v1 ~v2 = du_equalitySubRelation_382
du_equalitySubRelation_382 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_equalitySubRelation_382
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_equalitySubRelation_152
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.extractEquality
d_extractEquality_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_extractEquality_386 ~v0 ~v1 ~v2 = du_extractEquality_386
du_extractEquality_386 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T_IsEquality_122 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_extractEquality_386 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_extractEquality_148
      v2 v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.start
d_start_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_start_392 ~v0 ~v1 v2 = du_start_392 v2
du_start_392 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_start_392 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-∼
d_step'45''8764'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8764'_394 ~v0 ~v1 v2 = du_step'45''8764'_394 v2
du_step'45''8764'_394 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8764'_394 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≈
d_step'45''8776'_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776'_396 ~v0 ~v1 v2 = du_step'45''8776'_396 v2
du_step'45''8776'_396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776'_396 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_374
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≈-⟨
d_step'45''8776''45''10216'_398 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''45''10216'_398 ~v0 ~v1 v2
  = du_step'45''8776''45''10216'_398 v2
du_step'45''8776''45''10216'_398 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''45''10216'_398 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe v3))))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≈-⟩
d_step'45''8776''45''10217'_400 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''45''10217'_400 ~v0 ~v1 v2
  = du_step'45''8776''45''10217'_400 v2
du_step'45''8776''45''10217'_400 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''45''10217'_400 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≈˘
d_step'45''8776''728'_402 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8776''728'_402 ~v0 ~v1 v2
  = du_step'45''8776''728'_402 v2
du_step'45''8776''728'_402 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8776''728'_402 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
                  (coe v3))
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                     (coe v3))))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≋
d_step'45''8779'_404 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779'_404 ~v0 ~v1 v2 = du_step'45''8779'_404 v2
du_step'45''8779'_404 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779'_404 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779'_384
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≋-⟨
d_step'45''8779''45''10216'_406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10216'_406 ~v0 ~v1 v2
  = du_step'45''8779''45''10216'_406 v2
du_step'45''8779''45''10216'_406 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10216'_406 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10216'_382
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1))))
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1))))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≋-⟩
d_step'45''8779''45''10217'_408 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''45''10217'_408 ~v0 ~v1 v2
  = du_step'45''8779''45''10217'_408 v2
du_step'45''8779''45''10217'_408 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''45''10217'_408 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''45''10217'_380
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≋˘
d_step'45''8779''728'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8779''728'_410 ~v0 ~v1 v2
  = du_step'45''8779''728'_410 v2
du_step'45''8779''728'_410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8779''728'_410 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8779''728'_386
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1))))
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_86
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1))))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≡
d_step'45''8801'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801'_412 ~v0 ~v1 ~v2 = du_step'45''8801'_412
du_step'45''8801'_412 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801'_412
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≡-∣
d_step'45''8801''45''8739'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''8739'_414 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_step'45''8801''45''8739'_414 v5
du_step'45''8801''45''8739'_414 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''8739'_414 v0 = coe v0
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≡-⟨
d_step'45''8801''45''10216'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10216'_416 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10216'_416
du_step'45''8801''45''10216'_416 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10216'_416
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≡-⟩
d_step'45''8801''45''10217'_418 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''45''10217'_418 ~v0 ~v1 ~v2
  = du_step'45''8801''45''10217'_418
du_step'45''8801''45''10217'_418 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''45''10217'_418
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≡˘
d_step'45''8801''728'_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8801''728'_420 ~v0 ~v1 ~v2 = du_step'45''8801''728'_420
du_step'45''8801''728'_420 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8801''728'_420
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-≲
d_step'45''8818'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8818'_422 ~v0 ~v1 v2 = du_step'45''8818'_422 v2
du_step'45''8818'_422 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8818'_422 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (let v3
                = MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8818'_306
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
                  (coe v3)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.step-⊆
d_step'45''8838'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_step'45''8838'_424 ~v0 ~v1 v2 = du_step'45''8838'_424 v2
du_step'45''8838'_424 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_step'45''8838'_424 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v1)))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.stop
d_stop_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_stop_426 ~v0 ~v1 v2 = du_stop_426 v2
du_stop_426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_stop_426 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.≈-go
d_'8776''45'go_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8776''45'go_428 ~v0 ~v1 v2 = du_'8776''45'go_428 v2
du_'8776''45'go_428 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8776''45'go_428 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.≡-go
d_'8801''45'go_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8801''45'go_430 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7
  = du_'8801''45'go_430 v7
du_'8801''45'go_430 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8801''45'go_430 v0 = coe v0
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.⊆-Reasoning.≲-go
d_'8818''45'go_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
d_'8818''45'go_432 ~v0 ~v1 v2 = du_'8818''45'go_432 v2
du_'8818''45'go_432 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.T__IsRelatedTo__62
du_'8818''45'go_432 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'preorder_50
              (coe v0) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_preorder_1464
                 (coe v1) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_164 (coe v2))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.tail-⊆
d_tail'45''8838'_448 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
d_tail'45''8838'_448 ~v0 ~v1 v2 v3 = du_tail'45''8838'_448 v2 v3
du_tail'45''8838'_448 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> MAlonzo.Code.Data.Maybe.Relation.Unary.All.T_All_18
du_tail'45''8838'_448 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_tail'45'Sublist_168
      (coe v1) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v1))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.take-⊆
d_take'45''8838'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'45''8838'_456 ~v0 ~v1 v2 v3 v4
  = du_take'45''8838'_456 v2 v3 v4
du_take'45''8838'_456 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'45''8838'_456 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_take'45'Sublist_182
      (coe v2) (coe v2) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.drop-⊆
d_drop'45''8838'_466 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'45''8838'_466 ~v0 ~v1 v2 v3 v4
  = du_drop'45''8838'_466 v2 v3 v4
du_drop'45''8838'_466 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'45''8838'_466 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_drop'45'Sublist_202
      (coe v1) (coe v2) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.takeWhile-⊆
d_takeWhile'45''8838'_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'45''8838'_482 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_takeWhile'45''8838'_482 v2 v5 v6
du_takeWhile'45''8838'_482 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'45''8838'_482 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_takeWhile'45'Sublist_238
      (coe v1) (coe v2) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.dropWhile-⊆
d_dropWhile'45''8838'_488 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'45''8838'_488 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_dropWhile'45''8838'_488 v2 v5 v6
du_dropWhile'45''8838'_488 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'45''8838'_488 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_dropWhile'45'Sublist_272
      (coe v1) (coe v2) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.filter-⊆
d_filter'45''8838'_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'45''8838'_494 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_filter'45''8838'_494 v2 v5 v6
du_filter'45''8838'_494 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'45''8838'_494 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_filter'45'Sublist_306
      (coe v1) (coe v2) (coe v2)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.takeWhile⊆filter
d_takeWhile'8838'filter_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'8838'filter_508 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_takeWhile'8838'filter_508 v2 v5 v6
du_takeWhile'8838'filter_508 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'8838'filter_508 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_takeWhile'45'filter_906
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         v2)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.filter⊆dropWhile
d_filter'8838'dropWhile_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'8838'dropWhile_514 ~v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_filter'8838'dropWhile_514 v2 v5 v6
du_filter'8838'dropWhile_514 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'8838'dropWhile_514 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_filter'45'dropWhile_936
      (coe v1) (coe v2)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         v2)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷ˡ⁻
d_'8759''737''8315'_522 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''737''8315'_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8759''737''8315'_522 v5
du_'8759''737''8315'_522 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''737''8315'_522 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8759''737''8315'_352
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷ʳ⁻
d_'8759''691''8315'_524 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''691''8315'_524 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8759''691''8315'_524
du_'8759''691''8315'_524 ::
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''691''8315'_524 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8759''691''8315'_362
      v1
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷⁻
d_'8759''8315'_526 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8759''8315'_526 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8759''8315'_526 v6
du_'8759''8315'_526 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8759''8315'_526 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8759''8315'_376
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._._⊆_
d__'8838'__546 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__546 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.map⁺
d_map'8314'_554 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_map'8314'_554 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 ~v8 v9 v10
  = du_map'8314'_554 v6 v7 v9 v10
du_map'8314'_554 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_map'8314'_554 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_map'8314'_406
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_map_32
         (coe v2) (coe v0) (coe v1) (coe v3))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.++⁺ˡ
d_'43''43''8314''737'_568 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''737'_568 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'43''43''8314''737'_568
du_'43''43''8314''737'_568 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''737'_568
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'43''43''737'_524
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.++⁺ʳ
d_'43''43''8314''691'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314''691'_572 ~v0 ~v1 ~v2 v3 v4
  = du_'43''43''8314''691'_572 v3 v4
du_'43''43''8314''691'_572 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314''691'_572 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'43''43''691'_530
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.++⁺
d_'43''43''8314'_574 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8314'_574 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_'43''43''8314'_574 v3 v4
du_'43''43''8314'_574 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8314'_574 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'43''43''8314'_488
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.++⁻
d_'43''43''8315'_576 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'43''43''8315'_576 ~v0 ~v1 ~v2 v3 v4 ~v5 v6
  = du_'43''43''8315'_576 v3 v4 v6
du_'43''43''8315'_576 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'43''43''8315'_576 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'43''43''8315'_504
      (coe v0) (coe v1) (coe v2) v4
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.concat⁺
d_concat'8314'_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_concat'8314'_582 ~v0 ~v1 ~v2 v3 v4 = du_concat'8314'_582 v3 v4
du_concat'8314'_582 ::
  [[AgdaAny]] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_concat'8314'_582 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_concat'8314'_546
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._._∈_
d__'8712'__586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] -> [[AgdaAny]] -> ()
d__'8712'__586 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.xs∈xss⇒xs⊆concat[xss]
d_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 ~v0 ~v1 v2 v3 v4
                                                 v5
  = du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 v2 v3 v4 v5
du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [[AgdaAny]] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_start_76
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
            (coe
               MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'isPreorder_40
               (coe v0))))
      v1 (coe MAlonzo.Code.Data.List.Base.du_concat_244 v2)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_372
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8776''45'go_106
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
               (coe
                  MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'isPreorder_40
                  (coe v0))))
         (coe
            MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Properties.du_symmetric_40
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_38
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))))
         v1
         (coe
            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
            (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
         (coe MAlonzo.Code.Data.List.Base.du_concat_244 v2)
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8838'_318
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_'8818''45'go_96
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                  (coe
                     MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'isPreorder_40
                     (coe v0))))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            (coe MAlonzo.Code.Data.List.Base.du_concat_244 v2)
            (coe MAlonzo.Code.Data.List.Base.du_concat_244 v2)
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Double.du_stop_116
                  (coe
                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_isPreorder_1316
                     (coe
                        MAlonzo.Code.Relation.Binary.Properties.Setoid.du_'8776''45'isPreorder_40
                        (coe v0))))
               (coe MAlonzo.Code.Data.List.Base.du_concat_244 v2))
            (coe
               du_concat'8314'_582
               (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1)) v2
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_map_32
                  (coe
                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Setoid.du_'8838''45'reflexive_202)
                  (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
                  (coe v2)
                  (coe
                     MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_fromAny_74
                     (coe v2) (coe v3)))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.du_reflexive_42
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
               (coe
                  MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
                  (coe v0)))
            (coe
               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.all⊆concat
d_all'8838'concat_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [[AgdaAny]] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_all'8838'concat_610 ~v0 ~v1 v2 v3 = du_all'8838'concat_610 v2 v3
du_all'8838'concat_610 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [[AgdaAny]] -> MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_all'8838'concat_610 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Unary.All.du_tabulate'8347'_258
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
         (coe v0))
      (coe v1)
      (coe
         (\ v2 ->
            coe
              du_xs'8712'xss'8658'xs'8838'concat'91'xss'93'_594 (coe v0) (coe v2)
              (coe v1)))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.take⁺
d_take'8314'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_take'8314'_616 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_take'8314'_616 v2 v4 v5 v6
du_take'8314'_616 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_take'8314'_616 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_take'8314'_556
      (coe v1) (coe v2) (coe v2) (coe v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         v2)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.drop⁺
d_drop'8314'_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314'_624 ~v0 ~v1 ~v2 v3 ~v4 v5 v6
  = du_drop'8314'_624 v3 v5 v6
du_drop'8314'_624 ::
  Integer ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314'_624 v0 v1 v2
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_drop'8314'_568
      (coe v0) (coe v1) (coe v2)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.drop⁺-≥
d_drop'8314''45''8805'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8805'_630 ~v0 ~v1 v2 v3 ~v4 v5 v6
  = du_drop'8314''45''8805'_630 v2 v3 v5 v6
du_drop'8314''45''8805'_630 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8805'_630 v0 v1 v2 v3
  = coe
      du_drop'8314'_624 v1 v2 v2 v3
      (coe
         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_refl_36
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
         (coe v2))
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.drop⁺-⊆
d_drop'8314''45''8838'_640 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_drop'8314''45''8838'_640 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_drop'8314''45''8838'_640 v3 v4 v5 v6
du_drop'8314''45''8838'_640 ::
  [AgdaAny] ->
  [AgdaAny] ->
  Integer ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_drop'8314''45''8838'_640 v0 v1 v2 v3
  = coe
      du_drop'8314'_624 v2 v0 v1
      (MAlonzo.Code.Data.Nat.Properties.d_'8804''45'refl_2900 (coe v2))
      v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.takeWhile⁺
d_takeWhile'8314'_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_takeWhile'8314'_664 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 ~v10
  = du_takeWhile'8314'_664 v2 v7 v8 v9
du_takeWhile'8314'_664 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_takeWhile'8314'_664 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8838''45'takeWhile'45'Sublist_628
      (coe v1) (coe v2) (coe v3) (coe v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         v3)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.dropWhile⁺
d_dropWhile'8314'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_dropWhile'8314'_676 ~v0 ~v1 v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 ~v10
  = du_dropWhile'8314'_676 v2 v7 v8 v9
du_dropWhile'8314'_676 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_dropWhile'8314'_676 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8839''45'dropWhile'45'Sublist_700
      (coe v1) (coe v2) (coe v3) (coe v3)
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_refl_36
         (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
            (coe
               MAlonzo.Code.Data.List.Relation.Binary.Equality.Setoid.du_'8779''45'setoid_78
               (coe v0)))
         v3)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.filter⁺
d_filter'8314'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_filter'8314'_698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_filter'8314'_698 v7 v8 v9 v10
du_filter'8314'_698 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_filter'8314'_698 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8838''45'filter'45'Sublist_786
      (coe v0) (coe v1) (coe v2) (coe v3) v5
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.reverseAcc⁺
d_reverseAcc'8314'_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverseAcc'8314'_704 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_reverseAcc'8314'_704 v3 v4
du_reverseAcc'8314'_704 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverseAcc'8314'_704 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_reverseAcc'8314'_978
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.ʳ++⁺
d_'691''43''43''8314'_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'691''43''43''8314'_706 ~v0 ~v1 ~v2 v3 v4 ~v5 ~v6
  = du_'691''43''43''8314'_706 v3 v4
du_'691''43''43''8314'_706 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'691''43''43''8314'_706 v0 v1
  = coe du_reverseAcc'8314'_704 (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.reverse⁺
d_reverse'8314'_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8314'_708 ~v0 ~v1 ~v2 v3 v4 = du_reverse'8314'_708 v3 v4
du_reverse'8314'_708 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8314'_708 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_reverse'8314'_996
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.reverse⁻
d_reverse'8315'_710 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_reverse'8315'_710 ~v0 ~v1 ~v2 v3 v4 = du_reverse'8315'_710 v3 v4
du_reverse'8315'_710 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_reverse'8315'_710 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_reverse'8315'_1000
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-mergeˡ
d_'8838''45'merge'737'_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'737'_726 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_'8838''45'merge'737'_726 v2 v5 v6 v7
du_'8838''45'merge'737'_726 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'737'_726 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
             (coe v3)
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
                    (coe v2)
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  coe
                    (let v9
                           = coe
                               du_'8838''45'merge'737'_726 (coe v0) (coe v1) (coe v5) (coe v3) in
                     coe
                       (let v10
                              = coe
                                  du_'8838''45'merge'737'_726 (coe v0) (coe v1) (coe v2) (coe v7) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                               -> if coe v11
                                    then coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                                    (coe v0))
                                                 v4)
                                              v9)
                                    else coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                              v10)
                             _ -> MAlonzo.RTE.mazUnreachableError)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-mergeʳ
d_'8838''45'merge'691'_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'8838''45'merge'691'_774 ~v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_'8838''45'merge'691'_774 v2 v5 v6 v7
du_'8838''45'merge'691'_774 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'8838''45'merge'691'_774 v0 v1 v2 v3
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_refl_1116
             (coe
                MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                (coe
                   MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
             (coe v3)
      (:) v4 v5
        -> case coe v3 of
             []
               -> coe
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.du_minimum_48
                    (coe
                       MAlonzo.Code.Data.List.Base.du_merge_192 (coe v1) (coe v2)
                       (coe v3))
             (:) v6 v7
               -> let v8 = coe v1 v4 v6 in
                  coe
                    (let v9
                           = coe
                               du_'8838''45'merge'691'_774 (coe v0) (coe v1) (coe v5) (coe v3) in
                     coe
                       (let v10
                              = coe
                                  du_'8838''45'merge'691'_774 (coe v0) (coe v1) (coe v2) (coe v7) in
                        coe
                          (case coe v8 of
                             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v11 v12
                               -> if coe v11
                                    then coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36
                                              v9)
                                    else coe
                                           seq (coe v12)
                                           (coe
                                              MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46
                                              (coe
                                                 MAlonzo.Code.Relation.Binary.Structures.d_refl_36
                                                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62
                                                    (coe v0))
                                                 v6)
                                              v10)
                             _ -> MAlonzo.RTE.mazUnreachableError)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷⁻¹
d_'8759''8315''185'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8759''8315''185'_822 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8759''8315''185'_822 v6
du_'8759''8315''185'_822 ::
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8759''8315''185'_822 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8759''8315''185'_1026
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.∷ʳ⁻¹
d_'8759''691''8315''185'_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8759''691''8315''185'_824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_'8759''691''8315''185'_824
du_'8759''691''8315''185'_824 ::
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8759''691''8315''185'_824 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8759''691''8315''185'_1032
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.length-mono-≤
d_length'45'mono'45''8804'_830 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
d_length'45'mono'45''8804'_830 ~v0 ~v1 ~v2 v3 v4
  = du_length'45'mono'45''8804'_830 v3 v4
du_length'45'mono'45''8804'_830 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.Nat.Base.T__'8804'__22
du_length'45'mono'45''8804'_830 v0 v1
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_length'45'mono'45''8804'_116
      (coe v0) (coe v1)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.to-≋
d_to'45''8779'_832 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
d_to'45''8779'_832 ~v0 ~v1 ~v2 v3 v4 = du_to'45''8779'_832 v3 v4
du_to'45''8779'_832 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Pointwise.Base.T_Pointwise_48
du_to'45''8779'_832 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_toPointwise_132
      (coe v0) (coe v1) v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.[]⊆-universal
d_'91''93''8838''45'universal_836 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_'91''93''8838''45'universal_836 ~v0 ~v1 ~v2
  = du_'91''93''8838''45'universal_836
du_'91''93''8838''45'universal_836 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
du_'91''93''8838''45'universal_836
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Sublist'45''91''93''45'universal_1050
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.[]⊆-irrelevant
d_'91''93''8838''45'irrelevant_840 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'91''93''8838''45'irrelevant_840 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._._∈_
d__'8712'__848 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny -> [AgdaAny] -> ()
d__'8712'__848 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.to∈-injective
d_to'8712''45'injective_854 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''45'injective_854 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.from∈-injective
d_from'8712''45'injective_860 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_from'8712''45'injective_860 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.to∈∘from∈≗id
d_to'8712''8728'from'8712''8791'id_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_to'8712''8728'from'8712''8791'id_864 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.[x]⊆xs⤖x∈xs
d_'91'x'93''8838'xs'10518'x'8712'xs_866 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_1004
d_'91'x'93''8838'xs'10518'x'8712'xs_866 ~v0 ~v1 ~v2 ~v3 v4
  = du_'91'x'93''8838'xs'10518'x'8712'xs_866 v4
du_'91'x'93''8838'xs'10518'x'8712'xs_866 ::
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Bijection_1004
du_'91'x'93''8838'xs'10518'x'8712'xs_866 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Sublist'45''91'x'93''45'bijection_1102
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._∷ʳ-DisjointUnion³_
d__'8759''691''45'DisjointUnion'179'__870 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''691''45'DisjointUnion'179'__870 ~v0 ~v1 ~v2
  = du__'8759''691''45'DisjointUnion'179'__870
du__'8759''691''45'DisjointUnion'179'__870 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''691''45'DisjointUnion'179'__870 v0 v1 v2 v3 v4 v5 v6 v7
                                           v8 v9 v10 v11 v12 v13 v14
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''691''45'DisjointUnion'179'__2260
      v14
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._∷₁-DisjointUnion³_
d__'8759''8321''45'DisjointUnion'179'__872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8321''45'DisjointUnion'179'__872 ~v0 ~v1 ~v2
  = du__'8759''8321''45'DisjointUnion'179'__872
du__'8759''8321''45'DisjointUnion'179'__872 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8321''45'DisjointUnion'179'__872 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8321''45'DisjointUnion'179'__2304
      v13 v15 v16
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._∷₂-DisjointUnion³_
d__'8759''8322''45'DisjointUnion'179'__874 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8322''45'DisjointUnion'179'__874 ~v0 ~v1 ~v2
  = du__'8759''8322''45'DisjointUnion'179'__874
du__'8759''8322''45'DisjointUnion'179'__874 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8322''45'DisjointUnion'179'__874 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8322''45'DisjointUnion'179'__2348
      v13 v15 v16
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._._∷₃-DisjointUnion³_
d__'8759''8323''45'DisjointUnion'179'__876 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d__'8759''8323''45'DisjointUnion'179'__876 ~v0 ~v1 ~v2
  = du__'8759''8323''45'DisjointUnion'179'__876
du__'8759''8323''45'DisjointUnion'179'__876 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du__'8759''8323''45'DisjointUnion'179'__876 v0 v1 v2 v3 v4 v5 v6 v7
                                            v8 v9 v10 v11 v12 v13 v14 v15 v16
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du__'8759''8323''45'DisjointUnion'179'__2392
      v13 v15 v16
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint-irrefl
d_Disjoint'45'irrefl_878 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_Disjoint'45'irrefl_878 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint-irrefl′
d_Disjoint'45'irrefl'8242'_880 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
d_Disjoint'45'irrefl'8242'_880 ~v0 ~v1 ~v2
  = du_Disjoint'45'irrefl'8242'_880
du_Disjoint'45'irrefl'8242'_880 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44
du_Disjoint'45'irrefl'8242'_880 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'irrefl'8242'_2016
      v1 v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint-irrelevant
d_Disjoint'45'irrelevant_882 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Disjoint'45'irrelevant_882 = erased
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint-sym
d_Disjoint'45'sym_884 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_Disjoint'45'sym_884 ~v0 ~v1 ~v2 = du_Disjoint'45'sym_884
du_Disjoint'45'sym_884 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_Disjoint'45'sym_884
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'45'sym_2076
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion-[]ʳ
d_DisjointUnion'45''91''93''691'_886 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''691'_886 ~v0 ~v1 ~v2
  = du_DisjointUnion'45''91''93''691'_886
du_DisjointUnion'45''91''93''691'_886 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''691'_886
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''691'_2122
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion-[]ˡ
d_DisjointUnion'45''91''93''737'_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45''91''93''737'_888 ~v0 ~v1 ~v2
  = du_DisjointUnion'45''91''93''737'_888
du_DisjointUnion'45''91''93''737'_888 ::
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45''91''93''737'_888
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45''91''93''737'_2098
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion-fromAny∘toAny-∷ˡ⁻
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_890 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_890 ~v0
                                                               ~v1 ~v2
  = du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_890
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_890 ::
  AgdaAny ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_890 v0
                                                                v1 v2 v3
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'fromAny'8728'toAny'45''8759''737''8315'_2146
      v1 v2 v3
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion-sym
d_DisjointUnion'45'sym_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_DisjointUnion'45'sym_892 ~v0 ~v1 ~v2
  = du_DisjointUnion'45'sym_892
du_DisjointUnion'45'sym_892 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_DisjointUnion'45'sym_892
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'45'sym_2052
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³
d_DisjointUnion'179'_894 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 a10 a11 a12
                         a13 a14 a15
  = ()
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion→Disjoint
d_DisjointUnion'8594'Disjoint_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_DisjointUnion'8594'Disjoint_898 ~v0 ~v1 ~v2
  = du_DisjointUnion'8594'Disjoint_898
du_DisjointUnion'8594'Disjoint_898 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_DisjointUnion'8594'Disjoint_898
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_DisjointUnion'8594'Disjoint_1876
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.Disjoint→DisjointUnion
d_Disjoint'8594'DisjointUnion_900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Disjoint'8594'DisjointUnion_900 ~v0 ~v1 ~v2
  = du_Disjoint'8594'DisjointUnion_900
du_Disjoint'8594'DisjointUnion_900 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Disjoint'8594'DisjointUnion_900
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_Disjoint'8594'DisjointUnion_1904
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.disjointUnion³
d_disjointUnion'179'_902 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
d_disjointUnion'179'_902 ~v0 ~v1 ~v2 = du_disjointUnion'179'_902
du_disjointUnion'179'_902 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182
du_disjointUnion'179'_902
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjointUnion'179'_2430
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.disjoint⇒disjoint-to-union
d_disjoint'8658'disjoint'45'to'45'union_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_disjoint'8658'disjoint'45'to'45'union_904 ~v0 ~v1 ~v2
  = du_disjoint'8658'disjoint'45'to'45'union_904
du_disjoint'8658'disjoint'45'to'45'union_904 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_disjoint'8658'disjoint'45'to'45'union_904
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_disjoint'8658'disjoint'45'to'45'union_2496
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.⊆-disjoint?
d_'8838''45'disjoint'63'_906 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8838''45'disjoint'63'_906 ~v0 ~v1 ~v2
  = du_'8838''45'disjoint'63'_906
du_'8838''45'disjoint'63'_906 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_'8838''45'disjoint'63'_906
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_'8838''45'disjoint'63'_1928
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³.join₁
d_join'8321'_910 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8321'_910 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8321'_2224
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³.join₂
d_join'8322'_912 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8322'_912 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8322'_2226
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³.join₃
d_join'8323'_914 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_join'8323'_914 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_join'8323'_2228
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³.sub³
d_sub'179'_916 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26
d_sub'179'_916 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_sub'179'_2222
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.DisjointUnion³.union³
d_union'179'_918 ::
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.T_DisjointUnion'179'_2182 ->
  [AgdaAny]
d_union'179'_918 v0
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.d_union'179'_2220
      (coe v0)
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.shrinkDisjoint
d_shrinkDisjoint_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint_922 ~v0 ~v1 ~v2 = du_shrinkDisjoint_922
du_shrinkDisjoint_922 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint_922
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_shrinkDisjoint_2640
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.weakenDisjoint
d_weakenDisjoint_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_weakenDisjoint_924 ~v0 ~v1 ~v2 = du_weakenDisjoint_924
du_weakenDisjoint_924 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_weakenDisjoint_924
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjoint_2592
-- Data.List.Relation.Binary.Sublist.Setoid.Properties._.weakenDisjointUnion
d_weakenDisjointUnion_926 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
d_weakenDisjointUnion_926 ~v0 ~v1 ~v2 = du_weakenDisjointUnion_926
du_weakenDisjointUnion_926 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_DisjointUnion_198
du_weakenDisjointUnion_926
  = coe
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Properties.du_weakenDisjointUnion_2548
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.shrinkDisjointˡ
d_shrinkDisjoint'737'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'737'_942 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_shrinkDisjoint'737'_942 v3 v4 v5 v6 v7 v8 v9 v10
du_shrinkDisjoint'737'_942 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'737'_942 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe seq (coe v6) (coe v7)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v14
        -> case coe v2 of
             (:) v15 v16
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v20
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v24
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                  (coe
                                     du_shrinkDisjoint'737'_942 (coe v0) (coe v1) (coe v16) (coe v3)
                                     (coe v20) (coe v24) (coe v6) (coe v14))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v16
        -> case coe v0 of
             (:) v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v25 v26
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v30
                                    -> case coe v6 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                                (coe
                                                   du_shrinkDisjoint'737'_942 (coe v18) (coe v1)
                                                   (coe v20) (coe v3) (coe v26) (coe v30) (coe v34)
                                                   (coe v16))
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v35 v36
                                           -> case coe v3 of
                                                (:) v37 v38
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                                       (coe
                                                          du_shrinkDisjoint'737'_942 (coe v18)
                                                          (coe v1) (coe v20) (coe v38) (coe v26)
                                                          (coe v30) (coe v36) (coe v16))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v16
        -> case coe v1 of
             (:) v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v24
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v29 v30
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                         (coe
                                            du_shrinkDisjoint'737'_942 (coe v0) (coe v18) (coe v20)
                                            (coe v3) (coe v24) (coe v30) (coe v6) (coe v16))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Binary.Sublist.Setoid.Properties.shrinkDisjointʳ
d_shrinkDisjoint'691'_986 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
d_shrinkDisjoint'691'_986 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
  = du_shrinkDisjoint'691'_986 v3 v4 v5 v6 v7 v8 v9 v10
du_shrinkDisjoint'691'_986 ::
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.T_Sublist_26 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130 ->
  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.T_Disjoint_130
du_shrinkDisjoint'691'_986 v0 v1 v2 v3 v4 v5 v6 v7
  = case coe v7 of
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C_'91''93'_132
        -> coe seq (coe v6) (coe v7)
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146 v14
        -> case coe v2 of
             (:) v15 v16
               -> case coe v4 of
                    MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v20
                      -> case coe v5 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v24
                             -> coe
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                  (coe
                                     du_shrinkDisjoint'691'_986 (coe v0) (coe v1) (coe v16) (coe v3)
                                     (coe v20) (coe v24) (coe v6) (coe v14))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164 v16
        -> case coe v0 of
             (:) v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v25 v26
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v30
                                    -> coe
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8343'__164
                                         (coe
                                            du_shrinkDisjoint'691'_986 (coe v18) (coe v1) (coe v20)
                                            (coe v3) (coe v26) (coe v30) (coe v6) (coe v16))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182 v16
        -> case coe v1 of
             (:) v17 v18
               -> case coe v2 of
                    (:) v19 v20
                      -> case coe v4 of
                           MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v24
                             -> case coe v5 of
                                  MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v29 v30
                                    -> case coe v6 of
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759''691'__36 v34
                                           -> coe
                                                MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''8345'__146
                                                (coe
                                                   du_shrinkDisjoint'691'_986 (coe v0) (coe v18)
                                                   (coe v20) (coe v3) (coe v24) (coe v30) (coe v34)
                                                   (coe v16))
                                         MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.Core.C__'8759'__46 v35 v36
                                           -> case coe v3 of
                                                (:) v37 v38
                                                  -> coe
                                                       MAlonzo.Code.Data.List.Relation.Binary.Sublist.Heterogeneous.C__'8759''7523'__182
                                                       (coe
                                                          du_shrinkDisjoint'691'_986 (coe v0)
                                                          (coe v18) (coe v20) (coe v38) (coe v24)
                                                          (coe v30) (coe v36) (coe v16))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
