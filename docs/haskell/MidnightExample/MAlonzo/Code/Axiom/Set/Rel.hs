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

module MAlonzo.Code.Axiom.Set.Rel where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Rel._._∉_
d__'8713'__16 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8713'__16 = erased
-- Axiom.Set.Rel._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set.Rel._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Rel._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Rel._.disjoint
d_disjoint_44 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_44 = erased
-- Axiom.Set.Rel._.map
d_map_56 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_56 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_380 (coe v0)
-- Axiom.Set.Rel._.spec-∈
d_spec'45''8712'_76 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_76 = erased
-- Axiom.Set.Rel._.∅
d_'8709'_90 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_90 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Rel._.Intersection._∩_
d__'8745'__126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__126 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set.Rel._._≡_⨿_
d__'8801'_'10815'__134 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__134 = erased
-- Axiom.Set.Rel.Rel
d_Rel_274 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_274 = erased
-- Axiom.Set.Rel.relatedˡ
d_related'737'_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_related'737'_296 v0 ~v1 ~v2 = du_related'737'_296 v0
du_related'737'_296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_related'737'_296 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.∅ʳ
d_'8709''691'_298 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny
d_'8709''691'_298 v0 ~v1 ~v2 = du_'8709''691'_298 v0
du_'8709''691'_298 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny
du_'8709''691'_298 v0
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Rel.dom
d_dom_300 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_300 v0 ~v1 ~v2 = du_dom_300 v0
du_dom_300 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_dom_300 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.range
d_range_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_range_302 v0 ~v1 ~v2 = du_range_302 v0
du_range_302 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_range_302 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
-- Axiom.Set.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_304 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'dom'8658'disjoint_304 = erased
-- Axiom.Set.Rel._∣'_
d__'8739'''__310 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'''__310 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8739'''__310 v0 v4 v5
du__'8739'''__310 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'''__310 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      v1
-- Axiom.Set.Rel._↾'_
d__'8638'''__318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'''__318 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8638'''__318 v0 v4 v5
du__'8638'''__318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'''__318 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      v1
-- Axiom.Set.Rel.impl⇒res⊆
d_impl'8658'res'8838'_336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'res'8838'_336 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'res'8838'_336 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'res'8838'_336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'res'8838'_336 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_358 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'cores'8838'_358 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'cores'8838'_358 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'cores'8838'_358 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'cores'8838'_358 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.mapˡ
d_map'737'_368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_368 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'737'_368 v0 v4 v5
du_map'737'_368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'737'_368 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe v1)) v2
-- Axiom.Set.Rel.mapʳ
d_map'691'_374 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_374 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'691'_374 v0 v4 v5
du_map'691'_374 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'691'_374 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_380 v0
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v3 -> v1)))
      v2
-- Axiom.Set.Rel.dom∈
d_dom'8712'_384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_384 v0 ~v1 ~v2 v3 v4 = du_dom'8712'_384 v0 v3 v4
du_dom'8712'_384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8712'_384 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
            (\ v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
            (coe
               (\ v3 ->
                  case coe v3 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v4 v5
                      -> case coe v4 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                             -> case coe v5 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                    -> coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                         (coe v9)
                                  _ -> MAlonzo.RTE.mazUnreachableError
                           _ -> MAlonzo.RTE.mazUnreachableError
                    _ -> MAlonzo.RTE.mazUnreachableError))
            (coe
               (\ v3 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
            (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe v2)))
-- Axiom.Set.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45''8838'map'691'_412 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45''8838'map'691'_412 v0 v4 v5 v6 v7
du_dom'45''8838'map'691'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45''8838'map'691'_412 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe du_dom'8712'_384 (coe v0) (coe v1) (coe v3)) v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> coe
                MAlonzo.Code.Function.Bundles.d_from_1726
                (coe
                   du_dom'8712'_384 (coe v0)
                   (coe
                      MAlonzo.Code.Axiom.Set.du_map_380 v0
                      (coe
                         MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v8 -> v8))
                         (coe (\ v8 -> v2)))
                      v1)
                   (coe v3))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2 v6)
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1724
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v8 -> v8))
                            (coe (\ v8 -> v2)))
                         (coe
                            MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v8 -> v8))
                            (coe (\ v8 -> v2))
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6))))
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v7)))))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_436 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'map'691''8838'_436 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45'map'691''8838'_436 v0 v4 v5 v6 v7
du_dom'45'map'691''8838'_436 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'map'691''8838'_436 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 du_dom'8712'_384 (coe v0)
                 (coe du_map'691'_374 (coe v0) (coe v2) (coe v1)) (coe v3))
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Function.Bundles.d_from_1726
                        (coe
                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                           (coe
                              MAlonzo.Code.Data.Product.Base.du_map_128 (coe (\ v8 -> v8))
                              (coe (\ v8 -> v2)))
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6)))
                        v7 in
              coe
                (case coe v8 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                     -> case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                            -> case coe v10 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                   -> coe
                                        MAlonzo.Code.Function.Bundles.d_from_1726
                                        (coe du_dom'8712'_384 (coe v0) (coe v1) (coe v11))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                           (coe v14))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError)
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.mapʳ-dom
d_map'691''45'dom_462 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_462 v0 ~v1 ~v2 ~v3 v4 v5
  = du_map'691''45'dom_462 v0 v4 v5
du_map'691''45'dom_462 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'691''45'dom_462 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45''8838'map'691'_412 (coe v0) (coe v1) (coe v2))
      (coe du_dom'45'map'691''8838'_436 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.dom-∅
d_dom'45''8709'_464 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_464 ~v0 ~v1 ~v2 ~v3 ~v4 = du_dom'45''8709'_464
du_dom'45''8709'_464 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45''8709'_464
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_428
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Rel.mapPartialLiftKey
d_mapPartialLiftKey_472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_472 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapPartialLiftKey_472 v4 v5
du_mapPartialLiftKey_472 ::
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_472 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v4 ->
                coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))
             (coe v0 v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_492 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_mapPartialLiftKey'45'map_492 v0 v4 v5 v6 v7 v8
du_mapPartialLiftKey'45'map_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey'45'map_492 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v4)
                 (coe du_mapPartialLiftKey_472 (coe v3))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                         -> let v13 = coe v3 v9 v10 in
                            coe
                              (coe
                                 seq (coe v13)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                       (coe v12))))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.mapMaybeWithKey
d_mapMaybeWithKey_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () -> (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapMaybeWithKey_532 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey_532 v0 v4 v5
du_mapMaybeWithKey_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapMaybeWithKey_532 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_558 v0
      (coe du_mapPartialLiftKey_472 (coe v1)) v2
-- Axiom.Set.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_548 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8712''45'mapMaybeWithKey_548 v0 v4 v5 v6 v7 v8
du_'8712''45'mapMaybeWithKey_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'mapMaybeWithKey_548 v0 v1 v2 v3 v4 v5
  = coe
      du_mapPartialLiftKey'45'map_492 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_586 (coe v0)
         (coe v4) (coe du_mapPartialLiftKey_472 (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
               (coe du_mapMaybeWithKey_532 (coe v0) (coe v3) (coe v4))
               (coe MAlonzo.Code.Agda.Builtin.Maybe.C_just_16)
               (coe
                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v5)))))
-- Axiom.Set.Rel.Restriction._∣_
d__'8739'__564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'__564 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__564 v0 v2 v4 v5
du__'8739'__564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'__564 v0 v1 v2 v3
  = coe du__'8739'''__310 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'_'7580'_570 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_570 v0 v2 v4 v5
du__'8739'_'7580'_570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'_'7580'_570 v0 v1 v2 v3
  = coe
      du__'8739'''__310 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'10218''36''10219'__576 v0 ~v1 v2 ~v3 v4 v5
  = du__'10218''36''10219'__576 v0 v2 v4 v5
du__'10218''36''10219'__576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'10218''36''10219'__576 v0 v1 v2 v3
  = coe
      du_range_302 v0
      (coe du__'8739'__564 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Rel.Restriction.res-cong
d_res'45'cong_584 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_584 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'cong_584 v0 v2 v4 v5 v6 v7
du_res'45'cong_584 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_584 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe v1 v4)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe v1 v3)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe v1 v3)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe v1 v4)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-dom
d_res'45'dom_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_594 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom_594 v0 v2 v4 v5 v6 v7
du_res'45'dom_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_594 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'__564 (coe v0) (coe v1) (coe v2) (coe v3)) v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                          v0 v2
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe v1 v3)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                          v7 v10)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'7504'_606 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom'7504'_606 v0 v2 v4 v5 v6 v7
du_res'45'dom'7504'_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'7504'_606 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'__564 (coe v0) (coe v1) (coe v2) (coe v3)) v4 v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                             v0 v2
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                (coe v1 v3)
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                             v7 v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_620 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_620 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'cong_620 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'cong_620 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_620 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                           (coe v1 v4))
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (\ v10 v11 ->
                           coe
                             v10
                             (coe v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                 (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                 (coe v1 v3))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                           (coe v1 v3))
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (\ v10 v11 ->
                           coe
                             v10
                             (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                 (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                 (coe v1 v4))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_636 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_636 = erased
-- Axiom.Set.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'comp'45'dom'7504'_648 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'dom'7504'_648 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'dom'7504'_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'comp'45'dom'7504'_648 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
              (coe du__'8739'_'7580'_570 (coe v0) (coe v1) (coe v2) (coe v3)) v4
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                             v0 v2
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                   (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                   (coe v1 v3))
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                             v7 v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-⊆
d_res'45''8838'_660 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45''8838'_660 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45''8838'_660 v0 v2 v4 v5 v6
du_res'45''8838'_660 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45''8838'_660 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.ex-⊆
d_ex'45''8838'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_ex'45''8838'_662 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_ex'45''8838'_662 v0 v2 v4 v5 v6
du_ex'45''8838'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_ex'45''8838'_662 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.res-∅
d_res'45''8709'_664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_664 ~v0 ~v1 ~v2 ~v3 ~v4 = du_res'45''8709'_664
du_res'45''8709'_664 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_664 = coe du_dom'45''8709'_464
-- Axiom.Set.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_668 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_668 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45''8746'_668 v0 v2 v3 v5 v6
du_res'45'ex'45''8746'_668 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_668 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_550 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                  (coe v1 v2)
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                     (coe v1 v2))
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe du_res'45''8838'_660 (coe v0) (coe v1) (coe v3) (coe v2))
         (coe du_ex'45''8838'_662 (coe v0) (coe v1) (coe v3) (coe v2)))
      (coe
         (\ v5 v6 ->
            let v7
                  = coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) in
            coe
              (case coe v7 of
                 MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v8 v9
                   -> if coe v8
                        then case coe v9 of
                               MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v10
                                 -> coe
                                      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210
                                      v0
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_filter_402 v0
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased (coe v1 v2)
                                            (\ v11 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                                         v3)
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased
                                            erased v3
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                                  erased (coe v1 v2))
                                               (\ v11 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v11)))))
                                      v5
                                      (coe
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                                            v0 v3
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                               erased erased (coe v1 v2)
                                               (\ v11 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v11)))
                                            v5
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                                               (coe v6))))
                               _ -> MAlonzo.RTE.mazUnreachableError
                        else coe
                               seq (coe v9)
                               (coe
                                  MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210 v0
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased
                                        v3
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                           erased (coe v1 v2)
                                           (\ v10 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_filter_402 v0
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                        erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                           (coe v1 v2))
                                        (\ v10 ->
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                     v3)
                                  v5
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                                        v0 v3
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                           (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                           erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                              erased (coe v1 v2))
                                           (\ v10 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v5
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                           (coe v6)))))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_682 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_682 = erased
-- Axiom.Set.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_690 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45'disj'45''8746'_690 v0 v2 v3 v5 v6
du_res'45'ex'45'disj'45''8746'_690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_690 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (let v5
             = coe
                 du_res'45'ex'45''8746'_668 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v4) in
       coe
         (case coe v5 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
            _ -> MAlonzo.RTE.mazUnreachableError))
      erased
-- Axiom.Set.Rel.Restriction.curryʳ
d_curry'691'_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_curry'691'_698 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'691'_698 v0 v2 v5 v6
du_curry'691'_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_curry'691'_698 v0 v1 v2 v3
  = coe
      du_map'737'_368 (coe v0)
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du__'8739'''__310 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_710 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'curry'691'_710 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8712''45'curry'691'_710 v0 v2 v5 v6 v7 v8 v9
du_'8712''45'curry'691'_710 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'curry'691'_710 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                 (coe (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
              (coe
                 du__'8739'''__310 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                    (coe
                       v1
                       (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3))
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))))
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5))
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> coe
                       seq (coe v10)
                       (case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                            -> let v14
                                     = coe
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                                         v0 v2
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                               erased erased
                                               (coe
                                                  v1
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                                                     v0 erased v3))
                                               (\ v14 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v14)))
                                            (\ v14 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v14)))
                                         v8 v13 in
                               coe
                                 (case coe v14 of
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16 -> coe v16
                                    _ -> MAlonzo.RTE.mazUnreachableError)
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction._._∩_
d__'8745'__734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__734 v0 ~v1 v2 = du__'8745'__734 v0 v2
du__'8745'__734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__734 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
-- Axiom.Set.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8838''8745'_774 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8838''8745'_774 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8838''8745'_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8838''8745'_774 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
         (coe du_dom_300 v0 v2) (coe du_dom_300 v0 v3) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_res'45'dom'7504'_606 (coe v0) (coe v1) (coe v2)
            (coe du_dom_300 v0 v3) (coe v4) (coe v5))
         (coe
            du_res'45'dom_594 (coe v0) (coe v1) (coe v2) (coe du_dom_300 v0 v3)
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8745''8838'_782 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8745''8838'_782 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8745''8838'_782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8745''8838'_782 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
                 (coe du_dom_300 v0 v2) (coe du_dom_300 v0 v3) (coe v4))
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> let v9
                    = coe
                        MAlonzo.Code.Function.Bundles.d_to_1724
                        (coe du_dom'8712'_384 (coe v0) (coe v2) (coe v4)) v7 in
              coe
                (let v10
                       = coe
                           MAlonzo.Code.Function.Bundles.d_to_1724
                           (coe du_dom'8712'_384 (coe v0) (coe v3) (coe v4)) v8 in
                 coe
                   (case coe v9 of
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                        -> coe
                             seq (coe v10)
                             (coe
                                MAlonzo.Code.Function.Bundles.d_from_1726
                                (coe
                                   du_dom'8712'_384 (coe v0)
                                   (coe
                                      MAlonzo.Code.Axiom.Set.du_filter_402 v0
                                      (coe
                                         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                         erased
                                         (coe
                                            v1
                                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased
                                                  erased
                                                  (\ v13 ->
                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                       (coe v13))
                                                  v3)))
                                         (\ v13 ->
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                      v2)
                                   (coe v4))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                   (coe
                                      MAlonzo.Code.Function.Bundles.d_to_1724
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0)
                                         (coe v2)
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased
                                            (coe
                                               v1
                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.d_replacement_196 v0
                                                     erased erased
                                                     (\ v13 ->
                                                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                          (coe v13))
                                                     v3)))
                                            (\ v13 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
                                            (coe v11)))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                         (coe v12)))))
                      _ -> MAlonzo.RTE.mazUnreachableError))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_830 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_830 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm''_830 v0 v2 v5 v6
du_res'45'dom'45'comm''_830 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_830 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_res'45'dom'45'comm'8838''8745'_774 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_res'45'dom'45'comm'8745''8838'_782 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Axiom.Set.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_836 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_836 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm_836 v0 v2 v5 v6
du_res'45'dom'45'comm_836 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_836 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_dom_300 v0
         (coe
            du__'8739'__564 (coe v0) (coe v1) (coe v2) (coe du_dom_300 v0 v3)))
      (coe
         du_dom_300 v0
         (coe
            du__'8739'__564 (coe v0) (coe v1) (coe v3) (coe du_dom_300 v0 v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
         (coe
            du_dom_300 v0
            (coe
               du__'8739'__564 (coe v0) (coe v1) (coe v2) (coe du_dom_300 v0 v3)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
            (coe du_dom_300 v0 v2) (coe du_dom_300 v0 v3))
         (coe
            du_dom_300 v0
            (coe
               du__'8739'__564 (coe v0) (coe v1) (coe v3) (coe du_dom_300 v0 v2)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
            (\ v4 v5 v6 ->
               case coe v6 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v7)
                 _ -> MAlonzo.RTE.mazUnreachableError)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
               (coe du_dom_300 v0 v2) (coe du_dom_300 v0 v3))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
               (coe du_dom_300 v0 v3) (coe du_dom_300 v0 v2))
            (coe
               du_dom_300 v0
               (coe
                  du__'8739'__564 (coe v0) (coe v1) (coe v3) (coe du_dom_300 v0 v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))))
               (\ v4 v5 v6 ->
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
                  (coe du_dom_300 v0 v3) (coe du_dom_300 v0 v2))
               (coe
                  du_dom_300 v0
                  (coe
                     du__'8739'__564 (coe v0) (coe v1) (coe v3) (coe du_dom_300 v0 v2)))
               (coe
                  du_dom_300 v0
                  (coe
                     du__'8739'__564 (coe v0) (coe v1) (coe v3) (coe du_dom_300 v0 v2)))
               (let v4
                      = \ v4 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                            (coe (\ v5 v6 -> v6)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v4))
                     (coe
                        du_dom_300 v0
                        (coe
                           du__'8739'__564 (coe v0) (coe v1) (coe v3)
                           (coe du_dom_300 v0 v2)))))
               (coe
                  du_res'45'dom'45'comm''_830 (coe v0) (coe v1) (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_686 (coe v0)
               (coe v1) (coe du_dom_300 v0 v3) (coe du_dom_300 v0 v2)))
         (coe
            du_res'45'dom'45'comm''_830 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Axiom.Set.Rel.Corestriction._↾_
d__'8638'__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'__892 v0 ~v1 v2 ~v3 v4 v5 = du__'8638'__892 v0 v2 v4 v5
du__'8638'__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'__892 v0 v1 v2 v3
  = coe du__'8638'''__318 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Corestriction._↾_ᶜ
d__'8638'_'7580'_898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8638'_'7580'_898 v0 ~v1 v2 ~v3 v4 v5
  = du__'8638'_'7580'_898 v0 v2 v4 v5
du__'8638'_'7580'_898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8638'_'7580'_898 v0 v1 v2 v3
  = coe
      du__'8638'''__318 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Corestriction.cores-⊆
d_cores'45''8838'_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_cores'45''8838'_904 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_cores'45''8838'_904 v0 v2 v4 v5 v6
du_cores'45''8838'_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_cores'45''8838'_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Corestriction.coex-⊆
d_coex'45''8838'_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_coex'45''8838'_906 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_coex'45''8838'_906 v0 v2 v4 v5 v6
du_coex'45''8838'_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_coex'45''8838'_906 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
