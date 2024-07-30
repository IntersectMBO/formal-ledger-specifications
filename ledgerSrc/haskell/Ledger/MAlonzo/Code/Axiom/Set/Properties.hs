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
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Properties.Ext
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
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
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> (() -> AgdaAny -> ()) -> ()
d__Preserves'738''8322'__14 = erased
-- Axiom.Set.Properties._._∉_
d__'8713'__18 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8713'__18 = erased
-- Axiom.Set.Properties._._∪_
d__'8746'__20 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__20 ~v0 v1 = du__'8746'__20 v1
du__'8746'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746'__20 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set.Properties._._≡ᵉ_
d__'8801''7497'__22 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__22 = erased
-- Axiom.Set.Properties._._≡ᵉ'_
d__'8801''7497'''__24 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'''__24 = erased
-- Axiom.Set.Properties._._⊆_
d__'8838'__26 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__26 = erased
-- Axiom.Set.Properties._.card
d_card_40 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_40 ~v0 ~v1 = du_card_40
du_card_40 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
du_card_40 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_318 v1
-- Axiom.Set.Properties._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Properties._.filter
d_filter_48 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter_48 ~v0 v1 = du_filter_48 v1
du_filter_48 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny
du_filter_48 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.du_filter_402 (coe v0)
-- Axiom.Set.Properties._.finite
d_finite_50 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Properties._.fromList
d_fromList_52 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
d_fromList_52 ~v0 v1 = du_fromList_52 v1
du_fromList_52 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> [AgdaAny] -> AgdaAny
du_fromList_52 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) v2
-- Axiom.Set.Properties._.map
d_map_58 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_58 ~v0 v1 = du_map_58 v1
du_map_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
du_map_58 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_380 (coe v0)
-- Axiom.Set.Properties._.mapPartial
d_mapPartial_60 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_60 ~v0 v1 = du_mapPartial_60 v1
du_mapPartial_60 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
du_mapPartial_60 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_558 (coe v0) v3
-- Axiom.Set.Properties._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Properties._.strongly-finite
d_strongly'45'finite_86 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_strongly'45'finite_86 = erased
-- Axiom.Set.Properties._.weakly-finite
d_weakly'45'finite_90 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_weakly'45'finite_90 = erased
-- Axiom.Set.Properties._.∅
d_'8709'_92 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_92 ~v0 v1 = du_'8709'_92 v1
du_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
du_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Properties._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 ~v0 v1 = du_'10100'_'10101'_124 v1
du_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
du_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set.Properties._.Intersection._∩_
d__'8745'__128 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__128 ~v0 v1 = du__'8745'__128 v1
du__'8745'__128 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__128 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) v2 v3 v4
-- Axiom.Set.Properties._.Intersection.disjoint'
d_disjoint''_132 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_132 = erased
-- Axiom.Set.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_164 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_164 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8315'''_164 v1 v4 v5 v6
du_'8712''45'map'8315'''_164 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'map'8315'''_164 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_168 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'map'8314'''_168 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8314'''_168 v1 v4 v5 v6
du_'8712''45'map'8314'''_168 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'map'8314'''_168 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties.∈-map⁺''
d_'8712''45'map'8314'''''_176 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8314'''''_176 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8314'''''_176 v1 v4 v5 v6 v7
du_'8712''45'map'8314'''''_176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8314'''''_176 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v1 v3))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_194 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8315'''_194 v1 v3 v5 v6
du_'8712''45'filter'8315'''_194 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'8315'''_194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_196 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'filter'8314'''_196 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8314'''_196 v1 v3 v5 v6
du_'8712''45'filter'8314'''_196 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'filter'8314'''_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_210 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8315'_210 v1 v3 v4 v5
du_'8712''45''8746''8315'_210 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8712''45''8746''8315'_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_212 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8712''45''8746''8314'_212 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8314'_212 v1 v3 v4 v5
du_'8712''45''8746''8314'_212 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712''45''8746''8314'_212 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_224 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_224 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList'8315'_224 v1 v3 v4
du_'8712''45'fromList'8315'_224 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'fromList'8315'_224 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_226 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'fromList'8314'_226 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList'8314'_226 v1 v3 v4
du_'8712''45'fromList'8314'_226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'fromList'8314'_226 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._≡_⨿_
d__'8801'_'10815'__234 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__234 = erased
-- Axiom.Set.Properties.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_242 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_242 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8801''7497''8660''8801''7497'''_242
du_'8801''7497''8660''8801''7497'''_242 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''7497''8660''8801''7497'''_242
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         (\ v0 v1 ->
            case coe v0 of
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
                -> coe
                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 (coe v2 v1)
                     (coe v3 v1)
              _ -> MAlonzo.RTE.mazUnreachableError))
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe (\ v1 -> MAlonzo.Code.Function.Bundles.d_to_1724 (coe v0 v1)))
              (coe
                 (\ v1 -> MAlonzo.Code.Function.Bundles.d_from_1726 (coe v0 v1)))))
-- Axiom.Set.Properties.cong-⊆⇒cong
d_cong'45''8838''8658'cong_258 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_cong'45''8838''8658'cong_258 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_cong'45''8838''8658'cong_258 v5 v6 v7 v8
du_cong'45''8838''8658'cong_258 ::
  (AgdaAny ->
   AgdaAny ->
   (AgdaAny -> AgdaAny -> AgdaAny) ->
   AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong_258 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 v1 v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v0 v2 v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- Axiom.Set.Properties.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_266 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_cong'45''8838''8658'cong'8322'_266 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                     v8 v9 v10 v11 v12
  = du_cong'45''8838''8658'cong'8322'_266 v6 v7 v8 v9 v10 v11 v12
du_cong'45''8838''8658'cong'8322'_266 ::
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
du_cong'45''8838''8658'cong'8322'_266 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         v0 v1 v2 v3 v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         v0 v2 v1 v4 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- Axiom.Set.Properties.⊆-Transitive
d_'8838''45'Transitive_274 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'Transitive_274 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8838''45'Transitive_274 v6 v7 v8 v9
du_'8838''45'Transitive_274 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'Transitive_274 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Axiom.Set.Properties.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_280 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_280 ~v0 ~v1 ~v2
  = du_'8801''7497''45'isEquivalence_280
du_'8801''7497''45'isEquivalence_280 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8801''7497''45'isEquivalence_280
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsEquivalence'46'constructor_743
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
                 du_'8838''45'Transitive_274
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 du_'8838''45'Transitive_274
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
-- Axiom.Set.Properties.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_294 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_294 ~v0 ~v1 ~v2
  = du_'8801''7497''45'Setoid_294
du_'8801''7497''45'Setoid_294 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8801''7497''45'Setoid_294
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (coe du_'8801''7497''45'isEquivalence_280)
-- Axiom.Set.Properties.⊆-isPreorder
d_'8838''45'isPreorder_298 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_298 ~v0 ~v1 ~v2
  = du_'8838''45'isPreorder_298
du_'8838''45'isPreorder_298 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8838''45'isPreorder_298
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe du_'8801''7497''45'isEquivalence_280)
      (coe
         (\ v0 v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe (\ v0 v1 v2 -> coe du_'8838''45'Transitive_274))
-- Axiom.Set.Properties.⊆-Preorder
d_'8838''45'Preorder_306 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_306 ~v0 ~v1 ~v2 ~v3
  = du_'8838''45'Preorder_306
du_'8838''45'Preorder_306 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8838''45'Preorder_306
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      (coe du_'8838''45'isPreorder_298)
-- Axiom.Set.Properties.⊆-PartialOrder
d_'8838''45'PartialOrder_310 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_310 ~v0 ~v1 ~v2
  = du_'8838''45'PartialOrder_310
du_'8838''45'PartialOrder_310 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8838''45'PartialOrder_310
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe du_'8838''45'isPreorder_298)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32))
-- Axiom.Set.Properties.∈-×
d_'8712''45''215'_316 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_316 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45''215'_316 v1 v4 v5 v6 v7
du_'8712''45''215'_316 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45''215'_316 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
            (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
            (coe v2))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
            (coe (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
            (coe v3))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4))))
-- Axiom.Set.Properties._.map-⊆∘
d_map'45''8838''8728'_338 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838''8728'_338 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8838''8728'_338 v1 v5 v6 v7 v8 v9
du_map'45''8838''8728'_338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838''8728'_338 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased v2
                    (coe MAlonzo.Code.Axiom.Set.du_map_380 v0 v1 v3))
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> let v11
                           = coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased v1
                                     v3)
                                  v7)
                               v10 in
                     coe
                       (case coe v11 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                            -> case coe v13 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v14 v15
                                   -> coe
                                        MAlonzo.Code.Function.Bundles.d_to_1724
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
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
d_map'45''8728''8838'_360 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8728''8838'_360 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8728''8838'_360 v1 v5 v6 v7 v8 v9
du_map'45''8728''8838'_360 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8728''8838'_360 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                    (\ v6 -> coe v2 (coe v1 v6)) v3)
                 v4)
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v9 v10
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_to_1724
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
                          (coe MAlonzo.Code.Axiom.Set.du_map_380 v0 v1 v3) (coe v2) (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1 v7)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9)
                             (coe
                                MAlonzo.Code.Function.Bundles.d_to_1724
                                (coe
                                   MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v3)
                                   (coe v1) (coe v1 v7))
                                (coe
                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7)
                                   (coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased
                                      (coe v10))))))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties._.map-∘
d_map'45''8728'_376 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_376 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_map'45''8728'_376 v1 v5 v6 v7
du_map'45''8728'_376 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8728'_376 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_map'45''8838''8728'_338 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_map'45''8728''8838'_360 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_380 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8314''45''8728'_380 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
                                    v9
  = du_'8712''45'map'8314''45''8728'_380 v1 v5 v6 v7 v8 v9
du_'8712''45'map'8314''45''8728'_380 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8314''45''8728'_380 v0 v1 v2 v3 v4 v5
  = coe
      du_map'45''8838''8728'_338 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe v2 v4)
      (coe
         du_'8712''45'map'8314'''''_176 (coe v0) (coe v2)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased v1 v3))
         (coe v4) (coe v5))
-- Axiom.Set.Properties.map-⊆
d_map'45''8838'_388 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838'_388 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_map'45''8838'_388 v1 v4 v5 v6 v7 v8 v9
du_map'45''8838'_388 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838'_388 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased v3 v1)
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v9 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> coe
                       MAlonzo.Code.Function.Bundles.d_to_1724
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
                          (coe v3) (coe v5))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                          (coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v10)
                             (coe v4 v8 v11)))
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties.map-≡ᵉ
d_map'45''8801''7497'_414 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_414 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_map'45''8801''7497'_414 v1 v4 v5 v6 v7
du_map'45''8801''7497'_414 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8801''7497'_414 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_map'45''8838'_388 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
             (coe
                du_map'45''8838'_388 (coe v0) (coe v2) (coe v1) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∉-∅
d_'8713''45''8709'_422 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_422 = erased
-- Axiom.Set.Properties.∅-minimum
d_'8709''45'minimum_426 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8709''45'minimum_426 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8709''45'minimum_426
du_'8709''45'minimum_426 :: AgdaAny
du_'8709''45'minimum_426
  = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
-- Axiom.Set.Properties.∅-least
d_'8709''45'least_430 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_430 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8709''45'least_430 v4
du_'8709''45'least_430 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'least_430 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (\ v1 v2 -> coe du_'8709''45'minimum_426)
-- Axiom.Set.Properties.∅-weakly-finite
d_'8709''45'weakly'45'finite_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_434 ~v0 ~v1 ~v2
  = du_'8709''45'weakly'45'finite_434
du_'8709''45'weakly'45'finite_434 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'weakly'45'finite_434
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Properties.∅-finite
d_'8709''45'finite_436 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_436 ~v0 ~v1 ~v2 = du_'8709''45'finite_436
du_'8709''45'finite_436 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_436
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe
         (\ v0 ->
            coe
              MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
              (coe (\ v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
              erased))
-- Axiom.Set.Properties.map-∅
d_map'45''8709'_442 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_442 ~v0 v1 ~v2 ~v3 ~v4 v5
  = du_map'45''8709'_442 v1 v5
du_map'45''8709'_442 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8709'_442 v0 v1
  = coe
      du_'8709''45'least_430
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      du_'8712''45'map'8315'''_164 v0 v1
                      (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)) v2 v3 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                   -> coe
                        seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Properties.map-∪
d_map'45''8746'_456 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_456 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_map'45''8746'_456 v1 v4 v5 v6
du_map'45''8746'_456 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8746'_456 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe du_'8801''7497''8660''8801''7497'''_242)
      (\ v4 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
           (\ v5 v6 v7 ->
              coe
                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
           erased erased erased
           (coe
              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
              (\ v5 v6 v7 ->
                 coe
                   MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                   (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
              erased erased erased
              (coe
                 MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                    MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8596''45''10217'_410
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
                       MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                       (\ v5 v6 v7 ->
                          coe
                            MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                            (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                       erased erased erased
                       (coe
                          MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                          (\ v5 v6 v7 ->
                             coe
                               MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                          erased erased erased
                          (coe
                             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                             (\ v5 ->
                                coe
                                  MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                  (coe
                                     MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                             erased)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0)
                             (coe MAlonzo.Code.Axiom.Set.du_map_380 v0 v3 v1)
                             (coe MAlonzo.Code.Axiom.Set.du_map_380 v0 v3 v2) (coe v4)))
                       (coe
                          MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                             (coe v3) (coe v4))
                          (coe
                             MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
                             (coe v3) (coe v4))))
                    (coe
                       MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'distrib'45''8846'''_108))
                 (coe
                    MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
                    (coe MAlonzo.Code.Function.Related.Propositional.C_bijection_22)
                    (coe
                       (\ v5 ->
                          coe
                            MAlonzo.Code.Data.Product.Properties.Ext.du_'215''45'distrib'737''45''8846'''_80))))
              (coe
                 MAlonzo.Code.Data.Product.Properties.Ext.du_'8707''45'cong'8242'_54
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                 (coe
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
                               MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
                               (coe v2) (coe v5)))))))
           (coe
              MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
              (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v1) (coe v2))
                 (coe v3) (coe v4))))
-- Axiom.Set.Properties.mapPartial-∅
d_mapPartial'45''8709'_482 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_482 ~v0 v1 ~v2 ~v3 v4
  = du_mapPartial'45''8709'_482 v1 v4
du_mapPartial'45''8709'_482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartial'45''8709'_482 v0 v1
  = coe
      du_'8709''45'least_430
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_568 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)) (coe v2)
                         (coe v1))
                      v3 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                   -> coe
                        seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Properties.card-≡ᵉ
d_card'45''8801''7497'_496 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_496 = erased
-- Axiom.Set.Properties._.filter-∅
d_filter'45''8709'_534 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_534 ~v0 v1 ~v2 ~v3 v4 v5 ~v6
  = du_filter'45''8709'_534 v1 v4 v5
du_filter'45''8709'_534 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45''8709'_534 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v2 v1)
                         v3)
                      v4 in
            coe
              (seq (coe v5) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))))
      (coe (\ v3 v4 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Properties._.filter-⊆
d_filter'45''8838'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45''8838'_562 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45''8838'_562 v1 v4 v5 v6
du_filter'45''8838'_562 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45''8838'_562 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du_'8712''45'filter'8315'''_194 (coe v0) (coe v2) (coe v1)
         (coe v3))
-- Axiom.Set.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_564 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'pres'45''8838'_564 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_filter'45'pres'45''8838'_564 v1 v4 v5 v6 v7 v8 v9
du_filter'45'pres'45''8838'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'pres'45''8838'_564 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v3)
         (coe v1) (coe v5))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (\ v7 -> coe v4 v5)
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1726
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
               (coe v1) (coe v5))
            v6))
-- Axiom.Set.Properties._.filter-pres-≡ᵉ
d_filter'45'pres'45''8801''7497'_572 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'pres'45''8801''7497'_572 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_filter'45'pres'45''8801''7497'_572 v1 v4 v5 v6 v7
du_filter'45'pres'45''8801''7497'_572 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'pres'45''8801''7497'_572 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_filter'45'pres'45''8838'_564 (coe v0) (coe v1) (coe v2) (coe v3)
                (coe v5))
             (coe
                du_filter'45'pres'45''8838'_564 (coe v0) (coe v1) (coe v3) (coe v2)
                (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._.filter-split-∪
d_filter'45'split'45''8746'_580 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_580 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'split'45''8746'_580 v1 v4 v5 v6 v7 v8
du_filter'45'split'45''8746'_580 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_filter'45'split'45''8746'_580 v0 v1 v2 v3 v4 v5
  = let v6
          = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0)
                    (coe
                       MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v2) (coe v3))
                    (coe v1) (coe v4))
                 v5) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v2)
                    (coe v3) (coe v4))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Function.Bundles.d_from_1726
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0)
                          (coe
                             MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v2) (coe v3))
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
d_filter'45'hom'45''8838'_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'hom'45''8838'_594 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'hom'45''8838'_594 v1 v4 v5 v6 v7 v8
du_filter'45'hom'45''8838'_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'hom'45''8838'_594 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v2 v1))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_specification_174 v0 erased erased v3 v1))
         (coe v4))
      (let v6
             = coe
                 du_filter'45'split'45''8746'_580 (coe v0) (coe v1) (coe v2)
                 (coe v3) (coe v4) (coe v5) in
       coe
         (case coe v6 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1724
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                         (coe v1) (coe v4))
                      v7)
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> coe
                   MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1724
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v3)
                         (coe v1) (coe v4))
                      v7)
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_606 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45'hom'45''8839'_606 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8
  = du_filter'45'hom'45''8839'_606 v1 v4 v5 v6 v7 v8
du_filter'45'hom'45''8839'_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45'hom'45''8839'_606 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Axiom.Set.d_unions_184 v0 erased
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     MAlonzo.Code.Axiom.Set.d_listing_204 v0 erased
                     (coe
                        MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2)
                        (coe
                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                           (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))))))
         (coe v1) (coe v4))
      (let v6
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0)
                    (coe MAlonzo.Code.Axiom.Set.du_filter_402 v0 v1 v2)
                    (coe MAlonzo.Code.Axiom.Set.du_filter_402 v0 v1 v3) (coe v4))
                 v5 in
       coe
         (case coe v6 of
            MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1726
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                            (coe v1) (coe v4))
                         v7))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1724
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v2)
                         (coe v3) (coe v4))
                      (coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                                  (coe v1) (coe v4))
                               v7))))
            MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7
              -> coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                      (coe
                         MAlonzo.Code.Function.Bundles.d_from_1726
                         (coe
                            MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v3)
                            (coe v1) (coe v4))
                         v7))
                   (coe
                      MAlonzo.Code.Function.Bundles.d_to_1724
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v2)
                         (coe v3) (coe v4))
                      (coe
                         MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Function.Bundles.d_from_1726
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v3)
                                  (coe v1) (coe v4))
                               v7))))
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_616 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_616 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_filter'45'hom'45''8746'_616 v1 v4 v5 v6
du_filter'45'hom'45''8746'_616 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'hom'45''8746'_616 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_filter'45'hom'45''8838'_594 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_filter'45'hom'45''8839'_606 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties.Dec-∈-fromList
d_Dec'45''8712''45'fromList_624 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_624 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_Dec'45''8712''45'fromList_624 v1 v4 v5 v6
du_Dec'45''8712''45'fromList_624 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'fromList_624 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v2)
         (coe v3))
      (coe
         MAlonzo.Code.Data.List.Membership.DecSetoid.du__'8712''63'__58
         (coe
            MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
            (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
         (coe v3) (coe v2))
-- Axiom.Set.Properties.Dec-∈-singleton
d_Dec'45''8712''45'singleton_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_630 ~v0 v1 ~v2 v3 v4 v5
  = du_Dec'45''8712''45'singleton_630 v1 v3 v4 v5
du_Dec'45''8712''45'singleton_630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'singleton_630 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440 (coe v0) (coe v3)
         (coe v1))
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1)
-- Axiom.Set.Properties.singleton-finite
d_singleton'45'finite_634 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_634 ~v0 v1 ~v2 v3
  = du_singleton'45'finite_634 v1 v3
du_singleton'45'finite_634 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45'finite_634 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v1))
      (coe
         (\ v2 ->
            coe
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
                 MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                    (coe MAlonzo.Code.Data.List.Base.du_'91'_'93'_306 (coe v1))
                    (coe v2)))))
-- Axiom.Set.Properties.filter-finite
d_filter'45'finite_648 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_648 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7
  = du_filter'45'finite_648 v1 v3 v5 v6 v7
du_filter'45'finite_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'finite_648 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.List.Base.du_filter_740 (coe v3) (coe v5))
             (coe
                (\ v7 ->
                   coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                     (\ v8 v9 v10 ->
                        coe
                          MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                          (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                     erased erased erased
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                        (\ v8 v9 v10 ->
                           coe
                             MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                             (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                        erased erased erased
                        (coe
                           MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                           (\ v8 v9 v10 ->
                              coe
                                MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                           erased erased erased
                           (coe
                              MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                              (\ v8 ->
                                 coe
                                   MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                   (coe
                                      MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                              erased)
                           (coe
                              MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                              (coe
                                 MAlonzo.Code.Data.Product.Base.du_uncurry_244
                                 (coe
                                    (\ v8 v9 ->
                                       coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8314'_524
                                         v3 v5 v9 v8)))
                              (coe
                                 (\ v8 ->
                                    coe
                                      MAlonzo.Code.Data.Product.Base.du_swap_370
                                      (coe
                                         MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45'filter'8315'_530
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
                           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v1)
                           (coe v2) (coe v7)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∪-⊆ˡ
d_'8746''45''8838''737'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''737'_668 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''737'_668 v1 v3 v4 v5
du_'8746''45''8838''737'_668 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''737'_668 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_212 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Axiom.Set.Properties.∪-⊆ʳ
d_'8746''45''8838''691'_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''691'_670 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''691'_670 v1 v3 v4 v5
du_'8746''45''8838''691'_670 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''691'_670 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_212 (coe v0) (coe v2) (coe v1) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Axiom.Set.Properties.∪-⊆
d_'8746''45''8838'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838'_672 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9
  = du_'8746''45''8838'_672 v1 v3 v5 v6 v7 v8 v9
du_'8746''45''8838'_672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838'_672 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (coe v3 v5)
      (coe v4 v5) (coe du_'8712''45''8746''8315'_210 v0 v1 v2 v5 v6)
-- Axiom.Set.Properties.⊆→∪
d_'8838''8594''8746'_680 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_680 ~v0 v1 ~v2 v3 v4 v5
  = du_'8838''8594''8746'_680 v1 v3 v4 v5
du_'8838''8594''8746'_680 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''8594''8746'_680 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v4 v5 ->
            let v6
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
                         (coe v2) (coe v4))
                      v5 in
            coe
              (case coe v6 of
                 MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v7 -> coe v3 v4 v7
                 MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v7 -> coe v7
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe du_'8746''45''8838''691'_670 (coe v0) (coe v2) (coe v1))
-- Axiom.Set.Properties.∪-Supremum
d_'8746''45'Supremum_694 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_694 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'Supremum_694 v1 v3 v4
du_'8746''45'Supremum_694 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'Supremum_694 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8746''45''8838''737'_668 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_'8746''45''8838''691'_670 (coe v0) (coe v2) (coe v1))
         (coe
            (\ v3 -> coe du_'8746''45''8838'_672 (coe v0) (coe v1) (coe v2))))
-- Axiom.Set.Properties.∪-cong-⊆
d_'8746''45'cong'45''8838'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45'cong'45''8838'_698 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8746''45'cong'45''8838'_698 v1 v3 v4 v5 v6 v7 v8 v9
du_'8746''45'cong'45''8838'_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45'cong'45''8838'_698 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_212 (coe v0) (coe v2) (coe v4) (coe v7))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216
         (coe MAlonzo.Code.Data.Sum.Base.du_map_84 (coe v5 v7) (coe v6 v7))
         (coe
            du_'8712''45''8746''8315'_210 (coe v0) (coe v1) (coe v3) (coe v7)))
-- Axiom.Set.Properties.∪-cong
d_'8746''45'cong_704 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_704 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8746''45'cong_704 v1 v3 v4 v5 v6
du_'8746''45'cong_704 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'cong_704 v0 v1 v2 v3 v4
  = coe
      du_cong'45''8838''8658'cong'8322'_266
      (coe du_'8746''45'cong'45''8838'_698 (coe v0)) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- Axiom.Set.Properties.∪-preserves-finite
d_'8746''45'preserves'45'finite_706 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_706 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8746''45'preserves'45'finite_706 v1 v3 v4 v5 v6
du_'8746''45'preserves'45'finite_706 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'preserves'45'finite_706 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> case coe v4 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v5) (coe v7))
                    (coe
                       (\ v9 ->
                          coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                            (\ v10 v11 v12 ->
                               coe
                                 MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                 (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                            erased erased erased
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                               (\ v10 v11 v12 ->
                                  coe
                                    MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                    (coe
                                       MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                               erased erased erased
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8764'_300
                                  (\ v10 v11 v12 ->
                                     coe
                                       MAlonzo.Code.Function.Related.Propositional.du_K'45'trans_164
                                       (coe
                                          MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                  erased erased erased
                                  (coe
                                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                                     (\ v10 ->
                                        coe
                                          MAlonzo.Code.Function.Related.Propositional.du_K'45'refl_160
                                          (coe
                                             MAlonzo.Code.Function.Related.Propositional.C_equivalence_12))
                                     erased)
                                  (coe
                                     MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
                                     (coe
                                        MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93'_52
                                        (coe
                                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''737'_202
                                           (coe v5))
                                        (coe
                                           MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8314''691'_208
                                           v5 v7))
                                     (coe
                                        MAlonzo.Code.Data.List.Membership.Propositional.Properties.du_'8712''45''43''43''8315'_214
                                        v5 v7)))
                               (coe
                                  MAlonzo.Code.Data.List.Ext.Properties.du__'8846''45'cong__54
                                  (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_12)
                                  (coe v6 v9) (coe v8 v9)))
                            (coe
                               MAlonzo.Code.Function.Related.Propositional.du_SK'45'sym_168
                               (coe MAlonzo.Code.Function.Related.Propositional.C_equivalence_88)
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
                                  (coe v2) (coe v9)))))
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∪-sym
d_'8746''45'sym_726 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_726 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'sym_726 v1 v3 v4
du_'8746''45'sym_726 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'sym_726 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8746''45''8838'_672 (coe v0) (coe v1) (coe v2)
         (coe du_'8746''45''8838''691'_670 (coe v0) (coe v1) (coe v2))
         (coe du_'8746''45''8838''737'_668 (coe v0) (coe v2) (coe v1)))
      (coe
         du_'8746''45''8838'_672 (coe v0) (coe v2) (coe v1)
         (coe du_'8746''45''8838''691'_670 (coe v0) (coe v2) (coe v1))
         (coe du_'8746''45''8838''737'_668 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Properties.Set-JoinSemilattice
d_Set'45'JoinSemilattice_728 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_728 ~v0 v1 ~v2
  = du_Set'45'JoinSemilattice_728 v1
du_Set'45'JoinSemilattice_728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_Set'45'JoinSemilattice_728 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsJoinSemilattice'46'constructor_527
      (coe du_'8838''45'PartialOrder_310)
      (coe du_'8746''45'Supremum_694 (coe v0))
-- Axiom.Set.Properties.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_730 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_730 ~v0 v1 ~v2
  = du_Set'45'BoundedJoinSemilattice_730 v1
du_Set'45'BoundedJoinSemilattice_730 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
du_Set'45'BoundedJoinSemilattice_730 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsBoundedJoinSemilattice'46'constructor_5367
      (coe du_Set'45'JoinSemilattice_728 (coe v0))
      (\ v1 v2 v3 -> coe du_'8709''45'minimum_426)
-- Axiom.Set.Properties.Set-BddSemilattice
d_Set'45'BddSemilattice_734 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
d_Set'45'BddSemilattice_734 ~v0 v1 ~v2
  = du_Set'45'BddSemilattice_734 v1
du_Set'45'BddSemilattice_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
du_Set'45'BddSemilattice_734 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Bundles.C_BoundedJoinSemilattice'46'constructor_2381
      (coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0))
      (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
      (coe du_Set'45'BoundedJoinSemilattice_730 (coe v0))
-- Axiom.Set.Properties._.∪-identityˡ
d_'8746''45'identity'737'_764 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_764 ~v0 v1 ~v2
  = du_'8746''45'identity'737'_764 v1
du_'8746''45'identity'737'_764 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'identity'737'_764 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.du_identity'737'_280
      (coe du_Set'45'BddSemilattice_734 (coe v0))
-- Axiom.Set.Properties._.∪-identityʳ
d_'8746''45'identity'691'_768 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_768 ~v0 v1 ~v2
  = du_'8746''45'identity'691'_768 v1
du_'8746''45'identity'691'_768 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'identity'691'_768 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.BoundedJoinSemilattice.du_identity'691'_288
      (coe du_Set'45'BddSemilattice_734 (coe v0))
-- Axiom.Set.Properties._.∪-comm
d_'8746''45'comm_774 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_774 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'comm_774 v1 v3 v4
du_'8746''45'comm_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'comm_774 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Structures.d_antisym_184
      (coe du_'8838''45'PartialOrder_310)
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v2) (coe v1))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_'8746''45'Supremum_694 (coe v0) (coe v1) (coe v2)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v2) (coe v1))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe du_'8746''45'Supremum_694 (coe v0) (coe v2) (coe v1))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_'8746''45'Supremum_694 (coe v0) (coe v2) (coe v1))))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
            (coe du_'8746''45'Supremum_694 (coe v0) (coe v2) (coe v1)))
         (coe
            MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v1) (coe v2))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe du_'8746''45'Supremum_694 (coe v0) (coe v1) (coe v2))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe du_'8746''45'Supremum_694 (coe v0) (coe v1) (coe v2))))
-- Axiom.Set.Properties._.∪-assoc
d_'8746''45'assoc_782 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_782 ~v0 v1 ~v2 = du_'8746''45'assoc_782 v1
du_'8746''45'assoc_782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'assoc_782 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Properties.JoinSemilattice.du_'8744''45'assoc_312
      (coe
         MAlonzo.Code.Relation.Binary.Lattice.Bundles.du_joinSemilattice_186
         (coe du_Set'45'BddSemilattice_734 (coe v0)))
-- Axiom.Set.Properties.fromList-∪-singleton
d_fromList'45''8746''45'singleton_790 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_790 ~v0 v1 ~v2 v3 v4
  = du_fromList'45''8746''45'singleton_790 v1 v3 v4
du_fromList'45''8746''45'singleton_790 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'45''8746''45'singleton_790 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_listing_204 v0 erased
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1) (coe v2)))
                         v3)
                      v4 in
            coe
              (case coe v5 of
                 MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v8
                   -> coe
                        du_'8712''45''8746''8314'_212 v0
                        (coe
                           MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                           (coe
                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                              (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)))
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe MAlonzo.Code.Axiom.Set.d_listing_204 v0 erased v2))
                        v1
                        (coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38
                           (coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                                 (coe
                                    MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                    (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))
                                 (coe v1))
                              (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
                 MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v8
                   -> coe
                        du_'8712''45''8746''8314'_212 v0
                        (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                           (coe
                              MAlonzo.Code.Axiom.Set.d_listing_204 v0 erased
                              (coe
                                 MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                 (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                        (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)) v3
                        (coe
                           MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                           (coe
                              MAlonzo.Code.Function.Bundles.d_to_1724
                              (coe
                                 MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v2)
                                 (coe v3))
                              v8))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v3 v4 ->
            let v5
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_unions_184 v0 erased
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v1)
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                                        (coe v2))))))
                         v3)
                      v4 in
            coe
              (let v6
                     = coe
                         MAlonzo.Code.Function.Bundles.d_from_1726
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.d_listing_204 v0 erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v1)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1726
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_184 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0
                                                 erased v1)
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                                                    (coe v2))))))
                                     v3)
                                  v4)))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1726
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_184 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0
                                                 erased v1)
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_306
                                                 (coe
                                                    MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
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
                                     MAlonzo.Code.Function.Bundles.d_to_1724
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
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
                                     MAlonzo.Code.Function.Bundles.d_to_1724
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
                                              (coe v0) (coe v3) (coe v1))
                                           v11))
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v11
                                -> coe
                                     MAlonzo.Code.Function.Bundles.d_to_1724
                                     (coe
                                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                                        (coe
                                           MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v1)
                                           (coe v2))
                                        (coe v3))
                                     (coe
                                        MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54
                                        (coe
                                           MAlonzo.Code.Function.Bundles.d_from_1726
                                           (coe
                                              MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
                                              (coe v0) (coe v2) (coe v3))
                                           v11))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
-- Axiom.Set.Properties.∪-fromList-++
d_'8746''45'fromList'45''43''43'_822 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_822 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'fromList'45''43''43'_822 v1 v3 v4
du_'8746''45'fromList'45''43''43'_822 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'fromList'45''43''43'_822 v0 v1 v2
  = case coe v1 of
      []
        -> coe
             du_'8746''45'identity'737'_764 v0
             (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
             (\ v5 v6 v7 ->
                coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
             (coe
                MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v1))
                (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)))
             (coe
                MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                (coe
                   MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                   (coe
                      MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
             (coe
                MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                   (coe
                      (\ v5 v6 v7 v8 v9 ->
                         coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                           (coe
                              du_'8838''45'Transitive_274
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                           (coe
                              du_'8838''45'Transitive_274
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v1))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)))
                (coe
                   MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4)))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)))
                (coe
                   MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                   (coe
                      MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                      (coe
                         MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                (coe
                   MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                      (coe
                         (\ v5 v6 v7 v8 v9 ->
                            coe
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                              (coe
                                 du_'8838''45'Transitive_274
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                              (coe
                                 du_'8838''45'Transitive_274
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4)))
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4))
                         (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))))
                   (coe
                      MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                         (coe
                            MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                   (coe
                      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                         (coe
                            (\ v5 v6 v7 v8 v9 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    du_'8838''45'Transitive_274
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                 (coe
                                    du_'8838''45'Transitive_274
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4))
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                         (coe
                            MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                      (coe
                         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
                         (coe
                            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                            (coe
                               (\ v5 v6 v7 v8 v9 ->
                                  coe
                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                    (coe
                                       du_'8838''45'Transitive_274
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                                    (coe
                                       du_'8838''45'Transitive_274
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
                         (\ v5 v6 v7 ->
                            case coe v7 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                              _ -> MAlonzo.RTE.mazUnreachableError)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                            (coe
                               MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                               (coe
                                  MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                         (let v5
                                = \ v5 ->
                                    coe
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                      (coe (\ v6 v7 -> v7)) (coe (\ v6 v7 -> v7)) in
                          coe
                            (coe
                               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                               (coe
                                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                                  (coe v5))
                               (coe
                                  MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v3)
                                     (coe
                                        MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4)
                                        (coe v2))))))
                         (coe
                            du_fromList'45''8746''45'singleton_790 (coe v0) (coe v3)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2))))
                      (coe
                         du_'8746''45'cong_704 v0
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                         (coe
                            MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4))
                            (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2)))
                         (coe
                            MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
                            (coe
                               MAlonzo.Code.Data.List.Base.du__'43''43'__62 (coe v4) (coe v2)))
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                            (coe (\ v5 v6 -> v6)))
                         (coe
                            du_'8746''45'fromList'45''43''43'_822 (coe v0) (coe v4) (coe v2))))
                   (coe
                      du_'8746''45'assoc_782 v0
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4))
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))))
                (coe
                   du_'8746''45'cong_704 v0
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v1))
                   (coe
                      MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
                      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)
                      (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v4)))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))
                   (coe MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0) (coe v2))
                   (coe
                      du_fromList'45''8746''45'singleton_790 (coe v0) (coe v3) (coe v4))
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                      (coe (\ v5 v6 -> v6)))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.disjoint-sym
d_disjoint'45'sym_888 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'sym_888 = erased
-- Axiom.Set.Properties.Intersectionᵖ._._∩_
d__'8745'__900 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__900 ~v0 v1 ~v2 v3 = du__'8745'__900 v1 v3
du__'8745'__900 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__900 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
-- Axiom.Set.Properties.Intersectionᵖ._.disjoint'
d_disjoint''_904 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_904 = erased
-- Axiom.Set.Properties.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_908 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_908 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_disjoint'8658'disjoint''_908
du_disjoint'8658'disjoint''_908 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_908
  = coe
      du_'8709''45'least_430
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Properties.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_912 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_912 = erased
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_920 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''737'_920 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''737'_920 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''737'_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''737'_920 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_922 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''691'_922 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''691'_922 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''691'_922 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''691'_922 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_924 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838'_924 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_'8745''45''8838'_924 v1 v3 v5 v6 v7 v8 v9 v10
du_'8745''45''8838'_924 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838'_924 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v6))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112 (coe v4 v6)
         (coe v5 v6) (coe v7))
-- Axiom.Set.Properties.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_932 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_932 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'Infimum_932 v1 v3 v4 v5
du_'8745''45'Infimum_932 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_932 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45''8838''737'_920 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8745''45''8838''691'_922 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            (\ v4 ->
               coe du_'8745''45''8838'_924 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_940 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_940 ~v0 v1 ~v2 v3 v4 v5 ~v6
  = du_'8745''45'preserves'45'finite_940 v1 v3 v4 v5
du_'8745''45'preserves'45'finite_940 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_940 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_322
      (coe
         du_'8745''45''8838''691'_922 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_942 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45'cong'45''8838'_942 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11
  = du_'8745''45'cong'45''8838'_942 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
du_'8745''45'cong'45''8838'_942 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'cong'45''8838'_942 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
         (coe v3) (coe v5) (coe v8))
      (coe
         MAlonzo.Code.Data.Product.Base.du_map_128 (coe v6 v8)
         (coe (\ v10 -> coe v7 v8))
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1726
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
               (coe v2) (coe v4) (coe v8))
            v9))
-- Axiom.Set.Properties.Intersectionᵖ.∩-cong
d_'8745''45'cong_950 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_950 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45'cong_950 v1 v3 v4 v5 v6 v7
du_'8745''45'cong_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_950 v0 v1 v2 v3 v4 v5
  = coe
      du_cong'45''8838''8658'cong'8322'_266
      (coe du_'8745''45'cong'45''8838'_942 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_956 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_956 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'691'_956 v1 v3 v4
du_'8745''45'OrderHomomorphism'691'_956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_956 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong_950 v0 v1 v2 v2 v3 v4
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                 (coe (\ v5 v6 -> v6)))))
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong'45''8838'_942 (coe v0) (coe v1) (coe v2) (coe v2)
              (coe v3) (coe v4) (coe (\ v5 v6 -> v6))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_962 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_962 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'737'_962 v1 v3 v4
du_'8745''45'OrderHomomorphism'737'_962 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_962 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong_950 v0 v1 v3 v4 v2 v2 v5
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                 (coe (\ v6 v7 -> v7)))))
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong'45''8838'_942 (coe v0) (coe v1) (coe v3) (coe v4)
              (coe v2) (coe v2) (coe v5) (coe (\ v6 v7 -> v7))))
-- Axiom.Set.Properties.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_964 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_964 ~v0 v1 ~v2 v3 = du_Set'45'Lattice_964 v1 v3
du_Set'45'Lattice_964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_964 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsLattice'46'constructor_15241
      (coe du_'8838''45'PartialOrder_310)
      (coe du_'8746''45'Supremum_694 (coe v0))
      (coe du_'8745''45'Infimum_932 (coe v0) (coe v1))
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_966 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45'sym'8838'_966 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45'sym'8838'_966 v1 v3 v4 v5 v6 v7
du_'8745''45'sym'8838'_966 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'sym'8838'_966 v0 v1 v2 v3 v4 v5
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
                       MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                       (coe v1 v3) (coe v4)))
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
                          MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v2)
                          (coe v1 v3) (coe v4)))
                    v5) in
       coe
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
               (coe v3) (coe v2) (coe v4))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v7) (coe v6))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym
d_'8745''45'sym_980 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_980 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'sym_980 v1 v3 v4 v5
du_'8745''45'sym_980 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_980 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45'sym'8838'_966 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_'8745''45'sym'8838'_966 (coe v0) (coe v1) (coe v3) (coe v2))
-- Axiom.Set.Properties._.sublist-⇔
d_sublist'45''8660'_992 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_992 ~v0 v1 ~v2 v3 v4
  = du_sublist'45''8660'_992 v1 v3 v4
du_sublist'45''8660'_992 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_sublist'45''8660'_992 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (coe
                (\ v3 v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
             (coe du_onlyif_1010 (coe v0) (coe v1) (coe v3) (coe v4))
             (coe
                (\ v5 v6 v7 ->
                   coe
                     MAlonzo.Code.Function.Bundles.d_to_1724
                     (coe
                        MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
                        (coe v6))
                     (coe
                        v5 v6
                        (coe
                           MAlonzo.Code.Function.Bundles.d_from_1726
                           (coe
                              MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v2)
                              (coe v6))
                           v7))))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._._.onlyif
d_onlyif_1010 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_onlyif_1010 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_onlyif_1010 v1 v3 v4 v5 v6 v7 v8
du_onlyif_1010 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_onlyif_1010 v0 v1 v2 v3 v4 v5 v6
  = case coe v6 of
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v9
        -> coe
             MAlonzo.Code.Function.Bundles.d_from_1726
             (coe
                MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
                (coe v5))
             (coe
                v4 v5
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1724
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v5) (coe v3))
                      (coe v5))
                   (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 erased)))
      MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9
        -> coe
             MAlonzo.Code.Function.Bundles.d_from_1726
             (coe
                MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
                (coe v5))
             (coe
                v4 v5
                (coe
                   MAlonzo.Code.Function.Bundles.d_to_1724
                   (coe
                      MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0)
                      (coe
                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22 (coe v2) (coe v3))
                      (coe v5))
                   (coe MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v9)))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties._._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_1032 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_1032 ~v0 v1 ~v2 v3 ~v4 ~v5
  = du_'8707''45'sublist'45''8660'_1032 v1 v3
du_'8707''45'sublist'45''8660'_1032 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8707''45'sublist'45''8660'_1032 v0 v1
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
      (coe
         (\ v2 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       du_sublist'45''8660'_992 (coe v0) (coe v1)
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
                    MAlonzo.Code.Function.Bundles.d_from_1726
                    (coe
                       du_sublist'45''8660'_992 (coe v0) (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
-- Axiom.Set.Properties._._.∃?-sublist-⇔
d_'8707''63''45'sublist'45''8660'_1054 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''63''45'sublist'45''8660'_1054 ~v0 v1 ~v2 v3 ~v4 ~v5
  = du_'8707''63''45'sublist'45''8660'_1054 v1 v3
du_'8707''63''45'sublist'45''8660'_1054 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8707''63''45'sublist'45''8660'_1054 v0 v1
  = coe
      MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
      (coe du_'8707''45'sublist'45''8660'_1032 (coe v0) (coe v1))
