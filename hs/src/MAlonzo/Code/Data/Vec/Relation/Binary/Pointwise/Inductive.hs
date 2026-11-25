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

module MAlonzo.Code.Data.Vec.Relation.Binary.Pointwise.Inductive where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Data.Vec.Relation.Unary.All
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Vec.Relation.Binary.Pointwise.Inductive.Pointwise
d_Pointwise_56 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_Pointwise_56
  = C_'91''93'_70 | C__'8759'__88 AgdaAny T_Pointwise_56
-- Data.Vec.Relation.Binary.Pointwise.Inductive.length-equal
d_length'45'equal_100 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'equal_100 = erased
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.head
d_head_128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56 -> AgdaAny
d_head_128 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
  = du_head_128 v12
du_head_128 :: T_Pointwise_56 -> AgdaAny
du_head_128 v0
  = case coe v0 of
      C__'8759'__88 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tail
d_tail_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_tail_146 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
  = du_tail_146 v12
du_tail_146 :: T_Pointwise_56 -> T_Pointwise_56
du_tail_146 v0
  = case coe v0 of
      C__'8759'__88 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.uncons
d_uncons_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_164 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
  = du_uncons_164
du_uncons_164 ::
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_164
  = coe
      MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
      (coe du_head_128) (coe du_tail_146)
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.lookup
d_lookup_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_lookup_174 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_lookup_174 v7 v8 v9 v10
du_lookup_174 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_lookup_174 v0 v1 v2 v3
  = case coe v2 of
      C__'8759'__88 v10 v11
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> case coe v3 of
                           MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v10
                           MAlonzo.Code.Data.Fin.Base.C_suc_16 v19
                             -> coe du_lookup_174 (coe v14) (coe v17) (coe v11) (coe v19)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.map
d_map_190 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_map_190 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 v11 v12 v13
  = du_map_190 v8 v11 v12 v13
du_map_190 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_map_190 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_70 -> coe v3
      C__'8759'__88 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__88 (coe v0 v13 v16 v10)
                           (coe du_map_190 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.irrelevant
d_irrelevant_206 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_irrelevant_206 = erased
-- Data.Vec.Relation.Binary.Pointwise.Inductive.refl
d_refl_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
d_refl_224 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_refl_224 v5 v6
du_refl_224 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_refl_224 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe C_'91''93'_70
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             C__'8759'__88 (coe v0 v3) (coe du_refl_224 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.sym
d_sym_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_sym_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 v12 v13
  = du_sym_242 v10 v11 v12 v13
du_sym_242 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_sym_242 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_70 -> coe v3
      C__'8759'__88 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__88 (coe v0 v13 v16 v10)
                           (coe du_sym_242 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.trans
d_trans_264 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
d_trans_264 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
            ~v13 ~v14 v15 v16 v17 v18 v19 v20
  = du_trans_264 v15 v16 v17 v18 v19 v20
du_trans_264 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
du_trans_264 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_'91''93'_70 -> coe seq (coe v5) (coe v4)
      C__'8759'__88 v12 v13
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v18 v19
                      -> case coe v5 of
                           C__'8759'__88 v26 v27
                             -> case coe v3 of
                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v29 v30
                                    -> coe
                                         C__'8759'__88 (coe v0 v15 v18 v29 v12 v26)
                                         (coe
                                            du_trans_264 (coe v0) (coe v16) (coe v19) (coe v30)
                                            (coe v13) (coe v27))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.antisym
d_antisym_288 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
d_antisym_288 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
              v13 v14 v15 v16
  = du_antisym_288 v12 v13 v14 v15 v16
du_antisym_288 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
du_antisym_288 v0 v1 v2 v3 v4
  = case coe v3 of
      C_'91''93'_70 -> coe seq (coe v4) (coe v3)
      C__'8759'__88 v11 v12
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v14 v15
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v17 v18
                      -> case coe v4 of
                           C__'8759'__88 v25 v26
                             -> coe
                                  C__'8759'__88 (coe v0 v14 v17 v11 v25)
                                  (coe
                                     du_antisym_288 (coe v0) (coe v15) (coe v18) (coe v12)
                                     (coe v26))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.decidable
d_decidable_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_decidable_308 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9 v10
  = du_decidable_308 v6 v9 v10
du_decidable_308 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_decidable_308 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe C_'91''93'_70))
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
                    (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_uncurry_244 (coe C__'8759'__88))
                    (coe du_uncons_164)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''63'__84
                       (coe v0 v4 v7) (coe du_decidable_308 (coe v0) (coe v5) (coe v8)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.isEquivalence
d_isEquivalence_346 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_isEquivalence_346 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_isEquivalence_346 v4
du_isEquivalence_346 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_isEquivalence_346 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_46
      (coe
         du_refl_224
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_36 (coe v0)))
      (coe
         du_sym_242
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_38 (coe v0)))
      (coe
         du_trans_264
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_40 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.isDecEquivalence
d_isDecEquivalence_370 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48 ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
d_isDecEquivalence_370 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_isDecEquivalence_370 v4
du_isDecEquivalence_370 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_48
du_isDecEquivalence_370 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_70
      (coe
         du_isEquivalence_346
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_54
            (coe v0)))
      (coe
         du_decidable_308
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__56 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive.setoid
d_setoid_396 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_setoid_396 ~v0 ~v1 v2 ~v3 = du_setoid_396 v2
du_setoid_396 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_setoid_396 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (coe
         du_isEquivalence_346
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_62 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive.decSetoid
d_decSetoid_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90 ->
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
d_decSetoid_430 ~v0 ~v1 v2 ~v3 = du_decSetoid_430 v2
du_decSetoid_430 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_90
du_decSetoid_430 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_134
      (coe
         du_isDecEquivalence_370
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecEquivalence_106
            (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.map⁺
d_map'8314'_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_map'8314'_506 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 v14 ~v15 ~v16 v17 v18 v19
  = du_map'8314'_506 v14 v17 v18 v19
du_map'8314'_506 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_map'8314'_506 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_70 -> coe v3
      C__'8759'__88 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__88 (coe v0 v13 v16 v10)
                           (coe du_map'8314'_506 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++⁺
d_'43''43''8314'_544 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
d_'43''43''8314'_544 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                     v11 ~v12 ~v13 v14 v15
  = du_'43''43''8314'_544 v10 v11 v14 v15
du_'43''43''8314'_544 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
du_'43''43''8314'_544 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_70 -> coe v3
      C__'8759'__88 v10 v11
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__88 v10
                           (coe du_'43''43''8314'_544 (coe v14) (coe v17) (coe v11) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++ˡ⁻
d_'43''43''737''8315'_566 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_'43''43''737''8315'_566 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                          ~v10 ~v11 v12
  = du_'43''43''737''8315'_566 v8 v9 v12
du_'43''43''737''8315'_566 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_'43''43''737''8315'_566 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe C_'91''93'_70)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> case coe v2 of
                    C__'8759'__88 v15 v16
                      -> coe
                           C__'8759'__88 v15
                           (coe du_'43''43''737''8315'_566 (coe v5) (coe v8) (coe v16))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++ʳ⁻
d_'43''43''691''8315'_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_'43''43''691''8315'_592 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                          ~v10 ~v11 v12
  = du_'43''43''691''8315'_592 v8 v9 v12
du_'43''43''691''8315'_592 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_'43''43''691''8315'_592 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe v2)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> case coe v2 of
                    C__'8759'__88 v15 v16
                      -> coe du_'43''43''691''8315'_592 (coe v5) (coe v8) (coe v16)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++⁻
d_'43''43''8315'_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''8315'_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 ~v10
                     ~v11 v12
  = du_'43''43''8315'_618 v8 v9 v12
du_'43''43''8315'_618 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''8315'_618 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'43''43''737''8315'_566 (coe v0) (coe v1) (coe v2))
      (coe du_'43''43''691''8315'_592 (coe v0) (coe v1) (coe v2))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.concat⁺
d_concat'8314'_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_concat'8314'_650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                   v12
  = du_concat'8314'_650 v10 v11 v12
du_concat'8314'_650 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_concat'8314'_650 v0 v1 v2
  = case coe v2 of
      C_'91''93'_70 -> coe v2
      C__'8759'__88 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           du_'43''43''8314'_544 (coe v12) (coe v15) (coe v9)
                           (coe du_concat'8314'_650 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.concat⁻
d_concat'8315'_664 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_concat'8315'_664 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_concat'8315'_664 v8 v9 v10
du_concat'8315'_664 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_concat'8315'_664 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe seq (coe v2) (coe C_'91''93'_70))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    C__'8759'__88
                    (coe du_'43''43''737''8315'_566 (coe v4) (coe v7) (coe v2))
                    (coe
                       du_concat'8315'_664 (coe v5) (coe v8)
                       (coe du_'43''43''691''8315'_592 (coe v4) (coe v7) (coe v2)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tabulate⁺
d_tabulate'8314'_696 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> T_Pointwise_56
d_tabulate'8314'_696 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_tabulate'8314'_696 v6 v9
du_tabulate'8314'_696 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> T_Pointwise_56
du_tabulate'8314'_696 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_70
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                C__'8759'__88 (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                (coe
                   du_tabulate'8314'_696 (coe v2)
                   (coe
                      (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)))))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tabulate⁻
d_tabulate'8315'_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_tabulate'8315'_712 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_tabulate'8315'_712 v9 v10
du_tabulate'8315'_712 ::
  T_Pointwise_56 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_tabulate'8315'_712 v0 v1
  = case coe v0 of
      C__'8759'__88 v8 v9
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v8
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v11
               -> coe du_tabulate'8315'_712 (coe v9) (coe v11)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.cong-[_]≔
d_cong'45''91'_'93''8788'_742 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
d_cong'45''91'_'93''8788'_742 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8 v9
                              v10
  = du_cong'45''91'_'93''8788'_742 v4 v6 v7 v8 v9 v10
du_cong'45''91'_'93''8788'_742 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> T_Pointwise_56
du_cong'45''91'_'93''8788'_742 v0 v1 v2 v3 v4 v5
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v5 of
             C__'8759'__88 v13 v14 -> coe C__'8759'__88 (coe v0 v2) v14
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
        -> case coe v5 of
             C__'8759'__88 v14 v15
               -> case coe v3 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v17 v18
                      -> case coe v4 of
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v20 v21
                             -> coe
                                  C__'8759'__88 v14
                                  (coe
                                     du_cong'45''91'_'93''8788'_742 (coe v0) (coe v7) (coe v2)
                                     (coe v18) (coe v21) (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._._.zipWith-assoc
d_zipWith'45'assoc_772 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
d_zipWith'45'assoc_772 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_zipWith'45'assoc_772 v6 v7 v8 v9
du_zipWith'45'assoc_772 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_zipWith'45'assoc_772 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe seq (coe v3) (coe C_'91''93'_70))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v5 v6
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> case coe v3 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v11 v12
                      -> coe
                           C__'8759'__88 (coe v0 v5 v8 v11)
                           (coe du_zipWith'45'assoc_772 (coe v0) (coe v6) (coe v9) (coe v12))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._._.zipWith-identityˡ
d_zipWith'45'identity'737'_798 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Integer ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
d_zipWith'45'identity'737'_798 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_zipWith'45'identity'737'_798 v7 v8
du_zipWith'45'identity'737'_798 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_zipWith'45'identity'737'_798 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe C_'91''93'_70
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             C__'8759'__88 (coe v0 v3)
             (coe du_zipWith'45'identity'737'_798 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._._.zipWith-identityʳ
d_zipWith'45'identity'691'_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Integer ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
d_zipWith'45'identity'691'_808 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8
  = du_zipWith'45'identity'691'_808 v7 v8
du_zipWith'45'identity'691'_808 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_zipWith'45'identity'691'_808 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe C_'91''93'_70
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             C__'8759'__88 (coe v0 v3)
             (coe du_zipWith'45'identity'691'_808 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._._.zipWith-comm
d_zipWith'45'comm_824 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
d_zipWith'45'comm_824 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8
  = du_zipWith'45'comm_824 v6 v7 v8
du_zipWith'45'comm_824 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_zipWith'45'comm_824 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe C_'91''93'_70)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    C__'8759'__88 (coe v0 v4 v7)
                    (coe du_zipWith'45'comm_824 (coe v0) (coe v5) (coe v8))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._._.zipWith-cong
d_zipWith'45'cong_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
d_zipWith'45'cong_856 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10 v11
                      v12 v13
  = du_zipWith'45'cong_856 v7 v8 v9 v10 v11 v12 v13
du_zipWith'45'cong_856 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  (AgdaAny ->
   AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  T_Pointwise_56 -> T_Pointwise_56 -> T_Pointwise_56
du_zipWith'45'cong_856 v0 v1 v2 v3 v4 v5 v6
  = case coe v5 of
      C_'91''93'_70 -> coe seq (coe v6) (coe v5)
      C__'8759'__88 v13 v14
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v19 v20
                      -> case coe v6 of
                           C__'8759'__88 v27 v28
                             -> case coe v2 of
                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v30 v31
                                    -> case coe v3 of
                                         MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v33 v34
                                           -> coe
                                                C__'8759'__88 (coe v4 v16 v19 v30 v33 v13 v27)
                                                (coe
                                                   du_zipWith'45'cong_856 (coe v17) (coe v20)
                                                   (coe v31) (coe v34) (coe v4) (coe v14) (coe v28))
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.Pointwiseˡ⇒All
d_Pointwise'737''8658'All_892 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
d_Pointwise'737''8658'All_892 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                              v10
  = du_Pointwise'737''8658'All_892 v8 v9 v10
du_Pointwise'737''8658'All_892 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
du_Pointwise'737''8658'All_892 v0 v1 v2
  = case coe v2 of
      C_'91''93'_70
        -> coe MAlonzo.Code.Data.Vec.Relation.Unary.All.C_'91''93'_56
      C__'8759'__88 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9
                           (coe du_Pointwise'737''8658'All_892 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.Pointwiseʳ⇒All
d_Pointwise'691''8658'All_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
d_Pointwise'691''8658'All_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_Pointwise'691''8658'All_908 v7 v8 v9
du_Pointwise'691''8658'All_908 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
du_Pointwise'691''8658'All_908 v0 v1 v2
  = case coe v2 of
      C_'91''93'_70
        -> coe MAlonzo.Code.Data.Vec.Relation.Unary.All.C_'91''93'_56
      C__'8759'__88 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9
                           (coe du_Pointwise'691''8658'All_908 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.All⇒Pointwiseˡ
d_All'8658'Pointwise'737'_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_56
d_All'8658'Pointwise'737'_924 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_All'8658'Pointwise'737'_924 v7 v8 v9
du_All'8658'Pointwise'737'_924 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_56
du_All'8658'Pointwise'737'_924 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe C_'91''93'_70)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9 v10
               -> case coe v0 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
                      -> coe
                           C__'8759'__88 v9
                           (coe du_All'8658'Pointwise'737'_924 (coe v13) (coe v5) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.All⇒Pointwiseʳ
d_All'8658'Pointwise'691'_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_56
d_All'8658'Pointwise'691'_940 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_All'8658'Pointwise'691'_940 v7 v8 v9
du_All'8658'Pointwise'691'_940 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_56
du_All'8658'Pointwise'691'_940 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe C_'91''93'_70)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9 v10
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
                      -> coe
                           C__'8759'__88 v9
                           (coe du_All'8658'Pointwise'691'_940 (coe v5) (coe v13) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.Pointwise-≡⇒≡
d_Pointwise'45''8801''8658''8801'_952 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_56 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Pointwise'45''8801''8658''8801'_952 = erased
-- Data.Vec.Relation.Binary.Pointwise.Inductive.≡⇒Pointwise-≡
d_'8801''8658'Pointwise'45''8801'_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_Pointwise_56
d_'8801''8658'Pointwise'45''8801'_964 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_'8801''8658'Pointwise'45''8801'_964 v3
du_'8801''8658'Pointwise'45''8801'_964 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_56
du_'8801''8658'Pointwise'45''8801'_964 v0
  = coe du_refl_224 erased (coe v0)
-- Data.Vec.Relation.Binary.Pointwise.Inductive.Pointwise-≡↔≡
d_Pointwise'45''8801''8596''8801'_972 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_Pointwise'45''8801''8596''8801'_972 ~v0 ~v1 ~v2 v3 ~v4
  = du_Pointwise'45''8801''8596''8801'_972 v3
du_Pointwise'45''8801''8596''8801'_972 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_Pointwise'45''8801''8596''8801'_972 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
      (\ v1 -> coe du_'8801''8658'Pointwise'45''8801'_964 (coe v0))
