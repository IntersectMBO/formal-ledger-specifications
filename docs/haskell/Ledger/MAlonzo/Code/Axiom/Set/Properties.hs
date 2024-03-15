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
import qualified MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
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
d_disjoint''_130 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_130 = erased
-- Axiom.Set.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_162 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_162 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8315'''_162 v1 v4 v5 v6
du_'8712''45'map'8315'''_162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'map'8315'''_162 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_166 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'map'8314'''_166 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_'8712''45'map'8314'''_166 v1 v4 v5 v6
du_'8712''45'map'8314'''_166 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'map'8314'''_166 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v3))
-- Axiom.Set.Properties.∈-map⁺''
d_'8712''45'map'8314'''''_174 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8712''45'map'8314'''''_174 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45'map'8314'''''_174 v1 v4 v5 v6 v7
du_'8712''45'map'8314'''''_174 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8712''45'map'8314'''''_174 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v2)
         (coe v1) (coe v1 v3))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'45''44'__92 (coe v3)
         (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))
-- Axiom.Set.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_192 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_192 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8315'''_192 v1 v3 v5 v6
du_'8712''45'filter'8315'''_192 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'filter'8315'''_192 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_194 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_'8712''45'filter'8314'''_194 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_'8712''45'filter'8314'''_194 v1 v3 v5 v6
du_'8712''45'filter'8314'''_194 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_'8712''45'filter'8314'''_194 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_208 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_208 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8315'_208 v1 v3 v4 v5
du_'8712''45''8746''8315'_208 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30
du_'8712''45''8746''8315'_208 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_210 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8712''45''8746''8314'_210 ~v0 v1 ~v2 v3 v4 v5
  = du_'8712''45''8746''8314'_210 v1 v3 v4 v5
du_'8712''45''8746''8314'_210 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712''45''8746''8314'_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0) (coe v1)
         (coe v2) (coe v3))
-- Axiom.Set.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_222 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_222 ~v0 v1 ~v2 v3 v4
  = du_'8712''45'fromList'8315'_222 v1 v3 v4
du_'8712''45'fromList'8315'_222 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'fromList'8315'_222 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_228 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_'8712''45'fromList'8314'_228 ~v0 v1 ~v2 ~v3 ~v4 v5 v6
  = du_'8712''45'fromList'8314'_228 v1 v5 v6
du_'8712''45'fromList'8314'_228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_'8712''45'fromList'8314'_228 v0 v1 v2
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414 (coe v0) (coe v1)
         (coe v2))
-- Axiom.Set.Properties._≡_⨿_
d__'8801'_'10815'__236 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__236 = erased
-- Axiom.Set.Properties.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_244 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_244 ~v0 ~v1 ~v2 ~v3 ~v4
  = du_'8801''7497''8660''8801''7497'''_244
du_'8801''7497''8660''8801''7497'''_244 ::
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8801''7497''8660''8801''7497'''_244
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
d_cong'45''8838''8658'cong_260 ::
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
d_cong'45''8838''8658'cong_260 ~v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_cong'45''8838''8658'cong_260 v5 v6 v7 v8
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
d_cong'45''8838''8658'cong'8322'_268 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7
                                     v8 v9 v10 v11 v12
  = du_cong'45''8838''8658'cong'8322'_268 v6 v7 v8 v9 v10 v11 v12
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
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8838''45'Transitive_276 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 v6 v7 v8 v9
  = du_'8838''45'Transitive_276 v6 v7 v8 v9
du_'8838''45'Transitive_276 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8838''45'Transitive_276 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- Axiom.Set.Properties.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_282 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_282 ~v0 ~v1 ~v2
  = du_'8801''7497''45'isEquivalence_282
du_'8801''7497''45'isEquivalence_282 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
du_'8801''7497''45'isEquivalence_282
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
                 du_'8838''45'Transitive_276
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
              (coe
                 du_'8838''45'Transitive_276
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))))
-- Axiom.Set.Properties.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_296 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_296 ~v0 ~v1 ~v2
  = du_'8801''7497''45'Setoid_296
du_'8801''7497''45'Setoid_296 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
du_'8801''7497''45'Setoid_296
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Setoid'46'constructor_727
      (coe du_'8801''7497''45'isEquivalence_282)
-- Axiom.Set.Properties.⊆-isPreorder
d_'8838''45'isPreorder_300 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_300 ~v0 ~v1 ~v2
  = du_'8838''45'isPreorder_300
du_'8838''45'isPreorder_300 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
du_'8838''45'isPreorder_300
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPreorder'46'constructor_3993
      (coe du_'8801''7497''45'isEquivalence_282)
      (coe
         (\ v0 v1 v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
      (coe (\ v0 v1 v2 -> coe du_'8838''45'Transitive_276))
-- Axiom.Set.Properties.⊆-Preorder
d_'8838''45'Preorder_308 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_308 ~v0 ~v1 ~v2 ~v3
  = du_'8838''45'Preorder_308
du_'8838''45'Preorder_308 ::
  MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
du_'8838''45'Preorder_308
  = coe
      MAlonzo.Code.Relation.Binary.Bundles.C_Preorder'46'constructor_2249
      (coe du_'8838''45'isPreorder_300)
-- Axiom.Set.Properties.⊆-PartialOrder
d_'8838''45'PartialOrder_312 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_312 ~v0 ~v1 ~v2
  = du_'8838''45'PartialOrder_312
du_'8838''45'PartialOrder_312 ::
  MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
du_'8838''45'PartialOrder_312
  = coe
      MAlonzo.Code.Relation.Binary.Structures.C_IsPartialOrder'46'constructor_9831
      (coe du_'8838''45'isPreorder_300)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32))
-- Axiom.Set.Properties.∈-×
d_'8712''45''215'_318 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_318 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8712''45''215'_318 v1 v4 v5 v6 v7
du_'8712''45''215'_318 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45''215'_318 v0 v1 v2 v3 v4
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
d_map'45''8838''8728'_340 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838''8728'_340 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8838''8728'_340 v1 v5 v6 v7 v8 v9
du_map'45''8838''8728'_340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838''8728'_340 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0)
                 (coe MAlonzo.Code.Axiom.Set.du_map_380 v0 v1 v3) (coe v2) (coe v4))
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
                                  MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v3)
                                  (coe v1) (coe v7))
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
d_map'45''8728''8838'_362 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8728''8838'_362 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7 v8 v9
  = du_map'45''8728''8838'_362 v1 v5 v6 v7 v8 v9
du_map'45''8728''8838'_362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8728''8838'_362 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v3)
                 (coe (\ v6 -> coe v2 (coe v1 v6))) (coe v4))
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
d_map'45''8728'_378 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_378 ~v0 v1 ~v2 ~v3 ~v4 v5 v6 v7
  = du_map'45''8728'_378 v1 v5 v6 v7
du_map'45''8728'_378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
-- Axiom.Set.Properties.map-⊆
d_map'45''8838'_386 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_map'45''8838'_386 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_map'45''8838'_386 v1 v4 v5 v6 v7 v8 v9
du_map'45''8838'_386 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_map'45''8838'_386 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'map_388 (coe v0) (coe v1)
                 (coe v3) (coe v5))
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
d_map'45''8801''7497'_412 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_412 ~v0 v1 ~v2 ~v3 v4 v5 v6 v7
  = du_map'45''8801''7497'_412 v1 v4 v5 v6 v7
du_map'45''8801''7497'_412 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8801''7497'_412 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                du_map'45''8838'_386 (coe v0) (coe v1) (coe v2) (coe v3) (coe v5))
             (coe
                du_map'45''8838'_386 (coe v0) (coe v2) (coe v1) (coe v3) (coe v6))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Properties.∉-∅
d_'8713''45''8709'_420 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_420 = erased
-- Axiom.Set.Properties.∅-minimum
d_'8709''45'minimum_424 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8709''45'minimum_424 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_'8709''45'minimum_424
du_'8709''45'minimum_424 :: AgdaAny
du_'8709''45'minimum_424
  = coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14
-- Axiom.Set.Properties.∅-least
d_'8709''45'least_428 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_428 ~v0 ~v1 ~v2 ~v3 v4
  = du_'8709''45'least_428 v4
du_'8709''45'least_428 ::
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'least_428 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (\ v1 v2 -> coe du_'8709''45'minimum_424)
-- Axiom.Set.Properties.∅-weakly-finite
d_'8709''45'weakly'45'finite_432 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_432 ~v0 ~v1 ~v2
  = du_'8709''45'weakly'45'finite_432
du_'8709''45'weakly'45'finite_432 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'weakly'45'finite_432
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16)
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Properties.∅-finite
d_'8709''45'finite_434 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_434 ~v0 ~v1 ~v2 = du_'8709''45'finite_434
du_'8709''45'finite_434 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''45'finite_434
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
d_map'45''8709'_440 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_440 ~v0 v1 ~v2 ~v3 ~v4 v5
  = du_map'45''8709'_440 v1 v5
du_map'45''8709'_440 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_map'45''8709'_440 v0 v1
  = coe
      du_'8709''45'least_428
      (coe
         (\ v2 v3 ->
            let v4
                  = coe
                      du_'8712''45'map'8315'''_162 v0 v1
                      (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)) v2 v3 in
            coe
              (case coe v4 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
                   -> coe
                        seq (coe v6) (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14)
                 _ -> MAlonzo.RTE.mazUnreachableError)))
-- Axiom.Set.Properties.mapPartial-∅
d_mapPartial'45''8709'_450 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_450 ~v0 v1 ~v2 ~v3 v4
  = du_mapPartial'45''8709'_450 v1 v4
du_mapPartial'45''8709'_450 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartial'45''8709'_450 v0 v1
  = coe
      du_'8709''45'least_428
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
d_card'45''8801''7497'_464 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_464 = erased
-- Axiom.Set.Properties.filter-⊆
d_filter'45''8838'_494 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  (AgdaAny -> ()) -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_filter'45''8838'_494 ~v0 v1 ~v2 v3 ~v4 v5 v6
  = du_filter'45''8838'_494 v1 v3 v5 v6
du_filter'45''8838'_494 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_filter'45''8838'_494 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
      (coe
         du_'8712''45'filter'8315'''_192 (coe v0) (coe v1) (coe v2)
         (coe v3))
-- Axiom.Set.Properties.Dec-∈-fromList
d_Dec'45''8712''45'fromList_502 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_502 ~v0 v1 ~v2 ~v3 v4 v5 v6
  = du_Dec'45''8712''45'fromList_502 v1 v4 v5 v6
du_Dec'45''8712''45'fromList_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'fromList_502 v0 v1 v2 v3
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
d_Dec'45''8712''45'singleton_508 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_508 ~v0 v1 ~v2 v3 v4 v5
  = du_Dec'45''8712''45'singleton_508 v1 v3 v4 v5
du_Dec'45''8712''45'singleton_508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_Dec'45''8712''45'singleton_508 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Relation.Nullary.Decidable.du_map_18
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440 (coe v0) (coe v3)
         (coe v1))
      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v2 v3 v1)
-- Axiom.Set.Properties.singleton-finite
d_singleton'45'finite_512 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_512 ~v0 v1 ~v2 v3
  = du_singleton'45'finite_512 v1 v3
du_singleton'45'finite_512 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45'finite_512 v0 v1
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
d_filter'45'finite_526 ::
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
d_filter'45'finite_526 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7
  = du_filter'45'finite_526 v1 v3 v5 v6 v7
du_filter'45'finite_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'45'finite_526 v0 v1 v2 v3 v4
  = case coe v4 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe MAlonzo.Code.Data.List.Base.du_filter_892 v3 v5)
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
d_'8746''45''8838''737'_546 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''737'_546 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''737'_546 v1 v3 v4 v5
du_'8746''45''8838''737'_546 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''737'_546 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_210 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38)
-- Axiom.Set.Properties.∪-⊆ʳ
d_'8746''45''8838''691'_548 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838''691'_548 ~v0 v1 ~v2 v3 v4 v5
  = du_'8746''45''8838''691'_548 v1 v3 v4 v5
du_'8746''45''8838''691'_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838''691'_548 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_210 (coe v0) (coe v2) (coe v1) (coe v3))
      (coe MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42)
-- Axiom.Set.Properties.∪-⊆
d_'8746''45''8838'_550 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45''8838'_550 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9
  = du_'8746''45''8838'_550 v1 v3 v5 v6 v7 v8 v9
du_'8746''45''8838'_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45''8838'_550 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Data.Sum.Base.du_'91'_'44'_'93''8242'_66 (coe v3 v5)
      (coe v4 v5) (coe du_'8712''45''8746''8315'_208 v0 v1 v2 v5 v6)
-- Axiom.Set.Properties.∪-Supremum
d_'8746''45'Supremum_558 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_558 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'Supremum_558 v1 v3 v4
du_'8746''45'Supremum_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'Supremum_558 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe du_'8746''45''8838''737'_546 (coe v0) (coe v1) (coe v2))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe du_'8746''45''8838''691'_548 (coe v0) (coe v2) (coe v1))
         (coe
            (\ v3 -> coe du_'8746''45''8838'_550 (coe v0) (coe v1) (coe v2))))
-- Axiom.Set.Properties.∪-cong-⊆
d_'8746''45'cong'45''8838'_562 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8746''45'cong'45''8838'_562 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9
  = du_'8746''45'cong'45''8838'_562 v1 v3 v4 v5 v6 v7 v8 v9
du_'8746''45'cong'45''8838'_562 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8746''45'cong'45''8838'_562 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Base.du__'8728''8242'__216
      (coe
         du_'8712''45''8746''8314'_210 (coe v0) (coe v2) (coe v4) (coe v7))
      (coe
         MAlonzo.Code.Function.Base.du__'8728''8242'__216
         (coe MAlonzo.Code.Data.Sum.Base.du_map_84 (coe v5 v7) (coe v6 v7))
         (coe
            du_'8712''45''8746''8315'_208 (coe v0) (coe v1) (coe v3) (coe v7)))
-- Axiom.Set.Properties.∪-cong
d_'8746''45'cong_568 ::
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
d_'8746''45'cong_568 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8746''45'cong_568 v1 v3 v4 v5 v6
du_'8746''45'cong_568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'cong_568 v0 v1 v2 v3 v4
  = coe
      du_cong'45''8838''8658'cong'8322'_268
      (coe du_'8746''45'cong'45''8838'_562 (coe v0)) (coe v1) (coe v2)
      (coe v3) (coe v4)
-- Axiom.Set.Properties.∪-preserves-finite
d_'8746''45'preserves'45'finite_570 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_570 ~v0 v1 ~v2 v3 v4 v5 v6
  = du_'8746''45'preserves'45'finite_570 v1 v3 v4 v5 v6
du_'8746''45'preserves'45'finite_570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'preserves'45'finite_570 v0 v1 v2 v3 v4
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
d_'8746''45'sym_590 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_590 ~v0 v1 ~v2 v3 v4
  = du_'8746''45'sym_590 v1 v3 v4
du_'8746''45'sym_590 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''45'sym_590 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8746''45''8838'_550 (coe v0) (coe v1) (coe v2)
         (coe du_'8746''45''8838''691'_548 (coe v0) (coe v1) (coe v2))
         (coe du_'8746''45''8838''737'_546 (coe v0) (coe v2) (coe v1)))
      (coe
         du_'8746''45''8838'_550 (coe v0) (coe v2) (coe v1)
         (coe du_'8746''45''8838''691'_548 (coe v0) (coe v2) (coe v1))
         (coe du_'8746''45''8838''737'_546 (coe v0) (coe v1) (coe v2)))
-- Axiom.Set.Properties.Set-JoinSemilattice
d_Set'45'JoinSemilattice_592 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_592 ~v0 v1 ~v2
  = du_Set'45'JoinSemilattice_592 v1
du_Set'45'JoinSemilattice_592 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
du_Set'45'JoinSemilattice_592 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsJoinSemilattice'46'constructor_527
      (coe du_'8838''45'PartialOrder_312)
      (coe du_'8746''45'Supremum_558 (coe v0))
-- Axiom.Set.Properties.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_594 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_594 ~v0 v1 ~v2
  = du_Set'45'BoundedJoinSemilattice_594 v1
du_Set'45'BoundedJoinSemilattice_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
du_Set'45'BoundedJoinSemilattice_594 v0
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsBoundedJoinSemilattice'46'constructor_5367
      (coe du_Set'45'JoinSemilattice_592 (coe v0))
      (\ v1 v2 v3 -> coe du_'8709''45'minimum_424)
-- Axiom.Set.Properties.disjoint-sym
d_disjoint'45'sym_596 ::
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
d_disjoint'45'sym_596 = erased
-- Axiom.Set.Properties.Intersectionᵖ._._∩_
d__'8745'__608 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d__'8745'__608 ~v0 v1 ~v2 v3 = du__'8745'__608 v1 v3
du__'8745'__608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8745'__608 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
-- Axiom.Set.Properties.Intersectionᵖ._.disjoint'
d_disjoint''_610 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> ()
d_disjoint''_610 = erased
-- Axiom.Set.Properties.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_614 ::
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
d_disjoint'8658'disjoint''_614 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5 ~v6
  = du_disjoint'8658'disjoint''_614
du_disjoint'8658'disjoint''_614 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_614
  = coe
      du_'8709''45'least_428
      (coe (\ v0 v1 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
-- Axiom.Set.Properties.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_618 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_618 = erased
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_626 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''737'_626 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''737'_626 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''737'_626 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''737'_626 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_628 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838''691'_628 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45''8838''691'_628 v1 v3 v4 v5 v6 v7
du_'8745''45''8838''691'_628 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838''691'_628 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
            (coe v2) (coe v3) (coe v4))
         v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_630 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45''8838'_630 ~v0 v1 ~v2 v3 ~v4 v5 v6 v7 v8 v9 v10
  = du_'8745''45''8838'_630 v1 v3 v5 v6 v7 v8 v9 v10
du_'8745''45''8838'_630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45''8838'_630 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v6))
      (coe
         MAlonzo.Code.Data.Product.Base.du_'60'_'44'_'62'_112 (coe v4 v6)
         (coe v5 v6) (coe v7))
-- Axiom.Set.Properties.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_638 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_638 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'Infimum_638 v1 v3 v4 v5
du_'8745''45'Infimum_638 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_638 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45''8838''737'_626 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8745''45''8838''691'_628 (coe v0) (coe v1) (coe v2) (coe v3))
         (coe
            (\ v4 ->
               coe du_'8745''45''8838'_630 (coe v0) (coe v1) (coe v2) (coe v3))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_646 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_646 ~v0 v1 ~v2 v3 v4 v5 ~v6
  = du_'8745''45'preserves'45'finite_646 v1 v3 v4 v5
du_'8745''45'preserves'45'finite_646 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_646 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_322
      (coe
         du_'8745''45''8838''691'_628 (coe v0) (coe v1) (coe v2) (coe v3))
-- Axiom.Set.Properties.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_648 ::
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
d_'8745''45'cong'45''8838'_648 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8 v9 v10
                               v11
  = du_'8745''45'cong'45''8838'_648 v1 v3 v4 v5 v6 v7 v8 v9 v10 v11
du_'8745''45'cong'45''8838'_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'cong'45''8838'_648 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
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
d_'8745''45'cong_656 ::
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
d_'8745''45'cong_656 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45'cong_656 v1 v3 v4 v5 v6 v7
du_'8745''45'cong_656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_656 v0 v1 v2 v3 v4 v5
  = coe
      du_cong'45''8838''8658'cong'8322'_268
      (coe du_'8745''45'cong'45''8838'_648 (coe v0) (coe v1)) (coe v2)
      (coe v3) (coe v4) (coe v5)
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_662 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_662 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'691'_662 v1 v3 v4
du_'8745''45'OrderHomomorphism'691'_662 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_662 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong_656 v0 v1 v2 v2 v3 v4
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v5 v6 -> v6))
                 (coe (\ v5 v6 -> v6)))))
      (coe
         (\ v3 v4 ->
            coe
              du_'8745''45'cong'45''8838'_648 (coe v0) (coe v1) (coe v2) (coe v2)
              (coe v3) (coe v4) (coe (\ v5 v6 -> v6))))
-- Axiom.Set.Properties.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_668 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_668 ~v0 v1 ~v2 v3 v4
  = du_'8745''45'OrderHomomorphism'737'_668 v1 v3 v4
du_'8745''45'OrderHomomorphism'737'_668 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_668 v0 v1 v2
  = coe
      MAlonzo.Code.Relation.Binary.Morphism.Structures.C_IsOrderHomomorphism'46'constructor_5407
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong_656 v0 v1 v3 v4 v2 v2 v5
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                 (coe (\ v6 v7 -> v7)))))
      (coe
         (\ v3 v4 v5 ->
            coe
              du_'8745''45'cong'45''8838'_648 (coe v0) (coe v1) (coe v3) (coe v4)
              (coe v2) (coe v2) (coe v5) (coe (\ v6 v7 -> v7))))
-- Axiom.Set.Properties.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_670 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_670 ~v0 v1 ~v2 v3 = du_Set'45'Lattice_670 v1 v3
du_Set'45'Lattice_670 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_670 v0 v1
  = coe
      MAlonzo.Code.Relation.Binary.Lattice.Structures.C_IsLattice'46'constructor_15241
      (coe du_'8838''45'PartialOrder_312)
      (coe du_'8746''45'Supremum_558 (coe v0))
      (coe du_'8745''45'Infimum_638 (coe v0) (coe v1))
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_672 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_'8745''45'sym'8838'_672 ~v0 v1 ~v2 v3 v4 v5 v6 v7
  = du_'8745''45'sym'8838'_672 v1 v3 v4 v5 v6 v7
du_'8745''45'sym'8838'_672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_'8745''45'sym'8838'_672 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
                 (coe v2) (coe v3) (coe v4))
              v5 in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1724
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694 (coe v0) (coe v1)
                   (coe v3) (coe v2) (coe v4))
                (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8) (coe v7))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Properties.Intersectionᵖ.∩-sym
d_'8745''45'sym_686 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_686 ~v0 v1 ~v2 v3 v4 v5
  = du_'8745''45'sym_686 v1 v3 v4 v5
du_'8745''45'sym_686 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_686 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8745''45'sym'8838'_672 (coe v0) (coe v1) (coe v2) (coe v3))
      (coe
         du_'8745''45'sym'8838'_672 (coe v0) (coe v1) (coe v3) (coe v2))
-- Axiom.Set.Properties._.sublist-⇔
d_sublist'45''8660'_698 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_698 ~v0 v1 ~v2 v3 v4
  = du_sublist'45''8660'_698 v1 v3 v4
du_sublist'45''8660'_698 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_sublist'45''8660'_698 v0 v1 v2
  = case coe v2 of
      []
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296 erased
             (coe
                (\ v3 v4 v5 -> coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
      (:) v3 v4
        -> coe
             MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
             (coe du_onlyif_716 (coe v0) (coe v1) (coe v3) (coe v4))
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
d_onlyif_716 ::
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
d_onlyif_716 ~v0 v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_onlyif_716 v1 v3 v4 v5 v6 v7 v8
du_onlyif_716 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] ->
  AgdaAny ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_onlyif_716 v0 v1 v2 v3 v4 v5 v6
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
d_'8707''45'sublist'45''8660'_738 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_738 ~v0 v1 ~v2 v3 ~v4 ~v5
  = du_'8707''45'sublist'45''8660'_738 v1 v3
du_'8707''45'sublist'45''8660'_738 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8707''45'sublist'45''8660'_738 v0 v1
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
                       du_sublist'45''8660'_698 (coe v0) (coe v1)
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
                       du_sublist'45''8660'_698 (coe v0) (coe v1)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v2))))))
-- Axiom.Set.Properties._._.∃?-sublist-⇔
d_'8707''63''45'sublist'45''8660'_760 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''63''45'sublist'45''8660'_760 ~v0 v1 ~v2 v3 ~v4 ~v5
  = du_'8707''63''45'sublist'45''8660'_760 v1 v3
du_'8707''63''45'sublist'45''8660'_760 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8707''63''45'sublist'45''8660'_760 v0 v1
  = coe
      MAlonzo.Code.Data.Relation.Nullary.Decidable.Ext.du_map'8242''8660'_16
      (coe du_'8707''45'sublist'45''8660'_738 (coe v0) (coe v1))
