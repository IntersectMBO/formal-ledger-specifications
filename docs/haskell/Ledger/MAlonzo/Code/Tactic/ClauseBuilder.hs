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

module MAlonzo.Code.Tactic.ClauseBuilder where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Nat
import qualified MAlonzo.Code.Agda.Builtin.Reflection
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.String
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Functor.Core
import qualified MAlonzo.Code.Class.Functor.Instances
import qualified MAlonzo.Code.Class.Monad.Core
import qualified MAlonzo.Code.Class.Monad.Instances
import qualified MAlonzo.Code.Class.MonadError
import qualified MAlonzo.Code.Class.MonadReader
import qualified MAlonzo.Code.Class.MonadTC
import qualified MAlonzo.Code.Class.Traversable.Core
import qualified MAlonzo.Code.Class.Traversable.Instances
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.NonEmpty.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Linked
import qualified MAlonzo.Code.Data.List.Sort.MergeSort
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Nat.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.MetaPrelude
import qualified MAlonzo.Code.Reflection.AST.Argument
import qualified MAlonzo.Code.Reflection.Debug
import qualified MAlonzo.Code.Reflection.Utils
import qualified MAlonzo.Code.Reflection.Utils.TCI

-- Tactic.ClauseBuilder._.sort
d_sort_6 :: [Integer] -> [Integer]
d_sort_6
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_sort_186
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2690)
-- Tactic.ClauseBuilder._.sort-↗
d_sort'45''8599'_8 ::
  [Integer] ->
  MAlonzo.Code.Data.List.Relation.Unary.Linked.T_Linked_26
d_sort'45''8599'_8
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_sort'45''8599'_258
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2690)
-- Tactic.ClauseBuilder._.sort-↭
d_sort'45''8621'_10 ::
  [Integer] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16
d_sort'45''8621'_10
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_sort'45''8621'_220
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2690)
-- Tactic.ClauseBuilder.ClauseBuilder
d_ClauseBuilder_24 a0 = ()
data T_ClauseBuilder_24
  = C_ClauseBuilder'46'constructor_377 (() -> AgdaAny -> AgdaAny)
                                       (() ->
                                        [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
                                        MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
                                        AgdaAny -> AgdaAny)
                                       (AgdaAny -> AgdaAny)
-- Tactic.ClauseBuilder.ClauseBuilder.Base
d_Base_36 :: T_ClauseBuilder_24 -> () -> ()
d_Base_36 = erased
-- Tactic.ClauseBuilder.ClauseBuilder.liftBase
d_liftBase_38 :: T_ClauseBuilder_24 -> () -> AgdaAny -> AgdaAny
d_liftBase_38 v0
  = case coe v0 of
      C_ClauseBuilder'46'constructor_377 v2 v3 v4 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseBuilder.addPattern
d_addPattern_40 ::
  T_ClauseBuilder_24 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
d_addPattern_40 v0
  = case coe v0 of
      C_ClauseBuilder'46'constructor_377 v2 v3 v4 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseBuilder.toClause
d_toClause_42 :: T_ClauseBuilder_24 -> AgdaAny -> AgdaAny
d_toClause_42 v0
  = case coe v0 of
      C_ClauseBuilder'46'constructor_377 v2 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.Base
d_Base_46 :: T_ClauseBuilder_24 -> () -> ()
d_Base_46 = erased
-- Tactic.ClauseBuilder._.addPattern
d_addPattern_48 ::
  T_ClauseBuilder_24 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
d_addPattern_48 v0 = coe d_addPattern_40 (coe v0)
-- Tactic.ClauseBuilder._.liftBase
d_liftBase_50 :: T_ClauseBuilder_24 -> () -> AgdaAny -> AgdaAny
d_liftBase_50 v0 = coe d_liftBase_38 (coe v0)
-- Tactic.ClauseBuilder._.toClause
d_toClause_52 :: T_ClauseBuilder_24 -> AgdaAny -> AgdaAny
d_toClause_52 v0 = coe d_toClause_42 (coe v0)
-- Tactic.ClauseBuilder.SinglePattern
d_SinglePattern_54 :: ()
d_SinglePattern_54 = erased
-- Tactic.ClauseBuilder.typedVarSinglePattern
d_typedVarSinglePattern_56 ::
  MAlonzo.Code.Agda.Builtin.String.T_String_6 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_typedVarSinglePattern_56 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v1)))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v2)
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                   (coe (0 :: Integer))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.varSinglePattern
d_varSinglePattern_64 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_varSinglePattern_64 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v1)
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v1)
                (coe
                   MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                   (coe (0 :: Integer))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.multiSinglePattern
d_multiSinglePattern_70 ::
  [MAlonzo.Code.Agda.Builtin.String.T_String_6] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_multiSinglePattern_70 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                    (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
         (coe v0))
      (coe v1)
-- Tactic.ClauseBuilder.findIndexDefault
d_findIndexDefault_78 :: [Integer] -> Integer -> Integer -> Integer
d_findIndexDefault_78 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.List.Base.du_filter_892
              (\ v3 ->
                 case coe v3 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                     -> coe
                          MAlonzo.Code.Class.DecEq.Core.d__'8799'__16
                          MAlonzo.Code.Class.DecEq.Instances.d_DecEq'45'ℕ_22 v5 v2
                   _ -> MAlonzo.RTE.mazUnreachableError)
              (coe
                 MAlonzo.Code.MetaPrelude.du_zipWithIndex_26
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32) (coe v0)) in
    coe
      (case coe v3 of
         [] -> coe v1
         (:) v4 v5
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7 -> coe v6
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ClauseBuilder.singlePatternFromPattern
d_singlePatternFromPattern_110 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singlePatternFromPattern_110 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_replicate_314
                (coe
                   MAlonzo.Code.Data.List.Base.du_length_304
                   (d_appearingIndices_120 (coe v1) (coe v2) (coe v2)))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe ("" :: Data.Text.Text))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                      (coe
                         MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                         (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                            (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v1)
                (coe d_replacePatternIndex_144 (coe v1) (coe v2) (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.appearingIndices
d_appearingIndices_120 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> [Integer]
d_appearingIndices_120 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v3 v4
        -> coe d_appearingIndicesHelper_122 (coe v0) (coe v1) (coe v4)
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v3
        -> coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v3)
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_256 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264 v3
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.appearingIndicesHelper
d_appearingIndicesHelper_122 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] -> [Integer]
d_appearingIndicesHelper_122 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Data.List.Base.du__'43''43'__62
                    (coe d_appearingIndices_120 (coe v0) (coe v1) (coe v6))
                    (coe d_appearingIndicesHelper_122 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.normalisedIndexList
d_normalisedIndexList_142 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> [Integer]
d_normalisedIndexList_142 v0 v1
  = coe
      MAlonzo.Code.Data.List.Sort.MergeSort.du_sort_186
      (coe
         MAlonzo.Code.Data.Nat.Properties.d_'8804''45'decTotalOrder_2690)
      (coe
         MAlonzo.Code.Data.List.Base.du_deduplicate_934
         MAlonzo.Code.Data.Nat.Properties.d__'8799'__2550
         (d_appearingIndices_120 (coe v0) (coe v1) (coe v1)))
-- Tactic.ClauseBuilder._.replacePatternIndex
d_replacePatternIndex_144 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158
d_replacePatternIndex_144 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v3)
             (coe d_replacePatternIndexHelper_146 (coe v0) (coe v1) (coe v4))
      MAlonzo.Code.Agda.Builtin.Reflection.C_dot_248 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
             (coe
                d_findIndexDefault_78
                (coe d_normalisedIndexList_142 (coe v0) (coe v1))
                (coe (0 :: Integer)) (coe v3))
      MAlonzo.Code.Agda.Builtin.Reflection.C_lit_256 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 v3 -> coe v2
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd_264 v3 -> coe v2
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.replacePatternIndexHelper
d_replacePatternIndexHelper_146 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_ArgInfo_76 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_replacePatternIndexHelper_146 v0 v1 v2
  = case coe v2 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v3 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v5)
                       (coe d_replacePatternIndex_144 (coe v0) (coe v1) (coe v6)))
                    (coe d_replacePatternIndexHelper_146 (coe v0) (coe v1) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.ctxSinglePatterns
d_ctxSinglePatterns_186 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> AgdaAny
d_ctxSinglePatterns_186 ~v0 v1 ~v2 v3 ~v4
  = du_ctxSinglePatterns_186 v1 v3
du_ctxSinglePatterns_186 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 -> AgdaAny
du_ctxSinglePatterns_186 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_getContext_546 (coe v0) (coe v1))
      (\ v2 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
           (coe
              MAlonzo.Code.Data.List.Base.du_map_22
              (coe d_singlePatternFromPattern_110)
              (coe
                 MAlonzo.Code.MetaPrelude.du_zipWithIndex_26
                 (coe
                    (\ v3 v4 ->
                       case coe v4 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                           -> case coe v6 of
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v7 v8
                                  -> coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v7)
                                       (coe MAlonzo.Code.Agda.Builtin.Reflection.C_var_252 (coe v3))
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError))
                 (coe v2))))
-- Tactic.ClauseBuilder._.constrToPattern
d_constrToPattern_196 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_constrToPattern_196 ~v0 v1 ~v2 v3 v4 v5 ~v6
  = du_constrToPattern_196 v1 v3 v4 v5
du_constrToPattern_196 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> AgdaAny -> AgdaAny
du_constrToPattern_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
         erased () erased MAlonzo.Code.Reflection.Utils.d_viewTy_146
         (coe
            MAlonzo.Code.Class.MonadTC.du_runAndReset_196 (coe v0) (coe v2)
            (coe ())
            (coe
               MAlonzo.Code.Class.MonadReader.d_local_44 v1 () erased
               (\ v4 ->
                  coe
                    MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_309
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_reduction_56 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v4))
                    (coe MAlonzo.Code.Class.MonadTC.d_options_64 (coe v4)))
               (coe
                  MAlonzo.Code.Class.MonadTC.d_inferType_148 v2
                  (coe
                     MAlonzo.Code.Agda.Builtin.Reflection.C_con_178 (coe v3)
                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))))
      (\ v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
             -> coe
                  MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                     (coe
                        MAlonzo.Code.Data.List.Base.du_map_22
                        (coe
                           (\ v7 ->
                              case coe v7 of
                                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v8 v9
                                  -> case coe v9 of
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v10 v11
                                         -> coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                 (coe v10)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
                                       _ -> MAlonzo.RTE.mazUnreachableError
                                _ -> MAlonzo.RTE.mazUnreachableError))
                        (coe v5))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                           (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                           (coe
                              MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                        (coe
                           MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v3)
                           (coe
                              MAlonzo.Code.Data.List.Base.du_zipWith_134
                              (coe
                                 (\ v7 v8 ->
                                    case coe v7 of
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v9 v10
                                        -> case coe v10 of
                                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v11 v12
                                               -> coe
                                                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                    (coe v11)
                                                    (coe
                                                       MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                       (coe v8))
                                             _ -> MAlonzo.RTE.mazUnreachableError
                                      _ -> MAlonzo.RTE.mazUnreachableError))
                              (coe v5)
                              (coe
                                 MAlonzo.Code.Data.List.Base.d_downFrom_478
                                 (coe MAlonzo.Code.Data.List.Base.du_length_304 v5))))))
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ClauseBuilder._.constrToPatternTyped
d_constrToPatternTyped_224 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] -> AgdaAny
d_constrToPatternTyped_224 ~v0 v1 v2 v3 v4 v5 v6
  = du_constrToPatternTyped_224 v1 v2 v3 v4 v5 v6
du_constrToPatternTyped_224 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  AgdaAny ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] -> AgdaAny
du_constrToPatternTyped_224 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Reflection.Utils.TCI.du_applyWithVisibility_484
         (coe v0) (coe v1) (coe v2) (coe v3) (coe v4) (coe v5))
      (\ v6 ->
         coe
           MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
           (coe ())
           (coe
              MAlonzo.Code.Class.MonadTC.du_debugLog'7504'_446 (coe v0) (coe v3)
              (coe v2)
              (coe
                 MAlonzo.Code.Class.MonadTC.du__'8759''7496''7504'__408 (coe v0)
                 (coe
                    MAlonzo.Code.Class.MonadTC.du__'7515''8319'_424 (coe v0) (coe v3)
                    (coe v2) (coe ()) (coe v6))
                 (coe
                    MAlonzo.Code.Class.MonadTC.du_IsMErrorPart'45'MErrorPartWrap_400)
                 (coe
                    MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
           (coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
              erased
              (coe
                 MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                 (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
                 erased () erased MAlonzo.Code.Reflection.Utils.d_viewTy_146
                 (coe
                    MAlonzo.Code.Class.MonadReader.d_local_44 v2 () erased
                    (\ v7 ->
                       coe
                         MAlonzo.Code.Class.MonadTC.C_TCEnv'46'constructor_309
                         (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                         (coe MAlonzo.Code.Class.MonadTC.d_reconstruction_52 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_noConstraints_54 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_reduction_56 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_globalContext_58 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_localContext_60 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_goal_62 (coe v7))
                         (coe MAlonzo.Code.Class.MonadTC.d_options_64 (coe v7)))
                    (coe MAlonzo.Code.Class.MonadTC.d_inferType_148 v3 v6)))
              (\ v7 ->
                 case coe v7 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                     -> coe
                          MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                             (coe
                                MAlonzo.Code.Data.List.Base.du_map_22
                                (coe
                                   (\ v10 ->
                                      case coe v10 of
                                        MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                          -> coe
                                               seq (coe v12)
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v11) (coe v12))
                                        _ -> MAlonzo.RTE.mazUnreachableError))
                                (coe v8))
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                                   (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                      (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v4)
                                   (coe
                                      MAlonzo.Code.Data.List.Base.du_zipWith_134
                                      (coe
                                         (\ v10 v11 ->
                                            case coe v10 of
                                              MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                -> case coe v13 of
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                       -> coe
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                            (coe v14)
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                               (coe v11))
                                                     _ -> MAlonzo.RTE.mazUnreachableError
                                              _ -> MAlonzo.RTE.mazUnreachableError))
                                      (coe v8)
                                      (coe
                                         MAlonzo.Code.Data.List.Base.d_downFrom_478
                                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v8))))))
                   _ -> MAlonzo.RTE.mazUnreachableError)))
-- Tactic.ClauseBuilder._.constructorPatterns
d_constructorPatterns_254 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
d_constructorPatterns_254 ~v0 v1 v2 ~v3 v4 v5
  = du_constructorPatterns_254 v1 v2 v4 v5
du_constructorPatterns_254 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny
du_constructorPatterns_254 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v4 v5
        -> coe
             MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
             erased
             (coe
                MAlonzo.Code.Class.MonadTC.du_getConstrsForType_664 (coe v0)
                (coe v1) (coe v2) (coe v5))
             (\ v6 ->
                coe
                  MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                  (coe
                     MAlonzo.Code.Class.Functor.Core.du__'60''38''62'__30
                     (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
                     (coe ()) (coe ()) (coe v6)
                     (coe
                        (\ v7 ->
                           case coe v7 of
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                               -> coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       MAlonzo.Code.Data.List.Base.du_map_22
                                       (coe
                                          (\ v10 ->
                                             case coe v10 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v11 v12
                                                 -> coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v11) (coe v12)
                                               _ -> MAlonzo.RTE.mazUnreachableError))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                          (coe
                                             MAlonzo.Code.Reflection.Utils.d_viewTy_146 (coe v9))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 (coe v4)
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Reflection.C_con_244 (coe v8)
                                          (coe
                                             MAlonzo.Code.MetaPrelude.du_zipWithIndex_26
                                             (coe
                                                (\ v10 v11 ->
                                                   case coe v11 of
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v12 v13
                                                       -> case coe v13 of
                                                            MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v14 v15
                                                              -> coe
                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                                   (coe v14)
                                                                   (coe
                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_var_252
                                                                      (coe
                                                                         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                         (coe
                                                                            MAlonzo.Code.Data.List.Base.du_length_304
                                                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                                                  (coe v9))))
                                                                         (addInt
                                                                            (coe (1 :: Integer))
                                                                            (coe v10))))
                                                            _ -> MAlonzo.RTE.mazUnreachableError
                                                     _ -> MAlonzo.RTE.mazUnreachableError))
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                (coe
                                                   MAlonzo.Code.Reflection.Utils.d_viewTy_146
                                                   (coe v9))))))
                             _ -> MAlonzo.RTE.mazUnreachableError))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.constructorPatterns'
d_constructorPatterns''_282 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_constructorPatterns''_282 ~v0 v1 v2 v3 v4 v5
  = du_constructorPatterns''_282 v1 v2 v3 v4 v5
du_constructorPatterns''_282 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_constructorPatterns''_282 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_getConstrsForType_664 (coe v0)
         (coe v1) (coe v3) (coe v4))
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_20
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
         (coe ()) (coe ()) (coe v0)
         (coe
            (\ v5 ->
               coe
                 du_constrToPattern_196 (coe v0) (coe v2) (coe v3)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
-- Tactic.ClauseBuilder._.constructorPatternsTyped
d_constructorPatternsTyped_292 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] -> AgdaAny
d_constructorPatternsTyped_292 ~v0 v1 v2 v3 v4 v5 v6
  = du_constructorPatternsTyped_292 v1 v2 v3 v4 v5 v6
du_constructorPatternsTyped_292 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154] -> AgdaAny
du_constructorPatternsTyped_292 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_getConstrsForType_664 (coe v0)
         (coe v1) (coe v3) (coe v4))
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_20
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
         (coe ()) (coe ()) (coe v0)
         (coe
            (\ v6 ->
               coe
                 du_constrToPatternTyped_224 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)) (coe v5))))
-- Tactic.ClauseBuilder.ClauseInfo
d_ClauseInfo_304 :: ()
d_ClauseInfo_304 = erased
-- Tactic.ClauseBuilder.ClauseExpr
d_ClauseExpr_306 = ()
newtype T_ClauseExpr_306
  = C_MatchExpr_308 [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
-- Tactic.ClauseBuilder.multiClauseExpr
d_multiClauseExpr_310 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_ClauseExpr_306
d_multiClauseExpr_310 v0
  = coe
      C_MatchExpr_308
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22 (coe d_helper_326) (coe v0))
-- Tactic.ClauseBuilder._.helper'
d_helper''_316 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_helper''_316 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             [] -> coe v2
             (:) v3 v4
               -> coe
                    MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                    (coe
                       C_MatchExpr_308
                       (coe
                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                             (coe
                                d_helper''_316
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                   (coe v2))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.helper
d_helper_326 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_326 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v1 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                    (coe
                       d_helper''_316
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v2)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.clauseExprToClauseInfo
d_clauseExprToClauseInfo_334 ::
  T_ClauseExpr_306 -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_clauseExprToClauseInfo_334 v0
  = case coe v0 of
      C_MatchExpr_308 v1
        -> case coe v1 of
             [] -> coe v1
             (:) v2 v3
               -> case coe v2 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> case coe v5 of
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                             -> coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__62
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_map_22
                                     (coe
                                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                                        (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v4)))
                                     (coe d_clauseExprToClauseInfo_334 (coe v6)))
                                  (coe d_clauseExprToClauseInfo_334 (coe C_MatchExpr_308 (coe v3)))
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                     (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v4))
                                     (coe v6))
                                  (coe d_clauseExprToClauseInfo_334 (coe C_MatchExpr_308 (coe v3)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.clauseInfoToClauseArgs
d_clauseInfoToClauseArgs_350 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_clauseInfoToClauseArgs_350 v0
  = let v1 = coe du_helper_358 (coe (0 :: Integer)) (coe v0) in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
           -> case coe v3 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ClauseBuilder._.helper
d_helper_358 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_358 ~v0 v1 v2 = du_helper_358 v1 v2
du_helper_358 ::
  Integer ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_358 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v0))
      (:) v2 v3
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
               -> case coe v5 of
                    MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v6 v7
                      -> let v8 = coe du_helper_358 (coe v0) (coe v3) in
                         coe
                           (case coe v8 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4)
                                               (coe v9))
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                     (coe v6)
                                                     (coe
                                                        MAlonzo.Code.Reflection.Utils.d_mapVariables_120
                                                        (coe (\ v13 -> addInt (coe v12) (coe v13)))
                                                        (coe v7)))
                                                  (coe v11))
                                               (coe
                                                  addInt
                                                  (coe MAlonzo.Code.Data.List.Base.du_length_304 v4)
                                                  (coe v12)))
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.clauseInfoToClause
d_clauseInfoToClause_400 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  Maybe MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_clauseInfoToClause_400 v0 v1
  = let v2 = d_clauseInfoToClauseArgs_350 (coe v0) in
    coe
      (case coe v2 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
           -> case coe v1 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 (coe v3) (coe v4)
                       (coe v5)
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278
                       (coe v3) (coe v4)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ClauseBuilder.clauseExprToClauses
d_clauseExprToClauses_428 ::
  T_ClauseExpr_306 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_clauseExprToClauses_428 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe
         (\ v1 ->
            case coe v1 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> coe d_clauseInfoToClause_400 (coe v2) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe d_clauseExprToClauseInfo_334 (coe v0))
-- Tactic.ClauseBuilder.nonBindingClause
d_nonBindingClause_438 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160
d_nonBindingClause_438
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Tactic.ClauseBuilder.clauseExprToPatLam
d_clauseExprToPatLam_440 ::
  T_ClauseExpr_306 -> MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_clauseExprToPatLam_440 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
      (coe d_clauseExprToClauses_428 (coe v0))
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Tactic.ClauseBuilder.ContextMonad
d_ContextMonad_450 a0 a1 = ()
newtype T_ContextMonad_450
  = C_ContextMonad'46'constructor_50907 (MAlonzo.Code.Agda.Primitive.T_Level_18 ->
                                         () ->
                                         MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
                                         AgdaAny -> AgdaAny)
-- Tactic.ClauseBuilder.ContextMonad.introPatternM
d_introPatternM_458 ::
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_introPatternM_458 v0
  = case coe v0 of
      C_ContextMonad'46'constructor_50907 v1 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ContextMonad.extendContextM
d_extendContextM_460 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
d_extendContextM_460 ~v0 ~v1 v2 v3 ~v4 v5 v6
  = du_extendContextM_460 v2 v3 v5 v6
du_extendContextM_460 ::
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
du_extendContextM_460 v0 v1 v2 v3
  = coe
      d_introPatternM_458 v0 v1 erased
      (d_typedVarSinglePattern_56 (coe ("" :: Data.Text.Text)) (coe v2))
      v3
-- Tactic.ClauseBuilder._.introPatternM
d_introPatternM_470 ::
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_introPatternM_470 v0 = coe d_introPatternM_458 (coe v0)
-- Tactic.ClauseBuilder.Monad-Id
d_Monad'45'Id_472 :: MAlonzo.Code.Class.Monad.Core.T_Monad_8
d_Monad'45'Id_472
  = coe
      MAlonzo.Code.Class.Monad.Core.C_Monad'46'constructor_213
      (coe (\ v0 v1 v2 -> v2)) (coe (\ v0 v1 v2 v3 v4 v5 -> coe v5 v4))
-- Tactic.ClauseBuilder.ContextMonad-Id
d_ContextMonad'45'Id_474 :: T_ContextMonad_450
d_ContextMonad'45'Id_474
  = coe
      C_ContextMonad'46'constructor_50907 (coe (\ v0 v1 v2 v3 -> v3))
-- Tactic.ClauseBuilder._.refineWithSingle
d_refineWithSingle_496 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  AgdaAny -> AgdaAny
d_refineWithSingle_496 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_refineWithSingle_496 v1 v3 v4 v5 v6
du_refineWithSingle_496 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  (MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
   MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154) ->
  AgdaAny -> AgdaAny
du_refineWithSingle_496 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.MonadTC.du_goalTy_612 (coe v0) (coe v2)
         (coe v1))
      (\ v5 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
           erased
           (coe
              MAlonzo.Code.Class.MonadTC.du_newMeta_270 v2
              (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))
           (\ v6 ->
              coe
                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
                erased
                (coe MAlonzo.Code.Class.MonadTC.d_checkType_150 v2 (coe v3 v6) v5)
                (\ v7 ->
                   coe
                     MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
                     erased
                     (coe MAlonzo.Code.Class.MonadTC.du_runWithHole_692 v1 () v6 v4)
                     (\ v8 ->
                        coe
                          MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
                          (coe ()) (coe MAlonzo.Code.Class.MonadTC.d_unify_142 v2 v6 v8)
                          (coe
                             MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                             (coe v3 v8))))))
-- Tactic.ClauseBuilder._.caseMatch
d_caseMatch_510 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
d_caseMatch_510 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_caseMatch_510 v1 v3 v4 v5 v6
du_caseMatch_510 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  AgdaAny -> AgdaAny
du_caseMatch_510 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
      (coe ())
      (coe
         MAlonzo.Code.Class.MonadTC.du_debugLog_438 (coe v0) (coe v2)
         (coe v1)
         (coe
            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
            (coe ("Match" :: Data.Text.Text))
            (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
            (coe
               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v3)
               (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
      (coe
         du_refineWithSingle_496 (coe v0) (coe v1) (coe v2)
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_def_184
                 (coe
                    (MAlonzo.RTE.QName
                       (234 :: Integer) (10779521135412943468 :: Integer)
                       "Function.Base.case_of_"
                       (MAlonzo.RTE.Fixity
                          MAlonzo.RTE.NonAssoc (MAlonzo.RTE.Related (0.0 :: Double)))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                          (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                       (coe v3))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                          (coe
                             MAlonzo.Code.Agda.Builtin.Reflection.C_arg'45'info_82
                             (coe MAlonzo.Code.Agda.Builtin.Reflection.C_visible_50)
                             (coe
                                MAlonzo.Code.Agda.Builtin.Reflection.C_modality_74
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_relevant_58)
                                (coe MAlonzo.Code.Agda.Builtin.Reflection.C_quantity'45'ω_66)))
                          (coe v5))
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))
         (coe
            MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
            (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
            erased () erased
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                 (coe d_clauseExprToClauses_428 (coe v5))
                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
            v4))
-- Tactic.ClauseBuilder._.currentTyConstrPatterns
d_currentTyConstrPatterns_520 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> AgdaAny
d_currentTyConstrPatterns_520 ~v0 v1 v2 v3 v4
  = du_currentTyConstrPatterns_520 v1 v2 v3 v4
du_currentTyConstrPatterns_520 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> AgdaAny
du_currentTyConstrPatterns_520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased
      (coe
         MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
         (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
         erased () erased MAlonzo.Code.Reflection.Utils.d_viewTy'8242'_182
         (coe
            MAlonzo.Code.Class.MonadTC.du_goalTy_612 (coe v0) (coe v3)
            (coe v2)))
      (\ v4 ->
         case coe v4 of
           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
             -> let v7
                      = coe
                          MAlonzo.Code.Class.MonadTC.du_error1_592 (coe v1) (coe ())
                          (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                          (coe
                             ("currentTyConstrPatterns: Goal type is not a forall!"
                              ::
                              Data.Text.Text)) in
                coe
                  (case coe v5 of
                     (:) v8 v9
                       -> coe
                            du_constructorPatterns''_282 (coe v0) (coe v1) (coe v2) (coe v3)
                            (coe MAlonzo.Code.Reflection.AST.Argument.du_unArg_74 (coe v8))
                     _ -> coe v7)
           _ -> MAlonzo.RTE.mazUnreachableError)
-- Tactic.ClauseBuilder.stripMetaLambdas
d_stripMetaLambdas_526 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_stripMetaLambdas_526 = coe d_helper_532 (coe (0 :: Integer))
-- Tactic.ClauseBuilder._.helper
d_helper_532 ::
  Integer ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154
d_helper_532 v0 v1
  = let v2
          = coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216 in
    coe
      (case coe v1 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_lam_190 v3 v4
           -> case coe v4 of
                MAlonzo.Code.Agda.Builtin.Reflection.C_abs_122 v5 v6
                  -> coe
                       d_helper_532 (coe addInt (coe (1 :: Integer)) (coe v0)) (coe v6)
                _ -> MAlonzo.RTE.mazUnreachableError
         MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v3 v4
           -> coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 (coe v3)
                (coe
                   MAlonzo.Code.Reflection.AST.Argument.du_map'45'Args_62
                   (coe
                      MAlonzo.Code.Reflection.Utils.d_mapVars_360
                      (coe
                         (\ v5 -> coe MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22 v5 v0)))
                   (coe
                      MAlonzo.Code.Data.List.Base.du_take_622
                      (coe
                         MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                         (coe MAlonzo.Code.Data.List.Base.du_length_304 v4) v0)
                      (coe v4)))
         _ -> coe v2)
-- Tactic.ClauseBuilder._.isProj
d_isProj_562 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> Bool
d_isProj_562 ~v0 ~v1 ~v2 ~v3 ~v4 v5 = du_isProj_562 v5
du_isProj_562 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Pattern_158 -> Bool
du_isProj_562 v0
  = let v1 = coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8 in
    coe
      (case coe v0 of
         MAlonzo.Code.Agda.Builtin.Reflection.C_proj_260 v2
           -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
         _ -> coe v1)
-- Tactic.ClauseBuilder._.specializeType
d_specializeType_564 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
d_specializeType_564 ~v0 v1 v2 v3 v4 v5 v6
  = du_specializeType_564 v1 v2 v3 v4 v5 v6
du_specializeType_564 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 -> AgdaAny
du_specializeType_564 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98 v8 v9
               -> coe
                    MAlonzo.Code.Class.MonadTC.du_markDontFail_604 (coe v0) (coe v1)
                    (coe v3) (coe v2) (coe ())
                    (coe ("specializeType" :: Data.Text.Text))
                    (coe
                       MAlonzo.Code.Reflection.Utils.TCI.du_inDebugPath_328 (coe v0)
                       (coe v2) (coe v3) (coe ())
                       (coe ("specializeType" :: Data.Text.Text))
                       (coe
                          MAlonzo.Code.Class.MonadTC.du_runAndReset_196 (coe v0) (coe v3)
                          (coe ())
                          (coe
                             MAlonzo.Code.Class.Monad.Core.du__'62''62'__20 (coe v0) (coe ())
                             (coe ())
                             (coe
                                MAlonzo.Code.Class.MonadTC.du_debugLog_438 (coe v0) (coe v3)
                                (coe v2)
                                (coe
                                   MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                   (coe ("Goal type to specialize: " :: Data.Text.Text))
                                   (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                   (coe
                                      MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38 (coe v5)
                                      (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                             (coe
                                MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
                                erased
                                (coe
                                   MAlonzo.Code.Class.Monad.Core.d_return_16 v0 () erased
                                   (d_clauseExprToClauses_428
                                      (coe
                                         C_MatchExpr_308
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                               (coe
                                                  MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))
                                            (coe
                                               MAlonzo.Code.Data.Bool.Base.du_if_then_else__42
                                               (coe du_isProj_562 (coe v9))
                                               (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
                                               (coe
                                                  MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe
                                                        d_varSinglePattern_64
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Reflection.C_arg_98
                                                           (coe v8) (coe ("_" :: Data.Text.Text))))
                                                     (coe
                                                        MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216))))))))))
                                (\ v10 ->
                                   let v11
                                         = coe
                                             MAlonzo.Code.Class.MonadTC.du_error1_592 (coe v1)
                                             (coe ())
                                             (coe
                                                MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                             (coe ("BUG" :: Data.Text.Text)) in
                                   coe
                                     (case coe v10 of
                                        (:) v12 v13
                                          -> case coe v12 of
                                               MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v14 v15 v16
                                                 -> coe
                                                      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                      (coe v0) (coe ()) (coe ())
                                                      (coe
                                                         MAlonzo.Code.Class.MonadTC.du_debugLog_438
                                                         (coe v0) (coe v3) (coe v2)
                                                         (coe
                                                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                            (coe
                                                               ("With pattern: " :: Data.Text.Text))
                                                            (coe
                                                               MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                            (coe
                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                               (coe v10)
                                                               (coe
                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'ListClause_32)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                      (coe
                                                         MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                         v0 () erased () erased
                                                         (coe
                                                            MAlonzo.Code.Class.MonadTC.d_checkType_150
                                                            v3
                                                            (coe
                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196
                                                               (coe v10)
                                                               (coe
                                                                  MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                                            v5)
                                                         (\ v17 ->
                                                            let v18
                                                                  = coe
                                                                      MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                                      (coe v0) (coe ()) (coe ())
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.du_debugLog_438
                                                                         (coe v0) (coe v3) (coe v2)
                                                                         (coe
                                                                            MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                            (coe
                                                                               ("BUG in specializeType:"
                                                                                ::
                                                                                Data.Text.Text))
                                                                            (coe
                                                                               MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                            (coe
                                                                               MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                               (coe v17)
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                               (coe
                                                                                  MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                  (coe
                                                                                     ("\nWith pattern:"
                                                                                      ::
                                                                                      Data.Text.Text))
                                                                                  (coe
                                                                                     MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                  (coe
                                                                                     MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                     (coe v10)
                                                                                     (coe
                                                                                        MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'ListClause_32)
                                                                                     (coe
                                                                                        MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                        (coe
                                                                                           ("\nWith type:"
                                                                                            ::
                                                                                            Data.Text.Text))
                                                                                        (coe
                                                                                           MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                        (coe
                                                                                           MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                           (coe v5)
                                                                                           (coe
                                                                                              MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'Term_24)
                                                                                           (coe
                                                                                              MAlonzo.Code.Reflection.Debug.du__'8759''7496'__38
                                                                                              (coe
                                                                                                 ("\nSinglePattern:"
                                                                                                  ::
                                                                                                  Data.Text.Text))
                                                                                              (coe
                                                                                                 MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                              (coe
                                                                                                 MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))))
                                                                      (coe
                                                                         MAlonzo.Code.Class.MonadTC.du_error1_592
                                                                         (coe v1) (coe ())
                                                                         (coe
                                                                            MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                         (coe
                                                                            ("BUG"
                                                                             ::
                                                                             Data.Text.Text))) in
                                                            coe
                                                              (case coe v17 of
                                                                 MAlonzo.Code.Agda.Builtin.Reflection.C_pat'45'lam_196 v19 v20
                                                                   -> case coe v19 of
                                                                        (:) v21 v22
                                                                          -> case coe v21 of
                                                                               MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v23 v24 v25
                                                                                 -> case coe v25 of
                                                                                      MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214 v26 v27
                                                                                        -> case coe
                                                                                                  v20 of
                                                                                             []
                                                                                               -> coe
                                                                                                    MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                                                                    (coe
                                                                                                       v0)
                                                                                                    (coe
                                                                                                       ())
                                                                                                    (coe
                                                                                                       ())
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.MonadTC.du_debugLog1_596
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          v3)
                                                                                                       (coe
                                                                                                          v2)
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                                                                                                       (coe
                                                                                                          ("New context:"
                                                                                                           ::
                                                                                                           Data.Text.Text)))
                                                                                                    (coe
                                                                                                       MAlonzo.Code.Class.Monad.Core.du__'62''62'__20
                                                                                                       (coe
                                                                                                          v0)
                                                                                                       (coe
                                                                                                          ())
                                                                                                       (coe
                                                                                                          ())
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Reflection.Utils.TCI.du_logContext_296
                                                                                                          (coe
                                                                                                             v0)
                                                                                                          (coe
                                                                                                             v1)
                                                                                                          (coe
                                                                                                             v2)
                                                                                                          (coe
                                                                                                             v3)
                                                                                                          (coe
                                                                                                             v23))
                                                                                                       (coe
                                                                                                          MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
                                                                                                          v0
                                                                                                          ()
                                                                                                          erased
                                                                                                          ()
                                                                                                          erased
                                                                                                          (coe
                                                                                                             MAlonzo.Code.Class.MonadTC.du_extendContext''_570
                                                                                                             (coe
                                                                                                                v2)
                                                                                                             (coe
                                                                                                                ())
                                                                                                             (coe
                                                                                                                v23)
                                                                                                             (coe
                                                                                                                MAlonzo.Code.Class.MonadTC.d_inferType_148
                                                                                                                v3
                                                                                                                (coe
                                                                                                                   MAlonzo.Code.Agda.Builtin.Reflection.C_meta_214
                                                                                                                   (coe
                                                                                                                      v26)
                                                                                                                   (coe
                                                                                                                      MAlonzo.Code.Reflection.AST.Argument.du_map'45'Args_62
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Reflection.Utils.d_mapVars_360
                                                                                                                         (coe
                                                                                                                            (\ v28 ->
                                                                                                                               coe
                                                                                                                                 MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                                 v28
                                                                                                                                 (0 ::
                                                                                                                                    Integer))))
                                                                                                                      (coe
                                                                                                                         MAlonzo.Code.Data.List.Base.du_take_622
                                                                                                                         (coe
                                                                                                                            MAlonzo.Code.Agda.Builtin.Nat.d__'45'__22
                                                                                                                            (coe
                                                                                                                               MAlonzo.Code.Data.List.Base.du_length_304
                                                                                                                               v27)
                                                                                                                            (0 ::
                                                                                                                               Integer))
                                                                                                                         (coe
                                                                                                                            v27))))))
                                                                                                          (\ v28 ->
                                                                                                             coe
                                                                                                               MAlonzo.Code.Class.Monad.Core.d_return_16
                                                                                                               v0
                                                                                                               ()
                                                                                                               erased
                                                                                                               (coe
                                                                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                                                                  (coe
                                                                                                                     v28)
                                                                                                                  (coe
                                                                                                                     v23)))))
                                                                                             _ -> coe
                                                                                                    v18
                                                                                      _ -> coe v18
                                                                               _ -> coe v18
                                                                        _ -> coe v18
                                                                 _ -> coe v18)))
                                               _ -> coe v11
                                        _ -> coe v11))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._.ContextMonad-MonadTC
d_ContextMonad'45'MonadTC_604 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> T_ContextMonad_450
d_ContextMonad'45'MonadTC_604 ~v0 v1 v2 v3 v4
  = du_ContextMonad'45'MonadTC_604 v1 v2 v3 v4
du_ContextMonad'45'MonadTC_604 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> T_ContextMonad_450
du_ContextMonad'45'MonadTC_604 v0 v1 v2 v3
  = coe
      C_ContextMonad'46'constructor_50907
      (coe
         (\ v4 v5 v6 v7 ->
            coe
              MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased v4
              erased
              (coe
                 MAlonzo.Code.Class.MonadTC.du_goalTy_612 (coe v0) (coe v3)
                 (coe v2))
              (\ v8 ->
                 coe
                   MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased v4
                   erased
                   (coe
                      du_specializeType_564 (coe v0) (coe v1) (coe v2) (coe v3) (coe v6)
                      (coe v8))
                   (\ v9 ->
                      case coe v9 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                          -> coe
                               MAlonzo.Code.Class.MonadTC.du_extendContext''_570 (coe v2) (coe v4)
                               (coe v11)
                               (coe MAlonzo.Code.Class.MonadTC.du_runWithGoalTy_698 v2 v4 v10 v7)
                        _ -> MAlonzo.RTE.mazUnreachableError))))
-- Tactic.ClauseBuilder.ClauseExprM._
d___628 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
d___628 ~v0 ~v1 ~v2 v3 = du___628 v3
du___628 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  MAlonzo.Code.Class.Functor.Core.T_Functor_14
du___628 v0
  = coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)
-- Tactic.ClauseBuilder.ClauseExprM.matchExprM
d_matchExprM_630 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_matchExprM_630 ~v0 v1 v2 v3 = du_matchExprM_630 v1 v2 v3
du_matchExprM_630 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_matchExprM_630 v0 v1 v2
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe du___628 (coe v0)) () erased () erased (coe C_MatchExpr_308)
      (coe
         MAlonzo.Code.Class.Traversable.Core.du_traverse_20
         (coe MAlonzo.Code.Class.Functor.Instances.d_Functor'45'List_20)
         (coe
            MAlonzo.Code.Class.Traversable.Instances.d_Traversable'45'List_12)
         (coe ()) (coe ()) (coe v0)
         (coe
            (\ v3 ->
               coe
                 MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                 (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
                 erased () erased
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)) (coe v4))
                 (coe
                    d_introPatternM_458 v1 () erased
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
         (coe v2))
-- Tactic.ClauseBuilder.ClauseExprM.multiMatchExprM
d_multiMatchExprM_640 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
d_multiMatchExprM_640 ~v0 v1 v2 v3
  = du_multiMatchExprM_640 v1 v2 v3
du_multiMatchExprM_640 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny
du_multiMatchExprM_640 v0 v1 v2
  = coe
      du_matchExprM_630 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du_map_22
         (coe du_helper_656 (coe v0) (coe v1)) (coe v2))
-- Tactic.ClauseBuilder.ClauseExprM._.helper'
d_helper''_646 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_helper''_646 ~v0 v1 v2 v3 = du_helper''_646 v1 v2 v3
du_helper''_646 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_helper''_646 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             [] -> coe v4
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                    (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
                    erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                    (coe
                       du_matchExprM_630 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                             (coe
                                du_helper''_646 (coe v0) (coe v1)
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                   (coe v4))))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM._.helper
d_helper_656 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_helper_656 ~v0 v1 v2 v3 = du_helper_656 v1 v2 v3
du_helper_656 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_helper_656 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v3 of
             MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5)
                    (coe
                       du_helper''_646 (coe v0) (coe v1)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v4)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM.singleMatchExpr
d_singleMatchExpr_664 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_singleMatchExpr_664 ~v0 v1 v2 v3 v4
  = du_singleMatchExpr_664 v1 v2 v3 v4
du_singleMatchExpr_664 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_singleMatchExpr_664 v0 v1 v2 v3
  = coe
      du_matchExprM_630 (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
-- Tactic.ClauseBuilder.ClauseExprM.singleTelescopeMatchExpr
d_singleTelescopeMatchExpr_670 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  AgdaAny -> AgdaAny
d_singleTelescopeMatchExpr_670 ~v0 v1 v2 v3 v4
  = du_singleTelescopeMatchExpr_670 v1 v2 v3 v4
du_singleTelescopeMatchExpr_670 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  AgdaAny -> AgdaAny
du_singleTelescopeMatchExpr_670 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v4 v5
        -> coe du_helper_682 (coe v0) (coe v1) (coe v4) (coe v5) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM._.helper
d_helper_682 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
d_helper_682 ~v0 v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_helper_682 v1 v2 v6 v7 v8
du_helper_682 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> AgdaAny -> AgdaAny
du_helper_682 v0 v1 v2 v3 v4
  = case coe v3 of
      []
        -> coe du_singleMatchExpr_664 (coe v0) (coe v1) (coe v2) (coe v4)
      (:) v5 v6
        -> coe
             du_singleMatchExpr_664 (coe v0) (coe v1) (coe v2)
             (coe
                MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
                erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                (coe du_helper_682 (coe v0) (coe v1) (coe v5) (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM.introExpr
d_introExpr_696 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
d_introExpr_696 ~v0 v1 v2 v3 v4 = du_introExpr_696 v1 v2 v3 v4
du_introExpr_696 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 -> AgdaAny -> AgdaAny
du_introExpr_696 v0 v1 v2 v3
  = coe
      du_singleMatchExpr_664 (coe v0) (coe v1)
      (coe d_varSinglePattern_64 (coe v2)) (coe v3)
-- Tactic.ClauseBuilder.ClauseExprM.introsExpr
d_introsExpr_702 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  AgdaAny -> AgdaAny
d_introsExpr_702 ~v0 v1 v2 v3 v4 = du_introsExpr_702 v1 v2 v3 v4
du_introsExpr_702 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  AgdaAny -> AgdaAny
du_introsExpr_702 v0 v1 v2 v3
  = case coe v2 of
      MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 v4 v5
        -> coe du_helper_714 (coe v0) (coe v1) (coe v4) (coe v5) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM._.helper
d_helper_714 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
d_helper_714 ~v0 v1 v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_helper_714 v1 v2 v6 v7 v8
du_helper_714 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88] ->
  AgdaAny -> AgdaAny
du_helper_714 v0 v1 v2 v3 v4
  = case coe v3 of
      [] -> coe du_introExpr_696 (coe v0) (coe v1) (coe v2) (coe v4)
      (:) v5 v6
        -> coe
             du_introExpr_696 (coe v0) (coe v1) (coe v2)
             (coe
                MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
                (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
                erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
                (coe du_helper_714 (coe v0) (coe v1) (coe v2) (coe v6) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ClauseExprM.contMatch
d_contMatch_728 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 -> AgdaAny -> AgdaAny
d_contMatch_728 ~v0 v1 ~v2 v3 = du_contMatch_728 v1 v3
du_contMatch_728 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
du_contMatch_728 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
      erased () erased (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38) v1
-- Tactic.ClauseBuilder.ClauseExprM.finishMatch
d_finishMatch_732 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 -> AgdaAny -> AgdaAny
d_finishMatch_732 ~v0 v1 ~v2 v3 = du_finishMatch_732 v1 v3
du_finishMatch_732 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 -> AgdaAny -> AgdaAny
du_finishMatch_732 v0 v1
  = coe
      MAlonzo.Code.Class.Functor.Core.d__'60''36''62'__20
      (coe MAlonzo.Code.Class.Monad.Core.du_Functor'45'M_50 (coe v0)) ()
      erased () erased
      (\ v2 ->
         coe
           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
           (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)))
      v1
-- Tactic.ClauseBuilder.ClauseExprM.bindCtxMatchExpr
d_bindCtxMatchExpr_742 ::
  (MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> ()) ->
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 -> AgdaAny -> AgdaAny
d_bindCtxMatchExpr_742 ~v0 v1 v2 ~v3 v4 ~v5 v6
  = du_bindCtxMatchExpr_742 v1 v2 v4 v6
du_bindCtxMatchExpr_742 ::
  MAlonzo.Code.Class.Monad.Core.T_Monad_8 ->
  T_ContextMonad_450 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  AgdaAny -> AgdaAny
du_bindCtxMatchExpr_742 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18 v0 () erased ()
      erased (coe du_ctxSinglePatterns_186 (coe v0) (coe v2))
      (\ v4 ->
         let v5
               = coe
                   MAlonzo.Code.Data.List.NonEmpty.Base.du_fromList_66 (coe v4) in
         coe
           (case coe v5 of
              MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v6
                -> coe
                     du_singleTelescopeMatchExpr_670 (coe v0) (coe v1) (coe v6)
                     (coe du_contMatch_728 (coe v0) (coe v3))
              MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v3
              _ -> MAlonzo.RTE.mazUnreachableError))
-- Tactic.ClauseBuilder.clauseTelescope
d_clauseTelescope_752 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_clauseTelescope_752 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 v1 v2 v3
        -> coe v1
      MAlonzo.Code.Agda.Builtin.Reflection.C_absurd'45'clause_278 v1 v2
        -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder._._.bindCtxMatchExpr
d_bindCtxMatchExpr_764 ::
  MAlonzo.Code.Class.MonadError.T_MonadError_18 ->
  MAlonzo.Code.Class.MonadReader.T_MonadReader_22 ->
  MAlonzo.Code.Class.MonadTC.T_MonadTC_88 ->
  T_ClauseExpr_306 -> T_ClauseExpr_306
d_bindCtxMatchExpr_764 v0 v1 v2 v3
  = coe
      du_bindCtxMatchExpr_742 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474) v1 v3
-- Tactic.ClauseBuilder._._.contMatch
d_contMatch_766 ::
  T_ClauseExpr_306 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_contMatch_766 = coe du_contMatch_728 (coe d_Monad'45'Id_472)
-- Tactic.ClauseBuilder._._.finishMatch
d_finishMatch_768 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_finishMatch_768 = coe du_finishMatch_732 (coe d_Monad'45'Id_472)
-- Tactic.ClauseBuilder._._.introExpr
d_introExpr_770 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_ClauseExpr_306
d_introExpr_770
  = coe
      du_introExpr_696 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._._.introsExpr
d_introsExpr_772 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_ClauseExpr_306
d_introsExpr_772
  = coe
      du_introsExpr_702 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._._.matchExprM
d_matchExprM_774 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_ClauseExpr_306
d_matchExprM_774
  = coe
      du_matchExprM_630 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._._.multiMatchExprM
d_multiMatchExprM_776 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> T_ClauseExpr_306
d_multiMatchExprM_776
  = coe
      du_multiMatchExprM_640 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._._.singleMatchExpr
d_singleMatchExpr_778 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_ClauseExpr_306
d_singleMatchExpr_778
  = coe
      du_singleMatchExpr_664 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._._.singleTelescopeMatchExpr
d_singleTelescopeMatchExpr_780 ::
  MAlonzo.Code.Data.List.NonEmpty.Base.T_List'8314'_22 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_ClauseExpr_306
d_singleTelescopeMatchExpr_780
  = coe
      du_singleTelescopeMatchExpr_670 (coe d_Monad'45'Id_472)
      (coe d_ContextMonad'45'Id_474)
-- Tactic.ClauseBuilder._.instanciatePattern
d_instanciatePattern_782 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Arg_88]
d_instanciatePattern_782 v0
  = coe
      MAlonzo.Code.Data.List.Base.du_map_22
      (coe (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1)))
      (coe
         d_clauseTelescope_752
         (coe
            MAlonzo.Code.Data.Maybe.Base.d_from'45'just_64
            (coe
               MAlonzo.Code.Data.List.Base.du_head_608
               (coe
                  d_clauseExprToClauses_428
                  (coe
                     du_singleMatchExpr_664 (coe d_Monad'45'Id_472)
                     (coe d_ContextMonad'45'Id_474) (coe v0)
                     (coe
                        du_finishMatch_732 (coe d_Monad'45'Id_472)
                        (coe MAlonzo.Code.Agda.Builtin.Reflection.C_unknown_216)))))))
-- Tactic.ClauseBuilder._.instanciatePatterns
d_instanciatePatterns_786 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  [MAlonzo.Code.Agda.Builtin.Reflection.T_Clause_160]
d_instanciatePatterns_786 v0 v1
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
             (coe
                MAlonzo.Code.Agda.Builtin.Reflection.C_clause_272 (coe v0) (coe v0)
                (coe v1))
      (:) v2 v3
        -> coe
             d_clauseExprToClauses_428
             (coe
                du_singleTelescopeMatchExpr_670 (coe d_Monad'45'Id_472)
                (coe d_ContextMonad'45'Id_474)
                (coe
                   MAlonzo.Code.Data.List.NonEmpty.Base.C__'8759'__34 (coe v2)
                   (coe v3))
                (coe du_finishMatch_732 (coe d_Monad'45'Id_472) (coe v1)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Tactic.ClauseBuilder.ctxBindingClause
d_ctxBindingClause_796 ::
  MAlonzo.Code.Agda.Builtin.Reflection.T_Term_154 ->
  MAlonzo.Code.Class.MonadTC.T_TCEnv_32 -> AgdaAny
d_ctxBindingClause_796 v0 v1
  = coe
      MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
      MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
      erased
      (coe
         du_ctxSinglePatterns_186
         (coe
            MAlonzo.Code.Class.MonadReader.du_Monad'45'ReaderT_96
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         (coe
            MAlonzo.Code.Class.MonadReader.du_MonadReader'45'ReaderT_110
            (coe MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6))
         v1)
      (\ v2 ->
         coe
           MAlonzo.Code.Class.Monad.Core.d__'62''62''61'__18
           MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased ()
           erased
           (coe
              MAlonzo.Code.Class.Monad.Core.d_return_16
              MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased
              (d_instanciatePatterns_786
                 (coe MAlonzo.Code.Data.List.Base.du_reverse_536 v2) (coe v0)))
           (\ v3 ->
              let v4
                    = coe
                        MAlonzo.Code.Class.MonadTC.du_error1_592
                        (coe
                           MAlonzo.Code.Class.MonadReader.du_MonadError'45'ReaderT_122
                           (coe MAlonzo.Code.Class.MonadError.d_MonadError'45'TC_32))
                        (coe ())
                        (coe MAlonzo.Code.Reflection.Debug.d_IsErrorPart'45'String_22)
                        (coe ("Bug in ctxBindingClause" :: Data.Text.Text)) in
              coe
                (case coe v3 of
                   (:) v5 v6
                     -> coe
                          MAlonzo.Code.Class.Monad.Core.d_return_16
                          MAlonzo.Code.Class.Monad.Instances.d_Monad'45'TC_6 () erased v5
                   _ -> coe v4 v1)))
