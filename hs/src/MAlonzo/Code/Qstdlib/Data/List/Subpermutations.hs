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

module MAlonzo.Code.Qstdlib.Data.List.Subpermutations where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Membership.Setoid
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any.Properties
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- stdlib.Data.List.Subpermutations._⁉_
d__'8265'__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> Integer -> Maybe AgdaAny
d__'8265'__14 ~v0 ~v1 v2 v3 = du__'8265'__14 v2 v3
du__'8265'__14 :: [AgdaAny] -> Integer -> Maybe AgdaAny
du__'8265'__14 v0 v1
  = case coe v0 of
      [] -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
      (:) v2 v3
        -> case coe v1 of
             0 -> coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 (coe v2)
             _ -> let v4 = subInt (coe v1) (coe (1 :: Integer)) in
                  coe (coe du__'8265'__14 (coe v3) (coe v4))
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations.sublists
d_sublists_22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_sublists_22 ~v0 ~v1 v2 = du_sublists_22 v2
du_sublists_22 :: [AgdaAny] -> [[AgdaAny]]
du_sublists_22 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1))
                (coe du_sublists_22 (coe v2)))
             (coe du_sublists_22 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations.insert
d_insert_30 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> [AgdaAny] -> [[AgdaAny]]
d_insert_30 ~v0 ~v1 v2 v3 = du_insert_30 v2 v3
du_insert_30 :: AgdaAny -> [AgdaAny] -> [[AgdaAny]]
du_insert_30 v0 v1
  = case coe v1 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
             (coe v1)
      (:) v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
             (coe
                MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v1))
             (coe
                MAlonzo.Code.Data.List.Base.du_map_22
                (coe MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2))
                (coe du_insert_30 (coe v0) (coe v3)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations.subpermutations
d_subpermutations_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> [AgdaAny] -> [[AgdaAny]]
d_subpermutations_42 ~v0 ~v1 v2 = du_subpermutations_42 v2
du_subpermutations_42 :: [AgdaAny] -> [[AgdaAny]]
du_subpermutations_42 v0
  = case coe v0 of
      []
        -> coe
             MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v0) (coe v0)
      (:) v1 v2
        -> coe
             MAlonzo.Code.Data.List.Base.du__'43''43'__32
             (coe
                MAlonzo.Code.Data.List.Base.du_concatMap_246
                (coe du_insert_30 (coe v1)) (coe du_subpermutations_42 (coe v2)))
             (coe du_subpermutations_42 (coe v2))
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations._.∈ˡ-map-filter⁻
d_'8712''737''45'map'45'filter'8315'_68 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''737''45'map'45'filter'8315'_68 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                        ~v7 v8 v9
  = du_'8712''737''45'map'45'filter'8315'_68 v5 v8 v9
du_'8712''737''45'map'45'filter'8315'_68 ::
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''737''45'map'45'filter'8315'_68 v0 v1 v2
  = let v3
          = coe
              MAlonzo.Code.Data.List.Membership.Setoid.du_find_86
              (coe
                 MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_setoid_402)
              (coe MAlonzo.Code.Data.List.Base.du_filter_648 (coe v1) (coe v0))
              (coe
                 MAlonzo.Code.Data.List.Relation.Unary.Any.Properties.du_map'8315'_736
                 (coe MAlonzo.Code.Data.List.Base.du_filter_648 (coe v1) (coe v0))
                 (coe v2)) in
    coe
      (case coe v3 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
           -> case coe v5 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                             (coe
                                MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
                                v1 v4 v0 v6))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                             (coe
                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                (coe
                                   MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
                                   v1 v4 v0 v6))))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- stdlib.Data.List.Subpermutations._.∈ˡ-map-filter⁺
d_'8712''737''45'map'45'filter'8314'_84 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''737''45'map'45'filter'8314'_84 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6
                                        ~v7 v8 v9
  = du_'8712''737''45'map'45'filter'8314'_84 v5 v8 v9
du_'8712''737''45'map'45'filter'8314'_84 ::
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''737''45'map'45'filter'8314'_84 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
               -> case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'map'8314'_164
                           v3
                           (coe MAlonzo.Code.Data.List.Base.du_filter_648 (coe v1) (coe v0))
                           (coe
                              MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_510
                              v1 v0 v5 v8)
                    _ -> MAlonzo.RTE.mazUnreachableError
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations._.∈ˡ-map-filter
d_'8712''737''45'map'45'filter_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''737''45'map'45'filter_94 ~v0 ~v1 ~v2 ~v3 ~v4 v5 ~v6 ~v7 v8
  = du_'8712''737''45'map'45'filter_94 v5 v8
du_'8712''737''45'map'45'filter_94 ::
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''737''45'map'45'filter_94 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe du_'8712''737''45'map'45'filter'8314'_84 (coe v0) (coe v1))
      (coe du_'8712''737''45'map'45'filter'8315'_68 (coe v0) (coe v1))
-- stdlib.Data.List.Subpermutations..generalizedField-A.ℓ
d_'46'generalizedField'45'A'46'ℓ_3183 ::
  T_GeneralizeTel_3191 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'A'46'ℓ_3183 v0
  = case coe v0 of
      C_mkGeneralizeTel_3193 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations..generalizedField-A
d_'46'generalizedField'45'A_3185 :: T_GeneralizeTel_3191 -> ()
d_'46'generalizedField'45'A_3185 = erased
-- stdlib.Data.List.Subpermutations..generalizedField-B.ℓ
d_'46'generalizedField'45'B'46'ℓ_3187 ::
  T_GeneralizeTel_3191 -> MAlonzo.Code.Agda.Primitive.T_Level_18
d_'46'generalizedField'45'B'46'ℓ_3187 v0
  = case coe v0 of
      C_mkGeneralizeTel_3193 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- stdlib.Data.List.Subpermutations..generalizedField-B
d_'46'generalizedField'45'B_3189 :: T_GeneralizeTel_3191 -> ()
d_'46'generalizedField'45'B_3189 = erased
-- stdlib.Data.List.Subpermutations.GeneralizeTel
d_GeneralizeTel_3191 = ()
data T_GeneralizeTel_3191
  = C_mkGeneralizeTel_3193 MAlonzo.Code.Agda.Primitive.T_Level_18
                           MAlonzo.Code.Agda.Primitive.T_Level_18
