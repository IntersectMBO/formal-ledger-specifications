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

module MAlonzo.Code.Relation.Binary.Construct.Closure.Symmetric where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Relation.Binary.Construct.On

-- Relation.Binary.Construct.Closure.Symmetric.SymClosure
d_SymClosure_40 a0 a1 a2 a3 a4 a5 = ()
data T_SymClosure_40 = C_fwd_50 AgdaAny | C_bwd_52 AgdaAny
-- Relation.Binary.Construct.Closure.Symmetric.symmetric
d_symmetric_56 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_symmetric_56 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 = du_symmetric_56 v6
du_symmetric_56 :: T_SymClosure_40 -> T_SymClosure_40
du_symmetric_56 v0
  = case coe v0 of
      C_fwd_50 v1 -> coe C_bwd_52 (coe v1)
      C_bwd_52 v1 -> coe C_fwd_50 (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Closure.Symmetric.hmap
d_hmap_66 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_hmap_66 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12 v13
          v14 v15
  = du_hmap_66 v12 v13 v14 v15
du_hmap_66 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_hmap_66 v0 v1 v2 v3
  = case coe v3 of
      C_fwd_50 v4 -> coe C_fwd_50 (coe v0 v1 v2 v4)
      C_bwd_52 v4 -> coe C_bwd_52 (coe v0 v2 v1 v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Closure.Symmetric.on⁺
d_on'8314'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_on'8314'_78 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_on'8314'_78 v7 v8
du_on'8314'_78 ::
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_on'8314'_78 v0 v1
  = coe du_hmap_66 (coe (\ v2 v3 v4 -> v4)) (coe v0) (coe v1)
-- Relation.Binary.Construct.Closure.Symmetric.on⁻
d_on'8315'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_on'8315'_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_on'8315'_84 v7 v8
du_on'8315'_84 ::
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_on'8315'_84 v0 v1
  = coe du_hmap_66 (coe (\ v2 v3 v4 -> v4)) (coe v0) (coe v1)
-- Relation.Binary.Construct.Closure.Symmetric.gmap
d_gmap_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_gmap_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_gmap_90
du_gmap_90 ::
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_gmap_90 v0 v1 v2 v3 v4 = coe du_hmap_66 v1 v2 v3 v4
-- Relation.Binary.Construct.Closure.Symmetric.map
d_map_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_map_92 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_map_92
du_map_92 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_map_92 = coe du_gmap_90 (\ v0 -> v0)
-- Relation.Binary.Construct.Closure.Symmetric.fold
d_fold_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> AgdaAny
d_fold_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_fold_94 v6 v7 v8 v9 v10
du_fold_94 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> AgdaAny
du_fold_94 v0 v1 v2 v3 v4
  = case coe v4 of
      C_fwd_50 v5 -> coe v1 v2 v3 v5
      C_bwd_52 v5 -> coe v0 v3 v2 (coe v1 v3 v2 v5)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Relation.Binary.Construct.Closure.Symmetric.gfold
d_gfold_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> AgdaAny
d_gfold_110 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10 v11 v12
  = du_gfold_110 v8 v9 v10 v11 v12
du_gfold_110 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> AgdaAny
du_gfold_110 v0 v1 v2 v3 v4
  = coe
      du_fold_94
      (coe
         MAlonzo.Code.Relation.Binary.Construct.On.du_symmetric_58 (coe v1)
         (coe v0))
      (coe v2) (coe v3) (coe v4)
-- Relation.Binary.Construct.Closure.Symmetric.return
d_return_120 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> T_SymClosure_40
d_return_120 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 = du_return_120
du_return_120 :: AgdaAny -> T_SymClosure_40
du_return_120 = coe C_fwd_50
-- Relation.Binary.Construct.Closure.Symmetric.join
d_join_122 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d_join_122 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_join_122 v4 v5
du_join_122 ::
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du_join_122 v0 v1
  = coe
      du_fold_94 (\ v2 v3 v4 -> coe du_symmetric_56 v4)
      (coe (\ v2 v3 v4 -> v4)) (coe v0) (coe v1)
-- Relation.Binary.Construct.Closure.Symmetric._⋆
d__'8902'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> T_SymClosure_40) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
d__'8902'_124 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du__'8902'_124 v6 v7 v8 v9
du__'8902'_124 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> T_SymClosure_40) ->
  AgdaAny -> AgdaAny -> T_SymClosure_40 -> T_SymClosure_40
du__'8902'_124 v0 v1 v2 v3
  = coe du_join_122 v1 v2 (coe du_map_92 v0 v1 v2 v3)
