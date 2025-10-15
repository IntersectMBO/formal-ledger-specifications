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

module MAlonzo.Code.Axiom.Set.Properties where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Membership.DecSetoid
import qualified MAlonzo.Code.Data.List.Membership.Propositional.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.All
import qualified MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice
import qualified MAlonzo.Code.Relation.Binary.Lattice.Properties.JoinSemilattice
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Axiom.Set.Properties._._Preservesˢ₂_
d__Preserves'738''8322'__14 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__14 = erased
-- Axiom.Set.Properties._._∉_
d__'8713'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8713'__18 = erased
-- Axiom.Set.Properties._._∪_
d__'8746'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__20 ~v0 v1 = du__'8746'__20 v1
du__'8746'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__20 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) v2 v3
-- Axiom.Set.Properties._._≡ᵉ_
d__'8801''7497'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__22 = erased
-- Axiom.Set.Properties._._≡ᵉ'_
d__'8801''7497'''__24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__24 = erased
-- Axiom.Set.Properties._._⊆_
d__'8838'__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__26 = erased
-- Axiom.Set.Properties._.card
d_card_42 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_42 ~v0 ~v1 = du_card_42
du_card_42 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_42 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_338 v1
-- Axiom.Set.Properties._.disjoint
d_disjoint_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_48 = erased
-- Axiom.Set.Properties._.filter
d_filter_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_50 ~v0 v1 = du_filter_50 v1
du_filter_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_50 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.du_filter_422 (coe v0)
-- Axiom.Set.Properties._.finite
d_finite_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> ()
d_finite_52 = erased
-- Axiom.Set.Properties._.fromList
d_fromList_54 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
d_fromList_54 ~v0 v1 = du_fromList_54 v1
du_fromList_54 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> [AgdaAny] -> AgdaAny
du_fromList_54 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) v2
-- Axiom.Set.Properties._.map
d_map_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_60 ~v0 v1 = du_map_60 v1
du_map_60 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_60 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_400 (coe v0)
-- Axiom.Set.Properties._.mapPartial
d_mapPartial_62 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_62 ~v0 v1 = du_mapPartial_62 v1
du_mapPartial_62 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_62 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_578 (coe v0) v3
-- Axiom.Set.Properties._.singleton
d_singleton_72 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_singleton_72 ~v0 v1 = du_singleton_72 v1
du_singleton_72 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> AgdaAny
du_singleton_72 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.du_singleton_450 (coe v0) v2
-- Axiom.Set.Properties._.spec-∈
d_spec'45''8712'_80 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> ()
d_spec'45''8712'_80 = erased
-- Axiom.Set.Properties._.strongly-finite
d_strongly'45'finite_88 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> ()
d_strongly'45'finite_88 = erased
-- Axiom.Set.Properties._.weakly-finite
d_weakly'45'finite_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> ()
d_weakly'45'finite_92 = erased
-- Axiom.Set.Properties._.∅
d_'8709'_94 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny
d_'8709'_94 ~v0 v1 = du_'8709'_94 v1
du_'8709'_94 :: MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny
du_'8709'_94 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0)
-- Axiom.Set.Properties._.❴_❵
d_'10100'_'10101'_126 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_126 ~v0 v1 = du_'10100'_'10101'_126 v1
du_'10100'_'10101'_126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_126 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 (coe v0)
-- Axiom.Set.Properties._.Intersection._∩_
d__'8745'__130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__130 ~v0 v1 = du__'8745'__130 v1
du__'8745'__130 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__130 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__706 (coe v0) v2 v3 v4
-- Axiom.Set.Properties._.Intersection.disjoint'
d_disjoint''_134 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_134 = erased
-- Axiom.Set.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_166 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8315'''_166 v1 v4 v5 v6
du_'8712''45'map'8315'''_166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'map'8315'''_166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_170 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'map'8314'''_170 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8314'''_170 v1 v4 v5 v6
du_'8712''45'map'8314'''_170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'map'8314'''_170 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties.∈-map⁺''
d_'8712''45'map'8314'''''_178 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8314'''''_178 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8314'''''_178 v1 v4 v5 v6 v7
du_'8712''45'map'8314'''''_178 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8314'''''_178 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v2)
         (coe v1) (coe v1 v3))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_196 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8315'''_196 v1 v3 v5 v6
du_'8712''45'filter'8315'''_196 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'8315'''_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_198 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'filter'8314'''_198 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8314'''_198 v1 v3 v5 v6
du_'8712''45'filter'8314'''_198 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'filter'8314'''_198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_212 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8315'_212 v1 v3 v4 v5
du_'8712''45''8746''8315'_212 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8712''45''8746''8315'_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_214 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8712''45''8746''8314'_214 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8314'_214 v1 v3 v4 v5
du_'8712''45''8746''8314'_214 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712''45''8746''8314'_214 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_226 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList'8315'_226 v1 v3 v4
du_'8712''45'fromList'8315'_226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'fromList'8315'_226 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'fromList'8314'_228 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList'8314'_228 v1 v3 v4
du_'8712''45'fromList'8314'_228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'fromList'8314'_228 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._≡_⨿_
d__'8801'_'10815'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__236 = erased
-- Axiom.Set.Properties.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''7497''8660''8801''7497'''_244 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8801''7497''8660''8801''7497'''_244
du_'8801''7497''8660''8801''7497'''_244 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8801''7497''8660''8801''7497'''_244
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v0 v1 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 (coe v2 v1)
                     (coe v3 v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe (\ v1 -> MAlonzo.Code.Function.Bundles.d_to_1868 (coe v0 v1)))
              (coe
                 (\ v1 -> MAlonzo.Code.Function.Bundles.d_from_1870 (coe v0 v1)))))
-- Axiom.Set.Properties.cong-⊆⇒cong
d_cong'45''8838''8658'cong_260 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong_260 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_cong'45''8838''8658'cong_260 v4 v5 v6 v7
du_cong'45''8838''8658'cong_260 ::
  (AgdaAny ->
   AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong_260 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 v1 v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v0 v2 v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Axiom.Set.Properties.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_268 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong'8322'_268 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7
                                     v8 v9 v10 v11
  = du_cong'45''8838''8658'cong'8322'_268 v5 v6 v7 v8 v9 v10 v11
du_cong'45''8838''8658'cong'8322'_268 ::
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong'8322'_268 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         v0 v1 v2 v3 v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         v0 v2 v1 v4 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- Axiom.Set.Properties.⊆-Transitive
d_'8838''45'Transitive_276 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'Transitive_276 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_'8838''45'Transitive_276 v5 v6 v7 v8
du_'8838''45'Transitive_276 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'Transitive_276 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Axiom.Set.Properties.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7497''45'isEquivalence_282 ~v0 ~v1 ~v2
  = du_'8801''7497''45'isEquivalence_282
du_'8801''7497''45'isEquivalence_282 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
du_'8801''7497''45'isEquivalence_282
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_46
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v1 v2 -> v2))
              (coe (\ v1 v2 -> v2))))
      (coe
         (\ v0 v1 v2 ->
            case coe v2 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
                -> coe
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4) (coe v3)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 v1 v2 v3 v4 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 (\ v5 v6 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v5
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v3 v5 v6)))
              (coe
                 (\ v5 v6 ->
                    coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v5
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v5 v6)))))
-- Axiom.Set.Properties.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''7497''45'Setoid_296 ~v0 ~v1 ~v2
  = du_'8801''7497''45'Setoid_296
du_'8801''7497''45'Setoid_296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
du_'8801''7497''45'Setoid_296
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_84
      (coe du_'8801''7497''45'isEquivalence_282)
-- Axiom.Set.Properties.⊆-isPreorder
d_'8838''45'isPreorder_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_300 ~v0 ~v1 ~v2
  = du_'8838''45'isPreorder_300
du_'8838''45'isPreorder_300 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
du_'8838''45'isPreorder_300
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_126
      (coe du_'8801''7497''45'isEquivalence_282)
      (coe
         (\ v0 v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe (\ v0 v1 v2 v3 v4 v5 v6 -> coe v4 v5 (coe v3 v5 v6)))
-- Axiom.Set.Properties.⊆-Preorder
d_'8838''45'Preorder_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'Preorder_308 ~v0 ~v1 ~v2 ~v3
  = du_'8838''45'Preorder_308
du_'8838''45'Preorder_308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
du_'8838''45'Preorder_308
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_constructor_232
      (coe du_'8838''45'isPreorder_300)
-- Axiom.Set.Properties.⊆-PartialOrder
d_'8838''45'PartialOrder_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8838''45'PartialOrder_312 ~v0 ~v1 ~v2
  = du_'8838''45'PartialOrder_312
du_'8838''45'PartialOrder_312 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
du_'8838''45'PartialOrder_312
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_constructor_294
      (coe du_'8838''45'isPreorder_300)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32))
-- Axiom.Set.Properties.∈-×
d_'8712''45''215'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_318 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45''215'_318 v1 v4 v5 v6 v7
du_'8712''45''215'_318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45''215'_318 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v1)
            (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
            (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v1)
            (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
            (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
-- Axiom.Set.Properties._.map-⊆∘
d_map'45''8838''8728'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838''8728'_340 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8838''8728'_340 v1 v5 v6 v7 v8 v9
du_map'45''8838''8728'_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838''8728'_340 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_210 v0 erased erased v2
                    (coe MAlonzo.Code.Axiom.Set.du_map_400 v0 v1 v3))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> let v11
                           = coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_replacement_210 v0 erased erased v1
                                     v3)
                                  v7)
                               v10 in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                            -> case coe v13 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                   -> coe
                                        MAlonzo.Code.Function.Bundles.d_to_1868
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0)
                                           (coe v3) (coe (\ v16 -> coe v2 (coe v1 v16))) (coe v4))
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v12)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                                              (coe v15)))
                                 _ -> MAlonzo.RTE.mazUnreachableError
                          _ -> MAlonzo.RTE.mazUnreachableError)
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties._.map-∘⊆
d_map'45''8728''8838'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8728''8838'_362 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8728''8838'_362 v1 v5 v6 v7 v8 v9
du_map'45''8728''8838'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8728''8838'_362 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_210 v0 erased erased
                    (\ v6 -> coe v2 (coe v1 v6)) v3)
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_to_1868
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0)
                          (coe MAlonzo.Code.Axiom.Set.du_map_400 v0 v1 v3) (coe v2) (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1 v7)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                             (coe
                                MAlonzo.Code.Function.Bundles.d_to_1868
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v3)
                                   (coe v1) (coe v1 v7))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                      (coe v10))))))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties._.map-∘
d_map'45''8728'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_378 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_map'45''8728'_378 v1 v5 v6 v7
du_map'45''8728'_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8728'_378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_map'45''8838''8728'_340 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_map'45''8728''8838'_362 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_382 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8314''45''8728'_382 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
                                    v9
  = du_'8712''45'map'8314''45''8728'_382 v1 v5 v6 v7 v8 v9
du_'8712''45'map'8314''45''8728'_382 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8314''45''8728'_382 v0 v1 v2 v3 v4 v5
  = coe
      du_map'45''8838''8728'_340 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v2 v4)
      (coe
         du_'8712''45'map'8314'''''_178 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_210 v0 erased erased v1 v3))
         (coe v4) (coe v5))
-- Axiom.Set.Properties.map-⊆
d_map'45''8838'_390 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838'_390 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_map'45''8838'_390 v1 v4 v5 v6 v7 v8 v9
du_map'45''8838'_390 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838'_390 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_210 v0 erased erased v3 v1)
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v9 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_to_1868
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v2)
                          (coe v3) (coe v5))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                             (coe v4 v8 v11)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties.map-≡ᵉ
d_map'45''8801''7497'_416 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_416 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_map'45''8801''7497'_416 v1 v4 v5 v6 v7
du_map'45''8801''7497'_416 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8801''7497'_416 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_map'45''8838'_390 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
             (coe
                du_map'45''8838'_390 (coe v0) (coe v2) (coe v1) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∉-∅
d_'8713''45''8709'_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_424 = erased
-- Axiom.Set.Properties.∅-minimum
d_'8709''45'minimum_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8709''45'minimum_428 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8709''45'minimum_428
du_'8709''45'minimum_428 :: AgdaAny
du_'8709''45'minimum_428
  = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12
-- Axiom.Set.Properties.∅-least
d_'8709''45'least_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_432 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8709''45'least_432 v4
du_'8709''45'least_432 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'least_432 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (\ v1 v2 -> coe du_'8709''45'minimum_428)
-- Axiom.Set.Properties.∅-weakly-finite
d_'8709''45'weakly'45'finite_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_436 ~v0 ~v1 ~v2
  = du_'8709''45'weakly'45'finite_436
du_'8709''45'weakly'45'finite_436 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'weakly'45'finite_436
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Axiom.Set.Properties.∅-finite
d_'8709''45'finite_438 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_438 ~v0 ~v1 ~v2 = du_'8709''45'finite_438
du_'8709''45'finite_438 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_438
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
              (coe (\ v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
              erased))
-- Axiom.Set.Properties.map-∅
d_map'45''8709'_444 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_444 ~v0 v1 ~v2 ~v3 ~v4 v5
  = du_map'45''8709'_444 v1 v5
du_map'45''8709'_444 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8709'_444 v0 v1
  = coe
      du_'8709''45'least_432
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      du_'8712''45'map'8315'''_166 v0 v1
                      (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0)) v2 v3 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                   -> coe
                        seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Properties.map-∪
d_map'45''8746'_458 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_458 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_map'45''8746'_458 v1 v4 v5 v6
du_map'45''8746'_458 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8746'_458 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe du_'8801''7497''8660''8801''7497'''_244)
      (\ v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
           (\ v5 v6 v7 ->
              coe
                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
           erased erased erased
           (coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
              (\ v5 v6 v7 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              erased erased erased
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                 (\ v5 v6 v7 ->
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
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_412
                    (\ v5 v6 v7 ->
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
                       (\ v5 v6 v7 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                          (\ v5 v6 v7 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                             (\ v5 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe
                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                             erased)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0)
                             (coe MAlonzo.Code.Axiom.Set.du_map_400 v0 v3 v1)
                             (coe MAlonzo.Code.Axiom.Set.du_map_400 v0 v3 v2) (coe v4)))
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v1)
                             (coe v3) (coe v4))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0) (coe v2)
                             (coe v3) (coe v4))))
                    (coe
                       MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'distrib'45''8846'_72))
                 (coe
                    MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                    (\ v5 ->
                       coe
                         MAlonzo.Code.Data.Product.Properties.Ext.du_'215''45'distrib'737''45''8846'''_90)))
              (coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_38
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                 (\ v5 ->
                    coe
                      MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                      (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                      (coe
                         MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                         (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v1)
                            (coe v2) (coe v5))))))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_408 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) (coe v1) (coe v2))
                 (coe v3) (coe v4))))
-- Axiom.Set.Properties.mapPartial-∅
d_mapPartial'45''8709'_484 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_484 ~v0 v1 ~v2 ~v3 v4
  = du_mapPartial'45''8709'_484 v1 v4
du_mapPartial'45''8709'_484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartial'45''8709'_484 v0 v1
  = coe
      du_'8709''45'least_432
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_588 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0)) (coe v2)
                         (coe v1))
                      v3 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                   -> coe
                        seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Properties.singleton-strongly-finite
d_singleton'45'strongly'45'finite_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'strongly'45'finite_496 ~v0 v1 ~v2 v3
  = du_singleton'45'strongly'45'finite_496 v1 v3
du_singleton'45'strongly'45'finite_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45'strongly'45'finite_496 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
         (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C__'8759'__28
            (coe MAlonzo.Code.Data.List.Relation.Unary.All.C_'91''93'_50)
            (coe
               MAlonzo.Code.Data.List.Relation.Unary.AllPairs.Core.C_'91''93'_22))
         (coe
            (\ v2 ->
               coe
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
                    (coe v2)))))
-- Axiom.Set.Properties.card-singleton
d_card'45'singleton_500 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45'singleton_500 = erased
-- Axiom.Set.Properties.card-≡ᵉ
d_card'45''8801''7497'_506 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_506 = erased
-- Axiom.Set.Properties.singleton-≢-∅
d_singleton'45''8802''45''8709'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_534 = erased
-- Axiom.Set.Properties._.filter-∅
d_filter'45''8709'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_572 ~v0 v1 ~v2 ~v3 v4 v5 ~v6
  = du_filter'45''8709'_572 v1 v4 v5
du_filter'45''8709'_572 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45''8709'_572 v0 v1 v2
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
                            MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased v2 v1)
                         v3)
                      v4 in
            coe
              (seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))))
      (coe (\ v3 v4 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Axiom.Set.Properties._.filter-⊆
d_filter'45''8838'_600 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45''8838'_600 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45''8838'_600 v1 v4 v5 v6
du_filter'45''8838'_600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45''8838'_600 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du_'8712''45'filter'8315'''_196 (coe v0) (coe v2) (coe v1)
         (coe v3))
-- Axiom.Set.Properties._.filter-idem
d_filter'45'idem_602 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'idem_602 ~v0 v1 ~v2 ~v3 v4 v5
  = du_filter'45'idem_602 v1 v4 v5
du_filter'45'idem_602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'idem_602 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_filter'45'idem'45''8838'_608 (coe v0) (coe v1) (coe v2))
      (coe du_filter'45'idem'45''8839'_632 (coe v0) (coe v1) (coe v2))
-- Axiom.Set.Properties._._.filter-idem-⊆
d_filter'45'idem'45''8838'_608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'idem'45''8838'_608 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_filter'45'idem'45''8838'_608 v1 v4 v6 v7 v8
du_filter'45'idem'45''8838'_608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'idem'45''8838'_608 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased
                    (coe MAlonzo.Code.Axiom.Set.du_filter_422 v0 v1 v2) v1)
                 v3)
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> let v8
                    = coe
                        MAlonzo.Code.Function.Bundles.d_from_1870
                        (coe
                           MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                           (coe
                              MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased v2 v1)
                           v3)
                        v7 in
              coe
                (coe
                   seq (coe v8)
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                         (coe v1) (coe v3))
                      v8))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties._._.filter-idem-⊇
d_filter'45'idem'45''8839'_632 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'idem'45''8839'_632 ~v0 v1 ~v2 ~v3 v4 ~v5 v6 v7 v8
  = du_filter'45'idem'45''8839'_632 v1 v4 v6 v7 v8
du_filter'45'idem'45''8839'_632 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'idem'45''8839'_632 v0 v1 v2 v3 v4
  = let v5
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased v2 v1)
                 v3)
              v4 in
    coe
      (case coe v5 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0)
                   (coe MAlonzo.Code.Axiom.Set.du_filter_422 v0 v1 v2) (coe v1)
                   (coe v3))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6)
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                         (coe v1) (coe v3))
                      v5))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'pres'45''8838'_646 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_filter'45'pres'45''8838'_646 v1 v4 v5 v6 v7 v8 v9
du_filter'45'pres'45''8838'_646 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'pres'45''8838'_646 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v3)
         (coe v1) (coe v5))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (\ v7 -> coe v4 v5)
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
               (coe v1) (coe v5))
            v6))
-- Axiom.Set.Properties._.filter-cong
d_filter'45'cong_654 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'cong_654 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_filter'45'cong_654 v1 v4 v5 v6 v7
du_filter'45'cong_654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'cong_654 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_filter'45'pres'45''8838'_646 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v5))
             (coe
                du_filter'45'pres'45''8838'_646 (coe v0) (coe v1) (coe v3) (coe v2)
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._.filter-split-∪
d_filter'45'split'45''8746'_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_662 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'split'45''8746'_662 v1 v4 v5 v6 v7 v8
du_filter'45'split'45''8746'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_filter'45'split'45''8746'_662 v0 v1 v2 v3 v4 v5
  = let v6
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0)
                    (coe
                       MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) (coe v2) (coe v3))
                    (coe v1) (coe v4))
                 v5) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v2)
                    (coe v3) (coe v4))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1870
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0)
                          (coe
                             MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) (coe v2) (coe v3))
                          (coe v1) (coe v4))
                       v5)) in
       coe
         (case coe v7 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v8
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8))
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v8
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v8))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Properties._.filter-hom-⊆
d_filter'45'hom'45''8838'_676 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'hom'45''8838'_676 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'hom'45''8838'_676 v1 v4 v5 v6 v7 v8
du_filter'45'hom'45''8838'_676 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'hom'45''8838'_676 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased v2 v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_188 v0 erased erased v3 v1))
         (coe v4))
      (let v6
             = coe
                 du_filter'45'split'45''8746'_662 (coe v0) (coe v1) (coe v2)
                 (coe v3) (coe v4) (coe v5) in
       coe
         (case coe v6 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                         (coe v1) (coe v4))
                      v7)
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v3)
                         (coe v1) (coe v4))
                      v7)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_688 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'hom'45''8839'_688 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'hom'45''8839'_688 v1 v4 v5 v6 v7 v8
du_filter'45'hom'45''8839'_688 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'hom'45''8839'_688 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_unions_198 v0 erased
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_listing_218 v0 erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe v1) (coe v4))
      (let v6
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0)
                    (coe MAlonzo.Code.Axiom.Set.du_filter_422 v0 v1 v2)
                    (coe MAlonzo.Code.Axiom.Set.du_filter_422 v0 v1 v3) (coe v4))
                 v5 in
       coe
         (case coe v6 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1870
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                            (coe v1) (coe v4))
                         v7))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v2)
                         (coe v3) (coe v4))
                      (coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                                  (coe v1) (coe v4))
                               v7))))
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1870
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v3)
                            (coe v1) (coe v4))
                         v7))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1868
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v2)
                         (coe v3) (coe v4))
                      (coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1870
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v3)
                                  (coe v1) (coe v4))
                               v7))))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_698 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45'hom'45''8746'_698 v1 v4 v5 v6
du_filter'45'hom'45''8746'_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'hom'45''8746'_698 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_filter'45'hom'45''8838'_676 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_filter'45'hom'45''8839'_688 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties.Dec-∈-fromList
d_Dec'45''8712''45'fromList_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_706 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_Dec'45''8712''45'fromList_706 v1 v4 v5 v6
du_Dec'45''8712''45'fromList_706 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'fromList_706 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__60
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
         (coe v3) (coe v2))
-- Axiom.Set.Properties.Dec-∈-singleton
d_Dec'45''8712''45'singleton_712 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_712 ~v0 v1 ~v2 v3 v4 v5
  = du_Dec'45''8712''45'singleton_712 v1 v3 v4 v5
du_Dec'45''8712''45'singleton_712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'singleton_712 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_460 (coe v0) (coe v3)
         (coe v1))
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1)
-- Axiom.Set.Properties.singleton-finite
d_singleton'45'finite_716 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_716 ~v0 v1 ~v2 v3
  = du_singleton'45'finite_716 v1 v3
du_singleton'45'finite_716 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45'finite_716 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
      (coe
         (\ v2 ->
            coe
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
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_270 (coe v1))
                    (coe v2)))))
-- Axiom.Set.Properties.filter-finite
d_filter'45'finite_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_730 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7
  = du_filter'45'finite_730 v1 v3 v5 v6 v7
du_filter'45'finite_730 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'finite_730 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.List.Base.du_filter_648 (coe v3) (coe v5))
             (coe
                (\ v7 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                     (\ v8 v9 v10 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     erased erased erased
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                           (\ v8 v9 v10 ->
                              coe
                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           erased erased erased
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              erased)
                           (coe
                              MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                 (coe
                                    (\ v8 v9 ->
                                       coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_510
                                         v3 v5 v9 v8)))
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.Data.Product.Base.du_swap_370
                                      (coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_512
                                         v3 v7 v5 v8)))))
                        (coe
                           MAlonzo.Code.Data.List.Ext.Properties.du__'215''45'cong__26
                           (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                           (coe
                              MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           (coe v6 v7)))
                     (coe
                        MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                        (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                        (coe
                           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v1)
                           (coe v2) (coe v7)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∪-⊆ˡ
d_'8746''45''8838''737'_750 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''737'_750 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''737'_750 v1 v3 v4 v5
du_'8746''45''8838''737'_750 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''737'_750 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_214 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Axiom.Set.Properties.∪-⊆ʳ
d_'8746''45''8838''691'_752 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''691'_752 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''691'_752 v1 v3 v4 v5
du_'8746''45''8838''691'_752 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''691'_752 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_214 (coe v0) (coe v2) (coe v1) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Axiom.Set.Properties.∪-⊆
d_'8746''45''8838'_754 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838'_754 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9
  = du_'8746''45''8838'_754 v1 v3 v5 v6 v7 v8 v9
du_'8746''45''8838'_754 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838'_754 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (coe v3 v5)
      (coe v4 v5) (coe du_'8712''45''8746''8315'_212 v0 v1 v2 v5 v6)
-- Axiom.Set.Properties.⊆→∪
d_'8838''8594''8746'_762 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_762 ~v0 v1 ~v2 v3 v4 v5
  = du_'8838''8594''8746'_762 v1 v3 v4 v5
du_'8838''8594''8746'_762 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''8594''8746'_762 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v1)
                         (coe v2) (coe v4))
                      v5 in
            coe
              (case coe v6 of
                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v3 v4 v7
                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7 -> coe v7
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe du_'8746''45''8838''691'_752 (coe v0) (coe v2) (coe v1))
-- Axiom.Set.Properties.∪-Supremum
d_'8746''45'Supremum_776 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_776 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'Supremum_776 v1 v3 v4
du_'8746''45'Supremum_776 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'Supremum_776 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8746''45''8838''737'_750 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_'8746''45''8838''691'_752 (coe v0) (coe v2) (coe v1))
         (coe
            (\ v3 -> coe du_'8746''45''8838'_754 (coe v0) (coe v1) (coe v2))))
-- Axiom.Set.Properties.∪-cong-⊆
d_'8746''45'cong'45''8838'_780 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45'cong'45''8838'_780 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8746''45'cong'45''8838'_780 v1 v3 v4 v5 v6 v7 v8 v9
du_'8746''45'cong'45''8838'_780 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45'cong'45''8838'_780 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_214 (coe v0) (coe v2) (coe v4) (coe v7))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216
         (coe MAlonzo.Code.Data.Sum.Base.du_map_84 (coe v5 v7) (coe v6 v7))
         (coe
            du_'8712''45''8746''8315'_212 (coe v0) (coe v1) (coe v3) (coe v7)))
-- Axiom.Set.Properties.∪-cong
d_'8746''45'cong_786 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_786 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_'8746''45'cong_786 v1 v3 v4 v5 v6 v7 v8
du_'8746''45'cong_786 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'cong_786 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8746''45'cong'45''8838'_780 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe v4) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         du_'8746''45'cong'45''8838'_780 (coe v0) (coe v2) (coe v1) (coe v4)
         (coe v3) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- Axiom.Set.Properties.∪-preserves-finite
d_'8746''45'preserves'45'finite_788 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_788 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8746''45'preserves'45'finite_788 v1 v3 v4 v5 v6
du_'8746''45'preserves'45'finite_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'preserves'45'finite_788 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v5) (coe v7))
                    (coe
                       (\ v9 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                            (\ v10 v11 v12 ->
                               coe
                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                            erased erased erased
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                               (\ v10 v11 v12 ->
                                  coe
                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                    (coe
                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                               erased erased erased
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_302
                                  (\ v10 v11 v12 ->
                                     coe
                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                       (coe
                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                  erased erased erased
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                          (coe
                                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                     erased)
                                  (coe
                                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
                                     (coe
                                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                        (coe
                                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_194
                                           (coe v5))
                                        (coe
                                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''691'_200
                                           v5 v7))
                                     (coe
                                        MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_206
                                        v5 v7)))
                               (coe
                                  MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                  (coe v6 v9) (coe v8 v9)))
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690 (coe v0) (coe v1)
                                  (coe v2) (coe v9)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∪-sym
d_'8746''45'sym_808 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_808 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'sym_808 v1 v3 v4
du_'8746''45'sym_808 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'sym_808 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8746''45''8838'_754 (coe v0) (coe v1) (coe v2)
         (coe du_'8746''45''8838''691'_752 (coe v0) (coe v1) (coe v2))
         (coe du_'8746''45''8838''737'_750 (coe v0) (coe v2) (coe v1)))
      (coe
         du_'8746''45''8838'_754 (coe v0) (coe v2) (coe v1)
         (coe du_'8746''45''8838''691'_752 (coe v0) (coe v2) (coe v1))
         (coe du_'8746''45''8838''737'_750 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Properties.Set-JoinSemilattice
d_Set'45'JoinSemilattice_810 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_810 ~v0 v1 ~v2
  = du_Set'45'JoinSemilattice_810 v1
du_Set'45'JoinSemilattice_810 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_Set'45'JoinSemilattice_810 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_112
      (coe du_'8838''45'PartialOrder_312)
      (coe du_'8746''45'Supremum_776 (coe v0))
-- Axiom.Set.Properties.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_812 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_118
d_Set'45'BoundedJoinSemilattice_812 ~v0 v1 ~v2
  = du_Set'45'BoundedJoinSemilattice_812 v1
du_Set'45'BoundedJoinSemilattice_812 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_118
du_Set'45'BoundedJoinSemilattice_812 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_180
      (coe du_Set'45'JoinSemilattice_810 (coe v0))
      (\ v1 v2 v3 -> coe du_'8709''45'minimum_428)
-- Axiom.Set.Properties.Set-BddSemilattice
d_Set'45'BddSemilattice_816 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104
d_Set'45'BddSemilattice_816 ~v0 v1 ~v2
  = du_Set'45'BddSemilattice_816 v1
du_Set'45'BddSemilattice_816 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104
du_Set'45'BddSemilattice_816 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_constructor_196
      (coe MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0))
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_444 (coe v0))
      (coe du_Set'45'BoundedJoinSemilattice_812 (coe v0))
-- Axiom.Set.Properties._.∪-identityˡ
d_'8746''45'identity'737'_846 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_846 ~v0 v1 ~v2
  = du_'8746''45'identity'737'_846 v1
du_'8746''45'identity'737'_846 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'identity'737'_846 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.du_identity'737'_100
      (coe du_Set'45'BddSemilattice_816 (coe v0))
-- Axiom.Set.Properties._.∪-identityʳ
d_'8746''45'identity'691'_850 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_850 ~v0 v1 ~v2
  = du_'8746''45'identity'691'_850 v1
du_'8746''45'identity'691'_850 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'identity'691'_850 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.du_identity'691'_108
      (coe du_Set'45'BddSemilattice_816 (coe v0))
-- Axiom.Set.Properties._.∪-comm
d_'8746''45'comm_856 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_856 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'comm_856 v1 v3 v4
du_'8746''45'comm_856 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'comm_856 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_'8746''45'Supremum_776 (coe v0) (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) (coe v2) (coe v1))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe du_'8746''45'Supremum_776 (coe v0) (coe v2) (coe v1))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_'8746''45'Supremum_776 (coe v0) (coe v2) (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_'8746''45'Supremum_776 (coe v0) (coe v2) (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0) (coe v1) (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe du_'8746''45'Supremum_776 (coe v0) (coe v1) (coe v2))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_'8746''45'Supremum_776 (coe v0) (coe v1) (coe v2))))
-- Axiom.Set.Properties._.∪-assoc
d_'8746''45'assoc_864 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_864 ~v0 v1 ~v2 = du_'8746''45'assoc_864 v1
du_'8746''45'assoc_864 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'assoc_864 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.JoinSemilattice.du_'8744''45'assoc_258
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_joinSemilattice_188
         (coe du_Set'45'BddSemilattice_816 (coe v0)))
-- Axiom.Set.Properties.fromList-∪-singleton
d_fromList'45''8746''45'singleton_872 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_872 ~v0 v1 ~v2 v3 v4
  = du_fromList'45''8746''45'singleton_872 v1 v3 v4
du_fromList'45''8746''45'singleton_872 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'45''8746''45'singleton_872 v0 v1 v2
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
                            MAlonzo.Code.Axiom.Set.d_listing_218 v0 erased
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)))
                         v3)
                      v4 in
            coe
              (case coe v5 of
                 MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                   -> coe
                        du_'8712''45''8746''8314'_214 v0
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe MAlonzo.Code.Axiom.Set.d_listing_218 v0 erased v2))
                        v1
                        (coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                           (coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 (coe v1))
                              (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
                 MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
                   -> coe
                        du_'8712''45''8746''8314'_214 v0
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_listing_218 v0 erased
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)) v3
                        (coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                           (coe
                              MAlonzo.Code.Function.Bundles.d_to_1868
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v2)
                                 (coe v3))
                              v8))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_unions_198 v0 erased
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v1)
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                                        (coe v2))))))
                         v3)
                      v4 in
            coe
              (let v6
                     = coe
                         MAlonzo.Code.Function.Bundles.d_from_1870
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.d_listing_218 v0 erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v1)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_198 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0
                                                 erased v1)
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                                                    (coe v2))))))
                                     v3)
                                  v4)))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_198 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0
                                                 erased v1)
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                                                    (coe v2))))))
                                     v3)
                                  v4))) in
               coe
                 (case coe v6 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
                      -> case coe v5 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                             -> let v12 = MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11) in
                                coe
                                  (coe
                                     MAlonzo.Code.Function.Bundles.d_to_1868
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_460
                                              (coe v0) (coe v3) (coe v1))
                                           v12)))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
                      -> let v10
                               = seq
                                   (coe v9)
                                   (case coe v5 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                        -> coe
                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v11))
                                      _ -> MAlonzo.RTE.mazUnreachableError) in
                         coe
                           (case coe v10 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v11
                                -> coe
                                     MAlonzo.Code.Function.Bundles.d_to_1868
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_460
                                              (coe v0) (coe v3) (coe v1))
                                           v11))
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                -> coe
                                     MAlonzo.Code.Function.Bundles.d_to_1868
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1870
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434
                                              (coe v0) (coe v2) (coe v3))
                                           v11))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
-- Axiom.Set.Properties.∪-fromList-++
d_'8746''45'fromList'45''43''43'_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_904 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'fromList'45''43''43'_904 v1 v3 v4
du_'8746''45'fromList'45''43''43'_904 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'fromList'45''43''43'_904 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du_'8746''45'identity'737'_846 v0
             (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v1))
                (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v5 v6 v7 v8 v9 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              (\ v10 v11 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v10
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v10 v11)))
                           (coe
                              (\ v10 v11 ->
                                 coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v10
                                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v10 v11))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v1))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4)))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v5 v6 v7 v8 v9 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 (\ v10 v11 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v10
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v10 v11)))
                              (coe
                                 (\ v10 v11 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v10
                                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v10 v11))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4)))
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4))
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_370
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v5 v6 v7 v8 v9 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    (\ v10 v11 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v10
                                         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v10 v11)))
                                 (coe
                                    (\ v10 v11 ->
                                       coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v10
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v10
                                            v11))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4))
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_376
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               (\ v5 v6 v7 v8 v9 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       (\ v10 v11 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v9 v10
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v10
                                               v11)))
                                    (coe
                                       (\ v10 v11 ->
                                          coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v10
                                            (coe
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v10
                                               v11))))))
                         (\ v5 v6 v7 ->
                            case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                              _ -> MAlonzo.RTE.mazUnreachableError)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                               (coe
                                  (\ v5 ->
                                     coe
                                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                       (coe (\ v6 v7 -> v7)) (coe (\ v6 v7 -> v7)))))
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4)
                                     (coe v2)))))
                         (coe
                            du_fromList'45''8746''45'singleton_872 (coe v0) (coe v3)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2))))
                      (coe
                         du_'8746''45'cong_786 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4))
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2)))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__32 (coe v4) (coe v2)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                            (coe (\ v5 v6 -> v6)))
                         (coe
                            du_'8746''45'fromList'45''43''43'_904 (coe v0) (coe v4) (coe v2))))
                   (coe
                      du_'8746''45'assoc_864 v0
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4))
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))))
                (coe
                   du_'8746''45'cong_786 (coe v0)
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__682 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v4)))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_430 (coe v0) (coe v2))
                   (coe
                      du_fromList'45''8746''45'singleton_872 (coe v0) (coe v3) (coe v4))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                      (coe (\ v5 v6 -> v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.disjoint-sym
d_disjoint'45'sym_970 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'sym_970 = erased
-- Axiom.Set.Properties.disjoint-subst
d_disjoint'45'subst_974 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'subst_974 = erased
-- Axiom.Set.Properties.Intersectionᵖ._._∩_
d__'8745'__988 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__988 ~v0 v1 ~v2 v3 = du__'8745'__988 v1 v3
du__'8745'__988 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__988 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__706 (coe v0) (coe v1)
-- Axiom.Set.Properties.Intersectionᵖ._.disjoint'
d_disjoint''_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_992 = erased
-- Axiom.Set.Properties.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_996 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_996 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_disjoint'8658'disjoint''_996
du_disjoint'8658'disjoint''_996 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_996
  = coe
      du_'8709''45'least_432
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
-- Axiom.Set.Properties.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1000 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1000 = erased
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1008 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''737'_1008 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''737'_1008 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''737'_1008 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''737'_1008 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''691'_1010 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''691'_1010 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''691'_1010 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''691'_1010 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1012 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838'_1012 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_'8745''45''8838'_1012 v1 v3 v5 v6 v7 v8 v9 v10
du_'8745''45''8838'_1012 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838'_1012 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v6))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112 (coe v4 v6)
         (coe v5 v6) (coe v7))
-- Axiom.Set.Properties.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1020 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1020 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'Infimum_1020 v1 v3 v4 v5
du_'8745''45'Infimum_1020 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1020 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45''8838''737'_1008 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8745''45''8838''691'_1010 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            (\ v4 ->
               coe du_'8745''45''8838'_1012 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1028 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1028 ~v0 v1 ~v2 v3 v4 v5 ~v6
  = du_'8745''45'preserves'45'finite_1028 v1 v3 v4 v5
du_'8745''45'preserves'45'finite_1028 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1028 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_342
      (coe
         du_'8745''45''8838''691'_1010 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1030 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45'cong'45''8838'_1030 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
                                v11
  = du_'8745''45'cong'45''8838'_1030 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
du_'8745''45'cong'45''8838'_1030 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'cong'45''8838'_1030 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
         (coe v3) (coe v5) (coe v8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128 (coe v6 v8)
         (coe (\ v10 -> coe v7 v8))
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
               (coe v2) (coe v4) (coe v8))
            v9))
-- Axiom.Set.Properties.Intersectionᵖ.∩-cong
d_'8745''45'cong_1038 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1038 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8745''45'cong_1038 v1 v3 v4 v5 v6 v7 v8 v9
du_'8745''45'cong_1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1038 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45'cong'45''8838'_1030 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4) (coe v5)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
      (coe
         du_'8745''45'cong'45''8838'_1030 (coe v0) (coe v1) (coe v3)
         (coe v2) (coe v5) (coe v4)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v7)))
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1044 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_1044 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'691'_1044 v1 v3 v4
du_'8745''45'OrderHomomorphism'691'_1044 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'691'_1044 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_170
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong_1038 (coe v0) (coe v1) (coe v2) (coe v2) (coe v3)
              (coe v4)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                 (coe (\ v5 v6 -> v6)))))
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong'45''8838'_1030 (coe v0) (coe v1) (coe v2)
              (coe v2) (coe v3) (coe v4) (coe (\ v5 v6 -> v6))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1050 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_1050 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'737'_1050 v1 v3 v4
du_'8745''45'OrderHomomorphism'737'_1050 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'737'_1050 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_constructor_170
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong_1038 (coe v0) (coe v1) (coe v3) (coe v4) (coe v2)
              (coe v2) (coe v5)
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                 (coe (\ v6 v7 -> v7)))))
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong'45''8838'_1030 (coe v0) (coe v1) (coe v3)
              (coe v4) (coe v2) (coe v2) (coe v5) (coe (\ v6 v7 -> v7))))
-- Axiom.Set.Properties.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1052 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_1052 ~v0 v1 ~v2 v3 = du_Set'45'Lattice_1052 v1 v3
du_Set'45'Lattice_1052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
du_Set'45'Lattice_1052 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_constructor_424
      (coe du_'8838''45'PartialOrder_312)
      (coe du_'8746''45'Supremum_776 (coe v0))
      (coe du_'8745''45'Infimum_1020 (coe v0) (coe v1))
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45'sym'8838'_1054 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45'sym'8838'_1054 v1 v3 v4 v5 v6 v7
du_'8745''45'sym'8838'_1054 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'sym'8838'_1054 v0 v1 v2 v3 v4 v5
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
                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                       (coe v1 v3) (coe v4)))
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
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428 (coe v0) (coe v2)
                          (coe v1 v3) (coe v4)))
                    v5) in
       coe
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1868
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714 (coe v0) (coe v1)
               (coe v3) (coe v2) (coe v4))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym
d_'8745''45'sym_1068 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1068 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'sym_1068 v1 v3 v4 v5
du_'8745''45'sym_1068 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1068 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45'sym'8838'_1054 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_'8745''45'sym'8838'_1054 (coe v0) (coe v1) (coe v3) (coe v2))
-- Axiom.Set.Properties._.sublist-⇔
d_sublist'45''8660'_1080 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_sublist'45''8660'_1080 ~v0 v1 ~v2 v3 v4
  = du_sublist'45''8660'_1080 v1 v3 v4
du_sublist'45''8660'_1080 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_sublist'45''8660'_1080 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474 erased
             (coe
                (\ v3 v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
             (coe du_onlyif_1098 (coe v0) (coe v1) (coe v3) (coe v4))
             (coe
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Function.Bundles.d_to_1868
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v1)
                        (coe v6))
                     (coe
                        v5 v6
                        (coe
                           MAlonzo.Code.Function.Bundles.d_from_1870
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v2)
                              (coe v6))
                           v7))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._._.onlyif
d_onlyif_1098 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_onlyif_1098 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_onlyif_1098 v1 v3 v4 v5 v6 v7 v8
du_onlyif_1098 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_onlyif_1098 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
        -> coe
             MAlonzo.Code.Function.Bundles.d_from_1870
             (coe
                MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v1)
                (coe v5))
             (coe
                v4 v5
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1868
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v3))
                      (coe v5))
                   (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
        -> coe
             MAlonzo.Code.Function.Bundles.d_from_1870
             (coe
                MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0) (coe v1)
                (coe v5))
             (coe
                v4 v5
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1868
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v3))
                      (coe v5))
                   (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_1114 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8707''45'sublist'45''8660'_1114 ~v0 v1 ~v2 v3 ~v4
  = du_'8707''45'sublist'45''8660'_1114 v1 v3
du_'8707''45'sublist'45''8660'_1114 ::
  MAlonzo.Code.Axiom.Set.T_Theory_96 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8707''45'sublist'45''8660'_1114 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       du_sublist'45''8660'_1080 (coe v0) (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Function.Bundles.d_from_1870
                    (coe
                       du_sublist'45''8660'_1080 (coe v0) (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
-- Axiom.Set.Properties..generalizedField-A
d_'46'generalizedField'45'A_1227 :: T_GeneralizeTel_1231 -> ()
d_'46'generalizedField'45'A_1227 = erased
-- Axiom.Set.Properties..generalizedField-B
d_'46'generalizedField'45'B_1229 :: T_GeneralizeTel_1231 -> ()
d_'46'generalizedField'45'B_1229 = erased
-- Axiom.Set.Properties.GeneralizeTel
d_GeneralizeTel_1231 a0 a1 = ()
data T_GeneralizeTel_1231 = C_mkGeneralizeTel_1233
-- Axiom.Set.Properties..generalizedField-A
d_'46'generalizedField'45'A_6281 :: T_GeneralizeTel_6283 -> ()
d_'46'generalizedField'45'A_6281 = erased
-- Axiom.Set.Properties.GeneralizeTel
d_GeneralizeTel_6283 a0 a1 = ()
data T_GeneralizeTel_6283 = C_mkGeneralizeTel_6285
-- Axiom.Set.Properties..generalizedField-A
d_'46'generalizedField'45'A_9281 :: T_GeneralizeTel_9283 -> ()
d_'46'generalizedField'45'A_9281 = erased
-- Axiom.Set.Properties.GeneralizeTel
d_GeneralizeTel_9283 a0 a1 = ()
data T_GeneralizeTel_9283 = C_mkGeneralizeTel_9285
-- Axiom.Set.Properties..generalizedField-A
d_'46'generalizedField'45'A_11659 :: T_GeneralizeTel_11661 -> ()
d_'46'generalizedField'45'A_11659 = erased
-- Axiom.Set.Properties.GeneralizeTel
d_GeneralizeTel_11661 a0 a1 = ()
data T_GeneralizeTel_11661 = C_mkGeneralizeTel_11663
