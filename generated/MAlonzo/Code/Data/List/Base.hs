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

module MAlonzo.Code.Data.List.Base where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles.Raw
import qualified MAlonzo.Code.Data.Bool.Base
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Data.List.Base.map
d_map_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_22 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_map_22 v4 v5
du_map_22 :: (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_map_22 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2)
             (coe du_map_22 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.mapMaybe
d_mapMaybe_32 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapMaybe_32 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_mapMaybe_32 v4 v5
du_mapMaybe_32 ::
  (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
du_mapMaybe_32 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           coe
             (case coe v4 of
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                  -> coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                       (coe du_mapMaybe_32 (coe v0) (coe v3))
                MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                  -> coe du_mapMaybe_32 (coe v0) (coe v3)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.catMaybes
d_catMaybes_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [Maybe AgdaAny] -> [AgdaAny]
d_catMaybes_60 ~v0 ~v1 = du_catMaybes_60
du_catMaybes_60 :: [Maybe AgdaAny] -> [AgdaAny]
du_catMaybes_60 = coe du_mapMaybe_32 (coe (\ v0 -> v0))
-- Data.List.Base._++_
d__'43''43'__62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'43''43'__62 ~v0 ~v1 v2 v3 = du__'43''43'__62 v2 v3
du__'43''43'__62 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'43''43'__62 v0 v1
  = case coe v0 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe du__'43''43'__62 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.intersperse
d_intersperse_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> [AgdaAny] -> [AgdaAny]
d_intersperse_72 ~v0 ~v1 v2 v3 = du_intersperse_72 v2 v3
du_intersperse_72 :: AgdaAny -> [AgdaAny] -> [AgdaAny]
du_intersperse_72 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
                        (coe du_intersperse_72 (coe v0) (coe v3))) in
           coe
             (case coe v3 of
                [] -> coe v1
                _ -> coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.intercalate
d_intercalate_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
d_intercalate_86 ~v0 ~v1 v2 v3 = du_intercalate_86 v2 v3
du_intercalate_86 :: [AgdaAny] -> [[AgdaAny]] -> [AgdaAny]
du_intercalate_86 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = coe
                     du__'43''43'__62 (coe v2)
                     (coe
                        du__'43''43'__62 (coe v0)
                        (coe du_intercalate_86 (coe v0) (coe v3))) in
           coe
             (case coe v3 of
                [] -> coe v2
                _ -> coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.cartesianProductWith
d_cartesianProductWith_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_cartesianProductWith_100 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_cartesianProductWith_100 v6 v7 v8
du_cartesianProductWith_100 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_cartesianProductWith_100 v0 v1 v2
  = case coe v1 of
      [] -> coe v1
      (:) v3 v4
        -> coe
             du__'43''43'__62 (coe du_map_22 (coe v0 v3) (coe v2))
             (coe du_cartesianProductWith_100 (coe v0) (coe v4) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.cartesianProduct
d_cartesianProduct_112 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_cartesianProduct_112 ~v0 ~v1 ~v2 ~v3 = du_cartesianProduct_112
du_cartesianProduct_112 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_cartesianProduct_112
  = coe
      du_cartesianProductWith_100
      (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.Base.alignWith
d_alignWith_114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_alignWith_114 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_alignWith_114 v6 v7 v8
du_alignWith_114 ::
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_alignWith_114 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du_map_22
             (coe
                MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v0)
                (coe MAlonzo.Code.Data.These.Base.C_that_50))
             (coe v2)
      (:) v3 v4
        -> case coe v2 of
             []
               -> coe
                    du_map_22
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__216 (coe v0)
                       (coe MAlonzo.Code.Data.These.Base.C_this_48))
                    (coe v1)
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                    (coe
                       v0 (coe MAlonzo.Code.Data.These.Base.C_these_52 (coe v3) (coe v5)))
                    (coe du_alignWith_114 (coe v0) (coe v4) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.zipWith
d_zipWith_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_zipWith_134 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_zipWith_134 v6 v7 v8
du_zipWith_134 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_zipWith_134 v0 v1 v2
  = let v3 = coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16 in
    coe
      (case coe v1 of
         (:) v4 v5
           -> case coe v2 of
                (:) v6 v7
                  -> coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v4 v6)
                       (coe du_zipWith_134 (coe v0) (coe v5) (coe v7))
                _ -> coe v3
         _ -> coe v3)
-- Data.List.Base.unalignWith
d_unalignWith_148 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unalignWith_148 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unalignWith_148 v6 v7
du_unalignWith_148 ::
  (AgdaAny -> MAlonzo.Code.Data.These.Base.T_These_38) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unalignWith_148 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.These.Base.C_this_48 v5
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                       (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                       (coe du_unalignWith_148 (coe v0) (coe v3))
                MAlonzo.Code.Data.These.Base.C_that_50 v5
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map'8322'_150
                       (\ v6 -> coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                       (coe du_unalignWith_148 (coe v0) (coe v3))
                MAlonzo.Code.Data.These.Base.C_these_52 v5 v6
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map_128
                       (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5))
                       (coe
                          (\ v7 ->
                             coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)))
                       (coe du_unalignWith_148 (coe v0) (coe v3))
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.unzipWith
d_unzipWith_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzipWith_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_unzipWith_196 v6 v7
du_unzipWith_196 ::
  (AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzipWith_196 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Product.Base.du_zip_198
             (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22)
             (coe (\ v4 v5 -> coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22))
             (coe v0 v2) (coe du_unzipWith_196 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.partitionSumsWith
d_partitionSumsWith_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSumsWith_206 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_partitionSumsWith_206 v6
du_partitionSumsWith_206 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSumsWith_206 v0
  = coe
      du_unalignWith_148
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216
         (coe MAlonzo.Code.Data.These.Base.du_fromSum_54) (coe v0))
-- Data.List.Base.align
d_align_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T_These_38]
d_align_210 ~v0 ~v1 ~v2 ~v3 = du_align_210
du_align_210 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Data.These.Base.T_These_38]
du_align_210 = coe du_alignWith_114 (coe (\ v0 -> v0))
-- Data.List.Base.zip
d_zip_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_zip_212 ~v0 ~v1 ~v2 ~v3 = du_zip_212
du_zip_212 ::
  [AgdaAny] -> [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_zip_212
  = coe
      du_zipWith_134 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32)
-- Data.List.Base.unalign
d_unalign_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Data.These.Base.T_These_38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unalign_214 ~v0 ~v1 ~v2 ~v3 = du_unalign_214
du_unalign_214 ::
  [MAlonzo.Code.Data.These.Base.T_These_38] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unalign_214 = coe du_unalignWith_148 (coe (\ v0 -> v0))
-- Data.List.Base.unzip
d_unzip_216 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_216 ~v0 ~v1 ~v2 ~v3 = du_unzip_216
du_unzip_216 ::
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_216 = coe du_unzipWith_196 (coe (\ v0 -> v0))
-- Data.List.Base.partitionSums
d_partitionSums_218 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partitionSums_218 ~v0 ~v1 ~v2 ~v3 = du_partitionSums_218
du_partitionSums_218 ::
  [MAlonzo.Code.Data.Sum.Base.T__'8846'__30] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partitionSums_218
  = coe du_partitionSumsWith_206 (coe (\ v0 -> v0))
-- Data.List.Base.merge
d_merge_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_merge_222 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_merge_222 v4 v5 v6
du_merge_222 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_merge_222 v0 v1 v2
  = case coe v1 of
      [] -> coe v2
      (:) v3 v4
        -> case coe v2 of
             [] -> coe v1
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                       (coe v0 v3 v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                       (coe du_merge_222 (coe v0) (coe v4) (coe v2)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                       (coe du_merge_222 (coe v0) (coe v1) (coe v6)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.foldr
d_foldr_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldr_242 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldr_242 v4 v5 v6
du_foldr_242 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldr_242 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4
        -> coe v0 v3 (coe du_foldr_242 (coe v0) (coe v1) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.foldl
d_foldl_256 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
d_foldl_256 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_foldl_256 v4 v5 v6
du_foldl_256 ::
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> [AgdaAny] -> AgdaAny
du_foldl_256 v0 v1 v2
  = case coe v2 of
      [] -> coe v1
      (:) v3 v4 -> coe du_foldl_256 (coe v0) (coe v0 v1 v3) (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.concat
d_concat_270 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [[AgdaAny]] -> [AgdaAny]
d_concat_270 ~v0 ~v1 = du_concat_270
du_concat_270 :: [[AgdaAny]] -> [AgdaAny]
du_concat_270
  = coe
      du_foldr_242 (coe du__'43''43'__62)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base.concatMap
d_concatMap_272 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap_272 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_concatMap_272 v4 v5
du_concatMap_272 ::
  (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
du_concatMap_272 v0 v1
  = coe du_concat_270 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.ap
d_ap_276 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_ap_276 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_ap_276 v4 v5
du_ap_276 :: [AgdaAny -> AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_ap_276 v0 v1
  = coe
      du_concatMap_272 (coe (\ v2 -> coe du_map_22 (coe v2) (coe v1)))
      (coe v0)
-- Data.List.Base.null
d_null_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 -> () -> [AgdaAny] -> Bool
d_null_282 ~v0 ~v1 v2 = du_null_282 v2
du_null_282 :: [AgdaAny] -> Bool
du_null_282 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.and
d_and_288 :: [Bool] -> Bool
d_and_288
  = coe
      du_foldr_242 (coe MAlonzo.Code.Data.Bool.Base.d__'8743'__24)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
-- Data.List.Base.or
d_or_290 :: [Bool] -> Bool
d_or_290
  = coe
      du_foldr_242 (coe MAlonzo.Code.Data.Bool.Base.d__'8744'__30)
      (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
-- Data.List.Base.any
d_any_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_any_292 ~v0 ~v1 v2 v3 = du_any_292 v2 v3
du_any_292 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_any_292 v0 v1 = coe d_or_290 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.all
d_all_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Bool
d_all_296 ~v0 ~v1 v2 v3 = du_all_296 v2 v3
du_all_296 :: (AgdaAny -> Bool) -> [AgdaAny] -> Bool
du_all_296 v0 v1 = coe d_and_288 (coe du_map_22 (coe v0) (coe v1))
-- Data.List.Base.sum
d_sum_300 :: [Integer] -> Integer
d_sum_300 = coe du_foldr_242 (coe addInt) (coe (0 :: Integer))
-- Data.List.Base.product
d_product_302 :: [Integer] -> Integer
d_product_302 = coe du_foldr_242 (coe mulInt) (coe (1 :: Integer))
-- Data.List.Base.length
d_length_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Integer
d_length_304 ~v0 ~v1 = du_length_304
du_length_304 :: [AgdaAny] -> Integer
du_length_304
  = coe
      du_foldr_242
      (let v0 = \ v0 -> addInt (coe (1 :: Integer)) (coe v0) in
       coe (coe (\ v1 -> v0)))
      (coe (0 :: Integer))
-- Data.List.Base.[_]
d_'91'_'93'_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> [AgdaAny]
d_'91'_'93'_306 ~v0 ~v1 v2 = du_'91'_'93'_306 v2
du_'91'_'93'_306 :: AgdaAny -> [AgdaAny]
du_'91'_'93'_306 v0
  = coe
      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base.fromMaybe
d_fromMaybe_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Maybe AgdaAny -> [AgdaAny]
d_fromMaybe_310 ~v0 ~v1 v2 = du_fromMaybe_310 v2
du_fromMaybe_310 :: Maybe AgdaAny -> [AgdaAny]
du_fromMaybe_310 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v1
        -> coe du_'91'_'93'_306 (coe v1)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.replicate
d_replicate_314 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> AgdaAny -> [AgdaAny]
d_replicate_314 ~v0 ~v1 v2 v3 = du_replicate_314 v2 v3
du_replicate_314 :: Integer -> AgdaAny -> [AgdaAny]
du_replicate_314 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                (coe du_replicate_314 (coe v2) (coe v1)))
-- Data.List.Base.iterate
d_iterate_322 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> Integer -> [AgdaAny]
d_iterate_322 ~v0 ~v1 v2 v3 v4 = du_iterate_322 v2 v3 v4
du_iterate_322 ::
  (AgdaAny -> AgdaAny) -> AgdaAny -> Integer -> [AgdaAny]
du_iterate_322 v0 v1 v2
  = case coe v2 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v3 = subInt (coe v2) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                (coe du_iterate_322 (coe v0) (coe v0 v1) (coe v3)))
-- Data.List.Base.inits
d_inits_334 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_inits_334 ~v0 ~v1 v2 = du_inits_334 v2
du_inits_334 :: [AgdaAny] -> [[AgdaAny]]
du_inits_334 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
             (coe
                du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1))
                (coe du_inits_334 (coe v2)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.tails
d_tails_342 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_tails_342 ~v0 ~v1 v2 = du_tails_342 v2
du_tails_342 :: [AgdaAny] -> [[AgdaAny]]
du_tails_342 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0)
             (coe du_tails_342 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.insertAt
d_insertAt_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> [AgdaAny]
d_insertAt_350 ~v0 ~v1 v2 v3 v4 = du_insertAt_350 v2 v3 v4
du_insertAt_350 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> [AgdaAny]
du_insertAt_350 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v0)
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5)
                    (coe du_insertAt_350 (coe v6) (coe v4) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.updateAt
d_updateAt_366 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
d_updateAt_366 ~v0 ~v1 v2 v3 v4 = du_updateAt_366 v2 v3 v4
du_updateAt_366 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
du_updateAt_366 v0 v1 v2
  = case coe v0 of
      (:) v3 v4
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2 v3) (coe v4)
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v6
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                    (coe du_updateAt_366 (coe v4) (coe v6) (coe v2))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.scanr
d_scanr_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_scanr_382 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_scanr_382 v4 v5 v6
du_scanr_382 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du_scanr_382 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5 = coe du_scanr_382 (coe v0) (coe v1) (coe v4) in
           coe
             (case coe v5 of
                [] -> coe v5
                (:) v6 v7
                  -> coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v3 v6)
                       (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.scanl
d_scanl_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
d_scanl_420 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_scanl_420 v4 v5 v6
du_scanl_420 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> [AgdaAny] -> [AgdaAny]
du_scanl_420 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)
      (:) v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
             (coe du_scanl_420 (coe v0) (coe v0 v1 v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.applyUpTo
d_applyUpTo_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d_applyUpTo_434 ~v0 ~v1 v2 v3 = du_applyUpTo_434 v2 v3
du_applyUpTo_434 :: (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du_applyUpTo_434 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe v0 (0 :: Integer))
                (coe
                   du_applyUpTo_434
                   (coe (\ v3 -> coe v0 (addInt (coe (1 :: Integer)) (coe v3))))
                   (coe v2)))
-- Data.List.Base.applyDownFrom
d_applyDownFrom_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (Integer -> AgdaAny) -> Integer -> [AgdaAny]
d_applyDownFrom_442 ~v0 ~v1 v2 v3 = du_applyDownFrom_442 v2 v3
du_applyDownFrom_442 ::
  (Integer -> AgdaAny) -> Integer -> [AgdaAny]
du_applyDownFrom_442 v0 v1
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0 v2)
                (coe du_applyDownFrom_442 (coe v0) (coe v2)))
-- Data.List.Base.tabulate
d_tabulate_454 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> [AgdaAny]
d_tabulate_454 ~v0 ~v1 v2 v3 = du_tabulate_454 v2 v3
du_tabulate_454 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> [AgdaAny]
du_tabulate_454 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                (coe
                   du_tabulate_454 (coe v2)
                   (coe
                      (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)))))
-- Data.List.Base.lookup
d_lookup_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_lookup_464 ~v0 ~v1 v2 v3 = du_lookup_464 v2 v3
du_lookup_464 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_lookup_464 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v2
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe du_lookup_464 (coe v3) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.upTo
d_upTo_476 :: Integer -> [Integer]
d_upTo_476 = coe du_applyUpTo_434 (coe (\ v0 -> v0))
-- Data.List.Base.downFrom
d_downFrom_478 :: Integer -> [Integer]
d_downFrom_478 = coe du_applyDownFrom_442 (coe (\ v0 -> v0))
-- Data.List.Base.allFin
d_allFin_482 :: Integer -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
d_allFin_482 v0 = coe du_tabulate_454 (coe v0) (coe (\ v1 -> v1))
-- Data.List.Base.unfold
d_unfold_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (Integer -> ()) ->
  (Integer ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> [AgdaAny]
d_unfold_494 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_unfold_494 v4 v5 v6
du_unfold_494 ::
  (Integer ->
   AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14) ->
  Integer -> AgdaAny -> [AgdaAny]
du_unfold_494 v0 v1 v2
  = case coe v1 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v3 = subInt (coe v1) (coe (1 :: Integer)) in
           coe
             (let v4 = coe v0 v3 v2 in
              coe
                (case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
                     -> case coe v5 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v6)
                                 (coe du_unfold_494 (coe v0) (coe v3) (coe v7))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
                     -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
                   _ -> MAlonzo.RTE.mazUnreachableError))
-- Data.List.Base.reverseAcc
d_reverseAcc_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d_reverseAcc_534 ~v0 ~v1 = du_reverseAcc_534
du_reverseAcc_534 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du_reverseAcc_534
  = coe
      du_foldl_256
      (coe
         (\ v0 v1 ->
            coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v0)))
-- Data.List.Base.reverse
d_reverse_536 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny]
d_reverse_536 ~v0 ~v1 = du_reverse_536
du_reverse_536 :: [AgdaAny] -> [AgdaAny]
du_reverse_536
  = coe
      du_reverseAcc_534
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base._ʳ++_
d__'691''43''43'__538 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'691''43''43'__538 ~v0 ~v1 v2 v3 = du__'691''43''43'__538 v2 v3
du__'691''43''43'__538 :: [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'691''43''43'__538 v0 v1 = coe du_reverseAcc_534 v1 v0
-- Data.List.Base._∷ʳ_
d__'8759''691'__540 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> AgdaAny -> [AgdaAny]
d__'8759''691'__540 ~v0 ~v1 v2 v3 = du__'8759''691'__540 v2 v3
du__'8759''691'__540 :: [AgdaAny] -> AgdaAny -> [AgdaAny]
du__'8759''691'__540 v0 v1
  = coe du__'43''43'__62 (coe v0) (coe du_'91'_'93'_306 (coe v1))
-- Data.List.Base.InitLast
d_InitLast_550 a0 a1 a2 = ()
data T_InitLast_550
  = C_'91''93'_554 | C__'8759''691''8242'__560 [AgdaAny] AgdaAny
-- Data.List.Base.initLast
d_initLast_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> T_InitLast_550
d_initLast_564 ~v0 ~v1 v2 = du_initLast_564 v2
du_initLast_564 :: [AgdaAny] -> T_InitLast_550
du_initLast_564 v0
  = case coe v0 of
      [] -> coe C_'91''93'_554
      (:) v1 v2
        -> let v3 = coe du_initLast_564 (coe v2) in
           coe
             (case coe v3 of
                C_'91''93'_554
                  -> coe
                       C__'8759''691''8242'__560
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
                C__'8759''691''8242'__560 v4 v5
                  -> coe
                       C__'8759''691''8242'__560
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v4))
                       (coe v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.unsnoc
d_unsnoc_586 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unsnoc_586 ~v0 ~v1 v2 = du_unsnoc_586 v2
du_unsnoc_586 ::
  [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unsnoc_586 v0
  = let v1 = coe du_initLast_564 (coe v0) in
    coe
      (case coe v1 of
         C_'91''93'_554 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
         C__'8759''691''8242'__560 v2 v3
           -> coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Base.uncons
d_uncons_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_602 ~v0 ~v1 v2 = du_uncons_602 v2
du_uncons_602 ::
  [AgdaAny] -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_602 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.head
d_head_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe AgdaAny
d_head_608 ~v0 ~v1 v2 = du_head_608 v2
du_head_608 :: [AgdaAny] -> Maybe AgdaAny
du_head_608 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.tail
d_tail_612 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe [AgdaAny]
d_tail_612 ~v0 ~v1 v2 = du_tail_612 v2
du_tail_612 :: [AgdaAny] -> Maybe [AgdaAny]
du_tail_612 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.last
d_last_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe AgdaAny
d_last_616 ~v0 ~v1 v2 = du_last_616 v2
du_last_616 :: [AgdaAny] -> Maybe AgdaAny
du_last_616 v0
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v1 v2
        -> let v3 = coe du_last_616 (coe v2) in
           coe
             (case coe v2 of
                [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v1)
                _ -> coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.take
d_take_622 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_take_622 ~v0 ~v1 v2 v3 = du_take_622 v2 v3
du_take_622 :: Integer -> [AgdaAny] -> [AgdaAny]
du_take_622 v0 v1
  = case coe v0 of
      0 -> coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                [] -> coe v1
                (:) v3 v4
                  -> coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                       (coe du_take_622 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Base.drop
d_drop_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Integer -> [AgdaAny] -> [AgdaAny]
d_drop_634 ~v0 ~v1 v2 v3 = du_drop_634 v2 v3
du_drop_634 :: Integer -> [AgdaAny] -> [AgdaAny]
du_drop_634 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                [] -> coe v1
                (:) v3 v4 -> coe du_drop_634 (coe v2) (coe v4)
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Base.splitAt
d_splitAt_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_splitAt_646 ~v0 ~v1 v2 v3 = du_splitAt_646 v2 v3
du_splitAt_646 ::
  Integer -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_splitAt_646 v0 v1
  = case coe v0 of
      0 -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (case coe v1 of
                []
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
                (:) v3 v4
                  -> coe
                       MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                       (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3))
                       (coe du_splitAt_646 (coe v2) (coe v4))
                _ -> MAlonzo.RTE.mazUnreachableError)
-- Data.List.Base.removeAt
d_removeAt_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> [AgdaAny]
d_removeAt_662 ~v0 ~v1 v2 v3 = du_removeAt_662 v2 v3
du_removeAt_662 ::
  [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> [AgdaAny]
du_removeAt_662 v0 v1
  = case coe v0 of
      (:) v2 v3
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v3
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v5
               -> coe
                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                    (coe du_removeAt_662 (coe v3) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.takeWhile
d_takeWhile_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_takeWhile_676 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_takeWhile_676 v4 v5
du_takeWhile_676 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_takeWhile_676 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v2) in
           coe
             (if coe v4
                then coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                       (coe du_takeWhile_676 (coe v0) (coe v3))
                else coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.takeWhileᵇ
d_takeWhile'7495'_702 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_takeWhile'7495'_702 ~v0 ~v1 v2 = du_takeWhile'7495'_702 v2
du_takeWhile'7495'_702 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_takeWhile'7495'_702 v0
  = coe
      du_takeWhile_676
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.dropWhile
d_dropWhile_708 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_dropWhile_708 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_dropWhile_708 v4 v5
du_dropWhile_708 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_dropWhile_708 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v2) in
           coe
             (if coe v4 then coe du_dropWhile_708 (coe v0) (coe v3) else coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.dropWhileᵇ
d_dropWhile'7495'_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_dropWhile'7495'_734 ~v0 ~v1 v2 = du_dropWhile'7495'_734 v2
du_dropWhile'7495'_734 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_dropWhile'7495'_734 v0
  = coe
      du_dropWhile_708
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.filter
d_filter_740 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_740 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_filter_740 v4 v5
du_filter_740 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_filter_740 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v2) in
           coe
             (if coe v4
                then coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                       (coe du_filter_740 (coe v0) (coe v3))
                else coe du_filter_740 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.filterᵇ
d_filter'7495'_766 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_filter'7495'_766 ~v0 ~v1 v2 = du_filter'7495'_766 v2
du_filter'7495'_766 :: (AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_filter'7495'_766 v0
  = coe
      du_filter_740
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.partition
d_partition_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partition_772 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_partition_772 v4 v5
du_partition_772 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partition_772 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v2) in
           coe
             (let v5 = coe du_partition_772 (coe v0) (coe v3) in
              coe
                (if coe v4
                   then case coe v5 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v6))
                                 (coe v7)
                          _ -> MAlonzo.RTE.mazUnreachableError
                   else (case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.partitionᵇ
d_partition'7495'_806 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_partition'7495'_806 ~v0 ~v1 v2 = du_partition'7495'_806 v2
du_partition'7495'_806 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_partition'7495'_806 v0
  = coe
      du_partition_772
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.span
d_span_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_span_812 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_span_812 v4 v5
du_span_812 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_span_812 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      (:) v2 v3
        -> let v4
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v2) in
           coe
             (if coe v4
                then coe
                       MAlonzo.Code.Data.Product.Base.du_map_128
                       (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                       (coe (\ v5 v6 -> v6)) (coe du_span_812 (coe v0) (coe v3))
                else coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.spanᵇ
d_span'7495'_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_span'7495'_846 ~v0 ~v1 v2 = du_span'7495'_846 v2
du_span'7495'_846 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_span'7495'_846 v0
  = coe
      du_span_812
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.break
d_break_852 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_break_852 ~v0 ~v1 ~v2 ~v3 v4 = du_break_852 v4
du_break_852 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_break_852 v0
  = coe
      du_span_812
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
              (coe v0 v1)))
-- Data.List.Base.breakᵇ
d_break'7495'_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_break'7495'_856 ~v0 ~v1 v2 = du_break'7495'_856 v2
du_break'7495'_856 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_break'7495'_856 v0
  = coe
      du_break_852
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.linesBy
d_linesBy_862 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
d_linesBy_862 ~v0 ~v1 ~v2 ~v3 v4 = du_linesBy_862 v4
du_linesBy_862 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
du_linesBy_862 v0
  = coe
      du_go_872 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
-- Data.List.Base._.go
d_go_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Maybe [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d_go_872 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_go_872 v4 v5 v6
du_go_872 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Maybe [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du_go_872 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
             (coe
                MAlonzo.Code.Function.Base.du__'8728''8242'__216
                (coe du_'91'_'93'_306) (coe du_reverse_536))
             v2 v1
      (:) v3 v4
        -> let v5
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v3) in
           coe
             (if coe v5
                then coe
                       MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                       (coe
                          du_reverse_536
                          (coe
                             MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_50
                             (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v1))
                       (coe
                          du_go_872 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18) (coe v4))
                else coe
                       du_go_872 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                          (coe
                             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                             (coe
                                MAlonzo.Code.Data.Maybe.Base.du_fromMaybe_50
                                (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) v1)))
                       (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.linesByᵇ
d_linesBy'7495'_898 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
d_linesBy'7495'_898 ~v0 ~v1 v2 = du_linesBy'7495'_898 v2
du_linesBy'7495'_898 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
du_linesBy'7495'_898 v0
  = coe
      du_linesBy_862
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.wordsBy
d_wordsBy_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
d_wordsBy_904 ~v0 ~v1 ~v2 ~v3 v4 = du_wordsBy_904 v4
du_wordsBy_904 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]]
du_wordsBy_904 v0
  = coe
      du_go_922 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base._.cons
d_cons_914 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
d_cons_914 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_cons_914 v5 v6
du_cons_914 :: [AgdaAny] -> [[AgdaAny]] -> [[AgdaAny]]
du_cons_914 v0 v1
  = let v2
          = coe
              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
              (coe du_reverse_536 v0) (coe v1) in
    coe
      (case coe v0 of
         [] -> coe v1
         _ -> coe v2)
-- Data.List.Base._.go
d_go_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
d_go_922 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 = du_go_922 v4 v5 v6
du_go_922 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [[AgdaAny]]
du_go_922 v0 v1 v2
  = case coe v2 of
      [] -> coe du_cons_914 (coe v1) (coe v2)
      (:) v3 v4
        -> let v5
                 = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                     (coe v0 v3) in
           coe
             (if coe v5
                then coe
                       du_cons_914 (coe v1)
                       (coe
                          du_go_922 (coe v0)
                          (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16) (coe v4))
                else coe
                       du_go_922 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3) (coe v1))
                       (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.wordsByᵇ
d_wordsBy'7495'_948 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
d_wordsBy'7495'_948 ~v0 ~v1 v2 = du_wordsBy'7495'_948 v2
du_wordsBy'7495'_948 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> [[AgdaAny]]
du_wordsBy'7495'_948 v0
  = coe
      du_wordsBy_904
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.derun
d_derun_954 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_derun_954 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_derun_954 v4 v5
du_derun_954 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_derun_954 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> case coe v3 of
             [] -> coe v1
             (:) v4 v5
               -> let v6
                        = MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28
                            (coe v0 v2 v4) in
                  coe
                    (let v7 = coe du_derun_954 (coe v0) (coe v3) in
                     coe
                       (if coe v6
                          then coe v7
                          else coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v7)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.derunᵇ
d_derun'7495'_994 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_derun'7495'_994 ~v0 ~v1 v2 = du_derun'7495'_994 v2
du_derun'7495'_994 ::
  (AgdaAny -> AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_derun'7495'_994 v0
  = coe
      du_derun_954
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64))
         (coe v0))
-- Data.List.Base.deduplicate
d_deduplicate_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_deduplicate_1000 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_deduplicate_1000 v4 v5
du_deduplicate_1000 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
du_deduplicate_1000 v0 v1
  = case coe v1 of
      [] -> coe v1
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
             (coe
                du_filter_740
                (coe
                   (\ v4 ->
                      coe
                        MAlonzo.Code.Relation.Nullary.Decidable.Core.du_'172''63'_68
                        (coe v0 v2 v4)))
                (coe du_deduplicate_1000 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.deduplicateᵇ
d_deduplicate'7495'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
d_deduplicate'7495'_1010 ~v0 ~v1 v2 = du_deduplicate'7495'_1010 v2
du_deduplicate'7495'_1010 ::
  (AgdaAny -> AgdaAny -> Bool) -> [AgdaAny] -> [AgdaAny]
du_deduplicate'7495'_1010 v0
  = coe
      du_deduplicate_1000
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8322'__92
         (coe
            (\ v1 v2 ->
               MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64))
         (coe v0))
-- Data.List.Base.find
d_find_1016 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Maybe AgdaAny
d_find_1016 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_find_1016 v4 v5
du_find_1016 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Maybe AgdaAny
du_find_1016 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28 (coe v0 v2))
             (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2))
             (coe du_find_1016 (coe v0) (coe v3))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.findᵇ
d_find'7495'_1026 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> (AgdaAny -> Bool) -> [AgdaAny] -> Maybe AgdaAny
d_find'7495'_1026 ~v0 ~v1 v2 = du_find'7495'_1026 v2
du_find'7495'_1026 ::
  (AgdaAny -> Bool) -> [AgdaAny] -> Maybe AgdaAny
du_find'7495'_1026 v0
  = coe
      du_find_1016
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.findIndex
d_findIndex_1034 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Maybe MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_findIndex_1034 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_findIndex_1034 v4 v5
du_findIndex_1034 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Maybe MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_findIndex_1034 v0 v1
  = case coe v1 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28 (coe v0 v2))
             (coe
                MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
             (coe
                MAlonzo.Code.Data.Maybe.Base.du_map_68
                (coe MAlonzo.Code.Data.Fin.Base.C_suc_16)
                (coe du_findIndex_1034 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base.findIndexᵇ
d_findIndex'7495'_1046 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> Maybe MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_findIndex'7495'_1046 ~v0 ~v1 v2 = du_findIndex'7495'_1046 v2
du_findIndex'7495'_1046 ::
  (AgdaAny -> Bool) ->
  [AgdaAny] -> Maybe MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_findIndex'7495'_1046 v0
  = coe
      du_findIndex_1034
      (coe
         (\ v1 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v0 v1)))
-- Data.List.Base.findIndices
d_findIndices_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
d_findIndices_1054 v0 ~v1 v2 ~v3 v4 v5
  = du_findIndices_1054 v0 v2 v4 v5
du_findIndices_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
du_findIndices_1054 v0 v1 v2 v3
  = case coe v3 of
      [] -> coe v3
      (:) v4 v5
        -> coe
             MAlonzo.Code.Data.Bool.Base.du_if_then_else__44
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.d_does_28 (coe v2 v4))
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                (coe MAlonzo.Code.Data.Fin.Base.C_zero_12)
                (coe du_indices_1068 (coe v0) (coe v1) (coe v2) (coe v5)))
             (coe du_indices_1068 (coe v0) (coe v1) (coe v2) (coe v5))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Base._.indices
d_indices_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
d_indices_1068 v0 ~v1 v2 ~v3 v4 ~v5 v6
  = du_indices_1068 v0 v2 v4 v6
du_indices_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
du_indices_1068 v0 v1 v2 v3
  = coe
      du_map_22 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16)
      (coe du_findIndices_1054 (coe v0) (coe v1) (coe v2) (coe v3))
-- Data.List.Base.findIndicesᵇ
d_findIndices'7495'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
d_findIndices'7495'_1072 v0 ~v1 v2
  = du_findIndices'7495'_1072 v0 v2
du_findIndices'7495'_1072 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> Bool) ->
  [AgdaAny] -> [MAlonzo.Code.Data.Fin.Base.T_Fin_10]
du_findIndices'7495'_1072 v0 v1
  = coe
      du_findIndices_1054 (coe v0) (coe ())
      (coe
         (\ v2 ->
            MAlonzo.Code.Relation.Nullary.Decidable.Core.d_T'63'_64
              (coe v1 v2)))
-- Data.List.Base._[_]%=_
d__'91'_'93''37''61'__1078 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
d__'91'_'93''37''61'__1078 ~v0 ~v1 v2 v3 v4
  = du__'91'_'93''37''61'__1078 v2 v3 v4
du__'91'_'93''37''61'__1078 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny]
du__'91'_'93''37''61'__1078 v0 v1 v2
  = coe du_updateAt_366 (coe v0) (coe v1) (coe v2)
-- Data.List.Base._[_]∷=_
d__'91'_'93''8759''61'__1088 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> [AgdaAny]
d__'91'_'93''8759''61'__1088 ~v0 ~v1 v2 v3 v4
  = du__'91'_'93''8759''61'__1088 v2 v3 v4
du__'91'_'93''8759''61'__1088 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny -> [AgdaAny]
du__'91'_'93''8759''61'__1088 v0 v1 v2
  = coe
      du__'91'_'93''37''61'__1078 (coe v0) (coe v1) (coe (\ v3 -> v2))
-- Data.List.Base._?∷_
d__'63''8759'__1096 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> Maybe AgdaAny -> [AgdaAny] -> [AgdaAny]
d__'63''8759'__1096 ~v0 ~v1 = du__'63''8759'__1096
du__'63''8759'__1096 :: Maybe AgdaAny -> [AgdaAny] -> [AgdaAny]
du__'63''8759'__1096
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
      (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22) (\ v0 -> v0)
-- Data.List.Base._∷ʳ?_
d__'8759''691''63'__1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Maybe AgdaAny -> [AgdaAny]
d__'8759''691''63'__1098 ~v0 ~v1 v2 v3
  = du__'8759''691''63'__1098 v2 v3
du__'8759''691''63'__1098 ::
  [AgdaAny] -> Maybe AgdaAny -> [AgdaAny]
du__'8759''691''63'__1098 v0 v1
  = coe
      MAlonzo.Code.Data.Maybe.Base.du_maybe'8242'_48
      (coe du__'8759''691'__540 (coe v0)) v0 v1
-- Data.List.Base._.++-rawMagma
d_'43''43''45'rawMagma_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
d_'43''43''45'rawMagma_1114 ~v0 ~v1 = du_'43''43''45'rawMagma_1114
du_'43''43''45'rawMagma_1114 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMagma_10
du_'43''43''45'rawMagma_1114
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMagma'46'constructor_79
      (coe du__'43''43'__62)
-- Data.List.Base._.++-[]-rawMonoid
d_'43''43''45''91''93''45'rawMonoid_1116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
d_'43''43''45''91''93''45'rawMonoid_1116 ~v0 ~v1
  = du_'43''43''45''91''93''45'rawMonoid_1116
du_'43''43''45''91''93''45'rawMonoid_1116 ::
  MAlonzo.Code.Algebra.Bundles.Raw.T_RawMonoid_38
du_'43''43''45''91''93''45'rawMonoid_1116
  = coe
      MAlonzo.Code.Algebra.Bundles.Raw.C_RawMonoid'46'constructor_477
      (coe du__'43''43'__62)
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
-- Data.List.Base._∷ʳ'_
d__'8759''691'''__1122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> AgdaAny -> T_InitLast_550
d__'8759''691'''__1122 ~v0 ~v1 = du__'8759''691'''__1122
du__'8759''691'''__1122 :: [AgdaAny] -> AgdaAny -> T_InitLast_550
du__'8759''691'''__1122 = coe C__'8759''691''8242'__560
-- Data.List.Base._─_
d__'9472'__1124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> [AgdaAny]
d__'9472'__1124 v0 v1 v2 v3 = coe du_removeAt_662 v2 v3
