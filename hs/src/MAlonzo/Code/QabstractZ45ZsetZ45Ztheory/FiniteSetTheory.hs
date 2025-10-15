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

module MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.FiniteSetTheory where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.List
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Axiom.Set.TotalMap
import qualified MAlonzo.Code.Axiom.Set.TotalMapOn
import qualified MAlonzo.Code.Class.CommutativeMonoid.Core
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.DecEq.Instances
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Class.HasEmptySet
import qualified MAlonzo.Code.Class.HasSingleton
import qualified MAlonzo.Code.Class.IsSet
import qualified MAlonzo.Code.Class.Show.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Base
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.String.Base
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core
import qualified MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.Prelude

-- abstract-set-theory.FiniteSetTheory.List-Model
d_List'45'Model_4 :: MAlonzo.Code.Axiom.Set.T_Theory_96
d_List'45'Model_4
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model_6
-- abstract-set-theory.FiniteSetTheory.List-Modelᶠ
d_List'45'Model'7584'_6 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_756
d_List'45'Model'7584'_6
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- abstract-set-theory.FiniteSetTheory.List-Modelᵈ
d_List'45'Model'7496'_8 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1328
d_List'45'Model'7496'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_210
-- abstract-set-theory.FiniteSetTheory._._Preservesˢ_
d__Preserves'738'__20 ::
  () ->
  () -> ([AgdaAny] -> [AgdaAny]) -> (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738'__20 = erased
-- abstract-set-theory.FiniteSetTheory._._Preservesˢ₂_
d__Preserves'738''8322'__22 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738''8322'__22 = erased
-- abstract-set-theory.FiniteSetTheory._._∈?_
d__'8712''63'__24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__24
  = coe
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1612
      (coe d_List'45'Model'7496'_8)
-- abstract-set-theory.FiniteSetTheory._._∈ᵇ_
d__'8712''7495'__26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__26 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1676
      (coe d_List'45'Model'7496'_8) v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._∪_
d__'8746'__28 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__28
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__682
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3)
-- abstract-set-theory.FiniteSetTheory._._≡ᵉ_
d__'8801''7497'__30 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'__30 = erased
-- abstract-set-theory.FiniteSetTheory._._≡ᵉ'_
d__'8801''7497'''__32 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'''__32 = erased
-- abstract-set-theory.FiniteSetTheory._._⊆_
d__'8838'__34 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__34 = erased
-- abstract-set-theory.FiniteSetTheory._.All
d_All_36 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_All_36 = erased
-- abstract-set-theory.FiniteSetTheory._.Any
d_Any_38 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_Any_38 = erased
-- abstract-set-theory.FiniteSetTheory._.Dec-Allˢ
d_Dec'45'All'738'_40 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1644
      (coe d_List'45'Model'7496'_8) v2 v3
-- abstract-set-theory.FiniteSetTheory._.Dec-Anyˢ
d_Dec'45'Any'738'_42 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1648
      (coe d_List'45'Model'7496'_8) v2 v3
-- abstract-set-theory.FiniteSetTheory._.Dec-∈
d_Dec'45''8712'_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1682
      (coe d_List'45'Model'7496'_8) v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_46 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_46 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_320
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.FinSet
d_FinSet_48 :: () -> ()
d_FinSet_48 = erased
-- abstract-set-theory.FiniteSetTheory._.Show-finite
d_Show'45'finite_50 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'finite_50 v0 v1
  = coe MAlonzo.Code.Axiom.Set.du_Show'45'finite_294 v1
-- abstract-set-theory.FiniteSetTheory._.all?
d_all'63'_52 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_52
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1620 (coe d_List'45'Model'7496'_8)
-- abstract-set-theory.FiniteSetTheory._.allᵇ
d_all'7495'_54 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_54 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1658
      (coe d_List'45'Model'7496'_8) v2 v3
-- abstract-set-theory.FiniteSetTheory._.any?
d_any'63'_56 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_56
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1628 (coe d_List'45'Model'7496'_8)
-- abstract-set-theory.FiniteSetTheory._.anyᵇ
d_any'7495'_58 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_58 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1662
      (coe d_List'45'Model'7496'_8) v2 v3
-- abstract-set-theory.FiniteSetTheory._.binary-unions
d_binary'45'unions_60 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_60
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_646
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3)
-- abstract-set-theory.FiniteSetTheory._.card
d_card_62 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_62 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_338 v1
-- abstract-set-theory.FiniteSetTheory._.card-∅
d_card'45''8709'_64 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_64 = erased
-- abstract-set-theory.FiniteSetTheory._.concatMapˢ
d_concatMap'738'_66 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_66
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4)
-- abstract-set-theory.FiniteSetTheory._.disjoint
d_disjoint_68 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_68 = erased
-- abstract-set-theory.FiniteSetTheory._.filter
d_filter_70 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_70
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_422
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.finite
d_finite_72 :: () -> [AgdaAny] -> ()
d_finite_72 = erased
-- abstract-set-theory.FiniteSetTheory._.fromList
d_fromList_74 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_74
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_430
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2)
-- abstract-set-theory.FiniteSetTheory._.incl-set
d_incl'45'set_76 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_76 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1720
      (coe d_List'45'Model'7496'_8) v1 v2
-- abstract-set-theory.FiniteSetTheory._.incl-set'
d_incl'45'set''_78 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_78 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1694
      (coe d_List'45'Model'7496'_8) v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_80 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_80 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1780
      (coe d_List'45'Model'7496'_8) v1 v2
-- abstract-set-theory.FiniteSetTheory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_82 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_82 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1730
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_84 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_84 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1742
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.isMaximal
d_isMaximal_86 :: () -> [AgdaAny] -> ()
d_isMaximal_86 = erased
-- abstract-set-theory.FiniteSetTheory._.listing
d_listing_88 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_88
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_218
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.mapPartial
d_mapPartial_90 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_90
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_578
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3)
-- abstract-set-theory.FiniteSetTheory._.map
d_map_92 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_92
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_400
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.maximal-unique
d_maximal'45'unique_94 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_94 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_362 v3 v4
-- abstract-set-theory.FiniteSetTheory._.maximal-⊆
d_maximal'45''8838'_96 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_96 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_358 v3 v4
-- abstract-set-theory.FiniteSetTheory._.partialToSet
d_partialToSet_98 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_98
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_474
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v4 v5)
-- abstract-set-theory.FiniteSetTheory._.replacement
d_replacement_100 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_100
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_210
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.singleton
d_singleton_102 :: () -> AgdaAny -> [AgdaAny]
d_singleton_102
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_450
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2)
-- abstract-set-theory.FiniteSetTheory._.sp
d_sp_104 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_104
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_164
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.sp-¬
d_sp'45''172'_106 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_106
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_164
            (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0))))
-- abstract-set-theory.FiniteSetTheory._.sp-∘
d_sp'45''8728'_108 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_108
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_164
            (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0))))
-- abstract-set-theory.FiniteSetTheory._.spec-∈
d_spec'45''8712'_110 :: () -> ()
d_spec'45''8712'_110 = erased
-- abstract-set-theory.FiniteSetTheory._.specProperty
d_specProperty_112 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_112 = erased
-- abstract-set-theory.FiniteSetTheory._.specification
d_specification_114 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_114
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_188
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.strictify
d_strictify_116 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_116
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_380
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4)
-- abstract-set-theory.FiniteSetTheory._.strongly-finite
d_strongly'45'finite_118 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_118 = erased
-- abstract-set-theory.FiniteSetTheory._.th
d_th_120 :: MAlonzo.Code.Axiom.Set.T_Theory_96
d_th_120
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8)
-- abstract-set-theory.FiniteSetTheory._.unions
d_unions_122 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_122
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_198
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.weakly-finite
d_weakly'45'finite_124 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_124 = erased
-- abstract-set-theory.FiniteSetTheory._.Set
d_Set_126 :: () -> ()
d_Set_126 = erased
-- abstract-set-theory.FiniteSetTheory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_128 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_128
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_446
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.∅
d_'8709'_130 :: () -> [AgdaAny]
d_'8709'_130
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_444
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_132 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'concatMap'738'_132
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_522
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5)
-- abstract-set-theory.FiniteSetTheory._.∈-filter
d_'8712''45'filter_134 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'filter_134
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_428
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5)
-- abstract-set-theory.FiniteSetTheory._.∈-fromList
d_'8712''45'fromList_136 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'fromList_136
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_434
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3)
-- abstract-set-theory.FiniteSetTheory._.∈-irrelevant
d_'8712''45'irrelevant_138 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_138 = erased
-- abstract-set-theory.FiniteSetTheory._.∈-map
d_'8712''45'map_140 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'map_140
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_408
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5)
-- abstract-set-theory.FiniteSetTheory._.∈-mapPartial
d_'8712''45'mapPartial_142 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'mapPartial_142
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_588
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5)
-- abstract-set-theory.FiniteSetTheory._.∈-map′
d_'8712''45'map'8242'_144 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_144
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_414
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5 v6)
-- abstract-set-theory.FiniteSetTheory._.∈-partialToSet
d_'8712''45'partialToSet_146 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'partialToSet_146
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_486
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v5)
-- abstract-set-theory.FiniteSetTheory._.∈-singleton
d_'8712''45'singleton_148 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'singleton_148
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_460
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3)
-- abstract-set-theory.FiniteSetTheory._.∈-sp
d_'8712''45'sp_150 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_150
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610
      (coe d_List'45'Model'7496'_8)
-- abstract-set-theory.FiniteSetTheory._.∈-unions
d_'8712''45'unions_152 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'unions_152
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_442
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3)
-- abstract-set-theory.FiniteSetTheory._.∈-∪
d_'8712''45''8746'_154 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8746'_154
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_690
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3 v4)
-- abstract-set-theory.FiniteSetTheory._.≡→∈
d_'8801''8594''8712'_156 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8801''8594''8712'_156 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''8594''8712'_156 v4
du_'8801''8594''8712'_156 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8801''8594''8712'_156 v0 = coe v0
-- abstract-set-theory.FiniteSetTheory._.⊆-mapPartial
d_'8838''45'mapPartial_158 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_158
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_606
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v3 v4 v5 v6)
-- abstract-set-theory.FiniteSetTheory._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_160 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_160 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_342 v3 v4
-- abstract-set-theory.FiniteSetTheory._.❴_❵
d_'10100'_'10101'_162 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_162
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_454
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)))
-- abstract-set-theory.FiniteSetTheory._.Intersection._∩_
d__'8745'__166 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__166
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__706
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3 v4)
-- abstract-set-theory.FiniteSetTheory._.Intersection._＼_
d__'65340'__168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__168
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'65340'__732
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3 v4)
-- abstract-set-theory.FiniteSetTheory._.Intersection.disjoint'
d_disjoint''_170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_170 = erased
-- abstract-set-theory.FiniteSetTheory._.Intersection.∈-∩
d_'8712''45''8745'_172 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_172
  = let v0 = d_List'45'Model'7496'_8 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714
           (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v0)) v2 v3 v4 v5)
-- abstract-set-theory.FiniteSetTheory._._ˢ
d__'738'_176 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_176 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_560 v2
-- abstract-set-theory.FiniteSetTheory._._ᵐ
d__'7504'_178 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_502 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_178 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_564 v2
-- abstract-set-theory.FiniteSetTheory._.Map
d_Map_180 :: () -> () -> ()
d_Map_180 = erased
-- abstract-set-theory.FiniteSetTheory._._∣'_
d__'8739'''__182 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__182 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__1334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._∣^'_
d__'8739''94'''__184 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__184 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._≡ᵐ_
d__'8801''7504'__186 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__186 = erased
-- abstract-set-theory.FiniteSetTheory._.FinMap
d_FinMap_188 :: () -> () -> ()
d_FinMap_188 = erased
-- abstract-set-theory.FiniteSetTheory._.InjectiveOn
d_InjectiveOn_190 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_190 = erased
-- abstract-set-theory.FiniteSetTheory._.IsLeftUnique
d_IsLeftUnique_192 a0 a1 a2 = ()
-- abstract-set-theory.FiniteSetTheory._.constMap
d_constMap_196 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_196 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.constMap-dom
d_constMap'45'dom_198 ::
  () ->
  [AgdaAny] ->
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap'45'dom_198 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap'45'dom_1360
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.disj-dom
d_disj'45'dom_200 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disj'45'dom_200 = erased
-- abstract-set-theory.FiniteSetTheory._.disj-∪
d_disj'45''8746'_202 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_202 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.disj-∪-cong
d_disj'45''8746''45'cong_204 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746''45'cong_204 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746''45'cong_740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v8 v9
-- abstract-set-theory.FiniteSetTheory._.filterKeys
d_filterKeys_206 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_822
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3
-- abstract-set-theory.FiniteSetTheory._.filterᵐ-cong
d_filter'7504''45'cong_208 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'cong_208 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'cong_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.filterᵐ-finite
d_filter'7504''45'finite_210 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'finite_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_818
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory._.filterᵐ-idem
d_filter'7504''45'idem_212 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504''45'idem_212 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'idem_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.filterᵐ
d_filter'7504'_214 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_214 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.fromListᵐ
d_fromList'7504'_216 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_216 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_592
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.idMap
d_idMap_218 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_218 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_1260
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory._.left-unique
d_left'45'unique_220 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_220 = erased
-- abstract-set-theory.FiniteSetTheory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_222 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'map'738'_222 = erased
-- abstract-set-theory.FiniteSetTheory._.mapFromFun
d_mapFromFun_224 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_224 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.mapFromPartialFun
d_mapFromPartialFun_226 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_226 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1446
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.mapKeys
d_mapKeys_228 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapKeys_228 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_230 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1438
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartial-uniq
d_mapPartial'45'uniq_232 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartial'45'uniq_232 = erased
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_234 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapPartialLiftKey'45'just'45'uniq_234 = erased
-- abstract-set-theory.FiniteSetTheory._.mapValues
d_mapValues_236 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_236 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapValues-dom
d_mapValues'45'dom_238 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_238 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_1330
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapWithKey
d_mapWithKey_240 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_240 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1312
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapWithKey-uniq
d_mapWithKey'45'uniq_242 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_mapWithKey'45'uniq_242 = erased
-- abstract-set-theory.FiniteSetTheory._.mapʳ-uniq
d_map'691''45'uniq_244 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'691''45'uniq_244 = erased
-- abstract-set-theory.FiniteSetTheory._.mapˡ-uniq
d_map'737''45'uniq_246 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''45'uniq_246 = erased
-- abstract-set-theory.FiniteSetTheory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_248 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_248 = erased
-- abstract-set-theory.FiniteSetTheory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_250 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_250 = erased
-- abstract-set-theory.FiniteSetTheory._.singletonᵐ
d_singleton'7504'_252 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_252 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_826
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.toFinMap
d_toFinMap_254 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_254 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_620 v2 v3
-- abstract-set-theory.FiniteSetTheory._.toMap
d_toMap_256 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_256 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_628 v2
-- abstract-set-theory.FiniteSetTheory._.toRel
d_toRel_258 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_258 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_634 v2
-- abstract-set-theory.FiniteSetTheory._.weaken-Injective
d_weaken'45'Injective_260 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_weaken'45'Injective_260 = erased
-- abstract-set-theory.FiniteSetTheory._.ˢ-left-unique
d_'738''45'left'45'unique_262 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_502
d_'738''45'left'45'unique_262 = erased
-- abstract-set-theory.FiniteSetTheory._.∅-left-unique
d_'8709''45'left'45'unique_264 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_502
d_'8709''45'left'45'unique_264 = erased
-- abstract-set-theory.FiniteSetTheory._.∅ᵐ
d_'8709''7504'_266 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_266 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_588
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.⊆-left-unique
d_'8838''45'left'45'unique_268 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   AgdaAny ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12) ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8838''45'left'45'unique_268 = erased
-- abstract-set-theory.FiniteSetTheory._.⊆-map
d_'8838''45'map_270 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]) ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'map_270 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_574 v2 v4
-- abstract-set-theory.FiniteSetTheory._.❴_❵ᵐ
d_'10100'_'10101''7504'_272 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_272 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_834
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__276 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__276 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2022
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._∣^_
d__'8739''94'__278 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_280 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_280 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2014
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ.cores-cong
d_cores'45'cong_282 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cores'45'cong_282 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_cores'45'cong_2036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ.⁻¹-cong
d_'8315''185''45'cong_284 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8315''185''45'cong_284 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8315''185''45'cong_2088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__288 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__288 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_292 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_502 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_292 = erased
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_296 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_296 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ-∈
d_lookup'7504''45''8712'_298 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'7504''45''8712'_298 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''45''8712'_1938
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_300 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_300 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.pullbackMap
d_pullbackMap_302 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_302 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.∈-lookup
d_'8712''45'lookup_304 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup_304 = erased
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.∈⇒lookup≡just
d_'8712''8658'lookup'8801'just_306 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''8658'lookup'8801'just_306 = erased
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._∣_
d__'8739'__310 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__310 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_312 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_312 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_314 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_314 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.curryᵐ
d_curry'7504'_316 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_316 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1568
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_318 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_318 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1560
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_320 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_320 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-cong
d_res'45'cong_322 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_322 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'cong_1590
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_324 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_res'45'dom'8712'_324 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton
d_res'45'singleton_326 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_326 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_328 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_328 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_330 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_330 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1756
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_332 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'45'inhabited_332 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1738
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_334 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'8314'_334 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-subset
d_res'45'subset_336 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_336 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1636
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_338 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_338 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.update
d_update_340 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ._∪ˡ_
d__'8746''737'__344 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__344 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__346 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__346 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_348 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45'mapValues_348 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_350 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_350 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_1098
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.insert
d_insert_352 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_352 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_1142
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.insertIfJust
d_insertIfJust_354 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_354 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_356 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_356 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_1106
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.∪ˡ-cong
d_'8746''737''45'cong_358 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'cong_358 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8746''737''45'cong_1046
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._._ᶠ
d__'7584'_362 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_362 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_320 v1 v2
-- abstract-set-theory.FiniteSetTheory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_364 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_364 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_330
      (coe d_List'45'Model_4) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Factor.factor
d_factor_368 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_368 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_352 v3 v5
-- abstract-set-theory.FiniteSetTheory._.Factor.factor-cong
d_factor'45'cong_370 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_370 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_356 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Factor.factor-∪
d_factor'45''8746'_372 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_372 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_392 v6 v7 v8 v9
      v10
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_376 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deduplicate'45'Σ_376 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_428 v2 v6
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.ext
d_ext_378 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  [AgdaAny] -> AgdaAny
d_ext_378 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_432 v2 v4 v6
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.ext-cong
d_ext'45'cong_380 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
  AgdaAny
d_ext'45'cong_380 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_438 v2 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.f-cong'
d_f'45'cong''_382 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
  AgdaAny
d_f'45'cong''_382 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_420 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor
d_factor_384 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_384 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_384 v2 v4
du_factor_384 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_384 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_352
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_432 (coe v0) (coe v1))
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-cong
d_factor'45'cong_386 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_386 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_386 v2 v5
du_factor'45'cong_386 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_386 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_356
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_438 (coe v0) (coe v1))
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-∪
d_factor'45''8746'_388 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_388 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_388
du_factor'45''8746'_388 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_388 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_392 v1 v2 v3 v4
      v5
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-∪'
d_factor'45''8746'''_390 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
    MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
   AgdaAny) ->
  AgdaAny
d_factor'45''8746'''_390 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_474 v9 v10 v12
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__396 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__396 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
      (coe d_List'45'Model'7496'_8) v3 v4
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_398 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_398 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_548
      (coe d_List'45'Model'7496'_8) v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_400 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8746''8314''8660''8746'dom_400 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_610
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_402 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_402 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_614
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_404 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8746''8314''8838''8746'dom_404 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_572
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.intersectionWith
d_intersectionWith_406 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_intersectionWith_406 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_intersectionWith_516
      (coe d_List'45'Model'7496'_8) v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.unionThese
d_unionThese_408 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_408 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_376
      (coe d_List'45'Model'7496'_8) v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.unionWith
d_unionWith_410 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_410 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_438
      (coe d_List'45'Model'7496'_8) v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.∪dom-lookup
d_'8746'dom'45'lookup_412 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_412 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_566
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_414 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746'dom'8838'dom'8746''8314'_414 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_588
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._._⁻¹ʳ
d__'8315''185''691'_418 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8315''185''691'_418 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8315''185''691'_354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory._.Rel
d_Rel_420 :: () -> () -> ()
d_Rel_420 = erased
-- abstract-set-theory.FiniteSetTheory._.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_422 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'dom'8658'disjoint_422 = erased
-- abstract-set-theory.FiniteSetTheory._.dom-cong
d_dom'45'cong_424 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_424 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.dom-mapʳ⊆
d_dom'45'map'691''8838'_426 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_426 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_570
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.dom-mapˡ≡map-dom
d_dom'45'map'737''8801'map'45'dom_428 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'map'737''8801'map'45'dom_428 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'737''8801'map'45'dom_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.dom-single→single
d_dom'45'single'8594'single_430 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'single'8594'single_430 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8594'single_490
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.dom-single≡single
d_dom'45'single'8801'single_432 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_432 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_494
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom-∅
d_dom'45''8709'_434 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_434 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_648
-- abstract-set-theory.FiniteSetTheory._.dom-⊆mapʳ
d_dom'45''8838'map'691'_436 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_436 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_546
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.dom∅
d_dom'8709'_438 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_438 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_512
-- abstract-set-theory.FiniteSetTheory._.dom∈
d_dom'8712'_440 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8712'_440 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom∪
d_dom'8746'_442 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_442 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8746'_514
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom⊆
d_dom'8838'_444 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8838'_444 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_534
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.impl⇒cores⊆
d_impl'8658'cores'8838'_446 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_impl'8658'cores'8838'_446 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.impl⇒res⊆
d_impl'8658'res'8838'_448 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> ()) ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_impl'8658'res'8838'_448 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_394
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.mapMaybeWithKey
d_mapMaybeWithKey_450 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_450 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_716
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey
d_mapPartialLiftKey_452 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_452 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_656 v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_454 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_454 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.mapʳ
d_map'691'_456 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_456 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_432
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapʳ-dom
d_map'691''45'dom_458 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_458 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_596
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapˡ
d_map'737'_460 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_460 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_426
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.relatedˡ
d_related'737'_462 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_462 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.single→dom-single
d_single'8594'dom'45'single_464 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_single'8594'dom'45'single_464 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_single'8594'dom'45'single_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.∅ʳ
d_'8709''691'_466 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_466 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.∈-dom
d_'8712''45'dom_468 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom_468 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_498
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_470 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'dom'45'singleton'45'pair_470 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom'45'singleton'45'pair_486
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_472 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_472 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.∉-dom∅
d_'8713''45'dom'8709'_474 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_474 = erased
-- abstract-set-theory.FiniteSetTheory._.Corestriction._∣^_
d__'8739''94'__478 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__478 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1116
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_480 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_480 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1122
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestriction.coex-⊆
d_coex'45''8838'_482 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_482 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1130
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Corestriction.cores-cong
d_cores'45'cong_484 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45'cong_484 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45'cong_1140
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8 v9 v10
-- abstract-set-theory.FiniteSetTheory._.Corestriction.cores-⊆
d_cores'45''8838'_486 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_486 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1128
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction._∣_
d__'8739'__490 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__490 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction._∣_ᶜ
d__'8739'_'7580'_492 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_492 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_754
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction._⟪$⟫_
d__'10218''36''10219'__494 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__494 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__760
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction.curryʳ
d_curry'691'_496 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_496 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.ex-⊆
d_ex'45''8838'_498 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_498 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-cong
d_res'45'comp'45'cong_500 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_500 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_804
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-dom
d_res'45'comp'45'dom_502 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_502 = erased
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_504 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_504 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-cong
d_res'45'cong_506 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_506 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom
d_res'45'dom_508 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_508 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_778
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm
d_res'45'dom'45'comm_510 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_510 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1060
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_512 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_512 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_514 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_514 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_1006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_516 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_516 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_998
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-domᵐ
d_res'45'dom'7504'_518 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_518 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_520 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_520 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_912
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_522 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_522 = erased
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-∪
d_res'45'ex'45''8746'_524 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_524 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_890
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-∅
d_res'45''8709'_526 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_526 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_848
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-∅ᶜ
d_res'45''8709''7580'_528 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_528 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_850
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-⊆
d_res'45''8838'_530 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_530 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-curryʳ
d_'8712''45'curry'691'_532 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'curry'691'_532 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-res
d_'8712''45'res_534 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res_534 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res_858
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_536 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res'7580''45'dom_536 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_538 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_538 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_874
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_540 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_540 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_866
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.fold-cong↭
d_fold'45'cong'8621'_544 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  AgdaAny
d_fold'45'cong'8621'_544 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_944 v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum
d_indexedSum_546 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_546 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_966 v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSum-cong
d_indexedSum'45'cong_548 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_548 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1068 v1 v3 v4 v5
      v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum-singleton
d_indexedSum'45'singleton_550 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_550 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_1096 v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.indexedSum-singleton'
d_indexedSum'45'singleton''_552 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_552 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_1102
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum-∅
d_indexedSum'45''8709'_554 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_554 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_1074
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSum-∪
d_indexedSum'45''8746'_556 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'45''8746'_556 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_1080 v1 v3 v4 v7
      v8
-- abstract-set-theory.FiniteSetTheory._.indexedSumL
d_indexedSumL_558 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_558 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_920 v1 v3
-- abstract-set-theory.FiniteSetTheory._.indexedSumL'
d_indexedSumL''_560 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_560 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_928 v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSumL-++
d_indexedSumL'45''43''43'_562 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_562 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_992 v1 v3 v4
      v5
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵐ
d_indexedSum'7504'_564 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_564 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_1140 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_566 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_566 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_1154 v3 v4
      v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵛ
d_indexedSum'7515'_568 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_568 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1148 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__572 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__572 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1210
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_574 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_574 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v7 v8 v9 v10 v11 v12
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_576 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_576 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v7 v8 v9 v10
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_578 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_578 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1204
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.TotalMap
d_TotalMap_582 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.total
d_total_586 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_586 = erased
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun⇒Map
d_Fun'8658'Map_590 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_590 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_324
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_592 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_Fun'8658'TotalMap_592 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_594 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_594 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_596 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_596 = erased
-- abstract-set-theory.FiniteSetTheory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_600 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_600 = erased
-- abstract-set-theory.FiniteSetTheory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_602 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_602 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_302
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v6 v7
-- abstract-set-theory.FiniteSetTheory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_606 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_606 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMap.lookup
d_lookup_608 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_lookup_608 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMap.lookup∈rel
d_lookup'8712'rel_610 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_610 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_192
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMap.rel
d_rel_612 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_612 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMap.toMap
d_toMap_614 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_614 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_186 v2
-- abstract-set-theory.FiniteSetTheory._.TotalMap.total-rel
d_total'45'rel_616 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_616 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_618 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_618 = erased
-- abstract-set-theory.FiniteSetTheory._.Update.mapWithKey
d_mapWithKey_622 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_mapWithKey_622 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5
-- abstract-set-theory.FiniteSetTheory._.Update.update
d_update_624 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_update_624 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_278
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Update.updateFn-id
d_updateFn'45'id_626 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_626 = erased
-- abstract-set-theory.FiniteSetTheory._._TotalOn_
d__TotalOn__630 ::
  () ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> ()
d__TotalOn__630 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn
d_TotalMapOn_632 a0 a1 a2 = ()
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.left-unique-rel
d_left'45'unique'45'rel_638 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_638 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.lookup
d_lookup_640 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_lookup_640 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_lookup_76
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.lookup∈rel
d_lookup'8712'rel_642 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_642 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_lookup'8712'rel_84
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.rel
d_rel_644 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_644 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.d_rel_66 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.rel⇒lookup
d_rel'8658'lookup_646 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rel'8658'lookup_646 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.toMap
d_toMap_648 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_648 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.du_toMap_72 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.total-rel
d_total'45'rel_650 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_650 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.d_total'45'rel_70 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.UpdateOn.mapWithKeyOn
d_mapWithKeyOn_654 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52
d_mapWithKeyOn_654 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_mapWithKeyOn_146
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v5 v6
-- abstract-set-theory.FiniteSetTheory._.UpdateOn.update
d_update_656 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52
d_update_656 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_update_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._._∈_
d__'8712'__660 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8712'__660 = erased
-- abstract-set-theory.FiniteSetTheory._._∉_
d__'8713'__662 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8713'__662 = erased
-- abstract-set-theory.FiniteSetTheory._.All-syntax
d_All'45'syntax_664 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_664 = erased
-- abstract-set-theory.FiniteSetTheory._.Ex-syntax
d_Ex'45'syntax_666 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_666 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet
d_IsSet_668 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.IsSet-Map
d_IsSet'45'Map_672 ::
  () -> () -> MAlonzo.Code.Class.IsSet.T_IsSet_512
d_IsSet'45'Map_672 v0 v1
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_588
-- abstract-set-theory.FiniteSetTheory._.IsSet-Set
d_IsSet'45'Set_674 :: () -> MAlonzo.Code.Class.IsSet.T_IsSet_512
d_IsSet'45'Set_674 v0
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_584
-- abstract-set-theory.FiniteSetTheory._.IsSet-TotalMap
d_IsSet'45'TotalMap_676 ::
  () -> () -> MAlonzo.Code.Class.IsSet.T_IsSet_512
d_IsSet'45'TotalMap_676 v0 v1
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'TotalMap_590
-- abstract-set-theory.FiniteSetTheory._.dom
d_dom_678 ::
  () ->
  () ->
  () -> MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> [AgdaAny]
d_dom_678 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.range
d_range_680 ::
  () ->
  () ->
  () -> MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> [AgdaAny]
d_range_680 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.IsSet.du_range_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.toSet
d_toSet_682 ::
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> [AgdaAny]
d_toSet_682 v0 = coe MAlonzo.Code.Class.IsSet.d_toSet_520 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.IsSet._∈_
d__'8712'__686 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8712'__686 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet._∉_
d__'8713'__688 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> AgdaAny -> ()
d__'8713'__688 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet.toSet
d_toSet_690 ::
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> [AgdaAny]
d_toSet_690 v0 = coe MAlonzo.Code.Class.IsSet.d_toSet_520 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet
d_HasEmptySet_694 a0 = ()
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet-Map
d_HasEmptySet'45'Map_698 ::
  () -> () -> MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_322
d_HasEmptySet'45'Map_698 v0 v1
  = coe
      MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet-Set
d_HasEmptySet'45'Set_700 ::
  () -> MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_322
d_HasEmptySet'45'Set_700 v0
  = coe
      MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_338
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.∅
d_'8709'_702 ::
  MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_322 -> AgdaAny
d_'8709'_702 v0
  = coe MAlonzo.Code.Class.HasEmptySet.d_'8709'_328 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet.∅
d_'8709'_706 ::
  MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_322 -> AgdaAny
d_'8709'_706 v0
  = coe MAlonzo.Code.Class.HasEmptySet.d_'8709'_328 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasSingleton
d_HasSingleton_710 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.HasSingletonSet-Map
d_HasSingletonSet'45'Map_714 ::
  () -> () -> MAlonzo.Code.Class.HasSingleton.T_HasSingleton_324
d_HasSingletonSet'45'Map_714 v0 v1
  = coe
      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.HasSingletonSet-Set
d_HasSingletonSet'45'Set_716 ::
  () -> MAlonzo.Code.Class.HasSingleton.T_HasSingleton_324
d_HasSingletonSet'45'Set_716 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.❴_❵
d_'10100'_'10101'_718 ::
  MAlonzo.Code.Class.HasSingleton.T_HasSingleton_324 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_718 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasSingleton.❴_❵
d_'10100'_'10101'_722 ::
  MAlonzo.Code.Class.HasSingleton.T_HasSingleton_324 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_722 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.card-≡ᵉ
d_card'45''8801''7497'_726 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_726 = erased
-- abstract-set-theory.FiniteSetTheory._._._∣_
d__'8739'__738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__738 ~v0 v1 = du__'8739'__738 v1
du__'8739'__738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__738 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣_ᶜ
d__'8739'_'7580'_740 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_740 ~v0 v1 = du__'8739'_'7580'_740 v1
du__'8739'_'7580'_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_740 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_754
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._⟪$⟫_
d__'10218''36''10219'__742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__742 ~v0 v1 = du__'10218''36''10219'__742 v1
du__'10218''36''10219'__742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__742 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__760
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.curryʳ
d_curry'691'_744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_744 ~v0 v1 = du_curry'691'_744 v1
du_curry'691'_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_744 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.ex-⊆
d_ex'45''8838'_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_746 ~v0 v1 = du_ex'45''8838'_746 v1
du_ex'45''8838'_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_746 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-comp-cong
d_res'45'comp'45'cong_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_748 ~v0 v1 = du_res'45'comp'45'cong_748 v1
du_res'45'comp'45'cong_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_748 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_804
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-comp-dom
d_res'45'comp'45'dom_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_750 = erased
-- abstract-set-theory.FiniteSetTheory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_752 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_752 ~v0 v1
  = du_res'45'comp'45'dom'7504'_752 v1
du_res'45'comp'45'dom'7504'_752 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_752 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-cong
d_res'45'cong_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_754 ~v0 v1 = du_res'45'cong_754 v1
du_res'45'cong_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_754 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-dom
d_res'45'dom_756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_756 ~v0 v1 = du_res'45'dom_756 v1
du_res'45'dom_756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_756 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_778
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm
d_res'45'dom'45'comm_758 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_758 ~v0 v1 = du_res'45'dom'45'comm_758 v1
du_res'45'dom'45'comm_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_758 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1060
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm'
d_res'45'dom'45'comm''_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_760 ~v0 v1 = du_res'45'dom'45'comm''_760 v1
du_res'45'dom'45'comm''_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_760 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_762 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_762 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_762 v1
du_res'45'dom'45'comm'8745''8838'_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_762 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_1006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_764 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_764 v1
du_res'45'dom'45'comm'8838''8745'_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_764 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_998
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.res-domᵐ
d_res'45'dom'7504'_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_766 ~v0 v1 = du_res'45'dom'7504'_766 v1
du_res'45'dom'7504'_766 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_766 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_768 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_768 v1
du_res'45'ex'45'disj'45''8746'_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_768 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_912
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_770 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_770 = erased
-- abstract-set-theory.FiniteSetTheory._._.res-ex-∪
d_res'45'ex'45''8746'_772 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_772 ~v0 v1 = du_res'45'ex'45''8746'_772 v1
du_res'45'ex'45''8746'_772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_772 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_890
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-∅
d_res'45''8709'_774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_774 ~v0 ~v1 = du_res'45''8709'_774
du_res'45''8709'_774 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_774 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_848
-- abstract-set-theory.FiniteSetTheory._._.res-∅ᶜ
d_res'45''8709''7580'_776 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_776 ~v0 v1 = du_res'45''8709''7580'_776 v1
du_res'45''8709''7580'_776 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_776 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_850
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2
-- abstract-set-theory.FiniteSetTheory._._.res-⊆
d_res'45''8838'_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_778 ~v0 v1 = du_res'45''8838'_778 v1
du_res'45''8838'_778 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_778 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.∈-curryʳ
d_'8712''45'curry'691'_780 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'curry'691'_780 ~v0 v1 = du_'8712''45'curry'691'_780 v1
du_'8712''45'curry'691'_780 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_780 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._._.∈-res
d_'8712''45'res_782 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res_782 ~v0 v1 = du_'8712''45'res_782 v1
du_'8712''45'res_782 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res_782 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res_858
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_784 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res'7580''45'dom_784 ~v0 v1
  = du_'8712''45'res'7580''45'dom_784 v1
du_'8712''45'res'7580''45'dom_784 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res'7580''45'dom_784 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_886
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_786 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8314'_786 v1
du_'8712''45'res'7580''45'dom'8314'_786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'res'7580''45'dom'8314'_786 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_874
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_788 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_788 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8315'_788 v1
du_'8712''45'res'7580''45'dom'8315'_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_788 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_866
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._._∣^_
d__'8739''94'__792 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__792 ~v0 v1 = du__'8739''94'__792 v1
du__'8739''94'__792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'__792 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1116
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_ᶜ
d__'8739''94'_'7580'_794 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_794 ~v0 v1 = du__'8739''94'_'7580'_794 v1
du__'8739''94'_'7580'_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'_'7580'_794 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1122
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.coex-⊆
d_coex'45''8838'_796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_796 ~v0 v1 = du_coex'45''8838'_796 v1
du_coex'45''8838'_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_796 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1130
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.cores-cong
d_cores'45'cong_798 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45'cong_798 ~v0 v1 = du_cores'45'cong_798 v1
du_cores'45'cong_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45'cong_798 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45'cong_1140
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._._.cores-⊆
d_cores'45''8838'_800 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_800 ~v0 v1 = du_cores'45''8838'_800 v1
du_cores'45''8838'_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_800 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1128
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._._∣_
d__'8739'__804 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__804 ~v0 v1 = du__'8739'__804 v1
du__'8739'__804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__804 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣_ᶜ
d__'8739'_'7580'_806 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_806 ~v0 v1 = du__'8739'_'7580'_806 v1
du__'8739'_'7580'_806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_808 ~v0 v1
  = du__'10629'_'44''45''10630'_808 v1
du__'10629'_'44''45''10630'_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_808 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1770
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory._._.curryᵐ
d_curry'7504'_810 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_810 ~v0 v1 = du_curry'7504'_810 v1
du_curry'7504'_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_810 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1568
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.mapSingleValue
d_mapSingleValue_812 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_812 ~v0 v1 = du_mapSingleValue_812 v1
du_mapSingleValue_812 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_812 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1560
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.mapValueRestricted
d_mapValueRestricted_814 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_814 ~v0 v1 = du_mapValueRestricted_814 v1
du_mapValueRestricted_814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_814 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1552
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom∈
d_res'45'dom'8712'_816 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_res'45'dom'8712'_816 ~v0 v1 = du_res'45'dom'8712'_816 v1
du_res'45'dom'8712'_816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_res'45'dom'8712'_816 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton
d_res'45'singleton_818 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_818 ~v0 v1 = du_res'45'singleton_818 v1
du_res'45'singleton_818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_818 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1678
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-singleton'
d_res'45'singleton''_820 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_820 ~v0 v1 = du_res'45'singleton''_820 v1
du_res'45'singleton''_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_820 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton''
d_res'45'singleton''''_822 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_822 ~v0 v1 = du_res'45'singleton''''_822 v1
du_res'45'singleton''''_822 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_822 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1756
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton-inhabited
d_res'45'singleton'45'inhabited_824 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'45'inhabited_824 ~v0 v1
  = du_res'45'singleton'45'inhabited_824 v1
du_res'45'singleton'45'inhabited_824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'45'inhabited_824 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1738
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton⁺
d_res'45'singleton'8314'_826 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'8314'_826 ~v0 v1
  = du_res'45'singleton'8314'_826 v1
du_res'45'singleton'8314'_826 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'8314'_826 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-subset
d_res'45'subset_828 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_828 ~v0 v1 = du_res'45'subset_828 v1
du_res'45'subset_828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_828 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1636
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-cong
d_res'45'cong_830 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_830 ~v0 v1 = du_res'45'cong_830 v1
du_res'45'cong_830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_830 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'cong_1590
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_832 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_832 ~v0 v1
  = du_res'7504''45''8709''7580'_832 v1
du_res'7504''45''8709''7580'_832 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_832 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2
-- abstract-set-theory.FiniteSetTheory._._.update
d_update_834 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_834 ~v0 v1 = du_update_834 v1
du_update_834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_834 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._._⁻¹_
d__'8315''185'__838 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__838 ~v0 v1 = du__'8315''185'__838 v1
du__'8315''185'__838 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__838 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__2022
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_
d__'8739''94'__840 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__840 ~v0 v1 = du__'8739''94'__840 v1
du__'8739''94'__840 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__840 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__2006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_ᶜ
d__'8739''94'_'7580'_842 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_842 ~v0 v1 = du__'8739''94'_'7580'_842 v1
du__'8739''94'_'7580'_842 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_842 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_2014
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.cores-cong
d_cores'45'cong_844 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cores'45'cong_844 ~v0 v1 = du_cores'45'cong_844 v1
du_cores'45'cong_844 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cores'45'cong_844 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_cores'45'cong_2036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._._.⁻¹-cong
d_'8315''185''45'cong_846 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8315''185''45'cong_846 ~v0 v1 = du_'8315''185''45'cong_846 v1
du_'8315''185''45'cong_846 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8315''185''45'cong_846 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8315''185''45'cong_2088
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._._∪ˡ_
d__'8746''737'__850 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__850 ~v0 v1 = du__'8746''737'__850 v1
du__'8746''737'__850 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__850 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∪ˡ'_
d__'8746''737'''__852 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__852 ~v0 v1 = du__'8746''737'''__852 v1
du__'8746''737'''__852 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__852 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_854 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45'mapValues_854 ~v0 v1
  = du_disjoint'45''8746''737''45'mapValues_854 v1
du_disjoint'45''8746''737''45'mapValues_854 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45'mapValues_854 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_1170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_856 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'45''8746''737''45''8746'_856 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_856 v1
du_disjoint'45''8746''737''45''8746'_856 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_856 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_1098
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.insert
d_insert_858 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_858 ~v0 v1 = du_insert_858 v1
du_insert_858 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_858 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_1142
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.insertIfJust
d_insertIfJust_860 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_860 ~v0 v1 = du_insertIfJust_860 v1
du_insertIfJust_860 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_860 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_1150
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_862 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_862 ~v0 v1
  = du_singleton'45''8712''45''8746''737'_862 v1
du_singleton'45''8712''45''8746''737'_862 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_862 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_1106
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.∪ˡ-cong
d_'8746''737''45'cong_864 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'cong_864 ~v0 v1 = du_'8746''737''45'cong_864 v1
du_'8746''737''45'cong_864 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'cong_864 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8746''737''45'cong_1046
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._._._∩_
d__'8745'__868 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__868 ~v0 v1 = du__'8745'__868 v1
du__'8745'__868 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__868 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__706
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._._＼_
d__'65340'__870 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__870 ~v0 v1 = du__'65340'__870 v1
du__'65340'__870 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__870 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__732
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._.disjoint'
d_disjoint''_872 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_872 = erased
-- abstract-set-theory.FiniteSetTheory._._.∈-∩
d_'8712''45''8745'_874 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_874 ~v0 v1 = du_'8712''45''8745'_874 v1
du_'8712''45''8745'_874 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8745'_874 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ
d_lookup'7504'_878 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_878 ~v0 ~v1 = du_lookup'7504'_878
du_lookup'7504'_878 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_878 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ-∈
d_lookup'7504''45''8712'_880 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'7504''45''8712'_880 ~v0 ~v1
  = du_lookup'7504''45''8712'_880
du_lookup'7504''45''8712'_880 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_lookup'7504''45''8712'_880 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''45''8712'_1938
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ?
d_lookup'7504''63'_882 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_882 ~v0 ~v1 = du_lookup'7504''63'_882
du_lookup'7504''63'_882 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_882 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1954
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.pullbackMap
d_pullbackMap_884 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_884 ~v0 ~v1 = du_pullbackMap_884
du_pullbackMap_884 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_884 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-lookup
d_'8712''45'lookup_886 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup_886 = erased
-- abstract-set-theory.FiniteSetTheory._._.∈⇒lookup≡just
d_'8712''8658'lookup'8801'just_888 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''8658'lookup'8801'just_888 = erased
-- abstract-set-theory.FiniteSetTheory._._._∪⁺_
d__'8746''8314'__892 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__892 ~v0 ~v1 = du__'8746''8314'__892
du__'8746''8314'__892 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__892 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__546
      (coe d_List'45'Model'7496'_8) v1 v2
-- abstract-set-theory.FiniteSetTheory._._.aggregate₊
d_aggregate'8330'_894 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_894 ~v0 ~v1 = du_aggregate'8330'_894
du_aggregate'8330'_894 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_894 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_548
      (coe d_List'45'Model'7496'_8) v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_896 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8746''8314''8660''8746'dom_896 ~v0 ~v1
  = du_dom'8746''8314''8660''8746'dom_896
du_dom'8746''8314''8660''8746'dom_896 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_dom'8746''8314''8660''8746'dom_896 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_610
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_898 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_898 ~v0 ~v1
  = du_dom'8746''8314''8801''8746'dom_898
du_dom'8746''8314''8801''8746'dom_898 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_898 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_614
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_900 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8746''8314''8838''8746'dom_900 ~v0 ~v1
  = du_dom'8746''8314''8838''8746'dom_900
du_dom'8746''8314''8838''8746'dom_900 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8746''8314''8838''8746'dom_900 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_572
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.intersectionWith
d_intersectionWith_902 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_intersectionWith_902 ~v0 ~v1 = du_intersectionWith_902
du_intersectionWith_902 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_intersectionWith_902 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_intersectionWith_516
      (coe d_List'45'Model'7496'_8) v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.unionThese
d_unionThese_904 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
d_unionThese_904 ~v0 ~v1 = du_unionThese_904
du_unionThese_904 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_904 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_376
      (coe d_List'45'Model'7496'_8) v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.unionWith
d_unionWith_906 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unionWith_906 ~v0 ~v1 = du_unionWith_906
du_unionWith_906 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_906 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_438
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.∪dom-lookup
d_'8746'dom'45'lookup_908 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_908 ~v0 ~v1 = du_'8746'dom'45'lookup_908
du_'8746'dom'45'lookup_908 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_908 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_566
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_910 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746'dom'8838'dom'8746''8314'_910 ~v0 ~v1
  = du_'8746'dom'8838'dom'8746''8314'_910
du_'8746'dom'8838'dom'8746''8314'_910 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746'dom'8838'dom'8746''8314'_910 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_588
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._._∩ᵐ_
d__'8745''7504'__926 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__926 ~v0 ~v1 v2 v3 = du__'8745''7504'__926 v2 v3
du__'8745''7504'__926 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__926 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.Prelude.d_DecEq'45''215''8242'_6
            () erased () erased v0 v1))
-- abstract-set-theory.FiniteSetTheory._._._∪ˡᶠ_
d__'8746''737''7584'__932 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__932 ~v0 ~v1 v2 ~v3
  = du__'8746''737''7584'__932 v2
du__'8746''737''7584'__932 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__932 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1210
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612 d_List'45'Model'7496'_8
              erased v0 v2 v1))
-- abstract-set-theory.FiniteSetTheory._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_934 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_934 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45'partition_934 v2 v3
du_indexedSum'7504''45'partition_934 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_934 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      (coe
         (\ v9 v10 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612 d_List'45'Model'7496'_8
              erased v0 v10 v9))
      v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_936 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_936 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45''8746'_936 v2 v3
du_indexedSum'7504''45''8746'_936 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_indexedSum'7504''45''8746'_936 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      (coe
         (\ v8 v9 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612 d_List'45'Model'7496'_8
              erased v0 v9 v8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.∪ˡ-finite
d_'8746''737''45'finite_938 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_938 ~v0 ~v1 v2 ~v3
  = du_'8746''737''45'finite_938 v2
du_'8746''737''45'finite_938 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_938 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1204
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1612 d_List'45'Model'7496'_8
              erased v0 v2 v1))
-- abstract-set-theory.FiniteSetTheory.Properties._._≡_⨿_
d__'8801'_'10815'__944 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__944 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_946 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_946 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_948 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_948 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_712
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_950 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104
d_Set'45'BddSemilattice_950 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_816
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_952 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_118
d_Set'45'BoundedJoinSemilattice_952 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_954 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_954 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_810
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.card-singleton
d_card'45'singleton_956 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45'singleton_956 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_958 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_958 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_960 ::
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong_960 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_cong'45''8838''8658'cong_960 v3 v4 v5 v6
du_cong'45''8838''8658'cong_960 ::
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong_960 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 v1 v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v0 v2 v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- abstract-set-theory.FiniteSetTheory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_962 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_cong'45''8838''8658'cong'8322'_962 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9 v10
  = du_cong'45''8838''8658'cong'8322'_962 v4 v5 v6 v7 v8 v9 v10
du_cong'45''8838''8658'cong'8322'_962 ::
  ([AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   (AgdaAny ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
    MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
   AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_cong'45''8838''8658'cong'8322'_962 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         v0 v1 v2 v3 v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         v0 v2 v1 v4 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- abstract-set-theory.FiniteSetTheory.Properties._.disjoint-subst
d_disjoint'45'subst_964 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'subst_964 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.disjoint-sym
d_disjoint'45'sym_966 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'45'sym_966 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-cong
d_filter'45'cong_968 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'cong_968 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'cong_654
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-finite
d_filter'45'finite_970 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_970 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_972 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_972 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-⊆
d_filter'45'hom'45''8838'_974 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8838'_974 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_976 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8839'_976 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-idem
d_filter'45'idem_978 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'idem_978 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'idem_602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_980 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'pres'45''8838'_980 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_646
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-split-∪
d_filter'45'split'45''8746'_982 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_982 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-∅
d_filter'45''8709'_984 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_984 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_572
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-⊆
d_filter'45''8838'_986 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_986 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_988 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_988 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∅
d_map'45''8709'_990 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_990 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_444
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∘
d_map'45''8728'_992 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_992 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∘⊆
d_map'45''8728''8838'_994 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_994 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∪
d_map'45''8746'_996 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_996 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_998 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_998 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.map-⊆
d_map'45''8838'_1000 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838'_1000 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_390
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.map-⊆∘
d_map'45''8838''8728'_1002 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_1002 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_1004 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_1004 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-finite
d_singleton'45'finite_1006 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_1006 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_716
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-strongly-finite
d_singleton'45'strongly'45'finite_1008 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'strongly'45'finite_1008 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'strongly'45'finite_496
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-≢-∅
d_singleton'45''8802''45''8709'_1010 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_1010 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.sublist-⇔
d_sublist'45''8660'_1012 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_sublist'45''8660'_1012 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_1080
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_1014 ::
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8707''45'sublist'45''8660'_1014 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1114
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-finite
d_'8709''45'finite_1016 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_1016 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-least
d_'8709''45'least_1018 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_1018 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-minimum
d_'8709''45'minimum_1020 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_1020 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_1022 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_1022 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_436
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_1024 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_1024 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_1026 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_1026 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_1028 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_1028 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_1030 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_1030 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_1032 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_1032 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_1034 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_1034 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_1036 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_1036 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_1038 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_1038 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-×
d_'8712''45''215'_1040 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_1040 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_1042 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_1042 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_1044 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_1044 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∉-∅
d_'8713''45''8709'_1046 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_1046 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-Supremum
d_'8746''45'Supremum_1048 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_1048 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-assoc
d_'8746''45'assoc_1050 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_1050 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_864
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-comm
d_'8746''45'comm_1052 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_1052 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_856
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-cong
d_'8746''45'cong_1054 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_1054 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_786
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_1056 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45'cong'45''8838'_1056 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_780
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_1058 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_1058 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_1060 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_1060 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_850
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_1062 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_1062 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_846
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_1064 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_1064 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_788
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-sym
d_'8746''45'sym_1066 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_1066 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_808
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆
d_'8746''45''8838'_1068 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838'_1068 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_754
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_1070 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_1070 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_752
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_1072 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_1072 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_1074 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''7497''45'Setoid_1074 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_1076 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7497''45'isEquivalence_1076 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_1078 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''7497''8660''8801''7497'''_1078 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_1080 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8838''45'PartialOrder_1080 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-Preorder
d_'8838''45'Preorder_1082 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'Preorder_1082 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-Transitive
d_'8838''45'Transitive_1084 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'Transitive_1084 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'Transitive_1084 v4 v5 v6 v7
du_'8838''45'Transitive_1084 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'Transitive_1084 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_1086 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_1086 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆→∪
d_'8838''8594''8746'_1088 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_1088 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_762
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1092 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_1092 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_1052
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1094 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1094 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1096 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1096 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_996
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1098 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1098 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_1020
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1100 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_1100 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_1044
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1102 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_1102 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_1104 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1104 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_1038
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1106 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'cong'45''8838'_1106 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_1030
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1108 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1108 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_1028
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_1110 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1110 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1068
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1112 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1112 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1114 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838'_1114 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_1012
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1116 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1116 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1118 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1118 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_1008
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._._.Set-Lattice
d_Set'45'Lattice_1130 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_1130 ~v0 v1 = du_Set'45'Lattice_1130 v1
du_Set'45'Lattice_1130 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
du_Set'45'Lattice_1130 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_1052
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1132 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1132 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1134 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1134 ~v0 ~v1
  = du_disjoint'8658'disjoint''_1134
du_disjoint'8658'disjoint''_1134 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_1134 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_996
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-Infimum
d_'8745''45'Infimum_1136 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1136 ~v0 v1 = du_'8745''45'Infimum_1136 v1
du_'8745''45'Infimum_1136 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1136 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_1020
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1138 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_1138 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_1138 v1
du_'8745''45'OrderHomomorphism'691'_1138 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'691'_1138 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_1044
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1140 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_1140 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_1140 v1
du_'8745''45'OrderHomomorphism'737'_1140 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'737'_1140 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-cong
d_'8745''45'cong_1142 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1142 ~v0 v1 = du_'8745''45'cong_1142 v1
du_'8745''45'cong_1142 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1142 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_1038
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_1144 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'cong'45''8838'_1144 ~v0 v1
  = du_'8745''45'cong'45''8838'_1144 v1
du_'8745''45'cong'45''8838'_1144 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'cong'45''8838'_1144 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_1030
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_1146 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1146 ~v0 v1
  = du_'8745''45'preserves'45'finite_1146 v1
du_'8745''45'preserves'45'finite_1146 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1146 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_1028
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-sym
d_'8745''45'sym_1148 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1148 ~v0 v1 = du_'8745''45'sym_1148 v1
du_'8745''45'sym_1148 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1148 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1068
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_1150 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1150 ~v0 v1 = du_'8745''45'sym'8838'_1150 v1
du_'8745''45'sym'8838'_1150 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_1150 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆
d_'8745''45''8838'_1152 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838'_1152 ~v0 v1 = du_'8745''45''8838'_1152 v1
du_'8745''45''8838'_1152 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838'_1152 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_1012
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_1154 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1154 ~v0 v1
  = du_'8745''45''8838''691'_1154 v1
du_'8745''45''8838''691'_1154 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_1154 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_1156 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1156 ~v0 v1
  = du_'8745''45''8838''737'_1156 v1
du_'8745''45''8838''737'_1156 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_1156 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_1008
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.to-sp
d_to'45'sp_1162 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_1162 ~v0 ~v1 v2 = du_to'45'sp_1162 v2
du_to'45'sp_1162 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_1162 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)
-- abstract-set-theory.FiniteSetTheory.finiteness
d_finiteness_1166 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1166 ~v0 = du_finiteness_1166
du_finiteness_1166 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_1166
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_1024 d_List'45'Model'7584'_6
      erased
-- abstract-set-theory.FiniteSetTheory.lengthˢ
d_length'738'_1174 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> Integer
d_length'738'_1174 ~v0 ~v1 v2 v3 v4 = du_length'738'_1174 v2 v3 v4
du_length'738'_1174 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 -> AgdaAny -> Integer
du_length'738'_1174 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1034
      (coe d_List'45'Model'7584'_6) (coe v0)
      (coe MAlonzo.Code.Class.IsSet.d_toSet_520 v1 v2)
-- abstract-set-theory.FiniteSetTheory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_1188 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_512 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_1188 = erased
-- abstract-set-theory.FiniteSetTheory.setToList
d_setToList_1196 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_1196 ~v0 v1 = du_setToList_1196 v1
du_setToList_1196 :: [AgdaAny] -> [AgdaAny]
du_setToList_1196 v0 = coe v0
-- abstract-set-theory.FiniteSetTheory.DecEq-ℙ
d_DecEq'45'ℙ_1200 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_1200 ~v0 v1 = du_DecEq'45'ℙ_1200 v1
du_DecEq'45'ℙ_1200 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_1200 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_208 (coe v0)
-- abstract-set-theory.FiniteSetTheory.Show-ℙ
d_Show'45'ℙ_1204 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℙ_1204 ~v0 v1 = du_Show'45'ℙ_1204 v1
du_Show'45'ℙ_1204 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℙ_1204 v0
  = coe
      MAlonzo.Code.Class.Show.Core.C_mkShow_18
      (coe
         (\ v1 ->
            coe
              MAlonzo.Code.Data.String.Base.d_braces_48
              (coe
                 MAlonzo.Code.Data.String.Base.d_intersperse_30
                 (", " :: Data.Text.Text)
                 (coe
                    MAlonzo.Code.Data.List.Base.du_map_22
                    (coe MAlonzo.Code.Class.Show.Core.d_show_16 (coe v0))
                    (coe
                       MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28
                       (coe du_finiteness_1166 v1))))))
-- abstract-set-theory.FiniteSetTheory._ᶠᵐ
d__'7584''7504'_1208 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_1208 ~v0 ~v1 v2 = du__'7584''7504'_1208 v2
du__'7584''7504'_1208 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_1208 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_1166 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.FiniteSetTheory._ᶠˢ
d__'7584''738'_1214 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1214 ~v0 v1 = du__'7584''738'_1214 v1
du__'7584''738'_1214 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1214 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_1166 v0)
-- abstract-set-theory.FiniteSetTheory.filterˢ
d_filter'738'_1222 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1222 ~v0 ~v1 v2 = du_filter'738'_1222 v2
du_filter'738'_1222 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1222 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_422
      (MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1162 (coe v0))
-- abstract-set-theory.FiniteSetTheory._∘ʳ_
d__'8728''691'__1234 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8728''691'__1234 ~v0 ~v1 ~v2 v3 v4 v5
  = du__'8728''691'__1234 v3 v4 v5
du__'8728''691'__1234 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8728''691'__1234 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_concatMap'738'_510
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         (\ v3 ->
            coe
              MAlonzo.Code.Axiom.Set.du_map_400
              (MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
              (\ v4 ->
                 coe
                   MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3))
                   (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v4)))
              (coe
                 du_filter'738'_1222
                 (\ v4 ->
                    coe
                      MAlonzo.Code.Class.Decidable.Core.du_'8263''178'__102
                      (coe MAlonzo.Code.Class.DecEq.Core.d__'8799'__16 (coe v0))
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3))
                      (coe MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v4)))
                 v2)))
      (coe v1)
-- abstract-set-theory.FiniteSetTheory.filterᵐ
d_filter'7504'_1254 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1254 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1254 v3
du_filter'7504'_1254 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1254 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_748
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1162 (coe v0))
-- abstract-set-theory.FiniteSetTheory.filterKeys
d_filterKeys_1262 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1262 ~v0 ~v1 ~v2 v3 = du_filterKeys_1262 v3
du_filterKeys_1262 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1262 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_822
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1162 (coe v0))
-- abstract-set-theory.FiniteSetTheory._∣^'_
d__'8739''94'''__1270 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1270 ~v0 ~v1 v2 ~v3 v4
  = du__'8739''94'''__1270 v2 v4
du__'8739''94'''__1270 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1270 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe v0) (coe du_to'45'sp_1162 (coe v1))
-- abstract-set-theory.FiniteSetTheory.indexedSumᵛ'
d_indexedSum'7515'''_1276 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1276 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1276 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1276 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1276 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1148 v0 v1 v2 v3
      (coe du__'7584''7504'_1208 (coe v4))
-- abstract-set-theory.FiniteSetTheory.indexedSum'
d_indexedSum''_1282 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1282 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1282 v2 v3 v4 v5
du_indexedSum''_1282 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1282 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_966 v1 v0 v2
      (coe du__'7584''738'_1214 (coe v3))
-- abstract-set-theory.FiniteSetTheory._.aggregateBy
d_aggregateBy_1304 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregateBy_1304 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_aggregateBy_1304 v3 v4 v5 v6 v7 v8
du_aggregateBy_1304 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregateBy_1304 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         (\ v6 ->
            coe
              du_indexedSum'7515'''_1276 (coe v0) (coe v3) (coe v2)
              (coe (\ v7 -> v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1532
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
                    erased v0)
                 (coe v5)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_580
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_584)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1116
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
                          erased v1)
                       (coe v4)
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_332
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_342
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8)))
                          v6))))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_582
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_584) (coe v4))
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵛ'-cong
d_indexedSum'7515''''45'cong_1316 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515''''45'cong_1316 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_indexedSum'7515''''45'cong_1316 v3 v4 v5 v6 v7 v8
du_indexedSum'7515''''45'cong_1316 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515''''45'cong_1316 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1068 (coe v2)
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 (coe v0)
         (coe v1))
      (coe
         (\ v6 ->
            coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe
         du__'7584''738'_1214
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_560 (coe v4)))
      (coe
         du__'7584''738'_1214
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_560 (coe v5)))
