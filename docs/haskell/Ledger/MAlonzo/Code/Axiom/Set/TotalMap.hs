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
d_Map_10 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_10 = erased
-- Axiom.Set.TotalMap._.left-unique
d_left'45'unique_12 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny -> ()
d_left'45'unique_12 = erased
-- Axiom.Set.TotalMap._.Rel
d_Rel_20 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_20 = erased
-- Axiom.Set.TotalMap._.isMaximal
d_isMaximal_32 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_isMaximal_32 = erased
-- Axiom.Set.TotalMap.total
d_total_44 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny -> ()
d_total_44 = erased
-- Axiom.Set.TotalMap.TotalMap
d_TotalMap_54 a0 a1 a2 = ()
data T_TotalMap_54
  = C_TotalMap'46'constructor_581 AgdaAny (AgdaAny -> AgdaAny)
-- Axiom.Set.TotalMap.TotalMap.rel
d_rel_66 :: T_TotalMap_54 -> AgdaAny
d_rel_66 v0
  = case coe v0 of
      C_TotalMap'46'constructor_581 v1 v3 -> coe v1
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.TotalMap.TotalMap.left-unique-rel
d_left'45'unique'45'rel_68 ::
  T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_68 = erased
-- Axiom.Set.TotalMap.TotalMap.total-rel
d_total'45'rel_70 :: T_TotalMap_54 -> AgdaAny -> AgdaAny
d_total'45'rel_70 v0
  = case coe v0 of
      C_TotalMap'46'constructor_581 v1 v3 -> coe v3
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.TotalMap.TotalMap.toMap
d_toMap_72 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_TotalMap_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_72 ~v0 ~v1 ~v2 v3 = du_toMap_72 v3
du_toMap_72 ::
  T_TotalMap_54 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_72 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe d_rel_66 (coe v0))
      erased
-- Axiom.Set.TotalMap.TotalMap.lookup
d_lookup_74 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup_74 v0 ~v1 ~v2 v3 v4 = du_lookup_74 v0 v3 v4
du_lookup_74 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_TotalMap_54 -> AgdaAny -> AgdaAny
du_lookup_74 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420 (coe v0)
            (coe d_rel_66 (coe v1)) (coe v2))
         (coe d_total'45'rel_70 v1 v2))
-- Axiom.Set.TotalMap.TotalMap.lookup∈rel
d_lookup'8712'rel_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup'8712'rel_78 v0 ~v1 ~v2 v3 v4
  = du_lookup'8712'rel_78 v0 v3 v4
du_lookup'8712'rel_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  T_TotalMap_54 -> AgdaAny -> AgdaAny
du_lookup'8712'rel_78 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420 (coe v0)
            (coe d_rel_66 (coe v1)) (coe v2))
         (coe d_total'45'rel_70 v1 v2))
-- Axiom.Set.TotalMap.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_84 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_84 = erased
-- Axiom.Set.TotalMap.Update.updateFn
d_updateFn_96 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_updateFn_96 ~v0 ~v1 ~v2 v3 v4 v5 v6 = du_updateFn_96 v3 v4 v5 v6
du_updateFn_96 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_updateFn_96 v0 v1 v2 v3
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
d_updateFn'45'id_132 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_132 = erased
-- Axiom.Set.TotalMap.Update.mapWithKey
d_mapWithKey_148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_TotalMap_54 -> T_TotalMap_54
d_mapWithKey_148 v0 ~v1 ~v2 ~v3 ~v4 v5 v6
  = du_mapWithKey_148 v0 v5 v6
du_mapWithKey_148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> T_TotalMap_54 -> T_TotalMap_54
du_mapWithKey_148 v0 v1 v2
  = coe
      C_TotalMap'46'constructor_581
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380 v0
         (\ v3 ->
            case coe v3 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v1 v4 v5)
              _ -> MAlonzo.RTE.mazUnreachableError)
         (d_rel_66 (coe v2)))
      (\ v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394 (coe v0)
           (coe
              MAlonzo.Code.Axiom.Set.du_map_380 v0
              (\ v4 ->
                 case coe v4 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                     -> coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v1 v5 v6)
                   _ -> MAlonzo.RTE.mazUnreachableError)
              (d_rel_66 (coe v2)))
           (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
           (let v4
                  = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1726
                         (coe
                            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420 (coe v0)
                            (coe d_rel_66 (coe v2)) (coe v3))
                         (coe d_total'45'rel_70 v2 v3)) in
            coe
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                 (coe v1 v3 v4)))
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394 (coe v0)
              (coe d_rel_66 (coe v2))
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
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420 (coe v0)
                          (coe d_rel_66 (coe v2)) (coe v3))
                       (coe d_total'45'rel_70 v2 v3))))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1726
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420 (coe v0)
                       (coe d_rel_66 (coe v2)) (coe v3))
                    (coe d_total'45'rel_70 v2 v3)))))
-- Axiom.Set.TotalMap.Update.update
d_update_164 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> T_TotalMap_54 -> T_TotalMap_54
d_update_164 v0 ~v1 ~v2 v3 v4 v5 = du_update_164 v0 v3 v4 v5
du_update_164 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> AgdaAny -> T_TotalMap_54 -> T_TotalMap_54
du_update_164 v0 v1 v2 v3
  = coe
      du_mapWithKey_148 (coe v0)
      (coe
         du_updateFn_96 (coe v1)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
-- Axiom.Set.TotalMap.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_188 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_54 -> AgdaAny
d_'8712''45'rel'45'update_188 v0 ~v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_'8712''45'rel'45'update_188 v0 v4 v6 v7 v8
du_'8712''45'rel'45'update_188 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_54 -> AgdaAny
du_'8712''45'rel'45'update_188 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
         (coe d_rel_66 (coe v4))
         (coe
            (\ v5 ->
               coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe
                    du_updateFn_96 (coe v3)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
            (coe du_lookup_74 (coe v0) (coe v4) (coe v1)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
            (coe du_lookup'8712'rel_78 (coe v0) (coe v4) (coe v1))))
-- Axiom.Set.TotalMap.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_194 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  T_TotalMap_54 -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_194 = erased
-- Axiom.Set.TotalMap.FunTot.Fun⇒Map
d_Fun'8658'Map_214 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_214 v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
  = du_Fun'8658'Map_214 v0 v6 v7
du_Fun'8658'Map_214 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_Fun'8658'Map_214 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380 v0
         (\ v3 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1 v3))
         v2)
      erased
-- Axiom.Set.TotalMap.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_224 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> () -> (AgdaAny -> AgdaAny) -> T_TotalMap_54
d_Fun'8658'TotalMap_224 v0 ~v1 v2 v3 ~v4 v5
  = du_Fun'8658'TotalMap_224 v0 v2 v3 v5
du_Fun'8658'TotalMap_224 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> (AgdaAny -> AgdaAny) -> T_TotalMap_54
du_Fun'8658'TotalMap_224 v0 v1 v2 v3
  = coe
      C_TotalMap'46'constructor_581
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380 v0
         (\ v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v3 v4))
         v1)
      (\ v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394 (coe v0)
           (coe
              MAlonzo.Code.Axiom.Set.du_map_380 v0
              (\ v5 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3 v5))
              v1)
           (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
           (coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v3 v4))
           (coe
              MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394 (coe v0) (coe v1)
              (coe
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v3 v5)))
              (coe v4) (coe v2 v4)))
-- Axiom.Set.TotalMap.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_234 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_Fun'8712'TotalMap_234 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_Fun'8712'TotalMap_234 v0 v2 v5 v6 v7
du_Fun'8712'TotalMap_234 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_Fun'8712'TotalMap_234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394 (coe v0) (coe v1)
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2 v5)))
      (coe v3) (coe v4)
-- Axiom.Set.TotalMap.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_242 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_242 = erased
