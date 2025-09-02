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
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 v2
-- abstract-set-theory.FiniteSetTheory._._ᵐ
d__'7504'_178 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_496 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_178 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_558 v2
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
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__1152
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
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1160
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
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1166
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
      MAlonzo.Code.Axiom.Set.Map.du_constMap'45'dom_1178
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
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_692
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.filterKeys
d_filterKeys_204 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_204 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_738
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3
-- abstract-set-theory.FiniteSetTheory._.filterᵐ-finite
d_filter'7504''45'finite_206 ::
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
d_filter'7504''45'finite_206 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory._.filterᵐ
d_filter'7504'_208 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_208 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.fromListᵐ
d_fromList'7504'_210 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_210 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.idMap
d_idMap_212 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_212 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_1078
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory._.left-unique
d_left'45'unique_214 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_214 = erased
-- abstract-set-theory.FiniteSetTheory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_216 ::
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
d_left'45'unique'45'map'738'_216 = erased
-- abstract-set-theory.FiniteSetTheory._.mapFromFun
d_mapFromFun_218 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_218 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1082
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.mapFromPartialFun
d_mapFromPartialFun_220 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_220 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1264
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.mapKeys
d_mapKeys_222 ::
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
d_mapKeys_222 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_224 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_224 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1256
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartial-uniq
d_mapPartial'45'uniq_226 ::
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
d_mapPartial'45'uniq_226 = erased
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_228 ::
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
d_mapPartialLiftKey'45'just'45'uniq_228 = erased
-- abstract-set-theory.FiniteSetTheory._.mapValues
d_mapValues_230 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_230 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapValues-dom
d_mapValues'45'dom_232 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_232 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_1148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapWithKey
d_mapWithKey_234 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_234 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1130
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapWithKey-uniq
d_mapWithKey'45'uniq_236 ::
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
d_mapWithKey'45'uniq_236 = erased
-- abstract-set-theory.FiniteSetTheory._.mapʳ-uniq
d_map'691''45'uniq_238 ::
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
d_map'691''45'uniq_238 = erased
-- abstract-set-theory.FiniteSetTheory._.mapˡ-uniq
d_map'737''45'uniq_240 ::
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
d_map'737''45'uniq_240 = erased
-- abstract-set-theory.FiniteSetTheory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_242 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_242 = erased
-- abstract-set-theory.FiniteSetTheory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_244 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_244 = erased
-- abstract-set-theory.FiniteSetTheory._.singletonᵐ
d_singleton'7504'_246 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_246 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_742
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.toFinMap
d_toFinMap_248 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_248 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_614 v2 v3
-- abstract-set-theory.FiniteSetTheory._.toMap
d_toMap_250 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_250 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_622 v2
-- abstract-set-theory.FiniteSetTheory._.toRel
d_toRel_252 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_252 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_628 v2
-- abstract-set-theory.FiniteSetTheory._.weaken-Injective
d_weaken'45'Injective_254 ::
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
d_weaken'45'Injective_254 = erased
-- abstract-set-theory.FiniteSetTheory._.ˢ-left-unique
d_'738''45'left'45'unique_256 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_496
d_'738''45'left'45'unique_256 = erased
-- abstract-set-theory.FiniteSetTheory._.∅-left-unique
d_'8709''45'left'45'unique_258 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_496
d_'8709''45'left'45'unique_258 = erased
-- abstract-set-theory.FiniteSetTheory._.∅ᵐ
d_'8709''7504'_260 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_260 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.⊆-left-unique
d_'8838''45'left'45'unique_262 ::
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
d_'8838''45'left'45'unique_262 = erased
-- abstract-set-theory.FiniteSetTheory._.⊆-map
d_'8838''45'map_264 ::
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
d_'8838''45'map_264 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_568 v2 v4
-- abstract-set-theory.FiniteSetTheory._.❴_❵ᵐ
d_'10100'_'10101''7504'_266 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_266 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_750
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__270 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__270 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._∣^_
d__'8739''94'__272 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__272 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_274 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_274 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__278 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__278 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_282 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_496 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_282 = erased
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_286 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_286 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ-∈
d_lookup'7504''45''8712'_288 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'7504''45''8712'_288 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''45''8712'_1698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_290 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_290 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.pullbackMap
d_pullbackMap_292 ::
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
d_pullbackMap_292 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.∈-lookup
d_'8712''45'lookup_294 ::
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
d_'8712''45'lookup_294 = erased
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐ.∈⇒lookup≡just
d_'8712''8658'lookup'8801'just_296 ::
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
d_'8712''8658'lookup'8801'just_296 = erased
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._∣_
d__'8739'__300 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_302 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_304 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_304 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.curryᵐ
d_curry'7504'_306 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_306 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_308 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_308 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1376
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_310 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_310 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1368
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-dom∈
d_res'45'dom'8712'_312 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_res'45'dom'8712'_312 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton
d_res'45'singleton_314 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_314 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1440
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_316 ::
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
d_res'45'singleton''_316 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1476
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_318 ::
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
d_res'45'singleton''''_318 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1518
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_320 ::
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
d_res'45'singleton'45'inhabited_320 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1500
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_322 ::
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
d_res'45'singleton'8314'_322 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.res-subset
d_res'45'subset_324 ::
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
d_res'45'subset_324 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_326 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_326 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1366
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.Restrictionᵐ.update
d_update_328 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_328 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1534
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ._∪ˡ_
d__'8746''737'__332 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__332 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__334 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__896
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_336 ::
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
d_disjoint'45''8746''737''45'mapValues_336 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_988
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_338 ::
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
d_disjoint'45''8746''737''45''8746'_338 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_916
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.insert
d_insert_340 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_960
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.insertIfJust
d_insertIfJust_342 ::
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
d_insertIfJust_342 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Unionᵐ.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_344 ::
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
d_singleton'45''8712''45''8746''737'_344 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._._ᶠ
d__'7584'_348 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_348 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_318 v1 v2
-- abstract-set-theory.FiniteSetTheory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_350 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_350 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_328
      (coe d_List'45'Model_4) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Factor.factor
d_factor_354 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_354 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_350 v3 v5
-- abstract-set-theory.FiniteSetTheory._.Factor.factor-cong
d_factor'45'cong_356 ::
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
d_factor'45'cong_356 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_354 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Factor.factor-∪
d_factor'45''8746'_358 ::
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
d_factor'45''8746'_358 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_390 v6 v7 v8 v9
      v10
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_362 ::
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
d_deduplicate'45'Σ_362 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_426 v2 v6
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.ext
d_ext_364 ::
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
d_ext_364 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_430 v2 v4 v6
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.ext-cong
d_ext'45'cong_366 ::
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
d_ext'45'cong_366 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_436 v2 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.f-cong'
d_f'45'cong''_368 ::
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
d_f'45'cong''_368 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_418 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor
d_factor_370 ::
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
d_factor_370 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_370 v2 v4
du_factor_370 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_370 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_350
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_430 (coe v0) (coe v1))
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-cong
d_factor'45'cong_372 ::
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
d_factor'45'cong_372 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_372 v2 v5
du_factor'45'cong_372 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_372 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_354
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_436 (coe v0) (coe v1))
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-∪
d_factor'45''8746'_374 ::
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
d_factor'45''8746'_374 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_374
du_factor'45''8746'_374 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_374 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_390 v1 v2 v3 v4
      v5
-- abstract-set-theory.FiniteSetTheory._.FactorUnique.factor-∪'
d_factor'45''8746'''_376 ::
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
d_factor'45''8746'''_376 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_472 v9 v10 v12
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__382 ::
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
d__'8746''8314'__382 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
      (coe d_List'45'Model'7496'_8) v3 v4
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_384 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_384 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe d_List'45'Model'7496'_8) v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_386 ::
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
d_dom'8746''8314''8660''8746'dom_386 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_596
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_388 ::
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
d_dom'8746''8314''8801''8746'dom_388 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_600
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_390 ::
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
d_dom'8746''8314''8838''8746'dom_390 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.intersectWith
d_intersectWith_392 ::
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
d_intersectWith_392 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_intersectWith_502
      (coe d_List'45'Model'7496'_8) v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.unionThese
d_unionThese_394 ::
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
d_unionThese_394 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
      (coe d_List'45'Model'7496'_8) v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.unionWith
d_unionWith_396 ::
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
d_unionWith_396 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_424
      (coe d_List'45'Model'7496'_8) v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.∪dom-lookup
d_'8746'dom'45'lookup_398 ::
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
d_'8746'dom'45'lookup_398 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_552
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Lookupᵐᵈ.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_400 ::
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
d_'8746'dom'8838'dom'8746''8314'_400 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_574
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Rel
d_Rel_404 :: () -> () -> ()
d_Rel_404 = erased
-- abstract-set-theory.FiniteSetTheory._.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_406 ::
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
d_disjoint'45'dom'8658'disjoint_406 = erased
-- abstract-set-theory.FiniteSetTheory._.dom-cong
d_dom'45'cong_408 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_408 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_526
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.dom-mapʳ⊆
d_dom'45'map'691''8838'_410 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_410 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_556
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.dom-mapˡ≡map-dom
d_dom'45'map'737''8801'map'45'dom_412 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'map'737''8801'map'45'dom_412 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'737''8801'map'45'dom_586
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.dom-single→single
d_dom'45'single'8594'single_414 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'single'8594'single_414 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8594'single_476
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.dom-single≡single
d_dom'45'single'8801'single_416 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_416 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_480
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom-∅
d_dom'45''8709'_418 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_418 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_634
-- abstract-set-theory.FiniteSetTheory._.dom-⊆mapʳ
d_dom'45''8838'map'691'_420 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_420 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.dom∅
d_dom'8709'_422 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_422 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_498
-- abstract-set-theory.FiniteSetTheory._.dom∈
d_dom'8712'_424 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8712'_424 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_428
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom∪
d_dom'8746'_426 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_426 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8746'_500
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.dom⊆
d_dom'8838'_428 ::
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
d_dom'8838'_428 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_520
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.impl⇒cores⊆
d_impl'8658'cores'8838'_430 ::
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
d_impl'8658'cores'8838'_430 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_402
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.impl⇒res⊆
d_impl'8658'res'8838'_432 ::
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
d_impl'8658'res'8838'_432 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_380
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.mapMaybeWithKey
d_mapMaybeWithKey_434 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_434 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_702
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey
d_mapPartialLiftKey_436 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_436 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_642 v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_438 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_438 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.mapʳ
d_map'691'_440 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_440 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_418
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapʳ-dom
d_map'691''45'dom_442 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_442 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_582
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.mapˡ
d_map'737'_444 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_444 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_412
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.relatedˡ
d_related'737'_446 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_446 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.single→dom-single
d_single'8594'dom'45'single_448 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_single'8594'dom'45'single_448 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_single'8594'dom'45'single_478
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.∅ʳ
d_'8709''691'_450 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_450 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_342
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.∈-dom
d_'8712''45'dom_452 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom_452 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_454 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'dom'45'singleton'45'pair_454 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom'45'singleton'45'pair_472
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_456 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_456 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.∉-dom∅
d_'8713''45'dom'8709'_458 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_458 = erased
-- abstract-set-theory.FiniteSetTheory._.Corestriction._∣^_
d__'8739''94'__462 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__462 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1102
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_464 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_464 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1108
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Corestriction.coex-⊆
d_coex'45''8838'_466 ::
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
d_coex'45''8838'_466 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1116
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Corestriction.cores-⊆
d_cores'45''8838'_468 ::
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
d_cores'45''8838'_468 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1114
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction._∣_
d__'8739'__472 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__472 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction._∣_ᶜ
d__'8739'_'7580'_474 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_474 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction._⟪$⟫_
d__'10218''36''10219'__476 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__476 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__746
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Restriction.curryʳ
d_curry'691'_478 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_478 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.ex-⊆
d_ex'45''8838'_480 ::
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
d_ex'45''8838'_480 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-cong
d_res'45'comp'45'cong_482 ::
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
d_res'45'comp'45'cong_482 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-dom
d_res'45'comp'45'dom_484 ::
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
d_res'45'comp'45'dom_484 = erased
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_486 ::
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
d_res'45'comp'45'dom'7504'_486 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_818
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-cong
d_res'45'cong_488 ::
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
d_res'45'cong_488 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_754
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom
d_res'45'dom_490 ::
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
d_res'45'dom_490 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm
d_res'45'dom'45'comm_492 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_492 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1046
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_494 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_494 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1040
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_496 ::
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
d_res'45'dom'45'comm'8745''8838'_496 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_992
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_498 ::
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
d_res'45'dom'45'comm'8838''8745'_498 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-domᵐ
d_res'45'dom'7504'_500 ::
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
d_res'45'dom'7504'_500 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_502 ::
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
d_res'45'ex'45'disj'45''8746'_502 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_504 ::
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
d_res'45'ex'45'disjoint_504 = erased
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-ex-∪
d_res'45'ex'45''8746'_506 ::
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
d_res'45'ex'45''8746'_506 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_876
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-∅
d_res'45''8709'_508 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_508 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_834
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-∅ᶜ
d_res'45''8709''7580'_510 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_510 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_836
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3
-- abstract-set-theory.FiniteSetTheory._.Restriction.res-⊆
d_res'45''8838'_512 ::
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
d_res'45''8838'_512 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-curryʳ
d_'8712''45'curry'691'_514 ::
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
d_'8712''45'curry'691'_514 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_918
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-res
d_'8712''45'res_516 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res_516 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_518 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res'7580''45'dom_518 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_520 ::
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
d_'8712''45'res'7580''45'dom'8314'_520 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_860
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_522 ::
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
d_'8712''45'res'7580''45'dom'8315'_522 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.fold-cong↭
d_fold'45'cong'8621'_526 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__34 ->
  AgdaAny
d_fold'45'cong'8621'_526 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_924 v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum
d_indexedSum_528 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_528 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_946 v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSum-cong
d_indexedSum'45'cong_530 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_530 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1048 v1 v3 v4 v5
      v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum-singleton
d_indexedSum'45'singleton_532 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_532 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_1076 v1 v4 v5
-- abstract-set-theory.FiniteSetTheory._.indexedSum-singleton'
d_indexedSum'45'singleton''_534 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_534 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_1082
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.indexedSum-∅
d_indexedSum'45''8709'_536 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_536 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSum-∪
d_indexedSum'45''8746'_538 ::
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
d_indexedSum'45''8746'_538 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_1060 v1 v3 v4 v7
      v8
-- abstract-set-theory.FiniteSetTheory._.indexedSumL
d_indexedSumL_540 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_540 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_900 v1 v3
-- abstract-set-theory.FiniteSetTheory._.indexedSumL'
d_indexedSumL''_542 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_542 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_908 v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.indexedSumL-++
d_indexedSumL'45''43''43'_544 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_544 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_972 v1 v3 v4
      v5
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵐ
d_indexedSum'7504'_546 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_546 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_1120 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_548 ::
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
d_indexedSum'7504''45'cong_548 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_1134 v3 v4
      v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵛ
d_indexedSum'7515'_550 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_550 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1128 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__554 ::
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
d__'8746''737''7584'__554 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_556 ::
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
d_indexedSum'7504''45'partition_556 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1242
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v7 v8 v9 v10 v11 v12
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_558 ::
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
d_indexedSum'7504''45''8746'_558 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
                                 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1206
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v7 v8 v9 v10
-- abstract-set-theory.FiniteSetTheory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_560 ::
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
d_'8746''737''45'finite_560 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1182
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory._.TotalMap
d_TotalMap_564 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.total
d_total_568 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_568 = erased
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun⇒Map
d_Fun'8658'Map_572 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_572 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_324
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_574 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_Fun'8658'TotalMap_574 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v4
-- abstract-set-theory.FiniteSetTheory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_576 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_576 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_344
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_578 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_578 = erased
-- abstract-set-theory.FiniteSetTheory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_582 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_582 = erased
-- abstract-set-theory.FiniteSetTheory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_584 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_584 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_302
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v6 v7
-- abstract-set-theory.FiniteSetTheory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_588 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_588 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMap.lookup
d_lookup_590 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> AgdaAny
d_lookup_590 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMap.lookup∈rel
d_lookup'8712'rel_592 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_592 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_192
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMap.rel
d_rel_594 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_594 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_180 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMap.toMap
d_toMap_596 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_596 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_186 v2
-- abstract-set-theory.FiniteSetTheory._.TotalMap.total-rel
d_total'45'rel_598 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_598 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_184 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_600 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_600 = erased
-- abstract-set-theory.FiniteSetTheory._.Update.mapWithKey
d_mapWithKey_604 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_mapWithKey_604 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v4 v5
-- abstract-set-theory.FiniteSetTheory._.Update.update
d_update_606 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_168
d_update_606 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_278
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._.Update.updateFn-id
d_updateFn'45'id_608 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_608 = erased
-- abstract-set-theory.FiniteSetTheory._._TotalOn_
d__TotalOn__612 ::
  () ->
  () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> ()
d__TotalOn__612 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn
d_TotalMapOn_614 a0 a1 a2 = ()
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.left-unique-rel
d_left'45'unique'45'rel_620 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_620 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.lookup
d_lookup_622 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_lookup_622 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_lookup_76
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.lookup∈rel
d_lookup'8712'rel_624 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_624 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_lookup'8712'rel_84
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.rel
d_rel_626 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_626 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.d_rel_66 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.rel⇒lookup
d_rel'8658'lookup_628 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_rel'8658'lookup_628 = erased
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.toMap
d_toMap_630 ::
  () ->
  [AgdaAny] ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_630 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.du_toMap_72 v3
-- abstract-set-theory.FiniteSetTheory._.TotalMapOn.total-rel
d_total'45'rel_632 ::
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_632 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMapOn.d_total'45'rel_70 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.UpdateOn.mapWithKeyOn
d_mapWithKeyOn_636 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52
d_mapWithKeyOn_636 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_mapWithKeyOn_146
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v5 v6
-- abstract-set-theory.FiniteSetTheory._.UpdateOn.update
d_update_638 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52 ->
  MAlonzo.Code.Axiom.Set.TotalMapOn.T_TotalMapOn_52
d_update_638 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMapOn.du_update_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v4 v5
-- abstract-set-theory.FiniteSetTheory._._∈_
d__'8712'__642 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> AgdaAny -> ()
d__'8712'__642 = erased
-- abstract-set-theory.FiniteSetTheory._._∉_
d__'8713'__644 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> AgdaAny -> ()
d__'8713'__644 = erased
-- abstract-set-theory.FiniteSetTheory._.All-syntax
d_All'45'syntax_646 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_646 = erased
-- abstract-set-theory.FiniteSetTheory._.Ex-syntax
d_Ex'45'syntax_648 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_648 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet
d_IsSet_650 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.IsSet-Map
d_IsSet'45'Map_654 ::
  () -> () -> MAlonzo.Code.Class.IsSet.T_IsSet_494
d_IsSet'45'Map_654 v0 v1
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Map_570
-- abstract-set-theory.FiniteSetTheory._.IsSet-Set
d_IsSet'45'Set_656 :: () -> MAlonzo.Code.Class.IsSet.T_IsSet_494
d_IsSet'45'Set_656 v0
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566
-- abstract-set-theory.FiniteSetTheory._.IsSet-TotalMap
d_IsSet'45'TotalMap_658 ::
  () -> () -> MAlonzo.Code.Class.IsSet.T_IsSet_494
d_IsSet'45'TotalMap_658 v0 v1
  = coe MAlonzo.Code.Class.IsSet.du_IsSet'45'TotalMap_572
-- abstract-set-theory.FiniteSetTheory._.dom
d_dom_660 ::
  () ->
  () ->
  () -> MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> [AgdaAny]
d_dom_660 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.IsSet.du_dom_562
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.range
d_range_662 ::
  () ->
  () ->
  () -> MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> [AgdaAny]
d_range_662 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Class.IsSet.du_range_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4
-- abstract-set-theory.FiniteSetTheory._.toSet
d_toSet_664 ::
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> [AgdaAny]
d_toSet_664 v0 = coe MAlonzo.Code.Class.IsSet.d_toSet_502 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.IsSet._∈_
d__'8712'__668 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> AgdaAny -> ()
d__'8712'__668 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet._∉_
d__'8713'__670 ::
  () ->
  () ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> AgdaAny -> ()
d__'8713'__670 = erased
-- abstract-set-theory.FiniteSetTheory._.IsSet.toSet
d_toSet_672 ::
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> [AgdaAny]
d_toSet_672 v0 = coe MAlonzo.Code.Class.IsSet.d_toSet_502 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet
d_HasEmptySet_676 a0 = ()
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet-Map
d_HasEmptySet'45'Map_680 ::
  () -> () -> MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_308
d_HasEmptySet'45'Map_680 v0 v1
  = coe
      MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Map_330
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet-Set
d_HasEmptySet'45'Set_682 ::
  () -> MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_308
d_HasEmptySet'45'Set_682 v0
  = coe
      MAlonzo.Code.Class.HasEmptySet.du_HasEmptySet'45'Set_324
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.∅
d_'8709'_684 ::
  MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_308 -> AgdaAny
d_'8709'_684 v0
  = coe MAlonzo.Code.Class.HasEmptySet.d_'8709'_314 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasEmptySet.∅
d_'8709'_688 ::
  MAlonzo.Code.Class.HasEmptySet.T_HasEmptySet_308 -> AgdaAny
d_'8709'_688 v0
  = coe MAlonzo.Code.Class.HasEmptySet.d_'8709'_314 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasSingleton
d_HasSingleton_692 a0 a1 = ()
-- abstract-set-theory.FiniteSetTheory._.HasSingletonSet-Map
d_HasSingletonSet'45'Map_696 ::
  () -> () -> MAlonzo.Code.Class.HasSingleton.T_HasSingleton_310
d_HasSingletonSet'45'Map_696 v0 v1
  = coe
      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Map_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.HasSingletonSet-Set
d_HasSingletonSet'45'Set_698 ::
  () -> MAlonzo.Code.Class.HasSingleton.T_HasSingleton_310
d_HasSingletonSet'45'Set_698 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory._.❴_❵
d_'10100'_'10101'_700 ::
  MAlonzo.Code.Class.HasSingleton.T_HasSingleton_310 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_700 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.HasSingleton.❴_❵
d_'10100'_'10101'_704 ::
  MAlonzo.Code.Class.HasSingleton.T_HasSingleton_310 ->
  AgdaAny -> AgdaAny
d_'10100'_'10101'_704 v0
  = coe
      MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318 (coe v0)
-- abstract-set-theory.FiniteSetTheory._.card-≡ᵉ
d_card'45''8801''7497'_708 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_708 = erased
-- abstract-set-theory.FiniteSetTheory._._._∣_
d__'8739'__720 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__720 ~v0 v1 = du__'8739'__720 v1
du__'8739'__720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__720 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣_ᶜ
d__'8739'_'7580'_722 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_722 ~v0 v1 = du__'8739'_'7580'_722 v1
du__'8739'_'7580'_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_722 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_740
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._⟪$⟫_
d__'10218''36''10219'__724 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__724 ~v0 v1 = du__'10218''36''10219'__724 v1
du__'10218''36''10219'__724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__724 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__746
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.curryʳ
d_curry'691'_726 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_726 ~v0 v1 = du_curry'691'_726 v1
du_curry'691'_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_726 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_906
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.ex-⊆
d_ex'45''8838'_728 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_728 ~v0 v1 = du_ex'45''8838'_728 v1
du_ex'45''8838'_728 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_728 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-comp-cong
d_res'45'comp'45'cong_730 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_730 ~v0 v1 = du_res'45'comp'45'cong_730 v1
du_res'45'comp'45'cong_730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_730 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-comp-dom
d_res'45'comp'45'dom_732 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_732 = erased
-- abstract-set-theory.FiniteSetTheory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_734 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_734 ~v0 v1
  = du_res'45'comp'45'dom'7504'_734 v1
du_res'45'comp'45'dom'7504'_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_734 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_818
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-cong
d_res'45'cong_736 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_736 ~v0 v1 = du_res'45'cong_736 v1
du_res'45'cong_736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_736 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_754
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-dom
d_res'45'dom_738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_738 ~v0 v1 = du_res'45'dom_738 v1
du_res'45'dom_738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_738 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm
d_res'45'dom'45'comm_740 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_740 ~v0 v1 = du_res'45'dom'45'comm_740 v1
du_res'45'dom'45'comm_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_740 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_1046
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm'
d_res'45'dom'45'comm''_742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_742 ~v0 v1 = du_res'45'dom'45'comm''_742 v1
du_res'45'dom'45'comm''_742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_742 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_1040
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_744 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_744 v1
du_res'45'dom'45'comm'8745''8838'_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_744 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_992
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_746 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_746 v1
du_res'45'dom'45'comm'8838''8745'_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_746 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.res-domᵐ
d_res'45'dom'7504'_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_748 ~v0 v1 = du_res'45'dom'7504'_748 v1
du_res'45'dom'7504'_748 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_748 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_776
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_750 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_750 v1
du_res'45'ex'45'disj'45''8746'_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_750 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_898
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_752 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_752 = erased
-- abstract-set-theory.FiniteSetTheory._._.res-ex-∪
d_res'45'ex'45''8746'_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_754 ~v0 v1 = du_res'45'ex'45''8746'_754 v1
du_res'45'ex'45''8746'_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_754 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_876
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-∅
d_res'45''8709'_756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_756 ~v0 ~v1 = du_res'45''8709'_756
du_res'45''8709'_756 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_756 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_834
-- abstract-set-theory.FiniteSetTheory._._.res-∅ᶜ
d_res'45''8709''7580'_758 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_758 ~v0 v1 = du_res'45''8709''7580'_758 v1
du_res'45''8709''7580'_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_758 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_836
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2
-- abstract-set-theory.FiniteSetTheory._._.res-⊆
d_res'45''8838'_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_760 ~v0 v1 = du_res'45''8838'_760 v1
du_res'45''8838'_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_760 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_830
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.∈-curryʳ
d_'8712''45'curry'691'_762 ::
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
d_'8712''45'curry'691'_762 ~v0 v1 = du_'8712''45'curry'691'_762 v1
du_'8712''45'curry'691'_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_762 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_918
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory._._.∈-res
d_'8712''45'res_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res_764 ~v0 v1 = du_'8712''45'res_764 v1
du_'8712''45'res_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res_764 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res_844
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_766 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45'res'7580''45'dom_766 ~v0 v1
  = du_'8712''45'res'7580''45'dom_766 v1
du_'8712''45'res'7580''45'dom_766 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45'res'7580''45'dom_766 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_872
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_768 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8314'_768 v1
du_'8712''45'res'7580''45'dom'8314'_768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'res'7580''45'dom'8314'_768 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_860
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_770 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_770 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8315'_770 v1
du_'8712''45'res'7580''45'dom'8315'_770 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_770 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._._∣^_
d__'8739''94'__774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__774 ~v0 v1 = du__'8739''94'__774 v1
du__'8739''94'__774 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'__774 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1102
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_ᶜ
d__'8739''94'_'7580'_776 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_776 ~v0 v1 = du__'8739''94'_'7580'_776 v1
du__'8739''94'_'7580'_776 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'_'7580'_776 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1108
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.coex-⊆
d_coex'45''8838'_778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_778 ~v0 v1 = du_coex'45''8838'_778 v1
du_coex'45''8838'_778 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_778 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1116
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.cores-⊆
d_cores'45''8838'_780 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_780 ~v0 v1 = du_cores'45''8838'_780 v1
du_cores'45''8838'_780 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_780 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1114
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._._∣_
d__'8739'__784 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__784 ~v0 v1 = du__'8739'__784 v1
du__'8739'__784 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__784 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣_ᶜ
d__'8739'_'7580'_786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_786 ~v0 v1 = du__'8739'_'7580'_786 v1
du__'8739'_'7580'_786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_786 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_788 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_788 ~v0 v1
  = du__'10629'_'44''45''10630'_788 v1
du__'10629'_'44''45''10630'_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_788 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1532
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory._._.curryᵐ
d_curry'7504'_790 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_790 ~v0 v1 = du_curry'7504'_790 v1
du_curry'7504'_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1384
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4
-- abstract-set-theory.FiniteSetTheory._._.mapSingleValue
d_mapSingleValue_792 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_792 ~v0 v1 = du_mapSingleValue_792 v1
du_mapSingleValue_792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_792 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1376
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.mapValueRestricted
d_mapValueRestricted_794 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_794 ~v0 v1 = du_mapValueRestricted_794 v1
du_mapValueRestricted_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_794 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1368
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-dom∈
d_res'45'dom'8712'_796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_res'45'dom'8712'_796 ~v0 v1 = du_res'45'dom'8712'_796 v1
du_res'45'dom'8712'_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_res'45'dom'8712'_796 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'dom'8712'_1396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton
d_res'45'singleton_798 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_798 ~v0 v1 = du_res'45'singleton_798 v1
du_res'45'singleton_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_798 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1440
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.res-singleton'
d_res'45'singleton''_800 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_800 ~v0 v1 = du_res'45'singleton''_800 v1
du_res'45'singleton''_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_800 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1476
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton''
d_res'45'singleton''''_802 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_802 ~v0 v1 = du_res'45'singleton''''_802 v1
du_res'45'singleton''''_802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_802 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1518
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton-inhabited
d_res'45'singleton'45'inhabited_804 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'45'inhabited_804 ~v0 v1
  = du_res'45'singleton'45'inhabited_804 v1
du_res'45'singleton'45'inhabited_804 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'45'inhabited_804 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1500
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-singleton⁺
d_res'45'singleton'8314'_806 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'8314'_806 ~v0 v1
  = du_res'45'singleton'8314'_806 v1
du_res'45'singleton'8314'_806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'8314'_806 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.res-subset
d_res'45'subset_808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'subset_808 ~v0 v1 = du_res'45'subset_808 v1
du_res'45'subset_808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'subset_808 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'subset_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_810 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_810 ~v0 v1
  = du_res'7504''45''8709''7580'_810 v1
du_res'7504''45''8709''7580'_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_810 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1366
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2
-- abstract-set-theory.FiniteSetTheory._._.update
d_update_812 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_812 ~v0 v1 = du_update_812 v1
du_update_812 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_812 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1534
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._._⁻¹_
d__'8315''185'__816 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__816 ~v0 v1 = du__'8315''185'__816 v1
du__'8315''185'__816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1780
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_
d__'8739''94'__818 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__818 ~v0 v1 = du__'8739''94'__818 v1
du__'8739''94'__818 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__818 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∣^_ᶜ
d__'8739''94'_'7580'_820 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_820 ~v0 v1 = du__'8739''94'_'7580'_820 v1
du__'8739''94'_'7580'_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_820 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∪ˡ_
d__'8746''737'__824 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__824 ~v0 v1 = du__'8746''737'__824 v1
du__'8746''737'__824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__824 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__902
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._._∪ˡ'_
d__'8746''737'''__826 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__826 ~v0 v1 = du__'8746''737'''__826 v1
du__'8746''737'''__826 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__826 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__896
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3
-- abstract-set-theory.FiniteSetTheory._._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_828 ::
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
d_disjoint'45''8746''737''45'mapValues_828 ~v0 v1
  = du_disjoint'45''8746''737''45'mapValues_828 v1
du_disjoint'45''8746''737''45'mapValues_828 ::
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
du_disjoint'45''8746''737''45'mapValues_828 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_988
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_830 ::
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
d_disjoint'45''8746''737''45''8746'_830 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_830 v1
du_disjoint'45''8746''737''45''8746'_830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_830 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_916
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.insert
d_insert_832 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_832 ~v0 v1 = du_insert_832 v1
du_insert_832 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_832 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_960
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.insertIfJust
d_insertIfJust_834 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_834 ~v0 v1 = du_insertIfJust_834 v1
du_insertIfJust_834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_834 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.singleton-∈-∪ˡ
d_singleton'45''8712''45''8746''737'_836 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45''8712''45''8746''737'_836 ~v0 v1
  = du_singleton'45''8712''45''8746''737'_836 v1
du_singleton'45''8712''45''8746''737'_836 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_singleton'45''8712''45''8746''737'_836 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'45''8712''45''8746''737'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory._._._∩_
d__'8745'__840 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__840 ~v0 v1 = du__'8745'__840 v1
du__'8745'__840 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__840 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__706
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._._＼_
d__'65340'__842 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__842 ~v0 v1 = du__'65340'__842 v1
du__'65340'__842 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__842 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__732
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._.disjoint'
d_disjoint''_844 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_844 = erased
-- abstract-set-theory.FiniteSetTheory._._.∈-∩
d_'8712''45''8745'_846 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8712''45''8745'_846 ~v0 v1 = du_'8712''45''8745'_846 v1
du_'8712''45''8745'_846 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_'8712''45''8745'_846 v0
  = let v1 = d_List'45'Model'7496'_8 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_714
         (coe MAlonzo.Code.Axiom.Set.d_th_1480 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
            erased v0))
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ
d_lookup'7504'_850 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_850 ~v0 ~v1 = du_lookup'7504'_850
du_lookup'7504'_850 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_850 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1692
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ-∈
d_lookup'7504''45''8712'_852 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'7504''45''8712'_852 ~v0 ~v1
  = du_lookup'7504''45''8712'_852
du_lookup'7504''45''8712'_852 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_lookup'7504''45''8712'_852 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''45''8712'_1698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.lookupᵐ?
d_lookup'7504''63'_854 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_854 ~v0 ~v1 = du_lookup'7504''63'_854
du_lookup'7504''63'_854 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_854 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.pullbackMap
d_pullbackMap_856 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_856 ~v0 ~v1 = du_pullbackMap_856
du_pullbackMap_856 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_856 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∈-lookup
d_'8712''45'lookup_858 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'lookup_858 = erased
-- abstract-set-theory.FiniteSetTheory._._.∈⇒lookup≡just
d_'8712''8658'lookup'8801'just_860 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''8658'lookup'8801'just_860 = erased
-- abstract-set-theory.FiniteSetTheory._._._∪⁺_
d__'8746''8314'__864 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__864 ~v0 ~v1 = du__'8746''8314'__864
du__'8746''8314'__864 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__864 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__532
      (coe d_List'45'Model'7496'_8) v1 v2
-- abstract-set-theory.FiniteSetTheory._._.aggregate₊
d_aggregate'8330'_866 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_866 ~v0 ~v1 = du_aggregate'8330'_866
du_aggregate'8330'_866 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_866 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_534
      (coe d_List'45'Model'7496'_8) v1 v2 v3
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_868 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_dom'8746''8314''8660''8746'dom_868 ~v0 ~v1
  = du_dom'8746''8314''8660''8746'dom_868
du_dom'8746''8314''8660''8746'dom_868 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
du_dom'8746''8314''8660''8746'dom_868 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_596
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_870 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_870 ~v0 ~v1
  = du_dom'8746''8314''8801''8746'dom_870
du_dom'8746''8314''8801''8746'dom_870 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_870 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_600
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_872 ::
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
d_dom'8746''8314''8838''8746'dom_872 ~v0 ~v1
  = du_dom'8746''8314''8838''8746'dom_872
du_dom'8746''8314''8838''8746'dom_872 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8746''8314''8838''8746'dom_872 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_558
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.intersectWith
d_intersectWith_874 ::
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
d_intersectWith_874 ~v0 ~v1 = du_intersectWith_874
du_intersectWith_874 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_intersectWith_874 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_intersectWith_502
      (coe d_List'45'Model'7496'_8) v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.unionThese
d_unionThese_876 ::
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
d_unionThese_876 ~v0 ~v1 = du_unionThese_876
du_unionThese_876 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_876 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_362
      (coe d_List'45'Model'7496'_8) v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.unionWith
d_unionWith_878 ::
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
d_unionWith_878 ~v0 ~v1 = du_unionWith_878
du_unionWith_878 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_878 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_424
      (coe d_List'45'Model'7496'_8) v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._.∪dom-lookup
d_'8746'dom'45'lookup_880 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_880 ~v0 ~v1 = du_'8746'dom'45'lookup_880
du_'8746'dom'45'lookup_880 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_880 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_552
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_882 ::
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
d_'8746'dom'8838'dom'8746''8314'_882 ~v0 ~v1
  = du_'8746'dom'8838'dom'8746''8314'_882
du_'8746'dom'8838'dom'8746''8314'_882 ::
  () ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746'dom'8838'dom'8746''8314'_882 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_574
      (coe d_List'45'Model'7496'_8) v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory._._._∩ᵐ_
d__'8745''7504'__898 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__898 ~v0 ~v1 v2 v3 = du__'8745''7504'__898 v2 v3
du__'8745''7504'__898 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__898 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased
         (coe
            MAlonzo.Code.QabstractZ45ZsetZ45Ztheory.Prelude.d_DecEq'45''215''8242'_6
            () erased () erased v0 v1))
-- abstract-set-theory.FiniteSetTheory._._._∪ˡᶠ_
d__'8746''737''7584'__904 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__904 ~v0 ~v1 v2 ~v3
  = du__'8746''737''7584'__904 v2
du__'8746''737''7584'__904 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__904 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1188
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
d_indexedSum'7504''45'partition_906 ::
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
d_indexedSum'7504''45'partition_906 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45'partition_906 v2 v3
du_indexedSum'7504''45'partition_906 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_906 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1242
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
d_indexedSum'7504''45''8746'_908 ::
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
d_indexedSum'7504''45''8746'_908 ~v0 ~v1 v2 v3
  = du_indexedSum'7504''45''8746'_908 v2 v3
du_indexedSum'7504''45''8746'_908 ::
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
du_indexedSum'7504''45''8746'_908 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1206
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
d_'8746''737''45'finite_910 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_910 ~v0 ~v1 v2 ~v3
  = du_'8746''737''45'finite_910 v2
du_'8746''737''45'finite_910 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_910 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1182
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
d__'8801'_'10815'__916 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__916 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_918 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_918 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_920 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_920 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_922 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_104
d_Set'45'BddSemilattice_922 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_924 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_118
d_Set'45'BoundedJoinSemilattice_924 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_926 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_926 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_766
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.card-singleton
d_card'45'singleton_928 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45'singleton_928 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_930 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_930 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_932 ::
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
d_cong'45''8838''8658'cong_932 ~v0 ~v1 ~v2 v3 v4 v5 v6
  = du_cong'45''8838''8658'cong_932 v3 v4 v5 v6
du_cong'45''8838''8658'cong_932 ::
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
du_cong'45''8838''8658'cong_932 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe v0 v1 v2 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v3)))
      (coe v0 v2 v1 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v3)))
-- abstract-set-theory.FiniteSetTheory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_934 ::
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
d_cong'45''8838''8658'cong'8322'_934 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7 v8
                                     v9 v10
  = du_cong'45''8838''8658'cong'8322'_934 v4 v5 v6 v7 v8 v9 v10
du_cong'45''8838''8658'cong'8322'_934 ::
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
du_cong'45''8838''8658'cong'8322'_934 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32
      (coe
         v0 v1 v2 v3 v4 (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_fst_28 (coe v6)))
      (coe
         v0 v2 v1 v4 v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v5))
         (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6)))
-- abstract-set-theory.FiniteSetTheory.Properties._.disjoint-subst
d_disjoint'45'subst_936 ::
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
d_disjoint'45'subst_936 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.disjoint-sym
d_disjoint'45'sym_938 ::
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
d_disjoint'45'sym_938 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-cong
d_filter'45'cong_940 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'cong_940 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'cong_610
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-finite
d_filter'45'finite_942 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_942 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_686
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_944 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_944 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_654
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-⊆
d_filter'45'hom'45''8838'_946 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8838'_946 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_632
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_948 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8839'_948 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_644
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_950 ::
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
d_filter'45'pres'45''8838'_950 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_602
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-split-∪
d_filter'45'split'45''8746'_952 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_952 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_618
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-∅
d_filter'45''8709'_954 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_954 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_572
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.filter-⊆
d_filter'45''8838'_956 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_956 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_958 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_958 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_828
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∅
d_map'45''8709'_960 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_960 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_444
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∘
d_map'45''8728'_962 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_962 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_378
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∘⊆
d_map'45''8728''8838'_964 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_964 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_362
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.map-∪
d_map'45''8746'_966 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_966 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_458
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_968 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_968 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_416
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.map-⊆
d_map'45''8838'_970 ::
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
d_map'45''8838'_970 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_390
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.map-⊆∘
d_map'45''8838''8728'_972 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_972 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_974 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_974 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_484
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-finite
d_singleton'45'finite_976 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_976 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-strongly-finite
d_singleton'45'strongly'45'finite_978 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'strongly'45'finite_978 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'strongly'45'finite_496
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.singleton-≢-∅
d_singleton'45''8802''45''8709'_980 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_980 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.sublist-⇔
d_sublist'45''8660'_982 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_sublist'45''8660'_982 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_1036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_984 ::
  () ->
  [AgdaAny] ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8707''45'sublist'45''8660'_984 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1070
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-finite
d_'8709''45'finite_986 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_986 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_438
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-least
d_'8709''45'least_988 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_988 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_432 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-minimum
d_'8709''45'minimum_990 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_990 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_428
-- abstract-set-theory.FiniteSetTheory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_992 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_992 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_436
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_994 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_994 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_198
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_996 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_996 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_998 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_998 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_228
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_1000 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_1000 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_1002 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_1002 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_170
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_1004 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_1004 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_178
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_1006 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_1006 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_1008 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_1008 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-×
d_'8712''45''215'_1010 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_1010 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_318
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_1012 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_1012 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_1014 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_1014 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∉-∅
d_'8713''45''8709'_1016 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_1016 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-Supremum
d_'8746''45'Supremum_1018 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_1018 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-assoc
d_'8746''45'assoc_1020 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_1020 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_820
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-comm
d_'8746''45'comm_1022 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_1022 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_812
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-cong
d_'8746''45'cong_1024 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_1024 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_742
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_1026 ::
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
d_'8746''45'cong'45''8838'_1026 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_736
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_1028 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_1028 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_860
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_1030 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_1030 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_806
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_1032 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_1032 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_802
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_1034 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_1034 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_744
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-sym
d_'8746''45'sym_1036 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_1036 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆
d_'8746''45''8838'_1038 ::
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
d_'8746''45''8838'_1038 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_710
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_1040 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_1040 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_708
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_1042 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_1042 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_1044 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_46
d_'8801''7497''45'Setoid_1044 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_296
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_1046 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_28
d_'8801''7497''45'isEquivalence_1046 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_282
-- abstract-set-theory.FiniteSetTheory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_1048 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1858
d_'8801''7497''8660''8801''7497'''_1048 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_244
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_1050 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_248
d_'8838''45'PartialOrder_1050 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_312
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-Preorder
d_'8838''45'Preorder_1052 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_142
d_'8838''45'Preorder_1052 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_308
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-Transitive
d_'8838''45'Transitive_1054 ::
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
d_'8838''45'Transitive_1054 ~v0 ~v1 ~v2 ~v3 v4 v5 v6 v7
  = du_'8838''45'Transitive_1054 v4 v5 v6 v7
du_'8838''45'Transitive_1054 ::
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8838''45'Transitive_1054 v0 v1 v2 v3 = coe v1 v2 (coe v0 v2 v3)
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_1056 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_76
d_'8838''45'isPreorder_1056 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_300
-- abstract-set-theory.FiniteSetTheory.Properties._.⊆→∪
d_'8838''8594''8746'_1058 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_1058 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1062 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_1062 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_1008
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1064 ::
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
d_disjoint'''8658'disjoint_1064 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1066 ::
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
d_disjoint'8658'disjoint''_1066 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_952
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1068 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1068 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1070 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_1070 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_1000
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1072 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_1072 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_1006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_1074 ::
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
d_'8745''45'cong_1074 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_994
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1076 ::
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
d_'8745''45'cong'45''8838'_1076 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_986
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1078 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1078 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_1080 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1080 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1082 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1082 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1084 ::
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
d_'8745''45''8838'_1084 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v3 v4 v5 v6 v7 v8
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1086 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1086 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1088 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1088 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      v1 v2 v3 v4 v5
-- abstract-set-theory.FiniteSetTheory.Properties._._.Set-Lattice
d_Set'45'Lattice_1100 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
d_Set'45'Lattice_1100 ~v0 v1 = du_Set'45'Lattice_1100 v1
du_Set'45'Lattice_1100 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_348
du_Set'45'Lattice_1100 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_1008
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1102 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1102 = erased
-- abstract-set-theory.FiniteSetTheory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1104 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1104 ~v0 ~v1
  = du_disjoint'8658'disjoint''_1104
du_disjoint'8658'disjoint''_1104 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_1104 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_952
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-Infimum
d_'8745''45'Infimum_1106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1106 ~v0 v1 = du_'8745''45'Infimum_1106 v1
du_'8745''45'Infimum_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1106 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_976
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1108 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'691'_1108 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_1108 v1
du_'8745''45'OrderHomomorphism'691'_1108 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'691'_1108 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_1000
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1110 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
d_'8745''45'OrderHomomorphism'737'_1110 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_1110 v1
du_'8745''45'OrderHomomorphism'737'_1110 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_144
du_'8745''45'OrderHomomorphism'737'_1110 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_1006
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-cong
d_'8745''45'cong_1112 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1112 ~v0 v1 = du_'8745''45'cong_1112 v1
du_'8745''45'cong_1112 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1112 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_994
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_1114 ::
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
d_'8745''45'cong'45''8838'_1114 ~v0 v1
  = du_'8745''45'cong'45''8838'_1114 v1
du_'8745''45'cong'45''8838'_1114 ::
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
du_'8745''45'cong'45''8838'_1114 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_986
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_1116 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1116 ~v0 v1
  = du_'8745''45'preserves'45'finite_1116 v1
du_'8745''45'preserves'45'finite_1116 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1116 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_984
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v1 v2
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-sym
d_'8745''45'sym_1118 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1118 ~v0 v1 = du_'8745''45'sym_1118 v1
du_'8745''45'sym_1118 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1118 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_1120 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1120 ~v0 v1 = du_'8745''45'sym'8838'_1120 v1
du_'8745''45'sym'8838'_1120 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_1120 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_1010
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆
d_'8745''45''8838'_1122 ::
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
d_'8745''45''8838'_1122 ~v0 v1 = du_'8745''45''8838'_1122 v1
du_'8745''45''8838'_1122 ::
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
du_'8745''45''8838'_1122 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_968
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
      v2 v3 v4 v5 v6 v7
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_1124 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1124 ~v0 v1
  = du_'8745''45''8838''691'_1124 v1
du_'8745''45''8838''691'_1124 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_1124 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_1126 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1126 ~v0 v1
  = du_'8745''45''8838''737'_1126 v1
du_'8745''45''8838''737'_1126 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_1126 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
         erased v0)
-- abstract-set-theory.FiniteSetTheory.to-sp
d_to'45'sp_1132 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_1132 ~v0 ~v1 v2 = du_to'45'sp_1132 v2
du_to'45'sp_1132 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_1132 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_72 (coe v0)
-- abstract-set-theory.FiniteSetTheory.finiteness
d_finiteness_1136 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_1136 ~v0 = du_finiteness_1136
du_finiteness_1136 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_1136
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_1024 d_List'45'Model'7584'_6
      erased
-- abstract-set-theory.FiniteSetTheory.lengthˢ
d_length'738'_1144 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> Integer
d_length'738'_1144 ~v0 ~v1 v2 v3 v4 = du_length'738'_1144 v2 v3 v4
du_length'738'_1144 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 -> AgdaAny -> Integer
du_length'738'_1144 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1034
      (coe d_List'45'Model'7584'_6) (coe v0)
      (coe MAlonzo.Code.Class.IsSet.d_toSet_502 v1 v2)
-- abstract-set-theory.FiniteSetTheory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_1158 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.IsSet.T_IsSet_494 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_1158 = erased
-- abstract-set-theory.FiniteSetTheory.setToList
d_setToList_1166 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_1166 ~v0 v1 = du_setToList_1166 v1
du_setToList_1166 :: [AgdaAny] -> [AgdaAny]
du_setToList_1166 v0 = coe v0
-- abstract-set-theory.FiniteSetTheory.DecEq-ℙ
d_DecEq'45'ℙ_1170 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_1170 ~v0 v1 = du_DecEq'45'ℙ_1170 v1
du_DecEq'45'ℙ_1170 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_1170 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_208 (coe v0)
-- abstract-set-theory.FiniteSetTheory.Show-ℙ
d_Show'45'ℙ_1174 ::
  () ->
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
d_Show'45'ℙ_1174 ~v0 v1 = du_Show'45'ℙ_1174 v1
du_Show'45'ℙ_1174 ::
  MAlonzo.Code.Class.Show.Core.T_Show_10 ->
  MAlonzo.Code.Class.Show.Core.T_Show_10
du_Show'45'ℙ_1174 v0
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
                       (coe du_finiteness_1136 v1))))))
-- abstract-set-theory.FiniteSetTheory._ᶠᵐ
d__'7584''7504'_1178 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_1178 ~v0 ~v1 v2 = du__'7584''7504'_1178 v2
du__'7584''7504'_1178 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_1178 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_1136 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- abstract-set-theory.FiniteSetTheory._ᶠˢ
d__'7584''738'_1184 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1184 ~v0 v1 = du__'7584''738'_1184 v1
du__'7584''738'_1184 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1184 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_1136 v0)
-- abstract-set-theory.FiniteSetTheory.filterˢ
d_filter'738'_1192 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1192 ~v0 ~v1 v2 = du_filter'738'_1192 v2
du_filter'738'_1192 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1192 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_422
      (MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1132 (coe v0))
-- abstract-set-theory.FiniteSetTheory.filterᵐ
d_filter'7504'_1200 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1200 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1200 v3
du_filter'7504'_1200 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1200 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_724
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1132 (coe v0))
-- abstract-set-theory.FiniteSetTheory.filterKeys
d_filterKeys_1208 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1208 ~v0 ~v1 ~v2 v3 = du_filterKeys_1208 v3
du_filterKeys_1208 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1208 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_738
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe du_to'45'sp_1132 (coe v0))
-- abstract-set-theory.FiniteSetTheory._∣^'_
d__'8739''94'''__1216 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1216 ~v0 ~v1 v2 ~v3 v4
  = du__'8739''94'''__1216 v2 v4
du__'8739''94'''__1216 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1216 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1160
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe v0) (coe du_to'45'sp_1132 (coe v1))
-- abstract-set-theory.FiniteSetTheory.indexedSumᵛ'
d_indexedSum'7515'''_1222 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1222 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1222 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1222 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1222 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_1128 v0 v1 v2 v3
      (coe du__'7584''7504'_1178 (coe v4))
-- abstract-set-theory.FiniteSetTheory.indexedSum'
d_indexedSum''_1228 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1228 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1228 v2 v3 v4 v5
du_indexedSum''_1228 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1228 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_946 v1 v0 v2
      (coe du__'7584''738'_1184 (coe v3))
-- abstract-set-theory.FiniteSetTheory._.aggregateBy
d_aggregateBy_1250 ::
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
d_aggregateBy_1250 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_aggregateBy_1250 v3 v4 v5 v6 v7 v8
du_aggregateBy_1250 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregateBy_1250 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1082
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
      (coe
         (\ v6 ->
            coe
              du_indexedSum'7515'''_1222 (coe v0) (coe v3) (coe v2)
              (coe (\ v7 -> v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1348
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
                    erased v0)
                 (coe v5)
                 (coe
                    MAlonzo.Code.Class.IsSet.du_dom_562
                    (coe
                       MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                    (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566)
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1102
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1610 d_List'45'Model'7496'_8
                          erased v1)
                       (coe v4)
                       (coe
                          MAlonzo.Code.Class.HasSingleton.d_'10100'_'10101'_318
                          (coe
                             MAlonzo.Code.Class.HasSingleton.du_HasSingletonSet'45'Set_328
                             (coe
                                MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8)))
                          v6))))))
      (coe
         MAlonzo.Code.Class.IsSet.du_range_564
         (coe
            MAlonzo.Code.Axiom.Set.d_th_1480 (coe d_List'45'Model'7496'_8))
         (coe MAlonzo.Code.Class.IsSet.du_IsSet'45'Set_566) (coe v4))
-- abstract-set-theory.FiniteSetTheory._.indexedSumᵛ'-cong
d_indexedSum'7515''''45'cong_1262 ::
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
d_indexedSum'7515''''45'cong_1262 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_indexedSum'7515''''45'cong_1262 v3 v4 v5 v6 v7 v8
du_indexedSum'7515''''45'cong_1262 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.CommutativeMonoid.Core.T_CommutativeMonoid_12 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515''''45'cong_1262 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_1048 (coe v2)
      (coe
         MAlonzo.Code.Class.DecEq.Instances.du_DecEq'45''215'_182 (coe v0)
         (coe v1))
      (coe
         (\ v6 ->
            coe v3 (MAlonzo.Code.Agda.Builtin.Sigma.d_snd_30 (coe v6))))
      (coe
         du__'7584''738'_1184
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v4)))
      (coe
         du__'7584''738'_1184
         (coe MAlonzo.Code.Axiom.Set.Map.du__'738'_554 (coe v5)))
