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
d_ComputationResult_36 a0 a1 a2 a3 = ()
data T_ComputationResult_36
  = C_success_46 AgdaAny | C_failure_48 AgdaAny
-- Interface.ComputationalRelation.isFailure
d_isFailure_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_ComputationResult_36 -> ()
d_isFailure_56 = erased
-- Interface.ComputationalRelation._.caseCR_∣_∣_
d_caseCR_'8739'_'8739'__82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  T_ComputationResult_36 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) -> AgdaAny
d_caseCR_'8739'_'8739'__82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_caseCR_'8739'_'8739'__82 v6 v7 v8
du_caseCR_'8739'_'8739'__82 ::
  T_ComputationResult_36 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) -> AgdaAny
du_caseCR_'8739'_'8739'__82 v0 v1 v2
  = case coe v0 of
      C_success_46 v3 -> coe v1 v3 erased
      C_failure_48 v3
        -> coe
             v2
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) erased)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.caseCR-success
d_caseCR'45'success_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  T_ComputationResult_36 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_caseCR'45'success_120 = erased
-- Interface.ComputationalRelation._.caseCR-failure
d_caseCR'45'failure_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  T_ComputationResult_36 ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_caseCR'45'failure_132 = erased
-- Interface.ComputationalRelation.Bifunctor-ComputationResult
d_Bifunctor'45'ComputationResult_134 ::
  MAlonzo.Code.Class.Bifunctor.T_Bifunctor_82
d_Bifunctor'45'ComputationResult_134
  = coe
      MAlonzo.Code.Class.Bifunctor.C_constructor_130
      (coe
         (\ v0 v1 v2 v3 v4 v5 v6 v7 v8 ->
            case coe v8 of
              C_success_46 v9 -> coe C_success_46 (coe v7 v9)
              C_failure_48 v9 -> coe C_failure_48 (coe v6 v9)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.Functor-ComputationResult
d_Functor'45'ComputationResult_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Functor.Core.T_Functor_16
d_Functor'45'ComputationResult_148 ~v0 ~v1
  = du_Functor'45'ComputationResult_148
du_Functor'45'ComputationResult_148 ::
  MAlonzo.Code.Class.Functor.Core.T_Functor_16
du_Functor'45'ComputationResult_148
  = coe
      MAlonzo.Code.Class.Functor.Core.C_constructor_34
      (coe
         (\ v0 v1 v2 v3 v4 v5 ->
            case coe v5 of
              C_success_46 v6 -> coe C_success_46 (coe v4 v6)
              C_failure_48 v6 -> coe v5
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.FunctorLaws-ComputationResult
d_FunctorLaws'45'ComputationResult_160 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Functor.Core.T_FunctorLaws_52
d_FunctorLaws'45'ComputationResult_160 = erased
-- Interface.ComputationalRelation.Applicative-ComputationResult
d_Applicative'45'ComputationResult_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
d_Applicative'45'ComputationResult_166 ~v0 ~v1
  = du_Applicative'45'ComputationResult_166
du_Applicative'45'ComputationResult_166 ::
  MAlonzo.Code.Class.Applicative.Core.T_Applicative_10
du_Applicative'45'ComputationResult_166
  = coe
      MAlonzo.Code.Class.Applicative.Core.C_mkApplicative_60
      (coe du_Functor'45'ComputationResult_148)
      (coe (\ v0 v1 -> coe C_success_46))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              C_success_46 v5
                -> coe
                     (\ v6 ->
                        coe
                          MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                          (coe du_Functor'45'ComputationResult_148) v0 erased v2 erased v5
                          v6)
              C_failure_48 v5 -> coe (\ v6 -> v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.Monad-ComputationResult
d_Monad'45'ComputationResult_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Class.Monad.Core.T_Monad_10
d_Monad'45'ComputationResult_178 ~v0 ~v1
  = du_Monad'45'ComputationResult_178
du_Monad'45'ComputationResult_178 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_10
du_Monad'45'ComputationResult_178
  = coe
      MAlonzo.Code.Class.Monad.Core.C_mkMonad_62
      (coe du_Applicative'45'ComputationResult_166)
      (coe (\ v0 v1 -> coe C_success_46))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            case coe v4 of
              C_success_46 v5 -> coe (\ v6 -> coe v6 v5)
              C_failure_48 v5 -> coe (\ v6 -> v4)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.map-failure
d_map'45'failure_204 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  T_ComputationResult_36 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'45'failure_204 = erased
-- Interface.ComputationalRelation.bind-complete
d_bind'45'complete_230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  T_ComputationResult_36 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   T_ComputationResult_36) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_bind'45'complete_230 = erased
-- Interface.ComputationalRelation.success-maybe
d_success'45'maybe_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_ComputationResult_36 -> Maybe AgdaAny
d_success'45'maybe_244 ~v0 ~v1 ~v2 ~v3 v4
  = du_success'45'maybe_244 v4
du_success'45'maybe_244 :: T_ComputationResult_36 -> Maybe AgdaAny
du_success'45'maybe_244 v0
  = case coe v0 of
      C_success_46 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      C_failure_48 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.failure-maybe
d_failure'45'maybe_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_ComputationResult_36 -> Maybe AgdaAny
d_failure'45'maybe_256 ~v0 ~v1 ~v2 ~v3 v4
  = du_failure'45'maybe_256 v4
du_failure'45'maybe_256 :: T_ComputationResult_36 -> Maybe AgdaAny
du_failure'45'maybe_256 v0
  = case coe v0 of
      C_success_46 v1 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      C_failure_48 v1
        -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._≈ᶜʳ_
d__'8776''7580''691'__268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> T_ComputationResult_36 -> T_ComputationResult_36 -> ()
d__'8776''7580''691'__268 = erased
-- Interface.ComputationalRelation._.ExtendedRel
d_ExtendedRel_286 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36 -> ()
d_ExtendedRel_286 = erased
-- Interface.ComputationalRelation._.Computational
d_Computational_306 a0 a1 a2 a3 a4 = ()
newtype T_Computational_306
  = C_MkComputational_486 (AgdaAny ->
                           AgdaAny -> AgdaAny -> T_ComputationResult_36)
-- Interface.ComputationalRelation._.Computational.computeProof
d_computeProof_346 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_computeProof_346 v0
  = case coe v0 of
      C_MkComputational_486 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation._.Computational.compute
d_compute_348 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_compute_348 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_compute_348 v5 v6 v7 v8
du_compute_348 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_compute_348 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Functor.Core.du_fmap_24
      (coe du_Functor'45'ComputationResult_148) () erased () erased
      (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
      (coe d_computeProof_346 v0 v1 v2 v3)
-- Interface.ComputationalRelation._.Computational.completeness
d_completeness_364 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_364 = erased
-- Interface.ComputationalRelation._.Computational.computeFail
d_computeFail_366 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () -> T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_366 = erased
-- Interface.ComputationalRelation._.Computational.≡-success⇔STS
d_'8801''45'success'8660'STS_374 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_374 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8801''45'success'8660'STS_374 v5 v6 v7 v8 v9
du_'8801''45'success'8660'STS_374 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_374 v0 v1 v2 v3 v4
  = let v5 = coe d_computeProof_346 v0 v1 v2 v3 in
    coe
      (case coe v5 of
         C_success_46 v6
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                  -> coe
                       MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe (\ v9 -> v8))
                       (coe
                          (\ v9 ->
                             coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                               (\ v10 v11 v12 -> v12) (coe C_success_46 (coe v7))
                               (coe C_success_46 (coe v4))
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
                                  erased (coe C_success_46 (coe v7))
                                  (coe du_compute_348 (coe v0) (coe v1) (coe v2) (coe v3))
                                  (coe C_success_46 (coe v4))
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                                     erased (coe du_compute_348 (coe v0) (coe v1) (coe v2) (coe v3))
                                     (coe C_success_46 (coe v4)) (coe C_success_46 (coe v4))
                                     (coe
                                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                        erased (coe C_success_46 (coe v4)))
                                     erased)
                                  erased)))
                _ -> MAlonzo.RTE.mazUnreachableError
         C_failure_48 v6
           -> coe
                MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
                (coe
                   (\ v7 ->
                      coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
                        (\ v8 v9 v10 -> v10) v5 (coe C_success_46 (coe v4))
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''728'_454
                           erased v5 (coe du_compute_348 (coe v0) (coe v1) (coe v2) (coe v3))
                           (coe C_success_46 (coe v4))
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8801''45''10217'_438
                              erased (coe du_compute_348 (coe v0) (coe v1) (coe v2) (coe v3))
                              (coe C_success_46 (coe v4)) (coe C_success_46 (coe v4))
                              (coe
                                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494 erased
                                 (coe C_success_46 (coe v4)))
                              erased)
                           erased)))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇒∀¬STS
d_failure'8658''8704''172'STS_420 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_420 = erased
-- Interface.ComputationalRelation._.Computational.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_434 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_434 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
                                  ~v9
  = du_'8704''172'STS'8658'failure_434 v5 v6 v7 v8
du_'8704''172'STS'8658'failure_434 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_434 v0 v1 v2 v3
  = let v4 = coe d_computeProof_346 v0 v1 v2 v3 in
    coe
      (case coe v4 of
         C_success_46 v5
           -> coe
                seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
         C_failure_48 v5
           -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.Computational.failure⇔∀¬STS
d_failure'8660''8704''172'STS_472 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_472 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_failure'8660''8704''172'STS_472 v5 v6 v7 v8
du_failure'8660''8704''172'STS_472 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_472 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
      (\ v4 ->
         coe
           du_'8704''172'STS'8658'failure_434 (coe v0) (coe v1) (coe v2)
           (coe v3))
-- Interface.ComputationalRelation._.Computational.recomputeProof
d_recomputeProof_484 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  () ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_recomputeProof_484 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 ~v9 ~v10
  = du_recomputeProof_484 v5 v6 v7 v8
du_recomputeProof_484 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_recomputeProof_484 v0 v1 v2 v3
  = coe d_computeProof_346 v0 v1 v2 v3
-- Interface.ComputationalRelation._._.completeness
d_completeness_506 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_506 = erased
-- Interface.ComputationalRelation._._.compute
d_compute_508 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_compute_508 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_compute_508 v5
du_compute_508 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_compute_508 v0 = coe du_compute_348 (coe v0)
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_510 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_510 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_512 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_computeProof_512 v0 = coe d_computeProof_346 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_514 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_514 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_516 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_516 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_failure'8660''8704''172'STS_516 v5
du_failure'8660''8704''172'STS_516 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_516 v0
  = coe du_failure'8660''8704''172'STS_472 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_518 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_recomputeProof_518 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_recomputeProof_518 v5
du_recomputeProof_518 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_recomputeProof_518 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_484 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_520 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_520 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8704''172'STS'8658'failure_520 v5
du_'8704''172'STS'8658'failure_520 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_520 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_434 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_522 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_522 ~v0 ~v1 ~v2 ~v3 ~v4 v5
  = du_'8801''45'success'8660'STS_522 v5
du_'8801''45'success'8660'STS_522 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_522 v0
  = coe du_'8801''45'success'8660'STS_374 (coe v0)
-- Interface.ComputationalRelation._.ExtendedRelSTS
d_ExtendedRelSTS_524 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36 -> ()
d_ExtendedRelSTS_524 = erased
-- Interface.ComputationalRelation._.ExtendedRel-compute
d_ExtendedRel'45'compute_526 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_ExtendedRel'45'compute_526 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_ExtendedRel'45'compute_526 v5 v6 v7 v8
du_ExtendedRel'45'compute_526 ::
  T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_ExtendedRel'45'compute_526 v0 v1 v2 v3
  = let v4
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
              (coe du_Functor'45'ComputationResult_148) () erased () erased
              (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
              (coe d_computeProof_346 v0 v1 v2 v3) in
    coe
      (case coe v4 of
         C_success_46 v5
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   du_'8801''45'success'8660'STS_374 (coe v0) (coe v1) (coe v2)
                   (coe v3) (coe v5))
                erased
         C_failure_48 v5 -> erased
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._.ExtendedRel-rightUnique
d_ExtendedRel'45'rightUnique_558 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_ComputationResult_36 ->
  T_ComputationResult_36 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_ExtendedRel'45'rightUnique_558 = erased
-- Interface.ComputationalRelation._.computational⇒rightUnique
d_computational'8658'rightUnique_600 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_computational'8658'rightUnique_600 = erased
-- Interface.ComputationalRelation._.Computational⇒Dec
d_Computational'8658'Dec_616 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec_616 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_Computational'8658'Dec_616 v5 v6 v7 v8 v9 v10
du_Computational'8658'Dec_616 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec_616 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
              (coe du_Functor'45'ComputationResult_148) () erased () erased
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe d_computeProof_346 v0 v1 v2 v3) in
    coe
      (let v7
             = let v7
                     = coe
                         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__22
                         (coe du_Functor'45'ComputationResult_148) () erased () erased
                         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                         (coe d_computeProof_346 v0 v1 v2 v3) in
               coe
                 (case coe v7 of
                    C_success_46 v8
                      -> coe
                           MAlonzo.Code.Function.Bundles.d_to_1868
                           (coe
                              du_'8801''45'success'8660'STS_374 (coe v0) (coe v1) (coe v2)
                              (coe v3) (coe v8))
                           erased
                    C_failure_48 v8 -> erased
                    _ -> MAlonzo.RTE.mazUnreachableError) in
       coe
         (case coe v6 of
            C_success_46 v8
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
            C_failure_48 v8
              -> coe
                   MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                   (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                   (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation._._.completeness
d_completeness_704 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_704 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_706 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_706 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_708 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_computeProof_708 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_computeProof_708 v5
du_computeProof_708 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_computeProof_708 v0 = coe d_computeProof_346 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_710 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_compute_710 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 = du_compute_710 v5
du_compute_710 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_compute_710 v0 = coe du_compute_348 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_712 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_712 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_714 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_714 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_failure'8660''8704''172'STS_714 v5
du_failure'8660''8704''172'STS_714 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_714 v0
  = coe du_failure'8660''8704''172'STS_472 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_716 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_recomputeProof_716 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_recomputeProof_716 v5
du_recomputeProof_716 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_recomputeProof_716 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_484 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_718 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_718 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8704''172'STS'8658'failure_718 v5
du_'8704''172'STS'8658'failure_718 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_718 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_434 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_720 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_720 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
  = du_'8801''45'success'8660'STS_720 v5
du_'8801''45'success'8660'STS_720 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_720 v0
  = coe du_'8801''45'success'8660'STS_374 (coe v0)
-- Interface.ComputationalRelation._._.completeness
d_completeness_724 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_724 = erased
-- Interface.ComputationalRelation._._.computeFail
d_computeFail_726 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d_computeFail_726 = erased
-- Interface.ComputationalRelation._._.computeProof
d_computeProof_728 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_computeProof_728 v0 = coe d_computeProof_346 (coe v0)
-- Interface.ComputationalRelation._._.compute
d_compute_730 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_compute_730 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_compute_730 v6
du_compute_730 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_compute_730 v0 = coe du_compute_348 (coe v0)
-- Interface.ComputationalRelation._._.failure⇒∀¬STS
d_failure'8658''8704''172'STS_732 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_failure'8658''8704''172'STS_732 = erased
-- Interface.ComputationalRelation._._.failure⇔∀¬STS
d_failure'8660''8704''172'STS_734 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_failure'8660''8704''172'STS_734 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_failure'8660''8704''172'STS_734 v6
du_failure'8660''8704''172'STS_734 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_failure'8660''8704''172'STS_734 v0
  = coe du_failure'8660''8704''172'STS_472 (coe v0)
-- Interface.ComputationalRelation._._.recomputeProof
d_recomputeProof_736 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_recomputeProof_736 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_recomputeProof_736 v6
du_recomputeProof_736 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
du_recomputeProof_736 v0 v1 v2 v3 v4 v5
  = coe du_recomputeProof_484 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.∀¬STS⇒failure
d_'8704''172'STS'8658'failure_738 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8704''172'STS'8658'failure_738 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8704''172'STS'8658'failure_738 v6
du_'8704''172'STS'8658'failure_738 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8704''172'STS'8658'failure_738 v0 v1 v2 v3 v4
  = coe du_'8704''172'STS'8658'failure_434 (coe v0) v1 v2 v3
-- Interface.ComputationalRelation._._.≡-success⇔STS
d_'8801''45'success'8660'STS_740 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''45'success'8660'STS_740 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_'8801''45'success'8660'STS_740 v6
du_'8801''45'success'8660'STS_740 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''45'success'8660'STS_740 v0
  = coe du_'8801''45'success'8660'STS_374 (coe v0)
-- Interface.ComputationalRelation._.compute-ext≡
d_compute'45'ext'8801'_742 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_compute'45'ext'8801'_742 = erased
-- Interface.ComputationalRelation._.completeness
d_completeness_746 ::
  T_Computational_306 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_completeness_746 = erased
-- Interface.ComputationalRelation._.computeProof
d_computeProof_752 ::
  T_Computational_306 ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_ComputationResult_36
d_computeProof_752 v0 = coe d_computeProof_346 (coe v0)
-- Interface.ComputationalRelation.Computational⇒Dec'
d_Computational'8658'Dec''_770 ::
  () ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Computational'8658'Dec''_770 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 ~v7 v8
  = du_Computational'8658'Dec''_770 v4 v5 v6 v8
du_Computational'8658'Dec''_770 ::
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  T_Computational_306 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Computational'8658'Dec''_770 v0 v1 v2 v3
  = let v4 = coe d_computeProof_346 v3 v0 v1 v2 in
    coe
      (case coe v4 of
         C_success_46 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 (coe v5))
         C_failure_48 v5
           -> coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation.InjectError
d_InjectError_790 a0 a1 = ()
newtype T_InjectError_790 = C_constructor_800 (AgdaAny -> AgdaAny)
-- Interface.ComputationalRelation.InjectError.injectError
d_injectError_798 :: T_InjectError_790 -> AgdaAny -> AgdaAny
d_injectError_798 v0
  = case coe v0 of
      C_constructor_800 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Interface.ComputationalRelation.InjectError-⊥
d_InjectError'45''8869'_802 :: () -> T_InjectError_790
d_InjectError'45''8869'_802 ~v0 = du_InjectError'45''8869'_802
du_InjectError'45''8869'_802 :: T_InjectError_790
du_InjectError'45''8869'_802
  = coe
      C_constructor_800 (coe (\ v0 -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation.InjectError-Id
d_InjectError'45'Id_806 :: () -> T_InjectError_790
d_InjectError'45'Id_806 ~v0 = du_InjectError'45'Id_806
du_InjectError'45'Id_806 :: T_InjectError_790
du_InjectError'45'Id_806 = coe C_constructor_800 (coe (\ v0 -> v0))
-- Interface.ComputationalRelation.Computational-Id
d_Computational'45'Id_814 :: () -> () -> T_Computational_306
d_Computational'45'Id_814 ~v0 ~v1 = du_Computational'45'Id_814
du_Computational'45'Id_814 :: T_Computational_306
du_Computational'45'Id_814
  = coe
      C_MkComputational_486
      (\ v0 v1 v2 ->
         coe
           C_success_46
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
              (coe MAlonzo.Code.Interface.STS.C_Id'45'nop_120)))
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵇ
d_Computational'45'ReflexiveTransitiveClosure'7495'_850 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'ReflexiveTransitiveClosure'7495'_850 ~v0 ~v1 ~v2
                                                        ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7495'_850
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7495'_850 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'ReflexiveTransitiveClosure'7495'_850 v0 v1 v2
                                                         v3
  = coe
      C_MkComputational_486
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  d_Bifunctor'45'ComputationResult_134 () () erased erased erased
                  erased (d_injectError_798 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_56
                     (coe MAlonzo.Code.Class.Bifunctor.d_Bifunctor'45'Σ_76) (coe ())
                     (coe ()) (coe ())
                     (\ v7 v8 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_82 v8))
                  (coe
                     d_computeProof_346 v0 v4 v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_346 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_46 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_346
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7495'_850
                                              (coe v0) (coe v1) (coe v2) (coe v3))
                                           v4 v11 v8 in
                                 coe
                                   (case coe v13 of
                                      C_success_46 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_46
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_BS'45'ind_84
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_48 v14
                                        -> coe
                                             C_failure_48
                                             (coe
                                                d_injectError_798
                                                (coe C_constructor_800 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_48 v10 -> coe C_failure_48 (coe d_injectError_798 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ'
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022 ~v0
                                                                 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9
                                                                 v10 v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022 v0
                                                                  v1 v2 v3
  = coe
      C_MkComputational_486
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> coe
                  MAlonzo.Code.Class.Bifunctor.d_bimap_104
                  d_Bifunctor'45'ComputationResult_134 () () erased erased erased
                  erased (d_injectError_798 (coe v2))
                  (coe
                     MAlonzo.Code.Class.Bifunctor.du_map'8322''8242'_56
                     (coe MAlonzo.Code.Class.Bifunctor.d_Bifunctor'45'Σ_76) (coe ())
                     (coe ()) (coe ())
                     (coe (\ v7 -> coe MAlonzo.Code.Interface.STS.C_BS'45'base_102)))
                  (coe
                     d_computeProof_346 v0
                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) v5
                     (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8))
           (:) v7 v8
             -> let v9 = coe d_computeProof_346 v1 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_46 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_346
                                           (coe
                                              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022
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
                                      C_success_46 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_46
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_BS'45'ind_104
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_48 v14 -> coe v13
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_48 v10 -> coe C_failure_48 (coe d_injectError_798 v3 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._.Computational-ReflexiveTransitiveClosureᵢᵇ
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176 ~v0
                                                               ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 ~v8 v9 v10
                                                               v11
  = du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176
      v4 v9 v10 v11
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176 v0
                                                                v1 v2 v3
  = coe
      C_MkComputational_486
      (\ v4 ->
         coe
           d_computeProof_346
           (coe
              du_Computational'45'ReflexiveTransitiveClosure'7522''7495'''_1022
              (coe v0) (coe v1) (coe v2) (coe v3))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
              (coe (0 :: Integer))))
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosure
d_Computational'45'ReflexiveTransitiveClosure_1184 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 -> T_Computational_306
d_Computational'45'ReflexiveTransitiveClosure_1184 ~v0 ~v1 ~v2 ~v3
                                                   ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure_1184 v5
du_Computational'45'ReflexiveTransitiveClosure_1184 ::
  T_Computational_306 -> T_Computational_306
du_Computational'45'ReflexiveTransitiveClosure_1184 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7495'_850
      (coe du_Computational'45'Id_814) (coe v0)
      (coe du_InjectError'45''8869'_802) (coe du_InjectError'45'Id_806)
-- Interface.ComputationalRelation.Computational-ReflexiveTransitiveClosureᵢ
d_Computational'45'ReflexiveTransitiveClosure'7522'_1188 ::
  () ->
  () ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 -> T_Computational_306
d_Computational'45'ReflexiveTransitiveClosure'7522'_1188 ~v0 ~v1
                                                         ~v2 ~v3 ~v4 v5
  = du_Computational'45'ReflexiveTransitiveClosure'7522'_1188 v5
du_Computational'45'ReflexiveTransitiveClosure'7522'_1188 ::
  T_Computational_306 -> T_Computational_306
du_Computational'45'ReflexiveTransitiveClosure'7522'_1188 v0
  = coe
      du_Computational'45'ReflexiveTransitiveClosure'7522''7495'_1176
      (coe du_Computational'45'Id_814) (coe v0)
      (coe du_InjectError'45''8869'_802) (coe du_InjectError'45'Id_806)
-- Interface.ComputationalRelation._._.Computational-RunTraceAndThen
d_Computational'45'RunTraceAndThen_1222 ::
  () ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'RunTraceAndThen_1222 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                        ~v7 ~v8 v9 v10 v11
  = du_Computational'45'RunTraceAndThen_1222 v5 v9 v10 v11
du_Computational'45'RunTraceAndThen_1222 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'RunTraceAndThen_1222 v0 v1 v2 v3
  = coe
      C_MkComputational_486
      (\ v4 v5 v6 ->
         case coe v6 of
           []
             -> let v7
                      = coe
                          d_computeProof_346 v1 v4 v5
                          (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
                coe
                  (case coe v7 of
                     C_success_46 v8
                       -> case coe v8 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                              -> coe
                                   C_success_46
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                      (coe MAlonzo.Code.Interface.STS.C_run'45''91''93'_40 v10))
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_48 v8 -> coe C_failure_48 (coe d_injectError_798 v3 v8)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           (:) v7 v8
             -> let v9 = coe d_computeProof_346 v0 v4 v5 v7 in
                coe
                  (case coe v9 of
                     C_success_46 v10
                       -> case coe v10 of
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                              -> let v13
                                       = coe
                                           d_computeProof_346
                                           (coe
                                              du_Computational'45'RunTraceAndThen_1222 (coe v0)
                                              (coe v1) (coe v2) (coe v3))
                                           v4 v11 v8 in
                                 coe
                                   (case coe v13 of
                                      C_success_46 v14
                                        -> case coe v14 of
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                               -> coe
                                                    C_success_46
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                       (coe v15)
                                                       (coe
                                                          MAlonzo.Code.Interface.STS.C_run'45''8759'_42
                                                          v11 v12 v16))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      C_failure_48 v14
                                        -> coe
                                             C_failure_48
                                             (coe
                                                d_injectError_798
                                                (coe C_constructor_800 (coe (\ v15 -> v15))) v14)
                                      _ -> MAlonzo.RTE.mazUnreachableError)
                            _ -> MAlonzo.RTE.mazUnreachableError
                     C_failure_48 v10 -> coe C_failure_48 (coe d_injectError_798 v2 v10)
                     _ -> MAlonzo.RTE.mazUnreachableError)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Interface.ComputationalRelation._._._.Computational-RunTraceAfterAndThen
d_Computational'45'RunTraceAfterAndThen_1440 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'RunTraceAfterAndThen_1440 ~v0 ~v1 ~v2 ~v3 v4 ~v5
                                             ~v6 ~v7 v8 ~v9 ~v10 v11 v12 v13
  = du_Computational'45'RunTraceAfterAndThen_1440 v4 v8 v11 v12 v13
du_Computational'45'RunTraceAfterAndThen_1440 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'RunTraceAfterAndThen_1440 v0 v1 v2 v3 v4
  = coe
      C_MkComputational_486
      (\ v5 v6 v7 ->
         let v8
               = coe
                   d_computeProof_346 v0 v5 v6
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
         coe
           (case coe v8 of
              C_success_46 v9
                -> case coe v9 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                       -> let v12
                                = coe
                                    d_computeProof_346
                                    (coe
                                       du_Computational'45'RunTraceAndThen_1222 (coe v1) (coe v2)
                                       (coe v3) (coe v4))
                                    v5 v10 v7 in
                          coe
                            (case coe v12 of
                               C_success_46 v13
                                 -> case coe v13 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                        -> coe
                                             C_success_46
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe v14)
                                                (coe
                                                   MAlonzo.Code.Interface.STS.C_run_64 v10
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v11) (coe v15))))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               C_failure_48 v13
                                 -> coe
                                      C_failure_48
                                      (coe
                                         d_injectError_798
                                         (coe C_constructor_800 (coe (\ v14 -> v14))) v13)
                               _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_failure_48 v9 -> coe C_failure_48 (coe d_injectError_798 v4 v9)
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Interface.ComputationalRelation._._.Computational-RunTraceAfter
d_Computational'45'RunTraceAfter_1588 ::
  () ->
  () ->
  () ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Unit.T_'8868'_6 -> AgdaAny -> ()) ->
  T_Computational_306 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
d_Computational'45'RunTraceAfter_1588 ~v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6
                                      ~v7 ~v8 v9 v10 v11
  = du_Computational'45'RunTraceAfter_1588 v4 v9 v10 v11
du_Computational'45'RunTraceAfter_1588 ::
  T_Computational_306 ->
  T_Computational_306 ->
  T_InjectError_790 -> T_InjectError_790 -> T_Computational_306
du_Computational'45'RunTraceAfter_1588 v0 v1 v2 v3
  = coe
      C_MkComputational_486
      (\ v4 v5 v6 ->
         let v7
               = coe
                   d_computeProof_346 v0 v4 v5
                   (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8) in
         coe
           (case coe v7 of
              C_success_46 v8
                -> case coe v8 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                       -> let v11
                                = coe
                                    d_computeProof_346
                                    (coe
                                       du_Computational'45'ReflexiveTransitiveClosure'7495'_850
                                       (coe du_Computational'45'Id_814) (coe v1)
                                       (coe du_InjectError'45''8869'_802) (coe v2))
                                    v4 v9 v6 in
                          coe
                            (case coe v11 of
                               C_success_46 v12
                                 -> case coe v12 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                        -> coe
                                             C_success_46
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                (coe v13)
                                                (coe
                                                   MAlonzo.Code.Interface.STS.C_run_154 v9
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v10) (coe v14))))
                                      _ -> MAlonzo.RTE.mazUnreachableError
                               C_failure_48 v12 -> coe v11
                               _ -> MAlonzo.RTE.mazUnreachableError)
                     _ -> MAlonzo.RTE.mazUnreachableError
              C_failure_48 v8 -> coe C_failure_48 (coe d_injectError_798 v3 v8)
              _ -> MAlonzo.RTE.mazUnreachableError))
