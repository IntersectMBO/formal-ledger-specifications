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

module MAlonzo.Code.Data.List.Extrema.Core where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Construct.LiftedChoice
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Base
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Max
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.Min
import qualified MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd
import qualified MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Data.List.Extrema.Core._._<_
d__'60'__104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> ()
d__'60'__104 = erased
-- Data.List.Extrema.Core._._⊓_
d__'8851'__200 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'8851'__200 ~v0 ~v1 ~v2 v3 = du__'8851'__200 v3
du__'8851'__200 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8851'__200 v0
  = coe
      MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du__'8851'__102
      (coe v0)
-- Data.List.Extrema.Core.<-transʳ
d_'60''45'trans'691'_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'trans'691'_292 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''45'trans'691'_292 v3 v4 v5 v6
du_'60''45'trans'691'_292 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'trans'691'_292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'8804''45''60''45'trans_274
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                  (coe v4)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))))
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'737''45''8776'_100
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v5)))))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.<-transˡ
d_'60''45'trans'737'_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'60''45'trans'737'_294 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_'60''45'trans'737'_294 v3 v4 v5 v6
du_'60''45'trans'737'_294 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'60''45'trans'737'_294 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Construct.NonStrictToStrict.du_'60''45''8804''45'trans_256
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v4) in
          coe
            (let v6
                   = coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_setoid_184 (coe v5) in
             coe
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60
                     (coe v6))))))
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_trans_84
            (coe
               MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                  (coe v4)))))
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_antisym_246
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isPartialOrder_476
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isTotalOrder_988 (coe v0))))
      (let v4
             = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Relation.Binary.Bundles.du_preorder_510 (coe v4) in
          coe
            (coe
               MAlonzo.Code.Relation.Binary.Structures.du_'8818''45'resp'691''45''8776'_106
               (coe
                  MAlonzo.Code.Relation.Binary.Bundles.d_isPreorder_158 (coe v5)))))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core._.lemma₁
d_lemma'8321'_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8321'_310 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8321'_310 v3 v6 v7 v8 v9 v10 v11
du_lemma'8321'_310 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8321'_310 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
               (coe v7)))
         (coe v1 v3) (coe v1 v2) v4
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
               (coe v0))
            (coe v1 v2) (coe v1 v3) (coe v6))
         v5)
-- Data.List.Extrema.Core._.lemma₂
d_lemma'8322'_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_lemma'8322'_322 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8322'_322 v3 v6 v7 v8 v9 v10 v11
du_lemma'8322'_322 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_lemma'8322'_322 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
    coe
      (coe
         MAlonzo.Code.Relation.Binary.Structures.d_trans_84
         (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
               (coe v7)))
         (coe v1 v2) (coe v1 v3) v4
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
            (coe
               MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
               (coe v0))
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
               (coe v0))
            (coe v1 v2) (coe v1 v3) (coe v6))
         v5)
-- Data.List.Extrema.Core._.lemma₃
d_lemma'8323'_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemma'8323'_334 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8323'_334 v3 v6 v7 v8 v9 v10 v11
du_lemma'8323'_334 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemma'8323'_334 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'60''45'trans'691'_292 v0 (coe v1 v3) (coe v1 v2) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core._.lemma₄
d_lemma'8324'_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lemma'8324'_346 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10 v11
  = du_lemma'8324'_346 v3 v6 v7 v8 v9 v10 v11
du_lemma'8324'_346 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lemma'8324'_346 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_'60''45'trans'691'_292 v0 (coe v1 v2) (coe v1 v3) v4
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0))
         (coe v1 v2) (coe v1 v3) (coe v6))
      v5
-- Data.List.Extrema.Core.⊓ᴸ
d_'8851''7480'_352 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''7480'_352 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_'8851''7480'_352 v3
du_'8851''7480'_352 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''7480'_352 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_Lift_30
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
-- Data.List.Extrema.Core.⊔ᴸ
d_'8852''7480'_354 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''7480'_354 ~v0 ~v1 ~v2 v3 ~v4 ~v5 = du_'8852''7480'_354 v3
du_'8852''7480'_354 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''7480'_354 v0
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_Lift_30
      (let v1
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v2
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'sel_3018
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v1))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v2)))))
-- Data.List.Extrema.Core.⊓ᴸ-sel
d_'8851''7480''45'sel_358 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8851''7480''45'sel_358 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_'8851''7480''45'sel_358 v3 v6
du_'8851''7480''45'sel_358 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8851''7480''45'sel_358 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_sel'45''8801'_130
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1)
-- Data.List.Extrema.Core.⊓ᴸ-presᵒ-≤v
d_'8851''7480''45'pres'7506''45''8804'v_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8851''7480''45'pres'7506''45''8804'v_370 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 v7
  = du_'8851''7480''45'pres'7506''45''8804'v_370 v3 v6 v7
du_'8851''7480''45'pres'7506''45''8804'v_370 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8851''7480''45'pres'7506''45''8804'v_370 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_400
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8321'_310 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8322'_322 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
-- Data.List.Extrema.Core.⊓ᴸ-presᵒ-<v
d_'8851''7480''45'pres'7506''45''60'v_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'pres'7506''45''60'v_382 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          v7
  = du_'8851''7480''45'pres'7506''45''60'v_382 v3 v6 v7
du_'8851''7480''45'pres'7506''45''60'v_382 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'pres'7506''45''60'v_382 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_400
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8323'_334 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
      (coe
         (\ v3 v4 ->
            coe
              du_lemma'8324'_346 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)))
-- Data.List.Extrema.Core.⊓ᴸ-presᵇ-v≤
d_'8851''7480''45'pres'7495''45'v'8804'_394 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8851''7480''45'pres'7495''45'v'8804'_394 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 ~v7 v8 v9
  = du_'8851''7480''45'pres'7495''45'v'8804'_394 v3 v6 v8 v9
du_'8851''7480''45'pres'7495''45'v'8804'_394 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8851''7480''45'pres'7495''45'v'8804'_394 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_520
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊓ᴸ-presᵇ-v<
d_'8851''7480''45'pres'7495''45'v'60'_410 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'pres'7495''45'v'60'_410 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          ~v7 v8 v9
  = du_'8851''7480''45'pres'7495''45'v'60'_410 v3 v6 v8 v9
du_'8851''7480''45'pres'7495''45'v'60'_410 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'pres'7495''45'v'60'_410 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_520
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊓ᴸ-forcesᵇ-v≤
d_'8851''7480''45'forces'7495''45'v'8804'_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8851''7480''45'forces'7495''45'v'8804'_426 ~v0 ~v1 ~v2 v3 ~v4
                                              ~v5 v6 v7
  = du_'8851''7480''45'forces'7495''45'v'8804'_426 v3 v6 v7
du_'8851''7480''45'forces'7495''45'v'8804'_426 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8851''7480''45'forces'7495''45'v'8804'_426 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_forces'7495'_562
      (coe
         MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
            (coe v0))
         (coe
            MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
            (coe v0)))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 v2 (coe v1 v3) (coe v1 v4) v5
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                       (coe v0))
                    (coe
                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
                       (coe v0))
                    (coe v1 v3) (coe v1 v4) (coe v6)))))
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 v2 (coe v1 v4) (coe v1 v3) v5
                 (coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                       (coe v0))
                    (coe
                       MAlonzo.Code.Algebra.Construct.NaturalChoice.Min.du_minOperator_184
                       (coe v0))
                    (coe v1 v3) (coe v1 v4) (coe v6)))))
-- Data.List.Extrema.Core.⊔ᴸ-sel
d_'8852''7480''45'sel_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8852''7480''45'sel_442 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
  = du_'8852''7480''45'sel_442 v3 v6
du_'8852''7480''45'sel_442 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8852''7480''45'sel_442 v0 v1
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_sel'45''8801'_130
      (let v2
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v3
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v2))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v3)))))
      (coe v1)
-- Data.List.Extrema.Core.⊔ᴸ-presᵒ-v≤
d_'8852''7480''45'pres'7506''45'v'8804'_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8852''7480''45'pres'7506''45'v'8804'_454 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 v7
  = du_'8852''7480''45'pres'7506''45'v'8804'_454 v3 v6 v7
du_'8852''7480''45'pres'7506''45'v'8804'_454 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8852''7480''45'pres'7506''45'v'8804'_454 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_400
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v4)))))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 v2 (coe v1 v3) (coe v1 v4) v5
                 (let v8
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                            (coe v0) in
                  coe
                    (let v9
                           = coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                               (coe v0) in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
                          (coe
                             MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                             (coe v8))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                             (coe v9))
                          (coe v1 v3) (coe v1 v4) (coe v6)))))))
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 v2 (coe v1 v4) (coe v1 v3) v5
                 (let v8
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                            (coe v0) in
                  coe
                    (let v9
                           = coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                               (coe v0) in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
                          (coe
                             MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                             (coe v8))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                             (coe v9))
                          (coe v1 v3) (coe v1 v4) (coe v6)))))))
-- Data.List.Extrema.Core.⊔ᴸ-presᵒ-v<
d_'8852''7480''45'pres'7506''45'v'60'_476 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'pres'7506''45'v'60'_476 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          v7
  = du_'8852''7480''45'pres'7506''45'v'60'_476 v3 v6 v7
du_'8852''7480''45'pres'7506''45'v'60'_476 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'pres'7506''45'v'60'_476 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7506'_400
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v4)))))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du_'60''45'trans'737'_294 v0 v2 (coe v1 v3) (coe v1 v4) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                         (coe v0) in
               coe
                 (let v8
                        = coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                            (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                          (coe v7))
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                          (coe v8))
                       (coe v1 v3) (coe v1 v4) (coe v6))))))
      (coe
         (\ v3 v4 v5 v6 ->
            coe
              du_'60''45'trans'737'_294 v0 v2 (coe v1 v4) (coe v1 v3) v5
              (let v7
                     = coe
                         MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                         (coe v0) in
               coe
                 (let v8
                        = coe
                            MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                            (coe v0) in
                  coe
                    (coe
                       MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                          (coe v7))
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                          (coe v8))
                       (coe v1 v3) (coe v1 v4) (coe v6))))))
-- Data.List.Extrema.Core.⊔ᴸ-presᵇ-≤v
d_'8852''7480''45'pres'7495''45''8804'v_498 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8852''7480''45'pres'7495''45''8804'v_498 ~v0 ~v1 ~v2 v3 ~v4 ~v5
                                            v6 ~v7 v8 v9
  = du_'8852''7480''45'pres'7495''45''8804'v_498 v3 v6 v8 v9
du_'8852''7480''45'pres'7495''45''8804'v_498 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8852''7480''45'pres'7495''45''8804'v_498 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_520
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v4))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v5)))))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊔ᴸ-presᵇ-<v
d_'8852''7480''45'pres'7495''45''60'v_514 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'pres'7495''45''60'v_514 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6
                                          ~v7 v8 v9
  = du_'8852''7480''45'pres'7495''45''60'v_514 v3 v6 v8 v9
du_'8852''7480''45'pres'7495''45''60'v_514 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'pres'7495''45''60'v_514 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_preserves'7495'_520
      (let v4
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v5
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v4))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v5)))))
      (coe v1) (coe v2) (coe v3)
-- Data.List.Extrema.Core.⊔ᴸ-forcesᵇ-≤v
d_'8852''7480''45'forces'7495''45''8804'v_530 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8852''7480''45'forces'7495''45''8804'v_530 ~v0 ~v1 ~v2 v3 ~v4
                                              ~v5 v6 v7
  = du_'8852''7480''45'forces'7495''45''8804'v_530 v3 v6 v7
du_'8852''7480''45'forces'7495''45''8804'v_530 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_TotalOrder_966 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8852''7480''45'forces'7495''45''8804'v_530 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Construct.LiftedChoice.du_forces'7495'_562
      (let v3
             = coe
                 MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                 (coe v0) in
       coe
         (let v4
                = coe
                    MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                    (coe v0) in
          coe
            (coe
               MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_'8851''45'isSelectiveMagma_3068
               (coe
                  MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                  (coe v3))
               (coe
                  MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                  (coe v4)))))
      (coe v1)
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 (coe v1 v4) (coe v1 v3) v2
                 (let v8
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                            (coe v0) in
                  coe
                    (let v9
                           = coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                               (coe v0) in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'x'8658'x'8804'y_3098
                          (coe
                             MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                             (coe v8))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                             (coe v9))
                          (coe v1 v3) (coe v1 v4) (coe v6))))
                 v5)))
      (coe
         (\ v3 v4 v5 v6 ->
            let v7
                  = coe MAlonzo.Code.Relation.Binary.Bundles.du_poset_998 (coe v0) in
            coe
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_trans_84
                 (MAlonzo.Code.Relation.Binary.Structures.d_isPreorder_244
                    (coe
                       MAlonzo.Code.Relation.Binary.Bundles.d_isPartialOrder_502
                       (coe v7)))
                 (coe v1 v3) (coe v1 v4) v2
                 (let v8
                        = coe
                            MAlonzo.Code.Relation.Binary.Bundles.du_totalPreorder_1068
                            (coe v0) in
                  coe
                    (let v9
                           = coe
                               MAlonzo.Code.Algebra.Construct.NaturalChoice.Max.du_maxOperator_194
                               (coe v0) in
                     coe
                       (coe
                          MAlonzo.Code.Algebra.Construct.NaturalChoice.MinOp.du_x'8851'y'8776'y'8658'y'8804'x_3130
                          (coe
                             MAlonzo.Code.Relation.Binary.Construct.Flip.EqAndOrd.du_totalPreorder_760
                             (coe v8))
                          (coe
                             MAlonzo.Code.Algebra.Construct.NaturalChoice.Base.du_MaxOp'8658'MinOp_182
                             (coe v9))
                          (coe v1 v3) (coe v1 v4) (coe v6))))
                 v5)))
