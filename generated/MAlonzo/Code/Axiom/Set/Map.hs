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
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Base.Single
import qualified MAlonzo.Code.Relation.Binary.Reasoning.Syntax
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.Relation.Nullary.Reflects

-- Axiom.Set.Map._._∪_
d__'8746'__18 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746'__18 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0) v2 v3
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
d_disjoint_46 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> ()
d_disjoint_46 = erased
-- Axiom.Set.Map._.finite
d_finite_50 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> ()
d_finite_50 = erased
-- Axiom.Set.Map._.mapPartial
d_mapPartial_58 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> AgdaAny
d_mapPartial_58 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.du_mapPartial_564 (coe v0) v3
-- Axiom.Set.Map._.map
d_map_60 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map_60 v0 v1 v2 = coe MAlonzo.Code.Axiom.Set.du_map_386 (coe v0)
-- Axiom.Set.Map._.spec-∈
d_spec'45''8712'_78 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> ()
d_spec'45''8712'_78 = erased
-- Axiom.Set.Map._.∅
d_'8709'_92 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny
d_'8709'_92 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0)
-- Axiom.Set.Map._.❴_❵
d_'10100'_'10101'_124 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> AgdaAny -> AgdaAny
d_'10100'_'10101'_124 v0
  = coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 (coe v0)
-- Axiom.Set.Map._.Rel
d_Rel_138 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Rel_138 = erased
-- Axiom.Set.Map._.dom
d_dom_142 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> AgdaAny
d_dom_142 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 (coe v0)
-- Axiom.Set.Map._.mapPartialLiftKey
d_mapPartialLiftKey_170 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_170 ~v0 = du_mapPartialLiftKey_170
du_mapPartialLiftKey_170 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapPartialLiftKey_170 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_586 v3 v4
-- Axiom.Set.Map._.mapʳ
d_map'691'_174 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'691'_174 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) v4 v5
-- Axiom.Set.Map._.mapˡ
d_map'737'_178 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> () -> (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_map'737'_178 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Rel.du_map'737'_406 (coe v0) v4 v5
-- Axiom.Set.Map._._≡_⨿_
d__'8801'_'10815'__260 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> AgdaAny -> AgdaAny -> ()
d__'8801'_'10815'__260 = erased
-- Axiom.Set.Map.left-unique
d_left'45'unique_462 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> AgdaAny -> ()
d_left'45'unique_462 = erased
-- Axiom.Set.Map.IsLeftUnique
d_IsLeftUnique_478 a0 a1 a2 a3 = ()
data T_IsLeftUnique_478 = C_IsLeftUnique'46'constructor_3219
-- Axiom.Set.Map.IsLeftUnique.isLeftUnique
d_isLeftUnique_484 ::
  T_IsLeftUnique_478 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_484 = erased
-- Axiom.Set.Map.∅-left-unique
d_'8709''45'left'45'unique_486 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> T_IsLeftUnique_478
d_'8709''45'left'45'unique_486 = erased
-- Axiom.Set.Map.⊆-left-unique
d_'8838''45'left'45'unique_492 ::
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
d_'8838''45'left'45'unique_492 = erased
-- Axiom.Set.Map.left-unique-mapˢ
d_left'45'unique'45'map'738'_504 ::
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
d_left'45'unique'45'map'738'_504 = erased
-- Axiom.Set.Map.Map
d_Map_518 :: MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_Map_518 = erased
-- Axiom.Set.Map._≡ᵐ_
d__'8801''7504'__524 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__524 = erased
-- Axiom.Set.Map._ˢ
d__'738'_534 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d__'738'_534 ~v0 ~v1 ~v2 v3 = du__'738'_534 v3
du__'738'_534 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du__'738'_534 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v0)
-- Axiom.Set.Map._ᵐ
d__'7504'_538 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  AgdaAny ->
  T_IsLeftUnique_478 -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_538 ~v0 ~v1 ~v2 v3 ~v4 = du__'7504'_538 v3
du__'7504'_538 :: AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7504'_538 v0
  = coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0) erased
-- Axiom.Set.Map._≡ᵉᵐ_
d__'8801''7497''7504'__544 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__544 = erased
-- Axiom.Set.Map.⊆-map
d_'8838''45'map_550 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_550 ~v0 ~v1 ~v2 v3 ~v4 v5
  = du_'8838''45'map_550 v3 v5
du_'8838''45'map_550 ::
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8838''45'map_550 v0 v1
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 (coe du__'738'_534 (coe v1))) erased
-- Axiom.Set.Map.ˢ-left-unique
d_'738''45'left'45'unique_558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> T_IsLeftUnique_478
d_'738''45'left'45'unique_558 = erased
-- Axiom.Set.Map.∅ᵐ
d_'8709''7504'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_564 v0 ~v1 ~v2 = du_'8709''7504'_564 v0
du_'8709''7504'_564 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8709''7504'_564 v0
  = coe
      du__'7504'_538 (coe MAlonzo.Code.Axiom.Set.du_'8709'_430 (coe v0))
-- Axiom.Set.Map.fromListᵐ
d_fromList'7504'_568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_568 v0 ~v1 ~v2 v3 v4
  = du_fromList'7504'_568 v0 v3 v4
du_fromList'7504'_568 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_fromList'7504'_568 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_fromList_416 (coe v0)
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
d_FinMap_586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 -> () -> () -> ()
d_FinMap_586 = erased
-- Axiom.Set.Map.toFinMap
d_toFinMap_596 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_596 ~v0 ~v1 ~v2 v3 v4 = du_toFinMap_596 v3 v4
du_toFinMap_596 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toFinMap_596 v0 v1
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
             (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toMap
d_toMap_604 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_604 ~v0 ~v1 ~v2 v3 = du_toMap_604 v3
du_toMap_604 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_toMap_604 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> case coe v2 of
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
               -> coe
                    MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v3)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.toRel
d_toRel_610 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_toRel_610 ~v0 ~v1 ~v2 v3 = du_toRel_610 v3
du_toRel_610 :: MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_toRel_610 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe seq (coe v2) (coe v1)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__664 v0 ~v1 ~v2 v3 v4 v5
  = du__'8745''7504'__664 v0 v3 v4 v5
du__'8745''7504'__664 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__664 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__692 (coe v0) (coe v1)
         (coe du__'738'_534 (coe v2)) (coe du__'738'_534 (coe v3)))
      erased
-- Axiom.Set.Map.disj-∪
d_disj'45''8746'_674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_674 v0 ~v1 ~v2 v3 v4 ~v5
  = du_disj'45''8746'_674 v0 v3 v4
du_disj'45''8746'_674 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disj'45''8746'_674 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
         (coe du__'738'_534 (coe v1)) (coe du__'738'_534 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ
d_filter'7504'_706 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_706 v0 ~v1 ~v2 ~v3 v4 v5
  = du_filter'7504'_706 v0 v4 v5
du_filter'7504'_706 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_706 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_408 v0 v1
         (coe du__'738'_534 (coe v2)))
      erased
-- Axiom.Set.Map.filterᵐ-finite
d_filter'7504''45'finite_716 ::
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
d_filter'7504''45'finite_716 v0 ~v1 ~v2 v3 ~v4
  = du_filter'7504''45'finite_716 v0 v3
du_filter'7504''45'finite_716 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504''45'finite_716 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_650 (coe v0)
      (coe du__'738'_534 (coe v1))
-- Axiom.Set.Map.filterKeys
d_filterKeys_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_720 v0 ~v1 ~v2 ~v3 v4 = du_filterKeys_720 v0 v4
du_filterKeys_720 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_720 v0 v1
  = coe
      du_filter'7504'_706 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v1
         (\ v2 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
-- Axiom.Set.Map.singletonᵐ
d_singleton'7504'_724 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_724 v0 ~v1 ~v2 v3 v4
  = du_singleton'7504'_724 v0 v3 v4
du_singleton'7504'_724 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'7504'_724 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2)))
      (coe
         (\ v3 v4 v5 ->
            coe
              MAlonzo.Code.Function.Base.du__'45''10216'_'10217''45'__320
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))
              erased
              (coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0)
                    (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v5))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1) (coe v2))))))
-- Axiom.Set.Map.❴_❵ᵐ
d_'10100'_'10101''7504'_732 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_732 v0 ~v1 ~v2 v3
  = du_'10100'_'10101''7504'_732 v0 v3
du_'10100'_'10101''7504'_732 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'10100'_'10101''7504'_732 v0 v1
  = case coe v1 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v2 v3
        -> coe du_singleton'7504'_724 (coe v0) (coe v2) (coe v3)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.disj-dom
d_disj'45'dom_744 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_744 = erased
-- Axiom.Set.Map._.∈mᵢ⇒∈m
d_'8712'm'7522''8658''8712'm_778 ::
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
d_'8712'm'7522''8658''8712'm_778 v0 ~v1 ~v2 ~v3 v4 ~v5 ~v6 ~v7 v8
                                 ~v9 ~v10 ~v11 ~v12 ~v13 v14 ~v15 v16 v17
  = du_'8712'm'7522''8658''8712'm_778 v0 v4 v8 v14 v16 v17
du_'8712'm'7522''8658''8712'm_778 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 -> AgdaAny
du_'8712'm'7522''8658''8712'm_778 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v3 v4
      (coe
         MAlonzo.Code.Function.Bundles.d_to_1724
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_676 (coe v0)
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
            (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v1)) (coe v4))
         v5)
-- Axiom.Set.Map.InjectiveOn
d_InjectiveOn_788 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> () -> AgdaAny -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_788 = erased
-- Axiom.Set.Map.weaken-Injective
d_weaken'45'Injective_802 ::
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
d_weaken'45'Injective_802 = erased
-- Axiom.Set.Map.mapˡ-uniq
d_map'737''45'uniq_810 ::
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
d_map'737''45'uniq_810 = erased
-- Axiom.Set.Map.mapʳ-uniq
d_map'691''45'uniq_834 ::
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
d_map'691''45'uniq_834 = erased
-- Axiom.Set.Map.mapKeys
d_mapKeys_854 ::
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
d_mapKeys_854 v0 ~v1 ~v2 ~v3 v4 v5 ~v6 = du_mapKeys_854 v0 v4 v5
du_mapKeys_854 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapKeys_854 v0 v1 v2
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
d_mapValues_864 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_864 v0 ~v1 ~v2 ~v3 v4 v5 = du_mapValues_864 v0 v4 v5
du_mapValues_864 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues_864 v0 v1 v2
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
d__'8746''737'''__878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__878 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'''__878 v0 v2 v4 v5
du__'8746''737'''__878 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__878 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0) (coe v2)
      (coe
         MAlonzo.Code.Axiom.Set.du_filter_408 v0
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         v3)
-- Axiom.Set.Map.Unionᵐ._∪ˡ_
d__'8746''737'__884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__884 v0 ~v1 v2 ~v3 v4 v5
  = du__'8746''737'__884 v0 v2 v4 v5
du__'8746''737'__884 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__884 v0 v1 v2 v3
  = coe
      du_disj'45''8746'_674 (coe v0) (coe v2)
      (coe
         du_filter'7504'_706 (coe v0)
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
               (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
               (coe
                  v1
                  (coe
                     MAlonzo.Code.Axiom.Set.du_map_386 v0
                     (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4))
                     (coe du__'738'_534 (coe v2)))))
            (\ v4 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
         (coe v3))
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_898 ::
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
d_disjoint'45''8746''737''45''8746'_898 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_disjoint'45''8746''737''45''8746'_898 v0 v2 v4 v5 v6
du_disjoint'45''8746''737''45''8746'_898 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_898 v0 v1 v2 v3 v4
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
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                             (coe
                                MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                (coe v1 (coe MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0 v2)))
                             (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
                          (coe v5))))
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
                    (coe v0) (coe v2)
                    (coe
                       MAlonzo.Code.Axiom.Set.du_filter_408 v0
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                          (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                          (coe
                             MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                             (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
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
                    MAlonzo.Code.Axiom.Set.du_filter_408 v0
                    (coe
                       MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                       (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                       (coe
                          MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                          (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
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
                               MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414 (coe v0) (coe v3)
                               (coe
                                  MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                  (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
                                  (coe
                                     MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
                                     (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
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
-- Axiom.Set.Map.Unionᵐ.insert
d_insert_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_906 v0 ~v1 v2 ~v3 v4 v5 v6 = du_insert_906 v0 v2 v4 v5 v6
du_insert_906 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_906 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__884 (coe v0) (coe v1)
      (coe
         du_'10100'_'10101''7504'_732 (coe v0)
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe v2)
-- Axiom.Set.Map.Unionᵐ.insertIfJust
d_insertIfJust_914 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_914 v0 ~v1 v2 ~v3 ~v4 v5 v6 v7
  = du_insertIfJust_914 v0 v2 v5 v6 v7
du_insertIfJust_914 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_914 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_906 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_934 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_disjoint'45''8746''737''45'mapValues_934 v0 ~v1 v2 ~v3 ~v4 v5 v6
                                           v7 ~v8
  = du_disjoint'45''8746''737''45'mapValues_934 v0 v2 v5 v6 v7
du_disjoint'45''8746''737''45'mapValues_934 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_934 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Relation.Binary.Reasoning.Syntax.du_begin__46
      (\ v5 v6 v7 ->
         coe
           MAlonzo.Code.Relation.Binary.Reasoning.Base.Single.du_start_36 v7)
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_mapValues_864 (coe v0) (coe v4)
            (coe du__'8746''737'__884 (coe v0) (coe v1) (coe v2) (coe v3))))
      (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du__'8746''737'__884 (coe v0) (coe v1)
            (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
            (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))
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
               du_mapValues_864 (coe v0) (coe v4)
               (coe du__'8746''737'__884 (coe v0) (coe v1) (coe v2) (coe v3))))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
               (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (coe
               du__'8746''737'__884 (coe v0) (coe v1)
               (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
               (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))
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
                  MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2))
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
               (coe
                  MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                  (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
            (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
               (coe
                  du__'8746''737'__884 (coe v0) (coe v1)
                  (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
                  (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))
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
                  MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2)))
                  (coe
                     MAlonzo.Code.Axiom.Set.Rel.du_map'691'_412 (coe v0) (coe v4)
                     (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__884 (coe v0) (coe v1)
                     (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))
               (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du__'8746''737'__884 (coe v0) (coe v1)
                     (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
                     (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))
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
                           du__'8746''737'__884 (coe v0) (coe v1)
                           (coe du_mapValues_864 (coe v0) (coe v4) (coe v2))
                           (coe du_mapValues_864 (coe v0) (coe v4) (coe v3))))))
               (coe
                  du_disjoint'45''8746''737''45''8746'_898 (coe v0) (coe v1)
                  (coe
                     du__'738'_534 (coe du_mapValues_864 (coe v0) (coe v4) (coe v2)))
                  (coe
                     du__'738'_534 (coe du_mapValues_864 (coe v0) (coe v4) (coe v3)))
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
               du__'8746''737'''__878 (coe v0) (coe v1)
               (coe du__'738'_534 (coe v2)) (coe du__'738'_534 (coe v3)))
            (coe
               MAlonzo.Code.Axiom.Set.du__'8746'__668 (coe v0)
               (coe du__'738'_534 (coe v2)) (coe du__'738'_534 (coe v3)))
            (coe
               MAlonzo.Code.Data.Product.Base.du_map'8322'_150 (coe (\ v5 -> v4)))
            (coe
               du_disjoint'45''8746''737''45''8746'_898 (coe v0) (coe v1)
               (coe du__'738'_534 (coe v2)) (coe du__'738'_534 (coe v3)) erased)))
-- Axiom.Set.Map.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_994 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_994 = erased
-- Axiom.Set.Map.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1016 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_1016 = erased
-- Axiom.Set.Map.idMap
d_idMap_1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_1024 v0 ~v1 v2 = du_idMap_1024 v0 v2
du_idMap_1024 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_idMap_1024 v0 v1
  = coe
      MAlonzo.Code.Data.Product.Base.du_'45''44'__92
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386 v0
         (coe MAlonzo.Code.Data.Product.Ext.du_'215''45'dup_10) v1)
      erased
-- Axiom.Set.Map.mapFromFun
d_mapFromFun_1028 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_1028 v0 ~v1 ~v2 v3 v4 = du_mapFromFun_1028 v0 v3 v4
du_mapFromFun_1028 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromFun_1028 v0 v1 v2
  = coe
      du_mapValues_864 (coe v0) (coe v1)
      (coe du_idMap_1024 (coe v0) (coe v2))
-- Axiom.Set.Map.mapWithKey-uniq
d_mapWithKey'45'uniq_1042 ::
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
d_mapWithKey'45'uniq_1042 = erased
-- Axiom.Set.Map.mapWithKey
d_mapWithKey_1076 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_1076 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapWithKey_1076 v0 v4 v5
du_mapWithKey_1076 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapWithKey_1076 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.du_map_386 v0
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
d_mapValues'45'dom_1094 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_1094 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapValues'45'dom_1094 v0 v4 v5
du_mapValues'45'dom_1094 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValues'45'dom_1094 v0 v1 v2
  = coe
      seq (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_576 (coe v0)
         (coe du__'738'_534 (coe v1)) (coe v2))
-- Axiom.Set.Map._∣'_
d__'8739'''__1098 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__1098 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739'''__1098 v0 v4 v5
du__'8739'''__1098 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'''__1098 v0 v1 v2
  = coe
      du_filter'7504'_706 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v1)
-- Axiom.Set.Map._∣^'_
d__'8739''94'''__1106 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1106 v0 ~v1 ~v2 ~v3 v4 v5
  = du__'8739''94'''__1106 v0 v4 v5
du__'8739''94'''__1106 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1106 v0 v1 v2
  = coe
      du_filter'7504'_706 (coe v0)
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased v2
         (\ v3 -> MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
      (coe v1)
-- Axiom.Set.Map.constMap
d_constMap_1112 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_1112 v0 ~v1 ~v2 v3 v4 = du_constMap_1112 v0 v3 v4
du_constMap_1112 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_constMap_1112 v0 v1 v2
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.du_map_386 v0
         (\ v3 ->
            coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v2))
         v1)
      erased
-- Axiom.Set.Map.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_1126 ::
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
d_mapPartialLiftKey'45'just'45'uniq_1126 = erased
-- Axiom.Set.Map.mapPartial-uniq
d_mapPartial'45'uniq_1148 ::
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
d_mapPartial'45'uniq_1148 = erased
-- Axiom.Set.Map.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_1168 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_1168 v0 ~v1 ~v2 ~v3 v4 v5
  = du_mapMaybeWithKey'7504'_1168 v0 v4 v5
du_mapMaybeWithKey'7504'_1168 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapMaybeWithKey'7504'_1168 v0 v1 v2
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v3 v4
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
             (coe
                MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_646 (coe v0) (coe v1)
                (coe v3))
             erased
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.mapFromPartialFun
d_mapFromPartialFun_1176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_1176 v0 ~v1 ~v2 v3 v4
  = du_mapFromPartialFun_1176 v0 v3 v4
du_mapFromPartialFun_1176 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> Maybe AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapFromPartialFun_1176 v0 v1 v2
  = coe
      du_mapMaybeWithKey'7504'_1168 (coe v0) (coe (\ v3 -> v1))
      (coe du_idMap_1024 (coe v0) (coe v2))
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ_
d__'8746''737'__1244 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1244 v0 ~v1 v2 = du__'8746''737'__1244 v0 v2
du__'8746''737'__1244 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1244 v0 v1 v2 v3 v4
  = coe du__'8746''737'__884 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._._∪ˡ'_
d__'8746''737'''__1246 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1246 v0 ~v1 v2 = du__'8746''737'''__1246 v0 v2
du__'8746''737'''__1246 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1246 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__878 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1248 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_disjoint'45''8746''737''45'mapValues_1248 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1248 v0 v2
du_disjoint'45''8746''737''45'mapValues_1248 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
du_disjoint'45''8746''737''45'mapValues_1248 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_934 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Restrictionᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1250 ::
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
d_disjoint'45''8746''737''45''8746'_1250 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1250 v0 v2
du_disjoint'45''8746''737''45''8746'_1250 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1250 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_898 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insert
d_insert_1252 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1252 v0 ~v1 v2 = du_insert_1252 v0 v2
du_insert_1252 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1252 v0 v1 v2 v3 v4 v5
  = coe du_insert_906 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Restrictionᵐ._.insertIfJust
d_insertIfJust_1254 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1254 v0 ~v1 v2 = du_insertIfJust_1254 v0 v2
du_insertIfJust_1254 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1254 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_914 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Restrictionᵐ._∣_
d__'8739'__1256 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__1256 v0 ~v1 v2 ~v3 v4 v5 = du__'8739'__1256 v0 v2 v4 v5
du__'8739'__1256 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__1256 v0 v1 v2 v3
  = coe
      du_'8838''45'map_550
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'__678 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_1264 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739'_'7580'_1264 v0 v2 v4 v5
du__'8739'_'7580'_1264 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_1264 v0 v1 v2 v3
  = coe
      du_'8838''45'map_550
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_684 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_1274 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_1274 v0 ~v1 v2 ~v3 v4
  = du_res'7504''45''8709''7580'_1274 v0 v2 v4
du_res'7504''45''8709''7580'_1274 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_1274 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_780 (coe v0)
      (coe v1) (coe du__'738'_534 (coe v2))
-- Axiom.Set.Map.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_1276 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_1276 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapValueRestricted_1276 v0 v2 v4 v5 v6
du_mapValueRestricted_1276 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_1276 v0 v1 v2 v3 v4
  = coe
      du__'8746''737'__884 (coe v0) (coe v1)
      (coe
         du_mapValues_864 (coe v0) (coe v2)
         (coe du__'8739'__1256 (coe v0) (coe v1) (coe v3) (coe v4)))
      (coe v3)
-- Axiom.Set.Map.Restrictionᵐ.mapSingleValue
d_mapSingleValue_1284 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_1284 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_mapSingleValue_1284 v0 v2 v4 v5 v6
du_mapSingleValue_1284 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_1284 v0 v1 v2 v3 v4
  = coe
      du_mapValueRestricted_1276 (coe v0) (coe v1) (coe v2) (coe v3)
      (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v4)
-- Axiom.Set.Map.Restrictionᵐ.curryᵐ
d_curry'7504'_1292 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_1292 v0 ~v1 v2 ~v3 ~v4 v5 v6
  = du_curry'7504'_1292 v0 v2 v5 v6
du_curry'7504'_1292 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_1292 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_842 (coe v0) (coe v1)
         (coe du__'738'_534 (coe v2)) (coe v3))
      (coe
         (\ v4 v5 v6 v7 v8 ->
            coe
              MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 v2
              (coe MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4))
              v5 v6
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_854 (coe v0)
                 (coe v1) (coe du__'738'_534 (coe v2)) (coe v3) (coe v4) (coe v5)
                 (coe v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_854 (coe v0)
                 (coe v1) (coe du__'738'_534 (coe v2)) (coe v3) (coe v4) (coe v6)
                 (coe v8))))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton
d_res'45'singleton_1306 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_1306 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_res'45'singleton_1306 v0 v2 v4 v5 v6
du_res'45'singleton_1306 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_1306 v0 v1 v2 v3 v4
  = case coe v2 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v5 v6
        -> let v7
                 = coe
                     MAlonzo.Code.Function.Bundles.d_from_1726
                     (coe
                        MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                        (coe
                           MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                           (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                           (coe du__'738'_534 (coe v2)))
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
                                                   MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446
                                                   (coe v0) (coe v14) (coe v8))
                                                erased))
                                        (coe
                                           (\ v14 v15 ->
                                              coe
                                                MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
                                                v0 v5
                                                (coe
                                                   MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                                   (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased
                                                   erased erased
                                                   (coe
                                                      v1
                                                      (coe
                                                         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440
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
                                                         MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446
                                                         (coe v0) (coe v10) (coe v10))
                                                      erased)
                                                   (coe v13)))))
                              _ -> MAlonzo.RTE.mazUnreachableError
                       _ -> MAlonzo.RTE.mazUnreachableError
                _ -> MAlonzo.RTE.mazUnreachableError)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Restrictionᵐ.res-singleton'
d_res'45'singleton''_1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_1342 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''_1342 v0 v2 v4 v5 v6 v7
du_res'45'singleton''_1342 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_1342 v0 v1 v2 v3 v4 v5
  = let v6 = MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v2) in
    coe
      (let v7
             = coe
                 MAlonzo.Code.Function.Bundles.d_from_1726
                 (coe
                    MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
                    (coe
                       MAlonzo.Code.Axiom.Set.d_replacement_196 v0 erased erased
                       (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                       (coe du__'738'_534 (coe v2)))
                    v3)
                 (coe
                    MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170 v0
                    (\ v7 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v7))
                    (coe du__'738'_534 (coe v2)) v3
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
                                            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446
                                            (coe v0) (coe v14) (coe v8))
                                         erased))
                                 (coe
                                    (\ v14 v15 ->
                                       coe
                                         MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
                                         v0 v6
                                         (coe
                                            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
                                            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased
                                            erased
                                            (coe
                                               v1
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0
                                                  erased v10))
                                            (\ v16 ->
                                               MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v16)))
                                         v8
                                         (coe
                                            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                                            (coe
                                               MAlonzo.Code.Function.Bundles.d_to_1724
                                               (coe
                                                  MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446
                                                  (coe v0) (coe v10) (coe v10))
                                               erased)
                                            (coe v13))))
                          _ -> MAlonzo.RTE.mazUnreachableError
                   _ -> MAlonzo.RTE.mazUnreachableError
            _ -> MAlonzo.RTE.mazUnreachableError))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_1358 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
d_res'45'singleton'8314'_1358 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'8314'_1358 v0 v2 v4 v5 v6 v7
du_res'45'singleton'8314'_1358 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny -> AgdaAny
du_res'45'singleton'8314'_1358 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45'filter_414 (coe v0)
         (coe du__'738'_534 (coe v2))
         (coe
            MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
            (MAlonzo.Code.Axiom.Set.d_sp_150 (coe v0)) erased erased erased
            (coe
               v1
               (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v3))
            (\ v6 -> MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3) (coe v4)))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe
            MAlonzo.Code.Function.Bundles.d_to_1724
            (coe
               MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0) (coe v3)
               (coe v3))
            erased)
         (coe v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_1366 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d_res'45'singleton'45'inhabited_1366 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton'45'inhabited_1366 v0 v2 v4 v5 v6 v7
du_res'45'singleton'45'inhabited_1366 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du_res'45'singleton'45'inhabited_1366 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Function.Bundles.d_to_1724
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
         (coe du__'738'_534 (coe v2)) (coe v3))
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
         (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4))
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_774 v0 v1
            (coe du__'738'_534 (coe v2))
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v3) v4
            v5))
-- Axiom.Set.Map.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_1384 v0 ~v1 v2 ~v3 v4 v5 v6 v7
  = du_res'45'singleton''''_1384 v0 v2 v4 v5 v6 v7
du_res'45'singleton''''_1384 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_1384 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
         (coe
            du_res'45'singleton_1306 (coe v0) (coe v1) (coe v2) (coe v3)
            (coe
               du_res'45'singleton'45'inhabited_1366 (coe v0) (coe v1) (coe v2)
               (coe v3) (coe v4) (coe v5))))
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_446 (coe v0) (coe v4)
            (coe
               MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v3)
               (coe
                  MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                  (coe
                     du_res'45'singleton_1306 (coe v0) (coe v1) (coe v2) (coe v3)
                     (coe
                        du_res'45'singleton'45'inhabited_1366 (coe v0) (coe v1) (coe v2)
                        (coe v3) (coe v4) (coe v5))))))
         (coe
            MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
            (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30
               (coe
                  du_res'45'singleton_1306 (coe v0) (coe v1) (coe v2) (coe v3)
                  (coe
                     du_res'45'singleton'45'inhabited_1366 (coe v0) (coe v1) (coe v2)
                     (coe v3) (coe v4) (coe v5))))
            v4 v5))
-- Axiom.Set.Map.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_1398 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_1398 v0 ~v1 v2
  = du__'10629'_'44''45''10630'_1398 v0 v2
du__'10629'_'44''45''10630'_1398 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_1398 v0 v1 v2 v3 v4 v5
  = coe du_curry'7504'_1292 (coe v0) (coe v1) v4 v5
-- Axiom.Set.Map.Restrictionᵐ.update
d_update_1400 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_1400 v0 ~v1 v2 ~v3 v4 v5 v6
  = du_update_1400 v0 v2 v4 v5 v6
du_update_1400 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_1400 v0 v1 v2 v3 v4
  = case coe v3 of
      MAlonzo.Code.Agda.Builtin.Maybe.C_just_16 v5
        -> coe du_insert_906 (coe v0) (coe v1) (coe v4) (coe v2) (coe v5)
      MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18
        -> coe
             du__'8739'_'7580'_1264 (coe v0) (coe v1) (coe v4)
             (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v2)
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ_
d__'8746''737'__1472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__1472 v0 ~v1 v2 = du__'8746''737'__1472 v0 v2
du__'8746''737'__1472 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__1472 v0 v1 v2 v3 v4
  = coe du__'8746''737'__884 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._._∪ˡ'_
d__'8746''737'''__1474 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () -> (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
d__'8746''737'''__1474 v0 ~v1 v2 = du__'8746''737'''__1474 v0 v2
du__'8746''737'''__1474 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) -> () -> AgdaAny -> AgdaAny -> AgdaAny
du__'8746''737'''__1474 v0 v1 v2 v3 v4
  = coe du__'8746''737'''__878 (coe v0) (coe v1) v3 v4
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_1476 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
d_disjoint'45''8746''737''45'mapValues_1476 v0 ~v1 v2
  = du_disjoint'45''8746''737''45'mapValues_1476 v0 v2
du_disjoint'45''8746''737''45'mapValues_1476 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
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
du_disjoint'45''8746''737''45'mapValues_1476 v0 v1 v2 v3 v4 v5 v6
                                             v7
  = coe
      du_disjoint'45''8746''737''45'mapValues_934 (coe v0) (coe v1) v4 v5
      v6
-- Axiom.Set.Map.Lookupᵐ._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_1478 ::
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
d_disjoint'45''8746''737''45''8746'_1478 v0 ~v1 v2
  = du_disjoint'45''8746''737''45''8746'_1478 v0 v2
du_disjoint'45''8746''737''45''8746'_1478 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_1478 v0 v1 v2 v3 v4 v5
  = coe
      du_disjoint'45''8746''737''45''8746'_898 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insert
d_insert_1480 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_1480 v0 ~v1 v2 = du_insert_1480 v0 v2
du_insert_1480 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_1480 v0 v1 v2 v3 v4 v5
  = coe du_insert_906 (coe v0) (coe v1) v3 v4 v5
-- Axiom.Set.Map.Lookupᵐ._.insertIfJust
d_insertIfJust_1482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_1482 v0 ~v1 v2 = du_insertIfJust_1482 v0 v2
du_insertIfJust_1482 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_1482 v0 v1 v2 v3 v4 v5 v6
  = coe du_insertIfJust_914 (coe v0) (coe v1) v4 v5 v6
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ
d_lookup'7504'_1548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
d_lookup'7504'_1548 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504'_1548 v0 v4 v5 v6
du_lookup'7504'_1548 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> AgdaAny
du_lookup'7504'_1548 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
      (coe
         MAlonzo.Code.Function.Bundles.d_from_1726
         (coe
            MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_422 (coe v0)
            (coe du__'738'_534 (coe v1)) (coe v2))
         v3)
-- Axiom.Set.Map.Lookupᵐ._.lookupᵐ?
d_lookup'7504''63'_1552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_1552 v0 ~v1 ~v2 ~v3 v4 v5 v6
  = du_lookup'7504''63'_1552 v0 v4 v5 v6
du_lookup'7504''63'_1552 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_1552 v0 v1 v2 v3
  = case coe v3 of
      MAlonzo.Code.Class.Decidable.Core.C_'8263'__30 v4
        -> case coe v4 of
             MAlonzo.Code.Relation.Nullary.Decidable.Core.C__because__32 v5 v6
               -> if coe v5
                    then case coe v6 of
                           MAlonzo.Code.Relation.Nullary.Reflects.C_of'696'_22 v7
                             -> coe
                                  MAlonzo.Code.Agda.Builtin.Maybe.C_just_16
                                  (coe du_lookup'7504'_1548 (coe v0) (coe v1) (coe v2) (coe v7))
                           _ -> MAlonzo.RTE.mazUnreachableError
                    else coe
                           seq (coe v6) (coe MAlonzo.Code.Agda.Builtin.Maybe.C_nothing_18)
             _ -> MAlonzo.RTE.mazUnreachableError
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.Lookupᵐ.pullbackMap
d_pullbackMap_1558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_1558 v0 ~v1 ~v2 ~v3 ~v4 v5 v6 v7 v8
  = du_pullbackMap_1558 v0 v5 v6 v7 v8
du_pullbackMap_1558 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_1558 v0 v1 v2 v3 v4
  = coe
      du_mapMaybeWithKey'7504'_1168 (coe v0)
      (coe
         (\ v5 v6 ->
            coe
              du_lookup'7504''63'_1552 (coe v0) (coe v1) (coe v3 v5)
              (coe v2 (coe v3 v5))))
      (coe du_idMap_1024 (coe v0) (coe v4))
-- Axiom.Set.Map.Corestrictionᵐ._∣^_
d__'8739''94'__1586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__1586 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'__1586 v0 v2 v4 v5
du__'8739''94'__1586 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__1586 v0 v1 v2 v3
  = coe
      du_'8838''45'map_550
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1038 (coe v0) (coe v1)
              (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_1594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_1594 v0 ~v1 v2 ~v3 v4 v5
  = du__'8739''94'_'7580'_1594 v0 v2 v4 v5
du__'8739''94'_'7580'_1594 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_1594 v0 v1 v2 v3
  = coe
      du_'8838''45'map_550
      (coe
         (\ v4 ->
            coe
              MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1044 (coe v0)
              (coe v1) (coe v4) (coe v3)))
      (coe v2)
-- Axiom.Set.Map.Corestrictionᵐ._⁻¹_
d__'8315''185'__1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
d__'8315''185'__1602 v0 ~v1 v2 ~v3 v4 v5
  = du__'8315''185'__1602 v0 v2 v4 v5
du__'8315''185'__1602 ::
  MAlonzo.Code.Axiom.Set.T_Theory_82 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> AgdaAny
du__'8315''185'__1602 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_338 v0
      (coe
         du__'738'_534
         (coe
            du__'8739''94'__1586 (coe v0) (coe v1) (coe v2)
            (coe MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_440 v0 erased v3)))
-- Axiom.Set.Map..generalizedField-A
d_'46'generalizedField'45'A_130463 :: T_GeneralizeTel_130471 -> ()
d_'46'generalizedField'45'A_130463 = erased
-- Axiom.Set.Map..generalizedField-B
d_'46'generalizedField'45'B_130465 :: T_GeneralizeTel_130471 -> ()
d_'46'generalizedField'45'B_130465 = erased
-- Axiom.Set.Map..generalizedField-B'
d_'46'generalizedField'45'B''_130467 ::
  T_GeneralizeTel_130471 -> ()
d_'46'generalizedField'45'B''_130467 = erased
-- Axiom.Set.Map..generalizedField-R
d_'46'generalizedField'45'R_130469 ::
  T_GeneralizeTel_130471 -> AgdaAny
d_'46'generalizedField'45'R_130469 v0
  = case coe v0 of
      C_mkGeneralizeTel_130473 v4 -> coe v4
      _ -> MAlonzo.RTE.mazUnreachableError
-- Axiom.Set.Map.GeneralizeTel
d_GeneralizeTel_130471 a0 = ()
newtype T_GeneralizeTel_130471 = C_mkGeneralizeTel_130473 AgdaAny
