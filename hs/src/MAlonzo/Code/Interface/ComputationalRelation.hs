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
-- Interface.ComputationalRelation.FunctorLaws-ComputationResult
d_FunctorLaws'45'ComputationResult_148 ::
  () -> MAlonzo.Code.Class.Functor.Core.T_FunctorLaws_48
d_FunctorLaws'45'ComputationResult_148 = erased
-- Interface.ComputationalRelation.Applicative-ComputationResult
d_Applicative'45'ComputationResult_152 ::
  () -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
d_Applicative'45'ComputationResult_152 ~v0
  = du_Applicative'45'ComputationResult_152
du_Applicative'45'ComputationResult_152 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_8
du_Applicative'45'ComputationResult_152
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
d_Monad'45'ComputationResult_162 ::
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_8
d_Monad'45'ComputationResult_162 ~v0
  = du_Monad'45'ComputationResult_162
du_Monad'45'ComputationResult_162 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8
du_Monad'45'ComputationResult_162
  = coe
      MAlonzo.Code.Class.Monad.Core.C_constructor_68
      (coe du_Applicative'45'ComputationResult_152)
      (coe (\ v0 v1 -> coe C_success_42))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              C_success_42 v5 -> coe (\ v6 -> coe v6 v5)
              C_failure_44 v5 -> coe (\ v6 -> v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.map-failure
d_map'45'failure_182 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_ComputationResult_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'failure_182 = erased
-- Interface.ComputationalRelation.bind-complete
d_bind'45'complete_206 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  T_ComputationResult_34 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   T_ComputationResult_34) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_bind'45'complete_206 = erased
-- Interface.ComputationalRelation.success-maybe
d_success'45'maybe_214 ::
  () -> () -> T_ComputationResult_34 -> Maybe AgdaAny
d_success'45'maybe_214 ~v0 ~v1 v2 = du_success'45'maybe_214 v2
du_success'45'maybe_214 :: T_ComputationResult_34 -> Maybe AgdaAny
du_success'45'maybe_214 v0
  = case coe v0 of
      C_success_42 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_failure_44 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.failure-maybe
d_failure'45'maybe_220 ::
  () -> () -> T_ComputationResult_34 -> Maybe AgdaAny
d_failure'45'maybe_220 ~v0 ~v1 v2 = du_failure'45'maybe_220 v2
du_failure'45'maybe_220 :: T_ComputationResult_34 -> Maybe AgdaAny
du_failure'45'maybe_220 v0
  = case coe v0 of
      C_success_42 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_failure_44 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._≈ᶜʳ_
d__'8776''7580''691'__226 ::
  () -> () -> T_ComputationResult_34 -> T_ComputationResult_34 -> ()
d__'8776''7580''691'__226 = erased
-- Interface.ComputationalRelation._.ExtendedRel
d_ExtendedRel_244 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34 -> ()
d_ExtendedRel_244 = erased
-- Interface.ComputationalRelation._.Computational
d_Computational_264 a0 a1 a2 a3 a4 = ()
newtype T_Computational_264
  = C_MkComputational_444 (AgdaAny ->
                           AgdaAny -> AgdaAny -> T_ComputationResult_34)
-- Interface.ComputationalRelation._.Computational.computeProof
d_computeProof_304 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_304 v0
  = case coe v0 of
      C_MkComputational_444 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.Computational.compute
d_compute_306 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_306 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_compute_306 v5 v6 v7 v8
du_compute_306 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_306 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_22
      (coe du_Functor'45'ComputationResult_138) () erased () erased
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe d_computeProof_304 v0 v1 v2 v3)
-- Interface.ComputationalRelation._.Computational.completeness
d_completeness_322 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_322 = erased
-- Interface.ComputationalRelation._.Computational.computeFail
d_computeFail_324 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_324 = erased
-- Interface.ComputationalRelation._.Computational.≡-success⇔STS
d_'8801''45'success'8660'STS_332 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_332 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8801''45'success'8660'STS_332 v5 v6 v7 v8 v9
du_'8801''45'success'8660'STS_332 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_332 v0 v1 v2 v3 v4
  = let v5 = coe d_computeProof_304 v0 v1 v2 v3 in
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
                                  (coe du_compute_306 (coe v0) (coe v1) (coe v2) (coe v3))
                                  (coe C_success_42 (coe v4))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                     erased (coe du_compute_306 (coe v0) (coe v1) (coe v2) (coe v3))
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
                           erased v5 (coe du_compute_306 (coe v0) (coe v1) (coe v2) (coe v3))
                           (coe C_success_42 (coe v4))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                              erased (coe du_compute_306 (coe v0) (coe v1) (coe v2) (coe v3))
                              (coe C_success_42 (coe v4)) (coe C_success_42 (coe v4))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494 erased
                                 (coe C_success_42 (coe v4)))
                              erased)
                           erased)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇒∀¬STS
d_failure'8658''8704''172'STS_378 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_378 = erased
-- Interface.ComputationalRelation._.Computational.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_392 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_392 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
                                  ~v9
  = du_'8704''172'STS'8658'failure_392 v5 v6 v7 v8
du_'8704''172'STS'8658'failure_392 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_392 v0 v1 v2 v3
  = let v4 = coe d_computeProof_304 v0 v1 v2 v3 in
    coe
      (case coe v4 of
         C_success_42 v5
           -> coe
                seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         C_failure_44 v5
           -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇔∀¬STS
d_failure'8660''8704''172'STS_430 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_430 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_failure'8660''8704''172'STS_430 v5 v6 v7 v8
du_failure'8660''8704''172'STS_430 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_430 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
      (\ v4 ->
         coe
           du_'8704''172'STS'8658'failure_392 (coe v0) (coe v1) (coe v2)
           (coe v3))
-- Interface.ComputationalRelation._.Computational.recomputeProof
d_recomputeProof_442 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_442 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 ~v9 ~v10
  = du_recomputeProof_442 v5 v6 v7 v8
du_recomputeProof_442 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_442 v0 v1 v2 v3
  = coe d_computeProof_304 v0 v1 v2 v3
-- Interface.ComputationalRelation._._.completeness
d_completeness_464 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_464 = erased
-- Interface.ComputationalRelation._._.compute
d_compute_466 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_466 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_compute_466 v5
du_compute_466 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_466 v0 = coe du_compute_306 (coe v0)
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_468 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_468 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_470 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_470 v0 = coe d_computeProof_304 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_472 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_472 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_474 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_474 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_failure'8660''8704''172'STS_474 v5
du_failure'8660''8704''172'STS_474 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_474 v0
  = coe du_failure'8660''8704''172'STS_430 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_476 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_476 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_recomputeProof_476 v5
du_recomputeProof_476 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_476 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_442 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_478 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_478 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8704''172'STS'8658'failure_478 v5
du_'8704''172'STS'8658'failure_478 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_478 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_392 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_480 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_480 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8801''45'success'8660'STS_480 v5
du_'8801''45'success'8660'STS_480 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_480 v0
  = coe du_'8801''45'success'8660'STS_332 (coe v0)
-- Interface.ComputationalRelation._.ExtendedRelSTS
d_ExtendedRelSTS_482 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34 -> ()
d_ExtendedRelSTS_482 = erased
-- Interface.ComputationalRelation._.ExtendedRel-compute
d_ExtendedRel'45'compute_484 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_ExtendedRel'45'compute_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_ExtendedRel'45'compute_484 v5 v6 v7 v8
du_ExtendedRel'45'compute_484 ::
  T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_ExtendedRel'45'compute_484 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              (coe du_Functor'45'ComputationResult_138) () erased () erased
              (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe d_computeProof_304 v0 v1 v2 v3) in
    coe
      (case coe v4 of
         C_success_42 v5
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   du_'8801''45'success'8660'STS_332 (coe v0) (coe v1) (coe v2)
                   (coe v3) (coe v5))
                erased
         C_failure_44 v5 -> erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.ExtendedRel-rightUnique
d_ExtendedRel'45'rightUnique_516 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_ComputationResult_34 ->
  T_ComputationResult_34 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ExtendedRel'45'rightUnique_516 = erased
-- Interface.ComputationalRelation._.computational⇒rightUnique
d_computational'8658'rightUnique_558 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_computational'8658'rightUnique_558 = erased
-- Interface.ComputationalRelation._.Computational⇒Dec
d_Computational'8658'Dec_574 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec_574 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_Computational'8658'Dec_574 v5 v6 v7 v8 v9 v10
du_Computational'8658'Dec_574 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec_574 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
              (coe du_Functor'45'ComputationResult_138) () erased () erased
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe d_computeProof_304 v0 v1 v2 v3) in
    coe
      (let v7
             = let v7
                     = coe
                         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                         (coe du_Functor'45'ComputationResult_138) () erased () erased
                         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                         (coe d_computeProof_304 v0 v1 v2 v3) in
               coe
                 (case coe v7 of
                    C_success_42 v8
                      -> coe
                           MAlonzo.Code.Function.Bundles.d_to_1868
                           (coe
                              du_'8801''45'success'8660'STS_332 (coe v0) (coe v1) (coe v2)
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
d_completeness_662 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_662 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_664 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_664 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_666 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_666 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_computeProof_666 v5
du_computeProof_666 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_computeProof_666 v0 = coe d_computeProof_304 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_668 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_668 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_compute_668 v5
du_compute_668 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_668 v0 = coe du_compute_306 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_670 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_670 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_672 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_672 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_failure'8660''8704''172'STS_672 v5
du_failure'8660''8704''172'STS_672 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_672 v0
  = coe du_failure'8660''8704''172'STS_430 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_674 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_674 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_recomputeProof_674 v5
du_recomputeProof_674 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_674 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_442 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_676 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_676 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8704''172'STS'8658'failure_676 v5
du_'8704''172'STS'8658'failure_676 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_676 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_392 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_678 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_678 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''45'success'8660'STS_678 v5
du_'8801''45'success'8660'STS_678 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_678 v0
  = coe du_'8801''45'success'8660'STS_332 (coe v0)
-- Interface.ComputationalRelation._._.completeness
d_completeness_682 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_682 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_684 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_684 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_686 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_686 v0 = coe d_computeProof_304 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_688 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_compute_688 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_compute_688 v6
du_compute_688 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_compute_688 v0 = coe du_compute_306 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_690 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_690 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_692 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_692 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_failure'8660''8704''172'STS_692 v6
du_failure'8660''8704''172'STS_692 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_692 v0
  = coe du_failure'8660''8704''172'STS_430 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_694 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_recomputeProof_694 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_recomputeProof_694 v6
du_recomputeProof_694 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
du_recomputeProof_694 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_442 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_696 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8704''172'STS'8658'failure_696 v6
du_'8704''172'STS'8658'failure_696 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_696 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_392 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_698 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_698 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'success'8660'STS_698 v6
du_'8801''45'success'8660'STS_698 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_698 v0
  = coe du_'8801''45'success'8660'STS_332 (coe v0)
-- Interface.ComputationalRelation._.compute-ext≡
d_compute'45'ext'8801'_700 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_compute'45'ext'8801'_700 = erased
-- Interface.ComputationalRelation._.completeness
d_completeness_704 ::
  T_Computational_264 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_704 = erased
-- Interface.ComputationalRelation._.computeProof
d_computeProof_710 ::
  T_Computational_264 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_34
d_computeProof_710 v0 = coe d_computeProof_304 (coe v0)
-- Interface.ComputationalRelation.Computational⇒Dec'
d_Computational'8658'Dec''_728 ::
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec''_728 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_Computational'8658'Dec''_728 v4 v5 v6 v8
du_Computational'8658'Dec''_728 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_Computational_264 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec''_728 v0 v1 v2 v3
  = let v4 = coe d_computeProof_304 v3 v0 v1 v2 in
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
d_InjectError_748 a0 a1 = ()
newtype T_InjectError_748 = C_constructor_758 (AgdaAny -> AgdaAny)
-- Interface.ComputationalRelation.InjectError.injectError
d_injectError_756 :: T_InjectError_748 -> AgdaAny -> AgdaAny
d_injectError_756 v0
  = case coe v0 of
      C_constructor_758 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.InjectError-⊥
d_InjectError'45''8869'_760 :: () -> T_InjectError_748
d_InjectError'45''8869'_760 ~v0 = du_InjectError'45''8869'_760
du_InjectError'45''8869'_760 :: T_InjectError_748
du_InjectError'45''8869'_760
  = coe
      C_constructor_758 (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.InjectError-Id
d_InjectError'45'Id_764 :: () -> T_InjectError_748
d_InjectError'45'Id_764 ~v0 = du_InjectError'45'Id_764
du_InjectError'45'Id_764 :: T_InjectError_748
du_InjectError'45'Id_764 = coe C_constructor_758 (coe (\ v0 -> v0))
-- Interface.ComputationalRelation.Computational-Id
d_Computational'45'Id_772 :: () -> () -> T_Computational_264
d_Computational'45'Id_772 ~v0 ~v1 = du_Computational'45'Id_772
du_Computational'45'Id_772 :: T_Computational_264
du_Computational'45'Id_772
  = coe
      C_MkComputational_444
      (\ v0 v1 v2 ->
         coe
           C_success_42
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_120)))
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵇ
d_Computational'45'ReflexiveTransitiveClosure'7495'_808 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'ReflexiveTransitiveClosure'7495'_808 ~v0 ~v1 ~v2
                                                        ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7495'_808
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7495'_808 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'ReflexiveTransitiveClosure'7495'_808 v0 v1 v2
                                                         v3
  = coe
      C_MkComputational_444
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  (coe du_Bifunctor'45'ComputationResult_126) erased erased erased
                  erased (d_injectError_756 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                     (\ v7 v8 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_82 v8))
                  (coe
                     d_computeProof_304 v0 v4 v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_304 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_304
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7495'_808
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
                                                d_injectError_756
                                                (coe C_constructor_758 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_756 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ'
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980 ~v0
                                                                ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9
                                                                v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980 v0
                                                                 v1 v2 v3
  = coe
      C_MkComputational_444
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  (coe du_Bifunctor'45'ComputationResult_126) erased erased erased
                  erased (d_injectError_756 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_54
                     (coe MAlonzo.Code.Class.Bifunctor.du_Bifunctor'45'Σ_74)
                     (coe (\ v7 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_102)))
                  (coe
                     d_computeProof_304 v0
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_304 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_304
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980
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
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_756 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134 ~v0
                                                               ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10
                                                               v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134 v0
                                                                v1 v2 v3
  = coe
      C_MkComputational_444
      (\ v4 ->
         coe
           d_computeProof_304
           (coe
              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_980
              (coe v0) (coe v1) (coe v2) (coe v3))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe (0 :: Integer))))
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosure
d_Computational'45'ReflexiveTransitiveClosure_1142 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 -> T_Computational_264
d_Computational'45'ReflexiveTransitiveClosure_1142 ~v0 ~v1 ~v2 ~v3
                                                   ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure_1142 v5
du_Computational'45'ReflexiveTransitiveClosure_1142 ::
  T_Computational_264 -> T_Computational_264
du_Computational'45'ReflexiveTransitiveClosure_1142 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7495'_808
      (coe du_Computational'45'Id_772) (coe v0)
      (coe du_InjectError'45''8869'_760) (coe du_InjectError'45'Id_764)
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosureᵢ
d_Computational'45'ReflexiveTransitiveClosure'7522'_1146 ::
  () ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 -> T_Computational_264
d_Computational'45'ReflexiveTransitiveClosure'7522'_1146 ~v0 ~v1
                                                         ~v2 ~v3 ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure'7522'_1146 v5
du_Computational'45'ReflexiveTransitiveClosure'7522'_1146 ::
  T_Computational_264 -> T_Computational_264
du_Computational'45'ReflexiveTransitiveClosure'7522'_1146 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1134
      (coe du_Computational'45'Id_772) (coe v0)
      (coe du_InjectError'45''8869'_760) (coe du_InjectError'45'Id_764)
-- Interface.ComputationalRelation._._.Computational-RunTraceAndThen
d_Computational'45'RunTraceAndThen_1180 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'RunTraceAndThen_1180 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                        ~v7 ~v8 v9 v10 v11
  = du_Computational'45'RunTraceAndThen_1180 v5 v9 v10 v11
du_Computational'45'RunTraceAndThen_1180 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'RunTraceAndThen_1180 v0 v1 v2 v3
  = coe
      C_MkComputational_444
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> let v7
                      = coe
                          d_computeProof_304 v1 v4 v5
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
                     C_failure_44 v8 -> coe C_failure_44 (coe d_injectError_756 v3 v8)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           (:) v7 v8
             -> let v9 = coe d_computeProof_304 v0 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_42 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_304
                                           (coe
                                              du_Computational'45'RunTraceAndThen_1180 (coe v0)
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
                                                d_injectError_756
                                                (coe C_constructor_758 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_44 v10 -> coe C_failure_44 (coe d_injectError_756 v2 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._._.Computational-RunTraceAfterAndThen
d_Computational'45'RunTraceAfterAndThen_1398 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'RunTraceAfterAndThen_1398 ~v0 ~v1 ~v2 ~v3 v4 ~v5
                                             ~v6 ~v7 v8 ~v9 ~v10 v11 v12 v13
  = du_Computational'45'RunTraceAfterAndThen_1398 v4 v8 v11 v12 v13
du_Computational'45'RunTraceAfterAndThen_1398 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'RunTraceAfterAndThen_1398 v0 v1 v2 v3 v4
  = coe
      C_MkComputational_444
      (\ v5 v6 v7 ->
         let v8
               = coe
                   d_computeProof_304 v0 v5 v6
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
         coe
           (case coe v8 of
              C_success_42 v9
                -> case coe v9 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                       -> let v12
                                = coe
                                    d_computeProof_304
                                    (coe
                                       du_Computational'45'RunTraceAndThen_1180 (coe v1) (coe v2)
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
                                         d_injectError_756
                                         (coe C_constructor_758 (coe (\ v14 -> v14))) v13)
                               _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_failure_44 v9 -> coe C_failure_44 (coe d_injectError_756 v4 v9)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation._._.Computational-RunTraceAfter
d_Computational'45'RunTraceAfter_1546 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_264 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
d_Computational'45'RunTraceAfter_1546 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
                                      ~v7 ~v8 v9 v10 v11
  = du_Computational'45'RunTraceAfter_1546 v4 v9 v10 v11
du_Computational'45'RunTraceAfter_1546 ::
  T_Computational_264 ->
  T_Computational_264 ->
  T_InjectError_748 -> T_InjectError_748 -> T_Computational_264
du_Computational'45'RunTraceAfter_1546 v0 v1 v2 v3
  = coe
      C_MkComputational_444
      (\ v4 v5 v6 ->
         let v7
               = coe
                   d_computeProof_304 v0 v4 v5
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
         coe
           (case coe v7 of
              C_success_42 v8
                -> case coe v8 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                       -> let v11
                                = coe
                                    d_computeProof_304
                                    (coe
                                       du_Computational'45'ReflexiveTransitiveClosure'7495'_808
                                       (coe du_Computational'45'Id_772) (coe v1)
                                       (coe du_InjectError'45''8869'_760) (coe v2))
                                    v4 v9 v6 in
                          coe
                            (case coe v11 of
                               C_success_42 v12
                                 -> case coe v12 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                        -> coe
                                             C_success_42
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe v13)
                                                (coe
                                                   MAlonzo.Code.Interface.STS.C_run_154 v9
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v10) (coe v14))))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               C_failure_44 v12 -> coe v11
                               _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_failure_44 v8 -> coe C_failure_44 (coe d_injectError_756 v3 v8)
              _ -> MAlonzo.RTE.mazUnreachableError))
