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

module MAlonzo.Code.Axiom.Set.Map where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.List
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Empty
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Function.Related.Propositional
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Map._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0) v2 v3
-- Axiom.Set.Map._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Map._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Map._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Map._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Map._.mapPartial
d_mapPartial_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_58 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_576 (coe v0) v3
-- Axiom.Set.Map._.map
d_map_60 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_60 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_398 (coe v0)
-- Axiom.Set.Map._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Map._.∅
d_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny
d_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0)
-- Axiom.Set.Map._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 (coe v0)
-- Axiom.Set.Map._.Rel
d_Rel_138 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Rel_138 = erased
-- Axiom.Set.Map._.dom
d_dom_142 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_142 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 (coe v0)
-- Axiom.Set.Map._.mapPartialLiftKey
d_mapPartialLiftKey_172 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_172 ~v0 = du_mapPartialLiftKey_172
du_mapPartialLiftKey_172 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_172 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_636 v3 v4
-- Axiom.Set.Map._.mapʳ
d_map'691'_176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_176 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) v4 v5
-- Axiom.Set.Map._.mapˡ
d_map'737'_180 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_180 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'737'_406 (coe v0) v4 v5
-- Axiom.Set.Map._.Restriction.res-dom
d_res'45'dom_228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_228 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0) v2 v4 v5 v6
      v7
-- Axiom.Set.Map._._≡_⨿_
d__'8801'_'10815'__262 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__262 = erased
-- Axiom.Set.Map.×-dup
d_'215''45'dup_468 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'dup_468 ~v0 ~v1 ~v2 v3 = du_'215''45'dup_468 v3
du_'215''45'dup_468 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'dup_468 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0)
-- Axiom.Set.Map.left-unique
d_left'45'unique_472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> AgdaAny -> ()
d_left'45'unique_472 = erased
-- Axiom.Set.Map.IsLeftUnique
d_IsLeftUnique_488 a0 a1 a2 a3 = ()
data T_IsLeftUnique_488 = C_IsLeftUnique'46'constructor_3379
-- Axiom.Set.Map.IsLeftUnique.isLeftUnique
d_isLeftUnique_494 ::
  T_IsLeftUnique_488 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_494 = erased
-- Axiom.Set.Map.∅-left-unique
d_'8709''45'left'45'unique_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsLeftUnique_488
d_'8709''45'left'45'unique_496 = erased
-- Axiom.Set.Map.⊆-left-unique
d_'8838''45'left'45'unique_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'left'45'unique_502 = erased
-- Axiom.Set.Map.left-unique-mapˢ
d_left'45'unique'45'map'738'_514 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'map'738'_514 = erased
-- Axiom.Set.Map.Map
d_Map_528 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_528 = erased
-- Axiom.Set.Map._≡ᵐ_
d__'8801''7504'__534 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__534 = erased
-- Axiom.Set.Map._ˢ
d__'738'_544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_544 ~v0 ~v1 ~v2 v3 = du__'738'_544 v3
du__'738'_544 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_544 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Axiom.Set.Map._ᵐ
d__'7504'_548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  T_IsLeftUnique_488 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_548 ~v0 ~v1 ~v2 v3 ~v4 = du__'7504'_548 v3
du__'7504'_548 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7504'_548 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Axiom.Set.Map.⊆-map
d_'8838''45'map_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_558 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8838''45'map_558 v3 v5
du_'8838''45'map_558 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'map_558 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 (coe du__'738'_544 (coe v1))) erased
-- Axiom.Set.Map.ˢ-left-unique
d_'738''45'left'45'unique_566 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_IsLeftUnique_488
d_'738''45'left'45'unique_566 = erased
-- Axiom.Set.Map.∅ᵐ
d_'8709''7504'_572 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_572 v0 ~v1 ~v2 = du_'8709''7504'_572 v0
du_'8709''7504'_572 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''7504'_572 v0
  = coe
      du__'7504'_548 (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
-- Axiom.Set.Map.fromListᵐ
d_fromList'7504'_576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_576 v0 ~v1 ~v2 v3 v4
  = du_fromList'7504'_576 v0 v3 v4
du_fromList'7504'_576 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'7504'_576 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_428 (coe v0)
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_898
            (coe
               (\ v3 v4 ->
                  coe
                    MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))))
            (coe v2)))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8322'__92 erased
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_898
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_898
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.Properties.du_deduplicate'45''33'_78
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decSetoid_598
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                             (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                       (coe v2)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_898
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
-- Axiom.Set.Map.FinMap
d_FinMap_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_FinMap_594 = erased
-- Axiom.Set.Map.toFinMap
d_toFinMap_604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_604 ~v0 ~v1 ~v2 v3 v4 = du_toFinMap_604 v3 v4
du_toFinMap_604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toFinMap_604 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toMap
d_toMap_612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_612 ~v0 ~v1 ~v2 v3 = du_toMap_612 v3
du_toMap_612 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_612 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toRel
d_toRel_618 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_618 ~v0 ~v1 ~v2 v3 = du_toRel_618 v3
du_toRel_618 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_618 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe seq (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__672 v0 ~v1 ~v2 v3 v4 v5
  = du__'8745''7504'__672 v0 v3 v4 v5
du__'8745''7504'__672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__704 (coe v0) (coe v1)
         (coe du__'738'_544 (coe v2)) (coe du__'738'_544 (coe v3)))
      erased
-- Axiom.Set.Map.disj-∪
d_disj'45''8746'_682 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_682 v0 ~v1 ~v2 v3 v4 ~v5
  = du_disj'45''8746'_682 v0 v3 v4
du_disj'45''8746'_682 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746'_682 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
         (coe du__'738'_544 (coe v1)) (coe du__'738'_544 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ
d_filter'7504'_714 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_714 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504'_714 v0 v4 v5
du_filter'7504'_714 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_714 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_420 v0 v1
         (coe du__'738'_544 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ-finite
d_filter'7504''45'finite_724 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'finite_724 v0 ~v1 ~v2 v3 ~v4
  = du_filter'7504''45'finite_724 v0 v3
du_filter'7504''45'finite_724 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'finite_724 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_650 (coe v0)
      (coe du__'738'_544 (coe v1))
-- Axiom.Set.Map.filterKeys
d_filterKeys_728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_728 v0 ~v1 ~v2 ~v3 v4 = du_filterKeys_728 v0 v4
du_filterKeys_728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_728 v0 v1
  = coe
      du_filter'7504'_714 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v1
         (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Axiom.Set.Map.singletonᵐ
d_singleton'7504'_732 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_732 v0 ~v1 ~v2 v3 v4
  = du_singleton'7504'_732 v0 v3 v4
du_singleton'7504'_732 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'7504'_732 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              erased
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))))
-- Axiom.Set.Map.❴_❵ᵐ
d_'10100'_'10101''7504'_740 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_740 v0 ~v1 ~v2 v3
  = du_'10100'_'10101''7504'_740 v0 v3
du_'10100'_'10101''7504'_740 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'10100'_'10101''7504'_740 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_singleton'7504'_732 (coe v0) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.disj-dom
d_disj'45'dom_752 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_752 = erased
-- Axiom.Set.Map._.∈mᵢ⇒∈m
d_'8712'm'7522''8658''8712'm_786 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
d_'8712'm'7522''8658''8712'm_786 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                 ~v9 ~v10 ~v11 ~v12 ~v13 v14 ~v15 v16 v17
  = du_'8712'm'7522''8658''8712'm_786 v0 v4 v8 v14 v16 v17
du_'8712'm'7522''8658''8712'm_786 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712'm'7522''8658''8712'm_786 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_688 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v4))
         v5)
-- Axiom.Set.Map.InjectiveOn
d_InjectiveOn_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_796 = erased
-- Axiom.Set.Map.weaken-Injective
d_weaken'45'Injective_810 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_weaken'45'Injective_810 = erased
-- Axiom.Set.Map.mapˡ-uniq
d_map'737''45'uniq_818 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''45'uniq_818 = erased
-- Axiom.Set.Map.mapʳ-uniq
d_map'691''45'uniq_842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'691''45'uniq_842 = erased
-- Axiom.Set.Map.mapKeys
d_mapKeys_862 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapKeys_862 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_mapKeys_862 v0 v4 v5
du_mapKeys_862 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapKeys_862 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'737'_406 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapValues
d_mapValues_872 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_872 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapValues_872 v0 v4 v5
du_mapValues_872 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues_872 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ._∪ˡ'_
d__'8746''737'''__886 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__886 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'''__886 v0 v2 v4 v5
du__'8746''737'''__886 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__886 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_420 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Axiom.Set.Map.Unionᵐ._∪ˡ_
d__'8746''737'__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__892 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'__892 v0 v2 v4 v5
du__'8746''737'__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__892 v0 v1 v2 v3
  = coe
      du_disj'45''8746'_682 (coe v0) (coe v2)
      (coe
         du_filter'7504'_714 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_398 v0
                     (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                     (coe du__'738'_544 (coe v2)))))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe v3))
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_906 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_disjoint'45''8746''737''45''8746'_906 v0 v2 v4 v5 v6
du_disjoint'45''8746''737''45''8746'_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_906 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
      (\ v5 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
                 (coe v0) (coe v2) (coe v3) (coe v5))
              (coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Data.Sum.Base.du_map'8322'_94
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                       (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
                          (coe v0) (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
                             (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe v5))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
                    (coe v0) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_filter_420 v0
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                          (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                             (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                             (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
                          (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                       v3)
                    (coe v5))))
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
                 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_filter_420 v0
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                          (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                          (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
                       (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    v3)
                 (coe v5))
              (coe
                 (\ v6 ->
                    coe
                      MAlonzo.Code.Data.Sum.Base.du_map'8322'_94
                      (coe
                         MAlonzo.Code.Function.Base.du__'8728''8242'__216
                         (coe
                            MAlonzo.Code.Function.Bundles.d_to_1724
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426 (coe v0) (coe v3)
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                  (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                     (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                                     (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
                                  (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                               (coe v5)))
                         (coe
                            (\ v7 ->
                               coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    (\ v8 ->
                                       coe
                                         v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) v8
                                         (coe
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
                                            (coe v0)
                                            (coe
                                               (\ v9 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))
                                            (coe v3) (coe v5) (coe v7))))
                                 (coe v7))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212 v0
                         v2 v3 v5 v6)))))
-- Axiom.Set.Map.Unionᵐ.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_914 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_914 v0 ~v1 v2 v3 ~v4 v5 v6 ~v7
  = du_singleton'45''8712''45''8746''737'_914 v0 v2 v3 v5 v6
du_singleton'45''8712''45''8746''737'_914 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_914 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 v6 ->
            let v7
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1726
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_unions_196 v0 erased
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_428 (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe du__'738'_544 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                     (coe
                                        du__'738'_544
                                        (coe
                                           du_filter'7504'_714 (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                              (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                              erased erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                 (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                                 erased
                                                 (coe
                                                    v1
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_map_398 v0
                                                       (\ v7 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v7))
                                                       (coe du__'738'_544 (coe v3)))))
                                              (\ v7 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                           (coe
                                              du_'10100'_'10101''7504'_740 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v2) (coe v4)))))))))
                         v5)
                      v6 in
            coe
              (let v8
                     = coe
                         MAlonzo.Code.Function.Bundles.d_from_1726
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.d_listing_216 v0 erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe du__'738'_544 (coe v3))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        du__'738'_544
                                        (coe
                                           du_filter'7504'_714 (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                              (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                              erased erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                 (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                                 erased
                                                 (coe
                                                    v1
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.du_map_398 v0
                                                       (\ v8 ->
                                                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe v8))
                                                       (coe du__'738'_544 (coe v3)))))
                                              (\ v8 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                           (coe
                                              du_'10100'_'10101''7504'_740 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v2) (coe v4)))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1726
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_196 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_428 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe du__'738'_544 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                 (coe
                                                    du__'738'_544
                                                    (coe
                                                       du_filter'7504'_714 (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                          (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0))
                                                          erased erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                             (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                (coe v0))
                                                             erased erased
                                                             (coe
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_map_398
                                                                   v0
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))
                                                                   (coe du__'738'_544 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_740 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v2) (coe v4)))))))))
                                     v5)
                                  v6)))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1726
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_196 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_428 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe du__'738'_544 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                 (coe
                                                    du__'738'_544
                                                    (coe
                                                       du_filter'7504'_714 (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                          (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0))
                                                          erased erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                             (MAlonzo.Code.Axiom.Set.d_sp_162
                                                                (coe v0))
                                                             erased erased
                                                             (coe
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.du_map_398
                                                                   v0
                                                                   (\ v8 ->
                                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                        (coe v8))
                                                                   (coe du__'738'_544 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_740 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v2) (coe v4)))))))))
                                     v5)
                                  v6))) in
               coe
                 (case coe v8 of
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_here_46 v11
                      -> case coe v7 of
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                             -> coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13)
                           _ -> MAlonzo.RTE.mazUnreachableError
                    MAlonzo.Code.Data.List.Relation.Unary.Any.C_there_54 v11
                      -> let v12
                               = seq
                                   (coe v11)
                                   (case coe v7 of
                                      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                        -> coe
                                             MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42
                                             (coe
                                                MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13))
                                      _ -> MAlonzo.RTE.mazUnreachableError) in
                         coe
                           (case coe v12 of
                              MAlonzo.Code.Data.Sum.Base.C_inj'8321'_38 v13 -> coe v13
                              MAlonzo.Code.Data.Sum.Base.C_inj'8322'_42 v13
                                -> let v14
                                         = coe
                                             MAlonzo.Code.Function.Bundles.d_from_1726
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_listing_216 v0 erased
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v2) (coe v4))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                                      (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0))
                                                      erased erased
                                                      (coe
                                                         v1
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_replacement_208
                                                               v0 erased erased
                                                               (\ v14 ->
                                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                    (coe v14))
                                                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                  (coe v3))))))
                                                   (\ v14 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v14)))
                                                (coe v5))
                                             v13 in
                                   coe
                                     (coe
                                        seq (coe v14)
                                        (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_14))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_670
              (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 du__'738'_544
                 (coe
                    du_filter'7504'_714 (coe v0)
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                          (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Axiom.Set.du_map_398 v0
                                (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                                (coe du__'738'_544 (coe v3)))))
                       (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    (coe
                       du_'10100'_'10101''7504'_740 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4)))))
              (coe v5)))
-- Axiom.Set.Map.Unionᵐ.insert
d_insert_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_950 v0 ~v1 v2 ~v3 v4 v5 v6 = du_insert_950 v0 v2 v4 v5 v6
du_insert_950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_950 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__892 (coe v0) (coe v1)
      (coe
         du_'10100'_'10101''7504'_740 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe v2)
-- Axiom.Set.Map.Unionᵐ.insertIfJust
d_insertIfJust_958 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_958 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_insertIfJust_958 v0 v2 v5 v6 v7
du_insertIfJust_958 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_958 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_950 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_978 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45'mapValues_978 v0 ~v1 v2 ~v3 ~v4 v5 v6
                                           v7 ~v8
  = du_disjoint'45''8746''737''45'mapValues_978 v0 v2 v5 v6 v7
du_disjoint'45''8746''737''45'mapValues_978 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_978 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_mapValues_872 (coe v0) (coe v4)
            (coe du__'8746''737'__892 (coe v0) (coe v1) (coe v2) (coe v3))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8746''737'__892 (coe v0) (coe v1)
            (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
            (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))
      (coe
         MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
            (coe
               (\ v5 v6 v7 v8 v9 ->
                  coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                    (coe
                       MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_mapValues_872 (coe v0) (coe v4)
               (coe du__'8746''737'__892 (coe v0) (coe v1) (coe v2) (coe v3))))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du__'8746''737'__892 (coe v0) (coe v1)
               (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
               (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))
         (coe
            MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''45''10217'_368
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
               (coe
                  (\ v5 v6 v7 v8 v9 ->
                     coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                          (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
            (coe
               MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du__'8746''737'__892 (coe v0) (coe v1)
                  (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
                  (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))
            (coe
               MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_step'45''8776''728'_374
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_'8764''45'go_40
                  (coe
                     (\ v5 v6 v7 v8 v9 ->
                        coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9)))
                          (coe
                             MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_276
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v9))
                             (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))))))
               (\ v5 v6 v7 ->
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__892 (coe v0) (coe v1)
                     (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__892 (coe v0) (coe v1)
                     (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))
               (let v5
                      = \ v5 ->
                          coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                            (coe (\ v6 v7 -> v7)) in
                coe
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_492
                     (coe
                        MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                        (coe v5))
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                        (coe
                           du__'8746''737'__892 (coe v0) (coe v1)
                           (coe du_mapValues_872 (coe v0) (coe v4) (coe v2))
                           (coe du_mapValues_872 (coe v0) (coe v4) (coe v3))))))
               (coe
                  du_disjoint'45''8746''737''45''8746'_906 (coe v0) (coe v1)
                  (coe
                     du__'738'_544 (coe du_mapValues_872 (coe v0) (coe v4) (coe v2)))
                  (coe
                     du__'738'_544 (coe du_mapValues_872 (coe v0) (coe v4) (coe v3)))
                  erased))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (coe
                  MAlonzo.Code.Data.Product.Base.du_map'8322'_150
                  (coe (\ v5 -> v4)))))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
            (coe v0)
            (coe
               du__'8746''737'''__886 (coe v0) (coe v1)
               (coe du__'738'_544 (coe v2)) (coe du__'738'_544 (coe v3)))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe du__'738'_544 (coe v2)) (coe du__'738'_544 (coe v3)))
            (coe
               MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v5 -> v4)))
            (coe
               du_disjoint'45''8746''737''45''8746'_906 (coe v0) (coe v1)
               (coe du__'738'_544 (coe v2)) (coe du__'738'_544 (coe v3)) erased)))
-- Axiom.Set.Map.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_1038 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_1038 = erased
-- Axiom.Set.Map.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1060 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1060 = erased
-- Axiom.Set.Map.idMap
d_idMap_1068 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_1068 v0 ~v1 v2 = du_idMap_1068 v0 v2
du_idMap_1068 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_idMap_1068 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398 v0 (coe du_'215''45'dup_468) v1)
      erased
-- Axiom.Set.Map.mapFromFun
d_mapFromFun_1072 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_1072 v0 ~v1 ~v2 v3 v4 = du_mapFromFun_1072 v0 v3 v4
du_mapFromFun_1072 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun_1072 v0 v1 v2
  = coe
      du_mapValues_872 (coe v0) (coe v1)
      (coe du_idMap_1068 (coe v0) (coe v2))
-- Axiom.Set.Map.mapWithKey-uniq
d_mapWithKey'45'uniq_1086 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapWithKey'45'uniq_1086 = erased
-- Axiom.Set.Map.mapWithKey
d_mapWithKey_1120 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_1120 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapWithKey_1120 v0 v4 v5
du_mapWithKey_1120 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapWithKey_1120 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.du_map_398 v0
                (\ v5 ->
                   case coe v5 of
                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                       -> coe
                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v6) (coe v1 v6 v7)
                     _ -> MAlonzo.RTE.mazUnreachableError)
                v3)
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapValues-dom
d_mapValues'45'dom_1138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_1138 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapValues'45'dom_1138 v0 v4 v5
du_mapValues'45'dom_1138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues'45'dom_1138 v0 v1 v2
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_576 (coe v0)
         (coe du__'738'_544 (coe v1)) (coe v2))
-- Axiom.Set.Map._∣'_
d__'8739'''__1142 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__1142 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739'''__1142 v0 v4 v5
du__'8739'''__1142 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'''__1142 v0 v1 v2
  = coe
      du_filter'7504'_714 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v1)
-- Axiom.Set.Map._∣^'_
d__'8739''94'''__1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1150 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__1150 v0 v4 v5
du__'8739''94'''__1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1150 v0 v1 v2
  = coe
      du_filter'7504'_714 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe v1)
-- Axiom.Set.Map.constMap
d_constMap_1156 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_1156 v0 ~v1 ~v2 v3 v4 = du_constMap_1156 v0 v3 v4
du_constMap_1156 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap_1156 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398 v0
         (\ v3 ->
            coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
         v1)
      erased
-- Axiom.Set.Map.constMap-dom
d_constMap'45'dom_1168 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  AgdaAny -> () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap'45'dom_1168 v0 ~v1 v2 ~v3 v4
  = du_constMap'45'dom_1168 v0 v2 v4
du_constMap'45'dom_1168 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap'45'dom_1168 v0 v1 v2
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
                            MAlonzo.Code.Axiom.Set.d_replacement_208 v0 erased erased
                            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                            (coe
                               du__'738'_544 (coe du_constMap_1156 (coe v0) (coe v1) (coe v2))))
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
                                                    MAlonzo.Code.Axiom.Set.d_replacement_208 v0
                                                    erased erased
                                                    (\ v12 ->
                                                       coe
                                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                         (coe v12) (coe v2))
                                                    v1)
                                                 (coe
                                                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                    (coe v3) (coe v9)))
                                              v11 in
                                    coe
                                      (case coe v12 of
                                         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v13 v14
                                           -> case coe v14 of
                                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                                  -> coe v16
                                                _ -> MAlonzo.RTE.mazUnreachableError
                                         _ -> MAlonzo.RTE.mazUnreachableError)
                               _ -> MAlonzo.RTE.mazUnreachableError
                        _ -> MAlonzo.RTE.mazUnreachableError
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_398 v0
                    (\ v5 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2))
                    v1)
                 (coe v3))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_406 (coe v0) (coe v1)
                       (coe
                          (\ v5 ->
                             coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2)))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v4)))))))
-- Axiom.Set.Map.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_1204 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartialLiftKey'45'just'45'uniq_1204 = erased
-- Axiom.Set.Map.mapPartial-uniq
d_mapPartial'45'uniq_1226 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartial'45'uniq_1226 = erased
-- Axiom.Set.Map.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_1246 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_1246 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey'7504'_1246 v0 v4 v5
du_mapMaybeWithKey'7504'_1246 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapMaybeWithKey'7504'_1246 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_696 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapFromPartialFun
d_mapFromPartialFun_1254 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_1254 v0 ~v1 ~v2 v3 v4
  = du_mapFromPartialFun_1254 v0 v3 v4
du_mapFromPartialFun_1254 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromPartialFun_1254 v0 v1 v2
  = coe
      du_mapMaybeWithKey'7504'_1246 (coe v0) (coe (\ v3 -> v1))
      (coe du_idMap_1068 (coe v0) (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.R.res-dom
d_res'45'dom_1288 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1288 v0 ~v1 v2 = du_res'45'dom_1288 v0 v2
du_res'45'dom_1288 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1288 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ_
d__'8746''737'__1322 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1322 v0 ~v1 v2 = du__'8746''737'__1322 v0 v2
du__'8746''737'__1322 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1322 v0 v1 v2 v3 v4
  = coe du__'8746''737'__892 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ'_
d__'8746''737'''__1324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1324 v0 ~v1 v2 = du__'8746''737'''__1324 v0 v2
du__'8746''737'''__1324 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1324 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__886 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1326 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45'mapValues_1326 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1326 v0 v2
du_disjoint'45''8746''737''45'mapValues_1326 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_1326 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_978 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1328 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1328 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1328 v0 v2
du_disjoint'45''8746''737''45''8746'_1328 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1328 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_906 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insert
d_insert_1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1330 v0 ~v1 v2 = du_insert_1330 v0 v2
du_insert_1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1330 v0 v1 v2 v3 v4 v5
  = coe du_insert_950 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insertIfJust
d_insertIfJust_1332 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1332 v0 ~v1 v2 = du_insertIfJust_1332 v0 v2
du_insertIfJust_1332 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1332 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_958 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1334 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1334 v0 v2
du_singleton'45''8712''45''8746''737'_1334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1334 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_914 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Restrictionᵐ._∣_
d__'8739'__1336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__1336 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__1336 v0 v2 v4 v5
du__'8739'__1336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__1336 v0 v1 v2 v3
  = coe
      du_'8838''45'map_558
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'__728 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_1344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_1344 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_1344 v0 v2 v4 v5
du__'8739'_'7580'_1344 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_1344 v0 v1 v2 v3
  = coe
      du_'8838''45'map_558
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_734 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_1354 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_1354 v0 ~v1 v2 ~v3 v4
  = du_res'7504''45''8709''7580'_1354 v0 v2 v4
du_res'7504''45''8709''7580'_1354 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_1354 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_830 (coe v0)
      (coe v1) (coe du__'738'_544 (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_1356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_1356 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapValueRestricted_1356 v0 v2 v4 v5 v6
du_mapValueRestricted_1356 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_1356 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__892 (coe v0) (coe v1)
      (coe
         du_mapValues_872 (coe v0) (coe v2)
         (coe du__'8739'__1336 (coe v0) (coe v1) (coe v3) (coe v4)))
      (coe v3)
-- Axiom.Set.Map.Restrictionᵐ.mapSingleValue
d_mapSingleValue_1364 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_1364 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapSingleValue_1364 v0 v2 v4 v5 v6
du_mapSingleValue_1364 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_1364 v0 v1 v2 v3 v4
  = coe
      du_mapValueRestricted_1356 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
-- Axiom.Set.Map.Restrictionᵐ.curryᵐ
d_curry'7504'_1372 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_1372 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'7504'_1372 v0 v2 v5 v6
du_curry'7504'_1372 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_1372 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_892 (coe v0) (coe v1)
         (coe du__'738'_544 (coe v2)) (coe v3))
      (coe
         (\ v4 v5 v6 v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
              v5 v6
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_904 (coe v0)
                 (coe v1) (coe du__'738'_544 (coe v2)) (coe v3) (coe v4) (coe v5)
                 (coe v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_904 (coe v0)
                 (coe v1) (coe du__'738'_544 (coe v2)) (coe v3) (coe v4) (coe v6)
                 (coe v8))))
-- Axiom.Set.Map.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_res'45'dom'8712'_1384 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_res'45'dom'8712'_1384 v0 v2 v4 v6 v7 v8
du_res'45'dom'8712'_1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_res'45'dom'8712'_1384 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_824 v0 v1
                 (coe du__'738'_544 (coe v4))
                 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v5)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                 v6)
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0) (coe v1)
                 (coe du__'738'_544 (coe v4))
                 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v5) (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_186 v0 erased erased
                             (coe du__'738'_544 (coe v4))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v5))
                                (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v6))))))
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Function.Bundles.d_to_1724
              (coe
                 MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426 (coe v0)
                 (coe du__'738'_544 (coe v4))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                    (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v5))
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
              (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v6))))
-- Axiom.Set.Map.Restrictionᵐ.res-subset
d_res'45'subset_1388 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_1388 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'subset_1388 v0 v2 v4 v5 v6
du_res'45'subset_1388 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_1388 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         seq (coe v3)
         (coe
            (\ v5 ->
               case coe v5 of
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v6 v7
                   -> coe
                        (\ v8 ->
                           let v9
                                 = coe
                                     MAlonzo.Code.Function.Bundles.d_from_1726
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_replacement_208 v0 erased erased
                                           (\ v9 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                           v2)
                                        v6)
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
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0)
                                           (coe v1) (coe du__'738'_544 (coe v3))
                                           (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.Function.Bundles.d_to_1724
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422
                                                 (coe v0)
                                                 (coe
                                                    du__'738'_544
                                                    (coe
                                                       du__'8739'__1336 (coe v0) (coe v1) (coe v3)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0
                                                          v2)))
                                                 (coe v6))
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v7) (coe v8))))) in
                           coe
                             (case coe v9 of
                                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                                  -> coe
                                       seq (coe v10)
                                       (case coe v11 of
                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                            -> coe v13
                                          _ -> MAlonzo.RTE.mazUnreachableError)
                                _ -> MAlonzo.RTE.mazUnreachableError))
                 _ -> MAlonzo.RTE.mazUnreachableError)))
      (coe
         (\ v5 v6 ->
            coe
              MAlonzo.Code.Function.Bundles.d_from_1726
              (coe
                 du_res'45'dom'8712'_1384 (coe v0) (coe v1)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)) (coe v3)
                 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4 v5 v6)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0) (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                       (coe v6))))))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton
d_res'45'singleton_1430 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_1430 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'singleton_1430 v0 v2 v4 v5 v6
du_res'45'singleton_1430 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_1430 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Function.Bundles.d_from_1726
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.Axiom.Set.d_replacement_208 v0 erased erased
                           (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe du__'738'_544 (coe v2)))
                        v3)
                     v4 in
           coe
             (case coe v7 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                  -> case coe v8 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                         -> case coe v9 of
                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                                -> coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v11)
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                        (coe
                                           (\ v14 v15 ->
                                              coe
                                                MAlonzo.Code.Function.Bundles.d_to_1724
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458
                                                   (coe v0) (coe v14) (coe v8))
                                                erased))
                                        (coe
                                           (\ v14 v15 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
                                                v0 v5
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452
                                                         v0 erased v10))
                                                   (\ v16 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v16)))
                                                v8
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Function.Bundles.d_to_1724
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458
                                                         (coe v0) (coe v10) (coe v10))
                                                      erased)
                                                   (coe v13)))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Restrictionᵐ.res-singleton'
d_res'45'singleton''_1466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_1466 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''_1466 v0 v2 v4 v5 v6 v7
du_res'45'singleton''_1466 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_1466 v0 v1 v2 v3 v4 v5
  = let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_replacement_208 v0 erased erased
                       (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                       (coe du__'738'_544 (coe v2)))
                    v3)
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170 v0
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                    (coe du__'738'_544 (coe v2)) v3
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v5)))) in
       coe
         (case coe v7 of
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
              -> case coe v8 of
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                     -> case coe v9 of
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                            -> coe
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                 (coe
                                    (\ v14 v15 ->
                                       coe
                                         MAlonzo.Code.Function.Bundles.d_to_1724
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458
                                            (coe v0) (coe v14) (coe v8))
                                         erased))
                                 (coe
                                    (\ v14 v15 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
                                         v0 v6
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased
                                            erased
                                            (coe
                                               v1
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0
                                                  erased v10))
                                            (\ v16 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))
                                         v8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_to_1724
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458
                                                  (coe v0) (coe v10) (coe v10))
                                               erased)
                                            (coe v13))))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_1482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'singleton'8314'_1482 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'8314'_1482 v0 v2 v4 v5 v6 v7
du_res'45'singleton'8314'_1482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'singleton'8314'_1482 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426 (coe v0)
         (coe du__'738'_544 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v3))
            (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458 (coe v0) (coe v3)
               (coe v3))
            erased)
         (coe v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_1490 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45'singleton'45'inhabited_1490 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'45'inhabited_1490 v0 v2 v4 v5 v6 v7
du_res'45'singleton'45'inhabited_1490 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45'singleton'45'inhabited_1490 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
         (coe du__'738'_544 (coe v2)) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_824 v0 v1
            (coe du__'738'_544 (coe v2))
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v3) v4
            v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_1508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_1508 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''''_1508 v0 v2 v4 v5 v6 v7
du_res'45'singleton''''_1508 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_1508 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_res'45'singleton_1430 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               du_res'45'singleton'45'inhabited_1490 (coe v0) (coe v1) (coe v2)
               (coe v3) (coe v4) (coe v5))))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_458 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_res'45'singleton_1430 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe
                        du_res'45'singleton'45'inhabited_1490 (coe v0) (coe v1) (coe v2)
                        (coe v3) (coe v4) (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_res'45'singleton_1430 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe
                     du_res'45'singleton'45'inhabited_1490 (coe v0) (coe v1) (coe v2)
                     (coe v3) (coe v4) (coe v5))))
            v4 v5))
-- Axiom.Set.Map.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_1522 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_1522 v0 ~v1 v2
  = du__'10629'_'44''45''10630'_1522 v0 v2
du__'10629'_'44''45''10630'_1522 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_1522 v0 v1 v2 v3 v4 v5
  = coe du_curry'7504'_1372 (coe v0) (coe v1) v4 v5
-- Axiom.Set.Map.Restrictionᵐ.update
d_update_1524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_1524 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_update_1524 v0 v2 v4 v5 v6
du_update_1524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_1524 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_950 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             du__'8739'_'7580'_1344 (coe v0) (coe v1) (coe v4)
             (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.R.res-dom
d_res'45'dom_1562 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1562 v0 ~v1 v2 = du_res'45'dom_1562 v0 v2
du_res'45'dom_1562 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1562 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ_
d__'8746''737'__1596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1596 v0 ~v1 v2 = du__'8746''737'__1596 v0 v2
du__'8746''737'__1596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1596 v0 v1 v2 v3 v4
  = coe du__'8746''737'__892 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ'_
d__'8746''737'''__1598 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1598 v0 ~v1 v2 = du__'8746''737'''__1598 v0 v2
du__'8746''737'''__1598 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1598 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__886 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45'mapValues_1600 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1600 v0 v2
du_disjoint'45''8746''737''45'mapValues_1600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_1600 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_978 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1602 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1602 v0 v2
du_disjoint'45''8746''737''45''8746'_1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1602 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_906 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insert
d_insert_1604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1604 v0 ~v1 v2 = du_insert_1604 v0 v2
du_insert_1604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1604 v0 v1 v2 v3 v4 v5
  = coe du_insert_950 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insertIfJust
d_insertIfJust_1606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1606 v0 ~v1 v2 = du_insertIfJust_1606 v0 v2
du_insertIfJust_1606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1606 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_958 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1608 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1608 v0 v2
du_singleton'45''8712''45''8746''737'_1608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1608 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_914 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Lookupᵐ._.res-dom
d_res'45'dom_1630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1630 v0 ~v1 v2 = du_res'45'dom_1630 v0 v2
du_res'45'dom_1630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1630 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_758 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ
d_lookup'7504'_1674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504'_1674 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504'_1674 v0 v4 v5 v6
du_lookup'7504'_1674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504'_1674 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
            (coe du__'738'_544 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ?
d_lookup'7504''63'_1678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_1678 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''63'_1678 v0 v4 v5 v6
du_lookup'7504''63'_1678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_1678 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v4
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
               -> if coe v5
                    then case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe du_lookup'7504'_1674 (coe v0) (coe v1) (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.pullbackMap
d_pullbackMap_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_1684 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_pullbackMap_1684 v0 v5 v6 v7 v8
du_pullbackMap_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_1684 v0 v1 v2 v3 v4
  = coe
      du_mapMaybeWithKey'7504'_1246 (coe v0)
      (coe
         (\ v5 v6 ->
            coe
              du_lookup'7504''63'_1678 (coe v0) (coe v1) (coe v3 v5)
              (coe v2 (coe v3 v5))))
      (coe du_idMap_1068 (coe v0) (coe v4))
-- Axiom.Set.Map.Corestrictionᵐ._∣^_
d__'8739''94'__1712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__1712 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__1712 v0 v2 v4 v5
du__'8739''94'__1712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__1712 v0 v1 v2 v3
  = coe
      du_'8838''45'map_558
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1088 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_1720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_1720 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_1720 v0 v2 v4 v5
du__'8739''94'_'7580'_1720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_1720 v0 v1 v2 v3
  = coe
      du_'8838''45'map_558
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1094 (coe v0)
              (coe v1) (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._⁻¹_
d__'8315''185'__1728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d__'8315''185'__1728 v0 ~v1 v2 ~v3 v4 v5
  = du__'8315''185'__1728 v0 v2 v4 v5
du__'8315''185'__1728 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du__'8315''185'__1728 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0
      (coe
         du__'738'_544
         (coe
            du__'8739''94'__1712 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v3)))
-- Axiom.Set.Map..generalizedField-A
d_'46'generalizedField'45'A_139669 :: T_GeneralizeTel_139677 -> ()
d_'46'generalizedField'45'A_139669 = erased
-- Axiom.Set.Map..generalizedField-B
d_'46'generalizedField'45'B_139671 :: T_GeneralizeTel_139677 -> ()
d_'46'generalizedField'45'B_139671 = erased
-- Axiom.Set.Map..generalizedField-B'
d_'46'generalizedField'45'B''_139673 ::
  T_GeneralizeTel_139677 -> ()
d_'46'generalizedField'45'B''_139673 = erased
-- Axiom.Set.Map..generalizedField-R
d_'46'generalizedField'45'R_139675 ::
  T_GeneralizeTel_139677 -> AgdaAny
d_'46'generalizedField'45'R_139675 v0
  = case coe v0 of
      C_mkGeneralizeTel_139679 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.GeneralizeTel
d_GeneralizeTel_139677 a0 = ()
newtype T_GeneralizeTel_139677 = C_mkGeneralizeTel_139679 AgdaAny
