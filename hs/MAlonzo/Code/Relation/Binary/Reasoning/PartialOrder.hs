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

module MAlonzo.Code.Relation.Binary.Reasoning.PartialOrder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Relation.Binary.Reasoning.PartialOrder._._IsRelatedTo_
d__IsRelatedTo__132 a0 a1 a2 a3 a4 a5 = ()
-- Relation.Binary.Reasoning.PartialOrder._._∎
d__'8718'_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d__'8718'_134 ~v0 ~v1 ~v2 v3 = du__'8718'_134 v3
du__'8718'_134 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du__'8718'_134 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
            (coe v1)))
-- Relation.Binary.Reasoning.PartialOrder._.<-go
d_'60''45'go_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'60''45'go_136 ~v0 ~v1 ~v2 v3 = du_'60''45'go_136 v3
du_'60''45'go_136 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'60''45'go_136 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'trans_202
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v0))))
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45''8804''45'trans_256
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
          coe
            (let v2
                   = coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v1) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v2)))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
               (coe v0)))
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))))
-- Relation.Binary.Reasoning.PartialOrder._.IsEquality
d_IsEquality_138 a0 a1 a2 a3 a4 a5 a6 = ()
-- Relation.Binary.Reasoning.PartialOrder._.IsEquality?
d_IsEquality'63'_140 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsEquality'63'_140 ~v0 ~v1 ~v2 ~v3 = du_IsEquality'63'_140
du_IsEquality'63'_140 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsEquality'63'_140 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsEquality'63'_224
      v2
-- Relation.Binary.Reasoning.PartialOrder._.IsStrict
d_IsStrict_142 a0 a1 a2 a3 a4 a5 a6 = ()
-- Relation.Binary.Reasoning.PartialOrder._.IsStrict?
d_IsStrict'63'_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_IsStrict'63'_144 ~v0 ~v1 ~v2 ~v3 = du_IsStrict'63'_144
du_IsStrict'63'_144 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_IsStrict'63'_144 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_IsStrict'63'_188
      v2
-- Relation.Binary.Reasoning.PartialOrder._.begin_
d_begin__146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny
d_begin__146 ~v0 ~v1 ~v2 v3 = du_begin__146 v3
du_begin__146 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny
du_begin__146 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = \ v2 v3 v4 ->
                 coe
                   MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''8658''8804'_32
                   v4 in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
               (coe v1) (coe v2))))
-- Relation.Binary.Reasoning.PartialOrder._.begin-contradiction_
d_begin'45'contradiction__148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
d_begin'45'contradiction__148 ~v0 ~v1 ~v2 ~v3
  = du_begin'45'contradiction__148
du_begin'45'contradiction__148 ::
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> AgdaAny
du_begin'45'contradiction__148 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin'45'contradiction__246
-- Relation.Binary.Reasoning.PartialOrder._.begin_
d_begin__150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> AgdaAny
d_begin__150 ~v0 ~v1 ~v2 ~v3 = du_begin__150
du_begin__150 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> AgdaAny
du_begin__150
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Relation.Binary.Reasoning.PartialOrder._.begin_
d_begin__152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_begin__152 ~v0 ~v1 ~v2 ~v3 = du_begin__152
du_begin__152 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_begin__152
  = let v0
          = coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__126
           (coe v0) v1 v2 v3)
-- Relation.Binary.Reasoning.PartialOrder._.eqRelation
d_eqRelation_154 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_eqRelation_154 ~v0 ~v1 ~v2 ~v3 = du_eqRelation_154
du_eqRelation_154 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_eqRelation_154
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_eqRelation_238
-- Relation.Binary.Reasoning.PartialOrder._.extractEquality
d_extractEquality_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  AgdaAny
d_extractEquality_158 ~v0 ~v1 ~v2 ~v3 = du_extractEquality_158
du_extractEquality_158 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsEquality_208 ->
  AgdaAny
du_extractEquality_158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractEquality_234
      v2 v3
-- Relation.Binary.Reasoning.PartialOrder._.extractStrict
d_extractStrict_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_extractStrict_160 ~v0 ~v1 ~v2 ~v3 = du_extractStrict_160
du_extractStrict_160 ::
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T_IsStrict_172 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_extractStrict_160 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_extractStrict_198
      v2 v3
-- Relation.Binary.Reasoning.PartialOrder._.start
d_start_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny
d_start_168 ~v0 ~v1 ~v2 v3 = du_start_168 v3
du_start_168 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny
du_start_168 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_start_96
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''8658''8804'_32
           v3)
-- Relation.Binary.Reasoning.PartialOrder._.step-<
d_step'45''60'_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''60'_170 ~v0 ~v1 ~v2 v3 = du_step'45''60'_170 v3
du_step'45''60'_170 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''60'_170 v0
  = let v1
          = coe
              MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'trans_202
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45''8804''45'trans_256
                    (let v3
                           = coe
                               MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                     coe
                       (let v4
                              = coe
                                  MAlonzo.Code.Relation.Binary.Bundles.du_setoid_180 (coe v3) in
                        coe
                          (coe
                             MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                             (coe
                                MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                                (coe v4)))))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                             (coe v0))))
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0)))
                    (let v3
                           = coe
                               MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                     coe
                       (coe
                          MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
                          (coe
                             MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                             (coe v3)))) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''60'_312
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'60''45'go_152
                  (coe v1) (coe v2) (coe v3)))))
-- Relation.Binary.Reasoning.PartialOrder._.step-≈
d_step'45''8776'_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776'_172 ~v0 ~v1 ~v2 v3 = du_step'45''8776'_172 v3
du_step'45''8776'_172 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8776'_172 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776'_372
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v1) (coe v2))))
-- Relation.Binary.Reasoning.PartialOrder._.step-≈-⟨
d_step'45''8776''45''10216'_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10216'_174 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10216'_174 v3
du_step'45''8776''45''10216'_174 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8776''45''10216'_174 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                  (coe v1)))))
-- Relation.Binary.Reasoning.PartialOrder._.step-≈-⟩
d_step'45''8776''45''10217'_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''45''10217'_176 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''45''10217'_176 v3
du_step'45''8776''45''10217'_176 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8776''45''10217'_176 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v1) (coe v2))))
-- Relation.Binary.Reasoning.PartialOrder._.step-≈˘
d_step'45''8776''728'_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8776''728'_178 ~v0 ~v1 ~v2 v3
  = du_step'45''8776''728'_178 v3
du_step'45''8776''728'_178 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8776''728'_178 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
               (coe v1) (coe v2))
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
                  (coe v1)))))
-- Relation.Binary.Reasoning.PartialOrder._.step-≡
d_step'45''8801'_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801'_180 ~v0 ~v1 ~v2 ~v3 = du_step'45''8801'_180
du_step'45''8801'_180 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801'_180
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801'_450
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Relation.Binary.Reasoning.PartialOrder._.step-≡-∣
d_step'45''8801''45''8739'_182 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''8739'_182 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_step'45''8801''45''8739'_182 v6
du_step'45''8801''45''8739'_182 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''8739'_182 v0 = coe v0
-- Relation.Binary.Reasoning.PartialOrder._.step-≡-⟨
d_step'45''8801''45''10216'_184 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10216'_184 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10216'_184
du_step'45''8801''45''10216'_184 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''10216'_184
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10216'_448
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Relation.Binary.Reasoning.PartialOrder._.step-≡-⟩
d_step'45''8801''45''10217'_186 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''45''10217'_186 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''45''10217'_186
du_step'45''8801''45''10217'_186 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''45''10217'_186
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_436
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Relation.Binary.Reasoning.PartialOrder._.step-≡˘
d_step'45''8801''728'_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8801''728'_188 ~v0 ~v1 ~v2 ~v3
  = du_step'45''8801''728'_188
du_step'45''8801''728'_188 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8801''728'_188
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_452
      (coe (\ v0 v1 v2 v3 v4 -> v4))
-- Relation.Binary.Reasoning.PartialOrder._.step-≤
d_step'45''8804'_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_step'45''8804'_190 ~v0 ~v1 ~v2 v3 = du_step'45''8804'_190 v3
du_step'45''8804'_190 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_step'45''8804'_190 v0
  = let v1
          = MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
              (coe
                 MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                 (coe v0)) in
    coe
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                          (coe v0))))
                 (coe
                    MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                       (coe v0)))
                 (let v2
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
                       (coe
                          MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154
                          (coe v2)))) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8804'_308
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
               (coe v1) (coe v2))))
-- Relation.Binary.Reasoning.PartialOrder._.stop
d_stop_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_stop_192 ~v0 ~v1 ~v2 v3 = du_stop_192 v3
du_stop_192 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_stop_192 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_stop_166
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
-- Relation.Binary.Reasoning.PartialOrder._.strictRelation
d_strictRelation_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
d_strictRelation_196 ~v0 ~v1 ~v2 ~v3 = du_strictRelation_196
du_strictRelation_196 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.T_SubRelation_60
du_strictRelation_196
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_strictRelation_202
-- Relation.Binary.Reasoning.PartialOrder._.≈-go
d_'8776''45'go_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8776''45'go_198 ~v0 ~v1 ~v2 v3 = du_'8776''45'go_198 v3
du_'8776''45'go_198 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8776''45'go_198 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8776''45'go_124
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45'resp'45''8776'_328
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_80
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v0))))
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'45''8776'_112
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))))
-- Relation.Binary.Reasoning.PartialOrder._.≡-go
d_'8801''45'go_200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8801''45'go_200 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8
  = du_'8801''45'go_200 v8
du_'8801''45'go_200 ::
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8801''45'go_200 v0 = coe v0
-- Relation.Binary.Reasoning.PartialOrder._.≤-go
d_'8804''45'go_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
d_'8804''45'go_202 ~v0 ~v1 ~v2 v3 = du_'8804''45'go_202 v3
du_'8804''45'go_202 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Poset_314 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78 ->
  MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.T__IsRelatedTo__78
du_'8804''45'go_202 v0
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Base.Triple.du_'8804''45'go_138
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
            (coe v0)))
      (coe
         MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_182
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
                  (coe v0))))
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_336
               (coe v0)))
         (let v1
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_344 (coe v0) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_154 (coe v1)))))
