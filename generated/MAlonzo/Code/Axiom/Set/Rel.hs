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
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.Maybe.Base
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties.Ext
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
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0) v2 v3
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
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Rel._.map
d_map_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_58 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_386 (coe v0)
-- Axiom.Set.Rel._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Rel._.∅
d_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0)
-- Axiom.Set.Rel._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 (coe v0)
-- Axiom.Set.Rel._.Intersection._∩_
d__'8745'__128 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__128 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) v2 v3 v4
-- Axiom.Set.Rel._._≡_⨿_
d__'8801'_'10815'__138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__138 = erased
-- Axiom.Set.Rel.Rel
d_Rel_312 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_312 = erased
-- Axiom.Set.Rel.relatedˡ
d_related'737'_334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_related'737'_334 v0 ~v1 ~v2 = du_related'737'_334 v0
du_related'737'_334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_related'737'_334 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.∅ʳ
d_'8709''691'_336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny
d_'8709''691'_336 v0 ~v1 ~v2 = du_'8709''691'_336 v0
du_'8709''691'_336 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny
du_'8709''691'_336 v0
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0)
-- Axiom.Set.Rel.dom
d_dom_338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_338 v0 ~v1 ~v2 = du_dom_338 v0
du_dom_338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_dom_338 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.range
d_range_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_range_340 v0 ~v1 ~v2 = du_range_340 v0
du_range_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny
du_range_340 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
-- Axiom.Set.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_342 ::
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
d_disjoint'45'dom'8658'disjoint_342 = erased
-- Axiom.Set.Rel._∣'_
d__'8739'''__348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'''__348 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8739'''__348 v0 v4 v5
du__'8739'''__348 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'''__348 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_408 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      v1
-- Axiom.Set.Rel._∣^'_
d__'8739''94'''__356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'''__356 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__356 v0 v4 v5
du__'8739''94'''__356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'''__356 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_408 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      v1
-- Axiom.Set.Rel.impl⇒res⊆
d_impl'8658'res'8838'_374 ::
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
d_impl'8658'res'8838'_374 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'res'8838'_374 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'res'8838'_374 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'res'8838'_374 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_396 ::
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
d_impl'8658'cores'8838'_396 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'cores'8838'_396 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'cores'8838'_396 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'cores'8838'_396 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.mapˡ
d_map'737'_406 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_406 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'737'_406 v0 v4 v5
du_map'737'_406 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'737'_406 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386 v0
      (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe v1)) v2
-- Axiom.Set.Rel.mapʳ
d_map'691'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_412 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'691'_412 v0 v4 v5
du_map'691'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'691'_412 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_386 v0
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v3 -> v1)))
      v2
-- Axiom.Set.Rel.dom∈
d_dom'8712'_422 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_422 v0 ~v1 ~v2 v3 v4 = du_dom'8712'_422 v0 v3 v4
du_dom'8712'_422 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8712'_422 v0 v1 v2
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
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_394 (coe v0) (coe v1)
            (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe v2)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
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
-- Axiom.Set.Rel._._.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'dom'45'singleton'45'pair_466 v0 ~v1 ~v2 v3 v4 v5
  = du_'8712''45'dom'45'singleton'45'pair_466 v0 v3 v4 v5
du_'8712''45'dom'45'singleton'45'pair_466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'dom'45'singleton'45'pair_466 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 du_dom'8712'_422 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_singleton_436 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
                 (coe v3))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
                    erased))))
      erased
-- Axiom.Set.Rel._._.dom-single→single
d_dom'45'single'8594'single_470 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'single'8594'single_470 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_dom'45'single'8594'single_470 v0 v3 v4 v5 v6
du_dom'45'single'8594'single_470 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'single'8594'single_470 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0) (coe v3)
         (coe v1))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            du_'8712''45'dom'45'singleton'45'pair_466 (coe v0) (coe v1)
            (coe v2) (coe v3))
         v4)
-- Axiom.Set.Rel._._.single→dom-single
d_single'8594'dom'45'single_472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_single'8594'dom'45'single_472 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_single'8594'dom'45'single_472 v0 v3 v4 v5 v6
du_single'8594'dom'45'single_472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_single'8594'dom'45'single_472 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         du_'8712''45'dom'45'singleton'45'pair_466 (coe v0) (coe v1)
         (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0) (coe v3)
            (coe v1))
         v4)
-- Axiom.Set.Rel._.dom-single≡single
d_dom'45'single'8801'single_474 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_474 v0 ~v1 ~v2 v3 v4
  = du_dom'45'single'8801'single_474 v0 v3 v4
du_dom'45'single'8801'single_474 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45'single'8801'single_474 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45'single'8594'single_470 (coe v0) (coe v1) (coe v2))
      (coe du_single'8594'dom'45'single_472 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.∈-dom
d_'8712''45'dom_478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8712''45'dom_478 v0 ~v1 ~v2 v3 v4 v5
  = du_'8712''45'dom_478 v0 v3 v4 v5
du_'8712''45'dom_478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8712''45'dom_478 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_394 (coe v0) (coe v1)
         (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v3)))
-- Axiom.Set.Rel.∉-dom∅
d_'8713''45'dom'8709'_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_486 = erased
-- Axiom.Set.Rel.dom∅
d_dom'8709'_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_492 ~v0 ~v1 ~v2 = du_dom'8709'_492
du_dom'8709'_492 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8709'_492
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
      (\ v0 v1 ->
         coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428)
-- Axiom.Set.Rel.dom∪
d_dom'8746'_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_494 v0 ~v1 ~v2 v3 v4 = du_dom'8746'_494 v0 v3 v4
du_dom'8746'_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746'_494 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
           (\ v4 v5 v6 ->
              coe
                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
           erased erased erased
           (coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
              (\ v4 v5 v6 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              erased erased erased
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
                 (\ v4 v5 v6 ->
                    coe
                      MAlonzo.Code.Function.Base.du__'8728''8242'__216
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.du_'8596''8658'_82
                         (coe
                            MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)))
                 erased erased erased
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v4 v5 v6 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_676 (coe v0)
                          (coe du_dom_338 v0 v1) (coe du_dom_338 v0 v2) (coe v3)))
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_dom'8712'_422 (coe v0) (coe v1) (coe v3))
                       (coe du_dom'8712'_422 (coe v0) (coe v2) (coe v3))))
                 (coe
                    MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'distrib'45''8846'''_108))
              (coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                 (coe
                    (\ v4 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_676 (coe v0) (coe v1)
                            (coe v2)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))))))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
              (coe
                 du_dom'8712'_422 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0) (coe v1) (coe v2))
                 (coe v3))))
-- Axiom.Set.Rel.dom⊆
d_dom'8838'_514 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_dom'8838'_514 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_dom'8838'_514 v0 v3 v4 v5 v6 v7
du_dom'8838'_514 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_dom'8838'_514 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe du_dom'8712'_422 (coe v0) (coe v2) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1726
               (coe du_dom'8712'_422 (coe v0) (coe v1) (coe v4)) v5))
         (coe
            v3
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1726
                     (coe du_dom'8712'_422 (coe v0) (coe v1) (coe v4)) v5)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1726
                  (coe du_dom'8712'_422 (coe v0) (coe v1) (coe v4)) v5))))
-- Axiom.Set.Rel.dom-cong
d_dom'45'cong_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_520 v0 ~v1 ~v2 v3 v4 v5
  = du_dom'45'cong_520 v0 v3 v4 v5
du_dom'45'cong_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45'cong_520 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_dom'8838'_514 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe
         du_dom'8838'_514 (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Axiom.Set.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45''8838'map'691'_526 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45''8838'map'691'_526 v0 v4 v5 v6 v7
du_dom'45''8838'map'691'_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45''8838'map'691'_526 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) v1)
                 v3)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased)
                 v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                         -> coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 du_dom'8712'_422 (coe v0)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_386 v0
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe (\ v12 -> v12)) (coe (\ v12 -> v2)))
                                    v1)
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2 v9)
                                 (coe
                                    MAlonzo.Code.Function.Bundles.d_to_1724
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_394 (coe v0) (coe v1)
                                       (coe
                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                          (coe (\ v12 -> v12)) (coe (\ v12 -> v2)))
                                       (coe
                                          MAlonzo.Code.Data.Product.Base.du_map_128
                                          (coe (\ v12 -> v12)) (coe (\ v12 -> v2))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                             (coe v9))))
                                    (coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                          (coe v9))
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                          (coe v11)))))
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'map'691''8838'_550 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45'map'691''8838'_550 v0 v4 v5 v6 v7
du_dom'45'map'691''8838'_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'map'691''8838'_550 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_map'691'_412 (coe v0) (coe v2) (coe v1)))
                 v3)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased)
                 v4) in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> case coe v6 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> case coe v7 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                         -> let v12
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1726
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased
                                            erased
                                            (coe
                                               MAlonzo.Code.Data.Product.Base.du_map_128
                                               (coe (\ v12 -> v12)) (coe (\ v12 -> v2)))
                                            v1)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                                            (coe v9)))
                                      v11 in
                            coe
                              (case coe v12 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                   -> case coe v13 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                          -> case coe v14 of
                                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                                 -> coe
                                                      MAlonzo.Code.Function.Bundles.d_to_1724
                                                      (coe
                                                         du_dom'8712'_422 (coe v0) (coe v1)
                                                         (coe v15))
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe v16) (coe v18))
                                               _ -> MAlonzo.RTE.mazUnreachableError
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.mapʳ-dom
d_map'691''45'dom_576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_576 v0 ~v1 ~v2 ~v3 v4 v5
  = du_map'691''45'dom_576 v0 v4 v5
du_map'691''45'dom_576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'691''45'dom_576 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45''8838'map'691'_526 (coe v0) (coe v1) (coe v2))
      (coe du_dom'45'map'691''8838'_550 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.dom-∅
d_dom'45''8709'_578 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_578 ~v0 ~v1 ~v2 ~v3 ~v4 = du_dom'45''8709'_578
du_dom'45''8709'_578 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45''8709'_578
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Rel.mapPartialLiftKey
d_mapPartialLiftKey_586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_586 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapPartialLiftKey_586 v4 v5
du_mapPartialLiftKey_586 ::
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_586 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_68
             (\ v4 ->
                coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))
             (coe v0 v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_606 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_mapPartialLiftKey'45'map_606 v0 v4 v5 v6 v7 v8
du_mapPartialLiftKey'45'map_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey'45'map_606 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (coe du_mapPartialLiftKey_586 (coe v3)) v4)
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
d_mapMaybeWithKey_646 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () -> (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapMaybeWithKey_646 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey_646 v0 v4 v5
du_mapMaybeWithKey_646 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapMaybeWithKey_646 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_564 v0
      (coe du_mapPartialLiftKey_586 (coe v1)) v2
-- Axiom.Set.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_662 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8712''45'mapMaybeWithKey_662 v0 v4 v5 v6 v7 v8
du_'8712''45'mapMaybeWithKey_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'mapMaybeWithKey_662 v0 v1 v2 v3 v4 v5
  = coe
      du_mapPartialLiftKey'45'map_606 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_592 (coe v0)
         (coe v4) (coe du_mapPartialLiftKey_586 (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'map_394 (coe v0)
               (coe du_mapMaybeWithKey_646 (coe v0) (coe v3) (coe v4))
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
d__'8739'__678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'__678 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__678 v0 v2 v4 v5
du__'8739'__678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'__678 v0 v1 v2 v3
  = coe du__'8739'''__348 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'_'7580'_684 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_684 v0 v2 v4 v5
du__'8739'_'7580'_684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'_'7580'_684 v0 v1 v2 v3
  = coe
      du__'8739'''__348 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'10218''36''10219'__690 v0 ~v1 v2 ~v3 v4 v5
  = du__'10218''36''10219'__690 v0 v2 v4 v5
du__'10218''36''10219'__690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'10218''36''10219'__690 v0 v1 v2 v3
  = coe
      du_range_340 v0
      (coe du__'8739'__678 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Rel.Restriction.res-cong
d_res'45'cong_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_698 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'cong_698 v0 v2 v4 v5 v6 v7
du_res'45'cong_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_698 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                              (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                              (coe v1 v4)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-dom
d_res'45'dom_708 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_708 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom_708 v0 v2 v4 v5 v6 v7
du_res'45'dom_708 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_708 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'__678 (coe v0) (coe v1) (coe v2) (coe v3)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
d_res'45'dom'7504'_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'7504'_720 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom'7504'_720 v0 v2 v4 v5 v6 v7
du_res'45'dom'7504'_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'7504'_720 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'__678 (coe v0) (coe v1) (coe v2) (coe v3)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
d_res'45'comp'45'cong_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_734 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'cong_734 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'cong_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_734 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
d_res'45'comp'45'dom_750 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_750 = erased
-- Axiom.Set.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_762 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'comp'45'dom'7504'_762 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'dom'7504'_762 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'dom'7504'_762 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'comp'45'dom'7504'_762 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'_'7580'_684 (coe v0) (coe v1) (coe v2) (coe v3)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
d_res'45''8838'_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45''8838'_774 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45''8838'_774 v0 v2 v4 v5 v6
du_res'45''8838'_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45''8838'_774 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.ex-⊆
d_ex'45''8838'_776 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_ex'45''8838'_776 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_ex'45''8838'_776 v0 v2 v4 v5 v6
du_ex'45''8838'_776 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_ex'45''8838'_776 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
d_res'45''8709'_778 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_778 ~v0 ~v1 ~v2 ~v3 ~v4 = du_res'45''8709'_778
du_res'45''8709'_778 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_778 = coe du_dom'45''8709'_578
-- Axiom.Set.Rel.Restriction.res-∅ᶜ
d_res'45''8709''7580'_780 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_780 v0 ~v1 v2 ~v3 v4
  = du_res'45''8709''7580'_780 v0 v2 v4
du_res'45''8709''7580'_780 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_780 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_ex'45''8838'_776 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0)))
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
              v0 v2
              (coe
                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                 (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                    (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                    (coe v1 (coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0))))
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
              v3
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_788 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'res'7580''45'dom'8315'_788 v0 v2 v4 v5 v6 v7
du_'8712''45'res'7580''45'dom'8315'_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_788 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe du_dom'8712'_422 (coe v0) (coe v2) (coe v4))
         (coe
            du_dom'8838'_514 (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v2
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                        (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                        (coe v1 v3))
                     (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe v2)
            (coe du_ex'45''8838'_776 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'res'7580''45'dom'8314'_796 v0 ~v1 v2 v3 ~v4 v5 v6 v7
  = du_'8712''45'res'7580''45'dom'8314'_796 v0 v2 v3 v5 v6 v7
du_'8712''45'res'7580''45'dom'8314'_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'res'7580''45'dom'8314'_796 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       du_dom'8712'_422 (coe v0)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_filter_408 v0
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                (coe v1 v2))
                             (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                          v3)
                       (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
                          v0 v3
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                (coe v1 v2))
                             (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v8))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v9))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_808 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_808 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_'8712''45'res'7580''45'dom_808 v0 v2 v4 v5 v6
du_'8712''45'res'7580''45'dom_808 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'res'7580''45'dom_808 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         du_'8712''45'res'7580''45'dom'8315'_788 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
      (coe
         du_'8712''45'res'7580''45'dom'8314'_796 (coe v0) (coe v1) (coe v3)
         (coe v2) (coe v4))
-- Axiom.Set.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_812 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_812 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45''8746'_812 v0 v2 v3 v5 v6
du_res'45'ex'45''8746'_812 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_812 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_674 (coe v0)
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
         (coe du_res'45''8838'_774 (coe v0) (coe v1) (coe v3) (coe v2))
         (coe du_ex'45''8838'_776 (coe v0) (coe v1) (coe v3) (coe v2)))
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
                                      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
                                      v0
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_filter_408 v0
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
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
                                  MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214 v0
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
                                     MAlonzo.Code.Axiom.Set.du_filter_408 v0
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
                                        MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
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
d_res'45'ex'45'disjoint_826 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_826 = erased
-- Axiom.Set.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_834 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_834 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45'disj'45''8746'_834 v0 v2 v3 v5 v6
du_res'45'ex'45'disj'45''8746'_834 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_834 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (let v5
             = coe
                 du_res'45'ex'45''8746'_812 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v4) in
       coe
         (case coe v5 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
            _ -> MAlonzo.RTE.mazUnreachableError))
      erased
-- Axiom.Set.Rel.Restriction.curryʳ
d_curry'691'_842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_curry'691'_842 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'691'_842 v0 v2 v5 v6
du_curry'691'_842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_curry'691'_842 v0 v1 v2 v3
  = coe
      du_map'737'_406 (coe v0)
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du__'8739'''__348 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v3))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_854 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'curry'691'_854 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8712''45'curry'691'_854 v0 v2 v5 v6 v7 v8 v9
du_'8712''45'curry'691'_854 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'curry'691'_854 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166 v0
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                 (coe (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
              (coe
                 du__'8739'''__348 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                    (coe
                       v1
                       (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v3))
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
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
                                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
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
d__'8745'__878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__878 v0 ~v1 v2 = du__'8745'__878 v0 v2
du__'8745'__878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__878 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
-- Axiom.Set.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8838''8745'_920 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8838''8745'_920 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8838''8745'_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8838''8745'_920 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_700 (coe v0) (coe v1)
         (coe du_dom_338 v0 v2) (coe du_dom_338 v0 v3) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_res'45'dom'7504'_720 (coe v0) (coe v1) (coe v2)
            (coe du_dom_338 v0 v3) (coe v4) (coe v5))
         (coe
            du_res'45'dom_708 (coe v0) (coe v1) (coe v2) (coe du_dom_338 v0 v3)
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_928 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8745''8838'_928 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8745''8838'_928 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8745''8838'_928 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8745''8838'_928 v0 v1 v2 v3 v4 v5
  = let v6
          = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                    (\ v6 v7 v8 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414 (coe v0)
                       (coe du_dom_338 v0 v2) (coe v1 (coe du_dom_338 v0 v3)) (coe v4)))
                 v5) in
    coe
      (let v7
             = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1726
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v7 v8 v9 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                          (\ v7 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414 (coe v0)
                          (coe du_dom_338 v0 v2) (coe v1 (coe du_dom_338 v0 v3)) (coe v4)))
                    v5) in
       coe
         (let v8
                = let v8
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1726
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                                  (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v3)
                               v4)
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                  (\ v8 ->
                                     coe
                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                       (coe
                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                  erased)
                               v7) in
                  coe
                    (case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                         -> case coe v9 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                -> case coe v10 of
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                       -> coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                            (coe v14)
                                     _ -> MAlonzo.RTE.mazUnreachableError
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError) in
          coe
            (let v9
                   = coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                             (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)) v2)
                          v4)
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1726
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (\ v9 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe
                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                             erased)
                          v6) in
             coe
               (case coe v9 of
                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                    -> case coe v10 of
                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                           -> case coe v11 of
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                  -> coe
                                       seq (coe v8)
                                       (coe
                                          MAlonzo.Code.Function.Bundles.d_to_1724
                                          (coe
                                             du_dom'8712'_422 (coe v0)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_filter_408 v0
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_replacement_196
                                                            v0 erased erased
                                                            (\ v16 ->
                                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 (coe v16))
                                                            v3)))
                                                   (\ v16 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v16)))
                                                v2)
                                             (coe v4))
                                          (coe
                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v13)
                                             (coe
                                                MAlonzo.Code.Function.Bundles.d_to_1724
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414
                                                   (coe v0) (coe v2)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                      (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0))
                                                      erased erased erased
                                                      (coe
                                                         v1
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_replacement_196
                                                               v0 erased erased
                                                               (\ v16 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v16))
                                                               v3)))
                                                      (\ v16 ->
                                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                           (coe v16)))
                                                   (coe
                                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                      (coe v4) (coe v13)))
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe v7) (coe v15)))))
                                _ -> MAlonzo.RTE.mazUnreachableError
                         _ -> MAlonzo.RTE.mazUnreachableError
                  _ -> MAlonzo.RTE.mazUnreachableError))))
-- Axiom.Set.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_976 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_976 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm''_976 v0 v2 v5 v6
du_res'45'dom'45'comm''_976 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_976 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_res'45'dom'45'comm'8838''8745'_920 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_res'45'dom'45'comm'8745''8838'_928 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Axiom.Set.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_982 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_982 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm_982 v0 v2 v5 v6
du_res'45'dom'45'comm_982 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_982 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_dom_338 v0
         (coe
            du__'8739'__678 (coe v0) (coe v1) (coe v2) (coe du_dom_338 v0 v3)))
      (coe
         du_dom_338 v0
         (coe
            du__'8739'__678 (coe v0) (coe v1) (coe v3) (coe du_dom_338 v0 v2)))
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
            du_dom_338 v0
            (coe
               du__'8739'__678 (coe v0) (coe v1) (coe v2) (coe du_dom_338 v0 v3)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
            (coe du_dom_338 v0 v2) (coe du_dom_338 v0 v3))
         (coe
            du_dom_338 v0
            (coe
               du__'8739'__678 (coe v0) (coe v1) (coe v3) (coe du_dom_338 v0 v2)))
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
               MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
               (coe du_dom_338 v0 v2) (coe du_dom_338 v0 v3))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
               (coe du_dom_338 v0 v3) (coe du_dom_338 v0 v2))
            (coe
               du_dom_338 v0
               (coe
                  du__'8739'__678 (coe v0) (coe v1) (coe v3) (coe du_dom_338 v0 v2)))
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
                  MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
                  (coe du_dom_338 v0 v3) (coe du_dom_338 v0 v2))
               (coe
                  du_dom_338 v0
                  (coe
                     du__'8739'__678 (coe v0) (coe v1) (coe v3) (coe du_dom_338 v0 v2)))
               (coe
                  du_dom_338 v0
                  (coe
                     du__'8739'__678 (coe v0) (coe v1) (coe v3) (coe du_dom_338 v0 v2)))
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
                        du_dom_338 v0
                        (coe
                           du__'8739'__678 (coe v0) (coe v1) (coe v3)
                           (coe du_dom_338 v0 v2)))))
               (coe
                  du_res'45'dom'45'comm''_976 (coe v0) (coe v1) (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_982 (coe v0)
               (coe v1) (coe du_dom_338 v0 v3) (coe du_dom_338 v0 v2)))
         (coe
            du_res'45'dom'45'comm''_976 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Axiom.Set.Rel.Corestriction._∣^_
d__'8739''94'__1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'__1038 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__1038 v0 v2 v4 v5
du__'8739''94'__1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'__1038 v0 v1 v2 v3
  = coe du__'8739''94'''__356 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_1044 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'_'7580'_1044 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_1044 v0 v2 v4 v5
du__'8739''94'_'7580'_1044 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'_'7580'_1044 v0 v1 v2 v3
  = coe
      du__'8739''94'''__356 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Corestriction.cores-⊆
d_cores'45''8838'_1050 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_cores'45''8838'_1050 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_cores'45''8838'_1050 v0 v2 v4 v5 v6
du_cores'45''8838'_1050 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_cores'45''8838'_1050 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Corestriction.coex-⊆
d_coex'45''8838'_1052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_coex'45''8838'_1052 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_coex'45''8838'_1052 v0 v2 v4 v5 v6
du_coex'45''8838'_1052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_coex'45''8838'_1052 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
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
