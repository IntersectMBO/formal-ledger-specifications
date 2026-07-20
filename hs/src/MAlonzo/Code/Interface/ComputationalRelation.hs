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

module MAlonzo.Code.Interface.ComputationalRelation where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.Applicative.Core
import qualified MAlonzo.Code.Class.Bifunctor
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.STS
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Interface.ComputationalRelation.ComputationResult
d_ComputationResult_34 a0 a1 a2 = ()
data T_ComputationResult_34
  = C_success_42 AgdaAny | C_failure_44 AgdaAny
-- Interface.ComputationalRelation.isFailure
d_isFailure_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_ComputationResult_34 -> ()
d_isFailure_48 = erased
-- Interface.ComputationalRelation._.caseCR_∣_∣_
d_caseCR_'8739'_'8739'__72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  T_ComputationResult_34 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) -> AgdaAny
d_caseCR_'8739'_'8739'__72 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_caseCR_'8739'_'8739'__72 v5 v6 v7
du_caseCR_'8739'_'8739'__72 ::
  T_ComputationResult_34 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) -> AgdaAny
du_caseCR_'8739'_'8739'__72 v0 v1 v2
  = case coe v0 of
      C_success_42 v3 -> coe v1 v3 erased
      C_failure_44 v3
        -> coe
             v2
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.caseCR-success
d_caseCR'45'success_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  T_ComputationResult_34 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_caseCR'45'success_110 = erased
-- Interface.ComputationalRelation._.caseCR-failure
d_caseCR'45'failure_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  T_ComputationResult_34 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_caseCR'45'failure_122 = erased
-- Interface.ComputationalRelation.Bifunctor-ComputationResult
d_Bifunctor'45'ComputationResult_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82
d_Bifunctor'45'ComputationResult_126 ~v0
  = du_Bifunctor'45'ComputationResult_126
du_Bifunctor'45'ComputationResult_126 ::
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82
du_Bifunctor'45'ComputationResult_126
  = coe
      MAlonzo.Code.Class.Bifunctor.C_constructor_130
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 ->
            case coe v6 of
              C_success_42 v7 -> coe C_success_42 (coe v5 v7)
              C_failure_44 v7 -> coe C_failure_44 (coe v4 v7)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.Functor-ComputationResult
d_Functor'45'ComputationResult_138 ::
  () -> MAlonzo.Code.Class.Functor.Core.T_Functor_14
d_Functor'45'ComputationResult_138 ~v0
  = du_Functor'45'ComputationResult_138
du_Functor'45'ComputationResult_138 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
du_Functor'45'ComputationResult_138
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_32
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              C_success_42 v6 -> coe C_success_42 (coe v4 v6)
              C_failure_44 v6 -> coe v5
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.Applicative-ComputationResult
d_Applicative'45'ComputationResult_148 ::
  () -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
d_Applicative'45'ComputationResult_148 ~v0
  = du_Applicative'45'ComputationResult_148
du_Applicative'45'ComputationResult_148 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
du_Applicative'45'ComputationResult_148
  = coe
      MAlonzo.Code.Class.Applicative.Core.C_constructor_58
      (coe du_Functor'45'ComputationResult_138)
      (coe (\ v0 v1 -> coe C_success_42))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              C_success_42 v5
                -> coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                          (coe du_Functor'45'ComputationResult_138) v0 erased v2 erased v5
                          v6)
              C_failure_44 v5 -> coe (\ v6 -> v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.Monad-ComputationResult
d_Monad'45'ComputationResult_158 ::
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8
d_Monad'45'ComputationResult_158 ~v0
  = du_Monad'45'ComputationResult_158
du_Monad'45'ComputationResult_158 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
du_Monad'45'ComputationResult_158
  = coe
      MAlonzo.Code.Class.Monad.Core.C_constructor_68
      (coe du_Applicative'45'ComputationResult_148)
      (coe (\ v0 v1 -> coe C_success_42))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              C_success_42 v5 -> coe (\ v6 -> coe v6 v5)
              C_failure_44 v5 -> coe (\ v6 -> v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.map-failure
d_map'45'failure_178 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_ComputationResult_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'failure_178 = erased
-- Interface.ComputationalRelation.success-maybe
d_success'45'maybe_182 ::
  () -> () -> T_ComputationResult_34 -> Maybe AgdaAny
d_success'45'maybe_182 ~v0 ~v1 v2 = du_success'45'maybe_182 v2
du_success'45'maybe_182 :: T_ComputationResult_34 -> Maybe AgdaAny
du_success'45'maybe_182 v0
  = case coe v0 of
      C_success_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_failure_44 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.failure-maybe
d_failure'45'maybe_188 ::
  () -> () -> T_ComputationResult_34 -> Maybe AgdaAny
d_failure'45'maybe_188 ~v0 ~v1 v2 = du_failure'45'maybe_188 v2
du_failure'45'maybe_188 :: T_ComputationResult_34 -> Maybe AgdaAny
du_failure'45'maybe_188 v0
  = case coe v0 of
      C_success_42 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_failure_44 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._≈ᶜʳ_
d__'8776''7580''691'__194 ::
  () -> () -> T_ComputationResult_34 -> T_ComputationResult_34 -> ()
d__'8776''7580''691'__194 = erased
-- Interface.ComputationalRelation._.ExtendedRel
d_ExtendedRel_212 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34 -> ()
d_ExtendedRel_212 = erased
-- Interface.ComputationalRelation._.Computational
d_Computational_232 a0 a1 a2 a3 a4 = ()
newtype T_Computational_232
  = C_MkComputational_412 (AgdaAny ->
                           AgdaAny -> AgdaAny -> T_ComputationResult_34)
-- Interface.ComputationalRelation._.Computational.computeProof
d_computeProof_272 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_272 v0
  = case coe v0 of
      C_MkComputational_412 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.Computational.compute
d_compute_274 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_274 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_compute_274 v5 v6 v7 v8
du_compute_274 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      (coe du_Functor'45'ComputationResult_138) () erased () erased
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe d_computeProof_272 v0 v1 v2 v3)
-- Interface.ComputationalRelation._.Computational.completeness
d_completeness_290 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_290 = erased
-- Interface.ComputationalRelation._.Computational.computeFail
d_computeFail_292 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_292 = erased
-- Interface.ComputationalRelation._.Computational.≡-success⇔STS
d_'8801''45'success'8660'STS_300 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_300 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8801''45'success'8660'STS_300 v5 v6 v7 v8 v9
du_'8801''45'success'8660'STS_300 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_300 v0 v1 v2 v3 v4
  = let v5 = coe d_computeProof_272 v0 v1 v2 v3 in
    coe
      (case coe v5 of
         C_success_42 v6
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> coe
                       MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe (\ v9 -> v8))
                       (coe
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                               (\ v10 v11 v12 -> v12) (coe C_success_42 (coe v7))
                               (coe C_success_42 (coe v4))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
                                  erased (coe C_success_42 (coe v7))
                                  (coe du_compute_274 (coe v0) (coe v1) (coe v2) (coe v3))
                                  (coe C_success_42 (coe v4))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                     erased (coe du_compute_274 (coe v0) (coe v1) (coe v2) (coe v3))
                                     (coe C_success_42 (coe v4)) (coe C_success_42 (coe v4))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                        erased (coe C_success_42 (coe v4)))
                                     erased)
                                  erased)))
                _ -> MAlonzo.RTE.mazUnreachableError
         C_failure_44 v6
           -> coe
                MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
                (coe
                   (\ v7 ->
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                        (\ v8 v9 v10 -> v10) v5 (coe C_success_42 (coe v4))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
                           erased v5 (coe du_compute_274 (coe v0) (coe v1) (coe v2) (coe v3))
                           (coe C_success_42 (coe v4))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                              erased (coe du_compute_274 (coe v0) (coe v1) (coe v2) (coe v3))
                              (coe C_success_42 (coe v4)) (coe C_success_42 (coe v4))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494 erased
                                 (coe C_success_42 (coe v4)))
                              erased)
                           erased)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇒∀¬STS
d_failure'8658''8704''172'STS_346 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_346 = erased
-- Interface.ComputationalRelation._.Computational.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_360 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_360 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
                                  ~v9
  = du_'8704''172'STS'8658'failure_360 v5 v6 v7 v8
du_'8704''172'STS'8658'failure_360 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_360 v0 v1 v2 v3
  = let v4 = coe d_computeProof_272 v0 v1 v2 v3 in
    coe
      (case coe v4 of
         C_success_42 v5
           -> coe
                seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         C_failure_44 v5
           -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇔∀¬STS
d_failure'8660''8704''172'STS_398 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_398 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_failure'8660''8704''172'STS_398 v5 v6 v7 v8
du_failure'8660''8704''172'STS_398 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_398 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
      (\ v4 ->
         coe
           du_'8704''172'STS'8658'failure_360 (coe v0) (coe v1) (coe v2)
           (coe v3))
-- Interface.ComputationalRelation._.Computational.recomputeProof
d_recomputeProof_410 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_410 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 ~v9 ~v10
  = du_recomputeProof_410 v5 v6 v7 v8
du_recomputeProof_410 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_410 v0 v1 v2 v3
  = coe d_computeProof_272 v0 v1 v2 v3
-- Interface.ComputationalRelation._._.completeness
d_completeness_432 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_432 = erased
-- Interface.ComputationalRelation._._.compute
d_compute_434 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_compute_434 v5
du_compute_434 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_434 v0 = coe du_compute_274 (coe v0)
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_436 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_436 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_438 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_438 v0 = coe d_computeProof_272 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_440 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_440 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_442 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_failure'8660''8704''172'STS_442 v5
du_failure'8660''8704''172'STS_442 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_442 v0
  = coe du_failure'8660''8704''172'STS_398 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_444 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_444 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_recomputeProof_444 v5
du_recomputeProof_444 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_444 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_410 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_446 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_446 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8704''172'STS'8658'failure_446 v5
du_'8704''172'STS'8658'failure_446 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_446 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_360 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_448 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_448 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8801''45'success'8660'STS_448 v5
du_'8801''45'success'8660'STS_448 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_448 v0
  = coe du_'8801''45'success'8660'STS_300 (coe v0)
-- Interface.ComputationalRelation._.ExtendedRelSTS
d_ExtendedRelSTS_450 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34 -> ()
d_ExtendedRelSTS_450 = erased
-- Interface.ComputationalRelation._.ExtendedRel-compute
d_ExtendedRel'45'compute_452 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_ExtendedRel'45'compute_452 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_ExtendedRel'45'compute_452 v5 v6 v7 v8
du_ExtendedRel'45'compute_452 ::
  T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_ExtendedRel'45'compute_452 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              (coe du_Functor'45'ComputationResult_138) () erased () erased
              (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe d_computeProof_272 v0 v1 v2 v3) in
    coe
      (case coe v4 of
         C_success_42 v5
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   du_'8801''45'success'8660'STS_300 (coe v0) (coe v1) (coe v2)
                   (coe v3) (coe v5))
                erased
         C_failure_44 v5 -> erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.ExtendedRel-rightUnique
d_ExtendedRel'45'rightUnique_484 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_ComputationResult_34 ->
  T_ComputationResult_34 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ExtendedRel'45'rightUnique_484 = erased
-- Interface.ComputationalRelation._.computational⇒rightUnique
d_computational'8658'rightUnique_526 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_computational'8658'rightUnique_526 = erased
-- Interface.ComputationalRelation._.Computational⇒Dec
d_Computational'8658'Dec_542 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec_542 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_Computational'8658'Dec_542 v5 v6 v7 v8 v9 v10
du_Computational'8658'Dec_542 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec_542 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              (coe du_Functor'45'ComputationResult_138) () erased () erased
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe d_computeProof_272 v0 v1 v2 v3) in
    coe
      (let v7
             = let v7
                     = coe
                         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                         (coe du_Functor'45'ComputationResult_138) () erased () erased
                         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                         (coe d_computeProof_272 v0 v1 v2 v3) in
               coe
                 (case coe v7 of
                    C_success_42 v8
                      -> coe
                           MAlonzo.Code.Function.Bundles.d_to_1868
                           (coe
                              du_'8801''45'success'8660'STS_300 (coe v0) (coe v1) (coe v2)
                              (coe v3) (coe v8))
                           erased
                    C_failure_44 v8 -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError) in
       coe
         (case coe v6 of
            C_success_42 v8
              -> let v9
                       = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v5 v8 v4 in
                 coe
                   (case coe v9 of
                      MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v10 v11
                        -> if coe v10
                             then coe
                                    seq (coe v11)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe v10)
                                       (coe
                                          MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                                          (coe v7)))
                             else coe
                                    seq (coe v11)
                                    (coe
                                       MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                                       (coe v10)
                                       (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26))
                      _ -> MAlonzo.RTE.mazUnreachableError)
            C_failure_44 v8
              -> coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation._._.completeness
d_completeness_630 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_630 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_632 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_632 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_634 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_634 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_computeProof_634 v5
du_computeProof_634 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_computeProof_634 v0 = coe d_computeProof_272 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_636 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_636 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_compute_636 v5
du_compute_636 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_636 v0 = coe du_compute_274 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_638 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_638 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_640 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_640 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_failure'8660''8704''172'STS_640 v5
du_failure'8660''8704''172'STS_640 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_640 v0
  = coe du_failure'8660''8704''172'STS_398 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_642 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_642 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_recomputeProof_642 v5
du_recomputeProof_642 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_642 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_410 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_644 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_644 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8704''172'STS'8658'failure_644 v5
du_'8704''172'STS'8658'failure_644 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_644 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_360 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_646 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_646 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''45'success'8660'STS_646 v5
du_'8801''45'success'8660'STS_646 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_646 v0
  = coe du_'8801''45'success'8660'STS_300 (coe v0)
-- Interface.ComputationalRelation._._.completeness
d_completeness_650 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_650 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_652 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_652 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_654 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_654 v0 = coe d_computeProof_272 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_656 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_656 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_compute_656 v6
du_compute_656 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_656 v0 = coe du_compute_274 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_658 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_658 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_660 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_660 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_failure'8660''8704''172'STS_660 v6
du_failure'8660''8704''172'STS_660 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_660 v0
  = coe du_failure'8660''8704''172'STS_398 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_662 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_662 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_recomputeProof_662 v6
du_recomputeProof_662 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_662 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_410 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_664 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8704''172'STS'8658'failure_664 v6
du_'8704''172'STS'8658'failure_664 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_664 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_360 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_666 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'success'8660'STS_666 v6
du_'8801''45'success'8660'STS_666 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_666 v0
  = coe du_'8801''45'success'8660'STS_300 (coe v0)
-- Interface.ComputationalRelation._.compute-ext≡
d_compute'45'ext'8801'_668 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_compute'45'ext'8801'_668 = erased
-- Interface.ComputationalRelation._.completeness
d_completeness_672 ::
  T_Computational_232 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_672 = erased
-- Interface.ComputationalRelation._.computeProof
d_computeProof_678 ::
  T_Computational_232 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_678 v0 = coe d_computeProof_272 (coe v0)
-- Interface.ComputationalRelation.Computational⇒Dec'
d_Computational'8658'Dec''_696 ::
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec''_696 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_Computational'8658'Dec''_696 v4 v5 v6 v8
du_Computational'8658'Dec''_696 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_Computational_232 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec''_696 v0 v1 v2 v3
  = let v4 = coe d_computeProof_272 v3 v0 v1 v2 in
    coe
      (case coe v4 of
         C_success_42 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 (coe v5))
         C_failure_44 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation.InjectError
d_InjectError_716 a0 a1 = ()
newtype T_InjectError_716 = C_constructor_726 (AgdaAny -> AgdaAny)
-- Interface.ComputationalRelation.InjectError.injectError
d_injectError_724 :: T_InjectError_716 -> AgdaAny -> AgdaAny
d_injectError_724 v0
  = case coe v0 of
      C_constructor_726 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.InjectError-⊥
d_InjectError'45''8869'_728 :: () -> T_InjectError_716
d_InjectError'45''8869'_728 ~v0 = du_InjectError'45''8869'_728
du_InjectError'45''8869'_728 :: T_InjectError_716
du_InjectError'45''8869'_728
  = coe
      C_constructor_726 (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.InjectError-Id
d_InjectError'45'Id_732 :: () -> T_InjectError_716
d_InjectError'45'Id_732 ~v0 = du_InjectError'45'Id_732
du_InjectError'45'Id_732 :: T_InjectError_716
du_InjectError'45'Id_732 = coe C_constructor_726 (coe (\ v0 -> v0))
-- Interface.ComputationalRelation.Computational-Id
d_Computational'45'Id_740 :: () -> () -> T_Computational_232
d_Computational'45'Id_740 ~v0 ~v1 = du_Computational'45'Id_740
du_Computational'45'Id_740 :: T_Computational_232
du_Computational'45'Id_740
  = coe
      C_MkComputational_412
      (\ v0 v1 v2 ->
         coe
           C_success_42
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_120)))
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵇ
d_Computational'45'ReflexiveTransitiveClosure'7495'_776 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
d_Computational'45'ReflexiveTransitiveClosure'7495'_776 ~v0 ~v1 ~v2
                                                        ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7495'_776 ::
  T_Computational_232 ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
du_Computational'45'ReflexiveTransitiveClosure'7495'_776 v0 v1 v2
                                                         v3
  = coe
      C_MkComputational_412
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  (coe du_Bifunctor'45'ComputationResult_126) erased erased erased
                  erased (d_injectError_724 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                     (\ v7 v8 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_82 v8))
                  (coe
                     d_computeProof_272 v0 v4 v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_272 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_272
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7495'_776
                                              (coe v0) (coe v1) (coe v2) (coe v3))
                                           v4 v11 v8 in
                                 coe
                                   (case coe v13 of
                                      C_success_42 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_42
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_BS'45'ind_84
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_44 v14
                                        -> coe
                                             C_failure_44
                                             (coe
                                                d_injectError_724
                                                (coe C_constructor_726 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_724 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ'
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948 ~v0
                                                                ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9
                                                                v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948 ::
  T_Computational_232 ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948 v0
                                                                 v1 v2 v3
  = coe
      C_MkComputational_412
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  (coe du_Bifunctor'45'ComputationResult_126) erased erased erased
                  erased (d_injectError_724 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                     (coe (\ v7 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_102)))
                  (coe
                     d_computeProof_272 v0
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_272 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_272
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948
                                              (coe v0) (coe v1) (coe v2) (coe v3))
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                                              (coe
                                                 addInt (coe (1 :: Integer))
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                    (coe v4))))
                                           v11 v8 in
                                 coe
                                   (case coe v13 of
                                      C_success_42 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_42
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_BS'45'ind_104
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_44 v14 -> coe v13
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_724 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102 ~v0
                                                               ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10
                                                               v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102 ::
  T_Computational_232 ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102 v0
                                                                v1 v2 v3
  = coe
      C_MkComputational_412
      (\ v4 ->
         coe
           d_computeProof_272
           (coe
              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_948
              (coe v0) (coe v1) (coe v2) (coe v3))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe (0 :: Integer))))
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosure
d_Computational'45'ReflexiveTransitiveClosure_1110 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 -> T_Computational_232
d_Computational'45'ReflexiveTransitiveClosure_1110 ~v0 ~v1 ~v2 ~v3
                                                   ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure_1110 v5
du_Computational'45'ReflexiveTransitiveClosure_1110 ::
  T_Computational_232 -> T_Computational_232
du_Computational'45'ReflexiveTransitiveClosure_1110 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7495'_776
      (coe du_Computational'45'Id_740) (coe v0)
      (coe du_InjectError'45''8869'_728) (coe du_InjectError'45'Id_732)
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosureᵢ
d_Computational'45'ReflexiveTransitiveClosure'7522'_1114 ::
  () ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 -> T_Computational_232
d_Computational'45'ReflexiveTransitiveClosure'7522'_1114 ~v0 ~v1
                                                         ~v2 ~v3 ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure'7522'_1114 v5
du_Computational'45'ReflexiveTransitiveClosure'7522'_1114 ::
  T_Computational_232 -> T_Computational_232
du_Computational'45'ReflexiveTransitiveClosure'7522'_1114 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1102
      (coe du_Computational'45'Id_740) (coe v0)
      (coe du_InjectError'45''8869'_728) (coe du_InjectError'45'Id_732)
-- Interface.ComputationalRelation._._.Computational-RunTraceAndThen
d_Computational'45'RunTraceAndThen_1148 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
d_Computational'45'RunTraceAndThen_1148 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                        ~v7 ~v8 v9 v10 v11
  = du_Computational'45'RunTraceAndThen_1148 v5 v9 v10 v11
du_Computational'45'RunTraceAndThen_1148 ::
  T_Computational_232 ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
du_Computational'45'RunTraceAndThen_1148 v0 v1 v2 v3
  = coe
      C_MkComputational_412
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> let v7
                      = coe
                          d_computeProof_272 v1 v4 v5
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                coe
                  (case coe v7 of
                     C_success_42 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   C_success_42
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                      (coe MAlonzo.Code.Interface.STS.C_run'45''91''93'_40 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v8 -> coe C_failure_44 (coe d_injectError_724 v3 v8)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           (:) v7 v8
             -> let v9 = coe d_computeProof_272 v0 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_272
                                           (coe
                                              du_Computational'45'RunTraceAndThen_1148 (coe v0)
                                              (coe v1) (coe v2) (coe v3))
                                           v4 v11 v8 in
                                 coe
                                   (case coe v13 of
                                      C_success_42 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_42
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_run'45''8759'_42
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_44 v14
                                        -> coe
                                             C_failure_44
                                             (coe
                                                d_injectError_724
                                                (coe C_constructor_726 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_724 v2 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._._.Computational-RunTraceAfterAndThen
d_Computational'45'RunTraceAfterAndThen_1366 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_232 ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
d_Computational'45'RunTraceAfterAndThen_1366 ~v0 ~v1 ~v2 ~v3 v4 ~v5
                                             ~v6 ~v7 v8 ~v9 ~v10 v11 v12 v13
  = du_Computational'45'RunTraceAfterAndThen_1366 v4 v8 v11 v12 v13
du_Computational'45'RunTraceAfterAndThen_1366 ::
  T_Computational_232 ->
  T_Computational_232 ->
  T_Computational_232 ->
  T_InjectError_716 -> T_InjectError_716 -> T_Computational_232
du_Computational'45'RunTraceAfterAndThen_1366 v0 v1 v2 v3 v4
  = coe
      C_MkComputational_412
      (\ v5 v6 v7 ->
         let v8
               = coe
                   d_computeProof_272 v0 v5 v6
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
         coe
           (case coe v8 of
              C_success_42 v9
                -> case coe v9 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                       -> let v12
                                = coe
                                    d_computeProof_272
                                    (coe
                                       du_Computational'45'RunTraceAndThen_1148 (coe v1) (coe v2)
                                       (coe v3) (coe v4))
                                    v5 v10 v7 in
                          coe
                            (case coe v12 of
                               C_success_42 v13
                                 -> case coe v13 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                        -> coe
                                             C_success_42
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe v14)
                                                (coe
                                                   MAlonzo.Code.Interface.STS.C_run_64 v10
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v11) (coe v15))))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               C_failure_44 v13
                                 -> coe
                                      C_failure_44
                                      (coe
                                         d_injectError_724
                                         (coe C_constructor_726 (coe (\ v14 -> v14))) v13)
                               _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_failure_44 v9 -> coe C_failure_44 (coe d_injectError_724 v4 v9)
              _ -> MAlonzo.RTE.mazUnreachableError))
