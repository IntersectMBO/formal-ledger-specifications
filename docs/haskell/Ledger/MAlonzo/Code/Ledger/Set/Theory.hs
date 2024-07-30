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

module MAlonzo.Code.Ledger.Set.Theory where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text
import qualified MAlonzo.Code.Agda.Builtin.Equality
import qualified MAlonzo.Code.Agda.Builtin.Sigma
import qualified MAlonzo.Code.Agda.Primitive
import qualified MAlonzo.Code.Algebra.Bundles
import qualified MAlonzo.Code.Axiom.Set
import qualified MAlonzo.Code.Axiom.Set.Factor
import qualified MAlonzo.Code.Axiom.Set.List
import qualified MAlonzo.Code.Axiom.Set.Map
import qualified MAlonzo.Code.Axiom.Set.Map.Dec
import qualified MAlonzo.Code.Axiom.Set.Properties
import qualified MAlonzo.Code.Axiom.Set.Rel
import qualified MAlonzo.Code.Axiom.Set.Sum
import qualified MAlonzo.Code.Axiom.Set.TotalMap
import qualified MAlonzo.Code.Class.DecEq.Core
import qualified MAlonzo.Code.Class.Decidable.Core
import qualified MAlonzo.Code.Data.Irrelevant
import qualified MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional
import qualified MAlonzo.Code.Data.List.Relation.Unary.Any
import qualified MAlonzo.Code.Data.Sum.Base
import qualified MAlonzo.Code.Data.These.Base
import qualified MAlonzo.Code.Function.Bundles
import qualified MAlonzo.Code.Interface.IsCommutativeMonoid
import qualified MAlonzo.Code.Interface.IsSet
import qualified MAlonzo.Code.Prelude
import qualified MAlonzo.Code.Relation.Binary.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Bundles
import qualified MAlonzo.Code.Relation.Binary.Lattice.Structures
import qualified MAlonzo.Code.Relation.Binary.Morphism.Structures
import qualified MAlonzo.Code.Relation.Binary.Structures
import qualified MAlonzo.Code.Relation.Nullary.Decidable.Core

-- Ledger.Set.Theory.List-Model
d_List'45'Model_6 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_List'45'Model_6
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model_6
-- Ledger.Set.Theory.List-Modelᶠ
d_List'45'Model'7584'_8 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7584'_734
d_List'45'Model'7584'_8
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7584'_58
-- Ledger.Set.Theory.List-Modelᵈ
d_List'45'Model'7496'_10 ::
  MAlonzo.Code.Axiom.Set.T_Theory'7496'_1280
d_List'45'Model'7496'_10
  = coe MAlonzo.Code.Axiom.Set.List.d_List'45'Model'7496'_208
-- Ledger.Set.Theory._._Preservesˢ_
d__Preserves'738'__20 ::
  () ->
  () -> ([AgdaAny] -> [AgdaAny]) -> (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738'__20 = erased
-- Ledger.Set.Theory._._Preservesˢ₂_
d__Preserves'738''8322'__22 ::
  () ->
  () ->
  () ->
  ([AgdaAny] -> [AgdaAny] -> [AgdaAny]) ->
  (() -> [AgdaAny] -> ()) -> ()
d__Preserves'738''8322'__22 = erased
-- Ledger.Set.Theory._._∈?_
d__'8712''63'__24 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d__'8712''63'__24
  = coe
      MAlonzo.Code.Axiom.Set.d__'8712''63'__1560
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._._∈ᵇ_
d__'8712''7495'__26 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> [AgdaAny] -> Bool
d__'8712''7495'__26 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du__'8712''7495'__1624
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._∪_
d__'8746'__28 :: () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8746'__28
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8746'__662
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._._≡ᵉ_
d__'8801''7497'__30 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'__30 = erased
-- Ledger.Set.Theory._._≡ᵉ'_
d__'8801''7497'''__32 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801''7497'''__32 = erased
-- Ledger.Set.Theory._._⊆_
d__'8838'__34 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d__'8838'__34 = erased
-- Ledger.Set.Theory._.All
d_All_36 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_All_36 = erased
-- Ledger.Set.Theory._.Any
d_Any_38 :: () -> (AgdaAny -> ()) -> [AgdaAny] -> ()
d_Any_38 = erased
-- Ledger.Set.Theory._.Dec-Allˢ
d_Dec'45'All'738'_40 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'All'738'_40 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'All'738'_1592
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-Anyˢ
d_Dec'45'Any'738'_42 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45'Any'738'_42 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45'Any'738'_1596
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.Dec-∈
d_Dec'45''8712'_44 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  [AgdaAny] -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10
d_Dec'45''8712'_44 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_Dec'45''8712'_1630
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.DecEq∧finite⇒strongly-finite
d_DecEq'8743'finite'8658'strongly'45'finite_46 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_DecEq'8743'finite'8658'strongly'45'finite_46 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_DecEq'8743'finite'8658'strongly'45'finite_300
      v1 v3
-- Ledger.Set.Theory._.FinSet
d_FinSet_48 :: () -> ()
d_FinSet_48 = erased
-- Ledger.Set.Theory._.all?
d_all'63'_50 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_all'63'_50
  = coe
      MAlonzo.Code.Axiom.Set.d_all'63'_1568
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.allᵇ
d_all'7495'_52 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_all'7495'_52 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_all'7495'_1606
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.any?
d_any'63'_54 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_any'63'_54
  = coe
      MAlonzo.Code.Axiom.Set.d_any'63'_1576
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.anyᵇ
d_any'7495'_56 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> Bool
d_any'7495'_56 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_any'7495'_1610
      (coe d_List'45'Model'7496'_10) v2 v3
-- Ledger.Set.Theory._.binary-unions
d_binary'45'unions_58 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_binary'45'unions_58
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_binary'45'unions_626
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.card
d_card_60 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> Integer
d_card_60 v0 v1 = coe MAlonzo.Code.Axiom.Set.du_card_318 v1
-- Ledger.Set.Theory._.card-∅
d_card'45''8709'_62 ::
  () -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8709'_62 = erased
-- Ledger.Set.Theory._.concatMapˢ
d_concatMap'738'_64 ::
  () -> () -> (AgdaAny -> [AgdaAny]) -> [AgdaAny] -> [AgdaAny]
d_concatMap'738'_64
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_concatMap'738'_490
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.disjoint
d_disjoint_66 :: () -> [AgdaAny] -> [AgdaAny] -> ()
d_disjoint_66 = erased
-- Ledger.Set.Theory._.filter
d_filter_68 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny]
d_filter_68
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_filter_402
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.finite
d_finite_70 :: () -> [AgdaAny] -> ()
d_finite_70 = erased
-- Ledger.Set.Theory._.fromList
d_fromList_72 :: () -> [AgdaAny] -> [AgdaAny]
d_fromList_72
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_fromList_410
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2)
-- Ledger.Set.Theory._.incl-set
d_incl'45'set_74 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_incl'45'set_74 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set_1668
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set'
d_incl'45'set''_76 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set''_76 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set''_1642
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._.incl-set-proj₁
d_incl'45'set'45'proj'8321'_78 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_incl'45'set'45'proj'8321'_78 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321'_1728
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._.incl-set-proj₁⊆
d_incl'45'set'45'proj'8321''8838'_80 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8838'_80 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8838'_1678
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.incl-set-proj₁⊇
d_incl'45'set'45'proj'8321''8839'_82 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_incl'45'set'45'proj'8321''8839'_82 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_incl'45'set'45'proj'8321''8839'_1690
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._.isMaximal
d_isMaximal_84 :: () -> [AgdaAny] -> ()
d_isMaximal_84 = erased
-- Ledger.Set.Theory._.listing
d_listing_86 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_listing_86
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_listing_204
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.mapPartial
d_mapPartial_88 ::
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_mapPartial_88
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_mapPartial_558
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3)
-- Ledger.Set.Theory._.map
d_map_90 ::
  () -> () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny]
d_map_90
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_map_380
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.maximal-unique
d_maximal'45'unique_92 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_maximal'45'unique_92 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45'unique_342 v3 v4
-- Ledger.Set.Theory._.maximal-⊆
d_maximal'45''8838'_94 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_maximal'45''8838'_94 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.du_maximal'45''8838'_338 v3 v4
-- Ledger.Set.Theory._.partialToSet
d_partialToSet_96 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () -> () -> (AgdaAny -> Maybe AgdaAny) -> AgdaAny -> [AgdaAny]
d_partialToSet_96
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_partialToSet_454
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v4 v5)
-- Ledger.Set.Theory._.replacement
d_replacement_98 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_replacement_98
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_replacement_196
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.singleton
d_singleton_100 :: () -> AgdaAny -> [AgdaAny]
d_singleton_100
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 ->
         coe
           MAlonzo.Code.Axiom.Set.du_singleton_430
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2)
-- Ledger.Set.Theory._.sp
d_sp_102 :: MAlonzo.Code.Axiom.Set.T_SpecProperty_48
d_sp_102
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp_150
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.sp-¬
d_sp'45''172'_104 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''172'_104
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''172'_70
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))))
-- Ledger.Set.Theory._.sp-∘
d_sp'45''8728'_106 ::
  () ->
  (AgdaAny -> ()) ->
  () ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_sp'45''8728'_106
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_sp'45''8728'_68
         (coe
            MAlonzo.Code.Axiom.Set.d_sp_150
            (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0))))
-- Ledger.Set.Theory._.spec-∈
d_spec'45''8712'_108 :: () -> ()
d_spec'45''8712'_108 = erased
-- Ledger.Set.Theory._.specProperty
d_specProperty_110 :: () -> (AgdaAny -> ()) -> ()
d_specProperty_110 = erased
-- Ledger.Set.Theory._.specification
d_specification_112 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_specification_112
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_specification_174
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.strictify
d_strictify_114 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_strictify_114
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_strictify_360
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4)
-- Ledger.Set.Theory._.strongly-finite
d_strongly'45'finite_116 :: () -> [AgdaAny] -> ()
d_strongly'45'finite_116 = erased
-- Ledger.Set.Theory._.th
d_th_118 :: MAlonzo.Code.Axiom.Set.T_Theory_82
d_th_118
  = coe
      MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.unions
d_unions_120 ::
  () -> [[AgdaAny]] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_unions_120
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.d_unions_184
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.weakly-finite
d_weakly'45'finite_122 :: () -> [AgdaAny] -> ()
d_weakly'45'finite_122 = erased
-- Ledger.Set.Theory._.Set
d_Set_124 :: () -> ()
d_Set_124 = erased
-- Ledger.Set.Theory._.∅
d_'8709'_126 :: () -> [AgdaAny]
d_'8709'_126
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709'_424
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.∅-strongly-finite
d_'8709''45'strongly'45'finite_128 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'strongly'45'finite_128
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8709''45'strongly'45'finite_426
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.∈-concatMapˢ
d_'8712''45'concatMap'738'_130 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> [AgdaAny]) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'concatMap'738'_130
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'concatMap'738'_502
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-filter
d_'8712''45'filter_132 ::
  () ->
  (AgdaAny -> ()) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'filter_132
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'filter_408
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-fromList
d_'8712''45'fromList_134 ::
  () ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'fromList_134
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'fromList_414
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-irrelevant
d_'8712''45'irrelevant_136 :: () -> [AgdaAny] -> ()
d_'8712''45'irrelevant_136 = erased
-- Ledger.Set.Theory._.∈-map
d_'8712''45'map_138 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'map_138
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map_388
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-mapPartial
d_'8712''45'mapPartial_140 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'mapPartial_140
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'mapPartial_568
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5)
-- Ledger.Set.Theory._.∈-map′
d_'8712''45'map'8242'_142 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8242'_142
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'map'8242'_394
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.∈-partialToSet
d_'8712''45'partialToSet_144 ::
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'partialToSet_144
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'partialToSet_466
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v5)
-- Ledger.Set.Theory._.∈-singleton
d_'8712''45'singleton_146 ::
  () ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'singleton_146
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'singleton_440
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-sp
d_'8712''45'sp_148 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_'8712''45'sp_148
  = coe
      MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558
      (coe d_List'45'Model'7496'_10)
-- Ledger.Set.Theory._.∈-unions
d_'8712''45'unions_150 ::
  () ->
  AgdaAny ->
  [[AgdaAny]] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'unions_150
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45'unions_422
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3)
-- Ledger.Set.Theory._.∈-∪
d_'8712''45''8746'_152 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8746'_152
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8746'_670
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.≡→∈
d_'8801''8594''8712'_154 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8801''8594''8712'_154 ~v0 ~v1 ~v2 ~v3 v4 ~v5
  = du_'8801''8594''8712'_154 v4
du_'8801''8594''8712'_154 ::
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8801''8594''8712'_154 v0 = coe v0
-- Ledger.Set.Theory._.⊆-mapPartial
d_'8838''45'mapPartial_156 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> Maybe AgdaAny) ->
  Maybe AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8838''45'mapPartial_156
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 v6 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8838''45'mapPartial_586
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v3 v4 v5 v6)
-- Ledger.Set.Theory._.⊆-weakly-finite
d_'8838''45'weakly'45'finite_158 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''45'weakly'45'finite_158 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.du_'8838''45'weakly'45'finite_322 v3 v4
-- Ledger.Set.Theory._.❴_❵
d_'10100'_'10101'_160 :: () -> AgdaAny -> [AgdaAny]
d_'10100'_'10101'_160
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)))
-- Ledger.Set.Theory._.Intersection._∩_
d__'8745'__164 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__164
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'8745'__686
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection._＼_
d__'65340'__166 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__166
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 ->
         coe
           MAlonzo.Code.Axiom.Set.du__'65340'__712
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4)
-- Ledger.Set.Theory._.Intersection.disjoint'
d_disjoint''_168 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_168 = erased
-- Ledger.Set.Theory._.Intersection.∈-∩
d_'8712''45''8745'_170 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_170
  = let v0 = d_List'45'Model'7496'_10 in
    coe
      (\ v1 v2 v3 v4 v5 ->
         coe
           MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
           (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v0)) v2 v3 v4 v5)
-- Ledger.Set.Theory._._∈_
d__'8712'__174 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__174 = erased
-- Ledger.Set.Theory._._∉_
d__'8713'__176 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__176 = erased
-- Ledger.Set.Theory._.All-syntax
d_All'45'syntax_178 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_All'45'syntax_178 = erased
-- Ledger.Set.Theory._.Ex-syntax
d_Ex'45'syntax_180 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  (AgdaAny -> ()) -> AgdaAny -> ()
d_Ex'45'syntax_180 = erased
-- Ledger.Set.Theory._.IsSet
d_IsSet_182 a0 a1 = ()
-- Ledger.Set.Theory._.IsSet-Map
d_IsSet'45'Map_184 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_472
d_IsSet'45'Map_184 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Map_546
-- Ledger.Set.Theory._.IsSet-Set
d_IsSet'45'Set_186 ::
  () -> MAlonzo.Code.Interface.IsSet.T_IsSet_472
d_IsSet'45'Set_186 v0
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'Set_542
-- Ledger.Set.Theory._.IsSet-TotalMap
d_IsSet'45'TotalMap_188 ::
  () -> () -> MAlonzo.Code.Interface.IsSet.T_IsSet_472
d_IsSet'45'TotalMap_188 v0 v1
  = coe MAlonzo.Code.Interface.IsSet.du_IsSet'45'TotalMap_548
-- Ledger.Set.Theory._.dom
d_dom_190 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> [AgdaAny]
d_dom_190 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_dom_538
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.range
d_range_192 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> [AgdaAny]
d_range_192 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Interface.IsSet.du_range_540
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.toSet
d_toSet_194 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> [AgdaAny]
d_toSet_194 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_480 (coe v0)
-- Ledger.Set.Theory._.IsSet._∈_
d__'8712'__198 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  AgdaAny -> AgdaAny -> ()
d__'8712'__198 = erased
-- Ledger.Set.Theory._.IsSet._∉_
d__'8713'__200 ::
  () ->
  () ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  AgdaAny -> AgdaAny -> ()
d__'8713'__200 = erased
-- Ledger.Set.Theory._.IsSet.toSet
d_toSet_202 ::
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> [AgdaAny]
d_toSet_202 v0
  = coe MAlonzo.Code.Interface.IsSet.d_toSet_480 (coe v0)
-- Ledger.Set.Theory._.card-≡ᵉ
d_card'45''8801''7497'_206 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_206 = erased
-- Ledger.Set.Theory.to-sp
d_to'45'sp_212 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_to'45'sp_212 ~v0 ~v1 v2 = du_to'45'sp_212 v2
du_to'45'sp_212 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
du_to'45'sp_212 v0
  = coe MAlonzo.Code.Class.Decidable.Core.du_dec'185'_108 (coe v0)
-- Ledger.Set.Theory.finiteness
d_finiteness_216 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_finiteness_216 ~v0 = du_finiteness_216
du_finiteness_216 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_finiteness_216
  = coe
      MAlonzo.Code.Axiom.Set.d_finiteness_998 d_List'45'Model'7584'_8
      erased
-- Ledger.Set.Theory.lengthˢ
d_length'738'_224 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> Integer
d_length'738'_224 ~v0 ~v1 v2 v3 v4 = du_length'738'_224 v2 v3 v4
du_length'738'_224 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 -> AgdaAny -> Integer
du_length'738'_224 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.du_length'738'_1006
      (coe d_List'45'Model'7584'_8) (coe v0)
      (coe MAlonzo.Code.Interface.IsSet.d_toSet_480 v1 v2)
-- Ledger.Set.Theory.lengthˢ-≡ᵉ
d_length'738''45''8801''7497'_238 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsSet.T_IsSet_472 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8801''7497'_238 = erased
-- Ledger.Set.Theory.lengthˢ-∅
d_length'738''45''8709'_248 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_length'738''45''8709'_248 = erased
-- Ledger.Set.Theory.setToList
d_setToList_250 :: () -> [AgdaAny] -> [AgdaAny]
d_setToList_250 ~v0 v1 = du_setToList_250 v1
du_setToList_250 :: [AgdaAny] -> [AgdaAny]
du_setToList_250 v0 = coe v0
-- Ledger.Set.Theory.DecEq-ℙ
d_DecEq'45'ℙ_254 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
d_DecEq'45'ℙ_254 ~v0 v1 = du_DecEq'45'ℙ_254 v1
du_DecEq'45'ℙ_254 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10
du_DecEq'45'ℙ_254 v0
  = coe MAlonzo.Code.Axiom.Set.List.du_DecEq'45'Set_206 (coe v0)
-- Ledger.Set.Theory.Rel._∣'_
d__'8739'''__258 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'''__258 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'''__346
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel._∣^'_
d__'8739''94'''__260 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'''__260 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'''__354
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.Rel
d_Rel_262 :: () -> () -> ()
d_Rel_262 = erased
-- Ledger.Set.Theory.Rel.disjoint-dom⇒disjoint
d_disjoint'45'dom'8658'disjoint_264 ::
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
d_disjoint'45'dom'8658'disjoint_264 = erased
-- Ledger.Set.Theory.Rel.dom
d_dom_266 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_dom_266 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom_336
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.dom-cong
d_dom'45'cong_268 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'cong_268 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'cong_518
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.dom-mapʳ⊆
d_dom'45'map'691''8838'_270 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'map'691''8838'_270 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'map'691''8838'_548
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom-single→single
d_dom'45'single'8594'single_272 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45'single'8594'single_272 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8594'single_468
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.dom-single≡single
d_dom'45'single'8801'single_274 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45'single'8801'single_274 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45'single'8801'single_472
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom-∅
d_dom'45''8709'_276 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'45''8709'_276 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8709'_576
-- Ledger.Set.Theory.Rel.dom-⊆mapʳ
d_dom'45''8838'map'691'_278 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'45''8838'map'691'_278 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'45''8838'map'691'_524
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.dom∅
d_dom'8709'_280 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8709'_280 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_dom'8709'_490
-- Ledger.Set.Theory.Rel.dom∈
d_dom'8712'_282 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8712'_282 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8712'_420
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom∪
d_dom'8746'_284 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746'_284 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8746'_492
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Rel.dom⊆
d_dom'8838'_286 ::
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
d_dom'8838'_286 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_dom'8838'_512
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.impl⇒cores⊆
d_impl'8658'cores'8838'_288 ::
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
d_impl'8658'cores'8838'_288 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'cores'8838'_394
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.impl⇒res⊆
d_impl'8658'res'8838'_290 ::
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
d_impl'8658'res'8838'_290 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_impl'8658'res'8838'_372
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Rel.mapMaybeWithKey
d_mapMaybeWithKey_292 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_mapMaybeWithKey_292 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapMaybeWithKey_644
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey
d_mapPartialLiftKey_294 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  Maybe MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey_294 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey_584 v3 v4
-- Ledger.Set.Theory.Rel.mapPartialLiftKey-map
d_mapPartialLiftKey'45'map_296 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartialLiftKey'45'map_296 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_mapPartialLiftKey'45'map_604
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.mapʳ
d_map'691'_298 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'691'_298 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691'_410
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapʳ-dom
d_map'691''45'dom_300 ::
  () ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'691''45'dom_300 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'691''45'dom_574
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.mapˡ
d_map'737'_302 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_map'737'_302 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_map'737'_404
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory.Rel.range
d_range_304 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_range_304 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_range_338
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.relatedˡ
d_related'737'_306 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny]
d_related'737'_306 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_related'737'_332
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.single→dom-single
d_single'8594'dom'45'single_308 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_single'8594'dom'45'single_308 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_single'8594'dom'45'single_470
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Rel.∅ʳ
d_'8709''691'_310 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_'8709''691'_310 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8709''691'_334
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Rel.∈-dom
d_'8712''45'dom_312 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'dom_312 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom_476
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-dom-singleton-pair
d_'8712''45'dom'45'singleton'45'pair_314 ::
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'dom'45'singleton'45'pair_314 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'dom'45'singleton'45'pair_464
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Rel.∈-mapMaybeWithKey
d_'8712''45'mapMaybeWithKey_316 ::
  () ->
  () ->
  () ->
  AgdaAny ->
  AgdaAny ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'mapMaybeWithKey_316 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'mapMaybeWithKey_660
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.∉-dom∅
d_'8713''45'dom'8709'_318 ::
  () ->
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45'dom'8709'_318 = erased
-- Ledger.Set.Theory.Rel.Corestriction._∣^_
d__'8739''94'__322 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__322 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction._∣^_ᶜ
d__'8739''94'_'7580'_324 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_324 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Corestriction.coex-⊆
d_coex'45''8838'_326 ::
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
d_coex'45''8838'_326 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Corestriction.cores-⊆
d_cores'45''8838'_328 ::
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
d_cores'45''8838'_328 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction._∣_
d__'8739'__332 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__332 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._∣_ᶜ
d__'8739'_'7580'_334 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_334 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction._⟪$⟫_
d__'10218''36''10219'__336 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__336 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Rel.Restriction.curryʳ
d_curry'691'_338 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_338 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_840
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.ex-⊆
d_ex'45''8838'_340 ::
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
d_ex'45''8838'_340 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-comp-cong
d_res'45'comp'45'cong_342 ::
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
d_res'45'comp'45'cong_342 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-comp-dom
d_res'45'comp'45'dom_344 ::
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
d_res'45'comp'45'dom_344 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_346 ::
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
d_res'45'comp'45'dom'7504'_346 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_760
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-cong
d_res'45'cong_348 ::
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
d_res'45'cong_348 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom
d_res'45'dom_350 ::
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
d_res'45'dom_350 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm
d_res'45'dom'45'comm_352 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_352 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm'
d_res'45'dom'45'comm''_354 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_354 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_974
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_356 ::
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
d_res'45'dom'45'comm'8745''8838'_356 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_926
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_358 ::
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
d_res'45'dom'45'comm'8838''8745'_358 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_918
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7
-- Ledger.Set.Theory.Rel.Restriction.res-domᵐ
d_res'45'dom'7504'_360 ::
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
d_res'45'dom'7504'_360 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_362 ::
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
d_res'45'ex'45'disj'45''8746'_362 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-ex-disjoint
d_res'45'ex'45'disjoint_364 ::
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
d_res'45'ex'45'disjoint_364 = erased
-- Ledger.Set.Theory.Rel.Restriction.res-ex-∪
d_res'45'ex'45''8746'_366 ::
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
d_res'45'ex'45''8746'_366 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_810
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.res-∅
d_res'45''8709'_368 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_368 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_776
-- Ledger.Set.Theory.Rel.Restriction.res-∅ᶜ
d_res'45''8709''7580'_370 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_370 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_778
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory.Rel.Restriction.res-⊆
d_res'45''8838'_372 ::
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
d_res'45''8838'_372 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-curryʳ
d_'8712''45'curry'691'_374 ::
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
d_'8712''45'curry'691'_374 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_376 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_376 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_806
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_378 ::
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
d_'8712''45'res'7580''45'dom'8314'_378 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_794
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4 v5 v6
-- Ledger.Set.Theory.Rel.Restriction.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_380 ::
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
d_'8712''45'res'7580''45'dom'8315'_380 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_786
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._._ˢ
d__'738'_384 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'738'_384 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du__'738'_532 v2
-- Ledger.Set.Theory._._ᵐ
d__'7504'_386 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_476 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7504'_386 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du__'7504'_536 v2
-- Ledger.Set.Theory._.Map
d_Map_388 :: () -> () -> ()
d_Map_388 = erased
-- Ledger.Set.Theory._._∣'_
d__'8739'''__390 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'''__390 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'''__1096
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._∣^'_
d__'8739''94'''__392 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__392 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1104
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._._≡ᵉᵐ_
d__'8801''7497''7504'__394 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7497''7504'__394 = erased
-- Ledger.Set.Theory._._≡ᵐ_
d__'8801''7504'__396 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()
d__'8801''7504'__396 = erased
-- Ledger.Set.Theory._.FinMap
d_FinMap_398 :: () -> () -> ()
d_FinMap_398 = erased
-- Ledger.Set.Theory._.InjectiveOn
d_InjectiveOn_400 ::
  () -> () -> [AgdaAny] -> (AgdaAny -> AgdaAny) -> ()
d_InjectiveOn_400 = erased
-- Ledger.Set.Theory._.IsLeftUnique
d_IsLeftUnique_402 a0 a1 a2 = ()
-- Ledger.Set.Theory._.constMap
d_constMap_404 ::
  () ->
  () ->
  [AgdaAny] -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_constMap_404 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_constMap_1110
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.disj-dom
d_disj'45'dom_406 ::
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
d_disj'45'dom_406 = erased
-- Ledger.Set.Theory._.disj-∪
d_disj'45''8746'_408 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disj'45''8746'_408 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disj'45''8746'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.filterKeys
d_filterKeys_410 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_410 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory._.filterᵐ-finite
d_filter'7504''45'finite_412 ::
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
d_filter'7504''45'finite_412 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504''45'finite_714
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.filterᵐ
d_filter'7504'_414 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_414 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.fromListᵐ
d_fromList'7504'_416 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'7504'_416 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_fromList'7504'_566
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.idMap
d_idMap_418 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_idMap_418 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_idMap_1022
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.left-unique
d_left'45'unique_420 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_left'45'unique_420 = erased
-- Ledger.Set.Theory._.left-unique-mapˢ
d_left'45'unique'45'map'738'_422 ::
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
d_left'45'unique'45'map'738'_422 = erased
-- Ledger.Set.Theory._.mapFromFun
d_mapFromFun_424 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromFun_424 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapFromPartialFun
d_mapFromPartialFun_426 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapFromPartialFun_426 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromPartialFun_1174
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.mapKeys
d_mapKeys_428 ::
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
d_mapKeys_428 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapKeys_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapMaybeWithKeyᵐ
d_mapMaybeWithKey'7504'_430 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapMaybeWithKey'7504'_430 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapMaybeWithKey'7504'_1166
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapPartial-uniq
d_mapPartial'45'uniq_432 ::
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
d_mapPartial'45'uniq_432 = erased
-- Ledger.Set.Theory._.mapPartialLiftKey-just-uniq
d_mapPartialLiftKey'45'just'45'uniq_434 ::
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
d_mapPartialLiftKey'45'just'45'uniq_434 = erased
-- Ledger.Set.Theory._.mapValues
d_mapValues_436 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues_436 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues_862
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapValues-dom
d_mapValues'45'dom_438 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValues'45'dom_438 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValues'45'dom_1092
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey
d_mapWithKey_440 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapWithKey_440 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapWithKey_1074
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4
-- Ledger.Set.Theory._.mapWithKey-uniq
d_mapWithKey'45'uniq_442 ::
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
d_mapWithKey'45'uniq_442 = erased
-- Ledger.Set.Theory._.mapʳ-uniq
d_map'691''45'uniq_444 ::
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
d_map'691''45'uniq_444 = erased
-- Ledger.Set.Theory._.mapˡ-uniq
d_map'737''45'uniq_446 ::
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
d_map'737''45'uniq_446 = erased
-- Ledger.Set.Theory._.mapˡ∘map⦅×-dup⦆-uniq
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_448 ::
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
d_map'737''8728'map'10629''215''45'dup'10630''45'uniq_448 = erased
-- Ledger.Set.Theory._.map⦅×-dup⦆-uniq
d_map'10629''215''45'dup'10630''45'uniq_450 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_map'10629''215''45'dup'10630''45'uniq_450 = erased
-- Ledger.Set.Theory._.singletonᵐ
d_singleton'7504'_452 ::
  () ->
  () -> AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'7504'_452 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_singleton'7504'_722
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.toFinMap
d_toFinMap_454 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toFinMap_454 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Map.du_toFinMap_594 v2 v3
-- Ledger.Set.Theory._.toMap
d_toMap_456 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_456 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toMap_602 v2
-- Ledger.Set.Theory._.toRel
d_toRel_458 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_toRel_458 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Map.du_toRel_608 v2
-- Ledger.Set.Theory._.weaken-Injective
d_weaken'45'Injective_460 ::
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
d_weaken'45'Injective_460 = erased
-- Ledger.Set.Theory._.ˢ-left-unique
d_'738''45'left'45'unique_462 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_476
d_'738''45'left'45'unique_462 = erased
-- Ledger.Set.Theory._.∅-left-unique
d_'8709''45'left'45'unique_464 ::
  () -> () -> MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_476
d_'8709''45'left'45'unique_464 = erased
-- Ledger.Set.Theory._.∅ᵐ
d_'8709''7504'_466 ::
  () -> () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''7504'_466 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'8709''7504'_562
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory._.⊆-left-unique
d_'8838''45'left'45'unique_468 ::
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
d_'8838''45'left'45'unique_468 = erased
-- Ledger.Set.Theory._.⊆-map
d_'8838''45'map_470 ::
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
d_'8838''45'map_470 v0 v1 v2 v3 v4
  = coe MAlonzo.Code.Axiom.Set.Map.du_'8838''45'map_548 v2 v4
-- Ledger.Set.Theory._.❴_❵ᵐ
d_'10100'_'10101''7504'_472 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'10100'_'10101''7504'_472 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_'10100'_'10101''7504'_730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory._.Corestrictionᵐ._⁻¹_
d__'8315''185'__476 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__476 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_
d__'8739''94'__478 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__478 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1584
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Corestrictionᵐ._∣^_ᶜ
d__'8739''94'_'7580'_480 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_480 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1592
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Intersectionᵐ._∩ᵐ_
d__'8745''7504'__484 ::
  () ->
  () ->
  ([MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__484 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.IsLeftUnique.isLeftUnique
d_isLeftUnique_488 ::
  MAlonzo.Code.Axiom.Set.Map.T_IsLeftUnique_476 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_isLeftUnique_488 = erased
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ
d_lookup'7504'_492 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_492 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.lookupᵐ?
d_lookup'7504''63'_494 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_494 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐ.pullbackMap
d_pullbackMap_496 ::
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
d_pullbackMap_496 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1556
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.Restrictionᵐ._∣_
d__'8739'__500 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__500 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._∣_ᶜ
d__'8739'_'7580'_502 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_502 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Restrictionᵐ._⦅_,-⦆
d__'10629'_'44''45''10630'_504 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_504 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory._.Restrictionᵐ.curryᵐ
d_curry'7504'_506 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_506 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1290
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapSingleValue
d_mapSingleValue_508 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_508 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1282
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.mapValueRestricted
d_mapValueRestricted_510 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_510 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1274
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton
d_res'45'singleton_512 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_512 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1304
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton'
d_res'45'singleton''_514 ::
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
d_res'45'singleton''_514 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton''
d_res'45'singleton''''_516 ::
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
d_res'45'singleton''''_516 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton-inhabited
d_res'45'singleton'45'inhabited_518 ::
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
d_res'45'singleton'45'inhabited_518 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.res-singleton⁺
d_res'45'singleton'8314'_520 ::
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
d_res'45'singleton'8314'_520 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6
-- Ledger.Set.Theory._.Restrictionᵐ.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_522 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_522 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1272
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3
-- Ledger.Set.Theory._.Restrictionᵐ.update
d_update_524 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_524 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ_
d__'8746''737'__528 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__528 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ._∪ˡ'_
d__'8746''737'''__530 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__530 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__876
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_532 ::
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
d_disjoint'45''8746''737''45'mapValues_532 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.Unionᵐ.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_534 ::
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
d_disjoint'45''8746''737''45''8746'_534 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_896
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insert
d_insert_536 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_536 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory._.Unionᵐ.insertIfJust
d_insertIfJust_538 ::
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
d_insertIfJust_538 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_912
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.TotalMap
d_TotalMap_542 a0 a1 = ()
-- Ledger.Set.Theory._.total
d_total_544 ::
  () -> () -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> ()
d_total_544 = erased
-- Ledger.Set.Theory._.FunTot.Fun⇒Map
d_Fun'8658'Map_548 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_Fun'8658'Map_548 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'Map_214
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v5 v6
-- Ledger.Set.Theory._.FunTot.Fun⇒TotalMap
d_Fun'8658'TotalMap_550 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_Fun'8658'TotalMap_550 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8658'TotalMap_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v4
-- Ledger.Set.Theory._.FunTot.Fun∈TotalMap
d_Fun'8712'TotalMap_552 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_Fun'8712'TotalMap_552 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_Fun'8712'TotalMap_234
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v4 v5 v6
-- Ledger.Set.Theory._.FunTot.lookup∘Fun⇒TotalMap-id
d_lookup'8728'Fun'8658'TotalMap'45'id_554 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  () ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'8728'Fun'8658'TotalMap'45'id_554 = erased
-- Ledger.Set.Theory._.LookupUpdate.lookup-update-id
d_lookup'45'update'45'id_558 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_lookup'45'update'45'id_558 = erased
-- Ledger.Set.Theory._.LookupUpdate.∈-rel-update
d_'8712''45'rel'45'update_560 ::
  () ->
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'rel'45'update_560 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_'8712''45'rel'45'update_188
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v5 v6 v7
-- Ledger.Set.Theory._.TotalMap.left-unique-rel
d_left'45'unique'45'rel_564 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_left'45'unique'45'rel_564 = erased
-- Ledger.Set.Theory._.TotalMap.lookup
d_lookup_566 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 -> AgdaAny -> AgdaAny
d_lookup_566 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup_74
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.lookup∈rel
d_lookup'8712'rel_568 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_lookup'8712'rel_568 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_lookup'8712'rel_78
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory._.TotalMap.rel
d_rel_570 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_rel_570 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_rel_66 (coe v0)
-- Ledger.Set.Theory._.TotalMap.toMap
d_toMap_572 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_toMap_572 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.TotalMap.du_toMap_72 v2
-- Ledger.Set.Theory._.TotalMap.total-rel
d_total'45'rel_574 ::
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny -> MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_total'45'rel_574 v0
  = coe MAlonzo.Code.Axiom.Set.TotalMap.d_total'45'rel_70 (coe v0)
-- Ledger.Set.Theory._.TotalMap.∈-rel⇒lookup-≡
d_'8712''45'rel'8658'lookup'45''8801'_576 ::
  () ->
  () ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_'8712''45'rel'8658'lookup'45''8801'_576 = erased
-- Ledger.Set.Theory._.Update.mapWithKey
d_mapWithKey_580 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_mapWithKey_580 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_mapWithKey_148
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5
-- Ledger.Set.Theory._.Update.update
d_update_582 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54 ->
  MAlonzo.Code.Axiom.Set.TotalMap.T_TotalMap_54
d_update_582 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.TotalMap.du_update_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory._.Update.updateFn-id
d_updateFn'45'id_584 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_updateFn'45'id_584 = erased
-- Ledger.Set.Theory._.fold-cong↭
d_fold'45'cong'8621'_616 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
  AgdaAny
d_fold'45'cong'8621'_616 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_fold'45'cong'8621'_774 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum
d_indexedSum_618 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum_618 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_796 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-cong
d_indexedSum'45'cong_620 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'cong_620 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'cong_898 (coe v0) v2 v3
      v4 v5
-- Ledger.Set.Theory._.indexedSum-singleton
d_indexedSum'45'singleton_622 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny -> AgdaAny
d_indexedSum'45'singleton_622 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton_926 (coe v0)
      v3 v4
-- Ledger.Set.Theory._.indexedSum-singleton'
d_indexedSum'45'singleton''_624 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'45'singleton''_624 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45'singleton''_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3 v4 v5
-- Ledger.Set.Theory._.indexedSum-∅
d_indexedSum'45''8709'_626 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) -> AgdaAny
d_indexedSum'45''8709'_626 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8709'_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSum-∪
d_indexedSum'45''8746'_628 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d_indexedSum'45''8746'_628 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'45''8746'_910 (coe v0) v2
      v3 v6 v7
-- Ledger.Set.Theory._.indexedSumL
d_indexedSumL_630 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSumL_630 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL_750 (coe v0) v2
-- Ledger.Set.Theory._.indexedSumL'
d_indexedSumL''_632 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSumL''_632 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL''_758 (coe v0) v2 v3
-- Ledger.Set.Theory._.indexedSumL-++
d_indexedSumL'45''43''43'_634 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () -> (AgdaAny -> AgdaAny) -> [AgdaAny] -> [AgdaAny] -> AgdaAny
d_indexedSumL'45''43''43'_634 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSumL'45''43''43'_822 (coe v0)
      v2 v3 v4
-- Ledger.Set.Theory._.indexedSumᵐ
d_indexedSum'7504'_636 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504'_636 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504'_966 (coe v0) v3 v4
      v5 v6
-- Ledger.Set.Theory._.indexedSumᵐ-cong
d_indexedSum'7504''45'cong_638 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'cong_638 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'cong_980 (coe v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.indexedSumᵛ
d_indexedSum'7515'_640 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'_640 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_974 (coe v0) v3 v4
      v5
-- Ledger.Set.Theory._.IndexedSumUnionᵐ._∪ˡᶠ_
d__'8746''737''7584'__644 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d__'8746''737''7584'__644 ~v0 = du__'8746''737''7584'__644
du__'8746''737''7584'__644 ::
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
du__'8746''737''7584'__644 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_646 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_646 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                    v10 v11
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1074
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9 v10 v11
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_648 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_648 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1040
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.IndexedSumUnionᵐ.∪ˡ-finite
d_'8746''737''45'finite_650 ::
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
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
d_'8746''737''45'finite_650 ~v0 = du_'8746''737''45'finite_650
du_'8746''737''45'finite_650 ::
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
du_'8746''737''45'finite_650 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1018
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory._.Lookupᵐᵈ._∪⁺_
d__'8746''8314'__656 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__656 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
      (coe d_List'45'Model'7496'_10) v3 v4
-- Ledger.Set.Theory._.Lookupᵐᵈ.aggregate₊
d_aggregate'8330'_658 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_658 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_496
      (coe d_List'45'Model'7496'_10) v3 v4 v5
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_660 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_660 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_558
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_662 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_662 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_562
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._.Lookupᵐᵈ.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_664 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8746''8314''8838''8746'dom_664 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_520
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionThese
d_unionThese_666 ::
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
d_unionThese_666 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_340
      (coe d_List'45'Model'7496'_10) v4 v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.unionWith
d_unionWith_668 ::
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
d_unionWith_668 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_402
      (coe d_List'45'Model'7496'_10) v5 v6 v7 v8
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom-lookup
d_'8746'dom'45'lookup_670 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_670 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_514
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7
-- Ledger.Set.Theory._.Lookupᵐᵈ.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_672 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746'dom'8838'dom'8746''8314'_672 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_536
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory._._ᶠ
d__'7584'_676 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584'_676 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Factor.du__'7584'_310 v1 v2
-- Ledger.Set.Theory._.∪-preserves-finite'
d_'8746''45'preserves'45'finite''_678 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite''_678 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_'8746''45'preserves'45'finite''_320
      (coe d_List'45'Model_6) v1 v2 v3 v4
-- Ledger.Set.Theory._.Factor.factor
d_factor_682 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_682 v0 v1 v2 v3 v4 v5
  = coe MAlonzo.Code.Axiom.Set.Factor.du_factor_342 v3 v5
-- Ledger.Set.Theory._.Factor.factor-cong
d_factor'45'cong_684 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_684 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_346 v4 v5 v6 v7
-- Ledger.Set.Theory._.Factor.factor-∪
d_factor'45''8746'_686 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny -> ()) ->
  ([AgdaAny] -> AgdaAny) ->
  ([AgdaAny] ->
   [AgdaAny] ->
   (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_686 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_382 v6 v7 v8 v9
      v10
-- Ledger.Set.Theory._.FactorUnique.deduplicate-Σ
d_deduplicate'45'Σ_690 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_deduplicate'45'Σ_690 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_deduplicate'45'Σ_418 v2 v6
-- Ledger.Set.Theory._.FactorUnique.ext
d_ext_692 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] -> AgdaAny
d_ext_692 v0 v1 v2 v3 v4 v5 v6
  = coe MAlonzo.Code.Axiom.Set.Factor.du_ext_422 v2 v4 v6
-- Ledger.Set.Theory._.FactorUnique.ext-cong
d_ext'45'cong_694 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_ext'45'cong_694 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_428 v2 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.f-cong'
d_f'45'cong''_696 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714) ->
  AgdaAny
d_f'45'cong''_696 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe MAlonzo.Code.Axiom.Set.Factor.du_f'45'cong''_410 v5 v6 v7 v8
-- Ledger.Set.Theory._.FactorUnique.factor
d_factor_698 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor_698 ~v0 ~v1 v2 ~v3 v4 ~v5 = du_factor_698 v2 v4
du_factor_698 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor_698 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor_342
      (coe MAlonzo.Code.Axiom.Set.Factor.du_ext_422 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-cong
d_factor'45'cong_700 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_factor'45'cong_700 ~v0 ~v1 v2 ~v3 ~v4 v5
  = du_factor'45'cong_700 v2 v5
du_factor'45'cong_700 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_factor'45'cong_700 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45'cong_346
      (coe
         MAlonzo.Code.Axiom.Set.Factor.du_ext'45'cong_428 (coe v0) (coe v1))
-- Ledger.Set.Theory._.FactorUnique.factor-∪
d_factor'45''8746'_702 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
   AgdaAny) ->
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
d_factor'45''8746'_702 ~v0 ~v1 ~v2 ~v3 ~v4 ~v5
  = du_factor'45''8746'_702
du_factor'45''8746'_702 ::
  (AgdaAny -> AgdaAny -> AgdaAny -> ()) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  ([AgdaAny] -> [AgdaAny] -> AgdaAny) -> AgdaAny
du_factor'45''8746'_702 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'_382 v1 v2 v3 v4
      v5
-- Ledger.Set.Theory._.FactorUnique.factor-∪'
d_factor'45''8746'''_704 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (AgdaAny -> AgdaAny -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Data.List.Relation.Binary.Permutation.Propositional.T__'8621'__16 ->
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
d_factor'45''8746'''_704 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 v10 v11 v12
  = coe
      MAlonzo.Code.Axiom.Set.Factor.du_factor'45''8746'''_464 v9 v10 v12
-- Ledger.Set.Theory._._._∣_
d__'8739'__716 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'__716 ~v0 v1 = du__'8739'__716 v1
du__'8739'__716 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'__716 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'__676
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_718 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739'_'7580'_718 ~v0 v1 = du__'8739'_'7580'_718 v1
du__'8739'_'7580'_718 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739'_'7580'_718 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739'_'7580'_682
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⟪$⟫_
d__'10218''36''10219'__720 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
d__'10218''36''10219'__720 ~v0 v1 = du__'10218''36''10219'__720 v1
du__'10218''36''10219'__720 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] -> [AgdaAny] -> [AgdaAny]
du__'10218''36''10219'__720 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'10218''36''10219'__688
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.curryʳ
d_curry'691'_722 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d_curry'691'_722 ~v0 v1 = du_curry'691'_722 v1
du_curry'691'_722 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du_curry'691'_722 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_curry'691'_840
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.ex-⊆
d_ex'45''8838'_724 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_ex'45''8838'_724 ~v0 v1 = du_ex'45''8838'_724 v1
du_ex'45''8838'_724 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_ex'45''8838'_724 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_ex'45''8838'_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-comp-cong
d_res'45'comp'45'cong_726 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'comp'45'cong_726 ~v0 v1 = du_res'45'comp'45'cong_726 v1
du_res'45'comp'45'cong_726 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'comp'45'cong_726 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'cong_732
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-comp-dom
d_res'45'comp'45'dom_728 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'comp'45'dom_728 = erased
-- Ledger.Set.Theory._._.res-comp-domᵐ
d_res'45'comp'45'dom'7504'_730 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'comp'45'dom'7504'_730 ~v0 v1
  = du_res'45'comp'45'dom'7504'_730 v1
du_res'45'comp'45'dom'7504'_730 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'comp'45'dom'7504'_730 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'comp'45'dom'7504'_760
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-cong
d_res'45'cong_732 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'cong_732 ~v0 v1 = du_res'45'cong_732 v1
du_res'45'cong_732 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'cong_732 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'cong_696
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom
d_res'45'dom_734 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom_734 ~v0 v1 = du_res'45'dom_734 v1
du_res'45'dom_734 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom_734 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-dom-comm
d_res'45'dom'45'comm_736 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm_736 ~v0 v1 = du_res'45'dom'45'comm_736 v1
du_res'45'dom'45'comm_736 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm_736 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm_980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm'
d_res'45'dom'45'comm''_738 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'dom'45'comm''_738 ~v0 v1 = du_res'45'dom'45'comm''_738 v1
du_res'45'dom'45'comm''_738 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'dom'45'comm''_738 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm''_974
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.res-dom-comm∩⊆
d_res'45'dom'45'comm'8745''8838'_740 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8745''8838'_740 ~v0 v1
  = du_res'45'dom'45'comm'8745''8838'_740 v1
du_res'45'dom'45'comm'8745''8838'_740 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8745''8838'_740 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8745''8838'_926
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-dom-comm⊆∩
d_res'45'dom'45'comm'8838''8745'_742 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'45'comm'8838''8745'_742 ~v0 v1
  = du_res'45'dom'45'comm'8838''8745'_742 v1
du_res'45'dom'45'comm'8838''8745'_742 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'45'comm'8838''8745'_742 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'45'comm'8838''8745'_918
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6
-- Ledger.Set.Theory._._.res-domᵐ
d_res'45'dom'7504'_744 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'dom'7504'_744 ~v0 v1 = du_res'45'dom'7504'_744 v1
du_res'45'dom'7504'_744 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'dom'7504'_744 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'dom'7504'_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-ex-disj-∪
d_res'45'ex'45'disj'45''8746'_746 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45'disj'45''8746'_746 ~v0 v1
  = du_res'45'ex'45'disj'45''8746'_746 v1
du_res'45'ex'45'disj'45''8746'_746 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45'disj'45''8746'_746 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45'disj'45''8746'_832
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-ex-disjoint
d_res'45'ex'45'disjoint_748 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_res'45'ex'45'disjoint_748 = erased
-- Ledger.Set.Theory._._.res-ex-∪
d_res'45'ex'45''8746'_750 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'ex'45''8746'_750 ~v0 v1 = du_res'45'ex'45''8746'_750 v1
du_res'45'ex'45''8746'_750 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'ex'45''8746'_750 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45'ex'45''8746'_810
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4
-- Ledger.Set.Theory._._.res-∅
d_res'45''8709'_752 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709'_752 ~v0 ~v1 = du_res'45''8709'_752
du_res'45''8709'_752 ::
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709'_752 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709'_776
-- Ledger.Set.Theory._._.res-∅ᶜ
d_res'45''8709''7580'_754 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45''8709''7580'_754 ~v0 v1 = du_res'45''8709''7580'_754 v1
du_res'45''8709''7580'_754 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45''8709''7580'_754 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8709''7580'_778
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.res-⊆
d_res'45''8838'_756 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45''8838'_756 ~v0 v1 = du_res'45''8838'_756 v1
du_res'45''8838'_756 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45''8838'_756 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_res'45''8838'_772
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-curryʳ
d_'8712''45'curry'691'_758 ::
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
d_'8712''45'curry'691'_758 ~v0 v1 = du_'8712''45'curry'691'_758 v1
du_'8712''45'curry'691'_758 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'curry'691'_758 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'curry'691'_852
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory._._.∈-resᶜ-dom
d_'8712''45'res'7580''45'dom_760 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45'res'7580''45'dom_760 ~v0 v1
  = du_'8712''45'res'7580''45'dom_760 v1
du_'8712''45'res'7580''45'dom_760 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45'res'7580''45'dom_760 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom_806
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁺
d_'8712''45'res'7580''45'dom'8314'_762 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'res'7580''45'dom'8314'_762 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8314'_762 v1
du_'8712''45'res'7580''45'dom'8314'_762 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8712''45'res'7580''45'dom'8314'_762 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8314'_794
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v3 v4 v5
-- Ledger.Set.Theory._._.∈-resᶜ-dom⁻
d_'8712''45'res'7580''45'dom'8315'_764 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'res'7580''45'dom'8315'_764 ~v0 v1
  = du_'8712''45'res'7580''45'dom'8315'_764 v1
du_'8712''45'res'7580''45'dom'8315'_764 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8712''45'res'7580''45'dom'8315'_764 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_'8712''45'res'7580''45'dom'8315'_786
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__768 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'__768 ~v0 v1 = du__'8739''94'__768 v1
du__'8739''94'__768 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'__768 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1036
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_770 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8739''94'_'7580'_770 ~v0 v1 = du__'8739''94'_'7580'_770 v1
du__'8739''94'_'7580'_770 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] -> [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8739''94'_'7580'_770 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'_'7580'_1042
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.coex-⊆
d_coex'45''8838'_772 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_coex'45''8838'_772 ~v0 v1 = du_coex'45''8838'_772 v1
du_coex'45''8838'_772 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_coex'45''8838'_772 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_coex'45''8838'_1050
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.cores-⊆
d_cores'45''8838'_774 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_cores'45''8838'_774 ~v0 v1 = du_cores'45''8838'_774 v1
du_cores'45''8838'_774 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_cores'45''8838'_774 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Rel.du_cores'45''8838'_1048
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._∣_
d__'8739'__778 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'__778 ~v0 v1 = du__'8739'__778 v1
du__'8739'__778 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'__778 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣_ᶜ
d__'8739'_'7580'_780 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739'_'7580'_780 ~v0 v1 = du__'8739'_'7580'_780 v1
du__'8739'_'7580'_780 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739'_'7580'_780 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739'_'7580'_1262
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._⦅_,-⦆
d__'10629'_'44''45''10630'_782 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'10629'_'44''45''10630'_782 ~v0 v1
  = du__'10629'_'44''45''10630'_782 v1
du__'10629'_'44''45''10630'_782 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'10629'_'44''45''10630'_782 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'10629'_'44''45''10630'_1396
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._._.curryᵐ
d_curry'7504'_784 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_curry'7504'_784 ~v0 v1 = du_curry'7504'_784 v1
du_curry'7504'_784 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_curry'7504'_784 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_curry'7504'_1290
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4
-- Ledger.Set.Theory._._.mapSingleValue
d_mapSingleValue_786 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapSingleValue_786 ~v0 v1 = du_mapSingleValue_786 v1
du_mapSingleValue_786 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapSingleValue_786 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapSingleValue_1282
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.mapValueRestricted
d_mapValueRestricted_788 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapValueRestricted_788 ~v0 v1 = du_mapValueRestricted_788 v1
du_mapValueRestricted_788 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_mapValueRestricted_788 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapValueRestricted_1274
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton
d_res'45'singleton_790 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton_790 ~v0 v1 = du_res'45'singleton_790 v1
du_res'45'singleton_790 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton_790 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton_1304
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.res-singleton'
d_res'45'singleton''_792 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''_792 ~v0 v1 = du_res'45'singleton''_792 v1
du_res'45'singleton''_792 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''_792 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''_1340
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton''
d_res'45'singleton''''_794 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'45'singleton''''_794 ~v0 v1 = du_res'45'singleton''''_794 v1
du_res'45'singleton''''_794 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'45'singleton''''_794 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton''''_1382
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton-inhabited
d_res'45'singleton'45'inhabited_796 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'45'inhabited_796 ~v0 v1
  = du_res'45'singleton'45'inhabited_796 v1
du_res'45'singleton'45'inhabited_796 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'45'inhabited_796 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'45'inhabited_1364
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.res-singleton⁺
d_res'45'singleton'8314'_798 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_res'45'singleton'8314'_798 ~v0 v1
  = du_res'45'singleton'8314'_798 v1
du_res'45'singleton'8314'_798 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_res'45'singleton'8314'_798 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'45'singleton'8314'_1356
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5
-- Ledger.Set.Theory._._.resᵐ-∅ᶜ
d_res'7504''45''8709''7580'_800 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_res'7504''45''8709''7580'_800 ~v0 v1
  = du_res'7504''45''8709''7580'_800 v1
du_res'7504''45''8709''7580'_800 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_res'7504''45''8709''7580'_800 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_res'7504''45''8709''7580'_1272
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2
-- Ledger.Set.Theory._._.update
d_update_802 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_update_802 ~v0 v1 = du_update_802 v1
du_update_802 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_update_802 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_update_1398
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._._⁻¹_
d__'8315''185'__806 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
d__'8315''185'__806 ~v0 v1 = du__'8315''185'__806 v1
du__'8315''185'__806 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny -> [AgdaAny]
du__'8315''185'__806 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8315''185'__1600
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_
d__'8739''94'__808 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'__808 ~v0 v1 = du__'8739''94'__808 v1
du__'8739''94'__808 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'__808 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'__1584
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∣^_ᶜ
d__'8739''94'_'7580'_810 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'_'7580'_810 ~v0 v1 = du__'8739''94'_'7580'_810 v1
du__'8739''94'_'7580'_810 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'_'7580'_810 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'_'7580'_1592
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ_
d__'8746''737'__814 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737'__814 ~v0 v1 = du__'8746''737'__814 v1
du__'8746''737'__814 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737'__814 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'__882
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._._∪ˡ'_
d__'8746''737'''__816 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
d__'8746''737'''__816 ~v0 v1 = du__'8746''737'''__816 v1
du__'8746''737'''__816 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14]
du__'8746''737'''__816 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8746''737'''__876
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3
-- Ledger.Set.Theory._._.disjoint-∪ˡ-mapValues
d_disjoint'45''8746''737''45'mapValues_818 ::
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
d_disjoint'45''8746''737''45'mapValues_818 ~v0 v1
  = du_disjoint'45''8746''737''45'mapValues_818 v1
du_disjoint'45''8746''737''45'mapValues_818 ::
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
du_disjoint'45''8746''737''45'mapValues_818 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45'mapValues_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._.disjoint-∪ˡ-∪
d_disjoint'45''8746''737''45''8746'_820 ::
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
d_disjoint'45''8746''737''45''8746'_820 ~v0 v1
  = du_disjoint'45''8746''737''45''8746'_820 v1
du_disjoint'45''8746''737''45''8746'_820 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'45''8746''737''45''8746'_820 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_disjoint'45''8746''737''45''8746'_896
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insert
d_insert_822 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insert_822 ~v0 v1 = du_insert_822 v1
du_insert_822 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insert_822 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insert_904
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4
-- Ledger.Set.Theory._._.insertIfJust
d_insertIfJust_824 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_insertIfJust_824 ~v0 v1 = du_insertIfJust_824 v1
du_insertIfJust_824 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny ->
  Maybe AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_insertIfJust_824 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_insertIfJust_912
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v3 v4 v5
-- Ledger.Set.Theory._._._∩_
d__'8745'__828 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'8745'__828 ~v0 v1 = du__'8745'__828 v1
du__'8745'__828 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'8745'__828 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'8745'__686
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._._＼_
d__'65340'__830 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
d__'65340'__830 ~v0 v1 = du__'65340'__830 v1
du__'65340'__830 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> [AgdaAny]
du__'65340'__830 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du__'65340'__712
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.disjoint'
d_disjoint''_832 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> ()
d_disjoint''_832 = erased
-- Ledger.Set.Theory._._.∈-∩
d_'8712''45''8745'_834 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8712''45''8745'_834 ~v0 v1 = du_'8712''45''8745'_834 v1
du_'8712''45''8745'_834 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_'8712''45''8745'_834 v0
  = let v1 = d_List'45'Model'7496'_10 in
    coe
      (coe
         MAlonzo.Code.Axiom.Set.du_'8712''45''8745'_694
         (coe MAlonzo.Code.Axiom.Set.d_th_1430 (coe v1))
         (coe
            MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
            erased v0))
-- Ledger.Set.Theory._._.lookupᵐ
d_lookup'7504'_838 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
d_lookup'7504'_838 ~v0 ~v1 = du_lookup'7504'_838
du_lookup'7504'_838 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 -> AgdaAny
du_lookup'7504'_838 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504'_1546
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.lookupᵐ?
d_lookup'7504''63'_840 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
d_lookup'7504''63'_840 ~v0 ~v1 = du_lookup'7504''63'_840
du_lookup'7504''63'_840 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Class.Decidable.Core.T__'8263'_10 -> Maybe AgdaAny
du_lookup'7504''63'_840 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_lookup'7504''63'_1550
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory._._.pullbackMap
d_pullbackMap_842 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_pullbackMap_842 ~v0 ~v1 = du_pullbackMap_842
du_pullbackMap_842 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_pullbackMap_842 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_pullbackMap_1556
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory._._._∪⁺_
d__'8746''8314'__846 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''8314'__846 ~v0 ~v1 = du__'8746''8314'__846
du__'8746''8314'__846 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''8314'__846 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du__'8746''8314'__494
      (coe d_List'45'Model'7496'_10) v1 v2
-- Ledger.Set.Theory._._.aggregate₊
d_aggregate'8330'_848 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregate'8330'_848 ~v0 ~v1 = du_aggregate'8330'_848
du_aggregate'8330'_848 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregate'8330'_848 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_aggregate'8330'_496
      (coe d_List'45'Model'7496'_10) v1 v2 v3
-- Ledger.Set.Theory._._.dom∪⁺⇔∪dom
d_dom'8746''8314''8660''8746'dom_850 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_dom'8746''8314''8660''8746'dom_850 ~v0 ~v1
  = du_dom'8746''8314''8660''8746'dom_850
du_dom'8746''8314''8660''8746'dom_850 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
du_dom'8746''8314''8660''8746'dom_850 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8660''8746'dom_558
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.dom∪⁺≡∪dom
d_dom'8746''8314''8801''8746'dom_852 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_dom'8746''8314''8801''8746'dom_852 ~v0 ~v1
  = du_dom'8746''8314''8801''8746'dom_852
du_dom'8746''8314''8801''8746'dom_852 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_dom'8746''8314''8801''8746'dom_852 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8801''8746'dom_562
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4
-- Ledger.Set.Theory._._.dom∪⁺⊆∪dom
d_dom'8746''8314''8838''8746'dom_854 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_dom'8746''8314''8838''8746'dom_854 ~v0 ~v1
  = du_dom'8746''8314''8838''8746'dom_854
du_dom'8746''8314''8838''8746'dom_854 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_dom'8746''8314''8838''8746'dom_854 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_dom'8746''8314''8838''8746'dom_520
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionThese
d_unionThese_856 ::
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
d_unionThese_856 ~v0 ~v1 = du_unionThese_856
du_unionThese_856 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.These.Base.T_These_38
du_unionThese_856 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionThese_340
      (coe d_List'45'Model'7496'_10) v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._.unionWith
d_unionWith_858 ::
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
d_unionWith_858 ~v0 ~v1 = du_unionWith_858
du_unionWith_858 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  (MAlonzo.Code.Data.These.Base.T_These_38 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_unionWith_858 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_unionWith_402
      (coe d_List'45'Model'7496'_10) v3 v4 v5 v6
-- Ledger.Set.Theory._._.∪dom-lookup
d_'8746'dom'45'lookup_860 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746'dom'45'lookup_860 ~v0 ~v1 = du_'8746'dom'45'lookup_860
du_'8746'dom'45'lookup_860 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746'dom'45'lookup_860 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'45'lookup_514
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5
-- Ledger.Set.Theory._._.∪dom⊆dom∪⁺
d_'8746'dom'8838'dom'8746''8314'_862 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746'dom'8838'dom'8746''8314'_862 ~v0 ~v1
  = du_'8746'dom'8838'dom'8746''8314'_862
du_'8746'dom'8838'dom'8746''8314'_862 ::
  () ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8746'dom'8838'dom'8746''8314'_862 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Map.Dec.du_'8746'dom'8838'dom'8746''8314'_536
      (coe d_List'45'Model'7496'_10) v1 v2 v3 v4 v5 v6
-- Ledger.Set.Theory._._._∩ᵐ_
d__'8745''7504'__878 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8745''7504'__878 ~v0 ~v1 v2 v3 = du__'8745''7504'__878 v2 v3
du__'8745''7504'__878 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8745''7504'__878 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8745''7504'__662
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased
         (coe
            MAlonzo.Code.Prelude.d_DecEq'45''215''8242'_4 () erased () erased
            v0 v1))
-- Ledger.Set.Theory._._._._∪ˡᶠ_
d__'8746''737''7584'__890 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8746''737''7584'__890 ~v0 ~v1 v2 ~v3 ~v4
  = du__'8746''737''7584'__890 v2
du__'8746''737''7584'__890 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8746''737''7584'__890 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du__'8746''737''7584'__1024
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory._._._.indexedSumᵐ-partition
d_indexedSum'7504''45'partition_892 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7504''45'partition_892 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45'partition_892 v2 v3 v4
du_indexedSum'7504''45'partition_892 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7504''45'partition_892 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45'partition_1074
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v3 v4 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v4 v3))
-- Ledger.Set.Theory._._._.indexedSumᵐ-∪
d_indexedSum'7504''45''8746'_894 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
d_indexedSum'7504''45''8746'_894 ~v0 ~v1 v2 v3 v4
  = du_indexedSum'7504''45''8746'_894 v2 v3 v4
du_indexedSum'7504''45''8746'_894 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny) ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  AgdaAny
du_indexedSum'7504''45''8746'_894 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7504''45''8746'_1040
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v2) (coe v0) (coe v1)
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v7 v8 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v8 v7))
      v3 v4 v5
-- Ledger.Set.Theory._._._.∪ˡ-finite
d_'8746''737''45'finite_896 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Algebra.Bundles.T_CommutativeMonoid_820 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''737''45'finite_896 ~v0 ~v1 v2 ~v3 ~v4
  = du_'8746''737''45'finite_896 v2
du_'8746''737''45'finite_896 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8746''737''45'finite_896 v0
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_'8746''737''45'finite_1018
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      (coe
         (\ v1 v2 ->
            coe
              MAlonzo.Code.Axiom.Set.d__'8712''63'__1560 d_List'45'Model'7496'_10
              erased v0 v2 v1))
-- Ledger.Set.Theory.Properties._._≡_⨿_
d__'8801'_'10815'__902 ::
  () -> [AgdaAny] -> [AgdaAny] -> [AgdaAny] -> ()
d__'8801'_'10815'__902 = erased
-- Ledger.Set.Theory.Properties._.Dec-∈-fromList
d_Dec'45''8712''45'fromList_904 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'fromList_904 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'fromList_624
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.Dec-∈-singleton
d_Dec'45''8712''45'singleton_906 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  AgdaAny -> MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20
d_Dec'45''8712''45'singleton_906 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Dec'45''8712''45'singleton_630
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Set-BddSemilattice
d_Set'45'BddSemilattice_908 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Bundles.T_BoundedJoinSemilattice_102
d_Set'45'BddSemilattice_908 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BddSemilattice_734
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-BoundedJoinSemilattice
d_Set'45'BoundedJoinSemilattice_910 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsBoundedJoinSemilattice_116
d_Set'45'BoundedJoinSemilattice_910 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'BoundedJoinSemilattice_730
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.Set-JoinSemilattice
d_Set'45'JoinSemilattice_912 ::
  () ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsJoinSemilattice_22
d_Set'45'JoinSemilattice_912 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'JoinSemilattice_728
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.card-≡ᵉ
d_card'45''8801''7497'_914 ::
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12
d_card'45''8801''7497'_914 = erased
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong
d_cong'45''8838''8658'cong_916 ::
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
d_cong'45''8838''8658'cong_916 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong_258
      v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.cong-⊆⇒cong₂
d_cong'45''8838''8658'cong'8322'_918 ::
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
d_cong'45''8838''8658'cong'8322'_918 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
                                     v10
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_cong'45''8838''8658'cong'8322'_266
      v4 v5 v6 v7 v8 v9 v10
-- Ledger.Set.Theory.Properties._.disjoint-sym
d_disjoint'45'sym_920 ::
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
d_disjoint'45'sym_920 = erased
-- Ledger.Set.Theory.Properties._.filter-finite
d_filter'45'finite_922 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'finite_922 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'finite_648
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-hom-∪
d_filter'45'hom'45''8746'_924 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'hom'45''8746'_924 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8746'_616
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.filter-hom-⊆
d_filter'45'hom'45''8838'_926 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8838'_926 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8838'_594
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-hom-⊇
d_filter'45'hom'45''8839'_928 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45'hom'45''8839'_928 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'hom'45''8839'_606
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-pres-≡ᵉ
d_filter'45'pres'45''8801''7497'_930 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45'pres'45''8801''7497'_930 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8801''7497'_572
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.filter-pres-⊆
d_filter'45'pres'45''8838'_932 ::
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
d_filter'45'pres'45''8838'_932 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'pres'45''8838'_564
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.filter-split-∪
d_filter'45'split'45''8746'_934 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_filter'45'split'45''8746'_934 v0 v1 v2 v3 v4 v5 v6
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45'split'45''8746'_580
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6
-- Ledger.Set.Theory.Properties._.filter-∅
d_filter'45''8709'_936 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   AgdaAny -> MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'45''8709'_936 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8709'_534
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3
-- Ledger.Set.Theory.Properties._.filter-⊆
d_filter'45''8838'_938 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_filter'45''8838'_938 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_filter'45''8838'_562
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.fromList-∪-singleton
d_fromList'45''8746''45'singleton_940 ::
  () ->
  AgdaAny -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_fromList'45''8746''45'singleton_940 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_fromList'45''8746''45'singleton_790
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.map-∅
d_map'45''8709'_942 ::
  () ->
  () ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8709'_942 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8709'_442
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3
-- Ledger.Set.Theory.Properties._.map-∘
d_map'45''8728'_944 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8728'_944 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728'_376
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-∘⊆
d_map'45''8728''8838'_946 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8728''8838'_946 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8728''8838'_360
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-∪
d_map'45''8746'_948 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8746'_948 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8746'_456
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.map-≡ᵉ
d_map'45''8801''7497'_950 ::
  () ->
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_map'45''8801''7497'_950 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8801''7497'_414
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.map-⊆
d_map'45''8838'_952 ::
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
d_map'45''8838'_952 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838'_388
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.map-⊆∘
d_map'45''8838''8728'_954 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_map'45''8838''8728'_954 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_map'45''8838''8728'_338
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.mapPartial-∅
d_mapPartial'45''8709'_956 ::
  () ->
  () ->
  (AgdaAny -> Maybe AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_mapPartial'45''8709'_956 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_mapPartial'45''8709'_482
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2
-- Ledger.Set.Theory.Properties._.singleton-finite
d_singleton'45'finite_958 ::
  () -> AgdaAny -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_singleton'45'finite_958 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_singleton'45'finite_634
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.sublist-⇔
d_sublist'45''8660'_960 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_sublist'45''8660'_960 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_sublist'45''8660'_992
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∃-sublist-⇔
d_'8707''45'sublist'45''8660'_962 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''45'sublist'45''8660'_962 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''45'sublist'45''8660'_1032
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∃?-sublist-⇔
d_'8707''63''45'sublist'45''8660'_964 ::
  () ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Primitive.T_Level_18 ->
  ([AgdaAny] -> ()) ->
  MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8707''63''45'sublist'45''8660'_964 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8707''63''45'sublist'45''8660'_1054
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.∅-finite
d_'8709''45'finite_966 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'finite_966 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'finite_436
-- Ledger.Set.Theory.Properties._.∅-least
d_'8709''45'least_968 ::
  () ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'least_968 v0 v1 v2
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'least_430 v2
-- Ledger.Set.Theory.Properties._.∅-minimum
d_'8709''45'minimum_970 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8709''45'minimum_970 v0 v1 v2 v3
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'minimum_426
-- Ledger.Set.Theory.Properties._.∅-weakly-finite
d_'8709''45'weakly'45'finite_972 ::
  () -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8709''45'weakly'45'finite_972 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8709''45'weakly'45'finite_434
-- Ledger.Set.Theory.Properties._.∈-filter⁺'
d_'8712''45'filter'8314'''_974 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'filter'8314'''_974 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8314'''_196
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-filter⁻'
d_'8712''45'filter'8315'''_976 ::
  () ->
  [AgdaAny] ->
  (AgdaAny -> ()) ->
  (AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'filter'8315'''_976 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'filter'8315'''_194
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4
-- Ledger.Set.Theory.Properties._.∈-fromList⁺
d_'8712''45'fromList'8314'_978 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8314'_978 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8314'_226
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-fromList⁻
d_'8712''45'fromList'8315'_980 ::
  () ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'fromList'8315'_980 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'fromList'8315'_224
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∈-map⁺'
d_'8712''45'map'8314'''_982 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''_982 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''_168
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-map⁺''
d_'8712''45'map'8314'''''_984 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314'''''_984 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314'''''_176
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-map⁺-∘
d_'8712''45'map'8314''45''8728'_986 ::
  () ->
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45'map'8314''45''8728'_986 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8314''45''8728'_380
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∈-map⁻'
d_'8712''45'map'8315'''_988 ::
  () ->
  () ->
  (AgdaAny -> AgdaAny) ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45'map'8315'''_988 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45'map'8315'''_164
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4
-- Ledger.Set.Theory.Properties._.∈-×
d_'8712''45''215'_990 ::
  () ->
  () ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  AgdaAny ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8712''45''215'_990 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''215'_316
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.∈-∪⁺
d_'8712''45''8746''8314'_992 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8712''45''8746''8314'_992 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8314'_212
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∈-∪⁻
d_'8712''45''8746''8315'_994 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Sum.Base.T__'8846'__30
d_'8712''45''8746''8315'_994 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8712''45''8746''8315'_210
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∉-∅
d_'8713''45''8709'_996 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_'8713''45''8709'_996 = erased
-- Ledger.Set.Theory.Properties._.∪-Supremum
d_'8746''45'Supremum_998 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'Supremum_998 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'Supremum_694
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-assoc
d_'8746''45'assoc_1000 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'assoc_1000 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'assoc_782
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-comm
d_'8746''45'comm_1002 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'comm_1002 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'comm_774
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-cong
d_'8746''45'cong_1004 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'cong_1004 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-cong-⊆
d_'8746''45'cong'45''8838'_1006 ::
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
d_'8746''45'cong'45''8838'_1006 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'cong'45''8838'_698
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-fromList-++
d_'8746''45'fromList'45''43''43'_1008 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'fromList'45''43''43'_1008 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'fromList'45''43''43'_822
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-identityʳ
d_'8746''45'identity'691'_1010 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'691'_1010 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'691'_768
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-identityˡ
d_'8746''45'identity'737'_1012 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'identity'737'_1012 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'identity'737'_764
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
-- Ledger.Set.Theory.Properties._.∪-preserves-finite
d_'8746''45'preserves'45'finite_1014 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'preserves'45'finite_1014 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'preserves'45'finite_706
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4
-- Ledger.Set.Theory.Properties._.∪-sym
d_'8746''45'sym_1016 ::
  () ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8746''45'sym_1016 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45'sym_726
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.∪-⊆
d_'8746''45''8838'_1018 ::
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
d_'8746''45''8838'_1018 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838'_672
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._.∪-⊆ʳ
d_'8746''45''8838''691'_1020 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''691'_1020 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''691'_670
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.∪-⊆ˡ
d_'8746''45''8838''737'_1022 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8746''45''8838''737'_1022 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8746''45''8838''737'_668
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.≡ᵉ-Setoid
d_'8801''7497''45'Setoid_1024 ::
  () -> MAlonzo.Code.Relation.Binary.Bundles.T_Setoid_44
d_'8801''7497''45'Setoid_1024 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'Setoid_294
-- Ledger.Set.Theory.Properties._.≡ᵉ-isEquivalence
d_'8801''7497''45'isEquivalence_1026 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsEquivalence_26
d_'8801''7497''45'isEquivalence_1026 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''45'isEquivalence_280
-- Ledger.Set.Theory.Properties._.≡ᵉ⇔≡ᵉ'
d_'8801''7497''8660''8801''7497'''_1028 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] -> MAlonzo.Code.Function.Bundles.T_Equivalence_1714
d_'8801''7497''8660''8801''7497'''_1028 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8801''7497''8660''8801''7497'''_242
-- Ledger.Set.Theory.Properties._.⊆-PartialOrder
d_'8838''45'PartialOrder_1030 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPartialOrder_174
d_'8838''45'PartialOrder_1030 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'PartialOrder_310
-- Ledger.Set.Theory.Properties._.⊆-Preorder
d_'8838''45'Preorder_1032 ::
  () ->
  AgdaAny -> MAlonzo.Code.Relation.Binary.Bundles.T_Preorder_132
d_'8838''45'Preorder_1032 v0 v1
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Preorder_306
-- Ledger.Set.Theory.Properties._.⊆-Transitive
d_'8838''45'Transitive_1034 ::
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
d_'8838''45'Transitive_1034 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'Transitive_274 v4 v5
      v6 v7
-- Ledger.Set.Theory.Properties._.⊆-isPreorder
d_'8838''45'isPreorder_1036 ::
  () -> MAlonzo.Code.Relation.Binary.Structures.T_IsPreorder_70
d_'8838''45'isPreorder_1036 v0
  = coe MAlonzo.Code.Axiom.Set.Properties.du_'8838''45'isPreorder_298
-- Ledger.Set.Theory.Properties._.⊆→∪
d_'8838''8594''8746'_1038 ::
  () ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8838''8594''8746'_1038 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8838''8594''8746'_680
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.Set-Lattice
d_Set'45'Lattice_1042 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1042 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1044 ::
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
d_disjoint'''8658'disjoint_1044 = erased
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1046 ::
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
d_disjoint'8658'disjoint''_1046 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_908
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-Infimum
d_'8745''45'Infimum_1048 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1048 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1050 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1050 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1052 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1052 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_962
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong
d_'8745''45'cong_1054 ::
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
d_'8745''45'cong_1054 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-cong-⊆
d_'8745''45'cong'45''8838'_1056 ::
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
d_'8745''45'cong'45''8838'_1056 v0 v1 v2 v3 v4 v5 v6 v7 v8 v9
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_942
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5 v6 v7 v8 v9
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-preserves-finite
d_'8745''45'preserves'45'finite_1058 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1058 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_940
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym
d_'8745''45'sym_1060 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1060 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-sym⊆
d_'8745''45'sym'8838'_1062 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1062 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆
d_'8745''45''8838'_1064 ::
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
d_'8745''45''8838'_1064 v0 v1 v2 v3 v4 v5 v6 v7 v8
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v3 v4 v5 v6 v7 v8
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ʳ
d_'8745''45''8838''691'_1066 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1066 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._.Intersectionᵖ.∩-⊆ˡ
d_'8745''45''8838''737'_1068 ::
  () ->
  ([AgdaAny] ->
   AgdaAny ->
   MAlonzo.Code.Relation.Nullary.Decidable.Core.T_Dec_20) ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1068 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      v1 v2 v3 v4 v5
-- Ledger.Set.Theory.Properties._._.Set-Lattice
d_Set'45'Lattice_1080 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
d_Set'45'Lattice_1080 ~v0 v1 = du_Set'45'Lattice_1080 v1
du_Set'45'Lattice_1080 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Relation.Binary.Lattice.Structures.T_IsLattice_340
du_Set'45'Lattice_1080 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_Set'45'Lattice_964
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.disjoint'⇒disjoint
d_disjoint'''8658'disjoint_1082 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_disjoint'''8658'disjoint_1082 = erased
-- Ledger.Set.Theory.Properties._._.disjoint⇒disjoint'
d_disjoint'8658'disjoint''_1084 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_disjoint'8658'disjoint''_1084 ~v0 ~v1
  = du_disjoint'8658'disjoint''_1084
du_disjoint'8658'disjoint''_1084 ::
  [AgdaAny] ->
  [AgdaAny] ->
  (AgdaAny ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
   MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_disjoint'8658'disjoint''_1084 v0 v1 v2
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_disjoint'8658'disjoint''_908
-- Ledger.Set.Theory.Properties._._.∩-Infimum
d_'8745''45'Infimum_1086 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'Infimum_1086 ~v0 v1 = du_'8745''45'Infimum_1086 v1
du_'8745''45'Infimum_1086 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'Infimum_1086 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'Infimum_932
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismʳ
d_'8745''45'OrderHomomorphism'691'_1088 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'691'_1088 ~v0 v1
  = du_'8745''45'OrderHomomorphism'691'_1088 v1
du_'8745''45'OrderHomomorphism'691'_1088 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'691'_1088 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'691'_956
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-OrderHomomorphismˡ
d_'8745''45'OrderHomomorphism'737'_1090 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
d_'8745''45'OrderHomomorphism'737'_1090 ~v0 v1
  = du_'8745''45'OrderHomomorphism'737'_1090 v1
du_'8745''45'OrderHomomorphism'737'_1090 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  MAlonzo.Code.Relation.Binary.Morphism.Structures.T_IsOrderHomomorphism_138
du_'8745''45'OrderHomomorphism'737'_1090 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'OrderHomomorphism'737'_962
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong
d_'8745''45'cong_1092 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'cong_1092 ~v0 v1 = du_'8745''45'cong_1092 v1
du_'8745''45'cong_1092 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'cong_1092 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong_950
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-cong-⊆
d_'8745''45'cong'45''8838'_1094 ::
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
d_'8745''45'cong'45''8838'_1094 ~v0 v1
  = du_'8745''45'cong'45''8838'_1094 v1
du_'8745''45'cong'45''8838'_1094 ::
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
du_'8745''45'cong'45''8838'_1094 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'cong'45''8838'_942
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-preserves-finite
d_'8745''45'preserves'45'finite_1096 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'preserves'45'finite_1096 ~v0 v1
  = du_'8745''45'preserves'45'finite_1096 v1
du_'8745''45'preserves'45'finite_1096 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'preserves'45'finite_1096 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'preserves'45'finite_940
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v1 v2
-- Ledger.Set.Theory.Properties._._.∩-sym
d_'8745''45'sym_1098 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_'8745''45'sym_1098 ~v0 v1 = du_'8745''45'sym_1098 v1
du_'8745''45'sym_1098 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_'8745''45'sym_1098 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym_980
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-sym⊆
d_'8745''45'sym'8838'_1100 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45'sym'8838'_1100 ~v0 v1 = du_'8745''45'sym'8838'_1100 v1
du_'8745''45'sym'8838'_1100 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45'sym'8838'_1100 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45'sym'8838'_966
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆
d_'8745''45''8838'_1102 ::
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
d_'8745''45''8838'_1102 ~v0 v1 = du_'8745''45''8838'_1102 v1
du_'8745''45''8838'_1102 ::
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
du_'8745''45''8838'_1102 v0 v1 v2 v3 v4 v5 v6 v7
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838'_924
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
      v2 v3 v4 v5 v6 v7
-- Ledger.Set.Theory.Properties._._.∩-⊆ʳ
d_'8745''45''8838''691'_1104 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''691'_1104 ~v0 v1
  = du_'8745''45''8838''691'_1104 v1
du_'8745''45''8838''691'_1104 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''691'_1104 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''691'_922
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory.Properties._._.∩-⊆ˡ
d_'8745''45''8838''737'_1106 ::
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
d_'8745''45''8838''737'_1106 ~v0 v1
  = du_'8745''45''8838''737'_1106 v1
du_'8745''45''8838''737'_1106 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  [AgdaAny] ->
  [AgdaAny] ->
  AgdaAny ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34 ->
  MAlonzo.Code.Data.List.Relation.Unary.Any.T_Any_34
du_'8745''45''8838''737'_1106 v0
  = coe
      MAlonzo.Code.Axiom.Set.Properties.du_'8745''45''8838''737'_920
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
         erased v0)
-- Ledger.Set.Theory._ᶠᵐ
d__'7584''7504'_1108 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''7504'_1108 ~v0 ~v1 v2 = du__'7584''7504'_1108 v2
du__'7584''7504'_1108 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''7504'_1108 v0
  = case coe v0 of
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 v1 v2
        -> coe
             MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v1)
             (coe
                MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v2)
                (coe du_finiteness_216 v1))
      _ -> MAlonzo.RTE.mazUnreachableError
-- Ledger.Set.Theory._ᶠˢ
d__'7584''738'_1114 ::
  () -> [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'7584''738'_1114 ~v0 v1 = du__'7584''738'_1114 v1
du__'7584''738'_1114 ::
  [AgdaAny] -> MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'7584''738'_1114 v0
  = coe
      MAlonzo.Code.Agda.Builtin.Sigma.C__'44'__32 (coe v0)
      (coe du_finiteness_216 v0)
-- Ledger.Set.Theory.filterˢ
d_filter'738'_1122 ::
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
d_filter'738'_1122 ~v0 ~v1 v2 = du_filter'738'_1122 v2
du_filter'738'_1122 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  [AgdaAny] -> [AgdaAny]
du_filter'738'_1122 v0
  = coe
      MAlonzo.Code.Axiom.Set.du_filter_402
      (MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_212 (coe v0))
-- Ledger.Set.Theory.filterᵐ
d_filter'7504'_1130 ::
  () ->
  () ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> ()) ->
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filter'7504'_1130 ~v0 ~v1 ~v2 v3 = du_filter'7504'_1130 v3
du_filter'7504'_1130 ::
  (MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
   MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filter'7504'_1130 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filter'7504'_704
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_212 (coe v0))
-- Ledger.Set.Theory.filterKeys
d_filterKeys_1138 ::
  () ->
  () ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_filterKeys_1138 ~v0 ~v1 ~v2 v3 = du_filterKeys_1138 v3
du_filterKeys_1138 ::
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_filterKeys_1138 v0
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_filterKeys_718
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe du_to'45'sp_212 (coe v0))
-- Ledger.Set.Theory._∣^'_
d__'8739''94'''__1146 ::
  () ->
  () ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> ()) ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d__'8739''94'''__1146 ~v0 ~v1 v2 ~v3 v4
  = du__'8739''94'''__1146 v2 v4
du__'8739''94'''__1146 ::
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  (AgdaAny -> MAlonzo.Code.Class.Decidable.Core.T__'8263'_10) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du__'8739''94'''__1146 v0 v1
  = coe
      MAlonzo.Code.Axiom.Set.Map.du__'8739''94'''__1104
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe v0) (coe du_to'45'sp_212 (coe v1))
-- Ledger.Set.Theory.indexedSumᵛ'
d_indexedSum'7515'''_1152 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
d_indexedSum'7515'''_1152 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7
  = du_indexedSum'7515'''_1152 v3 v4 v5 v6 v7
du_indexedSum'7515'''_1152 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 -> AgdaAny
du_indexedSum'7515'''_1152 v0 v1 v2 v3 v4
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum'7515'_974
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v2))
      v0 v1 v3 (coe du__'7584''7504'_1108 (coe v4))
-- Ledger.Set.Theory.indexedSum'
d_indexedSum''_1158 ::
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
d_indexedSum''_1158 ~v0 ~v1 v2 v3 v4 v5
  = du_indexedSum''_1158 v2 v3 v4 v5
du_indexedSum''_1158 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  (AgdaAny -> AgdaAny) -> [AgdaAny] -> AgdaAny
du_indexedSum''_1158 v0 v1 v2 v3
  = coe
      MAlonzo.Code.Axiom.Set.Sum.du_indexedSum_796
      (coe
         MAlonzo.Code.Interface.IsCommutativeMonoid.du_fromCommMonoid''_40
         (coe v1))
      v0 v2 (coe du__'7584''738'_1114 (coe v3))
-- Ledger.Set.Theory.singleton-≢-∅
d_singleton'45''8802''45''8709'_1168 ::
  () ->
  AgdaAny ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Agda.Builtin.Equality.T__'8801'__12 ->
  MAlonzo.Code.Data.Irrelevant.T_Irrelevant_20
d_singleton'45''8802''45''8709'_1168 = erased
-- Ledger.Set.Theory.aggregateBy
d_aggregateBy_1172 ::
  () ->
  () ->
  () ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
d_aggregateBy_1172 ~v0 ~v1 ~v2 v3 v4 v5 v6 v7 v8
  = du_aggregateBy_1172 v3 v4 v5 v6 v7 v8
du_aggregateBy_1172 ::
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Class.DecEq.Core.T_DecEq_10 ->
  MAlonzo.Code.Interface.IsCommutativeMonoid.T_IsCommutativeMonoid''_10 ->
  [MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14] ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14 ->
  MAlonzo.Code.Agda.Builtin.Sigma.T_Σ_14
du_aggregateBy_1172 v0 v1 v2 v3 v4 v5
  = coe
      MAlonzo.Code.Axiom.Set.Map.du_mapFromFun_1026
      (coe
         MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
      (coe
         (\ v6 ->
            coe
              du_indexedSum'7515'''_1152 (coe v0) (coe v2) (coe v3)
              (coe (\ v7 -> v7))
              (coe
                 MAlonzo.Code.Axiom.Set.Map.du__'8739'__1254
                 (coe
                    MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
                 (coe
                    MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
                    erased v0)
                 (coe v5)
                 (coe
                    MAlonzo.Code.Axiom.Set.Rel.du_dom_336
                    (MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
                    (coe
                       MAlonzo.Code.Axiom.Set.Rel.du__'8739''94'__1036
                       (coe
                          MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
                       (coe
                          MAlonzo.Code.Axiom.Set.d_'8712''45'sp_1558 d_List'45'Model'7496'_10
                          erased v1)
                       (coe v4)
                       (coe
                          MAlonzo.Code.Axiom.Set.du_'10100'_'10101'_434
                          (MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
                          erased v6))))))
      (coe
         MAlonzo.Code.Axiom.Set.Rel.du_range_338
         (MAlonzo.Code.Axiom.Set.d_th_1430 (coe d_List'45'Model'7496'_10))
         v4)
