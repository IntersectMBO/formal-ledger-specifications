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

module MAlonzo.Code.Algebra.Construct.LiftedChoice where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Consequences.Base
import qualified MAlonzo.Code.Algebra.Structures
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures

-- Algebra.Construct.LiftedChoice._.Lift
d_Lift_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_Lift_30 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_Lift_30 v7 v8 v9 v10
du_Lift_30 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_Lift_30 v0 v1 v2 v3
  = let v4 = coe v0 (coe v1 v2) (coe v1 v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v2
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v3
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.LiftedChoice._._._◦_
d__'9702'__148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'9702'__148 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8
  = du__'9702'__148 v5 v8
du__'9702'__148 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'9702'__148 v0 v1
  = coe
      du_Lift_30 (coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0))
      (coe v1)
-- Algebra.Construct.LiftedChoice._._.sel-≡
d_sel'45''8801'_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel'45''8801'_150 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10
  = du_sel'45''8801'_150 v5 v8 v9 v10
du_sel'45''8801'_150 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sel'45''8801'_150 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v2)
      (coe v1 v3)
-- Algebra.Construct.LiftedChoice._._.distrib
d_distrib_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_distrib_172 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9 v10
  = du_distrib_172 v5 v8 v9 v10
du_distrib_172 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_distrib_172 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v2)
              (coe v1 v3) in
    coe
      (case coe v4 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5 -> coe v5
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5 -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.LiftedChoice._._._◦_
d__'9702'__206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'9702'__206 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 ~v9 ~v10
  = du__'9702'__206 v5 v8
du__'9702'__206 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'9702'__206 v0 v1
  = coe
      du_Lift_30 (coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0))
      (coe v1)
-- Algebra.Construct.LiftedChoice._._.sel
d_sel_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_sel_208 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 ~v9 v10 v11 v12
  = du_sel_208 v5 v8 v10 v11 v12
du_sel_208 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_sel_208 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Data.Sum.Base.du_map_84
      (coe v2 (coe du__'9702'__206 v0 v1 v3 v4) v3)
      (coe v2 (coe du__'9702'__206 v0 v1 v3 v4) v4)
      (coe du_sel'45''8801'_150 (coe v0) (coe v1) (coe v3) (coe v4))
-- Algebra.Construct.LiftedChoice._._.idem
d_idem_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny
d_idem_214 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 ~v9 v10
  = du_idem_214 v5 v8 v10
du_idem_214 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  AgdaAny -> AgdaAny
du_idem_214 v0 v1 v2
  = coe
      MAlonzo.Code.Algebra.Consequences.Base.du_sel'8658'idem_20
      (coe du_sel_208 (coe v0) (coe v1) (coe v2))
-- Algebra.Construct.LiftedChoice._._._◦_
d__'9702'__232 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'9702'__232 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 ~v9 ~v10
  = du__'9702'__232 v5 v8
du__'9702'__232 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'9702'__232 v0 v1
  = coe
      du_Lift_30 (coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0))
      (coe v1)
-- Algebra.Construct.LiftedChoice._._.cong
d_cong_234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_cong_234 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 ~v9 v10 v11 v12 v13 v14
           v15 v16 v17
  = du_cong_234 v4 v5 v8 v10 v11 v12 v13 v14 v15 v16 v17
du_cong_234 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_cong_234 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = let v11
          = coe
              MAlonzo.Code.Algebra.Structures.d_sel_414 v1 (coe v2 v5)
              (coe v2 v7) in
    coe
      (let v12
             = coe
                 MAlonzo.Code.Algebra.Structures.d_sel_414 v1 (coe v2 v6)
                 (coe v2 v8) in
       coe
         (case coe v11 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13
              -> case coe v12 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14 -> coe v9
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14
                     -> coe
                          v3 v5 v8
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                             (\ v15 v16 v17 ->
                                coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                  v17)
                             (coe v2 v5) (coe v2 v8)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                            (coe v1)))))
                                (coe v2 v5) (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v8)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                               (coe v1)))))
                                   (coe v0 (coe v2 v5) (coe v2 v7)) (coe v0 (coe v2 v6) (coe v2 v8))
                                   (coe v2 v8)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                                  (coe v1)))))
                                      (coe v0 (coe v2 v6) (coe v2 v8)) (coe v2 v8) (coe v2 v8)
                                      (let v15
                                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                                       (coe v1))) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                               (coe v15))
                                            (coe v2 v8)))
                                      v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                      (MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))
                                      (coe v2 v5) (coe v2 v6) (coe v2 v7) (coe v2 v8)
                                      (coe v4 v5 v6 v9) (coe v4 v7 v8 v10)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))
                                   (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v5) v13)))
                   _ -> MAlonzo.RTE.mazUnreachableError
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
              -> case coe v12 of
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v14
                     -> coe
                          v3 v7 v6
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                             (\ v15 v16 v17 ->
                                coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36
                                  v17)
                             (coe v2 v7) (coe v2 v6)
                             (coe
                                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                            (coe v1)))))
                                (coe v2 v7) (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v6)
                                (coe
                                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                         (coe
                                            MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                               (coe v1)))))
                                   (coe v0 (coe v2 v5) (coe v2 v7)) (coe v0 (coe v2 v6) (coe v2 v8))
                                   (coe v2 v6)
                                   (coe
                                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                                      (coe
                                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                                            (coe
                                               MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                               (coe
                                                  MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                                  (coe v1)))))
                                      (coe v0 (coe v2 v6) (coe v2 v8)) (coe v2 v6) (coe v2 v6)
                                      (let v15
                                             = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                                 (coe
                                                    MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                                    (coe
                                                       MAlonzo.Code.Algebra.Structures.d_isMagma_412
                                                       (coe v1))) in
                                       coe
                                         (coe
                                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                            (coe
                                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                               (coe v15))
                                            (coe v2 v6)))
                                      v14)
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_'8729''45'cong_154
                                      (MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))
                                      (coe v2 v5) (coe v2 v6) (coe v2 v7) (coe v2 v8)
                                      (coe v4 v5 v6 v9) (coe v4 v7 v8 v10)))
                                (coe
                                   MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                                   (MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))
                                   (coe v0 (coe v2 v5) (coe v2 v7)) (coe v2 v7) v13)))
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v14 -> coe v10
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Algebra.Construct.LiftedChoice._._.assoc
d_assoc_326 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_assoc_326 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 ~v9 v10 v11 v12 v13
            v14
  = du_assoc_326 v4 v5 v8 v10 v11 v12 v13 v14
du_assoc_326 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_assoc_326 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      v3 (coe du__'9702'__232 v1 v2 (coe du__'9702'__232 v1 v2 v5 v6) v7)
      (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v8 v9 v10 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v10)
         (coe
            v2
            (coe du__'9702'__232 v1 v2 (coe du__'9702'__232 v1 v2 v5 v6) v7))
         (coe
            v2
            (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))))
            (coe
               v2
               (coe du__'9702'__232 v1 v2 (coe du__'9702'__232 v1 v2 v5 v6) v7))
            (coe v0 (coe v2 (coe du__'9702'__232 v1 v2 v5 v6)) (coe v2 v7))
            (coe
               v2
               (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
               (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))))
               (coe v0 (coe v2 (coe du__'9702'__232 v1 v2 v5 v6)) (coe v2 v7))
               (coe v0 (coe v0 (coe v2 v5) (coe v2 v6)) (coe v2 v7))
               (coe
                  v2
                  (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
                  (coe v0 (coe v0 (coe v2 v5) (coe v2 v6)) (coe v2 v7))
                  (coe v0 (coe v2 v5) (coe v0 (coe v2 v6) (coe v2 v7)))
                  (coe
                     v2
                     (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                        (coe
                           MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                           (coe
                              MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                              (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
                     (coe v0 (coe v2 v5) (coe v0 (coe v2 v6) (coe v2 v7)))
                     (coe v0 (coe v2 v5) (coe v2 (coe du__'9702'__232 v1 v2 v6 v7)))
                     (coe
                        v2
                        (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                           (coe
                              MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                              (coe
                                 MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                 (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
                        (coe v0 (coe v2 v5) (coe v2 (coe du__'9702'__232 v1 v2 v6 v7)))
                        (coe
                           v2
                           (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
                        (coe
                           v2
                           (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))
                        (let v8
                               = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                                   (coe
                                      MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                      (coe
                                         MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))) in
                         coe
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                 (coe v8))
                              (coe
                                 v2
                                 (coe du__'9702'__232 v1 v2 v5 (coe du__'9702'__232 v1 v2 v6 v7)))))
                        (coe
                           du_distrib_172 (coe v1) (coe v2) (coe v5)
                           (coe du__'9702'__232 v1 v2 v6 v7)))
                     (coe
                        MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'737'_170
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))
                        (coe v2 v5) (coe v0 (coe v2 v6) (coe v2 v7))
                        (coe v2 (coe du__'9702'__148 v1 v2 v6 v7))
                        (coe du_distrib_172 (coe v1) (coe v2) (coe v6) (coe v7))))
                  (coe v4 (coe v2 v5) (coe v2 v6) (coe v2 v7)))
               (coe
                  MAlonzo.Code.Algebra.Structures.du_'8729''45'cong'691'_174
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))
                  (coe v2 v7) (coe v0 (coe v2 v5) (coe v2 v6))
                  (coe v2 (coe du__'9702'__148 v1 v2 v5 v6))
                  (coe du_distrib_172 (coe v1) (coe v2) (coe v5) (coe v6))))
            (coe
               du_distrib_172 (coe v1) (coe v2) (coe du__'9702'__232 v1 v2 v5 v6)
               (coe v7))))
-- Algebra.Construct.LiftedChoice._._.comm
d_comm_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_comm_336 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 v8 ~v9 v10 v11 v12 v13
  = du_comm_336 v4 v5 v8 v10 v11 v12 v13
du_comm_336 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_comm_336 v0 v1 v2 v3 v4 v5 v6
  = coe
      v3 (coe du__'9702'__232 v1 v2 v5 v6)
      (coe du__'9702'__232 v1 v2 v6 v5)
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v9)
         (coe v2 (coe du__'9702'__232 v1 v2 v5 v6))
         (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10216'_370
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                  (coe
                     MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                     (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
            (MAlonzo.Code.Relation.Binary.Structures.d_sym_36
               (coe
                  MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                  (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))))
            (coe v2 (coe du__'9702'__232 v1 v2 v5 v6))
            (coe v0 (coe v2 v5) (coe v2 v6))
            (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                     (coe
                        MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                        (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
               (coe v0 (coe v2 v5) (coe v2 v6)) (coe v0 (coe v2 v6) (coe v2 v5))
               (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                     (coe
                        MAlonzo.Code.Relation.Binary.Structures.d_trans_38
                        (coe
                           MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                           (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1)))))
                  (coe v0 (coe v2 v6) (coe v2 v5))
                  (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))
                  (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))
                  (let v7
                         = MAlonzo.Code.Relation.Binary.Structures.d_refl_34
                             (coe
                                MAlonzo.Code.Algebra.Structures.d_isEquivalence_152
                                (coe MAlonzo.Code.Algebra.Structures.d_isMagma_412 (coe v1))) in
                   coe
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                           (coe v7))
                        (coe v2 (coe du__'9702'__232 v1 v2 v6 v5))))
                  (coe du_distrib_172 (coe v1) (coe v2) (coe v6) (coe v5)))
               (coe v4 (coe v2 v5) (coe v2 v6)))
            (coe du_distrib_172 (coe v1) (coe v2) (coe v5) (coe v6))))
-- Algebra.Construct.LiftedChoice._._._◦_
d__'9702'__376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  AgdaAny -> AgdaAny -> AgdaAny
d__'9702'__376 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 v9 ~v10 ~v11 ~v12
  = du__'9702'__376 v5 v9
du__'9702'__376 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'9702'__376 v0 v1
  = coe
      du_Lift_30 (coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0))
      (coe v1)
-- Algebra.Construct.LiftedChoice._._.isMagma
d_isMagma_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
d_isMagma_378 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 v9 v10 v11 v12
  = du_isMagma_378 v4 v5 v9 v10 v11 v12
du_isMagma_378 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsMagma_144
du_isMagma_378 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsMagma'46'constructor_785
      (coe v5)
      (coe du_cong_234 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4))
-- Algebra.Construct.LiftedChoice._._.isSemigroup
d_isSemigroup_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
d_isSemigroup_382 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 v9 v10 v11 v12
                  v13
  = du_isSemigroup_382 v4 v5 v9 v10 v11 v12 v13
du_isSemigroup_382 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSemigroup_440
du_isSemigroup_382 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSemigroup'46'constructor_9319
      (coe
         du_isMagma_378 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
      (coe du_assoc_326 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6))
-- Algebra.Construct.LiftedChoice._._.isBand
d_isBand_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
d_isBand_388 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 v9 v10 v11 v12 v13
  = du_isBand_388 v4 v5 v9 v10 v11 v12 v13
du_isBand_388 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsBand_476
du_isBand_388 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsBand'46'constructor_10105
      (coe
         du_isSemigroup_382 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6))
      (coe
         du_idem_214 (coe v1) (coe v2)
         (\ v7 v8 v9 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40 (coe v5)
              v7))
-- Algebra.Construct.LiftedChoice._._.isSelectiveMagma
d_isSelectiveMagma_392 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
d_isSelectiveMagma_392 ~v0 ~v1 ~v2 ~v3 v4 v5 ~v6 ~v7 ~v8 v9 v10 v11
                       v12
  = du_isSelectiveMagma_392 v4 v5 v9 v10 v11 v12
du_isSelectiveMagma_392 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404
du_isSelectiveMagma_392 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Algebra.Structures.C_IsSelectiveMagma'46'constructor_8535
      (coe
         du_isMagma_378 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5))
      (coe
         du_sel_208 (coe v1) (coe v2)
         (\ v6 v7 v8 ->
            coe
              MAlonzo.Code.Relation.Binary.Structures.du_reflexive_40 (coe v5)
              v6))
-- Algebra.Construct.LiftedChoice._._._◦_
d__'9702'__406 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'9702'__406 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 v10
  = du__'9702'__406 v5 v10
du__'9702'__406 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'9702'__406 v0 v1
  = coe
      du_Lift_30 (coe MAlonzo.Code.Algebra.Structures.d_sel_414 (coe v0))
      (coe v1)
-- Algebra.Construct.LiftedChoice._._.preservesᵒ
d_preserves'7506'_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_preserves'7506'_420 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 v10
                      v11 v12 v13 v14 v15
  = du_preserves'7506'_420 v5 v10 v11 v12 v13 v14 v15
du_preserves'7506'_420 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_preserves'7506'_420 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v4)
                     (coe v1 v5) in
           coe
             (case coe v8 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9 -> coe v7
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9 -> coe v2 v4 v5 v7 v9
                _ -> MAlonzo.RTE.mazUnreachableError)
      MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
        -> let v8
                 = coe
                     MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v4)
                     (coe v1 v5) in
           coe
             (case coe v8 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v9 -> coe v3 v4 v5 v7 v9
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v9 -> coe v7
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Algebra.Construct.LiftedChoice._._.preservesʳ
d_preserves'691'_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_preserves'691'_502 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                     v12 v13 v14
  = du_preserves'691'_502 v5 v10 v11 v12 v13 v14
du_preserves'691'_502 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_preserves'691'_502 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v3)
              (coe v1 v4) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v2 v3 v4 v5 v7
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7 -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.LiftedChoice._._.preservesᵇ
d_preserves'7495'_540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_preserves'7495'_540 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 v10
                      v11 v12 v13 v14
  = du_preserves'7495'_540 v5 v10 v11 v12 v13 v14
du_preserves'7495'_540 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_preserves'7495'_540 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v2)
              (coe v1 v3) in
    coe
      (case coe v6 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v4
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7 -> coe v5
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Algebra.Construct.LiftedChoice._._.forcesᵇ
d_forces'7495'_582 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_forces'7495'_582 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                   v12 v13 v14 v15
  = du_forces'7495'_582 v5 v10 v11 v12 v13 v14 v15
du_forces'7495'_582 ::
  MAlonzo.Code.Algebra.Structures.T_IsSelectiveMagma_404 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_forces'7495'_582 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Algebra.Structures.d_sel_414 v0 (coe v1 v4)
              (coe v1 v5) in
    coe
      (case coe v7 of
         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                (coe v2 v4 v5 v6 v8)
         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
           -> coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3 v4 v5 v6 v8)
                (coe v6)
         _ -> MAlonzo.RTE.mazUnreachableError)
