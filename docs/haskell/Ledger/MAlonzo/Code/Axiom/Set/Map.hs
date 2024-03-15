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
import qualified MAlonzo.Code.Agda.Builtin.Maybe
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Ext.Properties
import qualified MAlonzo.Code.Data.List.Relation.Unary.Unique.DecSetoid.Properties
import qualified MAlonzo.Code.Data.Product.Base
import qualified MAlonzo.Code.Data.Product.Ext
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Function.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Construct.On
import qualified MAlonzo.Code.Relation.Binary.PropositionalEquality.Properties
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Map._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) v2 v3
-- Axiom.Set.Map._._≡ᵉ_
d__'8801''7497'__20 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8801''7497'__20 = erased
-- Axiom.Set.Map._._⊆_
d__'8838'__24 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d__'8838'__24 = erased
-- Axiom.Set.Map._.disjoint
d_disjoint_44 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_44 = erased
-- Axiom.Set.Map._.finite
d_finite_48 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_finite_48 = erased
-- Axiom.Set.Map._.mapPartial
d_mapPartial_56 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_56 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_558 (coe v0) v3
-- Axiom.Set.Map._.map
d_map_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_58 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_380 (coe v0)
-- Axiom.Set.Map._.spec-∈
d_spec'45''8712'_76 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_76 = erased
-- Axiom.Set.Map._.∅
d_'8709'_90 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_90 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0)
-- Axiom.Set.Map._.❴_❵
d_'10100'_'10101'_122 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_122 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 (coe v0)
-- Axiom.Set.Map._.Rel
d_Rel_134 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_134 = erased
-- Axiom.Set.Map._.dom
d_dom_138 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_138 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 (coe v0)
-- Axiom.Set.Map._.mapPartialLiftKey
d_mapPartialLiftKey_154 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_154 ~v0 = du_mapPartialLiftKey_154
du_mapPartialLiftKey_154 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_154 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_472 v3 v4
-- Axiom.Set.Map._.mapʳ
d_map'691'_158 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_158 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'691'_374 (coe v0) v4 v5
-- Axiom.Set.Map._.mapˡ
d_map'737'_162 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_162 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'737'_368 (coe v0) v4 v5
-- Axiom.Set.Map._._≡_⨿_
d__'8801'_'10815'__228 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__228 = erased
-- Axiom.Set.Map.left-unique
d_left'45'unique_396 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny -> ()
d_left'45'unique_396 = erased
-- Axiom.Set.Map.IsLeftUnique
d_IsLeftUnique_412 a0 a1 a2 a3 = ()
data T_IsLeftUnique_412 = C_IsLeftUnique'46'constructor_2885
-- Axiom.Set.Map.IsLeftUnique.isLeftUnique
d_isLeftUnique_418 ::
  T_IsLeftUnique_412 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_418 = erased
-- Axiom.Set.Map.∅-left-unique
d_'8709''45'left'45'unique_420 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsLeftUnique_412
d_'8709''45'left'45'unique_420 = erased
-- Axiom.Set.Map.⊆-left-unique
d_'8838''45'left'45'unique_426 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_'8838''45'left'45'unique_426 = erased
-- Axiom.Set.Map.left-unique-mapˢ
d_left'45'unique'45'map'738'_438 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'map'738'_438 = erased
-- Axiom.Set.Map.Map
d_Map_452 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_452 = erased
-- Axiom.Set.Map._≡ᵐ_
d__'8801''7504'__458 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__458 = erased
-- Axiom.Set.Map._ˢ
d__'738'_468 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_468 ~v0 ~v1 ~v2 v3 = du__'738'_468 v3
du__'738'_468 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_468 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Axiom.Set.Map._ᵐ
d__'7504'_472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  T_IsLeftUnique_412 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_472 ~v0 ~v1 ~v2 v3 ~v4 = du__'7504'_472 v3
du__'7504'_472 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7504'_472 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Axiom.Set.Map._≡ᵉᵐ_
d__'8801''7497''7504'__478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__478 = erased
-- Axiom.Set.Map.⊆-map
d_'8838''45'map_484 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_484 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8838''45'map_484 v3 v5
du_'8838''45'map_484 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'map_484 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 (coe du__'738'_468 (coe v1))) erased
-- Axiom.Set.Map.ˢ-left-unique
d_'738''45'left'45'unique_492 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_IsLeftUnique_412
d_'738''45'left'45'unique_492 = erased
-- Axiom.Set.Map.∅ᵐ
d_'8709''7504'_498 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_498 v0 ~v1 ~v2 = du_'8709''7504'_498 v0
du_'8709''7504'_498 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''7504'_498 v0
  = coe
      du__'7504'_472 (coe MAlonzo.Code.Axiom.Set.du_'8709'_424 (coe v0))
-- Axiom.Set.Map.fromListᵐ
d_fromList'7504'_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_502 v0 ~v1 ~v2 v3 v4
  = du_fromList'7504'_502 v0 v3 v4
du_fromList'7504'_502 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'7504'_502 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_410 (coe v0)
         (coe
            MAlonzo.Code.Data.List.Base.du_deduplicate_934
            (\ v3 v4 ->
               coe
                 MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 v1
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
            v2))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'8728''8322'__92 erased
              (coe
                 MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_222
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_934
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       v2)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
                 (coe
                    MAlonzo.Code.Data.List.Ext.Properties.du_AllPairs'8658''8801''8744'R'8744'R'7506''7510'_78
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_934
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       v2)
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
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_222
                    (coe v0)
                    (coe
                       MAlonzo.Code.Data.List.Base.du_deduplicate_934
                       (coe
                          MAlonzo.Code.Relation.Binary.Construct.On.du_decidable_102
                          (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v1)))
                       v2)
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))))))
-- Axiom.Set.Map.FinMap
d_FinMap_520 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_FinMap_520 = erased
-- Axiom.Set.Map.toFinMap
d_toFinMap_530 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_530 ~v0 ~v1 ~v2 v3 v4 = du_toFinMap_530 v3 v4
du_toFinMap_530 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toFinMap_530 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toMap
d_toMap_538 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_538 ~v0 ~v1 ~v2 v3 = du_toMap_538 v3
du_toMap_538 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_538 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toRel
d_toRel_544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_544 ~v0 ~v1 ~v2 v3 = du_toRel_544 v3
du_toRel_544 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_544 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe seq (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__596 v0 ~v1 ~v2 v3 v4 v5
  = du__'8745''7504'__596 v0 v3 v4 v5
du__'8745''7504'__596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__596 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686 (coe v0) (coe v1)
         (coe du__'738'_468 (coe v2)) (coe du__'738'_468 (coe v3)))
      erased
-- Axiom.Set.Map.disj-∪
d_disj'45''8746'_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_606 v0 ~v1 ~v2 v3 v4 ~v5
  = du_disj'45''8746'_606 v0 v3 v4
du_disj'45''8746'_606 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746'_606 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0)
         (coe du__'738'_468 (coe v1)) (coe du__'738'_468 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ
d_filter'7504'_638 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_638 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504'_638 v0 v4 v5
du_filter'7504'_638 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_638 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_402 v0 v1
         (coe du__'738'_468 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ-finite
d_filter'7504''45'finite_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'finite_648 v0 ~v1 ~v2 v3 ~v4
  = du_filter'7504''45'finite_648 v0 v3
du_filter'7504''45'finite_648 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'finite_648 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_526 (coe v0)
      (coe du__'738'_468 (coe v1))
-- Axiom.Set.Map.filterKeys
d_filterKeys_652 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_652 v0 ~v1 ~v2 ~v3 v4 = du_filterKeys_652 v0 v4
du_filterKeys_652 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_652 v0 v1
  = coe
      du_filter'7504'_638 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v1
         (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Axiom.Set.Map.singletonᵐ
d_singleton'7504'_656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_656 v0 ~v1 ~v2 v3 v4
  = du_singleton'7504'_656 v0 v3 v4
du_singleton'7504'_656 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'7504'_656 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              erased
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))))
-- Axiom.Set.Map.❴_❵ᵐ
d_'10100'_'10101''7504'_664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_664 v0 ~v1 ~v2 v3
  = du_'10100'_'10101''7504'_664 v0 v3
du_'10100'_'10101''7504'_664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'10100'_'10101''7504'_664 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_singleton'7504'_656 (coe v0) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ._∪ˡ'_
d__'8746''737'''__676 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__676 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'''__676 v0 v2 v4 v5
du__'8746''737'''__676 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__676 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__662 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_402 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 v2)))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Axiom.Set.Map.Unionᵐ._∪ˡ_
d__'8746''737'__682 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__682 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'__682 v0 v2 v4 v5
du__'8746''737'__682 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__682 v0 v1 v2 v3
  = coe
      du_disj'45''8746'_606 (coe v0) (coe v2)
      (coe
         du_filter'7504'_638 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_380 v0
                     (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                     (coe du__'738'_468 (coe v2)))))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe v3))
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_696 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_696 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_disjoint'45''8746''737''45''8746'_696 v0 v2 v4 v5 v6
du_disjoint'45''8746''737''45''8746'_696 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_696 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Function.Bundles.d_from_1726
      (coe
         MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244)
      (\ v5 ->
         coe
           MAlonzo.Code.Function.Bundles.du_mk'8660'_2296
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210
                 (coe v0) (coe v2) (coe v3) (coe v5))
              (coe
                 MAlonzo.Code.Function.Base.du__'8728''8242'__216
                 (coe
                    MAlonzo.Code.Data.Sum.Base.du_map'8322'_94
                    (coe
                       MAlonzo.Code.Function.Base.du__'8728''8242'__216
                       (coe (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
                       (coe
                          MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_192
                          (coe v0) (coe v3)
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 v2)))
                             (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe v5))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_208
                    (coe v0) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_filter_402 v0
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                          (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                             (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 v2)))
                          (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                       v3)
                    (coe v5))))
           (coe
              MAlonzo.Code.Function.Base.du__'8728''8242'__216
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_210
                 (coe v0) (coe v2)
                 (coe
                    MAlonzo.Code.Axiom.Set.du_filter_402 v0
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                          (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                          (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 v2)))
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
                               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408 (coe v0) (coe v3)
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                     (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0 v2)))
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
                                            MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_174
                                            (coe v0)
                                            (coe
                                               (\ v9 ->
                                                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                                                    (coe v9)))
                                            (coe v3) (coe v5) (coe v7))))
                                 (coe v7))))
                      (coe
                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_208 v0
                         v2 v3 v5 v6)))))
-- Axiom.Set.Map.Unionᵐ.insert
d_insert_704 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_704 v0 ~v1 v2 ~v3 v4 v5 v6 = du_insert_704 v0 v2 v4 v5 v6
du_insert_704 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_704 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__682 (coe v0) (coe v1)
      (coe
         du_'10100'_'10101''7504'_664 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe v2)
-- Axiom.Set.Map.Unionᵐ.insertIfJust
d_insertIfJust_712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_712 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_insertIfJust_712 v0 v2 v5 v6 v7
du_insertIfJust_712 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_712 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_704 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.disj-dom
d_disj'45'dom_730 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_730 = erased
-- Axiom.Set.Map._.∈mᵢ⇒∈m
d_'8712'm'7522''8658''8712'm_764 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_'8712'm'7522''8658''8712'm_764 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                 ~v9 ~v10 ~v11 ~v12 ~v13 v14 ~v15 v16 v17
  = du_'8712'm'7522''8658''8712'm_764 v0 v4 v8 v14 v16 v17
du_'8712'm'7522''8658''8712'm_764 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712'm'7522''8658''8712'm_764 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v4))
         v5)
-- Axiom.Set.Map.InjectiveOn
d_InjectiveOn_774 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_774 = erased
-- Axiom.Set.Map.weaken-Injective
d_weaken'45'Injective_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_weaken'45'Injective_788 = erased
-- Axiom.Set.Map.mapˡ-uniq
d_map'737''45'uniq_796 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_map'737''45'uniq_796 = erased
-- Axiom.Set.Map.mapʳ-uniq
d_map'691''45'uniq_820 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_map'691''45'uniq_820 = erased
-- Axiom.Set.Map.mapKeys
d_mapKeys_840 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_mapKeys_840 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_mapKeys_840 v0 v4 v5
du_mapKeys_840 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapKeys_840 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'737'_368 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_852 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_852 = erased
-- Axiom.Set.Map.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_874 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_874 = erased
-- Axiom.Set.Map.idMap
d_idMap_882 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_882 v0 ~v1 v2 = du_idMap_882 v0 v2
du_idMap_882 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_idMap_882 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380 v0
         (coe MAlonzo.Code.Data.Product.Ext.du_'215''45'dup_10) v1)
      erased
-- Axiom.Set.Map.mapValues
d_mapValues_886 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_886 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapValues_886 v0 v4 v5
du_mapValues_886 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues_886 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_map'691'_374 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapFromFun
d_mapFromFun_894 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_894 v0 ~v1 ~v2 v3 v4 = du_mapFromFun_894 v0 v3 v4
du_mapFromFun_894 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun_894 v0 v1 v2
  = coe
      du_mapValues_886 (coe v0) (coe v1)
      (coe du_idMap_882 (coe v0) (coe v2))
-- Axiom.Set.Map.mapWithKey-uniq
d_mapWithKey'45'uniq_908 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_mapWithKey'45'uniq_908 = erased
-- Axiom.Set.Map.mapWithKey
d_mapWithKey_942 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_942 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapWithKey_942 v0 v4 v5
du_mapWithKey_942 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapWithKey_942 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.du_map_380 v0
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
d_mapValues'45'dom_960 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_960 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapValues'45'dom_960 v0 v4 v5
du_mapValues'45'dom_960 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues'45'dom_960 v0 v1 v2
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_462 (coe v0)
         (coe du__'738'_468 (coe v1)) (coe v2))
-- Axiom.Set.Map._∣'_
d__'8739'''__964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__964 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8739'''__964 v0 v4 v5
du__'8739'''__964 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'''__964 v0 v1 v2
  = coe
      du_filter'7504'_638 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v1)
-- Axiom.Set.Map._↾'_
d__'8638'''__972 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'''__972 v0 ~v1 ~v2 ~v3 v4 v5 = du__'8638'''__972 v0 v4 v5
du__'8638'''__972 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'''__972 v0 v1 v2
  = coe
      du_filter'7504'_638 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe v1)
-- Axiom.Set.Map.constMap
d_constMap_978 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_978 v0 ~v1 ~v2 v3 v4 = du_constMap_978 v0 v3 v4
du_constMap_978 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap_978 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_380 v0
         (\ v3 ->
            coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
         v1)
      erased
-- Axiom.Set.Map.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_992 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_mapPartialLiftKey'45'just'45'uniq_992 = erased
-- Axiom.Set.Map.mapPartial-uniq
d_mapPartial'45'uniq_1014 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_mapPartial'45'uniq_1014 = erased
-- Axiom.Set.Map.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_1034 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_1034 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey'7504'_1034 v0 v4 v5
du_mapMaybeWithKey'7504'_1034 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapMaybeWithKey'7504'_1034 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_532 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ_
d__'8746''737'__1094 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1094 v0 ~v1 v2 = du__'8746''737'__1094 v0 v2
du__'8746''737'__1094 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1094 v0 v1 v2 v3 v4
  = coe du__'8746''737'__682 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ'_
d__'8746''737'''__1096 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1096 v0 ~v1 v2 = du__'8746''737'''__1096 v0 v2
du__'8746''737'''__1096 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1096 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__676 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1098 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1098 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1098 v0 v2
du_disjoint'45''8746''737''45''8746'_1098 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1098 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_696 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insert
d_insert_1100 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1100 v0 ~v1 v2 = du_insert_1100 v0 v2
du_insert_1100 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1100 v0 v1 v2 v3 v4 v5
  = coe du_insert_704 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insertIfJust
d_insertIfJust_1102 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1102 v0 ~v1 v2 = du_insertIfJust_1102 v0 v2
du_insertIfJust_1102 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1102 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_712 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._∣_
d__'8739'__1104 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__1104 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__1104 v0 v2 v4 v5
du__'8739'__1104 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__1104 v0 v1 v2 v3
  = coe
      du_'8838''45'map_484
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'__564 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_1112 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_1112 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_1112 v0 v2 v4 v5
du__'8739'_'7580'_1112 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_1112 v0 v1 v2 v3
  = coe
      du_'8838''45'map_484
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_570 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_1120 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_1120 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapValueRestricted_1120 v0 v2 v4 v5 v6
du_mapValueRestricted_1120 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_1120 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__682 (coe v0) (coe v1)
      (coe
         du_mapValues_886 (coe v0) (coe v2)
         (coe du__'8739'__1104 (coe v0) (coe v1) (coe v3) (coe v4)))
      (coe v3)
-- Axiom.Set.Map.Restrictionᵐ.mapSingleValue
d_mapSingleValue_1128 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_1128 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapSingleValue_1128 v0 v2 v4 v5 v6
du_mapSingleValue_1128 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_1128 v0 v1 v2 v3 v4
  = coe
      du_mapValueRestricted_1120 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v4)
-- Axiom.Set.Map.Restrictionᵐ.curryᵐ
d_curry'7504'_1136 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_1136 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'7504'_1136 v0 v2 v5 v6
du_curry'7504'_1136 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_1136 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_698 (coe v0) (coe v1)
         (coe du__'738'_468 (coe v2)) (coe v3))
      (coe
         (\ v4 v5 v6 v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
              v5 v6
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_710 (coe v0)
                 (coe v1) (coe du__'738'_468 (coe v2)) (coe v3) (coe v4) (coe v5)
                 (coe v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_710 (coe v0)
                 (coe v1) (coe du__'738'_468 (coe v2)) (coe v3) (coe v4) (coe v6)
                 (coe v8))))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton
d_res'45'singleton_1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_1150 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'singleton_1150 v0 v2 v4 v5 v6
du_res'45'singleton_1150 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_1150 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_162 v0
                     (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                     (coe du__'738'_468 (coe v2)) v3 v4 in
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
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
                                                   (coe v0) (coe v14) (coe v8))
                                                erased))
                                        (coe
                                           (\ v14 v15 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_194
                                                v0 v5
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
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
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
                                                         (coe v0) (coe v10) (coe v10))
                                                      erased)
                                                   (coe v13)))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Restrictionᵐ.res-singleton'
d_res'45'singleton''_1186 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_1186 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''_1186 v0 v2 v4 v5 v6 v7
du_res'45'singleton''_1186 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_1186 v0 v1 v2 v3 v4 v5
  = let v6
          = coe
              du_res'45'singleton_1150 (coe v0) (coe v1) (coe v2) (coe v3)
              (coe
                 MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_166 v0
                 (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6))
                 (coe du__'738'_468 (coe v2)) v3
                 (coe
                    MAlonzo.Code.Data.Product.Base.du_'45''44'__92
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 erased (coe v5)))) in
    coe
      (case coe v6 of
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v7 v8 -> coe v8
         _ -> MAlonzo.RTE.mazUnreachableError)
-- Axiom.Set.Map.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_1198 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_1198 v0 ~v1 v2
  = du__'10629'_'44''45''10630'_1198 v0 v2
du__'10629'_'44''45''10630'_1198 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_1198 v0 v1 v2 v3 v4 v5
  = coe du_curry'7504'_1136 (coe v0) (coe v1) v4 v5
-- Axiom.Set.Map.Restrictionᵐ.update
d_update_1200 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_1200 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_update_1200 v0 v2 v4 v5 v6
du_update_1200 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_1200 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_704 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             du__'8739'_'7580'_1112 (coe v0) (coe v1) (coe v4)
             (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ_
d__'8746''737'__1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1264 v0 ~v1 v2 = du__'8746''737'__1264 v0 v2
du__'8746''737'__1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1264 v0 v1 v2 v3 v4
  = coe du__'8746''737'__682 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ'_
d__'8746''737'''__1266 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1266 v0 ~v1 v2 = du__'8746''737'''__1266 v0 v2
du__'8746''737'''__1266 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1266 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__676 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1268 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_1268 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1268 v0 v2
du_disjoint'45''8746''737''45''8746'_1268 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1268 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_696 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insert
d_insert_1270 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1270 v0 ~v1 v2 = du_insert_1270 v0 v2
du_insert_1270 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1270 v0 v1 v2 v3 v4 v5
  = coe du_insert_704 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insertIfJust
d_insertIfJust_1272 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1272 v0 ~v1 v2 = du_insertIfJust_1272 v0 v2
du_insertIfJust_1272 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1272 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_712 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ
d_lookup'7504'_1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504'_1330 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504'_1330 v0 v4 v5 v6
du_lookup'7504'_1330 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504'_1330 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_384 (coe v0)
            (coe du__'738'_468 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ?
d_lookup'7504''63'_1334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_1334 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''63'_1334 v0 v4 v5 v6
du_lookup'7504''63'_1334 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_1334 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v4
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
               -> if coe v5
                    then case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe du_lookup'7504'_1330 (coe v0) (coe v1) (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.pullbackMap
d_pullbackMap_1340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_1340 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_pullbackMap_1340 v0 v5 v6 v7 v8
du_pullbackMap_1340 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_1340 v0 v1 v2 v3 v4
  = coe
      du_mapMaybeWithKey'7504'_1034 (coe v0)
      (coe
         (\ v5 v6 ->
            coe
              du_lookup'7504''63'_1334 (coe v0) (coe v1) (coe v3 v5)
              (coe v2 (coe v3 v5))))
      (coe du_idMap_882 (coe v0) (coe v4))
-- Axiom.Set.Map.Corestrictionᵐ._↾_
d__'8638'__1368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'__1368 v0 ~v1 v2 ~v3 v4 v5 = du__'8638'__1368 v0 v2 v4 v5
du__'8638'__1368 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'__1368 v0 v1 v2 v3
  = coe
      du_'8838''45'map_484
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8638'__892 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._↾_ᶜ
d__'8638'_'7580'_1376 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8638'_'7580'_1376 v0 ~v1 v2 ~v3 v4 v5
  = du__'8638'_'7580'_1376 v0 v2 v4 v5
du__'8638'_'7580'_1376 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8638'_'7580'_1376 v0 v1 v2 v3
  = coe
      du_'8838''45'map_484
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8638'_'7580'_898 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._⁻¹_
d__'8315''185'__1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d__'8315''185'__1384 v0 ~v1 v2 ~v3 v4 v5
  = du__'8315''185'__1384 v0 v2 v4 v5
du__'8315''185'__1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du__'8315''185'__1384 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_300 v0
      (coe
         du__'738'_468
         (coe
            du__'8638'__1368 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434 v0 erased v3)))
-- Axiom.Set.Map..generalizedField-A
d_'46'generalizedField'45'A_122615 :: T_GeneralizeTel_122623 -> ()
d_'46'generalizedField'45'A_122615 = erased
-- Axiom.Set.Map..generalizedField-B
d_'46'generalizedField'45'B_122617 :: T_GeneralizeTel_122623 -> ()
d_'46'generalizedField'45'B_122617 = erased
-- Axiom.Set.Map..generalizedField-B'
d_'46'generalizedField'45'B''_122619 ::
  T_GeneralizeTel_122623 -> ()
d_'46'generalizedField'45'B''_122619 = erased
-- Axiom.Set.Map..generalizedField-R
d_'46'generalizedField'45'R_122621 ::
  T_GeneralizeTel_122623 -> AgdaAny
d_'46'generalizedField'45'R_122621
  = MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.GeneralizeTel
d_GeneralizeTel_122623 a0 = ()
newtype T_GeneralizeTel_122623 = C_mkGeneralizeTel_122625 AgdaAny
