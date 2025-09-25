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

module MAlonzo.Code.Axiom.Set.TotalMap where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.TotalMap._.Map
d_Map_10 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_Map_10 = erased
-- Axiom.Set.TotalMap._.left-unique
d_left'45'unique_12 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> AgdaAny -> ()
d_left'45'unique_12 = erased
-- Axiom.Set.TotalMap._.Rel
d_Rel_20 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> ()
d_Rel_20 = erased
-- Axiom.Set.TotalMap._.isMaximal
d_isMaximal_72 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> ()
d_isMaximal_72 = erased
-- Axiom.Set.TotalMap.total
d_total_158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> () -> AgdaAny -> ()
d_total_158 = erased
-- Axiom.Set.TotalMap.TotalMap
d_TotalMap_168 a0 a1 a2 = ()
data T_TotalMap_168
  = C_constructor_202 AgdaAny (AgdaAny -> AgdaAny)
-- Axiom.Set.TotalMap.TotalMap.rel
d_rel_180 :: T_TotalMap_168 -> AgdaAny
d_rel_180 v0
  = case coe v0 of
      C_constructor_202 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_182 ::
  T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_182 = erased
-- Axiom.Set.TotalMap.TotalMap.total-rel
d_total'45'rel_184 :: T_TotalMap_168 -> AgdaAny -> AgdaAny
d_total'45'rel_184 v0
  = case coe v0 of
      C_constructor_202 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.TotalMap.TotalMap.toMap
d_toMap_186 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () -> T_TotalMap_168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_186 ~v0 ~v1 ~v2 v3 = du_toMap_186 v3
du_toMap_186 ::
  T_TotalMap_168 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_186 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe d_rel_180 (coe v0)) erased
-- Axiom.Set.TotalMap.TotalMap.lookup
d_lookup_188 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_TotalMap_168 -> AgdaAny -> AgdaAny
d_lookup_188 v0 ~v1 ~v2 v3 v4 = du_lookup_188 v0 v3 v4
du_lookup_188 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  T_TotalMap_168 -> AgdaAny -> AgdaAny
du_lookup_188 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
            (coe d_rel_180 (coe v1)) (coe v2))
         (coe d_total'45'rel_184 v1 v2))
-- Axiom.Set.TotalMap.TotalMap.lookup∈rel
d_lookup'8712'rel_192 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> T_TotalMap_168 -> AgdaAny -> AgdaAny
d_lookup'8712'rel_192 v0 ~v1 ~v2 v3 v4
  = du_lookup'8712'rel_192 v0 v3 v4
du_lookup'8712'rel_192 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  T_TotalMap_168 -> AgdaAny -> AgdaAny
du_lookup'8712'rel_192 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
            (coe d_rel_180 (coe v1)) (coe v2))
         (coe d_total'45'rel_184 v1 v2))
-- Axiom.Set.TotalMap.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_198 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_198 = erased
-- Axiom.Set.TotalMap.Update.updateFn
d_updateFn_210 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_updateFn_210 ~v0 ~v1 v2 ~v3 v4 v5 v6
  = du_updateFn_210 v2 v4 v5 v6
du_updateFn_210 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_updateFn_210 v0 v1 v2 v3
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
        -> let v6
                 = coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v0 v2 v4 in
           coe
             (case coe v6 of
                MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v7 v8
                  -> if coe v7
                       then coe seq (coe v8) (coe v5)
                       else coe seq (coe v8) (coe v3)
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.TotalMap.Update.updateFn-id
d_updateFn'45'id_246 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_246 = erased
-- Axiom.Set.TotalMap.Update.mapWithKey
d_mapWithKey_262 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_TotalMap_168 -> T_TotalMap_168
d_mapWithKey_262 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_mapWithKey_262 v0 v5 v6
du_mapWithKey_262 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_TotalMap_168 -> T_TotalMap_168
du_mapWithKey_262 v0 v1 v2
  = coe
      C_constructor_202
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400 v0
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v1 v4 v5)
              _ -> MAlonzo.RTE.mazUnreachableError)
         (d_rel_180 (coe v2)))
      (\ v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414 (coe v0)
           (coe
              MAlonzo.Code.Axiom.Set.du_map_400 v0
              (\ v4 ->
                 case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v1 v5 v6)
                   _ -> MAlonzo.RTE.mazUnreachableError)
              (d_rel_180 (coe v2)))
           (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
           (let v4
                  = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1870
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
                            (coe d_rel_180 (coe v2)) (coe v3))
                         (coe d_total'45'rel_184 v2 v3)) in
            coe
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                 (coe v1 v3 v4)))
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414 (coe v0)
              (coe d_rel_180 (coe v2))
              (coe
                 (\ v4 ->
                    case coe v4 of
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                        -> coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v1 v5 v6)
                      _ -> MAlonzo.RTE.mazUnreachableError))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
                          (coe d_rel_180 (coe v2)) (coe v3))
                       (coe d_total'45'rel_184 v2 v3))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1870
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
                       (coe d_rel_180 (coe v2)) (coe v3))
                    (coe d_total'45'rel_184 v2 v3)))))
-- Axiom.Set.TotalMap.Update.update
d_update_278 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () -> AgdaAny -> AgdaAny -> T_TotalMap_168 -> T_TotalMap_168
d_update_278 v0 ~v1 v2 ~v3 v4 v5 = du_update_278 v0 v2 v4 v5
du_update_278 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> T_TotalMap_168 -> T_TotalMap_168
du_update_278 v0 v1 v2 v3
  = coe
      du_mapWithKey_262 (coe v0)
      (coe
         du_updateFn_210 (coe v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
-- Axiom.Set.TotalMap.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_168 -> AgdaAny
d_'8712''45'rel'45'update_302 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 v7 v8
  = du_'8712''45'rel'45'update_302 v0 v4 v5 v7 v8
du_'8712''45'rel'45'update_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_168 -> AgdaAny
du_'8712''45'rel'45'update_302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0)
         (coe d_rel_180 (coe v4))
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe
                    du_updateFn_210 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
            (coe du_lookup_188 (coe v0) (coe v4) (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
            (coe du_lookup'8712'rel_192 (coe v0) (coe v4) (coe v1))))
-- Axiom.Set.TotalMap.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_308 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_168 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_308 = erased
-- Axiom.Set.TotalMap.FunTot.Fun⇒Map
d_Fun'8658'Map_324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_324 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_Fun'8658'Map_324 v0 v5 v6
du_Fun'8658'Map_324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Fun'8658'Map_324 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400 v0
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1 v3))
         v2)
      erased
-- Axiom.Set.TotalMap.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () -> (AgdaAny -> AgdaAny) -> T_TotalMap_168
d_Fun'8658'TotalMap_334 v0 ~v1 v2 v3 ~v4 v5
  = du_Fun'8658'TotalMap_334 v0 v2 v3 v5
du_Fun'8658'TotalMap_334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_TotalMap_168
du_Fun'8658'TotalMap_334 v0 v1 v2 v3
  = coe
      C_constructor_202
      (coe
         MAlonzo.Code.Axiom.Set.du_map_400 v0
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v3 v4))
         v1)
      (\ v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414 (coe v0)
           (coe
              MAlonzo.Code.Axiom.Set.du_map_400 v0
              (\ v5 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3 v5))
              v1)
           (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v3 v4))
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414 (coe v0) (coe v1)
              (coe
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3 v5)))
              (coe v4) (coe v2 v4)))
-- Axiom.Set.TotalMap.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_Fun'8712'TotalMap_344 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_Fun'8712'TotalMap_344 v0 v2 v5 v6 v7
du_Fun'8712'TotalMap_344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_Fun'8712'TotalMap_344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414 (coe v0) (coe v1)
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2 v5)))
      (coe v3) (coe v4)
-- Axiom.Set.TotalMap.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_352 = erased
