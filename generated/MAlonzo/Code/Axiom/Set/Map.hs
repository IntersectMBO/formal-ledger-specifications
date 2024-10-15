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
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 (coe v0)
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
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_642 v3 v4
-- Axiom.Set.Map._.mapʳ
d_map'691'_176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_176 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) v4 v5
-- Axiom.Set.Map._.mapˡ
d_map'737'_180 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_180 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'737'_412 (coe v0) v4 v5
-- Axiom.Set.Map._.Restriction.res-dom
d_res'45'dom_228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_228 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0) v2 v4 v5 v6
      v7
-- Axiom.Set.Map._._≡_⨿_
d__'8801'_'10815'__262 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__262 = erased
-- Axiom.Set.Map.×-dup
d_'215''45'dup_474 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'215''45'dup_474 ~v0 ~v1 ~v2 v3 = du_'215''45'dup_474 v3
du_'215''45'dup_474 ::
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'215''45'dup_474 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) (coe v0)
-- Axiom.Set.Map.left-unique
d_left'45'unique_478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> AgdaAny -> ()
d_left'45'unique_478 = erased
-- Axiom.Set.Map.IsLeftUnique
d_IsLeftUnique_494 a0 a1 a2 a3 = ()
data T_IsLeftUnique_494 = C_IsLeftUnique'46'constructor_3397
-- Axiom.Set.Map.IsLeftUnique.isLeftUnique
d_isLeftUnique_500 ::
  T_IsLeftUnique_494 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_500 = erased
-- Axiom.Set.Map.∅-left-unique
d_'8709''45'left'45'unique_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> T_IsLeftUnique_494
d_'8709''45'left'45'unique_502 = erased
-- Axiom.Set.Map.⊆-left-unique
d_'8838''45'left'45'unique_508 ::
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
d_'8838''45'left'45'unique_508 = erased
-- Axiom.Set.Map.left-unique-mapˢ
d_left'45'unique'45'map'738'_520 ::
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
d_left'45'unique'45'map'738'_520 = erased
-- Axiom.Set.Map.Map
d_Map_534 :: MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_Map_534 = erased
-- Axiom.Set.Map._≡ᵐ_
d__'8801''7504'__540 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__540 = erased
-- Axiom.Set.Map._ˢ
d__'738'_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_550 ~v0 ~v1 ~v2 v3 = du__'738'_550 v3
du__'738'_550 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_550 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Axiom.Set.Map._ᵐ
d__'7504'_554 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  AgdaAny ->
  T_IsLeftUnique_494 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_554 ~v0 ~v1 ~v2 v3 ~v4 = du__'7504'_554 v3
du__'7504'_554 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7504'_554 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Axiom.Set.Map.⊆-map
d_'8838''45'map_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_564 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8838''45'map_564 v3 v5
du_'8838''45'map_564 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'map_564 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 (coe du__'738'_550 (coe v1))) erased
-- Axiom.Set.Map.ˢ-left-unique
d_'738''45'left'45'unique_572 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_IsLeftUnique_494
d_'738''45'left'45'unique_572 = erased
-- Axiom.Set.Map.∅ᵐ
d_'8709''7504'_578 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_578 v0 ~v1 ~v2 = du_'8709''7504'_578 v0
du_'8709''7504'_578 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''7504'_578 v0
  = coe
      du__'7504'_554 (coe MAlonzo.Code.Axiom.Set.du_'8709'_442 (coe v0))
-- Axiom.Set.Map.fromListᵐ
d_fromList'7504'_582 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_582 v0 ~v1 ~v2 v3 v4
  = du_fromList'7504'_582 v0 v3 v4
du_fromList'7504'_582 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'7504'_582 v0 v1 v2
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
d_FinMap_600 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 -> () -> () -> ()
d_FinMap_600 = erased
-- Axiom.Set.Map.toFinMap
d_toFinMap_610 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_610 ~v0 ~v1 ~v2 v3 v4 = du_toFinMap_610 v3 v4
du_toFinMap_610 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toFinMap_610 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toMap
d_toMap_618 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_618 ~v0 ~v1 ~v2 v3 = du_toMap_618 v3
du_toMap_618 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_618 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toRel
d_toRel_624 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_624 ~v0 ~v1 ~v2 v3 = du_toRel_624 v3
du_toRel_624 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_624 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe seq (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__678 v0 ~v1 ~v2 v3 v4 v5
  = du__'8745''7504'__678 v0 v3 v4 v5
du__'8745''7504'__678 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__678 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__704 (coe v0) (coe v1)
         (coe du__'738'_550 (coe v2)) (coe du__'738'_550 (coe v3)))
      erased
-- Axiom.Set.Map.disj-∪
d_disj'45''8746'_688 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_688 v0 ~v1 ~v2 v3 v4 ~v5
  = du_disj'45''8746'_688 v0 v3 v4
du_disj'45''8746'_688 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746'_688 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
         (coe du__'738'_550 (coe v1)) (coe du__'738'_550 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ
d_filter'7504'_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_720 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504'_720 v0 v4 v5
du_filter'7504'_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_720 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_420 v0 v1
         (coe du__'738'_550 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ-finite
d_filter'7504''45'finite_730 ::
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
d_filter'7504''45'finite_730 v0 ~v1 ~v2 v3 ~v4
  = du_filter'7504''45'finite_730 v0 v3
du_filter'7504''45'finite_730 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'finite_730 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_686 (coe v0)
      (coe du__'738'_550 (coe v1))
-- Axiom.Set.Map.filterKeys
d_filterKeys_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_734 v0 ~v1 ~v2 ~v3 v4 = du_filterKeys_734 v0 v4
du_filterKeys_734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_734 v0 v1
  = coe
      du_filter'7504'_720 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v1
         (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Axiom.Set.Map.singletonᵐ
d_singleton'7504'_738 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_738 v0 ~v1 ~v2 v3 v4
  = du_singleton'7504'_738 v0 v3 v4
du_singleton'7504'_738 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'7504'_738 v0 v1 v2
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
d_'10100'_'10101''7504'_746 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_746 v0 ~v1 ~v2 v3
  = du_'10100'_'10101''7504'_746 v0 v3
du_'10100'_'10101''7504'_746 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'10100'_'10101''7504'_746 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_singleton'7504'_738 (coe v0) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.disj-dom
d_disj'45'dom_758 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_758 = erased
-- Axiom.Set.Map._.∈mᵢ⇒∈m
d_'8712'm'7522''8658''8712'm_792 ::
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
d_'8712'm'7522''8658''8712'm_792 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                 ~v9 ~v10 ~v11 ~v12 ~v13 v14 ~v15 v16 v17
  = du_'8712'm'7522''8658''8712'm_792 v0 v4 v8 v14 v16 v17
du_'8712'm'7522''8658''8712'm_792 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712'm'7522''8658''8712'm_792 v0 v1 v2 v3 v4 v5
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
d_InjectiveOn_802 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_802 = erased
-- Axiom.Set.Map.weaken-Injective
d_weaken'45'Injective_816 ::
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
d_weaken'45'Injective_816 = erased
-- Axiom.Set.Map.mapˡ-uniq
d_map'737''45'uniq_824 ::
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
d_map'737''45'uniq_824 = erased
-- Axiom.Set.Map.mapʳ-uniq
d_map'691''45'uniq_848 ::
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
d_map'691''45'uniq_848 = erased
-- Axiom.Set.Map.mapKeys
d_mapKeys_868 ::
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
d_mapKeys_868 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_mapKeys_868 v0 v4 v5
du_mapKeys_868 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapKeys_868 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'737'_412 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapValues
d_mapValues_878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_878 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapValues_878 v0 v4 v5
du_mapValues_878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues_878 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ._∪ˡ'_
d__'8746''737'''__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__892 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'''__892 v0 v2 v4 v5
du__'8746''737'''__892 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__892 v0 v1 v2 v3
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
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Axiom.Set.Map.Unionᵐ._∪ˡ_
d__'8746''737'__898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__898 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'__898 v0 v2 v4 v5
du__'8746''737'__898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__898 v0 v1 v2 v3
  = coe
      du_disj'45''8746'_688 (coe v0) (coe v2)
      (coe
         du_filter'7504'_720 (coe v0)
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
                     (coe du__'738'_550 (coe v2)))))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe v3))
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_912 ::
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
d_disjoint'45''8746''737''45''8746'_912 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_disjoint'45''8746''737''45''8746'_912 v0 v2 v4 v5 v6
du_disjoint'45''8746''737''45''8746'_912 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_912 v0 v1 v2 v3 v4
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
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)))
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
                             (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)))
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
                          (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)))
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
                                     (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)))
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
d_singleton'45''8712''45''8746''737'_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_920 v0 ~v1 v2 v3 ~v4 v5 v6 ~v7
  = du_singleton'45''8712''45''8746''737'_920 v0 v2 v3 v5 v6
du_singleton'45''8712''45''8746''737'_920 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_920 v0 v1 v2 v3 v4
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
                                  (coe du__'738'_550 (coe v3))
                                  (coe
                                     MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                     (coe
                                        du__'738'_550
                                        (coe
                                           du_filter'7504'_720 (coe v0)
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
                                                       (coe du__'738'_550 (coe v3)))))
                                              (\ v7 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                                           (coe
                                              du_'10100'_'10101''7504'_746 (coe v0)
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
                                  (coe du__'738'_550 (coe v3))
                                  (coe
                                     MAlonzo.Code.Agda.Builtin.List.C__'8759'__22
                                     (coe
                                        du__'738'_550
                                        (coe
                                           du_filter'7504'_720 (coe v0)
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
                                                       (coe du__'738'_550 (coe v3)))))
                                              (\ v8 ->
                                                 MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v8)))
                                           (coe
                                              du_'10100'_'10101''7504'_746 (coe v0)
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
                                              (coe du__'738'_550 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                 (coe
                                                    du__'738'_550
                                                    (coe
                                                       du_filter'7504'_720 (coe v0)
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
                                                                   (coe du__'738'_550 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_746 (coe v0)
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
                                              (coe du__'738'_550 (coe v3))
                                              (coe
                                                 MAlonzo.Code.Data.List.Base.du_'91'_'93'_286
                                                 (coe
                                                    du__'738'_550
                                                    (coe
                                                       du_filter'7504'_720 (coe v0)
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
                                                                   (coe du__'738'_550 (coe v3)))))
                                                          (\ v8 ->
                                                             MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                               (coe v8)))
                                                       (coe
                                                          du_'10100'_'10101''7504'_746 (coe v0)
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
              MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_706
              (coe v0) (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
              (coe
                 du__'738'_550
                 (coe
                    du_filter'7504'_720 (coe v0)
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
                                (coe du__'738'_550 (coe v3)))))
                       (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                    (coe
                       du_'10100'_'10101''7504'_746 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v4)))))
              (coe v5)))
-- Axiom.Set.Map.Unionᵐ.insert
d_insert_956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_956 v0 ~v1 v2 ~v3 v4 v5 v6 = du_insert_956 v0 v2 v4 v5 v6
du_insert_956 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_956 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__898 (coe v0) (coe v1)
      (coe
         du_'10100'_'10101''7504'_746 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe v2)
-- Axiom.Set.Map.Unionᵐ.insertIfJust
d_insertIfJust_964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_964 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_insertIfJust_964 v0 v2 v5 v6 v7
du_insertIfJust_964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_964 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_956 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_984 ::
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
d_disjoint'45''8746''737''45'mapValues_984 v0 ~v1 v2 ~v3 ~v4 v5 v6
                                           v7 ~v8
  = du_disjoint'45''8746''737''45'mapValues_984 v0 v2 v5 v6 v7
du_disjoint'45''8746''737''45'mapValues_984 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_984 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_mapValues_878 (coe v0) (coe v4)
            (coe du__'8746''737'__898 (coe v0) (coe v1) (coe v2) (coe v3))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8746''737'__898 (coe v0) (coe v1)
            (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
            (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))
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
               du_mapValues_878 (coe v0) (coe v4)
               (coe du__'8746''737'__898 (coe v0) (coe v1) (coe v2) (coe v3))))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du__'8746''737'__898 (coe v0) (coe v1)
               (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
               (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))
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
               MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
               (coe
                  MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du__'8746''737'__898 (coe v0) (coe v1)
                  (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
                  (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))
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
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__898 (coe v0) (coe v1)
                     (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__898 (coe v0) (coe v1)
                     (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))
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
                           du__'8746''737'__898 (coe v0) (coe v1)
                           (coe du_mapValues_878 (coe v0) (coe v4) (coe v2))
                           (coe du_mapValues_878 (coe v0) (coe v4) (coe v3))))))
               (coe
                  du_disjoint'45''8746''737''45''8746'_912 (coe v0) (coe v1)
                  (coe
                     du__'738'_550 (coe du_mapValues_878 (coe v0) (coe v4) (coe v2)))
                  (coe
                     du__'738'_550 (coe du_mapValues_878 (coe v0) (coe v4) (coe v3)))
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
               du__'8746''737'''__892 (coe v0) (coe v1)
               (coe du__'738'_550 (coe v2)) (coe du__'738'_550 (coe v3)))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__680 (coe v0)
               (coe du__'738'_550 (coe v2)) (coe du__'738'_550 (coe v3)))
            (coe
               MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v5 -> v4)))
            (coe
               du_disjoint'45''8746''737''45''8746'_912 (coe v0) (coe v1)
               (coe du__'738'_550 (coe v2)) (coe du__'738'_550 (coe v3)) erased)))
-- Axiom.Set.Map.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_1044 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_1044 = erased
-- Axiom.Set.Map.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1066 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1066 = erased
-- Axiom.Set.Map.idMap
d_idMap_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_1074 v0 ~v1 v2 = du_idMap_1074 v0 v2
du_idMap_1074 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_idMap_1074 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398 v0 (coe du_'215''45'dup_474) v1)
      erased
-- Axiom.Set.Map.mapFromFun
d_mapFromFun_1078 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_1078 v0 ~v1 ~v2 v3 v4 = du_mapFromFun_1078 v0 v3 v4
du_mapFromFun_1078 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun_1078 v0 v1 v2
  = coe
      du_mapValues_878 (coe v0) (coe v1)
      (coe du_idMap_1074 (coe v0) (coe v2))
-- Axiom.Set.Map.mapWithKey-uniq
d_mapWithKey'45'uniq_1092 ::
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
d_mapWithKey'45'uniq_1092 = erased
-- Axiom.Set.Map.mapWithKey
d_mapWithKey_1126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_1126 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapWithKey_1126 v0 v4 v5
du_mapWithKey_1126 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapWithKey_1126 v0 v1 v2
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
d_mapValues'45'dom_1144 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_1144 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapValues'45'dom_1144 v0 v4 v5
du_mapValues'45'dom_1144 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues'45'dom_1144 v0 v1 v2
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_582 (coe v0)
         (coe du__'738'_550 (coe v1)) (coe v2))
-- Axiom.Set.Map._∣'_
d__'8739'''__1148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__1148 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739'''__1148 v0 v4 v5
du__'8739'''__1148 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'''__1148 v0 v1 v2
  = coe
      du_filter'7504'_720 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v1)
-- Axiom.Set.Map._∣^'_
d__'8739''94'''__1156 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1156 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__1156 v0 v4 v5
du__'8739''94'''__1156 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1156 v0 v1 v2
  = coe
      du_filter'7504'_720 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe v1)
-- Axiom.Set.Map.constMap
d_constMap_1162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_1162 v0 ~v1 ~v2 v3 v4 = du_constMap_1162 v0 v3 v4
du_constMap_1162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap_1162 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_398 v0
         (\ v3 ->
            coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
         v1)
      erased
-- Axiom.Set.Map.constMap-dom
d_constMap'45'dom_1174 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  AgdaAny -> () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap'45'dom_1174 v0 ~v1 v2 ~v3 v4
  = du_constMap'45'dom_1174 v0 v2 v4
du_constMap'45'dom_1174 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap'45'dom_1174 v0 v1 v2
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
                               du__'738'_550 (coe du_constMap_1162 (coe v0) (coe v1) (coe v2))))
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
                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
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
d_mapPartialLiftKey'45'just'45'uniq_1210 ::
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
d_mapPartialLiftKey'45'just'45'uniq_1210 = erased
-- Axiom.Set.Map.mapPartial-uniq
d_mapPartial'45'uniq_1232 ::
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
d_mapPartial'45'uniq_1232 = erased
-- Axiom.Set.Map.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_1252 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_1252 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey'7504'_1252 v0 v4 v5
du_mapMaybeWithKey'7504'_1252 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapMaybeWithKey'7504'_1252 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_702 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapFromPartialFun
d_mapFromPartialFun_1260 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_1260 v0 ~v1 ~v2 v3 v4
  = du_mapFromPartialFun_1260 v0 v3 v4
du_mapFromPartialFun_1260 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromPartialFun_1260 v0 v1 v2
  = coe
      du_mapMaybeWithKey'7504'_1252 (coe v0) (coe (\ v3 -> v1))
      (coe du_idMap_1074 (coe v0) (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.R.res-dom
d_res'45'dom_1294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1294 v0 ~v1 v2 = du_res'45'dom_1294 v0 v2
du_res'45'dom_1294 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1294 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ_
d__'8746''737'__1328 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1328 v0 ~v1 v2 = du__'8746''737'__1328 v0 v2
du__'8746''737'__1328 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1328 v0 v1 v2 v3 v4
  = coe du__'8746''737'__898 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ'_
d__'8746''737'''__1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1330 v0 ~v1 v2 = du__'8746''737'''__1330 v0 v2
du__'8746''737'''__1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1330 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__892 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1332 ::
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
d_disjoint'45''8746''737''45'mapValues_1332 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1332 v0 v2
du_disjoint'45''8746''737''45'mapValues_1332 ::
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
du_disjoint'45''8746''737''45'mapValues_1332 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_984 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1334 ::
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
d_disjoint'45''8746''737''45''8746'_1334 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1334 v0 v2
du_disjoint'45''8746''737''45''8746'_1334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1334 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_912 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insert
d_insert_1336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1336 v0 ~v1 v2 = du_insert_1336 v0 v2
du_insert_1336 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1336 v0 v1 v2 v3 v4 v5
  = coe du_insert_956 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insertIfJust
d_insertIfJust_1338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1338 v0 ~v1 v2 = du_insertIfJust_1338 v0 v2
du_insertIfJust_1338 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1338 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_964 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1340 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1340 v0 v2
du_singleton'45''8712''45''8746''737'_1340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1340 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_920 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Restrictionᵐ._∣_
d__'8739'__1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__1342 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__1342 v0 v2 v4 v5
du__'8739'__1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__1342 v0 v1 v2 v3
  = coe
      du_'8838''45'map_564
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'__734 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_1350 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_1350 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_1350 v0 v2 v4 v5
du__'8739'_'7580'_1350 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_1350 v0 v1 v2 v3
  = coe
      du_'8838''45'map_564
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_1360 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_1360 v0 ~v1 v2 ~v3 v4
  = du_res'7504''45''8709''7580'_1360 v0 v2 v4
du_res'7504''45''8709''7580'_1360 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_1360 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_836 (coe v0)
      (coe v1) (coe du__'738'_550 (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_1362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_1362 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapValueRestricted_1362 v0 v2 v4 v5 v6
du_mapValueRestricted_1362 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_1362 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__898 (coe v0) (coe v1)
      (coe
         du_mapValues_878 (coe v0) (coe v2)
         (coe du__'8739'__1342 (coe v0) (coe v1) (coe v3) (coe v4)))
      (coe v3)
-- Axiom.Set.Map.Restrictionᵐ.mapSingleValue
d_mapSingleValue_1370 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_1370 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapSingleValue_1370 v0 v2 v4 v5 v6
du_mapSingleValue_1370 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_1370 v0 v1 v2 v3 v4
  = coe
      du_mapValueRestricted_1362 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v4)
-- Axiom.Set.Map.Restrictionᵐ.curryᵐ
d_curry'7504'_1378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_1378 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'7504'_1378 v0 v2 v5 v6
du_curry'7504'_1378 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_1378 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_898 (coe v0) (coe v1)
         (coe du__'738'_550 (coe v2)) (coe v3))
      (coe
         (\ v4 v5 v6 v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
              v5 v6
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_910 (coe v0)
                 (coe v1) (coe du__'738'_550 (coe v2)) (coe v3) (coe v4) (coe v5)
                 (coe v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_910 (coe v0)
                 (coe v1) (coe du__'738'_550 (coe v2)) (coe v3) (coe v4) (coe v6)
                 (coe v8))))
-- Axiom.Set.Map.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_1390 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_res'45'dom'8712'_1390 v0 ~v1 v2 ~v3 v4 ~v5 v6 v7 v8
  = du_res'45'dom'8712'_1390 v0 v2 v4 v6 v7 v8
du_res'45'dom'8712'_1390 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_res'45'dom'8712'_1390 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.du_mk'8660'_2298
      (coe
         (\ v6 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_830 v0 v1
                 (coe du__'738'_550 (coe v4))
                 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v5)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3))
                 v6)
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0) (coe v1)
                 (coe du__'738'_550 (coe v4))
                 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v5) (coe v2)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
                       (coe
                          MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                          (coe
                             MAlonzo.Code.Axiom.Set.d_specification_186 v0 erased erased
                             (coe du__'738'_550 (coe v4))
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v5))
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
                 (coe du__'738'_550 (coe v4))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                    (MAlonzo.Code.Axiom.Set.d_sp_162 (coe v0)) erased erased erased
                    (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v5))
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7)))
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2) (coe v3)))
              (coe MAlonzo.Code.Data.Product.Base.du_swap_370 (coe v6))))
-- Axiom.Set.Map.Restrictionᵐ.res-subset
d_res'45'subset_1394 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_1394 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'subset_1394 v0 v2 v4 v5 v6
du_res'45'subset_1394 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_1394 v0 v1 v2 v3 v4
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
                                           MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0)
                                           (coe v1) (coe du__'738'_550 (coe v3))
                                           (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0 v2)
                                           (coe v6)
                                           (coe
                                              MAlonzo.Code.Function.Bundles.d_to_1724
                                              (coe
                                                 MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
                                                 (coe v0)
                                                 (coe
                                                    du__'738'_550
                                                    (coe
                                                       du__'8739'__1342 (coe v0) (coe v1) (coe v3)
                                                       (coe
                                                          MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0
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
                 du_res'45'dom'8712'_1390 (coe v0) (coe v1)
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
                 (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5)) (coe v3)
                 (coe v2))
              (coe
                 MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v4 v5 v6)
                 (coe
                    MAlonzo.Code.Function.Bundles.d_to_1724
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0) (coe v2)
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5)))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                       (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
                       (coe v6))))))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton
d_res'45'singleton_1436 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_1436 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'singleton_1436 v0 v2 v4 v5 v6
du_res'45'singleton_1436 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_1436 v0 v1 v2 v3 v4
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
                           (coe du__'738'_550 (coe v2)))
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
d_res'45'singleton''_1472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_1472 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''_1472 v0 v2 v4 v5 v6 v7
du_res'45'singleton''_1472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_1472 v0 v1 v2 v3 v4 v5
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
                       (coe du__'738'_550 (coe v2)))
                    v3)
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170 v0
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                    (coe du__'738'_550 (coe v2)) v3
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
d_res'45'singleton'8314'_1488 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'singleton'8314'_1488 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'8314'_1488 v0 v2 v4 v5 v6 v7
du_res'45'singleton'8314'_1488 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'singleton'8314'_1488 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_426 (coe v0)
         (coe du__'738'_550 (coe v2))
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
d_res'45'singleton'45'inhabited_1496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45'singleton'45'inhabited_1496 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'45'inhabited_1496 v0 v2 v4 v5 v6 v7
du_res'45'singleton'45'inhabited_1496 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45'singleton'45'inhabited_1496 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
         (coe du__'738'_550 (coe v2)) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_830 v0 v1
            (coe du__'738'_550 (coe v2))
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v3) v4
            v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_1514 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_1514 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''''_1514 v0 v2 v4 v5 v6 v7
du_res'45'singleton''''_1514 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_1514 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_res'45'singleton_1436 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               du_res'45'singleton'45'inhabited_1496 (coe v0) (coe v1) (coe v2)
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
                     du_res'45'singleton_1436 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe
                        du_res'45'singleton'45'inhabited_1496 (coe v0) (coe v1) (coe v2)
                        (coe v3) (coe v4) (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_res'45'singleton_1436 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe
                     du_res'45'singleton'45'inhabited_1496 (coe v0) (coe v1) (coe v2)
                     (coe v3) (coe v4) (coe v5))))
            v4 v5))
-- Axiom.Set.Map.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_1528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_1528 v0 ~v1 v2
  = du__'10629'_'44''45''10630'_1528 v0 v2
du__'10629'_'44''45''10630'_1528 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_1528 v0 v1 v2 v3 v4 v5
  = coe du_curry'7504'_1378 (coe v0) (coe v1) v4 v5
-- Axiom.Set.Map.Restrictionᵐ.update
d_update_1530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_1530 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_update_1530 v0 v2 v4 v5 v6
du_update_1530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_1530 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_956 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             du__'8739'_'7580'_1350 (coe v0) (coe v1) (coe v4)
             (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.R.res-dom
d_res'45'dom_1568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1568 v0 ~v1 v2 = du_res'45'dom_1568 v0 v2
du_res'45'dom_1568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1568 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ_
d__'8746''737'__1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1602 v0 ~v1 v2 = du__'8746''737'__1602 v0 v2
du__'8746''737'__1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1602 v0 v1 v2 v3 v4
  = coe du__'8746''737'__898 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ'_
d__'8746''737'''__1604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1604 v0 ~v1 v2 = du__'8746''737'''__1604 v0 v2
du__'8746''737'''__1604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1604 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__892 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1606 ::
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
d_disjoint'45''8746''737''45'mapValues_1606 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1606 v0 v2
du_disjoint'45''8746''737''45'mapValues_1606 ::
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
du_disjoint'45''8746''737''45'mapValues_1606 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_984 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1608 ::
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
d_disjoint'45''8746''737''45''8746'_1608 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1608 v0 v2
du_disjoint'45''8746''737''45''8746'_1608 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1608 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_912 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insert
d_insert_1610 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1610 v0 ~v1 v2 = du_insert_1610 v0 v2
du_insert_1610 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1610 v0 v1 v2 v3 v4 v5
  = coe du_insert_956 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insertIfJust
d_insertIfJust_1612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1612 v0 ~v1 v2 = du_insertIfJust_1612 v0 v2
du_insertIfJust_1612 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1612 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_964 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_1614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_1614 v0 ~v1 v2
  = du_singleton'45''8712''45''8746''737'_1614 v0 v2
du_singleton'45''8712''45''8746''737'_1614 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_1614 v0 v1 v2 v3 v4 v5 v6
  = coe
      du_singleton'45''8712''45''8746''737'_920 (coe v0) (coe v1) v2 v4
      v5
-- Axiom.Set.Map.Lookupᵐ._.res-dom
d_res'45'dom_1636 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'dom_1636 v0 ~v1 v2 = du_res'45'dom_1636 v0 v2
du_res'45'dom_1636 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'dom_1636 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764 (coe v0) (coe v1) v3
      v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ
d_lookup'7504'_1680 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504'_1680 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504'_1680 v0 v4 v5 v6
du_lookup'7504'_1680 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504'_1680 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428 (coe v0)
            (coe du__'738'_550 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ?
d_lookup'7504''63'_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_1684 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''63'_1684 v0 v4 v5 v6
du_lookup'7504''63'_1684 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_1684 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v4
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
               -> if coe v5
                    then case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe du_lookup'7504'_1680 (coe v0) (coe v1) (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.pullbackMap
d_pullbackMap_1690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_1690 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_pullbackMap_1690 v0 v5 v6 v7 v8
du_pullbackMap_1690 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_1690 v0 v1 v2 v3 v4
  = coe
      du_mapMaybeWithKey'7504'_1252 (coe v0)
      (coe
         (\ v5 v6 ->
            coe
              du_lookup'7504''63'_1684 (coe v0) (coe v1) (coe v3 v5)
              (coe v2 (coe v3 v5))))
      (coe du_idMap_1074 (coe v0) (coe v4))
-- Axiom.Set.Map.Corestrictionᵐ._∣^_
d__'8739''94'__1718 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__1718 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__1718 v0 v2 v4 v5
du__'8739''94'__1718 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__1718 v0 v1 v2 v3
  = coe
      du_'8838''45'map_564
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1094 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_1726 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_1726 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_1726 v0 v2 v4 v5
du__'8739''94'_'7580'_1726 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_1726 v0 v1 v2 v3
  = coe
      du_'8838''45'map_564
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1100 (coe v0)
              (coe v1) (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._⁻¹_
d__'8315''185'__1734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d__'8315''185'__1734 v0 ~v1 v2 ~v3 v4 v5
  = du__'8315''185'__1734 v0 v2 v4 v5
du__'8315''185'__1734 ::
  MAlonzo.Code.Axiom.Set.T_Theory_94 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du__'8315''185'__1734 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_344 v0
      (coe
         du__'738'_550
         (coe
            du__'8739''94'__1718 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_452 v0 erased v3)))
-- Axiom.Set.Map..generalizedField-A
d_'46'generalizedField'45'A_139687 :: T_GeneralizeTel_139695 -> ()
d_'46'generalizedField'45'A_139687 = erased
-- Axiom.Set.Map..generalizedField-B
d_'46'generalizedField'45'B_139689 :: T_GeneralizeTel_139695 -> ()
d_'46'generalizedField'45'B_139689 = erased
-- Axiom.Set.Map..generalizedField-B'
d_'46'generalizedField'45'B''_139691 ::
  T_GeneralizeTel_139695 -> ()
d_'46'generalizedField'45'B''_139691 = erased
-- Axiom.Set.Map..generalizedField-R
d_'46'generalizedField'45'R_139693 ::
  T_GeneralizeTel_139695 -> AgdaAny
d_'46'generalizedField'45'R_139693 v0
  = case coe v0 of
      C_mkGeneralizeTel_139697 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.GeneralizeTel
d_GeneralizeTel_139695 a0 = ()
newtype T_GeneralizeTel_139695 = C_mkGeneralizeTel_139697 AgdaAny
