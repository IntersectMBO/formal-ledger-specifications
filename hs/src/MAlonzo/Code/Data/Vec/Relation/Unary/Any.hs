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

module MAlonzo.Code.Data.Vec.Relation.Unary.Any where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Bool
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.Fin.Base
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.Vec.Base
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Negation.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Data.Vec.Relation.Unary.Any.Any
d_Any_32 a0 a1 a2 a3 a4 a5 = ()
data T_Any_32 = C_here_44 AgdaAny | C_there_54 T_Any_32
-- Data.Vec.Relation.Unary.Any.head
d_head_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny ->
  (T_Any_32 -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Any_32 -> AgdaAny
d_head_58 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_head_58 v8
du_head_58 :: T_Any_32 -> AgdaAny
du_head_58 v0
  = case coe v0 of
      C_here_44 v4 -> coe v4
      C_there_54 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.tail
d_tail_70 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny ->
  (AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  T_Any_32 -> T_Any_32
d_tail_70 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 ~v7 v8 = du_tail_70 v8
du_tail_70 :: T_Any_32 -> T_Any_32
du_tail_70 v0
  = case coe v0 of
      C_here_44 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Negation.Core.du_contradiction_44
             erased
      C_there_54 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.toSum
d_toSum_82 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny -> T_Any_32 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_toSum_82 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 v7 = du_toSum_82 v7
du_toSum_82 :: T_Any_32 -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_toSum_82 v0
  = case coe v0 of
      C_here_44 v4
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 (coe v4)
      C_there_54 v4
        -> coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 (coe v4)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.fromSum
d_fromSum_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Any_32
d_fromSum_90 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6 = du_fromSum_90
du_fromSum_90 ::
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> T_Any_32
du_fromSum_90
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66
      (coe C_here_44) (coe C_there_54)
-- Data.Vec.Relation.Unary.Any.map
d_map_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Any_32 -> T_Any_32
d_map_94 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 ~v7 v8 v9 = du_map_94 v6 v8 v9
du_map_94 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Any_32 -> T_Any_32
du_map_94 v0 v1 v2
  = case coe v2 of
      C_here_44 v6
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> coe C_here_44 (coe v0 v8 v6)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_there_54 v6
        -> case coe v1 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v8 v9
               -> coe C_there_54 (coe du_map_94 (coe v0) (coe v9) (coe v6))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.index
d_index_104 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Any_32 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
d_index_104 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_index_104 v5 v6
du_index_104 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Any_32 -> MAlonzo.Code.Data.Fin.Base.T_Fin_10
du_index_104 v0 v1
  = case coe v1 of
      C_here_44 v5 -> coe MAlonzo.Code.Data.Fin.Base.C_zero_12
      C_there_54 v5
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    MAlonzo.Code.Data.Fin.Base.C_suc_16
                    (coe du_index_104 (coe v8) (coe v5))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.lookup
d_lookup_110 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Any_32 -> AgdaAny
d_lookup_110 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_lookup_110 v5 v6
du_lookup_110 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 -> T_Any_32 -> AgdaAny
du_lookup_110 v0 v1
  = coe
      MAlonzo.Code.Data.Vec.Base.du_lookup_82 (coe v0)
      (coe du_index_104 (coe v0) (coe v1))
-- Data.Vec.Relation.Unary.Any.satisfied
d_satisfied_116 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Any_32 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfied_116 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 = du_satisfied_116 v5 v6
du_satisfied_116 ::
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  T_Any_32 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfied_116 v0 v1
  = case coe v1 of
      C_here_44 v5
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      C_there_54 v5
        -> case coe v0 of
             MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v7 v8
               -> coe du_satisfied_116 (coe v8) (coe v5)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.any?
d_any'63'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_124 ~v0 ~v1 ~v2 ~v3 v4 ~v5 v6 = du_any'63'_124 v4 v6
du_any'63'_124 ::
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_any'63'_124 v0 v1
  = case coe v1 of
      MAlonzo.Code.Data.Vec.Base.C_'91''93'_32
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32
             (coe MAlonzo.Code.Agda.Builtin.Bool.C_false_8)
             (coe MAlonzo.Code.Relation.Nullary.Reflects.C_of'8319'_26)
      MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v3 v4
        -> coe
             MAlonzo.Code.Relation.Nullary.Decidable.Core.du_map'8242'_178
             (coe du_fromSum_90) (coe du_toSum_82)
             (coe
                MAlonzo.Code.Relation.Nullary.Decidable.Core.du__'8846''45'dec__96
                (coe v0 v3) (coe du_any'63'_124 (coe v0) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.satisfiable
d_satisfiable_136 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_satisfiable_136 ~v0 ~v1 ~v2 ~v3 v4 v5 = du_satisfiable_136 v4 v5
du_satisfiable_136 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Integer -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_satisfiable_136 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> case coe v1 of
             0 -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Data.Vec.Base.C__'8759'__38 v2
                       (coe MAlonzo.Code.Data.Vec.Base.C_'91''93'_32))
                    (coe C_here_44 v3)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_map_128
                       (coe MAlonzo.Code.Data.Vec.Base.C__'8759'__38 (coe v2))
                       (\ v5 v6 -> coe C_there_54 v6)
                       (coe du_satisfiable_136 (coe v0) (coe v4)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Data.Vec.Relation.Unary.Any.any
d_any_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any_150 ~v0 ~v1 = du_any_150
du_any_150 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  Integer ->
  MAlonzo.Code.Data.Vec.Base.T_Vec_28 ->
  MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_any_150 v0 v1 v2 v3 v4 = coe du_any'63'_124 v2 v4
