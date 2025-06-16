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
d_Pointwise_54 a0 a1 a2 a3 a4 a5 a6 a7 a8 a9 = ()
data T_Pointwise_54
  = C_'91''93'_68 | C__'8759'__86 AgdaAny T_Pointwise_54
-- Data.Vec.Relation.Binary.Pointwise.Inductive.length-equal
d_length'45'equal_98 ::
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
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'45'equal_98 = erased
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.head
d_head_126 ::
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
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_54 -> AgdaAny
d_head_126 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
  = du_head_126 v12
du_head_126 :: T_Pointwise_54 -> AgdaAny
du_head_126 v0
  = case coe v0 of
      C__'8759'__86 v7 v8 -> coe v7
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tail
d_tail_144 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_tail_144 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 v12
  = du_tail_144 v12
du_tail_144 :: T_Pointwise_54 -> T_Pointwise_54
du_tail_144 v0
  = case coe v0 of
      C__'8759'__86 v7 v8 -> coe v8
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.uncons
d_uncons_162 ::
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
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_uncons_162 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
  = du_uncons_162
du_uncons_162 ::
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_uncons_162
  = coe
      MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112
      (coe du_head_126) (coe du_tail_144)
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.lookup
d_lookup_172 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_lookup_172 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9 v10
  = du_lookup_172 v7 v8 v9 v10
du_lookup_172 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_lookup_172 v0 v1 v2 v3
  = case coe v2 of
      C__'8759'__86 v10 v11
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> case coe v3 of
                           MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v10
                           MAlonzo.Code.Data.Fin.Base.C_suc_16 v19
                             -> coe du_lookup_172 (coe v14) (coe v17) (coe v11) (coe v19)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.map
d_map_188 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_map_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 ~v9 ~v10 v11 v12 v13
  = du_map_188 v8 v11 v12 v13
du_map_188 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_map_188 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_68 -> coe v3
      C__'8759'__86 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__86 (coe v0 v13 v16 v10)
                           (coe du_map_188 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.refl
d_refl_202 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_54
d_refl_202 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_refl_202 v5 v6
du_refl_202 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_54
du_refl_202 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32 -> coe C_'91''93'_68
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             C__'8759'__86 (coe v0 v3) (coe du_refl_202 (coe v0) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.sym
d_sym_220 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  Integer ->
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
d_sym_220 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10 v11 v12
  = du_sym_220 v9 v10 v11 v12
du_sym_220 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_sym_220 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_68 -> coe v3
      C__'8759'__86 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__86 (coe v0 v13 v16 v10)
                           (coe du_sym_220 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.trans
d_trans_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
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
  T_Pointwise_54 -> T_Pointwise_54 -> T_Pointwise_54
d_trans_242 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11 ~v12
            v13 v14 v15 v16 v17 v18
  = du_trans_242 v13 v14 v15 v16 v17 v18
du_trans_242 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54 -> T_Pointwise_54
du_trans_242 v0 v1 v2 v3 v4 v5
  = case coe v4 of
      C_'91''93'_68 -> coe seq (coe v5) (coe v4)
      C__'8759'__86 v12 v13
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v18 v19
                      -> case coe v5 of
                           C__'8759'__86 v26 v27
                             -> case coe v3 of
                                  MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v29 v30
                                    -> coe
                                         C__'8759'__86 (coe v0 v15 v18 v29 v12 v26)
                                         (coe
                                            du_trans_242 (coe v0) (coe v16) (coe v19) (coe v30)
                                            (coe v13) (coe v27))
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.decidable
d_decidable_262 ::
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
d_decidable_262 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9 v10
  = du_decidable_262 v6 v9 v10
du_decidable_262 ::
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_decidable_262 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
               -> coe
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
                    (coe MAlonzo.Code.Agda.Builtin.Bool.C_true_10)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22
                       (coe C_'91''93'_68))
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
                    MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_168
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_uncurry_244 (coe C__'8759'__86))
                    (coe du_uncons_162)
                    (coe
                       MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'215''45'dec__76
                       (coe v0 v4 v7) (coe du_decidable_262 (coe v0) (coe v5) (coe v8)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.isEquivalence
d_isEquivalence_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_isEquivalence_300 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_isEquivalence_300 v4
du_isEquivalence_300 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_isEquivalence_300 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_745
      (coe
         du_refl_202
         (coe MAlonzo.Code.Relation.Binary.Structures.d_refl_34 (coe v0)))
      (coe
         du_sym_220
         (coe MAlonzo.Code.Relation.Binary.Structures.d_sym_36 (coe v0)))
      (coe
         du_trans_242
         (coe MAlonzo.Code.Relation.Binary.Structures.d_trans_38 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.isDecEquivalence
d_isDecEquivalence_324 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  Integer ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
d_isDecEquivalence_324 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_isDecEquivalence_324 v4
du_isDecEquivalence_324 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44 ->
  MAlonzo.Code.Relation.Binary.Structures.T_IsDecEquivalence_44
du_isDecEquivalence_324 v0
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsDecEquivalence'46'constructor_3083
      (coe
         du_isEquivalence_300
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d_isEquivalence_50
            (coe v0)))
      (coe
         du_decidable_262
         (coe
            MAlonzo.Code.Relation.Binary.Structures.d__'8799'__52 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive.setoid
d_setoid_350 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_setoid_350 ~v0 ~v1 v2 ~v3 = du_setoid_350 v2
du_setoid_350 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_setoid_350 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_761
      (coe
         du_isEquivalence_300
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isEquivalence_60 (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive.decSetoid
d_decSetoid_384 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86 ->
  Integer -> MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
d_decSetoid_384 ~v0 ~v1 v2 ~v3 = du_decSetoid_384 v2
du_decSetoid_384 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86 ->
  MAlonzo.Code.Relation.Binary.Bundles.T_DecSetoid_86
du_decSetoid_384 v0
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_DecSetoid'46'constructor_1435
      (coe
         du_isDecEquivalence_324
         (coe
            MAlonzo.Code.Relation.Binary.Bundles.d_isDecEquivalence_102
            (coe v0)))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.map⁺
d_map'8314'_460 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_map'8314'_460 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 ~v10 ~v11
                ~v12 ~v13 v14 ~v15 ~v16 v17 v18 v19
  = du_map'8314'_460 v14 v17 v18 v19
du_map'8314'_460 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_map'8314'_460 v0 v1 v2 v3
  = case coe v3 of
      C_'91''93'_68 -> coe v3
      C__'8759'__86 v10 v11
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v2 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__86 (coe v0 v13 v16 v10)
                           (coe du_map'8314'_460 (coe v0) (coe v14) (coe v17) (coe v11))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++⁺
d_'43''43''8314'_498 ::
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
  T_Pointwise_54 -> T_Pointwise_54 -> T_Pointwise_54
d_'43''43''8314'_498 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10
                     v11 ~v12 ~v13 v14 v15
  = du_'43''43''8314'_498 v10 v11 v14 v15
du_'43''43''8314'_498 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54 -> T_Pointwise_54
du_'43''43''8314'_498 v0 v1 v2 v3
  = case coe v2 of
      C_'91''93'_68 -> coe v3
      C__'8759'__86 v10 v11
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v13 v14
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v16 v17
                      -> coe
                           C__'8759'__86 v10
                           (coe du_'43''43''8314'_498 (coe v14) (coe v17) (coe v11) (coe v3))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++ˡ⁻
d_'43''43''737''8315'_520 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_'43''43''737''8315'_520 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                          ~v10 ~v11 v12
  = du_'43''43''737''8315'_520 v8 v9 v12
du_'43''43''737''8315'_520 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_'43''43''737''8315'_520 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe C_'91''93'_68)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> case coe v2 of
                    C__'8759'__86 v15 v16
                      -> coe
                           C__'8759'__86 v15
                           (coe du_'43''43''737''8315'_520 (coe v5) (coe v8) (coe v16))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++ʳ⁻
d_'43''43''691''8315'_546 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_'43''43''691''8315'_546 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                          ~v10 ~v11 v12
  = du_'43''43''691''8315'_546 v8 v9 v12
du_'43''43''691''8315'_546 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_'43''43''691''8315'_546 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe v2)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> case coe v2 of
                    C__'8759'__86 v15 v16
                      -> coe du_'43''43''691''8315'_546 (coe v5) (coe v8) (coe v16)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.++⁻
d_'43''43''8315'_572 ::
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
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'43''43''8315'_572 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 ~v10
                     ~v11 v12
  = du_'43''43''8315'_572 v8 v9 v12
du_'43''43''8315'_572 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'43''43''8315'_572 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'43''43''737''8315'_520 (coe v0) (coe v1) (coe v2))
      (coe du_'43''43''691''8315'_546 (coe v0) (coe v1) (coe v2))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.concat⁺
d_concat'8314'_604 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_concat'8314'_604 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11
                   v12
  = du_concat'8314'_604 v10 v11 v12
du_concat'8314'_604 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_concat'8314'_604 v0 v1 v2
  = case coe v2 of
      C_'91''93'_68 -> coe v2
      C__'8759'__86 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           du_'43''43''8314'_498 (coe v12) (coe v15) (coe v9)
                           (coe du_concat'8314'_604 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.concat⁻
d_concat'8315'_618 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_concat'8315'_618 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_concat'8315'_618 v8 v9 v10
du_concat'8315'_618 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_concat'8315'_618 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v1) (coe seq (coe v2) (coe C_'91''93'_68))
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    C__'8759'__86
                    (coe du_'43''43''737''8315'_520 (coe v4) (coe v7) (coe v2))
                    (coe
                       du_concat'8315'_618 (coe v5) (coe v8)
                       (coe du_'43''43''691''8315'_546 (coe v4) (coe v7) (coe v2)))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tabulate⁺
d_tabulate'8314'_650 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> T_Pointwise_54
d_tabulate'8314'_650 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 ~v8 v9
  = du_tabulate'8314'_650 v6 v9
du_tabulate'8314'_650 ::
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) -> T_Pointwise_54
du_tabulate'8314'_650 v0 v1
  = case coe v0 of
      0 -> coe C_'91''93'_68
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                C__'8759'__86 (coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_zero_12))
                (coe
                   du_tabulate'8314'_650 (coe v2)
                   (coe
                      (\ v3 -> coe v1 (coe MAlonzo.Code.Data.Fin.Base.C_suc_16 v3)))))
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.tabulate⁻
d_tabulate'8315'_666 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> AgdaAny -> ()) ->
  Integer ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  (MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny) ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
d_tabulate'8315'_666 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 v10
  = du_tabulate'8315'_666 v9 v10
du_tabulate'8315'_666 ::
  T_Pointwise_54 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10 -> AgdaAny
du_tabulate'8315'_666 v0 v1
  = case coe v0 of
      C__'8759'__86 v8 v9
        -> case coe v1 of
             MAlonzo.Code.Data.Fin.Base.C_zero_12 -> coe v8
             MAlonzo.Code.Data.Fin.Base.C_suc_16 v11
               -> coe du_tabulate'8315'_666 (coe v9) (coe v11)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.cong-[_]≔
d_cong'45''91'_'93''8788'_696 ::
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
  T_Pointwise_54 -> T_Pointwise_54
d_cong'45''91'_'93''8788'_696 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8 v9
                              v10
  = du_cong'45''91'_'93''8788'_696 v4 v6 v7 v8 v9 v10
du_cong'45''91'_'93''8788'_696 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Fin.Base.T_Fin_10 ->
  AgdaAny ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> T_Pointwise_54
du_cong'45''91'_'93''8788'_696 v0 v1 v2 v3 v4 v5
  = case coe v1 of
      MAlonzo.Code.Data.Fin.Base.C_zero_12
        -> case coe v5 of
             C__'8759'__86 v13 v14 -> coe C__'8759'__86 (coe v0 v2) v14
             _ -> MAlonzo.RTE.mazUnreachableError
      MAlonzo.Code.Data.Fin.Base.C_suc_16 v7
        -> case coe v5 of
             C__'8759'__86 v14 v15
               -> case coe v3 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v17 v18
                      -> case coe v4 of
                           MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v20 v21
                             -> coe
                                  C__'8759'__86 v14
                                  (coe
                                     du_cong'45''91'_'93''8788'_696 (coe v0) (coe v7) (coe v2)
                                     (coe v18) (coe v21) (coe v15))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.Pointwiseˡ⇒All
d_Pointwise'737''8658'All_732 ::
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
  T_Pointwise_54 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
d_Pointwise'737''8658'All_732 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
                              v10
  = du_Pointwise'737''8658'All_732 v8 v9 v10
du_Pointwise'737''8658'All_732 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
du_Pointwise'737''8658'All_732 v0 v1 v2
  = case coe v2 of
      C_'91''93'_68
        -> coe MAlonzo.Code.Data.Vec.Relation.Unary.All.C_'91''93'_56
      C__'8759'__86 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9
                           (coe du_Pointwise'737''8658'All_732 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.Pointwiseʳ⇒All
d_Pointwise'691''8658'All_748 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
d_Pointwise'691''8658'All_748 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_Pointwise'691''8658'All_748 v7 v8 v9
du_Pointwise'691''8658'All_748 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50
du_Pointwise'691''8658'All_748 v0 v1 v2
  = case coe v2 of
      C_'91''93'_68
        -> coe MAlonzo.Code.Data.Vec.Relation.Unary.All.C_'91''93'_56
      C__'8759'__86 v9 v10
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v15 v16
                      -> coe
                           MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9
                           (coe du_Pointwise'691''8658'All_748 (coe v13) (coe v16) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.All⇒Pointwiseˡ
d_All'8658'Pointwise'737'_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_54
d_All'8658'Pointwise'737'_764 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_All'8658'Pointwise'737'_764 v7 v8 v9
du_All'8658'Pointwise'737'_764 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_54
du_All'8658'Pointwise'737'_764 v0 v1 v2
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe C_'91''93'_68)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9 v10
               -> case coe v0 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
                      -> coe
                           C__'8759'__86 v9
                           (coe du_All'8658'Pointwise'737'_764 (coe v13) (coe v5) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive._.All⇒Pointwiseʳ
d_All'8658'Pointwise'691'_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_54
d_All'8658'Pointwise'691'_780 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 v8 v9
  = du_All'8658'Pointwise'691'_780 v7 v8 v9
du_All'8658'Pointwise'691'_780 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Relation.Unary.All.T_All_50 -> T_Pointwise_54
du_All'8658'Pointwise'691'_780 v0 v1 v2
  = case coe v0 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe seq (coe v2) (coe C_'91''93'_68)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v4 v5
        -> case coe v2 of
             MAlonzo.Code.Data.Vec.Relation.Unary.All.C__'8759'__62 v9 v10
               -> case coe v1 of
                    MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v12 v13
                      -> coe
                           C__'8759'__86 v9
                           (coe du_All'8658'Pointwise'691'_780 (coe v5) (coe v13) (coe v10))
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Binary.Pointwise.Inductive.Pointwise-≡⇒≡
d_Pointwise'45''8801''8658''8801'_792 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Pointwise_54 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_Pointwise'45''8801''8658''8801'_792 = erased
-- Data.Vec.Relation.Binary.Pointwise.Inductive.≡⇒Pointwise-≡
d_'8801''8658'Pointwise'45''8801'_804 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 -> T_Pointwise_54
d_'8801''8658'Pointwise'45''8801'_804 ~v0 ~v1 ~v2 v3 ~v4 ~v5
  = du_'8801''8658'Pointwise'45''8801'_804 v3
du_'8801''8658'Pointwise'45''8801'_804 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Pointwise_54
du_'8801''8658'Pointwise'45''8801'_804 v0
  = coe du_refl_202 erased (coe v0)
-- Data.Vec.Relation.Binary.Pointwise.Inductive.Pointwise-≡↔≡
d_Pointwise'45''8801''8596''8801'_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
d_Pointwise'45''8801''8596''8801'_812 ~v0 ~v1 ~v2 v3 ~v4
  = du_Pointwise'45''8801''8596''8801'_812 v3
du_Pointwise'45''8801''8596''8801'_812 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1810
du_Pointwise'45''8801''8596''8801'_812 v0
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2414 erased
      (\ v1 -> coe du_'8801''8658'Pointwise'45''8801'_804 (coe v0))
