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

module MAlonzo.Code.Data.List.Relation.Unary.First where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Builtin.Unit
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core

-- Data.List.Relation.Unary.First._.First
d_First_26 a0 a1 a2 a3 a4 a5 a6 = ()
data T_First_26
  = C_'91'_'93'_32 AgdaAny | C__'8759'__38 AgdaAny T_First_26
-- Data.List.Relation.Unary.First._.FirstView
d_FirstView_40 a0 a1 a2 a3 a4 a5 a6 = ()
data T_FirstView_40
  = C__'43''43'_'8759'__48 [AgdaAny] AgdaAny
                           MAlonzo.Code.Data.List.Relation.Unary.All.T_All_44 AgdaAny
                           [AgdaAny]
-- Data.List.Relation.Unary.First._.map
d_map_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
d_map_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 ~v9 v10 v11 v12 v13
  = du_map_70 v10 v11 v12 v13
du_map_70 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
du_map_70 v0 v1 v2 v3
  = case coe v3 of
      C_'91'_'93'_32 v6
        -> case coe v2 of
             (:) v7 v8 -> coe C_'91'_'93'_32 (coe v1 v7 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      C__'8759'__38 v6 v7
        -> case coe v2 of
             (:) v8 v9
               -> coe
                    C__'8759'__38 (coe v0 v8 v6)
                    (coe du_map_70 (coe v0) (coe v1) (coe v9) (coe v7))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.map₁
d_map'8321'_102 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
d_map'8321'_102 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9
  = du_map'8321'_102 v8 v9
du_map'8321'_102 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
du_map'8321'_102 v0 v1
  = coe du_map_70 (coe v0) (coe (\ v2 v3 -> v3)) (coe v1)
-- Data.List.Relation.Unary.First._.map₂
d_map'8322'_106 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
d_map'8322'_106 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 = du_map'8322'_106
du_map'8322'_106 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  [AgdaAny] -> T_First_26 -> T_First_26
du_map'8322'_106 = coe du_map_70 (coe (\ v0 v1 -> v1))
-- Data.List.Relation.Unary.First._.refine
d_refine_108 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> T_First_26 -> T_First_26
d_refine_108 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 v9 v10
  = du_refine_108 v8 v9 v10
du_refine_108 ::
  (AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> T_First_26 -> T_First_26
du_refine_108 v0 v1 v2
  = case coe v2 of
      C_'91'_'93'_32 v5 -> coe C_'91'_'93'_32 v5
      C__'8759'__38 v5 v6
        -> case coe v1 of
             (:) v7 v8
               -> let v9 = coe v0 v7 v5 in
                  coe
                    (case coe v9 of
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v10
                         -> coe C_'91'_'93'_32 v10
                       MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v10
                         -> coe
                              C__'8759'__38 v10 (coe du_refine_108 (coe v0) (coe v8) (coe v6))
                       _ -> MAlonzo.RTE.mazUnreachableError)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.empty
d_empty_152 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  T_First_26 -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_empty_152 = erased
-- Data.List.Relation.Unary.First._.tail
d_tail_158 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_First_26 -> T_First_26
d_tail_158 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 ~v8 v9 = du_tail_158 v9
du_tail_158 :: T_First_26 -> T_First_26
du_tail_158 v0
  = case coe v0 of
      C_'91'_'93'_32 v3
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      C__'8759'__38 v3 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.index
d_index_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> T_First_26 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_index_170 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_index_170 v6 v7
du_index_170 ::
  [AgdaAny] -> T_First_26 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_index_170 v0 v1
  = case coe v1 of
      C_'91'_'93'_32 v4 -> coe MAlonzo.Code.Data.Fin.Base.C_zero_12
      C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.Fin.Base.C_suc_16
                    (coe du_index_170 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.index-satisfied
d_index'45'satisfied_180 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) -> [AgdaAny] -> T_First_26 -> AgdaAny
d_index'45'satisfied_180 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_index'45'satisfied_180 v6 v7
du_index'45'satisfied_180 :: [AgdaAny] -> T_First_26 -> AgdaAny
du_index'45'satisfied_180 v0 v1
  = case coe v1 of
      C_'91'_'93'_32 v4 -> coe v4
      C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7 -> coe du_index'45'satisfied_180 (coe v7) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.satisfied
d_satisfied_188 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  [AgdaAny] -> T_First_26 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfied_188 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_satisfied_188 v6 v7
du_satisfied_188 ::
  [AgdaAny] -> T_First_26 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfied_188 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Data.List.Base.du_lookup_390 (coe v0)
         (coe du_index_170 (coe v0) (coe v1)))
      (coe du_index'45'satisfied_180 (coe v0) (coe v1))
-- Data.List.Relation.Unary.First._.satisfiable
d_satisfiable_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfiable_192 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6
  = du_satisfiable_192 v6
du_satisfiable_192 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfiable_192 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
             (coe C_'91'_'93'_32 v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.first
d_first_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_first_198 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_first_198 v6 v7
du_first_198 ::
  (AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30) ->
  [AgdaAny] -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_first_198 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
             (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
      (:) v2 v3
        -> let v4 = coe v0 v2 in
           coe
             (case coe v4 of
                MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v5
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.du_map_84 (coe C__'8759'__38 v5)
                       (coe MAlonzo.Code.Data.List.Relation.Unary.All.C__'8759'__60 v5)
                       (coe du_first_198 (coe v0) (coe v3))
                MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v5
                  -> coe
                       MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe C_'91'_'93'_32 v5)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.fromAny
d_fromAny_240 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> T_First_26
d_fromAny_240 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_fromAny_240 v4 v5
du_fromAny_240 ::
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> T_First_26
du_fromAny_240 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v4
        -> coe C_'91'_'93'_32 v4
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v4
        -> case coe v0 of
             (:) v5 v6
               -> coe
                    C__'8759'__38 (coe MAlonzo.Code.Agda.Builtin.Unit.C_tt_8)
                    (coe du_fromAny_240 (coe v6) (coe v4))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.List.Relation.Unary.First._.toAny
d_toAny_250 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  T_First_26 -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_toAny_250 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 = du_toAny_250 v6 v7
du_toAny_250 ::
  [AgdaAny] ->
  T_First_26 -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_toAny_250 v0 v1
  = case coe v1 of
      C_'91'_'93'_32 v4
        -> coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v4
      C__'8759'__38 v4 v5
        -> case coe v0 of
             (:) v6 v7
               -> coe
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                    (coe du_toAny_250 (coe v7) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
