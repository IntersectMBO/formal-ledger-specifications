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

module MAlonzo.Code.Data.Vec.Relation.Unary.All where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.Any
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Vec.Relation.Unary.All.All
d_All_50 a0 a1 a2 a3 a4 a5 = ()
data T_All_50 = C_'91''93'_56 | C__'8759'__62 AgdaAny T_All_50
-- Data.Vec.Relation.Unary.All.head
d_head_64 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50 -> AgdaAny
d_head_64 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_head_64 v7
du_head_64 :: T_All_50 -> AgdaAny
du_head_64 v0
  = case coe v0 of
      C__'8759'__62 v4 v5 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.tail
d_tail_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50 -> T_All_50
d_tail_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_tail_70 v7
du_tail_70 :: T_All_50 -> T_All_50
du_tail_70 v0
  = case coe v0 of
      C__'8759'__62 v4 v5 -> coe v5
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.reduce
d_reduce_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
d_reduce_84 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9
  = du_reduce_84 v6 v8 v9
du_reduce_84 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> MAlonzo.Code.Data.Vec.Base.T_Vec_28
du_reduce_84 v0 v1 v2
  = case coe v2 of
      C_'91''93'_56 -> coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
      C__'8759'__62 v6 v7
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v9 v10
               -> coe
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 (coe v0 v9 v6)
                    (coe du_reduce_84 (coe v0) (coe v10) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.uncons
d_uncons_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_uncons_94
du_uncons_94 :: T_All_50 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_94
  = coe
      MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
      (coe du_head_64) (coe du_tail_70)
-- Data.Vec.Relation.Unary.All.map
d_map_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50 -> T_All_50
d_map_96 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 = du_map_96 v7 v8 v9
du_map_96 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50 -> T_All_50
du_map_96 v0 v1 v2
  = case coe v2 of
      C_'91''93'_56 -> coe v2
      C__'8759'__62 v6 v7
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v9 v10
               -> coe
                    C__'8759'__62 (coe v0 v9 v6)
                    (coe du_map_96 (coe v0) (coe v10) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.zip
d_zip_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_50
d_zip_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_zip_106 v7 v8
du_zip_106 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_All_50
du_zip_106 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v2 of
             C_'91''93'_56 -> coe seq (coe v3) (coe v2)
             C__'8759'__62 v7 v8
               -> case coe v0 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v10 v11
                      -> case coe v3 of
                           C__'8759'__62 v15 v16
                             -> coe
                                  C__'8759'__62
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v15))
                                  (coe
                                     du_zip_106 (coe v11)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                        (coe v16)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.unzip
d_unzip_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unzip_116 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 = du_unzip_116 v7 v8
du_unzip_116 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unzip_116 v0 v1
  = case coe v1 of
      C_'91''93'_56
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v1)
      C__'8759'__62 v5 v6
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> coe
                    MAlonzo.Code.Data.Product.Base.du_zip_198 (coe C__'8759'__62)
                    (coe (\ v10 v11 -> coe C__'8759'__62)) (coe v5)
                    (coe du_unzip_116 (coe v9) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All._.zipWith
d_zipWith_156 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> T_All_50 -> T_All_50
d_zipWith_156 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
              ~v12 v13 ~v14 v15 v16 v17 v18
  = du_zipWith_156 v13 v15 v16 v17 v18
du_zipWith_156 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 -> T_All_50 -> T_All_50
du_zipWith_156 v0 v1 v2 v3 v4
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             seq (coe v2)
             (coe seq (coe v3) (coe seq (coe v4) (coe C_'91''93'_56)))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v6 v7
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v9 v10
               -> case coe v3 of
                    C__'8759'__62 v14 v15
                      -> case coe v4 of
                           C__'8759'__62 v19 v20
                             -> coe
                                  C__'8759'__62 (coe v0 v6 v9 v14 v19)
                                  (coe
                                     du_zipWith_156 (coe v0) (coe v7) (coe v10) (coe v15) (coe v20))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.lookupAny
d_lookupAny_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  T_All_50 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_lookupAny_180 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8 v9
  = du_lookupAny_180 v5 v8 v9
du_lookupAny_180 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_lookupAny_180 v0 v1 v2
  = case coe v1 of
      C__'8759'__62 v6 v7
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v9 v10
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_here_44 v14
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v14)
                    MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_there_54 v14
                      -> coe du_lookupAny_180 (coe v10) (coe v7) (coe v14)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.lookupWith
d_lookupWith_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_All_50 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
d_lookupWith_196 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11 v12
  = du_lookupWith_196 v9 v10 v11 v12
du_lookupWith_196 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_All_50 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
du_lookupWith_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Data.Product.Base.du_uncurry_244
      (coe
         v1
         (coe
            MAlonzo.Code.Data.Vec.Relation.Unary.Any.du_lookup_110 (coe v0)
            (coe v3)))
      (coe du_lookupAny_180 (coe v0) (coe v2) (coe v3))
-- Data.Vec.Relation.Unary.All.lookup
d_lookup_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
d_lookup_206 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 ~v7 = du_lookup_206 v5 v6
du_lookup_206 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
du_lookup_206 v0 v1
  = coe du_lookupWith_196 (coe v0) (coe (\ v2 v3 v4 -> v3)) (coe v1)
-- Data.Vec.Relation.Unary.All..extendedlambda0
d_'46'extendedlambda0_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> AgdaAny
d_'46'extendedlambda0_210 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9
                          ~v10
  = du_'46'extendedlambda0_210 v9
du_'46'extendedlambda0_210 :: AgdaAny -> AgdaAny
du_'46'extendedlambda0_210 v0 = coe v0
-- Data.Vec.Relation.Unary.All._._._≈_
d__'8776'__230 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> ()
d__'8776'__230 = erased
-- Data.Vec.Relation.Unary.All._._._∈_
d__'8712'__254 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> ()) ->
  AgdaAny -> Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> ()
d__'8712'__254 = erased
-- Data.Vec.Relation.Unary.All._.lookupₛ
d_lookup'8347'_268 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_All_50 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
d_lookup'8347'_268 ~v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9
  = du_lookup'8347'_268 v3 v6 v7 v8 v9
du_lookup'8347'_268 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_All_50 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Relation.Unary.Any.T_Any_32 -> AgdaAny
du_lookup'8347'_268 v0 v1 v2 v3 v4
  = coe
      du_lookupWith_196 (coe v1)
      (coe
         (\ v5 v6 v7 ->
            coe
              v2 v5 v4
              (coe
                 MAlonzo.Code.Relation.Binary.Structures.d_sym_38
                 (MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0))
                 v4 v5 v7)
              v6))
      (coe v3)
-- Data.Vec.Relation.Unary.All.all?
d_all'63'_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_280 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_all'63'_280 v5 v6
du_all'63'_280 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_all'63'_280 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
             (coe
                MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                (coe C_'91''93'_56))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe
                MAlonzo.Code.Data.Product.Base.du_uncurry_244 (coe C__'8759'__62))
             (coe du_uncons_94)
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__84
                (coe v0 v3) (coe du_all'63'_280 (coe v0) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.universal
d_universal_292 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  Integer -> MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50
d_universal_292 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_universal_292 v4 v6
du_universal_292 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_All_50
du_universal_292 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe C_'91''93'_56
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             C__'8759'__62 (coe v0 v3) (coe du_universal_292 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.irrelevant
d_irrelevant_304 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_All_50 ->
  T_All_50 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_irrelevant_304 = erased
-- Data.Vec.Relation.Unary.All.satisfiable
d_satisfiable_320 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfiable_320 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_satisfiable_320 v4 v5
du_satisfiable_320 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfiable_320 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32) (coe C_'91''93'_56)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_map_128
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 (coe v2))
                       (coe (\ v5 -> coe C__'8759'__62 v3))
                       (coe du_satisfiable_320 (coe v0) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.decide
d_decide_336 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_decide_336 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_decide_336 v7 v8
du_decide_336 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_decide_336 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe C_'91''93'_56)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> let v5 = coe v0 v3 in
           coe
             (case coe v5 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v6
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C__'8759'__62 v6)
                       (coe MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_there_54)
                       (coe du_decide_336 (coe v0) (coe v4))
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v6
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                       (coe MAlonzo.Code.Data.Vec.Relation.Unary.Any.C_here_44 v6)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.All.all
d_all_368 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all_368 v0 v1 v2 v3 v4 v5 v6 = coe du_all'63'_280 v5 v6
