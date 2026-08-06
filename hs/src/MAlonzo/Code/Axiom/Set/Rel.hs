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
import qualified MAlonzo.Code.Data.Product.Properties
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
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8713'__16 = erased
-- Axiom.Set.Rel._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0) v2 v3
-- Axiom.Set.Rel._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Rel._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Rel._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Rel._.map
d_map_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_58 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_426 (coe v0)
-- Axiom.Set.Rel._.spec-∈
d_spec'45''8712'_80 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> ()
d_spec'45''8712'_80 = erased
-- Axiom.Set.Rel._.∅
d_'8709'_94 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> AgdaAny
d_'8709'_94 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0)
-- Axiom.Set.Rel._.❴_❵
d_'10100'_'10101'_126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_126 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 (coe v0)
-- Axiom.Set.Rel._.Intersection._∩_
d__'8745'__130 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__130 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) v2 v3 v4
-- Axiom.Set.Rel._._≡_⨿_
d__'8801'_'10815'__140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__140 = erased
-- Axiom.Set.Rel.Rel
d_Rel_328 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Rel_328 = erased
-- Axiom.Set.Rel.relatedˡ
d_related'737'_350 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny
d_related'737'_350 v0 ~v1 ~v2 = du_related'737'_350 v0
du_related'737'_350 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> AgdaAny -> AgdaAny
du_related'737'_350 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.∅ʳ
d_'8709''691'_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> AgdaAny
d_'8709''691'_352 v0 ~v1 ~v2 = du_'8709''691'_352 v0
du_'8709''691'_352 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> AgdaAny
du_'8709''691'_352 v0
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0)
-- Axiom.Set.Rel.dom
d_dom_354 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_354 v0 ~v1 ~v2 = du_dom_354 v0
du_dom_354 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> AgdaAny -> AgdaAny
du_dom_354 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
-- Axiom.Set.Rel.range
d_range_356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny
d_range_356 v0 ~v1 ~v2 = du_range_356 v0
du_range_356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> AgdaAny -> AgdaAny
du_range_356 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (\ v1 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v1))
-- Axiom.Set.Rel._⁻¹ʳ
d__'8315''185''691'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny
d__'8315''185''691'_362 v0 ~v1 ~v2 v3
  = du__'8315''185''691'_362 v0 v3
du__'8315''185''691'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> AgdaAny -> AgdaAny
du__'8315''185''691'_362 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370) v1
-- Axiom.Set.Rel.⁻¹ʳ-cong
d_'8315''185''691''45'cong_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8315''185''691''45'cong_378 v0 ~v1 ~v2 v3 v4
  = du_'8315''185''691''45'cong_378 v0 v3 v4
du_'8315''185''691''45'cong_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8315''185''691''45'cong_378 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_418
      (coe v0) (coe v1) (coe v2)
      (coe MAlonzo.Code.Data.Product.Base.du_swap_370)
-- Axiom.Set.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_380 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'dom'8658'disjoint_380 = erased
-- Axiom.Set.Rel._∣'_
d__'8739'''__386 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'''__386 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8739'''__386 v0 v4 v5
du__'8739'''__386 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8739'''__386 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_448 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      v1
-- Axiom.Set.Rel._∣^'_
d__'8739''94'''__394 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'''__394 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__394 v0 v4 v5
du__'8739''94'''__394 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'''__394 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_448 v0
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      v1
-- Axiom.Set.Rel.impl⇒res⊆
d_impl'8658'res'8838'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'res'8838'_412 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'res'8838'_412 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'res'8838'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'res'8838'_412 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_434 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_impl'8658'cores'8838'_434 v0 ~v1 ~v2 v3 ~v4 ~v5 v6 v7 v8 v9 v10
  = du_impl'8658'cores'8838'_434 v0 v3 v6 v7 v8 v9 v10
du_impl'8658'cores'8838'_434 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_impl'8658'cores'8838'_434 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
      v0 v1
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v3
         (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
      v5
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8321'_138
         (coe v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
            v0 v1
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
               (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
            v5 v6))
-- Axiom.Set.Rel.mapˡ
d_map'737'_444 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_444 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'737'_444 v0 v4 v5
du_map'737'_444 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'737'_444 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe v1)) v2
-- Axiom.Set.Rel.mapʳ
d_map'691'_450 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_450 v0 ~v1 ~v2 ~v3 v4 v5 = du_map'691'_450 v0 v4 v5
du_map'691'_450 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map'691'_450 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_map_426 v0
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v3 -> v1)))
      v2
-- Axiom.Set.Rel.dom∈
d_dom'8712'_460 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8712'_460 v0 ~v1 ~v2 v3 v4 = du_dom'8712'_460 v0 v3 v4
du_dom'8712'_460 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_dom'8712'_460 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
      (\ v3 v4 v5 ->
         coe
           MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
      erased erased erased
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
         erased erased erased
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
            (\ v3 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
            erased)
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0) (coe v1)
            (coe (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
            (coe v2)))
      (coe
         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
         (coe
            MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
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
d_'8712''45'dom'45'singleton'45'pair_504 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'dom'45'singleton'45'pair_504 v0 ~v1 ~v2 v3 v4 v5
  = du_'8712''45'dom'45'singleton'45'pair_504 v0 v3 v4 v5
du_'8712''45'dom'45'singleton'45'pair_504 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'dom'45'singleton'45'pair_504 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe
                 du_dom'8712'_460 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_singleton_476 (coe v0)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
                 (coe v3))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
                    erased))))
      erased
-- Axiom.Set.Rel._._.dom-single→single
d_dom'45'single'8594'single_508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'single'8594'single_508 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_dom'45'single'8594'single_508 v0 v3 v4 v5 v6
du_dom'45'single'8594'single_508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'single'8594'single_508 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0) (coe v3)
         (coe v1))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            du_'8712''45'dom'45'singleton'45'pair_504 (coe v0) (coe v1)
            (coe v2) (coe v3))
         v4)
-- Axiom.Set.Rel._._.single→dom-single
d_single'8594'dom'45'single_510 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_single'8594'dom'45'single_510 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_single'8594'dom'45'single_510 v0 v3 v4 v5 v6
du_single'8594'dom'45'single_510 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_single'8594'dom'45'single_510 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         du_'8712''45'dom'45'singleton'45'pair_504 (coe v0) (coe v1)
         (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0) (coe v3)
            (coe v1))
         v4)
-- Axiom.Set.Rel._.dom-single≡single
d_dom'45'single'8801'single_512 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_512 v0 ~v1 ~v2 v3 v4
  = du_dom'45'single'8801'single_512 v0 v3 v4
du_dom'45'single'8801'single_512 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45'single'8801'single_512 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45'single'8594'single_508 (coe v0) (coe v1) (coe v2))
      (coe du_single'8594'dom'45'single_510 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.∈-dom
d_'8712''45'dom_516 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8712''45'dom_516 v0 ~v1 ~v2 v3 v4 v5
  = du_'8712''45'dom_516 v0 v3 v4 v5
du_'8712''45'dom_516 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8712''45'dom_516 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0) (coe v1)
         (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v3)))
-- Axiom.Set.Rel.∉-dom∅
d_'8713''45'dom'8709'_524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_524 = erased
-- Axiom.Set.Rel.dom∅
d_dom'8709'_530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_530 ~v0 ~v1 ~v2 = du_dom'8709'_530
du_dom'8709'_530 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8709'_530
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
      (\ v0 v1 ->
         coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_430)
-- Axiom.Set.Rel.dom∪
d_dom'8746'_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_532 v0 ~v1 ~v2 v3 v4 = du_dom'8746'_532 v0 v3 v4
du_dom'8746'_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746'_532 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_246)
      (\ v3 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
           (\ v4 v5 v6 ->
              coe
                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
           erased erased erased
           (coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
              (\ v4 v5 v6 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              erased erased erased
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
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
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                    (\ v4 v5 v6 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                       (\ v4 v5 v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                          (\ v4 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716 (coe v0)
                          (coe du_dom_354 v0 v1) (coe du_dom_354 v0 v2) (coe v3)))
                    (coe
                       MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                       (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                       (coe du_dom'8712'_460 (coe v0) (coe v1) (coe v3))
                       (coe du_dom'8712'_460 (coe v0) (coe v2) (coe v3))))
                 (coe
                    MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'distrib'45''8846'_72))
              (coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716 (coe v0) (coe v1)
                         (coe v2)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))))))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
              (coe
                 du_dom'8712'_460 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0) (coe v1) (coe v2))
                 (coe v3))))
-- Axiom.Set.Rel.dom⊆
d_dom'8838'_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
d_dom'8838'_552 v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_dom'8838'_552 v0 v3 v4 v5 v6 v7
du_dom'8838'_552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny
du_dom'8838'_552 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe du_dom'8712'_460 (coe v0) (coe v2) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Function.Bundles.d_from_1870
               (coe du_dom'8712'_460 (coe v0) (coe v1) (coe v4)) v5))
         (coe
            v3
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe du_dom'8712'_460 (coe v0) (coe v1) (coe v4)) v5)))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  MAlonzo.Code.Function.Bundles.d_from_1870
                  (coe du_dom'8712'_460 (coe v0) (coe v1) (coe v4)) v5))))
-- Axiom.Set.Rel.dom-cong
d_dom'45'cong_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_558 v0 ~v1 ~v2 v3 v4 v5
  = du_dom'45'cong_558 v0 v3 v4 v5
du_dom'45'cong_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45'cong_558 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_dom'8838'_552 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe
         du_dom'8838'_552 (coe v0) (coe v2) (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Axiom.Set.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45''8838'map'691'_564 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45''8838'map'691'_564 v0 v4 v5 v6 v7
du_dom'45''8838'map'691'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45''8838'map'691'_564 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) v1)
                 v3)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
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
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 du_dom'8712'_460 (coe v0)
                                 (coe
                                    MAlonzo.Code.Axiom.Set.du_map_426 v0
                                    (coe
                                       MAlonzo.Code.Data.Product.Base.du_map_128
                                       (coe (\ v12 -> v12)) (coe (\ v12 -> v2)))
                                    v1)
                                 (coe v3))
                              (coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2 v9)
                                 (coe
                                    MAlonzo.Code.Function.Bundles.d_to_1868
                                    (coe
                                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0) (coe v1)
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
d_dom'45'map'691''8838'_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_dom'45'map'691''8838'_588 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_dom'45'map'691''8838'_588 v0 v4 v5 v6 v7
du_dom'45'map'691''8838'_588 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_dom'45'map'691''8838'_588 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                    (coe du_map'691'_450 (coe v0) (coe v2) (coe v1)))
                 v3)
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
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
                                      MAlonzo.Code.Function.Bundles.d_from_1870
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased
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
                                                      MAlonzo.Code.Function.Bundles.d_to_1868
                                                      (coe
                                                         du_dom'8712'_460 (coe v0) (coe v1)
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
d_map'691''45'dom_614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_614 v0 ~v1 ~v2 ~v3 v4 v5
  = du_map'691''45'dom_614 v0 v4 v5
du_map'691''45'dom_614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'691''45'dom_614 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_dom'45''8838'map'691'_564 (coe v0) (coe v1) (coe v2))
      (coe du_dom'45'map'691''8838'_588 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Rel.dom-mapˡ≡map-dom
d_dom'45'map'737''8801'map'45'dom_618 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'map'737''8801'map'45'dom_618 v0 ~v1 ~v2 ~v3 v4 v5
  = du_dom'45'map'737''8801'map'45'dom_618 v0 v4 v5
du_dom'45'map'737''8801'map'45'dom_618 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45'map'737''8801'map'45'dom_618 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                            (coe MAlonzo.Code.Data.Product.Base.du_map'8321'_138 (coe v2)) v1)
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     du_dom'8712'_460 (coe v0)
                                     (coe du_map'737'_444 (coe v0) (coe v2) (coe v1)) (coe v3))
                                  v4))))
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               du_dom'8712'_460 (coe v0)
                               (coe du_map'737'_444 (coe v0) (coe v2) (coe v1)) (coe v3))
                            v4)) in
            coe
              (case coe v5 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                   -> case coe v6 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                          -> case coe v7 of
                               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                 -> coe
                                      MAlonzo.Code.Function.Bundles.d_to_1868
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0)
                                         (coe du_dom_354 v0 v1) (coe v2) (coe v3))
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                               (coe
                                                  MAlonzo.Code.Data.Product.Properties.du_'215''45''8801''44''8801''8592''8801'_232))
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_to_1868
                                               (coe du_dom'8712'_460 (coe v0) (coe v1) (coe v8))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe v9) (coe v11)))))
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased v2
                            (coe du_dom_354 v0 v1))
                         v3)
                      v4 in
            coe
              (case coe v5 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                   -> case coe v7 of
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                          -> let v10
                                   = coe
                                       MAlonzo.Code.Function.Bundles.d_from_1870
                                       (coe
                                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                          (coe
                                             MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased
                                             erased
                                             (\ v10 ->
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))
                                             v1)
                                          v6)
                                       (coe
                                          MAlonzo.Code.Function.Bundles.d_from_1870
                                          (coe
                                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                             (\ v10 ->
                                                coe
                                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                                  (coe
                                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                             erased)
                                          v9) in
                             coe
                               (case coe v10 of
                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
                                    -> case coe v11 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v12 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> coe
                                                       MAlonzo.Code.Function.Bundles.d_to_1868
                                                       (coe
                                                          du_dom'8712'_460 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.du_map_426 v0
                                                             (\ v17 ->
                                                                coe
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                  (coe
                                                                     v2
                                                                     (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v17)))
                                                                  (coe
                                                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                     (coe v17)))
                                                             v1)
                                                          (coe v3))
                                                       (coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v14)
                                                          (coe
                                                             MAlonzo.Code.Function.Bundles.d_to_1868
                                                             (coe
                                                                MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                                (coe v0) (coe v1)
                                                                (coe
                                                                   (\ v17 ->
                                                                      coe
                                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                        (coe
                                                                           v2
                                                                           (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                              (coe v17)))
                                                                        (coe
                                                                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                           (coe v17))))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v3) (coe v14)))
                                                             (coe
                                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v6) (coe v14))
                                                                (coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   erased (coe v16)))))
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError
                                  _ -> MAlonzo.RTE.mazUnreachableError)
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Rel.dom-∅
d_dom'45''8709'_666 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_666 ~v0 ~v1 ~v2 ~v3 ~v4 = du_dom'45''8709'_666
du_dom'45''8709'_666 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'45''8709'_666
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_434
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Axiom.Set.Rel.mapPartialLiftKey
d_mapPartialLiftKey_674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_674 ~v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapPartialLiftKey_674 v4 v5
du_mapPartialLiftKey_674 ::
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_674 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Data.Maybe.Base.du_map_64
             (\ v4 ->
                coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4))
             (coe v0 v2 v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_694 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_694 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_mapPartialLiftKey'45'map_694 v0 v4 v5 v6 v7 v8
du_mapPartialLiftKey'45'map_694 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey'45'map_694 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (coe du_mapPartialLiftKey_674 (coe v3)) v4)
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
d_mapMaybeWithKey_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () -> (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapMaybeWithKey_734 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey_734 v0 v4 v5
du_mapMaybeWithKey_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapMaybeWithKey_734 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_mapPartial_604 v0
      (coe du_mapPartialLiftKey_674 (coe v1)) v2
-- Axiom.Set.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_750 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_750 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_'8712''45'mapMaybeWithKey_750 v0 v4 v5 v6 v7 v8
du_'8712''45'mapMaybeWithKey_750 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'mapMaybeWithKey_750 v0 v1 v2 v3 v4 v5
  = coe
      du_mapPartialLiftKey'45'map_694 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v4)
      (coe
         MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_632 (coe v0)
         (coe v4) (coe du_mapPartialLiftKey_674 (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1868
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0)
               (coe du_mapMaybeWithKey_734 (coe v0) (coe v3) (coe v4))
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
d__'8739'__766 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'__766 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__766 v0 v2 v4 v5
du__'8739'__766 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'__766 v0 v1 v2 v3
  = coe du__'8739'''__386 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_772 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739'_'7580'_772 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_772 v0 v2 v4 v5
du__'8739'_'7580'_772 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739'_'7580'_772 v0 v1 v2 v3
  = coe
      du__'8739'''__386 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__778 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'10218''36''10219'__778 v0 ~v1 v2 ~v3 v4 v5
  = du__'10218''36''10219'__778 v0 v2 v4 v5
du__'10218''36''10219'__778 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'10218''36''10219'__778 v0 v1 v2 v3
  = coe
      du_range_356 v0
      (coe du__'8739'__766 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Rel.Restriction.res-cong
d_res'45'cong_786 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_786 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'cong_786 v0 v2 v4 v5 v6 v7
du_res'45'cong_786 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_786 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                        (coe v1 v4)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                              (coe v1 v3)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                        (coe v1 v3)
                        (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                     v8
                     (coe
                        MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                        (coe v7 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                        (coe
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                              (coe v1 v4)
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-dom
d_res'45'dom_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_796 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom_796 v0 v2 v4 v5 v6 v7
du_res'45'dom_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_796 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'__766 (coe v0) (coe v1) (coe v2) (coe v3)))
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
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                          v0 v2
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                             (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                             (coe v1 v3)
                             (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                          v7 v10)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_808 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'7504'_808 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'dom'7504'_808 v0 v2 v4 v5 v6 v7
du_res'45'dom'7504'_808 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'7504'_808 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'__766 (coe v0) (coe v1) (coe v2) (coe v3)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_180
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                             v0 v2
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                (coe v1 v3)
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                             v7 v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_822 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_822 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'cong_822 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'cong_822 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_822 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                           (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                 (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                 (coe v1 v3))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
             (coe
                (\ v8 v9 ->
                   coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                     v0 v2
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                        (coe
                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                           (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
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
                           MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                           v0 v2
                           (coe
                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                              (coe
                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                 (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                 (coe v1 v4))
                              (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                           v8 v9))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_838 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_838 = erased
-- Axiom.Set.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_850 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'comp'45'dom'7504'_850 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'comp'45'dom'7504'_850 v0 v2 v4 v5 v6 v7
du_res'45'comp'45'dom'7504'_850 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'comp'45'dom'7504'_850 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                    (coe du__'8739'_'7580'_772 (coe v0) (coe v1) (coe v2) (coe v3)))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_180
                       (coe v0)
                       (coe (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                       (coe v2) (coe v7)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                             v0 v2
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                (coe
                                   MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                   (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                   (coe v1 v3))
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                             v7 v10))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Rel.Restriction.res-⊆
d_res'45''8838'_862 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45''8838'_862 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45''8838'_862 v0 v2 v4 v5 v6
du_res'45''8838'_862 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45''8838'_862 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.ex-⊆
d_ex'45''8838'_864 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_ex'45''8838'_864 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_ex'45''8838'_864 v0 v2 v4 v5 v6
du_ex'45''8838'_864 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_ex'45''8838'_864 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Restriction.res-∅
d_res'45''8709'_866 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_866 ~v0 ~v1 ~v2 ~v3 ~v4 = du_res'45''8709'_866
du_res'45''8709'_866 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_866 = coe du_dom'45''8709'_666
-- Axiom.Set.Rel.Restriction.res-∅ᶜ
d_res'45''8709''7580'_868 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_868 v0 ~v1 v2 ~v3 v4
  = du_res'45''8709''7580'_868 v0 v2 v4
du_res'45''8709''7580'_868 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_868 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_ex'45''8838'_864 (coe v0) (coe v1) (coe v2)
         (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0)))
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
              v0 v2
              (coe
                 MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                 (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                    (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                    (coe v1 (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0))))
                 (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
              v3
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-res
d_'8712''45'res_876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res_876 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'res_876 v0 v2 v4 v5 v6 v7
du_'8712''45'res_876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res_876 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 du_res'45''8838'_862 v0 v1 v2 v3
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5))
                 v6)
              (coe
                 du_res'45'dom_796 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       du_dom'8712'_460 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased v2
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                (coe v1 v3)
                                (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))))
                       (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v6))))))
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                    (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                    (coe v1 v3)
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v5)))
              (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v6))))
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_884 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'res'7580''45'dom'8315'_884 v0 v2 v4 v5 v6 v7
du_'8712''45'res'7580''45'dom'8315'_884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_884 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe du_dom'8712'_460 (coe v0) (coe v2) (coe v4))
         (coe
            du_dom'8838'_552 (coe v0)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased v2
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                     (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                     (coe
                        MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                        (coe v1 v3))
                     (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))))
            (coe v2)
            (coe du_ex'45''8838'_864 (coe v0) (coe v1) (coe v2) (coe v3))
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'res'7580''45'dom'8314'_892 v0 ~v1 v2 v3 ~v4 v5 v6 v7
  = du_'8712''45'res'7580''45'dom'8314'_892 v0 v2 v3 v5 v6 v7
du_'8712''45'res'7580''45'dom'8314'_892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'res'7580''45'dom'8314'_892 v0 v1 v2 v3 v4 v5
  = case coe v5 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
        -> case coe v7 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
               -> coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       du_dom'8712'_460 (coe v0)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_filter_448 v0
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                             (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                (coe v1 v2))
                             (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                          v3)
                       (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                          v0 v3
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                             (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                (coe v1 v2))
                             (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v8))
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v9))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Rel.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res'7580''45'dom_904 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_'8712''45'res'7580''45'dom_904 v0 v2 v4 v5 v6
du_'8712''45'res'7580''45'dom_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res'7580''45'dom_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         du_'8712''45'res'7580''45'dom'8315'_884 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
      (coe
         du_'8712''45'res'7580''45'dom'8314'_892 (coe v0) (coe v1) (coe v3)
         (coe v2) (coe v4))
-- Axiom.Set.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_908 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_908 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45''8746'_908 v0 v2 v3 v5 v6
du_res'45'ex'45''8746'_908 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_908 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_948 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                  (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                  (coe v1 v2)
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased v3
               (coe
                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                  (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                  (coe
                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                     (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                     (coe v1 v2))
                  (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))))
         (coe du_res'45''8838'_862 (coe v0) (coe v1) (coe v3) (coe v2))
         (coe du_ex'45''8838'_864 (coe v0) (coe v1) (coe v3) (coe v2)))
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
                                      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
                                      v0
                                      (coe
                                         MAlonzo.Code.Axiom.Set.du_filter_448 v0
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                            erased (coe v1 v2)
                                            (\ v11 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))
                                         v3)
                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased
                                            erased v3
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                               erased erased
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                  (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                  erased (coe v1 v2))
                                               (\ v11 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v11)))))
                                      v5
                                      (coe
                                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                                            v0 v3
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
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
                                  MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216 v0
                                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                                        v3
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                           (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                           erased (coe v1 v2)
                                           (\ v10 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))))
                                  (coe
                                     MAlonzo.Code.Axiom.Set.du_filter_448 v0
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                        (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                        erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                           (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                           (coe v1 v2))
                                        (\ v10 ->
                                           MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                     v3)
                                  v5
                                  (coe
                                     MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                     (coe
                                        MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                                        v0 v3
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                           (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                           erased
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                              erased (coe v1 v2))
                                           (\ v10 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10)))
                                        v5
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                           (coe v6)))))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_922 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_922 = erased
-- Axiom.Set.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_930 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_930 v0 ~v1 v2 v3 ~v4 v5 v6
  = du_res'45'ex'45'disj'45''8746'_930 v0 v2 v3 v5 v6
du_res'45'ex'45'disj'45''8746'_930 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_930 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (let v5
             = coe
                 du_res'45'ex'45''8746'_908 (coe v0) (coe v1) (coe v2) (coe v3)
                 (coe v4) in
       coe
         (case coe v5 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6)
            _ -> MAlonzo.RTE.mazUnreachableError))
      erased
-- Axiom.Set.Rel.Restriction.curryʳ
d_curry'691'_938 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) -> () -> () -> AgdaAny -> AgdaAny -> AgdaAny
d_curry'691'_938 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'691'_938 v0 v2 v5 v6
du_curry'691'_938 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_curry'691'_938 v0 v1 v2 v3
  = coe
      du_map'737'_444 (coe v0)
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du__'8739'''__386 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v3))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
-- Axiom.Set.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'curry'691'_950 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_'8712''45'curry'691'_950 v0 v2 v5 v6 v7 v8 v9
du_'8712''45'curry'691'_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'curry'691'_950 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_168 v0
              (coe
                 MAlonzo.Code.Data.Product.Base.du_map'8321'_138
                 (coe (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7))))
              (coe
                 du__'8739'''__386 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                    (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                    (coe
                       v1
                       (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v3))
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
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                                         v0 v2
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                            erased
                                            (coe
                                               MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                               erased erased
                                               (coe
                                                  v1
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
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
d__'8745'__974 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__974 v0 ~v1 v2 = du__'8745'__974 v0 v2
du__'8745'__974 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__974 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
-- Axiom.Set.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_1016 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8838''8745'_1016 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8838''8745'_1016 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8838''8745'_1016 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8838''8745'_1016 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_740 (coe v0) (coe v1)
         (coe du_dom_354 v0 v2) (coe du_dom_354 v0 v3) (coe v4))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_res'45'dom'7504'_808 (coe v0) (coe v1) (coe v2)
            (coe du_dom_354 v0 v3) (coe v4) (coe v5))
         (coe
            du_res'45'dom_796 (coe v0) (coe v1) (coe v2) (coe du_dom_354 v0 v3)
            (coe v4) (coe v5)))
-- Axiom.Set.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom'45'comm'8745''8838'_1024 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7 v8
  = du_res'45'dom'45'comm'8745''8838'_1024 v0 v2 v5 v6 v7 v8
du_res'45'dom'45'comm'8745''8838'_1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom'45'comm'8745''8838'_1024 v0 v1 v2 v3 v4 v5
  = let v6
          = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                    (\ v6 v7 v8 ->
                       coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                    erased erased erased
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                       (\ v6 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                       (coe du_dom_354 v0 v2) (coe v1 (coe du_dom_354 v0 v3)) (coe v4)))
                 v5) in
    coe
      (let v7
             = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1870
                    (coe
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                       (\ v7 v8 v9 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                          (\ v7 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                          (coe du_dom_354 v0 v2) (coe v1 (coe du_dom_354 v0 v3)) (coe v4)))
                    v5) in
       coe
         (let v8
                = let v8
                        = coe
                            MAlonzo.Code.Function.Bundles.d_from_1870
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                                  (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v3)
                               v4)
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
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
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                          (coe
                             MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                             (\ v9 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)) v2)
                          v4)
                       (coe
                          MAlonzo.Code.Function.Bundles.d_from_1870
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
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
                                          MAlonzo.Code.Function.Bundles.d_to_1868
                                          (coe
                                             du_dom'8712'_460 (coe v0)
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_filter_448 v0
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                   (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                         (coe
                                                            MAlonzo.Code.Axiom.Set.d_replacement_236
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
                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                   (coe v0) (coe v2)
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0))
                                                      erased erased erased
                                                      (coe
                                                         v1
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_replacement_236
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
d_res'45'dom'45'comm''_1072 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_1072 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm''_1072 v0 v2 v5 v6
du_res'45'dom'45'comm''_1072 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_1072 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_res'45'dom'45'comm'8838''8745'_1016 (coe v0) (coe v1) (coe v2)
         (coe v3))
      (coe
         du_res'45'dom'45'comm'8745''8838'_1024 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Axiom.Set.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_1078 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_1078 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_res'45'dom'45'comm_1078 v0 v2 v5 v6
du_res'45'dom'45'comm_1078 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_1078 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v4 v5 v6 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v6)
      (coe
         du_dom_354 v0
         (coe
            du__'8739'__766 (coe v0) (coe v1) (coe v2) (coe du_dom_354 v0 v3)))
      (coe
         du_dom_354 v0
         (coe
            du__'8739'__766 (coe v0) (coe v1) (coe v3) (coe du_dom_354 v0 v2)))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v4 v5 v6 v7 v8 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                    (coe
                       (\ v9 v10 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
         (coe
            du_dom_354 v0
            (coe
               du__'8739'__766 (coe v0) (coe v1) (coe v2) (coe du_dom_354 v0 v3)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
            (coe du_dom_354 v0 v2) (coe du_dom_354 v0 v3))
         (coe
            du_dom_354 v0
            (coe
               du__'8739'__766 (coe v0) (coe v1) (coe v3) (coe du_dom_354 v0 v2)))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v4 v5 v6 v7 v8 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                       (coe
                          (\ v9 v10 ->
                             coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
            (\ v4 v5 v6 ->
               case coe v6 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                   -> coe
                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v7)
                 _ -> MAlonzo.RTE.mazUnreachableError)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
               (coe du_dom_354 v0 v2) (coe du_dom_354 v0 v3))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
               (coe du_dom_354 v0 v3) (coe du_dom_354 v0 v2))
            (coe
               du_dom_354 v0
               (coe
                  du__'8739'__766 (coe v0) (coe v1) (coe v3) (coe du_dom_354 v0 v2)))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     (\ v4 v5 v6 v7 v8 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             (\ v9 v10 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v9
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v9 v10)))
                          (coe
                             (\ v9 v10 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v9
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v9 v10))))))
               (\ v4 v5 v6 ->
                  case coe v6 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v7)
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
                  (coe du_dom_354 v0 v3) (coe du_dom_354 v0 v2))
               (coe
                  du_dom_354 v0
                  (coe
                     du__'8739'__766 (coe v0) (coe v1) (coe v3) (coe du_dom_354 v0 v2)))
               (coe
                  du_dom_354 v0
                  (coe
                     du__'8739'__766 (coe v0) (coe v1) (coe v3) (coe du_dom_354 v0 v2)))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        (\ v4 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                             (coe (\ v5 v6 -> v6)))))
                  (coe
                     du_dom_354 v0
                     (coe
                        du__'8739'__766 (coe v0) (coe v1) (coe v3)
                        (coe du_dom_354 v0 v2))))
               (coe
                  du_res'45'dom'45'comm''_1072 (coe v0) (coe v1) (coe v3) (coe v2)))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1262 (coe v0)
               (coe v1) (coe du_dom_354 v0 v3) (coe du_dom_354 v0 v2)))
         (coe
            du_res'45'dom'45'comm''_1072 (coe v0) (coe v1) (coe v2) (coe v3)))
-- Axiom.Set.Rel.Corestriction._∣^_
d__'8739''94'__1134 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'__1134 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__1134 v0 v2 v4 v5
du__'8739''94'__1134 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'__1134 v0 v1 v2 v3
  = coe du__'8739''94'''__394 (coe v0) (coe v2) (coe v1 v3)
-- Axiom.Set.Rel.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_1140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8739''94'_'7580'_1140 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_1140 v0 v2 v4 v5
du__'8739''94'_'7580'_1140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8739''94'_'7580'_1140 v0 v1 v2 v3
  = coe
      du__'8739''94'''__394 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
         (coe v1 v3))
-- Axiom.Set.Rel.Corestriction.cores-⊆
d_cores'45''8838'_1146 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_cores'45''8838'_1146 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_cores'45''8838'_1146 v0 v2 v4 v5 v6
du_cores'45''8838'_1146 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_cores'45''8838'_1146 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe v1 v3)
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Corestriction.coex-⊆
d_coex'45''8838'_1148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_coex'45''8838'_1148 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_coex'45''8838'_1148 v0 v2 v4 v5 v6
du_coex'45''8838'_1148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_coex'45''8838'_1148 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
         (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe v1 v3))
            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
         (coe v4))
-- Axiom.Set.Rel.Corestriction.cores-cong
d_cores'45'cong_1158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_cores'45'cong_1158 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_cores'45'cong_1158 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_cores'45'cong_1158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_cores'45'cong_1158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased v2
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe v1 v4)
                       (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))))
                 v8)
              v9 in
    coe
      (case coe v10 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0) (coe v3)
                   (coe
                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                      (coe v1 v5)
                      (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13)))
                   (coe v8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe v6 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)) v11)
                   (coe v7 v8 v12))
         _ -> MAlonzo.RTE.mazUnreachableError)
