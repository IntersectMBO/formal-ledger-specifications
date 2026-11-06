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
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0) v2 v3
-- Axiom.Set.Map._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Map._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Map._.disjoint
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Map._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Map._.mapPartial
d_mapPartial_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_58 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_604 (coe v0) v3
-- Axiom.Set.Map._.map
d_map_60 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_60 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_426 (coe v0)
-- Axiom.Set.Map._.spec-∈
d_spec'45''8712'_80 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> ()
d_spec'45''8712'_80 = erased
-- Axiom.Set.Map._.∅
d_'8709'_94 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> AgdaAny
d_'8709'_94 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0)
-- Axiom.Set.Map._.❴_❵
d_'10100'_'10101'_126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_126 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 (coe v0)
-- Axiom.Set.Map._.Rel
d_Rel_142 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Rel_142 = erased
-- Axiom.Set.Map._.dom
d_dom_146 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_146 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 (coe v0)
-- Axiom.Set.Map._.mapPartialLiftKey
d_mapPartialLiftKey_176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_176 ~v0 = du_mapPartialLiftKey_176
du_mapPartialLiftKey_176 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_176 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_678 v3 v4
-- Axiom.Set.Map._.mapʳ
d_map'691'_180 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_180 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) v4 v5
-- Axiom.Set.Map._.mapˡ
d_map'737'_184 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_184 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'737'_448 (coe v0) v4 v5
-- Axiom.Set.Map._._≡_⨿_
d__'8801'_'10815'__272 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__272 = erased
-- Axiom.Set.Map.×-dup
d_'215''45'dup_496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'dup_496 ~v0 ~v1 ~v2 v3 = du_'215''45'dup_496 v3
du_'215''45'dup_496 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'dup_496 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0)
-- Axiom.Set.Map.left-unique
d_left'45'unique_500 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> AgdaAny -> ()
d_left'45'unique_500 = erased
-- Axiom.Set.Map.IsLeftUnique
d_IsLeftUnique_516 a0 a1 a2 a3 = ()
data T_IsLeftUnique_516 = C_constructor_524
-- Axiom.Set.Map.IsLeftUnique.isLeftUnique
d_isLeftUnique_522 ::
  T_IsLeftUnique_516 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_522 = erased
-- Axiom.Set.Map.∅-left-unique
d_'8709''45'left'45'unique_526 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> T_IsLeftUnique_516
d_'8709''45'left'45'unique_526 = erased
-- Axiom.Set.Map.⊆-left-unique
d_'8838''45'left'45'unique_532 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_'8838''45'left'45'unique_532 = erased
-- Axiom.Set.Map.left-unique-mapˢ
d_left'45'unique'45'map'738'_544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'map'738'_544 = erased
-- Axiom.Set.Map.Map
d_Map_558 :: MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_Map_558 = erased
-- Axiom.Set.Map._≡ᵐ_
d__'8801''7504'__564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__564 = erased
-- Axiom.Set.Map._≢ᵐ_
d__'8802''7504'__570 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8802''7504'__570 = erased
-- Axiom.Set.Map._ˢ
d__'738'_580 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_580 ~v0 ~v1 ~v2 v3 = du__'738'_580 v3
du__'738'_580 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_580 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Axiom.Set.Map._ᵐ
d__'7504'_584 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  T_IsLeftUnique_516 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_584 ~v0 ~v1 ~v2 v3 ~v4 = du__'7504'_584 v3
du__'7504'_584 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7504'_584 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Axiom.Set.Map.⊆-map
d_'8838''45'map_594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_594 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8838''45'map_594 v3 v5
du_'8838''45'map_594 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'map_594 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 (coe du__'738'_580 (coe v1))) erased
-- Axiom.Set.Map.ˢ-left-unique
d_'738''45'left'45'unique_602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_IsLeftUnique_516
d_'738''45'left'45'unique_602 = erased
-- Axiom.Set.Map.∅ᵐ
d_'8709''7504'_608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_608 v0 ~v1 ~v2 = du_'8709''7504'_608 v0
du_'8709''7504'_608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''7504'_608 v0
  = coe
      du__'7504'_584 (coe MAlonzo.Code.Axiom.Set.du_'8709'_470 (coe v0))
-- Axiom.Set.Map.fromListᵐ
d_fromList'7504'_612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_612 v0 ~v1 ~v2 v3 v4
  = du_fromList'7504'_612 v0 v3 v4
du_fromList'7504'_612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'7504'_612 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_456 (coe v0)
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_882
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
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_228
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_882
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
                       MAlonzo.Code.Data.List.Base.du_deduplicate_882
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.Properties.du_deduplicate'45''33'_80
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decSetoid_602
                          (coe
                             MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties.du_decSetoid_406
                             (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))))
                       (coe v2)))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_228
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_882
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       (coe v2))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
-- Axiom.Set.Map.FinMap
d_FinMap_630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 -> () -> () -> ()
d_FinMap_630 = erased
-- Axiom.Set.Map.toFinMap
d_toFinMap_640 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_640 ~v0 ~v1 ~v2 v3 v4 = du_toFinMap_640 v3 v4
du_toFinMap_640 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toFinMap_640 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toMap
d_toMap_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_648 ~v0 ~v1 ~v2 v3 = du_toMap_648 v3
du_toMap_648 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_648 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toRel
d_toRel_654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_654 ~v0 ~v1 ~v2 v3 = du_toRel_654 v3
du_toRel_654 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_654 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe seq (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__708 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__708 v0 ~v1 ~v2 v3 v4 v5
  = du__'8745''7504'__708 v0 v3 v4 v5
du__'8745''7504'__708 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__708 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__732 (coe v0) (coe v1)
         (coe du__'738'_580 (coe v2)) (coe du__'738'_580 (coe v3)))
      erased
-- Axiom.Set.Map.disj-∪
d_disj'45''8746'_718 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_718 v0 ~v1 ~v2 v3 v4 ~v5
  = du_disj'45''8746'_718 v0 v3 v4
du_disj'45''8746'_718 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746'_718 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
         (coe du__'738'_580 (coe v1)) (coe du__'738'_580 (coe v2)))
      erased
-- Axiom.Set.Map.disj-∪-cong
d_disj'45''8746''45'cong_760 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746''45'cong_760 v0 ~v1 ~v2 v3 v4 v5 v6 ~v7 ~v8 v9 v10
  = du_disj'45''8746''45'cong_760 v0 v3 v4 v5 v6 v9 v10
du_disj'45''8746''45'cong_760 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746''45'cong_760 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_992 (coe v0)
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v5)
      (coe v6)
-- Axiom.Set.Map.filterᵐ
d_filter'7504'_768 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_768 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504'_768 v0 v4 v5
du_filter'7504'_768 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_768 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_448 v0 v1
         (coe du__'738'_580 (coe v2)))
      erased
-- Axiom.Set.Map._.filterᵐ-idem
d_filter'7504''45'idem_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'idem_788 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504''45'idem_788 v0 v4 v5
du_filter'7504''45'idem_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'idem_788 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'idem_798 (coe v0)
      (coe v1) (coe du__'738'_580 (coe v2))
-- Axiom.Set.Map._.filterᵐ-cong
d_filter'7504''45'cong_794 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'cong_794 v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_filter'7504''45'cong_794 v0 v4 v5 v6 v7
du_filter'7504''45'cong_794 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'cong_794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_filter'7504'spPm'8838'filter'7504'spPm''_806 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
      (coe
         du_filter'7504'spPm'8839'filter'7504'spPm''_820 (coe v0) (coe v1)
         (coe v2) (coe v3) (coe v4))
-- Axiom.Set.Map._._.filterᵐspPm⊆filterᵐspPm'
d_filter'7504'spPm'8838'filter'7504'spPm''_806 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_filter'7504'spPm'8838'filter'7504'spPm''_806 v0 ~v1 ~v2 ~v3 v4 v5
                                               v6 v7 v8 v9
  = du_filter'7504'spPm'8838'filter'7504'spPm''_806
      v0 v4 v5 v6 v7 v8 v9
du_filter'7504'spPm'8838'filter'7504'spPm''_806 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_filter'7504'spPm'8838'filter'7504'spPm''_806 v0 v1 v2 v3 v4 v5
                                                v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v2)) v1)
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)) (coe v1)
                   (coe v5))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v4 v5 v9))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map._._.filterᵐspPm⊇filterᵐspPm'
d_filter'7504'spPm'8839'filter'7504'spPm''_820 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_filter'7504'spPm'8839'filter'7504'spPm''_820 v0 ~v1 ~v2 ~v3 v4 v5
                                               v6 v7 v8 v9
  = du_filter'7504'spPm'8839'filter'7504'spPm''_820
      v0 v4 v5 v6 v7 v8 v9
du_filter'7504'spPm'8839'filter'7504'spPm''_820 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_filter'7504'spPm'8839'filter'7504'spPm''_820 v0 v1 v2 v3 v4 v5
                                                v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v3)) v1)
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)) (coe v1)
                   (coe v5))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v8)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v4 v5 v9))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.filterᵐ-finite
d_filter'7504''45'finite_838 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'finite_838 v0 ~v1 ~v2 v3 ~v4
  = du_filter'7504''45'finite_838 v0 v3
du_filter'7504''45'finite_838 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'finite_838 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_924 (coe v0)
      (coe du__'738'_580 (coe v1))
-- Axiom.Set.Map.filterKeys
d_filterKeys_842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_842 v0 ~v1 ~v2 ~v3 v4 = du_filterKeys_842 v0 v4
du_filterKeys_842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_842 v0 v1
  = coe
      du_filter'7504'_768 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v1
         (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Axiom.Set.Map.singletonᵐ
d_singleton'7504'_846 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_846 v0 ~v1 ~v2 v3 v4
  = du_singleton'7504'_846 v0 v3 v4
du_singleton'7504'_846 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'7504'_846 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              erased
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))))
-- Axiom.Set.Map.❴_❵ᵐ
d_'10100'_'10101''7504'_854 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_854 v0 ~v1 ~v2 v3
  = du_'10100'_'10101''7504'_854 v0 v3
du_'10100'_'10101''7504'_854 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'10100'_'10101''7504'_854 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_singleton'7504'_846 (coe v0) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.disj-dom
d_disj'45'dom_866 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_866 = erased
-- Axiom.Set.Map._.∈mᵢ⇒∈m
d_'8712'm'7522''8658''8712'm_900 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_'8712'm'7522''8658''8712'm_900 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                 ~v9 ~v10 ~v11 ~v12 ~v13 v14 ~v15 v16 v17
  = du_'8712'm'7522''8658''8712'm_900 v0 v4 v8 v14 v16 v17
du_'8712'm'7522''8658''8712'm_900 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712'm'7522''8658''8712'm_900 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1868
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_716 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v4))
         v5)
-- Axiom.Set.Map.InjectiveOn
d_InjectiveOn_910 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_910 = erased
-- Axiom.Set.Map.weaken-Injective
d_weaken'45'Injective_924 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_weaken'45'Injective_924 = erased
-- Axiom.Set.Map.mapˡ-uniq
d_map'737''45'uniq_932 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_map'737''45'uniq_932 = erased
-- Axiom.Set.Map.mapʳ-uniq
d_map'691''45'uniq_956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_map'691''45'uniq_956 = erased
-- Axiom.Set.Map.mapKeys
d_mapKeys_976 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_mapKeys_976 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_mapKeys_976 v0 v4 v5
du_mapKeys_976 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapKeys_976 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'737'_448 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapValues
d_mapValues_986 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_986 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapValues_986 v0 v4 v5
du_mapValues_986 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues_986 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ._∪ˡ'_
d__'8746''737'''__1000 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1000 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'''__1000 v0 v2 v4 v5
du__'8746''737'''__1000 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1000 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_448 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Axiom.Set.Map.Unionᵐ.disjoint-proof
d_disjoint'45'proof_1012 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'proof_1012 = erased
-- Axiom.Set.Map.Unionᵐ._∪ˡ_
d__'8746''737'__1052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1052 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'__1052 v0 v2 v4 v5
du__'8746''737'__1052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1052 v0 v1 v2 v3
  = coe
      du_disj'45''8746'_718 (coe v0) (coe v2)
      (coe
         du_filter'7504'_768 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                     (coe du__'738'_580 (coe v2)))))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe v3))
-- Axiom.Set.Map.Unionᵐ.∪ˡ-cong
d_'8746''737''45'cong_1066 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'cong_1066 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_'8746''737''45'cong_1066 v0 v2 v4 v5 v6 v7 v8 v9
du_'8746''737''45'cong_1066 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'cong_1066 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      du_disj'45''8746''45'cong_760 (coe v0) (coe v2)
      (coe
         du_filter'7504'_768 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                     (coe du__'738'_580 (coe v2)))))
            (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
         (coe v3))
      (coe v4)
      (coe
         du_filter'7504'_768 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
               (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                     (coe du__'738'_580 (coe v4)))))
            (\ v8 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
         (coe v5))
      (coe v6)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            du_'8838'_1100 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5) (coe v6) (coe v7))
         (coe
            du_'8839'_1084 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
            (coe v5) (coe v6) (coe v7)))
-- Axiom.Set.Map.Unionᵐ._.⊇
d_'8839'_1084 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8839'_1084 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8839'_1084 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8839'_1084 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8839'_1084 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v5))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
                       (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                 v8)
              v9 in
    coe
      (case coe v10 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                      (coe
                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                         (coe
                            v1
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                      (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                   (coe v8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      (\ v13 ->
                         coe
                           v11
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_562 (coe v0)
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v6))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v13)))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7 v8 v12))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Unionᵐ._.⊆
d_'8838'_1100 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8838'_1100 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8838'_1100 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8838'_1100 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8838'_1100 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                                (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))))
                       (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v10))))
                 v8)
              v9 in
    coe
      (case coe v10 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                      (coe
                         MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                         (coe
                            v1
                            (coe
                               MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))))
                      (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v13)))
                   (coe v8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      (\ v13 ->
                         coe
                           v11
                           (coe
                              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                              (coe
                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_562 (coe v0)
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)) (coe v6))
                              (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v13)))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7 v8 v12))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1118 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1118 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_disjoint'45''8746''737''45''8746'_1118 v0 v2 v4 v5 v6
du_disjoint'45''8746''737''45''8746'_1118 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1118 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1870
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_246)
      (\ v5 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2474
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
                 (coe v0) (coe v2) (coe v3) (coe v5))
              (coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Data.Sum.Base.du_map'8322'_94
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                       (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_198
                          (coe v0) (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                             (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)))
                             (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe v5))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_214
                    (coe v0) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_filter_448 v0
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                             (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                             (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)))
                          (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                       v3)
                    (coe v5))))
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_216
                 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_filter_448 v0
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                          (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)))
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
                            MAlonzo.Code.Function.Bundles.d_to_1868
                            (coe
                               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0) (coe v3)
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                  (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                     (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                     (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)))
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
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_180
                                            (coe v0)
                                            (coe
                                               (\ v9 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))
                                            (coe v3) (coe v5) (coe v7))))
                                 (coe v7))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_214 v0
                         v2 v3 v5 v6)))))
-- Axiom.Set.Map.Unionᵐ.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1126 v0 ~v1 v2 v3 ~v4 v5 v6
                                          ~v7
  = du_singleton'45''8712''45''8746''737'_1126 v0 v2 v3 v5 v6
du_singleton'45''8712''45''8746''737'_1126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1126 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         (\ v5 v6 ->
            let v7
                  = coe
                      MAlonzo.Code.Function.Bundles.d_from_1870
                      (coe
                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                         (coe
                            MAlonzo.Code.Axiom.Set.d_unions_224 v0 erased
                            (coe
                               MAlonzo.Code.Axiom.Set.du_fromList_456 (coe v0)
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe du__'738'_580 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                     (coe
                                        du__'738'_580
                                        (coe
                                           du_filter'7504'_768 (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                              erased erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                 (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                 erased
                                                 (coe
                                                    v1
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                                                       (coe du__'738'_580 (coe v3)))))
                                              (\ v7 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                           (coe
                                              du_'10100'_'10101''7504'_854 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v2) (coe v4)))))))))
                         v5)
                      v6 in
            coe
              (let v8
                     = coe
                         MAlonzo.Code.Function.Bundles.d_from_1870
                         (coe
                            MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                            (coe
                               MAlonzo.Code.Axiom.Set.d_listing_244 v0 erased
                               (coe
                                  MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                  (coe du__'738'_580 (coe v3))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        du__'738'_580
                                        (coe
                                           du_filter'7504'_768 (coe v0)
                                           (coe
                                              MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                              (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                              erased erased
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                 (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                 erased
                                                 (coe
                                                    v1
                                                    (coe
                                                       MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                                                       (coe du__'738'_580 (coe v3)))))
                                              (\ v8 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                           (coe
                                              du_'10100'_'10101''7504'_854 (coe v0)
                                              (coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v2) (coe v4)))))
                                     (coe MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_224 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_456 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe du__'738'_580 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                 (coe
                                                    du__'738'_580
                                                    (coe
                                                       du_filter'7504'_768 (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0))
                                                          erased erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                (coe v0))
                                                             erased erased
                                                             (coe
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                   v0
                                                                   (coe du__'738'_580 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_854 (coe v0)
                                                          (coe
                                                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                             (coe v2) (coe v4)))))))))
                                     v5)
                                  v6)))
                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                            (coe
                               MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                               (coe
                                  MAlonzo.Code.Function.Bundles.d_from_1870
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                     (coe
                                        MAlonzo.Code.Axiom.Set.d_unions_224 v0 erased
                                        (coe
                                           MAlonzo.Code.Axiom.Set.du_fromList_456 (coe v0)
                                           (coe
                                              MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                              (coe du__'738'_580 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_270
                                                 (coe
                                                    du__'738'_580
                                                    (coe
                                                       du_filter'7504'_768 (coe v0)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0))
                                                          erased erased erased
                                                          (coe
                                                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                             (MAlonzo.Code.Axiom.Set.d_sp_188
                                                                (coe v0))
                                                             erased erased
                                                             (coe
                                                                v1
                                                                (coe
                                                                   MAlonzo.Code.Axiom.Set.Rel.du_dom_358
                                                                   v0
                                                                   (coe du__'738'_580 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_854 (coe v0)
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
                                             MAlonzo.Code.Function.Bundles.d_from_1870
                                             (coe
                                                MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454
                                                (coe v0)
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_listing_244 v0 erased
                                                      (coe
                                                         MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                            (coe v2) (coe v4))
                                                         (coe
                                                            MAlonzo.Code.Agda.Builtin.List.C_'91''93'_16))))
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                   (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                                                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0))
                                                      erased erased
                                                      (coe
                                                         v1
                                                         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                            (coe
                                                               MAlonzo.Code.Axiom.Set.d_replacement_236
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
                                        (coe MAlonzo.Code.Data.Empty.du_'8869''45'elim_12))
                              _ -> MAlonzo.RTE.mazUnreachableError)
                    _ -> MAlonzo.RTE.mazUnreachableError))))
      (coe
         (\ v5 ->
            coe
              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_956
              (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 du__'738'_580
                 (coe
                    du_filter'7504'_768 (coe v0)
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_76
                          (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                          (coe
                             v1
                             (coe
                                MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
                                (coe du__'738'_580 (coe v3)))))
                       (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    (coe
                       du_'10100'_'10101''7504'_854 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4)))))
              (coe v5)))
-- Axiom.Set.Map.Unionᵐ.insert
d_insert_1162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1162 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_insert_1162 v0 v2 v4 v5 v6
du_insert_1162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1162 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__1052 (coe v0) (coe v1)
      (coe
         du_'10100'_'10101''7504'_854 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe v2)
-- Axiom.Set.Map.Unionᵐ.insertIfJust
d_insertIfJust_1170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1170 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_insertIfJust_1170 v0 v2 v5 v6 v7
du_insertIfJust_1170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1170 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_1162 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1190 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_disjoint'45''8746''737''45'mapValues_1190 v0 ~v1 v2 ~v3 ~v4 v5 v6
                                            v7 ~v8
  = du_disjoint'45''8746''737''45'mapValues_1190 v0 v2 v5 v6 v7
du_disjoint'45''8746''737''45'mapValues_1190 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_1190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_mapValues_986 (coe v0) (coe v4)
            (coe du__'8746''737'__1052 (coe v0) (coe v1) (coe v2) (coe v3))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8746''737'__1052 (coe v0) (coe v1)
            (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
            (coe du_mapValues_986 (coe v0) (coe v4) (coe v3))))
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
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du_mapValues_986 (coe v0) (coe v4)
               (coe du__'8746''737'__1052 (coe v0) (coe v1) (coe v2) (coe v3))))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du__'8746''737'__1052 (coe v0) (coe v1)
               (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
               (coe du_mapValues_986 (coe v0) (coe v4) (coe v3))))
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
               MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du__'8746''737'__1052 (coe v0) (coe v1)
                  (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
                  (coe du_mapValues_986 (coe v0) (coe v4) (coe v3))))
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
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v8 v10 v11)))
                          (coe
                             (\ v10 v11 ->
                                coe
                                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v8 v10
                                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v9 v10 v11))))))
               (\ v5 v6 v7 ->
                  case coe v7 of
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
                      -> coe
                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v9) (coe v8)
                    _ -> MAlonzo.RTE.mazUnreachableError)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_454 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__1052 (coe v0) (coe v1)
                     (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_986 (coe v0) (coe v4) (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__1052 (coe v0) (coe v1)
                     (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_986 (coe v0) (coe v4) (coe v3))))
               (coe
                  MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du__'8718'_494
                  (coe
                     MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_stop_54
                     (coe
                        (\ v5 ->
                           coe
                             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
                             (coe (\ v6 v7 -> v7)))))
                  (coe
                     MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                     (coe
                        du__'8746''737'__1052 (coe v0) (coe v1)
                        (coe du_mapValues_986 (coe v0) (coe v4) (coe v2))
                        (coe du_mapValues_986 (coe v0) (coe v4) (coe v3)))))
               (coe
                  du_disjoint'45''8746''737''45''8746'_1118 (coe v0) (coe v1)
                  (coe
                     du__'738'_580 (coe du_mapValues_986 (coe v0) (coe v4) (coe v2)))
                  (coe
                     du__'738'_580 (coe du_mapValues_986 (coe v0) (coe v4) (coe v3)))
                  erased))
            (coe
               MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_460 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
               (coe
                  MAlonzo.Code.Data.Product.Base.du_map'8322'_150
                  (coe (\ v5 -> v4)))))
         (coe
            MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_418
            (coe v0)
            (coe
               du__'8746''737'''__1000 (coe v0) (coe v1)
               (coe du__'738'_580 (coe v2)) (coe du__'738'_580 (coe v3)))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__708 (coe v0)
               (coe du__'738'_580 (coe v2)) (coe du__'738'_580 (coe v3)))
            (coe
               MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v5 -> v4)))
            (coe
               du_disjoint'45''8746''737''45''8746'_1118 (coe v0) (coe v1)
               (coe du__'738'_580 (coe v2)) (coe du__'738'_580 (coe v3)) erased)))
-- Axiom.Set.Map.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_1250 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_1250 = erased
-- Axiom.Set.Map.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1272 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1272 = erased
-- Axiom.Set.Map.idMap
d_idMap_1280 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_1280 v0 ~v1 v2 = du_idMap_1280 v0 v2
du_idMap_1280 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_idMap_1280 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426 v0 (coe du_'215''45'dup_496) v1)
      erased
-- Axiom.Set.Map.mapFromFun
d_mapFromFun_1284 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_1284 v0 ~v1 ~v2 v3 v4 = du_mapFromFun_1284 v0 v3 v4
du_mapFromFun_1284 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun_1284 v0 v1 v2
  = coe
      du_mapValues_986 (coe v0) (coe v1)
      (coe du_idMap_1280 (coe v0) (coe v2))
-- Axiom.Set.Map.mapFromFun-cong
d_mapFromFun'45'cong_1296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun'45'cong_1296 v0 ~v1 ~v2 v3 v4 v5 v6
  = du_mapFromFun'45'cong_1296 v0 v3 v4 v5 v6
du_mapFromFun'45'cong_1296 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun'45'cong_1296 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_mapFromFunfX'8838'mapFromFunfY_1310 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
      (coe
         du_mapFromFunfY'8838'mapFromFunfX_1342 (coe v0) (coe v1) (coe v2)
         (coe v3) (coe v4))
-- Axiom.Set.Map._.mapFromFunfX⊆mapFromFunfY
d_mapFromFunfX'8838'mapFromFunfY_1310 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_mapFromFunfX'8838'mapFromFunfY_1310 v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_mapFromFunfX'8838'mapFromFunfY_1310 v0 v3 v4 v5 v6 v7 v8
du_mapFromFunfX'8838'mapFromFunfY_1310 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_mapFromFunfX'8838'mapFromFunfY_1310 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v7 -> v3)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe du_idMap_1280 (coe v0) (coe v1))))
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> case coe v9 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                         -> let v14
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1870
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased
                                            erased
                                            (\ v14 ->
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v14) (coe v14))
                                            v1)
                                         v8)
                                      v13 in
                            coe
                              (case coe v14 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                   -> case coe v16 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                          -> coe
                                               MAlonzo.Code.Function.Bundles.d_to_1868
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_426 v0
                                                     (\ v19 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v19) (coe v19))
                                                     v2)
                                                  (coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe (\ v19 -> v19)) (coe (\ v19 -> v3)))
                                                  (coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe (\ v19 -> v19)) (coe (\ v19 -> v3))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v10) (coe v10))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v10) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Function.Bundles.d_to_1868
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                           (coe v0) (coe v2)
                                                           (coe
                                                              (\ v19 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v19) (coe v19)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v10) (coe v10)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                                 v4 v10 v18))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map._.mapFromFunfY⊆mapFromFunfX
d_mapFromFunfY'8838'mapFromFunfX_1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_mapFromFunfY'8838'mapFromFunfX_1342 v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_mapFromFunfY'8838'mapFromFunfX_1342 v0 v3 v4 v5 v6 v7 v8
du_mapFromFunfY'8838'mapFromFunfX_1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_mapFromFunfY'8838'mapFromFunfX_1342 v0 v1 v2 v3 v4 v5 v6
  = let v7
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                    (coe
                       MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v7 -> v3)))
                    (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe du_idMap_1280 (coe v0) (coe v2))))
                 v5)
              v6 in
    coe
      (case coe v7 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v8 v9
           -> case coe v8 of
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v10 v11
                  -> case coe v9 of
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v12 v13
                         -> let v14
                                  = coe
                                      MAlonzo.Code.Function.Bundles.d_from_1870
                                      (coe
                                         MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased
                                            erased
                                            (\ v14 ->
                                               coe
                                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                 (coe v14) (coe v14))
                                            v2)
                                         v8)
                                      v13 in
                            coe
                              (case coe v14 of
                                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v15 v16
                                   -> case coe v16 of
                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v17 v18
                                          -> coe
                                               MAlonzo.Code.Function.Bundles.d_to_1868
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                  (coe v0)
                                                  (coe
                                                     MAlonzo.Code.Axiom.Set.du_map_426 v0
                                                     (\ v19 ->
                                                        coe
                                                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                          (coe v19) (coe v19))
                                                     v1)
                                                  (coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe (\ v19 -> v19)) (coe (\ v19 -> v3)))
                                                  (coe
                                                     MAlonzo.Code.Data.Product.Base.du_map_128
                                                     (coe (\ v19 -> v19)) (coe (\ v19 -> v3))
                                                     (coe
                                                        MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                        (coe v10) (coe v10))))
                                               (coe
                                                  MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     (coe v10) (coe v10))
                                                  (coe
                                                     MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                     erased
                                                     (coe
                                                        MAlonzo.Code.Function.Bundles.d_to_1868
                                                        (coe
                                                           MAlonzo.Code.Axiom.Set.du_'8712''45'map_434
                                                           (coe v0) (coe v1)
                                                           (coe
                                                              (\ v19 ->
                                                                 coe
                                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                                   (coe v19) (coe v19)))
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              (coe v10) (coe v10)))
                                                        (coe
                                                           MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                           (coe v10)
                                                           (coe
                                                              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                              erased
                                                              (coe
                                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                                                 v4 v10 v18))))))
                                        _ -> MAlonzo.RTE.mazUnreachableError
                                 _ -> MAlonzo.RTE.mazUnreachableError)
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.mapWithKey-uniq
d_mapWithKey'45'uniq_1382 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_mapWithKey'45'uniq_1382 = erased
-- Axiom.Set.Map.mapWithKey
d_mapWithKey_1416 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_1416 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapWithKey_1416 v0 v4 v5
du_mapWithKey_1416 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapWithKey_1416 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.du_map_426 v0
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
d_mapValues'45'dom_1434 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_1434 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapValues'45'dom_1434 v0 v4 v5
du_mapValues'45'dom_1434 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues'45'dom_1434 v0 v1 v2
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_618 (coe v0)
         (coe du__'738'_580 (coe v1)) (coe v2))
-- Axiom.Set.Map._∣'_
d__'8739'''__1438 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__1438 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739'''__1438 v0 v4 v5
du__'8739'''__1438 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'''__1438 v0 v1 v2
  = coe
      du_filter'7504'_768 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v1)
-- Axiom.Set.Map._∣^'_
d__'8739''94'''__1446 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1446 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__1446 v0 v4 v5
du__'8739''94'''__1446 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1446 v0 v1 v2
  = coe
      du_filter'7504'_768 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
         (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe v1)
-- Axiom.Set.Map.constMap
d_constMap_1452 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_1452 v0 ~v1 ~v2 v3 v4 = du_constMap_1452 v0 v3 v4
du_constMap_1452 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap_1452 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_426 v0
         (\ v3 ->
            coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
         v1)
      erased
-- Axiom.Set.Map.constMap-dom
d_constMap'45'dom_1464 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  AgdaAny -> () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap'45'dom_1464 v0 ~v1 v2 ~v3 v4
  = du_constMap'45'dom_1464 v0 v2 v4
du_constMap'45'dom_1464 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap'45'dom_1464 v0 v1 v2
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
                            (\ v5 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                            (coe
                               du__'738'_580 (coe du_constMap_1452 (coe v0) (coe v1) (coe v2))))
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
                                                    MAlonzo.Code.Axiom.Set.d_replacement_236 v0
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
              MAlonzo.Code.Function.Bundles.d_to_1868
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_map_426 v0
                    (\ v5 ->
                       coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v5) (coe v2))
                    v1)
                 (coe v3))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       MAlonzo.Code.Axiom.Set.du_'8712''45'map_434 (coe v0) (coe v1)
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
d_mapPartialLiftKey'45'just'45'uniq_1500 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_mapPartialLiftKey'45'just'45'uniq_1500 = erased
-- Axiom.Set.Map.mapPartial-uniq
d_mapPartial'45'uniq_1522 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_mapPartial'45'uniq_1522 = erased
-- Axiom.Set.Map.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_1542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_1542 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey'7504'_1542 v0 v4 v5
du_mapMaybeWithKey'7504'_1542 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapMaybeWithKey'7504'_1542 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_738 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapFromPartialFun
d_mapFromPartialFun_1550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_1550 v0 ~v1 ~v2 v3 v4
  = du_mapFromPartialFun_1550 v0 v3 v4
du_mapFromPartialFun_1550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromPartialFun_1550 v0 v1 v2
  = coe
      du_mapMaybeWithKey'7504'_1542 (coe v0) (coe (\ v3 -> v1))
      (coe du_idMap_1280 (coe v0) (coe v2))
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ_
d__'8746''737'__1620 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1620 v0 ~v1 v2 = du__'8746''737'__1620 v0 v2
du__'8746''737'__1620 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1620 v0 v1 v2 v3 v4
  = coe du__'8746''737'__1052 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ'_
d__'8746''737'''__1622 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1622 v0 ~v1 v2 = du__'8746''737'''__1622 v0 v2
du__'8746''737'''__1622 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1622 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__1000 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1624 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_disjoint'45''8746''737''45'mapValues_1624 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1624 v0 v2
du_disjoint'45''8746''737''45'mapValues_1624 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
du_disjoint'45''8746''737''45'mapValues_1624 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_1190 (coe v0) (coe v1) v4
      v5 v6
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1626 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1626 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1626 v0 v2
du_disjoint'45''8746''737''45''8746'_1626 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1626 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_1118 (coe v0) (coe v1) v3 v4
      v5
-- Axiom.Set.Map.Restrictionᵐ._.insert
d_insert_1628 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1628 v0 ~v1 v2 = du_insert_1628 v0 v2
du_insert_1628 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1628 v0 v1 v2 v3 v4 v5
  = coe du_insert_1162 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insertIfJust
d_insertIfJust_1630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1630 v0 ~v1 v2 = du_insertIfJust_1630 v0 v2
du_insertIfJust_1630 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1630 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_1170 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1632 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1632 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1632 v0 v2
du_singleton'45''8712''45''8746''737'_1632 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1632 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_1126 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Restrictionᵐ._.∪ˡ-cong
d_'8746''737''45'cong_1634 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'cong_1634 v0 ~v1 v2
  = du_'8746''737''45'cong_1634 v0 v2
du_'8746''737''45'cong_1634 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'cong_1634 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du_'8746''737''45'cong_1066 (coe v0) (coe v1) v3 v4 v5 v6 v7 v8
-- Axiom.Set.Map.Restrictionᵐ._∣_
d__'8739'__1636 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__1636 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__1636 v0 v2 v4 v5
du__'8739'__1636 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__1636 v0 v1 v2 v3
  = coe
      du_'8838''45'map_594
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'__770 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_1644 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_1644 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_1644 v0 v2 v4 v5
du__'8739'_'7580'_1644 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_1644 v0 v1 v2 v3
  = coe
      du_'8838''45'map_594
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_776 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_1654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_1654 v0 ~v1 v2 ~v3 v4
  = du_res'7504''45''8709''7580'_1654 v0 v2 v4
du_res'7504''45''8709''7580'_1654 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_1654 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_872 (coe v0)
      (coe v1) (coe du__'738'_580 (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_1656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_1656 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapValueRestricted_1656 v0 v2 v4 v5 v6
du_mapValueRestricted_1656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_1656 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__1052 (coe v0) (coe v1)
      (coe
         du_mapValues_986 (coe v0) (coe v2)
         (coe du__'8739'__1636 (coe v0) (coe v1) (coe v3) (coe v4)))
      (coe v3)
-- Axiom.Set.Map.Restrictionᵐ.mapSingleValue
d_mapSingleValue_1664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_1664 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapSingleValue_1664 v0 v2 v4 v5 v6
du_mapSingleValue_1664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_1664 v0 v1 v2 v3 v4
  = coe
      du_mapValueRestricted_1656 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v4)
-- Axiom.Set.Map.Restrictionᵐ.curryᵐ
d_curry'7504'_1672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_1672 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'7504'_1672 v0 v2 v5 v6
du_curry'7504'_1672 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_1672 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_942 (coe v0) (coe v1)
         (coe du__'738'_580 (coe v2)) (coe v3))
      (coe
         (\ v4 v5 v6 v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
              v5 v6
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_954 (coe v0)
                 (coe v1) (coe du__'738'_580 (coe v2)) (coe v3) (coe v4) (coe v5)
                 (coe v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_954 (coe v0)
                 (coe v1) (coe du__'738'_580 (coe v2)) (coe v3) (coe v4) (coe v6)
                 (coe v8))))
-- Axiom.Set.Map.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_res'45'dom'8712'_1684 v0 ~v1 v2 v3 ~v4 v5 v6 v7
  = du_res'45'dom'8712'_1684 v0 v2 v3 v5 v6 v7
du_res'45'dom'8712'_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_res'45'dom'8712'_1684 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res_880 (coe v0) (coe v1)
      (coe du__'738'_580 (coe v3)) (coe v4) (coe v2) (coe v5)
-- Axiom.Set.Map.Restrictionᵐ.res-cong
d_res'45'cong_1694 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_1694 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_res'45'cong_1694 v0 v2 v4 v5 v6 v7 v8 v9
du_res'45'cong_1694 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_1694 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8838'_1726 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
      (coe
         du_'8839'_1712 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Axiom.Set.Map.Restrictionᵐ._.⊇
d_'8839'_1712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8839'_1712 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8839'_1712 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8839'_1712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8839'_1712 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_866 v0 v1
              (coe du__'738'_580 (coe v3)) v5 v8 v9 in
    coe
      (let v11
             = coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_800 (coe v0) (coe v1)
                 (coe du__'738'_580 (coe v3)) (coe v5)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                             (coe du__'738'_580 (coe v3))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                (coe v1 v5)
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                       (coe v9))) in
       coe
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               du_res'45'dom'8712'_1684 (coe v0) (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) (coe v2)
               (coe v4) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v6 v8 v10)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))))
-- Axiom.Set.Map.Restrictionᵐ._.⊆
d_'8838'_1726 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8838'_1726 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8838'_1726 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8838'_1726 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8838'_1726 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_866 v0 v1
              (coe du__'738'_580 (coe v2)) v4 v8 v9 in
    coe
      (let v11
             = coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_800 (coe v0) (coe v1)
                 (coe du__'738'_580 (coe v2)) (coe v4)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8))
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                             (coe du__'738'_580 (coe v2))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                                (coe v1 v4)
                                (\ v11 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v11)))))
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8))
                       (coe v9))) in
       coe
         (coe
            MAlonzo.Code.Function.Bundles.d_from_1870
            (coe
               du_res'45'dom'8712'_1684 (coe v0) (coe v1)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) (coe v3)
               (coe v5) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)))
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v6 v8 v10)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7
                  (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)) v11))))
-- Axiom.Set.Map.Restrictionᵐ.res-subset
d_res'45'subset_1740 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_1740 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'subset_1740 v0 v2 v4 v5 v6
du_res'45'subset_1740 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_1740 v0 v1 v2 v3 v4
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
                                     MAlonzo.Code.Function.Bundles.d_from_1870
                                     (coe
                                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                                        (coe
                                           MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                                           (\ v9 ->
                                              MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v9))
                                           v2)
                                        v6)
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
                                        (coe
                                           MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_800 (coe v0)
                                           (coe v1) (coe du__'738'_580 (coe v3))
                                           (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.Function.Bundles.d_to_1868
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464
                                                 (coe v0)
                                                 (coe
                                                    du__'738'_580
                                                    (coe
                                                       du__'8739'__1636 (coe v0) (coe v1) (coe v3)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
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
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 du_res'45'dom'8712'_1684 (coe v0) (coe v1)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)) (coe v3)
                 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0 v2)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4 v5 v6)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1868
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0) (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                       (coe v6))))))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton
d_res'45'singleton_1782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_1782 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'singleton_1782 v0 v2 v4 v5 v6
du_res'45'singleton_1782 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_1782 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Function.Bundles.d_from_1870
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                           (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe du__'738'_580 (coe v2)))
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
                                                MAlonzo.Code.Function.Bundles.d_to_1868
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486
                                                   (coe v0) (coe v14) (coe v8))
                                                erased))
                                        (coe
                                           (\ v14 v15 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                                                v0 v5
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                                   (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480
                                                         v0 erased v10))
                                                   (\ v16 ->
                                                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                        (coe v16)))
                                                v8
                                                (coe
                                                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                                   (coe
                                                      MAlonzo.Code.Function.Bundles.d_to_1868
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486
                                                         (coe v0) (coe v10) (coe v10))
                                                      erased)
                                                   (coe v13)))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Restrictionᵐ.res-singleton'
d_res'45'singleton''_1818 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_1818 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''_1818 v0 v2 v4 v5 v6 v7
du_res'45'singleton''_1818 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_1818 v0 v1 v2 v3 v4 v5
  = let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1870
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_replacement_236 v0 erased erased
                       (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                       (coe du__'738'_580 (coe v2)))
                    v3)
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_172 v0
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                    (coe du__'738'_580 (coe v2)) v3
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
                                         MAlonzo.Code.Function.Bundles.d_to_1868
                                         (coe
                                            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486
                                            (coe v0) (coe v14) (coe v8))
                                         erased))
                                 (coe
                                    (\ v14 v15 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_200
                                         v0 v6
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                                            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased
                                            erased
                                            (coe
                                               v1
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0
                                                  erased v10))
                                            (\ v16 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))
                                         v8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_to_1868
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486
                                                  (coe v0) (coe v10) (coe v10))
                                               erased)
                                            (coe v13))))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_1834 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'singleton'8314'_1834 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'8314'_1834 v0 v2 v4 v5 v6 v7
du_res'45'singleton'8314'_1834 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'singleton'8314'_1834 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
         (coe du__'738'_580 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
            (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v3))
            (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1868
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0) (coe v3)
               (coe v3))
            erased)
         (coe v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_1842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45'singleton'45'inhabited_1842 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'45'inhabited_1842 v0 v2 v4 v5 v6 v7
du_res'45'singleton'45'inhabited_1842 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45'singleton'45'inhabited_1842 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1868
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
         (coe du__'738'_580 (coe v2)) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_866 v0 v1
            (coe du__'738'_580 (coe v2))
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v3) v4
            v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_1860 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_1860 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''''_1860 v0 v2 v4 v5 v6 v7
du_res'45'singleton''''_1860 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_1860 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_res'45'singleton_1782 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               du_res'45'singleton'45'inhabited_1842 (coe v0) (coe v1) (coe v2)
               (coe v3) (coe v4) (coe v5))))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_486 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_res'45'singleton_1782 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe
                        du_res'45'singleton'45'inhabited_1842 (coe v0) (coe v1) (coe v2)
                        (coe v3) (coe v4) (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_res'45'singleton_1782 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe
                     du_res'45'singleton'45'inhabited_1842 (coe v0) (coe v1) (coe v2)
                     (coe v3) (coe v4) (coe v5))))
            v4 v5))
-- Axiom.Set.Map.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_1874 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_1874 v0 ~v1 v2
  = du__'10629'_'44''45''10630'_1874 v0 v2
du__'10629'_'44''45''10630'_1874 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_1874 v0 v1 v2 v3 v4 v5
  = coe du_curry'7504'_1672 (coe v0) (coe v1) v4 v5
-- Axiom.Set.Map.Restrictionᵐ.update
d_update_1876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_1876 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_update_1876 v0 v2 v4 v5 v6
du_update_1876 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_1876 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_1162 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             du__'8739'_'7580'_1644 (coe v0) (coe v1) (coe v4)
             (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ_
d__'8746''737'__1950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1950 v0 ~v1 v2 = du__'8746''737'__1950 v0 v2
du__'8746''737'__1950 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1950 v0 v1 v2 v3 v4
  = coe du__'8746''737'__1052 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ'_
d__'8746''737'''__1952 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1952 v0 ~v1 v2 = du__'8746''737'''__1952 v0 v2
du__'8746''737'''__1952 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1952 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__1000 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1954 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
d_disjoint'45''8746''737''45'mapValues_1954 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1954 v0 v2
du_disjoint'45''8746''737''45'mapValues_1954 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
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
du_disjoint'45''8746''737''45'mapValues_1954 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_1190 (coe v0) (coe v1) v4
      v5 v6
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1956 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1956 v0 v2
du_disjoint'45''8746''737''45''8746'_1956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1956 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_1118 (coe v0) (coe v1) v3 v4
      v5
-- Axiom.Set.Map.Lookupᵐ._.insert
d_insert_1958 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1958 v0 ~v1 v2 = du_insert_1958 v0 v2
du_insert_1958 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1958 v0 v1 v2 v3 v4 v5
  = coe du_insert_1162 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insertIfJust
d_insertIfJust_1960 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1960 v0 ~v1 v2 = du_insertIfJust_1960 v0 v2
du_insertIfJust_1960 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1960 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_1170 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1962 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1962 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1962 v0 v2
du_singleton'45''8712''45''8746''737'_1962 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1962 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_1126 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Lookupᵐ._.∪ˡ-cong
d_'8746''737''45'cong_1964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'cong_1964 v0 ~v1 v2
  = du_'8746''737''45'cong_1964 v0 v2
du_'8746''737''45'cong_1964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'cong_1964 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      du_'8746''737''45'cong_1066 (coe v0) (coe v1) v3 v4 v5 v6 v7 v8
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ
d_lookup'7504'_2036 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504'_2036 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504'_2036 v0 v4 v5 v6
du_lookup'7504'_2036 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504'_2036 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
            (coe du__'738'_580 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ-∈
d_lookup'7504''45''8712'_2042 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504''45''8712'_2042 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''45''8712'_2042 v0 v4 v5 v6
du_lookup'7504''45''8712'_2042 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504''45''8712'_2042 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1870
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_464 (coe v0)
            (coe du__'738'_580 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.∈-lookup
d_'8712''45'lookup_2052 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup_2052 = erased
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ?
d_lookup'7504''63'_2058 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_2058 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''63'_2058 v0 v4 v5 v6
du_lookup'7504''63'_2058 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_2058 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v4
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
               -> if coe v5
                    then case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe du_lookup'7504'_2036 (coe v0) (coe v1) (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ._.∈⇒lookup≡just
d_'8712''8658'lookup'8801'just_2066 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''8658'lookup'8801'just_2066 = erased
-- Axiom.Set.Map.Lookupᵐ.pullbackMap
d_pullbackMap_2080 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_2080 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_pullbackMap_2080 v0 v5 v6 v7 v8
du_pullbackMap_2080 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_2080 v0 v1 v2 v3 v4
  = coe
      du_mapMaybeWithKey'7504'_1542 (coe v0)
      (coe
         (\ v5 v6 ->
            coe
              du_lookup'7504''63'_2058 (coe v0) (coe v1) (coe v3 v5)
              (coe v2 (coe v3 v5))))
      (coe du_idMap_1280 (coe v0) (coe v4))
-- Axiom.Set.Map.Corestrictionᵐ._∣^_
d__'8739''94'__2110 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__2110 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__2110 v0 v2 v4 v5
du__'8739''94'__2110 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__2110 v0 v1 v2 v3
  = coe
      du_'8838''45'map_594
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1138 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_2118 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_2118 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_2118 v0 v2 v4 v5
du__'8739''94'_'7580'_2118 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_2118 v0 v1 v2 v3
  = coe
      du_'8838''45'map_594
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1144 (coe v0)
              (coe v1) (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._⁻¹_
d__'8315''185'__2126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d__'8315''185'__2126 v0 ~v1 v2 ~v3 v4 v5
  = du__'8315''185'__2126 v0 v2 v4 v5
du__'8315''185'__2126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du__'8315''185'__2126 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_358 v0
      (coe
         du__'738'_580
         (coe
            du__'8739''94'__2110 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v3)))
-- Axiom.Set.Map.Corestrictionᵐ.cores-cong
d_cores'45'cong_2140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cores'45'cong_2140 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9
  = du_cores'45'cong_2140 v0 v2 v4 v5 v6 v7 v8 v9
du_cores'45'cong_2140 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cores'45'cong_2140 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         du_'8838'_2172 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
      (coe
         du_'8839'_2158 (coe v0) (coe v1) (coe v2) (coe v3) (coe v4)
         (coe v5) (coe v6) (coe v7))
-- Axiom.Set.Map.Corestrictionᵐ._.⊇
d_'8839'_2158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8839'_2158 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8839'_2158 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8839'_2158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8839'_2158 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v3))
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                       (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                       (coe v1 v5)
                       (\ v10 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v10))))
                 v8)
              v9 in
    coe
      (case coe v10 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v11 v12
           -> coe
                MAlonzo.Code.Function.Bundles.d_to_1868
                (coe
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                      (coe v1 v4)
                      (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13)))
                   (coe v8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v7
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)) v11)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v6 v8 v12))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Corestrictionᵐ._.⊆
d_'8838'_2172 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_'8838'_2172 v0 ~v1 v2 ~v3 v4 v5 v6 v7 v8 v9 v10 v11
  = du_'8838'_2172 v0 v2 v4 v5 v6 v7 v8 v9 v10 v11
du_'8838'_2172 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_'8838'_2172 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = let v10
          = coe
              MAlonzo.Code.Function.Bundles.d_from_1870
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                 (coe
                    MAlonzo.Code.Axiom.Set.d_specification_214 v0 erased erased
                    (coe du__'738'_580 (coe v2))
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
                   MAlonzo.Code.Axiom.Set.du_'8712''45'filter_454 (coe v0)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                   (coe
                      MAlonzo.Code.Axiom.Set.d_sp'45''8728'_74
                      (MAlonzo.Code.Axiom.Set.d_sp_188 (coe v0)) erased erased erased
                      (coe v1 v5)
                      (\ v13 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v13)))
                   (coe v8))
                (coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe
                      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v7
                      (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v8)) v11)
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 v6 v8 v12))
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Corestrictionᵐ.⁻¹-cong
d_'8315''185''45'cong_2192 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8315''185''45'cong_2192 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_'8315''185''45'cong_2192 v0 v2 v4 v5 v6 v7
du_'8315''185''45'cong_2192 ::
  MAlonzo.Code.Axiom.Set.T_Theory_118 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8315''185''45'cong_2192 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_562 (coe v0)
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8739''94'__2110 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v4)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8739''94'__2110 (coe v0) (coe v1) (coe v3)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v4)))
      (coe
         du_cores'45'cong_2140 (coe v0) (coe v1) (coe v2) (coe v3)
         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v4)
         (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_480 v0 erased v4)
         (coe v5)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe (\ v6 v7 -> v7))
            (coe (\ v6 v7 -> v7))))
-- Axiom.Set.Map..generalizedField-A
d_'46'generalizedField'45'A_190207 :: T_GeneralizeTel_190215 -> ()
d_'46'generalizedField'45'A_190207 = erased
-- Axiom.Set.Map..generalizedField-B
d_'46'generalizedField'45'B_190209 :: T_GeneralizeTel_190215 -> ()
d_'46'generalizedField'45'B_190209 = erased
-- Axiom.Set.Map..generalizedField-B'
d_'46'generalizedField'45'B''_190211 ::
  T_GeneralizeTel_190215 -> ()
d_'46'generalizedField'45'B''_190211 = erased
-- Axiom.Set.Map..generalizedField-R
d_'46'generalizedField'45'R_190213 ::
  T_GeneralizeTel_190215 -> AgdaAny
d_'46'generalizedField'45'R_190213 v0
  = case coe v0 of
      C_mkGeneralizeTel_190217 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.GeneralizeTel
d_GeneralizeTel_190215 a0 = ()
newtype T_GeneralizeTel_190215 = C_mkGeneralizeTel_190217 AgdaAny
